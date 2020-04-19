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
    ; line 628
    %t28 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t28, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0), i32 64)
    ; line 629
    %t29 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t29, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t29)
    ; line 630
    %t30 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t30)
    ; line 631
    %t31 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t31, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i32 47)
    call void @_WriteLn(i8* %t31)
    ; line 632
    %t32 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t32)
    ; line 633
    %t33 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t33, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i32 0, i32 0), i32 61)
    ; line 634
    %t34 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t34, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t34)
    ; line 635
    %t35 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t35)
    ; line 636
    %t36 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t36, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0), i32 64)
    ; line 637
    %t37 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t37, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t37)
    ; line 638
    %t38 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t38)
    ; line 646
    %t39 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t39, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.33, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t39)
    ; line 647
    %t40 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t40)
    ; line 648
    %t41 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t41, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 8)
    call void @_WriteInteger(i8* %t41, i32 1, i32 0, i32 2147483647)
    call void @_WriteLn(i8* %t41)
    ; line 649
    store i32 2147483647, i32* @i
    ; line 650
    store i32 0, i32* @x
    ; line 651
    ; line 652
    %t42 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t42, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0), i32 54)
    %t43 = load i32, i32* @x
    call void @_WriteInteger(i8* %t42, i32 1, i32 0, i32 %t43)
    call void @_WriteLn(i8* %t42)
    ; line 653
    %t44 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t44, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t44)
    ; line 654
    %t45 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t45, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t45)
    ; line 655
    %t46 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t46, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t46)
    ; line 656
    %t47 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t47, i32 0, i32 0, i32 1)
    call void @_WriteLn(i8* %t47)
    ; line 657
    %t48 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t48, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t48)
    ; line 658
    %t49 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t49, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t49)
    ; line 659
    %t50 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t50, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t50)
    ; line 660
    %t51 = load %T_text, %T_text* @output
    call void @_WriteReal(i8* %t51, i32 0, i32 0, double 1.20000)
    call void @_WriteLn(i8* %t51)
    ; line 661
    %t52 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t52, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t52)
    ; line 662
    %t53 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t53, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t53)
    ; line 663
    %t54 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t54, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t54)
    ; line 664
    %t55 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t55, i32 0, i32 0, i1 0)
    call void @_WriteLn(i8* %t55)
    ; line 665
    %t56 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t56, i32 0, i32 0, i1 1)
    call void @_WriteLn(i8* %t56)
    ; line 666
    %t57 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t57, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t57)
    ; line 667
    %t58 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t58, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t58)
    ; line 668
    %t59 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t59, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t59)
    ; line 669
    %t60 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t60, i32 0, i32 0, i8 97)
    call void @_WriteLn(i8* %t60)
    ; line 670
    br label %L_AND_expr_2
L_AND_expr_2:
    br label %L_AND_expr_1
L_AND_expr_1:
    %t63 = icmp eq i32 %.dummy.intrin, 97
    br i1 %t63, label %L_AND_eval_1, label %L_AND_shortcut_1
L_AND_eval_1:
    %t64 = icmp eq i32 %.dummy.intrin, 40
    br label %L_AND_shortcut_1
L_AND_shortcut_1:
    %t62 = phi [%t64, %L_AND_eval_1], [false, %L_AND_expr_1]
    br i1 %t62, label %L_AND_eval_2, label %L_AND_shortcut_2
L_AND_eval_2:
    %t65 = icmp eq i32 %.dummy.intrin, 94
    br label %L_AND_shortcut_2
L_AND_shortcut_2:
    %t61 = phi [%t65, %L_AND_eval_2], [false, %L_AND_expr_2]
    br i1 %t61, label %L_then_3, label %L_else_3
L_then_3:
    ; line 671
    %t66 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t66, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t66)
    br label %L_endif_3
L_else_3:
    ; line 673
    %t67 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t67, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t67)
    br label %L_endif_3
L_endif_3:
    ; line 681
    %t68 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t68)
    ; line 682
    %t69 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t69, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.44, i32 0, i32 0), i32 64)
    call void @_WriteLn(i8* %t69)
    ; line 683
    %t70 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t70)
    ; line 684
    %t71 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t71, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 10)
    ; line 685
    ; line 686
    %t72 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t72, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t72)
    ; line 687
    %t73 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t73, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 10)
    ; line 688
    ; line 689
    %t74 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t74, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t74)
    ; line 690
    %t75 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t75, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 10)
    ; line 691
    store i32 1, i32* @i
    ; line 692
    ; line 693
    %t76 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t76, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t76)
    ; line 694
    %t77 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t77, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 10)
    ; line 695
    store i32 1, i32* @i
    ; line 695
    ; line 696
    %t78 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t78, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t78)
    ; line 697
    %t79 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t79, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 10)
    ; line 698
    store i32 1, i32* @i
    ; line 699
    br label %L_1
L_1:
    %t80 = load %T_text, %T_text* @output
    %t81 = load i32, i32* @i
    call void @_WriteInteger(i8* %t80, i32 1, i32 0, i32 %t81)
    call void @_WriteChar(i8* %t80, i32 0, i32 0, i8 32)
    ; line 699
    %t83 = load i32, i32* @i
    %t82 = add i32 %t83, 1
    store i32 %t82, i32* @i
    ; line 699
    %t85 = load i32, i32* @i
    %t84 = icmp sle i32 %t85, 10
    br i1 %t84, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 699
    br label %L_endif_4
L_endif_4:
    ; line 700
    %t86 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t86, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t86)
    ; line 701
    %t87 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t87, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 10)
    ; line 702
    br i1 1, label %L_then_5, label %L_else_5
L_then_5:
    ; line 702
    %t88 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t88, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 3)
    br label %L_endif_5
L_else_5:
    ; line 702
    %t89 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t89, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 2)
    br label %L_endif_5
L_endif_5:
    ; line 703
    %t90 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t90, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t90)
    ; line 704
    %t91 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t91, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 10)
    ; line 705
    br i1 0, label %L_then_6, label %L_else_6
L_then_6:
    ; line 705
    %t92 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t92, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 2)
    br label %L_endif_6
L_else_6:
    ; line 705
    %t93 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t93, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 3)
    br label %L_endif_6
L_endif_6:
    ; line 706
    %t94 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t94, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t94)
    ; line 707
    %t95 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t95, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 10)
    ; line 708
    br i1 1, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 708
    %t96 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t96, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 4)
    br label %L_endif_7
L_endif_7:
    ; line 708
    %t97 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t97, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 4)
    ; line 709
    %t98 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t98, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t98)
    ; line 710
    %t99 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t99, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i32 10)
    ; line 711
    br i1 0, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 711
    %t100 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t100, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i32 3)
    br label %L_endif_8
L_endif_8:
    ; line 711
    %t101 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t101, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 4)
    ; line 712
    %t102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t102, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t102)
    ; line 713
    %t103 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t103, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i32 11)
    ; line 714
    ; line 727
    %t104 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t104)
    ; line 728
    %t105 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t105, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 15)
    ; line 729
    %t106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t106, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i32 24)
    ; line 730
    %t107 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t107, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t107)
    ; line 731
    %t108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t108, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i32 17)
    ; line 732
    call void @P_junk6()
    ; line 733
    %t109 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t109, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 9)
    ; line 734
    br label %L_2
L_2:
    %t110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t110, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t110)
    ; line 735
    %t111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t111, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.71, i32 0, i32 0), i32 17)
    ; line 736
    ; line 737
    %t112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t112, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 9)
    ; line 738
    br label %L_3
L_3:
    %t113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t113, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t113)
    ; line 739
    %t114 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t114, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i32 17)
    ; line 741
    store i32 10, i32* @i
    ; line 742
    ; line 743
    %t115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t115, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t115)
    ; line 744
    %t116 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t116, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i32 0, i32 0), i32 17)
    ; line 746
    store i32 10, i32* @i
    ; line 747
    ; line 748
    %t117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t117, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.75, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t117)
    ; line 749
    %t118 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t118, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i32 17)
    ; line 751
    ; line 752
    %t119 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t119, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.77, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t119)
    ; line 753
    %t120 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t120, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i32 17)
    ; line 755
    ; line 756
    %t121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t121, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.79, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t121)
    ; line 758
    %t122 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t122, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i32 17)
    ; line 759
    store i32 10000, i32* @i
    ; line 760
    ; line 764
    %t123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t123, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t123)
    ; line 772
    %t124 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t124)
    ; line 773
    %t125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t125, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.82, i32 0, i32 0), i32 48)
    call void @_WriteLn(i8* %t125)
    ; line 774
    %t126 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t126)
    ; line 777
    store i32 43, i32* @x
    ; line 777
    store i32 78, i32* @y
    ; line 777
    %t127 = load i32, i32* @y
    store i32 %t127, i32* @z
    ; line 778
    %t128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t128, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 12)
    %t130 = load i32, i32* @x
    %t131 = load i32, i32* @y
    %t129 = add i32 %t130, %t131
    call void @_WriteInteger(i8* %t128, i32 1, i32 0, i32 %t129)
    call void @_WriteString(i8* %t128, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t128)
    ; line 779
    %t132 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t132, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i32 12)
    %t134 = load i32, i32* @y
    %t135 = load i32, i32* @x
    %t133 = sub i32 %t134, %t135
    call void @_WriteInteger(i8* %t132, i32 1, i32 0, i32 %t133)
    call void @_WriteString(i8* %t132, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t132)
    ; line 780
    %t136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t136, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i32 12)
    %t138 = load i32, i32* @x
    %t139 = load i32, i32* @y
    %t137 = mul i32 %t138, %t139
    call void @_WriteInteger(i8* %t136, i32 1, i32 0, i32 %t137)
    call void @_WriteString(i8* %t136, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t136)
    ; line 781
    %t140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t140, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i32 12)
    %t142 = load i32, i32* @y
    %t143 = load i32, i32* @x
    %t141 = sdiv i32 %t142, %t143
    call void @_WriteInteger(i8* %t140, i32 1, i32 0, i32 %t141)
    call void @_WriteString(i8* %t140, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t140)
    ; line 782
    %t144 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t144, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i32 12)
    %t146 = load i32, i32* @y
    %t147 = load i32, i32* @x
    %t145 = srem i32 %t146, %t147
    call void @_WriteInteger(i8* %t144, i32 1, i32 0, i32 %t145)
    call void @_WriteString(i8* %t144, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t144)
    ; line 783
    %t148 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t148, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t148, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t148, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t148)
    ; line 784
    %t149 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t149, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t149, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t149, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t149)
    ; line 785
    %t150 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t150, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t150, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t150, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t150)
    ; line 786
    %t151 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t151, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i32 12)
    call void @_WriteChar(i8* %t151, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t151, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t151)
    ; line 787
    %t152 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t152, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t152, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t152, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t152)
    ; line 788
    %t153 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t153, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t153, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t153, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t153)
    ; line 789
    %t154 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t154, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t154, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t154, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t154)
    ; line 790
    %t155 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t155, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 12)
    %t157 = load i32, i32* @z
    %t158 = load i32, i32* @y
    %t156 = icmp eq i32 %t157, %t158
    call void @_WriteBool(i8* %t155, i32 5, i32 0, i1 %t156)
    call void @_WriteString(i8* %t155, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t155)
    ; line 791
    %t159 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t159, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i32 12)
    %t161 = load i32, i32* @x
    %t162 = load i32, i32* @y
    %t160 = icmp eq i32 %t161, %t162
    call void @_WriteBool(i8* %t159, i32 5, i32 0, i1 %t160)
    call void @_WriteString(i8* %t159, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t159)
    ; line 792
    %t163 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t163, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i32 12)
    %t165 = load i32, i32* @x
    %t166 = load i32, i32* @y
    %t164 = icmp slt i32 %t165, %t166
    call void @_WriteBool(i8* %t163, i32 5, i32 0, i1 %t164)
    call void @_WriteString(i8* %t163, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t163)
    ; line 793
    %t167 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t167, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 12)
    %t169 = load i32, i32* @y
    %t170 = load i32, i32* @x
    %t168 = icmp slt i32 %t169, %t170
    call void @_WriteBool(i8* %t167, i32 5, i32 0, i1 %t168)
    call void @_WriteString(i8* %t167, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t167)
    ; line 794
    %t171 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t171, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 12)
    %t173 = load i32, i32* @y
    %t174 = load i32, i32* @x
    %t172 = icmp sgt i32 %t173, %t174
    call void @_WriteBool(i8* %t171, i32 5, i32 0, i1 %t172)
    call void @_WriteString(i8* %t171, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t171)
    ; line 795
    %t175 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t175, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i32 12)
    %t177 = load i32, i32* @x
    %t178 = load i32, i32* @y
    %t176 = icmp sgt i32 %t177, %t178
    call void @_WriteBool(i8* %t175, i32 5, i32 0, i1 %t176)
    call void @_WriteString(i8* %t175, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t175)
    ; line 796
    %t179 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t179, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 12)
    %t181 = load i32, i32* @x
    %t182 = load i32, i32* @y
    %t180 = icmp ne i32 %t181, %t182
    call void @_WriteBool(i8* %t179, i32 5, i32 0, i1 %t180)
    call void @_WriteString(i8* %t179, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t179)
    ; line 797
    %t183 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t183, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), i32 12)
    %t185 = load i32, i32* @y
    %t186 = load i32, i32* @z
    %t184 = icmp ne i32 %t185, %t186
    call void @_WriteBool(i8* %t183, i32 5, i32 0, i1 %t184)
    call void @_WriteString(i8* %t183, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t183)
    ; line 798
    %t187 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t187, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i32 12)
    %t189 = load i32, i32* @x
    %t190 = load i32, i32* @y
    %t188 = icmp sle i32 %t189, %t190
    call void @_WriteBool(i8* %t187, i32 5, i32 0, i1 %t188)
    call void @_WriteString(i8* %t187, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t187)
    ; line 799
    %t191 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t191, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i32 12)
    %t193 = load i32, i32* @z
    %t194 = load i32, i32* @y
    %t192 = icmp sle i32 %t193, %t194
    call void @_WriteBool(i8* %t191, i32 5, i32 0, i1 %t192)
    call void @_WriteString(i8* %t191, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t191)
    ; line 800
    %t195 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t195, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), i32 12)
    %t197 = load i32, i32* @y
    %t198 = load i32, i32* @x
    %t196 = icmp sle i32 %t197, %t198
    call void @_WriteBool(i8* %t195, i32 5, i32 0, i1 %t196)
    call void @_WriteString(i8* %t195, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t195)
    ; line 801
    %t199 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t199, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0), i32 12)
    %t201 = load i32, i32* @y
    %t202 = load i32, i32* @x
    %t200 = icmp sge i32 %t201, %t202
    call void @_WriteBool(i8* %t199, i32 5, i32 0, i1 %t200)
    call void @_WriteString(i8* %t199, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t199)
    ; line 802
    %t203 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t203, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), i32 12)
    %t205 = load i32, i32* @y
    %t206 = load i32, i32* @z
    %t204 = icmp sge i32 %t205, %t206
    call void @_WriteBool(i8* %t203, i32 5, i32 0, i1 %t204)
    call void @_WriteString(i8* %t203, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t203)
    ; line 803
    %t207 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t207, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0), i32 12)
    %t209 = load i32, i32* @x
    %t210 = load i32, i32* @y
    %t208 = icmp sge i32 %t209, %t210
    call void @_WriteBool(i8* %t207, i32 5, i32 0, i1 %t208)
    call void @_WriteString(i8* %t207, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t207)
    ; line 806
    %t211 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t211, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i32 12)
    ; line 806
    store i32 546, i32* @i
    ; line 806
    %t212 = load %T_text, %T_text* @output
    %t213 = load i32, i32* @i
    call void @_WriteInteger(i8* %t212, i32 1, i32 0, i32 %t213)
    call void @_WriteString(i8* %t212, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t212)
    ; line 807
    %t214 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t214, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i32 12)
    %t215 = add i32 56, 34
    call void @_WriteInteger(i8* %t214, i32 1, i32 0, i32 %t215)
    call void @_WriteString(i8* %t214, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t214)
    ; line 808
    %t216 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t216, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i32 12)
    %t217 = sub i32 56, 34
    call void @_WriteInteger(i8* %t216, i32 1, i32 0, i32 %t217)
    call void @_WriteString(i8* %t216, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t216)
    ; line 809
    %t218 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t218, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 12)
    %t219 = mul i32 56, 34
    call void @_WriteInteger(i8* %t218, i32 1, i32 0, i32 %t219)
    call void @_WriteString(i8* %t218, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t218)
    ; line 810
    %t220 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t220, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i32 12)
    %t221 = sdiv i32 56, 34
    call void @_WriteInteger(i8* %t220, i32 1, i32 0, i32 %t221)
    call void @_WriteString(i8* %t220, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t220)
    ; line 811
    %t222 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t222, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i32 12)
    %t223 = srem i32 56, 34
    call void @_WriteInteger(i8* %t222, i32 1, i32 0, i32 %t223)
    call void @_WriteString(i8* %t222, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t222)
    ; line 812
    %t224 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t224, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t224, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t224, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t224)
    ; line 813
    %t225 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t225, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t225, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t225, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t225)
    ; line 814
    %t226 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t226, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t226, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t226, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t226)
    ; line 815
    %t227 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t227, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i32 12)
    call void @_WriteChar(i8* %t227, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t227, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t227)
    ; line 816
    %t228 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t228, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t228, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t228, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t228)
    ; line 817
    %t229 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t229, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t229, i32 1, i32 0, i32 768)
    call void @_WriteString(i8* %t229, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t229)
    ; line 818
    %t230 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t230, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t230, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t230, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t230)
    ; line 819
    %t231 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t231, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t231, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t231, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t231)
    ; line 820
    %t232 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t232, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), i32 12)
    %t233 = icmp eq i32 56, 56
    call void @_WriteBool(i8* %t232, i32 5, i32 0, i1 %t233)
    call void @_WriteString(i8* %t232, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t232)
    ; line 821
    %t234 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t234, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i32 12)
    %t235 = icmp eq i32 56, 57
    call void @_WriteBool(i8* %t234, i32 5, i32 0, i1 %t235)
    call void @_WriteString(i8* %t234, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t234)
    ; line 822
    %t236 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t236, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i32 12)
    %t237 = icmp slt i32 56, 57
    call void @_WriteBool(i8* %t236, i32 5, i32 0, i1 %t237)
    call void @_WriteString(i8* %t236, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t236)
    ; line 823
    %t238 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t238, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i32 12)
    %t239 = icmp slt i32 57, 56
    call void @_WriteBool(i8* %t238, i32 5, i32 0, i1 %t239)
    call void @_WriteString(i8* %t238, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t238)
    ; line 824
    %t240 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t240, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i32 12)
    %t241 = icmp sgt i32 57, 56
    call void @_WriteBool(i8* %t240, i32 5, i32 0, i1 %t241)
    call void @_WriteString(i8* %t240, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t240)
    ; line 825
    %t242 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t242, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), i32 12)
    %t243 = icmp sgt i32 56, 57
    call void @_WriteBool(i8* %t242, i32 5, i32 0, i1 %t243)
    call void @_WriteString(i8* %t242, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t242)
    ; line 826
    %t244 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t244, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i32 12)
    %t245 = icmp ne i32 56, 57
    call void @_WriteBool(i8* %t244, i32 5, i32 0, i1 %t245)
    call void @_WriteString(i8* %t244, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t244)
    ; line 827
    %t246 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t246, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i32 12)
    %t247 = icmp ne i32 56, 56
    call void @_WriteBool(i8* %t246, i32 5, i32 0, i1 %t247)
    call void @_WriteString(i8* %t246, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t246)
    ; line 828
    %t248 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t248, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i32 12)
    %t249 = icmp sle i32 55, 500
    call void @_WriteBool(i8* %t248, i32 5, i32 0, i1 %t249)
    call void @_WriteString(i8* %t248, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t248)
    ; line 829
    %t250 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t250, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i32 12)
    %t251 = icmp sle i32 67, 67
    call void @_WriteBool(i8* %t250, i32 5, i32 0, i1 %t251)
    call void @_WriteString(i8* %t250, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t250)
    ; line 830
    %t252 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t252, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i32 12)
    %t253 = icmp sle i32 56, 33
    call void @_WriteBool(i8* %t252, i32 5, i32 0, i1 %t253)
    call void @_WriteString(i8* %t252, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t252)
    ; line 831
    %t254 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t254, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.155, i32 0, i32 0), i32 12)
    %t255 = icmp sge i32 645, 4
    call void @_WriteBool(i8* %t254, i32 5, i32 0, i1 %t255)
    call void @_WriteString(i8* %t254, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t254)
    ; line 832
    %t256 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t256, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i32 12)
    %t257 = icmp sge i32 23, 23
    call void @_WriteBool(i8* %t256, i32 5, i32 0, i1 %t257)
    call void @_WriteString(i8* %t256, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t256)
    ; line 833
    %t258 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t258, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), i32 12)
    %t259 = icmp sge i32 45, 123
    call void @_WriteBool(i8* %t258, i32 5, i32 0, i1 %t259)
    call void @_WriteString(i8* %t258, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t258)
    ; line 836
    %t260 = sub i32 0, 14
    store i32 %t260, i32* @as
    ; line 837
    %t261 = sub i32 0, 32
    store i32 %t261, i32* @bs
    ; line 838
    %t262 = sub i32 0, 14
    store i32 %t262, i32* @cs
    ; line 839
    store i32 20, i32* @ds
    ; line 840
    %t263 = sub i32 0, 15
    store i32 %t263, i32* @es
    ; line 841
    store i32 2147483647, i32* @gs
    ; line 842
    store i32 -2147483647, i32* @hs
    ; line 843
    %t264 = sub i32 0, 2147483647
    store i32 %t264, i32* @vnum
    ; line 844
    %t265 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t265, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0), i32 12)
    %t267 = load i32, i32* @as
    %t268 = load i32, i32* @ds
    %t266 = add i32 %t267, %t268
    call void @_WriteInteger(i8* %t265, i32 1, i32 0, i32 %t266)
    call void @_WriteString(i8* %t265, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t265)
    ; line 845
    %t269 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t269, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i32 0, i32 0), i32 12)
    %t271 = load i32, i32* @ds
    %t272 = load i32, i32* @as
    %t270 = add i32 %t271, %t272
    call void @_WriteInteger(i8* %t269, i32 1, i32 0, i32 %t270)
    call void @_WriteString(i8* %t269, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t269)
    ; line 846
    %t273 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t273, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i32 12)
    %t275 = load i32, i32* @bs
    %t276 = load i32, i32* @ds
    %t274 = add i32 %t275, %t276
    call void @_WriteInteger(i8* %t273, i32 1, i32 0, i32 %t274)
    call void @_WriteString(i8* %t273, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t273)
    ; line 847
    %t277 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t277, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i32 12)
    %t279 = load i32, i32* @as
    %t280 = load i32, i32* @bs
    %t278 = add i32 %t279, %t280
    call void @_WriteInteger(i8* %t277, i32 1, i32 0, i32 %t278)
    call void @_WriteString(i8* %t277, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t277)
    ; line 848
    %t281 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t281, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i32 12)
    %t283 = load i32, i32* @ds
    %t284 = load i32, i32* @as
    %t282 = sub i32 %t283, %t284
    call void @_WriteInteger(i8* %t281, i32 1, i32 0, i32 %t282)
    call void @_WriteString(i8* %t281, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t281)
    ; line 849
    %t285 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t285, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.166, i32 0, i32 0), i32 12)
    %t287 = load i32, i32* @bs
    %t288 = load i32, i32* @ds
    %t286 = sub i32 %t287, %t288
    call void @_WriteInteger(i8* %t285, i32 1, i32 0, i32 %t286)
    call void @_WriteString(i8* %t285, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t285)
    ; line 850
    %t289 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t289, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i32 12)
    %t291 = load i32, i32* @bs
    %t292 = load i32, i32* @as
    %t290 = sub i32 %t291, %t292
    call void @_WriteInteger(i8* %t289, i32 1, i32 0, i32 %t290)
    call void @_WriteString(i8* %t289, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t289)
    ; line 851
    %t293 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t293, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i32 12)
    %t295 = load i32, i32* @ds
    %t296 = load i32, i32* @as
    %t294 = mul i32 %t295, %t296
    call void @_WriteInteger(i8* %t293, i32 1, i32 0, i32 %t294)
    call void @_WriteString(i8* %t293, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t293)
    ; line 852
    %t297 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t297, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), i32 12)
    %t299 = load i32, i32* @as
    %t300 = load i32, i32* @ds
    %t298 = mul i32 %t299, %t300
    call void @_WriteInteger(i8* %t297, i32 1, i32 0, i32 %t298)
    call void @_WriteString(i8* %t297, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t297)
    ; line 853
    %t301 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t301, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.173, i32 0, i32 0), i32 12)
    %t303 = load i32, i32* @as
    %t304 = load i32, i32* @bs
    %t302 = mul i32 %t303, %t304
    call void @_WriteInteger(i8* %t301, i32 1, i32 0, i32 %t302)
    call void @_WriteString(i8* %t301, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.174, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t301)
    ; line 854
    %t305 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t305, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.175, i32 0, i32 0), i32 12)
    %t307 = load i32, i32* @ds
    %t308 = load i32, i32* @as
    %t306 = sdiv i32 %t307, %t308
    call void @_WriteInteger(i8* %t305, i32 1, i32 0, i32 %t306)
    call void @_WriteString(i8* %t305, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t305)
    ; line 855
    %t309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t309, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), i32 12)
    %t311 = load i32, i32* @bs
    %t312 = load i32, i32* @ds
    %t310 = sdiv i32 %t311, %t312
    call void @_WriteInteger(i8* %t309, i32 1, i32 0, i32 %t310)
    call void @_WriteString(i8* %t309, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t309)
    ; line 856
    %t313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t313, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), i32 12)
    %t315 = load i32, i32* @bs
    %t316 = load i32, i32* @as
    %t314 = sdiv i32 %t315, %t316
    call void @_WriteInteger(i8* %t313, i32 1, i32 0, i32 %t314)
    call void @_WriteString(i8* %t313, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.179, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t313)
    ; line 857
    %t317 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t317, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t317, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t317, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t317)
    ; line 858
    %t318 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t318, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t318, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t318, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.183, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t318)
    ; line 859
    %t319 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t319, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.184, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t319, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t319, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t319)
    ; line 860
    %t320 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t320, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t320, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t320, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t320)
    ; line 861
    %t321 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t321, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.187, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t321, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t321, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t321)
    ; line 862
    %t322 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t322, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.188, i32 0, i32 0), i32 12)
    %t324 = load i32, i32* @as
    %t325 = load i32, i32* @cs
    %t323 = icmp eq i32 %t324, %t325
    call void @_WriteBool(i8* %t322, i32 5, i32 0, i1 %t323)
    call void @_WriteString(i8* %t322, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t322)
    ; line 863
    %t326 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t326, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i32 12)
    %t328 = load i32, i32* @as
    %t329 = load i32, i32* @bs
    %t327 = icmp eq i32 %t328, %t329
    call void @_WriteBool(i8* %t326, i32 5, i32 0, i1 %t327)
    call void @_WriteString(i8* %t326, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t326)
    ; line 864
    %t330 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t330, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i32 12)
    %t332 = load i32, i32* @as
    %t333 = load i32, i32* @bs
    %t331 = icmp ne i32 %t332, %t333
    call void @_WriteBool(i8* %t330, i32 5, i32 0, i1 %t331)
    call void @_WriteString(i8* %t330, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t330)
    ; line 865
    %t334 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t334, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), i32 12)
    %t336 = load i32, i32* @as
    %t337 = load i32, i32* @cs
    %t335 = icmp ne i32 %t336, %t337
    call void @_WriteBool(i8* %t334, i32 5, i32 0, i1 %t335)
    call void @_WriteString(i8* %t334, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t334)
    ; line 866
    %t338 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t338, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i32 12)
    %t340 = load i32, i32* @as
    %t341 = load i32, i32* @ds
    %t339 = icmp slt i32 %t340, %t341
    call void @_WriteBool(i8* %t338, i32 5, i32 0, i1 %t339)
    call void @_WriteString(i8* %t338, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t338)
    ; line 867
    %t342 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t342, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i32 12)
    %t344 = load i32, i32* @bs
    %t345 = load i32, i32* @as
    %t343 = icmp slt i32 %t344, %t345
    call void @_WriteBool(i8* %t342, i32 5, i32 0, i1 %t343)
    call void @_WriteString(i8* %t342, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t342)
    ; line 868
    %t346 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t346, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i32 12)
    %t348 = load i32, i32* @ds
    %t349 = load i32, i32* @as
    %t347 = icmp slt i32 %t348, %t349
    call void @_WriteBool(i8* %t346, i32 5, i32 0, i1 %t347)
    call void @_WriteString(i8* %t346, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t346)
    ; line 869
    %t350 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t350, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i32 12)
    %t352 = load i32, i32* @as
    %t353 = load i32, i32* @bs
    %t351 = icmp slt i32 %t352, %t353
    call void @_WriteBool(i8* %t350, i32 5, i32 0, i1 %t351)
    call void @_WriteString(i8* %t350, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t350)
    ; line 870
    %t354 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t354, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0), i32 12)
    %t356 = load i32, i32* @ds
    %t357 = load i32, i32* @as
    %t355 = icmp sgt i32 %t356, %t357
    call void @_WriteBool(i8* %t354, i32 5, i32 0, i1 %t355)
    call void @_WriteString(i8* %t354, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t354)
    ; line 871
    %t358 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t358, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), i32 12)
    %t360 = load i32, i32* @as
    %t361 = load i32, i32* @bs
    %t359 = icmp sgt i32 %t360, %t361
    call void @_WriteBool(i8* %t358, i32 5, i32 0, i1 %t359)
    call void @_WriteString(i8* %t358, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t358)
    ; line 872
    %t362 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t362, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i32 12)
    %t364 = load i32, i32* @as
    %t365 = load i32, i32* @ds
    %t363 = icmp sgt i32 %t364, %t365
    call void @_WriteBool(i8* %t362, i32 5, i32 0, i1 %t363)
    call void @_WriteString(i8* %t362, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t362)
    ; line 873
    %t366 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t366, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0), i32 12)
    %t368 = load i32, i32* @bs
    %t369 = load i32, i32* @as
    %t367 = icmp sgt i32 %t368, %t369
    call void @_WriteBool(i8* %t366, i32 5, i32 0, i1 %t367)
    call void @_WriteString(i8* %t366, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t366)
    ; line 874
    %t370 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t370, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0), i32 12)
    %t372 = load i32, i32* @as
    %t373 = load i32, i32* @ds
    %t371 = icmp sle i32 %t372, %t373
    call void @_WriteBool(i8* %t370, i32 5, i32 0, i1 %t371)
    call void @_WriteString(i8* %t370, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t370)
    ; line 875
    %t374 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t374, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.201, i32 0, i32 0), i32 12)
    %t376 = load i32, i32* @bs
    %t377 = load i32, i32* @as
    %t375 = icmp sle i32 %t376, %t377
    call void @_WriteBool(i8* %t374, i32 5, i32 0, i1 %t375)
    call void @_WriteString(i8* %t374, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t374)
    ; line 876
    %t378 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t378, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0), i32 12)
    %t380 = load i32, i32* @as
    %t381 = load i32, i32* @cs
    %t379 = icmp sle i32 %t380, %t381
    call void @_WriteBool(i8* %t378, i32 5, i32 0, i1 %t379)
    call void @_WriteString(i8* %t378, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t378)
    ; line 877
    %t382 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t382, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i32 0, i32 0), i32 12)
    %t384 = load i32, i32* @ds
    %t385 = load i32, i32* @as
    %t383 = icmp sle i32 %t384, %t385
    call void @_WriteBool(i8* %t382, i32 5, i32 0, i1 %t383)
    call void @_WriteString(i8* %t382, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t382)
    ; line 878
    %t386 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t386, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i32 12)
    %t388 = load i32, i32* @as
    %t389 = load i32, i32* @bs
    %t387 = icmp sle i32 %t388, %t389
    call void @_WriteBool(i8* %t386, i32 5, i32 0, i1 %t387)
    call void @_WriteString(i8* %t386, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t386)
    ; line 879
    %t390 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t390, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0), i32 12)
    %t392 = load i32, i32* @ds
    %t393 = load i32, i32* @as
    %t391 = icmp sge i32 %t392, %t393
    call void @_WriteBool(i8* %t390, i32 5, i32 0, i1 %t391)
    call void @_WriteString(i8* %t390, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t390)
    ; line 880
    %t394 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t394, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), i32 12)
    %t396 = load i32, i32* @as
    %t397 = load i32, i32* @bs
    %t395 = icmp sge i32 %t396, %t397
    call void @_WriteBool(i8* %t394, i32 5, i32 0, i1 %t395)
    call void @_WriteString(i8* %t394, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t394)
    ; line 881
    %t398 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t398, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i32 0, i32 0), i32 12)
    %t400 = load i32, i32* @as
    %t401 = load i32, i32* @cs
    %t399 = icmp sge i32 %t400, %t401
    call void @_WriteBool(i8* %t398, i32 5, i32 0, i1 %t399)
    call void @_WriteString(i8* %t398, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t398)
    ; line 882
    %t402 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t402, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.208, i32 0, i32 0), i32 12)
    %t404 = load i32, i32* @as
    %t405 = load i32, i32* @ds
    %t403 = icmp sge i32 %t404, %t405
    call void @_WriteBool(i8* %t402, i32 5, i32 0, i1 %t403)
    call void @_WriteString(i8* %t402, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t402)
    ; line 883
    %t406 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t406, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.209, i32 0, i32 0), i32 12)
    %t408 = load i32, i32* @bs
    %t409 = load i32, i32* @as
    %t407 = icmp sge i32 %t408, %t409
    call void @_WriteBool(i8* %t406, i32 5, i32 0, i1 %t407)
    call void @_WriteString(i8* %t406, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t406)
    ; line 884
    %t410 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t410, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t410, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t410, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t410)
    ; line 885
    %t411 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t411, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.212, i32 0, i32 0), i32 12)
    %t413 = load i32, i32* @gs
    %t414 = load i32, i32* @hs
    %t412 = add i32 %t413, %t414
    call void @_WriteInteger(i8* %t411, i32 1, i32 0, i32 %t412)
    call void @_WriteString(i8* %t411, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t411)
    ; line 886
    %t415 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t415, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), i32 12)
    %t417 = load i32, i32* @gs
    %t416 = sub i32 %t417, 2147483647
    call void @_WriteInteger(i8* %t415, i32 1, i32 0, i32 %t416)
    call void @_WriteString(i8* %t415, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t415)
    ; line 887
    %t418 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t418, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.215, i32 0, i32 0), i32 12)
    %t420 = load i32, i32* @gs
    %t421 = load i32, i32* @vnum
    %t419 = add i32 %t420, %t421
    call void @_WriteInteger(i8* %t418, i32 1, i32 0, i32 %t419)
    call void @_WriteString(i8* %t418, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t418)
    ; line 890
    %t422 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t422, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), i32 12)
    %t424 = sub i32 0, 30
    %t423 = add i32 45, %t424
    call void @_WriteInteger(i8* %t422, i32 1, i32 0, i32 %t423)
    call void @_WriteString(i8* %t422, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.217, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t422)
    ; line 891
    %t425 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t425, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.218, i32 0, i32 0), i32 13)
    %t427 = sub i32 0, 25
    %t426 = add i32 %t427, 70
    call void @_WriteInteger(i8* %t425, i32 1, i32 0, i32 %t426)
    call void @_WriteString(i8* %t425, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t425)
    ; line 892
    %t428 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t428, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.220, i32 0, i32 0), i32 12)
    %t430 = sub i32 0, 62
    %t429 = add i32 %t430, 23
    call void @_WriteInteger(i8* %t428, i32 1, i32 0, i32 %t429)
    call void @_WriteString(i8* %t428, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.221, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t428)
    ; line 893
    %t431 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t431, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.222, i32 0, i32 0), i32 12)
    %t433 = sub i32 0, 20
    %t434 = sub i32 0, 15
    %t432 = add i32 %t433, %t434
    call void @_WriteInteger(i8* %t431, i32 1, i32 0, i32 %t432)
    call void @_WriteString(i8* %t431, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.223, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t431)
    ; line 894
    %t435 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t435, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0), i32 12)
    %t437 = sub i32 0, 14
    %t436 = sub i32 20, %t437
    call void @_WriteInteger(i8* %t435, i32 1, i32 0, i32 %t436)
    call void @_WriteString(i8* %t435, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t435)
    ; line 895
    %t438 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t438, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0), i32 12)
    %t440 = sub i32 0, 34
    %t439 = sub i32 %t440, 14
    call void @_WriteInteger(i8* %t438, i32 1, i32 0, i32 %t439)
    call void @_WriteString(i8* %t438, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.226, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t438)
    ; line 896
    %t441 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t441, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.227, i32 0, i32 0), i32 12)
    %t443 = sub i32 0, 56
    %t444 = sub i32 0, 12
    %t442 = sub i32 %t443, %t444
    call void @_WriteInteger(i8* %t441, i32 1, i32 0, i32 %t442)
    call void @_WriteString(i8* %t441, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t441)
    ; line 897
    %t445 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t445, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), i32 12)
    %t447 = sub i32 0, 4
    %t446 = mul i32 5, %t447
    call void @_WriteInteger(i8* %t445, i32 1, i32 0, i32 %t446)
    call void @_WriteString(i8* %t445, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.230, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t445)
    ; line 898
    %t448 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t448, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i32 12)
    %t450 = sub i32 0, 18
    %t449 = mul i32 %t450, 7
    call void @_WriteInteger(i8* %t448, i32 1, i32 0, i32 %t449)
    call void @_WriteString(i8* %t448, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.232, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t448)
    ; line 899
    %t451 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t451, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.233, i32 0, i32 0), i32 12)
    %t453 = sub i32 0, 40
    %t454 = sub i32 0, 13
    %t452 = mul i32 %t453, %t454
    call void @_WriteInteger(i8* %t451, i32 1, i32 0, i32 %t452)
    call void @_WriteString(i8* %t451, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.234, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t451)
    ; line 900
    %t455 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t455, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i32 12)
    %t457 = sub i32 0, 5
    %t456 = sdiv i32 30, %t457
    call void @_WriteInteger(i8* %t455, i32 1, i32 0, i32 %t456)
    call void @_WriteString(i8* %t455, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t455)
    ; line 901
    %t458 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t458, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0), i32 12)
    %t460 = sub i32 0, 50
    %t459 = sdiv i32 %t460, 2
    call void @_WriteInteger(i8* %t458, i32 1, i32 0, i32 %t459)
    call void @_WriteString(i8* %t458, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.238, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t458)
    ; line 902
    %t461 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t461, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i32 0, i32 0), i32 12)
    %t463 = sub i32 0, 20
    %t464 = sub i32 0, 4
    %t462 = sdiv i32 %t463, %t464
    call void @_WriteInteger(i8* %t461, i32 1, i32 0, i32 %t462)
    call void @_WriteString(i8* %t461, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t461)
    ; line 903
    %t465 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t465, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t465, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t465, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.242, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t465)
    ; line 904
    %t466 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t466, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.243, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t466, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t466, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t466)
    ; line 905
    %t467 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t467, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t467, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t467, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.245, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t467)
    ; line 906
    %t468 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t468, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.246, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t468, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t468, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.247, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t468)
    ; line 907
    %t469 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t469, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.248, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t469, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t469, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.249, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t469)
    ; line 908
    %t470 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t470, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t470, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t470, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t470)
    ; line 909
    %t471 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t471, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.251, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t471, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t471, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t471)
    ; line 910
    %t472 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t472, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i32 12)
    %t474 = sub i32 0, 5
    %t475 = sub i32 0, 5
    %t473 = icmp eq i32 %t474, %t475
    call void @_WriteBool(i8* %t472, i32 5, i32 0, i1 %t473)
    call void @_WriteString(i8* %t472, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t472)
    ; line 911
    %t476 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t476, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.253, i32 0, i32 0), i32 12)
    %t478 = sub i32 0, 5
    %t477 = icmp eq i32 %t478, 5
    call void @_WriteBool(i8* %t476, i32 5, i32 0, i1 %t477)
    call void @_WriteString(i8* %t476, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t476)
    ; line 912
    %t479 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t479, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.254, i32 0, i32 0), i32 12)
    %t481 = sub i32 0, 21
    %t482 = sub i32 0, 40
    %t480 = icmp ne i32 %t481, %t482
    call void @_WriteBool(i8* %t479, i32 5, i32 0, i1 %t480)
    call void @_WriteString(i8* %t479, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t479)
    ; line 913
    %t483 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t483, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0), i32 12)
    %t485 = sub i32 0, 21
    %t486 = sub i32 0, 21
    %t484 = icmp ne i32 %t485, %t486
    call void @_WriteBool(i8* %t483, i32 5, i32 0, i1 %t484)
    call void @_WriteString(i8* %t483, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t483)
    ; line 914
    %t487 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t487, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.256, i32 0, i32 0), i32 12)
    %t489 = sub i32 0, 3
    %t488 = icmp slt i32 %t489, 5
    call void @_WriteBool(i8* %t487, i32 5, i32 0, i1 %t488)
    call void @_WriteString(i8* %t487, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t487)
    ; line 915
    %t490 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t490, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.257, i32 0, i32 0), i32 12)
    %t492 = sub i32 0, 32
    %t493 = sub i32 0, 20
    %t491 = icmp slt i32 %t492, %t493
    call void @_WriteBool(i8* %t490, i32 5, i32 0, i1 %t491)
    call void @_WriteString(i8* %t490, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t490)
    ; line 916
    %t494 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t494, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.258, i32 0, i32 0), i32 12)
    %t496 = sub i32 0, 20
    %t495 = icmp slt i32 20, %t496
    call void @_WriteBool(i8* %t494, i32 5, i32 0, i1 %t495)
    call void @_WriteString(i8* %t494, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t494)
    ; line 917
    %t497 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t497, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.259, i32 0, i32 0), i32 12)
    %t499 = sub i32 0, 15
    %t500 = sub i32 0, 40
    %t498 = icmp slt i32 %t499, %t500
    call void @_WriteBool(i8* %t497, i32 5, i32 0, i1 %t498)
    call void @_WriteString(i8* %t497, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t497)
    ; line 918
    %t501 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t501, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.260, i32 0, i32 0), i32 12)
    %t503 = sub i32 0, 4
    %t502 = icmp sgt i32 70, %t503
    call void @_WriteBool(i8* %t501, i32 5, i32 0, i1 %t502)
    call void @_WriteString(i8* %t501, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t501)
    ; line 919
    %t504 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t504, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.261, i32 0, i32 0), i32 12)
    %t506 = sub i32 0, 23
    %t507 = sub i32 0, 34
    %t505 = icmp sgt i32 %t506, %t507
    call void @_WriteBool(i8* %t504, i32 5, i32 0, i1 %t505)
    call void @_WriteString(i8* %t504, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t504)
    ; line 920
    %t508 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t508, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.262, i32 0, i32 0), i32 12)
    %t510 = sub i32 0, 5
    %t509 = icmp sgt i32 %t510, 5
    call void @_WriteBool(i8* %t508, i32 5, i32 0, i1 %t509)
    call void @_WriteString(i8* %t508, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t508)
    ; line 921
    %t511 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t511, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.263, i32 0, i32 0), i32 12)
    %t513 = sub i32 0, 60
    %t514 = sub i32 0, 59
    %t512 = icmp sgt i32 %t513, %t514
    call void @_WriteBool(i8* %t511, i32 5, i32 0, i1 %t512)
    call void @_WriteString(i8* %t511, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t511)
    ; line 922
    %t515 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t515, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.264, i32 0, i32 0), i32 12)
    %t517 = sub i32 0, 12
    %t516 = icmp sle i32 %t517, 4
    call void @_WriteBool(i8* %t515, i32 5, i32 0, i1 %t516)
    call void @_WriteString(i8* %t515, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t515)
    ; line 923
    %t518 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t518, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.265, i32 0, i32 0), i32 12)
    %t520 = sub i32 0, 14
    %t521 = sub i32 0, 5
    %t519 = icmp sle i32 %t520, %t521
    call void @_WriteBool(i8* %t518, i32 5, i32 0, i1 %t519)
    call void @_WriteString(i8* %t518, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t518)
    ; line 924
    %t522 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t522, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0), i32 12)
    %t524 = sub i32 0, 7
    %t525 = sub i32 0, 7
    %t523 = icmp sle i32 %t524, %t525
    call void @_WriteBool(i8* %t522, i32 5, i32 0, i1 %t523)
    call void @_WriteString(i8* %t522, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t522)
    ; line 925
    %t526 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t526, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i32 12)
    %t528 = sub i32 0, 5
    %t527 = icmp sle i32 5, %t528
    call void @_WriteBool(i8* %t526, i32 5, i32 0, i1 %t527)
    call void @_WriteString(i8* %t526, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t526)
    ; line 926
    %t529 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t529, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.268, i32 0, i32 0), i32 12)
    %t531 = sub i32 0, 10
    %t532 = sub i32 0, 20
    %t530 = icmp sle i32 %t531, %t532
    call void @_WriteBool(i8* %t529, i32 5, i32 0, i1 %t530)
    call void @_WriteString(i8* %t529, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t529)
    ; line 927
    %t533 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t533, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.269, i32 0, i32 0), i32 12)
    %t535 = sub i32 0, 3
    %t534 = icmp sge i32 9, %t535
    call void @_WriteBool(i8* %t533, i32 5, i32 0, i1 %t534)
    call void @_WriteString(i8* %t533, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t533)
    ; line 928
    %t536 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t536, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.270, i32 0, i32 0), i32 12)
    %t538 = sub i32 0, 4
    %t539 = sub i32 0, 10
    %t537 = icmp sge i32 %t538, %t539
    call void @_WriteBool(i8* %t536, i32 5, i32 0, i1 %t537)
    call void @_WriteString(i8* %t536, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t536)
    ; line 929
    %t540 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t540, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.271, i32 0, i32 0), i32 12)
    %t542 = sub i32 0, 13
    %t543 = sub i32 0, 13
    %t541 = icmp sge i32 %t542, %t543
    call void @_WriteBool(i8* %t540, i32 5, i32 0, i1 %t541)
    call void @_WriteString(i8* %t540, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t540)
    ; line 930
    %t544 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t544, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.272, i32 0, i32 0), i32 12)
    %t546 = sub i32 0, 6
    %t545 = icmp sge i32 %t546, 6
    call void @_WriteBool(i8* %t544, i32 5, i32 0, i1 %t545)
    call void @_WriteString(i8* %t544, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t544)
    ; line 931
    %t547 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t547, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.273, i32 0, i32 0), i32 12)
    %t549 = sub i32 0, 20
    %t550 = sub i32 0, 10
    %t548 = icmp sge i32 %t549, %t550
    call void @_WriteBool(i8* %t547, i32 5, i32 0, i1 %t548)
    call void @_WriteString(i8* %t547, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t547)
    ; line 932
    %t551 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t551, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.274, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t551, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t551, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t551)
    ; line 933
    %t552 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t552, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.275, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t552, i32 1, i32 0, i32 -52)
    call void @_WriteString(i8* %t552, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t552)
    ; line 934
    %t553 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t553, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.276, i32 0, i32 0), i32 12)
    %t554 = sub i32 0, -52
    call void @_WriteInteger(i8* %t553, i32 1, i32 0, i32 %t554)
    call void @_WriteString(i8* %t553, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.277, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t553)
    ; line 935
    %t555 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t555, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.278, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t555, i32 1, i32 0, i32 -768)
    call void @_WriteString(i8* %t555, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.279, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t555)
    ; line 936
    %t556 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t556, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.280, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t556, i32 1, i32 0, i32 52)
    call void @_WriteString(i8* %t556, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.277, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t556)
    ; line 937
    %t557 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t557, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.281, i32 0, i32 0), i32 12)
    %t558 = add i32 2147483647, -2147483647
    call void @_WriteInteger(i8* %t557, i32 1, i32 0, i32 %t558)
    call void @_WriteString(i8* %t557, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t557)
    ; line 945
    %t559 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t559)
    ; line 946
    %t560 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t560, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.282, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t560)
    ; line 947
    %t561 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t561)
    ; line 950
    store i32 43, i32* @srx
    ; line 950
    store i32 78, i32* @sry
    ; line 950
    %t562 = load i32, i32* @sry
    store i32 %t562, i32* @srz
    ; line 951
    %t563 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t563, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i32 0, i32 0), i32 13)
    %t565 = load i32, i32* @srx
    %t566 = load i32, i32* @sry
    %t564 = add i32 %t565, %t566
    call void @_WriteInteger(i8* %t563, i32 1, i32 0, i32 %t564)
    call void @_WriteString(i8* %t563, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t563)
    ; line 952
    %t567 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t567, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.284, i32 0, i32 0), i32 13)
    %t569 = load i32, i32* @sry
    %t570 = load i32, i32* @srx
    %t568 = sub i32 %t569, %t570
    call void @_WriteInteger(i8* %t567, i32 1, i32 0, i32 %t568)
    call void @_WriteString(i8* %t567, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t567)
    ; line 953
    %t571 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t571, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.285, i32 0, i32 0), i32 13)
    %t573 = load i32, i32* @srx
    %t574 = load i32, i32* @sry
    %t572 = mul i32 %t573, %t574
    call void @_WriteInteger(i8* %t571, i32 1, i32 0, i32 %t572)
    call void @_WriteString(i8* %t571, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t571)
    ; line 954
    %t575 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t575, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.286, i32 0, i32 0), i32 13)
    %t577 = load i32, i32* @sry
    %t578 = load i32, i32* @srx
    %t576 = sdiv i32 %t577, %t578
    call void @_WriteInteger(i8* %t575, i32 1, i32 0, i32 %t576)
    call void @_WriteString(i8* %t575, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t575)
    ; line 955
    %t579 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t579, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.287, i32 0, i32 0), i32 13)
    %t581 = load i32, i32* @sry
    %t582 = load i32, i32* @srx
    %t580 = srem i32 %t581, %t582
    call void @_WriteInteger(i8* %t579, i32 1, i32 0, i32 %t580)
    call void @_WriteString(i8* %t579, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t579)
    ; line 956
    %t583 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t583, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.288, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t583, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t583, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t583)
    ; line 957
    %t584 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t584, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.289, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t584, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t584, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t584)
    ; line 958
    %t585 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t585, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.290, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t585, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t585, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t585)
    ; line 959
    %t586 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t586, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.291, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t586, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t586, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t586)
    ; line 960
    %t587 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t587, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.292, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t587, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t587, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t587)
    ; line 961
    %t588 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t588, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.293, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t588, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t588, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t588)
    ; line 962
    %t589 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t589, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.294, i32 0, i32 0), i32 13)
    %t591 = load i32, i32* @srz
    %t592 = load i32, i32* @sry
    %t590 = icmp eq i32 %t591, %t592
    call void @_WriteBool(i8* %t589, i32 5, i32 0, i1 %t590)
    call void @_WriteString(i8* %t589, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t589)
    ; line 963
    %t593 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t593, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.295, i32 0, i32 0), i32 13)
    %t595 = load i32, i32* @srx
    %t596 = load i32, i32* @sry
    %t594 = icmp eq i32 %t595, %t596
    call void @_WriteBool(i8* %t593, i32 5, i32 0, i1 %t594)
    call void @_WriteString(i8* %t593, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t593)
    ; line 964
    %t597 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t597, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.296, i32 0, i32 0), i32 13)
    %t599 = load i32, i32* @srx
    %t600 = load i32, i32* @sry
    %t598 = icmp slt i32 %t599, %t600
    call void @_WriteBool(i8* %t597, i32 5, i32 0, i1 %t598)
    call void @_WriteString(i8* %t597, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t597)
    ; line 965
    %t601 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t601, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.297, i32 0, i32 0), i32 13)
    %t603 = load i32, i32* @sry
    %t604 = load i32, i32* @srx
    %t602 = icmp slt i32 %t603, %t604
    call void @_WriteBool(i8* %t601, i32 5, i32 0, i1 %t602)
    call void @_WriteString(i8* %t601, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t601)
    ; line 966
    %t605 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t605, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.298, i32 0, i32 0), i32 13)
    %t607 = load i32, i32* @sry
    %t608 = load i32, i32* @srx
    %t606 = icmp sgt i32 %t607, %t608
    call void @_WriteBool(i8* %t605, i32 5, i32 0, i1 %t606)
    call void @_WriteString(i8* %t605, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t605)
    ; line 967
    %t609 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t609, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i32 13)
    %t611 = load i32, i32* @srx
    %t612 = load i32, i32* @sry
    %t610 = icmp sgt i32 %t611, %t612
    call void @_WriteBool(i8* %t609, i32 5, i32 0, i1 %t610)
    call void @_WriteString(i8* %t609, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t609)
    ; line 968
    %t613 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t613, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.300, i32 0, i32 0), i32 13)
    %t615 = load i32, i32* @srx
    %t616 = load i32, i32* @sry
    %t614 = icmp ne i32 %t615, %t616
    call void @_WriteBool(i8* %t613, i32 5, i32 0, i1 %t614)
    call void @_WriteString(i8* %t613, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t613)
    ; line 969
    %t617 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t617, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.301, i32 0, i32 0), i32 13)
    %t619 = load i32, i32* @sry
    %t620 = load i32, i32* @srz
    %t618 = icmp ne i32 %t619, %t620
    call void @_WriteBool(i8* %t617, i32 5, i32 0, i1 %t618)
    call void @_WriteString(i8* %t617, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t617)
    ; line 970
    %t621 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t621, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.302, i32 0, i32 0), i32 13)
    %t623 = load i32, i32* @srx
    %t624 = load i32, i32* @sry
    %t622 = icmp sle i32 %t623, %t624
    call void @_WriteBool(i8* %t621, i32 5, i32 0, i1 %t622)
    call void @_WriteString(i8* %t621, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t621)
    ; line 971
    %t625 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t625, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.303, i32 0, i32 0), i32 13)
    %t627 = load i32, i32* @srz
    %t628 = load i32, i32* @sry
    %t626 = icmp sle i32 %t627, %t628
    call void @_WriteBool(i8* %t625, i32 5, i32 0, i1 %t626)
    call void @_WriteString(i8* %t625, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t625)
    ; line 972
    %t629 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t629, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.304, i32 0, i32 0), i32 13)
    %t631 = load i32, i32* @sry
    %t632 = load i32, i32* @srx
    %t630 = icmp sle i32 %t631, %t632
    call void @_WriteBool(i8* %t629, i32 5, i32 0, i1 %t630)
    call void @_WriteString(i8* %t629, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t629)
    ; line 973
    %t633 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t633, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.305, i32 0, i32 0), i32 13)
    %t635 = load i32, i32* @sry
    %t636 = load i32, i32* @srx
    %t634 = icmp sge i32 %t635, %t636
    call void @_WriteBool(i8* %t633, i32 5, i32 0, i1 %t634)
    call void @_WriteString(i8* %t633, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t633)
    ; line 974
    %t637 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t637, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.306, i32 0, i32 0), i32 13)
    %t639 = load i32, i32* @sry
    %t640 = load i32, i32* @srz
    %t638 = icmp sge i32 %t639, %t640
    call void @_WriteBool(i8* %t637, i32 5, i32 0, i1 %t638)
    call void @_WriteString(i8* %t637, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t637)
    ; line 975
    %t641 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t641, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i32 13)
    %t643 = load i32, i32* @srx
    %t644 = load i32, i32* @sry
    %t642 = icmp sge i32 %t643, %t644
    call void @_WriteBool(i8* %t641, i32 5, i32 0, i1 %t642)
    call void @_WriteString(i8* %t641, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t641)
    ; line 978
    %t645 = sub i32 0, 14
    store i32 %t645, i32* @sras
    ; line 979
    %t646 = sub i32 0, 32
    store i32 %t646, i32* @srbs
    ; line 980
    %t647 = sub i32 0, 14
    store i32 %t647, i32* @srcs
    ; line 981
    store i32 20, i32* @srds
    ; line 982
    %t648 = sub i32 0, 15
    store i32 %t648, i32* @sres
    ; line 983
    %t649 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t649, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.308, i32 0, i32 0), i32 13)
    %t651 = load i32, i32* @sras
    %t652 = load i32, i32* @srds
    %t650 = add i32 %t651, %t652
    call void @_WriteInteger(i8* %t649, i32 1, i32 0, i32 %t650)
    call void @_WriteString(i8* %t649, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t649)
    ; line 984
    %t653 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t653, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.309, i32 0, i32 0), i32 13)
    %t655 = load i32, i32* @srds
    %t656 = load i32, i32* @sras
    %t654 = add i32 %t655, %t656
    call void @_WriteInteger(i8* %t653, i32 1, i32 0, i32 %t654)
    call void @_WriteString(i8* %t653, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t653)
    ; line 985
    %t657 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t657, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.310, i32 0, i32 0), i32 13)
    %t659 = load i32, i32* @srbs
    %t660 = load i32, i32* @srds
    %t658 = add i32 %t659, %t660
    call void @_WriteInteger(i8* %t657, i32 1, i32 0, i32 %t658)
    call void @_WriteString(i8* %t657, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t657)
    ; line 986
    %t661 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t661, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.311, i32 0, i32 0), i32 13)
    %t663 = load i32, i32* @sras
    %t664 = load i32, i32* @srbs
    %t662 = add i32 %t663, %t664
    call void @_WriteInteger(i8* %t661, i32 1, i32 0, i32 %t662)
    call void @_WriteString(i8* %t661, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t661)
    ; line 987
    %t665 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t665, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.312, i32 0, i32 0), i32 13)
    %t667 = load i32, i32* @srds
    %t668 = load i32, i32* @sras
    %t666 = sub i32 %t667, %t668
    call void @_WriteInteger(i8* %t665, i32 1, i32 0, i32 %t666)
    call void @_WriteString(i8* %t665, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t665)
    ; line 988
    %t669 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t669, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.313, i32 0, i32 0), i32 13)
    %t671 = load i32, i32* @srbs
    %t672 = load i32, i32* @srds
    %t670 = sub i32 %t671, %t672
    call void @_WriteInteger(i8* %t669, i32 1, i32 0, i32 %t670)
    call void @_WriteString(i8* %t669, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t669)
    ; line 989
    %t673 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t673, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.314, i32 0, i32 0), i32 13)
    %t675 = load i32, i32* @srbs
    %t676 = load i32, i32* @sras
    %t674 = sub i32 %t675, %t676
    call void @_WriteInteger(i8* %t673, i32 1, i32 0, i32 %t674)
    call void @_WriteString(i8* %t673, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t673)
    ; line 990
    %t677 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t677, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.315, i32 0, i32 0), i32 13)
    %t679 = load i32, i32* @srds
    %t680 = load i32, i32* @sras
    %t678 = mul i32 %t679, %t680
    call void @_WriteInteger(i8* %t677, i32 1, i32 0, i32 %t678)
    call void @_WriteString(i8* %t677, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t677)
    ; line 991
    %t681 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t681, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.316, i32 0, i32 0), i32 13)
    %t683 = load i32, i32* @sras
    %t684 = load i32, i32* @srds
    %t682 = mul i32 %t683, %t684
    call void @_WriteInteger(i8* %t681, i32 1, i32 0, i32 %t682)
    call void @_WriteString(i8* %t681, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t681)
    ; line 992
    %t685 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t685, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.317, i32 0, i32 0), i32 13)
    %t687 = load i32, i32* @sras
    %t688 = load i32, i32* @srbs
    %t686 = mul i32 %t687, %t688
    call void @_WriteInteger(i8* %t685, i32 1, i32 0, i32 %t686)
    call void @_WriteString(i8* %t685, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.174, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t685)
    ; line 993
    %t689 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t689, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.318, i32 0, i32 0), i32 13)
    %t691 = load i32, i32* @srds
    %t692 = load i32, i32* @sras
    %t690 = sdiv i32 %t691, %t692
    call void @_WriteInteger(i8* %t689, i32 1, i32 0, i32 %t690)
    call void @_WriteString(i8* %t689, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t689)
    ; line 994
    %t693 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t693, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.319, i32 0, i32 0), i32 13)
    %t695 = load i32, i32* @srbs
    %t696 = load i32, i32* @srds
    %t694 = sdiv i32 %t695, %t696
    call void @_WriteInteger(i8* %t693, i32 1, i32 0, i32 %t694)
    call void @_WriteString(i8* %t693, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t693)
    ; line 995
    %t697 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t697, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.320, i32 0, i32 0), i32 13)
    %t699 = load i32, i32* @srbs
    %t700 = load i32, i32* @sras
    %t698 = sdiv i32 %t699, %t700
    call void @_WriteInteger(i8* %t697, i32 1, i32 0, i32 %t698)
    call void @_WriteString(i8* %t697, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.179, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t697)
    ; line 996
    %t701 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t701, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.321, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t701, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t701, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t701)
    ; line 997
    %t702 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t702, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.322, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t702, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t702, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.183, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t702)
    ; line 998
    %t703 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t703, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.323, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t703, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t703, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t703)
    ; line 999
    %t704 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t704, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.324, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t704, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t704, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t704)
    ; line 1000
    %t705 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t705, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.325, i32 0, i32 0), i32 13)
    %t707 = load i32, i32* @sras
    %t708 = load i32, i32* @srcs
    %t706 = icmp eq i32 %t707, %t708
    call void @_WriteBool(i8* %t705, i32 5, i32 0, i1 %t706)
    call void @_WriteString(i8* %t705, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t705)
    ; line 1001
    %t709 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t709, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i32 0, i32 0), i32 13)
    %t711 = load i32, i32* @sras
    %t712 = load i32, i32* @srbs
    %t710 = icmp eq i32 %t711, %t712
    call void @_WriteBool(i8* %t709, i32 5, i32 0, i1 %t710)
    call void @_WriteString(i8* %t709, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t709)
    ; line 1002
    %t713 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t713, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.327, i32 0, i32 0), i32 13)
    %t715 = load i32, i32* @sras
    %t716 = load i32, i32* @srbs
    %t714 = icmp ne i32 %t715, %t716
    call void @_WriteBool(i8* %t713, i32 5, i32 0, i1 %t714)
    call void @_WriteString(i8* %t713, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t713)
    ; line 1003
    %t717 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t717, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.328, i32 0, i32 0), i32 13)
    %t719 = load i32, i32* @sras
    %t720 = load i32, i32* @srcs
    %t718 = icmp ne i32 %t719, %t720
    call void @_WriteBool(i8* %t717, i32 5, i32 0, i1 %t718)
    call void @_WriteString(i8* %t717, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t717)
    ; line 1004
    %t721 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t721, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.329, i32 0, i32 0), i32 13)
    %t723 = load i32, i32* @sras
    %t724 = load i32, i32* @srds
    %t722 = icmp slt i32 %t723, %t724
    call void @_WriteBool(i8* %t721, i32 5, i32 0, i1 %t722)
    call void @_WriteString(i8* %t721, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t721)
    ; line 1005
    %t725 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t725, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.330, i32 0, i32 0), i32 13)
    %t727 = load i32, i32* @srbs
    %t728 = load i32, i32* @sras
    %t726 = icmp slt i32 %t727, %t728
    call void @_WriteBool(i8* %t725, i32 5, i32 0, i1 %t726)
    call void @_WriteString(i8* %t725, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t725)
    ; line 1006
    %t729 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t729, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.331, i32 0, i32 0), i32 13)
    %t731 = load i32, i32* @srds
    %t732 = load i32, i32* @sras
    %t730 = icmp slt i32 %t731, %t732
    call void @_WriteBool(i8* %t729, i32 5, i32 0, i1 %t730)
    call void @_WriteString(i8* %t729, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t729)
    ; line 1007
    %t733 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t733, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.332, i32 0, i32 0), i32 13)
    %t735 = load i32, i32* @sras
    %t736 = load i32, i32* @srbs
    %t734 = icmp slt i32 %t735, %t736
    call void @_WriteBool(i8* %t733, i32 5, i32 0, i1 %t734)
    call void @_WriteString(i8* %t733, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t733)
    ; line 1008
    %t737 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t737, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.333, i32 0, i32 0), i32 13)
    %t739 = load i32, i32* @srds
    %t740 = load i32, i32* @sras
    %t738 = icmp sgt i32 %t739, %t740
    call void @_WriteBool(i8* %t737, i32 5, i32 0, i1 %t738)
    call void @_WriteString(i8* %t737, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t737)
    ; line 1009
    %t741 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t741, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.334, i32 0, i32 0), i32 13)
    %t743 = load i32, i32* @sras
    %t744 = load i32, i32* @srbs
    %t742 = icmp sgt i32 %t743, %t744
    call void @_WriteBool(i8* %t741, i32 5, i32 0, i1 %t742)
    call void @_WriteString(i8* %t741, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t741)
    ; line 1010
    %t745 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t745, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i32 0, i32 0), i32 13)
    %t747 = load i32, i32* @sras
    %t748 = load i32, i32* @srds
    %t746 = icmp sgt i32 %t747, %t748
    call void @_WriteBool(i8* %t745, i32 5, i32 0, i1 %t746)
    call void @_WriteString(i8* %t745, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t745)
    ; line 1011
    %t749 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t749, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.336, i32 0, i32 0), i32 13)
    %t751 = load i32, i32* @srbs
    %t752 = load i32, i32* @sras
    %t750 = icmp sgt i32 %t751, %t752
    call void @_WriteBool(i8* %t749, i32 5, i32 0, i1 %t750)
    call void @_WriteString(i8* %t749, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t749)
    ; line 1012
    %t753 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t753, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.337, i32 0, i32 0), i32 13)
    %t755 = load i32, i32* @sras
    %t756 = load i32, i32* @srds
    %t754 = icmp sle i32 %t755, %t756
    call void @_WriteBool(i8* %t753, i32 5, i32 0, i1 %t754)
    call void @_WriteString(i8* %t753, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t753)
    ; line 1013
    %t757 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t757, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.338, i32 0, i32 0), i32 13)
    %t759 = load i32, i32* @srbs
    %t760 = load i32, i32* @sras
    %t758 = icmp sle i32 %t759, %t760
    call void @_WriteBool(i8* %t757, i32 5, i32 0, i1 %t758)
    call void @_WriteString(i8* %t757, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t757)
    ; line 1014
    %t761 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t761, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.339, i32 0, i32 0), i32 13)
    %t763 = load i32, i32* @sras
    %t764 = load i32, i32* @srcs
    %t762 = icmp sle i32 %t763, %t764
    call void @_WriteBool(i8* %t761, i32 5, i32 0, i1 %t762)
    call void @_WriteString(i8* %t761, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t761)
    ; line 1015
    %t765 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t765, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i32 13)
    %t767 = load i32, i32* @srds
    %t768 = load i32, i32* @sras
    %t766 = icmp sle i32 %t767, %t768
    call void @_WriteBool(i8* %t765, i32 5, i32 0, i1 %t766)
    call void @_WriteString(i8* %t765, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t765)
    ; line 1016
    %t769 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t769, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i32 0, i32 0), i32 13)
    %t771 = load i32, i32* @sras
    %t772 = load i32, i32* @srbs
    %t770 = icmp sle i32 %t771, %t772
    call void @_WriteBool(i8* %t769, i32 5, i32 0, i1 %t770)
    call void @_WriteString(i8* %t769, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t769)
    ; line 1017
    %t773 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t773, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.342, i32 0, i32 0), i32 13)
    %t775 = load i32, i32* @srds
    %t776 = load i32, i32* @sras
    %t774 = icmp sge i32 %t775, %t776
    call void @_WriteBool(i8* %t773, i32 5, i32 0, i1 %t774)
    call void @_WriteString(i8* %t773, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t773)
    ; line 1018
    %t777 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t777, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.343, i32 0, i32 0), i32 13)
    %t779 = load i32, i32* @sras
    %t780 = load i32, i32* @srbs
    %t778 = icmp sge i32 %t779, %t780
    call void @_WriteBool(i8* %t777, i32 5, i32 0, i1 %t778)
    call void @_WriteString(i8* %t777, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t777)
    ; line 1019
    %t781 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t781, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.344, i32 0, i32 0), i32 13)
    %t783 = load i32, i32* @sras
    %t784 = load i32, i32* @srcs
    %t782 = icmp sge i32 %t783, %t784
    call void @_WriteBool(i8* %t781, i32 5, i32 0, i1 %t782)
    call void @_WriteString(i8* %t781, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t781)
    ; line 1020
    %t785 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t785, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.345, i32 0, i32 0), i32 13)
    %t787 = load i32, i32* @sras
    %t788 = load i32, i32* @srds
    %t786 = icmp sge i32 %t787, %t788
    call void @_WriteBool(i8* %t785, i32 5, i32 0, i1 %t786)
    call void @_WriteString(i8* %t785, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t785)
    ; line 1021
    %t789 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t789, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.346, i32 0, i32 0), i32 13)
    %t791 = load i32, i32* @srbs
    %t792 = load i32, i32* @sras
    %t790 = icmp sge i32 %t791, %t792
    call void @_WriteBool(i8* %t789, i32 5, i32 0, i1 %t790)
    call void @_WriteString(i8* %t789, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t789)
    ; line 1022
    %t793 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t793, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.347, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t793, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t793, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t793)
    ; line 1030
    %t794 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t794)
    ; line 1031
    %t795 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t795, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.348, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t795)
    ; line 1032
    %t796 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t796)
    ; line 1035
    store i8 103, i8* @ca
    ; line 1035
    store i8 103, i8* @cb
    ; line 1035
    store i8 117, i8* @cc
    ; line 1036
    %t797 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t797, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.349, i32 0, i32 0), i32 14)
    %t798 = load i8, i8* @ca
    call void @_WriteChar(i8* %t797, i32 0, i32 0, i8 %t798)
    call void @_WriteChar(i8* %t797, i32 0, i32 0, i8 32)
    %t799 = load i8, i8* @cb
    call void @_WriteChar(i8* %t797, i32 0, i32 0, i8 %t799)
    call void @_WriteChar(i8* %t797, i32 0, i32 0, i8 32)
    %t800 = load i8, i8* @cc
    call void @_WriteChar(i8* %t797, i32 0, i32 0, i8 %t800)
    call void @_WriteString(i8* %t797, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.350, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t797)
    ; line 1037
    %t801 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t801, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.351, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t801, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t801, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.352, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t801)
    ; line 1038
    %t802 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t802, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.353, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t802, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t802, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.354, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t802)
    ; line 1039
    %t803 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t803, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.355, i32 0, i32 0), i32 14)
    call void @_WriteInteger(i8* %t803, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t803, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.356, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t803)
    ; line 1040
    %t804 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t804, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.357, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t804, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t804, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.358, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t804)
    ; line 1041
    %t805 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t805, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.359, i32 0, i32 0), i32 14)
    %t807 = load i8, i8* @ca
    %t808 = load i8, i8* @cb
    %t806 = icmp eq i32 %t807, %t808
    call void @_WriteBool(i8* %t805, i32 5, i32 0, i1 %t806)
    call void @_WriteString(i8* %t805, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t805)
    ; line 1042
    %t809 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t809, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.360, i32 0, i32 0), i32 14)
    %t811 = load i8, i8* @ca
    %t812 = load i8, i8* @cc
    %t810 = icmp eq i32 %t811, %t812
    call void @_WriteBool(i8* %t809, i32 5, i32 0, i1 %t810)
    call void @_WriteString(i8* %t809, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t809)
    ; line 1043
    %t813 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t813, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i32 0, i32 0), i32 14)
    %t815 = load i8, i8* @ca
    %t816 = load i8, i8* @cc
    %t814 = icmp slt i32 %t815, %t816
    call void @_WriteBool(i8* %t813, i32 5, i32 0, i1 %t814)
    call void @_WriteString(i8* %t813, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t813)
    ; line 1044
    %t817 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t817, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.362, i32 0, i32 0), i32 14)
    %t819 = load i8, i8* @cc
    %t820 = load i8, i8* @ca
    %t818 = icmp slt i32 %t819, %t820
    call void @_WriteBool(i8* %t817, i32 5, i32 0, i1 %t818)
    call void @_WriteString(i8* %t817, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t817)
    ; line 1045
    %t821 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t821, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.363, i32 0, i32 0), i32 14)
    %t823 = load i8, i8* @cc
    %t824 = load i8, i8* @ca
    %t822 = icmp sgt i32 %t823, %t824
    call void @_WriteBool(i8* %t821, i32 5, i32 0, i1 %t822)
    call void @_WriteString(i8* %t821, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t821)
    ; line 1046
    %t825 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t825, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.364, i32 0, i32 0), i32 14)
    %t827 = load i8, i8* @ca
    %t828 = load i8, i8* @cc
    %t826 = icmp sgt i32 %t827, %t828
    call void @_WriteBool(i8* %t825, i32 5, i32 0, i1 %t826)
    call void @_WriteString(i8* %t825, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t825)
    ; line 1047
    %t829 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t829, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.365, i32 0, i32 0), i32 14)
    %t831 = load i8, i8* @ca
    %t832 = load i8, i8* @cc
    %t830 = icmp ne i32 %t831, %t832
    call void @_WriteBool(i8* %t829, i32 5, i32 0, i1 %t830)
    call void @_WriteString(i8* %t829, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t829)
    ; line 1048
    %t833 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t833, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.366, i32 0, i32 0), i32 14)
    %t835 = load i8, i8* @ca
    %t836 = load i8, i8* @cb
    %t834 = icmp ne i32 %t835, %t836
    call void @_WriteBool(i8* %t833, i32 5, i32 0, i1 %t834)
    call void @_WriteString(i8* %t833, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t833)
    ; line 1049
    %t837 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t837, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.367, i32 0, i32 0), i32 14)
    %t839 = load i8, i8* @ca
    %t840 = load i8, i8* @cc
    %t838 = icmp sle i32 %t839, %t840
    call void @_WriteBool(i8* %t837, i32 5, i32 0, i1 %t838)
    call void @_WriteString(i8* %t837, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t837)
    ; line 1050
    %t841 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t841, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.368, i32 0, i32 0), i32 14)
    %t843 = load i8, i8* @ca
    %t844 = load i8, i8* @cb
    %t842 = icmp sle i32 %t843, %t844
    call void @_WriteBool(i8* %t841, i32 5, i32 0, i1 %t842)
    call void @_WriteString(i8* %t841, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t841)
    ; line 1051
    %t845 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t845, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.369, i32 0, i32 0), i32 14)
    %t847 = load i8, i8* @cc
    %t848 = load i8, i8* @ca
    %t846 = icmp sle i32 %t847, %t848
    call void @_WriteBool(i8* %t845, i32 5, i32 0, i1 %t846)
    call void @_WriteString(i8* %t845, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t845)
    ; line 1052
    %t849 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t849, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.370, i32 0, i32 0), i32 14)
    %t851 = load i8, i8* @cc
    %t852 = load i8, i8* @cb
    %t850 = icmp sge i32 %t851, %t852
    call void @_WriteBool(i8* %t849, i32 5, i32 0, i1 %t850)
    call void @_WriteString(i8* %t849, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t849)
    ; line 1053
    %t853 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t853, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.371, i32 0, i32 0), i32 14)
    %t855 = load i8, i8* @cb
    %t856 = load i8, i8* @ca
    %t854 = icmp sge i32 %t855, %t856
    call void @_WriteBool(i8* %t853, i32 5, i32 0, i1 %t854)
    call void @_WriteString(i8* %t853, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t853)
    ; line 1054
    %t857 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t857, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.372, i32 0, i32 0), i32 14)
    %t859 = load i8, i8* @cb
    %t860 = load i8, i8* @cc
    %t858 = icmp sge i32 %t859, %t860
    call void @_WriteBool(i8* %t857, i32 5, i32 0, i1 %t858)
    call void @_WriteString(i8* %t857, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t857)
    ; line 1055
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.373, i32 0, i32 0), %T_array_107* @sa
    ; line 1055
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.373, i32 0, i32 0), %T_array_107* @sb
    ; line 1055
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.374, i32 0, i32 0), %T_array_107* @sc
    ; line 1056
    %t861 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.375, i32 0, i32 0), i32 14)
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.376, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t861)
    ; line 1058
    %t862 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t862, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.377, i32 0, i32 0), i32 14)
    %t863 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t862, i32 5, i32 0, i1 %t863)
    call void @_WriteString(i8* %t862, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t862)
    ; line 1059
    %t864 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t864, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.378, i32 0, i32 0), i32 14)
    %t865 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t864, i32 5, i32 0, i1 %t865)
    call void @_WriteString(i8* %t864, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t864)
    ; line 1060
    %t866 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t866, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.379, i32 0, i32 0), i32 14)
    %t867 = call i1 @_StrcmpLT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t866, i32 5, i32 0, i1 %t867)
    call void @_WriteString(i8* %t866, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t866)
    ; line 1061
    %t868 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t868, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.380, i32 0, i32 0), i32 14)
    %t869 = call i1 @_StrcmpLT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t868, i32 5, i32 0, i1 %t869)
    call void @_WriteString(i8* %t868, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t868)
    ; line 1062
    %t870 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t870, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.381, i32 0, i32 0), i32 14)
    %t871 = call i1 @_StrcmpGT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t870, i32 5, i32 0, i1 %t871)
    call void @_WriteString(i8* %t870, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t870)
    ; line 1063
    %t872 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t872, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.382, i32 0, i32 0), i32 14)
    %t873 = call i1 @_StrcmpGT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t872, i32 5, i32 0, i1 %t873)
    call void @_WriteString(i8* %t872, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t872)
    ; line 1064
    %t874 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t874, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.383, i32 0, i32 0), i32 14)
    %t875 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t874, i32 5, i32 0, i1 %t875)
    call void @_WriteString(i8* %t874, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t874)
    ; line 1065
    %t876 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t876, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.384, i32 0, i32 0), i32 14)
    %t877 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t876, i32 5, i32 0, i1 %t877)
    call void @_WriteString(i8* %t876, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t876)
    ; line 1066
    %t878 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t878, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.385, i32 0, i32 0), i32 14)
    %t879 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t878, i32 5, i32 0, i1 %t879)
    call void @_WriteString(i8* %t878, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t878)
    ; line 1067
    %t880 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t880, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.386, i32 0, i32 0), i32 14)
    %t881 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t880, i32 5, i32 0, i1 %t881)
    call void @_WriteString(i8* %t880, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t880)
    ; line 1068
    %t882 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t882, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.387, i32 0, i32 0), i32 14)
    %t883 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t882, i32 5, i32 0, i1 %t883)
    call void @_WriteString(i8* %t882, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t882)
    ; line 1069
    %t884 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t884, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.388, i32 0, i32 0), i32 14)
    %t885 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t884, i32 5, i32 0, i1 %t885)
    call void @_WriteString(i8* %t884, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t884)
    ; line 1070
    %t886 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t886, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.389, i32 0, i32 0), i32 14)
    %t887 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t886, i32 5, i32 0, i1 %t887)
    call void @_WriteString(i8* %t886, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t886)
    ; line 1071
    %t888 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t888, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.390, i32 0, i32 0), i32 14)
    %t889 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t888, i32 5, i32 0, i1 %t889)
    call void @_WriteString(i8* %t888, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t888)
    ; line 1072
    %t890 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t890, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.391, i32 0, i32 0), i32 14)
    ; line 1073
    ; line 1074
    %t891 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t891, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.392, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t891)
    ; line 1075
    %t892 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t892, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.393, i32 0, i32 0), i32 14)
    ; line 1076
    ; line 1077
    %t893 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t893, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.394, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t893)
    ; line 1078
    %t894 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t894, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.395, i32 0, i32 0), i32 14)
    ; line 1079
    store i32 0, i32* @x
    ; line 1080
    ; line 1081
    ; line 1082
    %t895 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t895)
    ; line 1083
    %t896 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t896, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.396, i32 0, i32 0), i32 49)
    call void @_WriteString(i8* %t896, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.397, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t896)
    ; line 1085
    %t898 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 4
    %t897 = bitcast i8* %t898 to i8*
    store i8 110, i8* %t897
    ; line 1085
    %t899 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t899, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.398, i32 0, i32 0), i32 13)
    %t901 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 4
    %t900 = bitcast i8* %t901 to i8*
    %t902 = load i8, i8* %t900
    call void @_WriteChar(i8* %t899, i32 0, i32 0, i8 %t902)
    call void @_WriteString(i8* %t899, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.399, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t899)
    ; line 1086
    %t904 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 13
    %t903 = bitcast i8* %t904 to %T_array_104*
    store %T_array_104 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.400, i32 0, i32 0), %T_array_104* %t903
    ; line 1086
    %t905 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t905, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.401, i32 0, i32 0), i32 13)
    %t907 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 13
    %t906 = bitcast i8* %t907 to %T_array_104*
    call void @_WriteString(i8* %t905, i32 0, i32 0, i8* getelementptr inbounds (%T_array_104, %T_array_104* %t906, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t905, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.402, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t905)
    ; line 1088
    ; line 1089
    %t908 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 1
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), %T_array_109* %t908
    ; line 1090
    %t909 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 2
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.404, i32 0, i32 0), %T_array_109* %t909
    ; line 1091
    %t910 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 10
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.405, i32 0, i32 0), %T_array_109* %t910
    ; line 1092
    %t911 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t911, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.406, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t911)
    ; line 1093
    ; line 1094
    %t912 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t912, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.407, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t912)
    ; line 1095
    %t913 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t913, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.408, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t913)
    ; line 1096
    %t914 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t914, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t914)
    ; line 1097
    %t915 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t915, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t915)
    ; line 1098
    %t916 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t916, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t916)
    ; line 1099
    %t917 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t917, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t917)
    ; line 1100
    %t918 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t918, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t918)
    ; line 1101
    %t919 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t919, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t919)
    ; line 1102
    %t920 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t920, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.409, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t920)
    ; line 1103
    %t921 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t921, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.410, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t921)
    ; line 1104
    %t922 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t922, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.411, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t922)
    ; line 1105
    %t923 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t923, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.412, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t923)
    ; line 1106
    ; line 1121
    %t924 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t924)
    ; line 1122
    %t925 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t925, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.413, i32 0, i32 0), i32 38)
    call void @_WriteString(i8* %t925, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.414, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t925)
    ; line 1126
    %t926 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t926, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.415, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t926, i32 0, i32 0, i8 97)
    call void @_WriteString(i8* %t926, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.416, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t926)
    ; line 1127
    %t927 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t927, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.417, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t927, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t927, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.418, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t927)
    ; line 1128
    %t928 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t928, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.419, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t928, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t928, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.420, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t928)
    ; line 1129
    %t929 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t929, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.421, i32 0, i32 0), i32 14)
    call void @_WriteInteger(i8* %t929, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t929, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.422, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t929)
    ; line 1130
    %t930 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t930, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.423, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t930, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteString(i8* %t930, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.424, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t930)
    ; line 1131
    %t931 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t931, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i32 0, i32 0), i32 14)
    %t932 = icmp eq i32 113, 113
    call void @_WriteBool(i8* %t931, i32 5, i32 0, i1 %t932)
    call void @_WriteString(i8* %t931, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t931)
    ; line 1132
    %t933 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t933, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.426, i32 0, i32 0), i32 14)
    %t934 = icmp eq i32 114, 113
    call void @_WriteBool(i8* %t933, i32 5, i32 0, i1 %t934)
    call void @_WriteString(i8* %t933, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t933)
    ; line 1133
    %t935 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t935, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.427, i32 0, i32 0), i32 14)
    %t936 = icmp slt i32 98, 116
    call void @_WriteBool(i8* %t935, i32 5, i32 0, i1 %t936)
    call void @_WriteString(i8* %t935, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t935)
    ; line 1134
    %t937 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t937, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.428, i32 0, i32 0), i32 14)
    %t938 = icmp slt i32 103, 99
    call void @_WriteBool(i8* %t937, i32 5, i32 0, i1 %t938)
    call void @_WriteString(i8* %t937, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t937)
    ; line 1135
    %t939 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t939, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.412, i32 0, i32 0), i32 14)
    %t940 = icmp sgt i32 102, 101
    call void @_WriteBool(i8* %t939, i32 5, i32 0, i1 %t940)
    call void @_WriteString(i8* %t939, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t939)
    ; line 1136
    %t941 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t941, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.429, i32 0, i32 0), i32 14)
    %t942 = icmp sgt i32 102, 103
    call void @_WriteBool(i8* %t941, i32 5, i32 0, i1 %t942)
    call void @_WriteString(i8* %t941, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t941)
    ; line 1137
    %t943 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t943, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.430, i32 0, i32 0), i32 14)
    %t944 = icmp ne i32 104, 108
    call void @_WriteBool(i8* %t943, i32 5, i32 0, i1 %t944)
    call void @_WriteString(i8* %t943, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t943)
    ; line 1138
    %t945 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t945, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.431, i32 0, i32 0), i32 14)
    %t946 = icmp ne i32 105, 105
    call void @_WriteBool(i8* %t945, i32 5, i32 0, i1 %t946)
    call void @_WriteString(i8* %t945, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t945)
    ; line 1139
    %t947 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t947, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.432, i32 0, i32 0), i32 14)
    %t948 = icmp sle i32 118, 121
    call void @_WriteBool(i8* %t947, i32 5, i32 0, i1 %t948)
    call void @_WriteString(i8* %t947, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t947)
    ; line 1140
    %t949 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t949, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.433, i32 0, i32 0), i32 14)
    %t950 = icmp sle i32 121, 121
    call void @_WriteBool(i8* %t949, i32 5, i32 0, i1 %t950)
    call void @_WriteString(i8* %t949, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t949)
    ; line 1141
    %t951 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t951, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.434, i32 0, i32 0), i32 14)
    %t952 = icmp sle i32 122, 121
    call void @_WriteBool(i8* %t951, i32 5, i32 0, i1 %t952)
    call void @_WriteString(i8* %t951, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t951)
    ; line 1142
    %t953 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t953, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.435, i32 0, i32 0), i32 14)
    %t954 = icmp sge i32 108, 98
    call void @_WriteBool(i8* %t953, i32 5, i32 0, i1 %t954)
    call void @_WriteString(i8* %t953, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t953)
    ; line 1143
    %t955 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t955, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.436, i32 0, i32 0), i32 14)
    %t956 = icmp sge i32 108, 108
    call void @_WriteBool(i8* %t955, i32 5, i32 0, i1 %t956)
    call void @_WriteString(i8* %t955, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t955)
    ; line 1144
    %t957 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t957, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.437, i32 0, i32 0), i32 14)
    %t958 = icmp sge i32 108, 109
    call void @_WriteBool(i8* %t957, i32 5, i32 0, i1 %t958)
    call void @_WriteString(i8* %t957, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t957)
    ; line 1145
    %t959 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t959, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.438, i32 0, i32 0), i32 14)
    %t960 = call i1 @_StrcmpEQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.410, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.410, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t959, i32 5, i32 0, i1 %t960)
    call void @_WriteString(i8* %t959, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t959)
    ; line 1146
    %t961 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t961, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.439, i32 0, i32 0), i32 14)
    %t962 = call i1 @_StrcmpEQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.440, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.410, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t961, i32 5, i32 0, i1 %t962)
    call void @_WriteString(i8* %t961, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t961)
    ; line 1148
    %t963 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t963, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.441, i32 0, i32 0), i32 14)
    %t964 = call i1 @_StrcmpLT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.442, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t963, i32 5, i32 0, i1 %t964)
    call void @_WriteString(i8* %t963, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t963)
    ; line 1149
    %t965 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t965, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.444, i32 0, i32 0), i32 14)
    %t966 = call i1 @_StrcmpLT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.442, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t965, i32 5, i32 0, i1 %t966)
    call void @_WriteString(i8* %t965, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t965)
    ; line 1150
    %t967 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t967, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.445, i32 0, i32 0), i32 14)
    %t968 = call i1 @_StrcmpGT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.442, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t967, i32 5, i32 0, i1 %t968)
    call void @_WriteString(i8* %t967, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t967)
    ; line 1151
    %t969 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t969, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.446, i32 0, i32 0), i32 14)
    %t970 = call i1 @_StrcmpGT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.442, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t969, i32 5, i32 0, i1 %t970)
    call void @_WriteString(i8* %t969, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t969)
    ; line 1152
    %t971 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t971, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.447, i32 0, i32 0), i32 14)
    %t972 = call i1 @_StrcmpNE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.448, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.449, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t971, i32 5, i32 0, i1 %t972)
    call void @_WriteString(i8* %t971, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t971)
    ; line 1153
    %t973 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t973, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.450, i32 0, i32 0), i32 14)
    %t974 = call i1 @_StrcmpNE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.449, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.449, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t973, i32 5, i32 0, i1 %t974)
    call void @_WriteString(i8* %t973, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t973)
    ; line 1154
    %t975 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t975, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.451, i32 0, i32 0), i32 14)
    %t976 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.452, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.453, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t975, i32 5, i32 0, i1 %t976)
    call void @_WriteString(i8* %t975, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t975)
    ; line 1155
    %t977 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t977, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.454, i32 0, i32 0), i32 14)
    %t978 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.449, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.449, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t977, i32 5, i32 0, i1 %t978)
    call void @_WriteString(i8* %t977, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t977)
    ; line 1156
    %t979 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t979, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.455, i32 0, i32 0), i32 14)
    %t980 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.453, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.449, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t979, i32 5, i32 0, i1 %t980)
    call void @_WriteString(i8* %t979, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t979)
    ; line 1157
    %t981 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t981, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.456, i32 0, i32 0), i32 14)
    %t982 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.457, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.458, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t981, i32 5, i32 0, i1 %t982)
    call void @_WriteString(i8* %t981, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t981)
    ; line 1158
    %t983 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t983, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.459, i32 0, i32 0), i32 14)
    %t984 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.458, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.458, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t983, i32 5, i32 0, i1 %t984)
    call void @_WriteString(i8* %t983, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t983)
    ; line 1159
    %t985 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t985, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.460, i32 0, i32 0), i32 14)
    %t986 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.458, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.461, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t985, i32 5, i32 0, i1 %t986)
    call void @_WriteString(i8* %t985, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t985)
    ; line 1160
    %t987 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t987, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.462, i32 0, i32 0), i32 14)
    call void @_WriteString(i8* %t987, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.463, i32 0, i32 0), i32 16)
    call void @_WriteString(i8* %t987, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.464, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t987)
    ; line 1161
    %t988 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t988, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.465, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t988, i32 0, i32 0, i8 118)
    call void @_WriteString(i8* %t988, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.466, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t988)
    ; line 1162
    %t989 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t989, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.467, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t989)
    ; line 1163
    ; line 1164
    %t990 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t990, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.468, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t990)
    ; line 1165
    %t991 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t991, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.469, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t991)
    ; line 1166
    %t992 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t992, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.470, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t992)
    ; line 1167
    %t993 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t993, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.471, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t993)
    ; line 1168
    %t994 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t994, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.472, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t994)
    ; line 1169
    %t995 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t995, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.473, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t995)
    ; line 1170
    %t996 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t996, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.474, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t996)
    ; line 1171
    %t997 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t997, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.475, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t997)
    ; line 1172
    %t998 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t998, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.476, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t998)
    ; line 1173
    %t999 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t999, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.477, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t999)
    ; line 1174
    %t1000 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1000, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.478, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1000)
    ; line 1175
    %t1001 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1001, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.479, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1001)
    ; line 1176
    %t1002 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1002, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.480, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1002)
    ; line 1177
    %t1003 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1003, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.481, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1003)
    ; line 1178
    %t1004 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1004, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.482, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1004)
    ; line 1179
    %t1005 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1005, i32 0, i32 0, i8 104)
    call void @_WriteLn(i8* %t1005)
    ; line 1187
    %t1006 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1006)
    ; line 1188
    %t1007 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1007, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.483, i32 0, i32 0), i32 48)
    call void @_WriteLn(i8* %t1007)
    ; line 1189
    %t1008 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1008)
    ; line 1192
    store i1 1, i1* @ba
    ; line 1192
    store i1 0, i1* @bb
    ; line 1192
    store i1 1, i1* @bc
    ; line 1193
    %t1009 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1009, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i32 0, i32 0), i32 12)
    %t1010 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1009, i32 5, i32 0, i1 %t1010)
    call void @_WriteChar(i8* %t1009, i32 0, i32 0, i8 32)
    %t1011 = load i1, i1* @bb
    call void @_WriteBool(i8* %t1009, i32 5, i32 0, i1 %t1011)
    call void @_WriteString(i8* %t1009, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.485, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1009)
    ; line 1194
    %t1012 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1012, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.486, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1012, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t1012, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1012)
    ; line 1195
    %t1013 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1013, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.487, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1013, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t1013, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1013)
    ; line 1196
    %t1014 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1014, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.488, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1014, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1014, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1014)
    ; line 1197
    %t1015 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1015, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.489, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1015, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1015, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1015)
    ; line 1198
    %t1016 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1016, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.490, i32 0, i32 0), i32 12)
    %t1018 = load i1, i1* @ba
    %t1019 = load i1, i1* @bc
    %t1017 = icmp eq i32 %t1018, %t1019
    call void @_WriteBool(i8* %t1016, i32 5, i32 0, i1 %t1017)
    call void @_WriteString(i8* %t1016, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1016)
    ; line 1199
    %t1020 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1020, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.491, i32 0, i32 0), i32 12)
    %t1022 = load i1, i1* @bb
    %t1023 = load i1, i1* @bb
    %t1021 = icmp eq i32 %t1022, %t1023
    call void @_WriteBool(i8* %t1020, i32 5, i32 0, i1 %t1021)
    call void @_WriteString(i8* %t1020, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1020)
    ; line 1200
    %t1024 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1024, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.492, i32 0, i32 0), i32 12)
    %t1026 = load i1, i1* @ba
    %t1027 = load i1, i1* @bb
    %t1025 = icmp eq i32 %t1026, %t1027
    call void @_WriteBool(i8* %t1024, i32 5, i32 0, i1 %t1025)
    call void @_WriteString(i8* %t1024, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1024)
    ; line 1201
    %t1028 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1028, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.493, i32 0, i32 0), i32 12)
    %t1030 = load i1, i1* @bb
    %t1031 = load i1, i1* @ba
    %t1029 = icmp slt i32 %t1030, %t1031
    call void @_WriteBool(i8* %t1028, i32 5, i32 0, i1 %t1029)
    call void @_WriteString(i8* %t1028, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1028)
    ; line 1202
    %t1032 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1032, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.494, i32 0, i32 0), i32 12)
    %t1034 = load i1, i1* @ba
    %t1035 = load i1, i1* @bb
    %t1033 = icmp slt i32 %t1034, %t1035
    call void @_WriteBool(i8* %t1032, i32 5, i32 0, i1 %t1033)
    call void @_WriteString(i8* %t1032, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1032)
    ; line 1203
    %t1036 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1036, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.495, i32 0, i32 0), i32 12)
    %t1038 = load i1, i1* @ba
    %t1039 = load i1, i1* @bb
    %t1037 = icmp sgt i32 %t1038, %t1039
    call void @_WriteBool(i8* %t1036, i32 5, i32 0, i1 %t1037)
    call void @_WriteString(i8* %t1036, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1036)
    ; line 1204
    %t1040 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1040, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.496, i32 0, i32 0), i32 12)
    %t1042 = load i1, i1* @bb
    %t1043 = load i1, i1* @ba
    %t1041 = icmp sgt i32 %t1042, %t1043
    call void @_WriteBool(i8* %t1040, i32 5, i32 0, i1 %t1041)
    call void @_WriteString(i8* %t1040, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1040)
    ; line 1205
    %t1044 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1044, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.497, i32 0, i32 0), i32 12)
    %t1046 = load i1, i1* @ba
    %t1047 = load i1, i1* @bb
    %t1045 = icmp ne i32 %t1046, %t1047
    call void @_WriteBool(i8* %t1044, i32 5, i32 0, i1 %t1045)
    call void @_WriteString(i8* %t1044, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1044)
    ; line 1206
    %t1048 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1048, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.498, i32 0, i32 0), i32 12)
    %t1050 = load i1, i1* @ba
    %t1051 = load i1, i1* @bc
    %t1049 = icmp ne i32 %t1050, %t1051
    call void @_WriteBool(i8* %t1048, i32 5, i32 0, i1 %t1049)
    call void @_WriteString(i8* %t1048, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1048)
    ; line 1207
    %t1052 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1052, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.499, i32 0, i32 0), i32 12)
    %t1054 = load i1, i1* @bb
    %t1055 = load i1, i1* @ba
    %t1053 = icmp sle i32 %t1054, %t1055
    call void @_WriteBool(i8* %t1052, i32 5, i32 0, i1 %t1053)
    call void @_WriteString(i8* %t1052, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1052)
    ; line 1208
    %t1056 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1056, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.500, i32 0, i32 0), i32 12)
    %t1058 = load i1, i1* @ba
    %t1059 = load i1, i1* @bc
    %t1057 = icmp sle i32 %t1058, %t1059
    call void @_WriteBool(i8* %t1056, i32 5, i32 0, i1 %t1057)
    call void @_WriteString(i8* %t1056, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1056)
    ; line 1209
    %t1060 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1060, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.501, i32 0, i32 0), i32 12)
    %t1062 = load i1, i1* @ba
    %t1063 = load i1, i1* @bb
    %t1061 = icmp sle i32 %t1062, %t1063
    call void @_WriteBool(i8* %t1060, i32 5, i32 0, i1 %t1061)
    call void @_WriteString(i8* %t1060, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1060)
    ; line 1210
    %t1064 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1064, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.502, i32 0, i32 0), i32 12)
    %t1066 = load i1, i1* @ba
    %t1067 = load i1, i1* @bb
    %t1065 = icmp sge i32 %t1066, %t1067
    call void @_WriteBool(i8* %t1064, i32 5, i32 0, i1 %t1065)
    call void @_WriteString(i8* %t1064, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1064)
    ; line 1211
    %t1068 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1068, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.503, i32 0, i32 0), i32 12)
    %t1070 = load i1, i1* @bb
    %t1071 = load i1, i1* @bb
    %t1069 = icmp sge i32 %t1070, %t1071
    call void @_WriteBool(i8* %t1068, i32 5, i32 0, i1 %t1069)
    call void @_WriteString(i8* %t1068, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1068)
    ; line 1212
    %t1072 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1072, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.504, i32 0, i32 0), i32 12)
    %t1074 = load i1, i1* @bb
    %t1075 = load i1, i1* @ba
    %t1073 = icmp sge i32 %t1074, %t1075
    call void @_WriteBool(i8* %t1072, i32 5, i32 0, i1 %t1073)
    call void @_WriteString(i8* %t1072, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1072)
    ; line 1213
    %t1076 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1076, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.505, i32 0, i32 0), i32 12)
    ; line 1214
    ; line 1215
    %t1077 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1077, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.506, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1077)
    ; line 1216
    %t1078 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1078, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.507, i32 0, i32 0), i32 12)
    ; line 1217
    ; line 1218
    %t1079 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1079, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.508, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1079)
    ; line 1219
    %t1080 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1080, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.509, i32 0, i32 0), i32 12)
    ; line 1220
    %t1081 = icmp sgt i32 1, 0
    store i1 %t1081, i1* @ba
    ; line 1220
    %t1082 = load %T_text, %T_text* @output
    %t1083 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1082, i32 5, i32 0, i1 %t1083)
    call void @_WriteString(i8* %t1082, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1082)
    ; line 1221
    %t1084 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1084, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.510, i32 0, i32 0), i32 12)
    ; line 1222
    %t1085 = icmp slt i32 1, 0
    store i1 %t1085, i1* @ba
    ; line 1222
    %t1086 = load %T_text, %T_text* @output
    %t1087 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1086, i32 5, i32 0, i1 %t1087)
    call void @_WriteString(i8* %t1086, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1086)
    ; line 1225
    %t1088 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1088, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.511, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1088, i32 5, i32 0, i1 1)
    call void @_WriteChar(i8* %t1088, i32 0, i32 0, i8 32)
    call void @_WriteBool(i8* %t1088, i32 5, i32 0, i1 0)
    call void @_WriteString(i8* %t1088, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.485, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1088)
    ; line 1226
    %t1089 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1089, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.512, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1089, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t1089, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1089)
    ; line 1227
    %t1090 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1090, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1090, i32 5, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t1090, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1090)
    ; line 1228
    %t1091 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1091, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.514, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1091, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1091, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1091)
    ; line 1229
    %t1092 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1092, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.515, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1092, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1092, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1092)
    ; line 1230
    %t1093 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1093, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.516, i32 0, i32 0), i32 12)
    %t1094 = icmp eq i32 1, 1
    call void @_WriteBool(i8* %t1093, i32 5, i32 0, i1 %t1094)
    call void @_WriteString(i8* %t1093, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1093)
    ; line 1231
    %t1095 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1095, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.517, i32 0, i32 0), i32 12)
    %t1096 = icmp eq i32 0, 0
    call void @_WriteBool(i8* %t1095, i32 5, i32 0, i1 %t1096)
    call void @_WriteString(i8* %t1095, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1095)
    ; line 1232
    %t1097 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1097, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.518, i32 0, i32 0), i32 12)
    %t1098 = icmp eq i32 1, 0
    call void @_WriteBool(i8* %t1097, i32 5, i32 0, i1 %t1098)
    call void @_WriteString(i8* %t1097, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1097)
    ; line 1233
    %t1099 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1099, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.519, i32 0, i32 0), i32 12)
    %t1100 = icmp slt i32 0, 1
    call void @_WriteBool(i8* %t1099, i32 5, i32 0, i1 %t1100)
    call void @_WriteString(i8* %t1099, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1099)
    ; line 1234
    %t1101 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1101, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.520, i32 0, i32 0), i32 12)
    %t1102 = icmp slt i32 1, 0
    call void @_WriteBool(i8* %t1101, i32 5, i32 0, i1 %t1102)
    call void @_WriteString(i8* %t1101, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1101)
    ; line 1235
    %t1103 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1103, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.521, i32 0, i32 0), i32 12)
    %t1104 = icmp sgt i32 1, 0
    call void @_WriteBool(i8* %t1103, i32 5, i32 0, i1 %t1104)
    call void @_WriteString(i8* %t1103, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1103)
    ; line 1236
    %t1105 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1105, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.522, i32 0, i32 0), i32 12)
    %t1106 = icmp sgt i32 0, 1
    call void @_WriteBool(i8* %t1105, i32 5, i32 0, i1 %t1106)
    call void @_WriteString(i8* %t1105, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1105)
    ; line 1237
    %t1107 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1107, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.523, i32 0, i32 0), i32 12)
    %t1108 = icmp ne i32 1, 0
    call void @_WriteBool(i8* %t1107, i32 5, i32 0, i1 %t1108)
    call void @_WriteString(i8* %t1107, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1107)
    ; line 1238
    %t1109 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1109, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.524, i32 0, i32 0), i32 12)
    %t1110 = icmp ne i32 1, 1
    call void @_WriteBool(i8* %t1109, i32 5, i32 0, i1 %t1110)
    call void @_WriteString(i8* %t1109, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1109)
    ; line 1239
    %t1111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1111, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.525, i32 0, i32 0), i32 12)
    %t1112 = icmp sle i32 0, 1
    call void @_WriteBool(i8* %t1111, i32 5, i32 0, i1 %t1112)
    call void @_WriteString(i8* %t1111, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1111)
    ; line 1240
    %t1113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1113, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.526, i32 0, i32 0), i32 12)
    %t1114 = icmp sle i32 1, 1
    call void @_WriteBool(i8* %t1113, i32 5, i32 0, i1 %t1114)
    call void @_WriteString(i8* %t1113, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1113)
    ; line 1241
    %t1115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1115, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.527, i32 0, i32 0), i32 12)
    %t1116 = icmp sle i32 1, 0
    call void @_WriteBool(i8* %t1115, i32 5, i32 0, i1 %t1116)
    call void @_WriteString(i8* %t1115, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1115)
    ; line 1242
    %t1117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1117, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.528, i32 0, i32 0), i32 12)
    %t1118 = icmp sge i32 1, 0
    call void @_WriteBool(i8* %t1117, i32 5, i32 0, i1 %t1118)
    call void @_WriteString(i8* %t1117, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1117)
    ; line 1243
    %t1119 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1119, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.529, i32 0, i32 0), i32 12)
    %t1120 = icmp sge i32 0, 0
    call void @_WriteBool(i8* %t1119, i32 5, i32 0, i1 %t1120)
    call void @_WriteString(i8* %t1119, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1119)
    ; line 1244
    %t1121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1121, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.530, i32 0, i32 0), i32 12)
    %t1122 = icmp sge i32 0, 1
    call void @_WriteBool(i8* %t1121, i32 5, i32 0, i1 %t1122)
    call void @_WriteString(i8* %t1121, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1121)
    ; line 1245
    %t1123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1123, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.531, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1123)
    ; line 1246
    ; line 1247
    %t1124 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1124, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.532, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1124)
    ; line 1248
    %t1125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1125, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.533, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1125)
    ; line 1249
    %t1126 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1126, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.534, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1126)
    ; line 1250
    %t1127 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1127, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.535, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1127)
    ; line 1251
    %t1128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1128, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.536, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1128)
    ; line 1252
    %t1129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1129, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.537, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1129)
    ; line 1253
    %t1130 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1130, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1130)
    ; line 1254
    %t1131 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1131, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.539, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1131)
    ; line 1255
    %t1132 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1132, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.540, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1132)
    ; line 1256
    %t1133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1133, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1133)
    ; line 1257
    %t1134 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1134, i32 0, i32 0, i8 102)
    call void @_WriteLn(i8* %t1134)
    ; line 1258
    %t1135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1135, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.541, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1135)
    ; line 1259
    ; line 1260
    %t1136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1136, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.542, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1136)
    ; line 1261
    %t1137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1137, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.543, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1137)
    ; line 1262
    %t1138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1138, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.544, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1138)
    ; line 1263
    %t1139 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1139, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.545, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1139)
    ; line 1264
    %t1140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1140, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.546, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1140)
    ; line 1265
    %t1141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1141, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.547, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1141)
    ; line 1266
    %t1142 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1142, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.548, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1142)
    ; line 1267
    %t1143 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1143, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.549, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1143)
    ; line 1268
    %t1144 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1144, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.550, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1144)
    ; line 1269
    %t1145 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1145, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.551, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1145)
    ; line 1270
    %t1146 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1146, i32 0, i32 0, i8 116)
    call void @_WriteLn(i8* %t1146)
    ; line 1279
    %t1147 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1147)
    ; line 1280
    %t1148 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1148, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.552, i32 0, i32 0), i32 46)
    call void @_WriteLn(i8* %t1148)
    ; line 1281
    %t1149 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1149)
    ; line 1284
    store i32 2, i32* @sva
    ; line 1284
    store i32 0, i32* @svb
    ; line 1284
    store i32 2, i32* @svc
    ; line 1285
    %t1150 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1150, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.553, i32 0, i32 0), i32 11)
    %t1151 = icmp eq i32 %.dummy.intrin, 1
    call void @_WriteBool(i8* %t1150, i32 5, i32 0, i1 %t1151)
    call void @_WriteString(i8* %t1150, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1150)
    ; line 1286
    %t1152 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1152, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0), i32 11)
    %t1153 = icmp eq i32 %.dummy.intrin, 1
    call void @_WriteBool(i8* %t1152, i32 5, i32 0, i1 %t1153)
    call void @_WriteString(i8* %t1152, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1152)
    ; line 1287
    %t1154 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1154, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.555, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1154, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1154, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.213, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1154)
    ; line 1288
    %t1155 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1155, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1155, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1155, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.179, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1155)
    ; line 1289
    %t1156 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1156, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.557, i32 0, i32 0), i32 11)
    %t1158 = load i32, i32* @sva
    %t1159 = load i32, i32* @svc
    %t1157 = icmp eq i32 %t1158, %t1159
    call void @_WriteBool(i8* %t1156, i32 5, i32 0, i1 %t1157)
    call void @_WriteString(i8* %t1156, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1156)
    ; line 1290
    %t1160 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1160, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i32 11)
    %t1162 = load i32, i32* @svb
    %t1163 = load i32, i32* @svb
    %t1161 = icmp eq i32 %t1162, %t1163
    call void @_WriteBool(i8* %t1160, i32 5, i32 0, i1 %t1161)
    call void @_WriteString(i8* %t1160, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1160)
    ; line 1291
    %t1164 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1164, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.559, i32 0, i32 0), i32 11)
    %t1166 = load i32, i32* @sva
    %t1167 = load i32, i32* @svb
    %t1165 = icmp eq i32 %t1166, %t1167
    call void @_WriteBool(i8* %t1164, i32 5, i32 0, i1 %t1165)
    call void @_WriteString(i8* %t1164, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1164)
    ; line 1292
    %t1168 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1168, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i32 11)
    %t1170 = load i32, i32* @svb
    %t1171 = load i32, i32* @sva
    %t1169 = icmp slt i32 %t1170, %t1171
    call void @_WriteBool(i8* %t1168, i32 5, i32 0, i1 %t1169)
    call void @_WriteString(i8* %t1168, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1168)
    ; line 1293
    %t1172 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1172, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.561, i32 0, i32 0), i32 11)
    %t1174 = load i32, i32* @sva
    %t1175 = load i32, i32* @svb
    %t1173 = icmp slt i32 %t1174, %t1175
    call void @_WriteBool(i8* %t1172, i32 5, i32 0, i1 %t1173)
    call void @_WriteString(i8* %t1172, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1172)
    ; line 1294
    %t1176 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1176, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i32 11)
    %t1178 = load i32, i32* @sva
    %t1179 = load i32, i32* @svb
    %t1177 = icmp sgt i32 %t1178, %t1179
    call void @_WriteBool(i8* %t1176, i32 5, i32 0, i1 %t1177)
    call void @_WriteString(i8* %t1176, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1176)
    ; line 1295
    %t1180 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1180, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.563, i32 0, i32 0), i32 11)
    %t1182 = load i32, i32* @svb
    %t1183 = load i32, i32* @sva
    %t1181 = icmp sgt i32 %t1182, %t1183
    call void @_WriteBool(i8* %t1180, i32 5, i32 0, i1 %t1181)
    call void @_WriteString(i8* %t1180, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1180)
    ; line 1296
    %t1184 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1184, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.564, i32 0, i32 0), i32 11)
    %t1186 = load i32, i32* @sva
    %t1187 = load i32, i32* @svb
    %t1185 = icmp ne i32 %t1186, %t1187
    call void @_WriteBool(i8* %t1184, i32 5, i32 0, i1 %t1185)
    call void @_WriteString(i8* %t1184, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1184)
    ; line 1297
    %t1188 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1188, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.565, i32 0, i32 0), i32 11)
    %t1190 = load i32, i32* @sva
    %t1191 = load i32, i32* @svc
    %t1189 = icmp ne i32 %t1190, %t1191
    call void @_WriteBool(i8* %t1188, i32 5, i32 0, i1 %t1189)
    call void @_WriteString(i8* %t1188, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1188)
    ; line 1298
    %t1192 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1192, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.566, i32 0, i32 0), i32 11)
    %t1194 = load i32, i32* @svb
    %t1195 = load i32, i32* @sva
    %t1193 = icmp sle i32 %t1194, %t1195
    call void @_WriteBool(i8* %t1192, i32 5, i32 0, i1 %t1193)
    call void @_WriteString(i8* %t1192, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1192)
    ; line 1299
    %t1196 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1196, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.567, i32 0, i32 0), i32 11)
    %t1198 = load i32, i32* @sva
    %t1199 = load i32, i32* @svc
    %t1197 = icmp sle i32 %t1198, %t1199
    call void @_WriteBool(i8* %t1196, i32 5, i32 0, i1 %t1197)
    call void @_WriteString(i8* %t1196, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1196)
    ; line 1300
    %t1200 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1200, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.568, i32 0, i32 0), i32 11)
    %t1202 = load i32, i32* @sva
    %t1203 = load i32, i32* @svb
    %t1201 = icmp sle i32 %t1202, %t1203
    call void @_WriteBool(i8* %t1200, i32 5, i32 0, i1 %t1201)
    call void @_WriteString(i8* %t1200, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1200)
    ; line 1301
    %t1204 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1204, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.569, i32 0, i32 0), i32 11)
    %t1206 = load i32, i32* @sva
    %t1207 = load i32, i32* @svb
    %t1205 = icmp sge i32 %t1206, %t1207
    call void @_WriteBool(i8* %t1204, i32 5, i32 0, i1 %t1205)
    call void @_WriteString(i8* %t1204, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1204)
    ; line 1302
    %t1208 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1208, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.570, i32 0, i32 0), i32 11)
    %t1210 = load i32, i32* @svb
    %t1211 = load i32, i32* @svb
    %t1209 = icmp sge i32 %t1210, %t1211
    call void @_WriteBool(i8* %t1208, i32 5, i32 0, i1 %t1209)
    call void @_WriteString(i8* %t1208, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1208)
    ; line 1303
    %t1212 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1212, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.571, i32 0, i32 0), i32 11)
    %t1214 = load i32, i32* @svb
    %t1215 = load i32, i32* @sva
    %t1213 = icmp sge i32 %t1214, %t1215
    call void @_WriteBool(i8* %t1212, i32 5, i32 0, i1 %t1213)
    call void @_WriteString(i8* %t1212, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1212)
    ; line 1304
    %t1216 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1216, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.572, i32 0, i32 0), i32 11)
    ; line 1305
    ; line 1306
    %t1217 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1217, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.573, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1217)
    ; line 1307
    %t1218 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1218, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.574, i32 0, i32 0), i32 11)
    ; line 1308
    ; line 1309
    %t1219 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1219, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.575, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1219)
    ; line 1312
    %t1220 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1220, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.553, i32 0, i32 0), i32 11)
    %t1221 = icmp eq i32 %.dummy.intrin, 1
    call void @_WriteBool(i8* %t1220, i32 5, i32 0, i1 %t1221)
    call void @_WriteString(i8* %t1220, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1220)
    ; line 1313
    %t1222 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1222, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0), i32 11)
    %t1223 = icmp eq i32 %.dummy.intrin, 3
    call void @_WriteBool(i8* %t1222, i32 5, i32 0, i1 %t1223)
    call void @_WriteString(i8* %t1222, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1222)
    ; line 1314
    %t1224 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1224, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.555, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1224, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1224, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.179, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1224)
    ; line 1315
    %t1225 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1225, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1225, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1225, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1225)
    ; line 1316
    %t1226 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1226, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.557, i32 0, i32 0), i32 11)
    %t1227 = icmp eq i32 3, 3
    call void @_WriteBool(i8* %t1226, i32 5, i32 0, i1 %t1227)
    call void @_WriteString(i8* %t1226, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1226)
    ; line 1317
    %t1228 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1228, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i32 11)
    %t1229 = icmp eq i32 4, 4
    call void @_WriteBool(i8* %t1228, i32 5, i32 0, i1 %t1229)
    call void @_WriteString(i8* %t1228, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1228)
    ; line 1318
    %t1230 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1230, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.559, i32 0, i32 0), i32 11)
    %t1231 = icmp eq i32 1, 2
    call void @_WriteBool(i8* %t1230, i32 5, i32 0, i1 %t1231)
    call void @_WriteString(i8* %t1230, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1230)
    ; line 1319
    %t1232 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1232, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i32 11)
    %t1233 = icmp slt i32 0, 2
    call void @_WriteBool(i8* %t1232, i32 5, i32 0, i1 %t1233)
    call void @_WriteString(i8* %t1232, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1232)
    ; line 1320
    %t1234 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1234, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.561, i32 0, i32 0), i32 11)
    %t1235 = icmp slt i32 4, 4
    call void @_WriteBool(i8* %t1234, i32 5, i32 0, i1 %t1235)
    call void @_WriteString(i8* %t1234, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1234)
    ; line 1321
    %t1236 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1236, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i32 11)
    %t1237 = icmp sgt i32 6, 5
    call void @_WriteBool(i8* %t1236, i32 5, i32 0, i1 %t1237)
    call void @_WriteString(i8* %t1236, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1236)
    ; line 1322
    %t1238 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1238, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.563, i32 0, i32 0), i32 11)
    %t1239 = icmp sgt i32 4, 6
    call void @_WriteBool(i8* %t1238, i32 5, i32 0, i1 %t1239)
    call void @_WriteString(i8* %t1238, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1238)
    ; line 1323
    %t1240 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1240, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.564, i32 0, i32 0), i32 11)
    %t1241 = icmp ne i32 3, 1
    call void @_WriteBool(i8* %t1240, i32 5, i32 0, i1 %t1241)
    call void @_WriteString(i8* %t1240, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1240)
    ; line 1324
    %t1242 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1242, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.565, i32 0, i32 0), i32 11)
    %t1243 = icmp ne i32 2, 2
    call void @_WriteBool(i8* %t1242, i32 5, i32 0, i1 %t1243)
    call void @_WriteString(i8* %t1242, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1242)
    ; line 1325
    %t1244 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1244, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.566, i32 0, i32 0), i32 11)
    %t1245 = icmp sle i32 0, 4
    call void @_WriteBool(i8* %t1244, i32 5, i32 0, i1 %t1245)
    call void @_WriteString(i8* %t1244, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1244)
    ; line 1326
    %t1246 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1246, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.567, i32 0, i32 0), i32 11)
    %t1247 = icmp sle i32 4, 4
    call void @_WriteBool(i8* %t1246, i32 5, i32 0, i1 %t1247)
    call void @_WriteString(i8* %t1246, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1246)
    ; line 1327
    %t1248 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1248, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.568, i32 0, i32 0), i32 11)
    %t1249 = icmp sle i32 5, 4
    call void @_WriteBool(i8* %t1248, i32 5, i32 0, i1 %t1249)
    call void @_WriteString(i8* %t1248, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1248)
    ; line 1328
    %t1250 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1250, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.569, i32 0, i32 0), i32 11)
    %t1251 = icmp sge i32 4, 1
    call void @_WriteBool(i8* %t1250, i32 5, i32 0, i1 %t1251)
    call void @_WriteString(i8* %t1250, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1250)
    ; line 1329
    %t1252 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1252, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.570, i32 0, i32 0), i32 11)
    %t1253 = icmp sge i32 1, 1
    call void @_WriteBool(i8* %t1252, i32 5, i32 0, i1 %t1253)
    call void @_WriteString(i8* %t1252, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1252)
    ; line 1330
    %t1254 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1254, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.571, i32 0, i32 0), i32 11)
    %t1255 = icmp sge i32 1, 5
    call void @_WriteBool(i8* %t1254, i32 5, i32 0, i1 %t1255)
    call void @_WriteString(i8* %t1254, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1254)
    ; line 1338
    %t1256 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1256)
    ; line 1339
    %t1257 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1257, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.576, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t1257)
    ; line 1340
    %t1258 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1258)
    ; line 1343
    %t1259 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1259, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.577, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1259, i32 15, i32 0, double 1.55400)
    call void @_WriteString(i8* %t1259, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.578, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1259)
    ; line 1344
    %t1260 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1260, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.579, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1260, i32 15, i32 0, double 0.00334000)
    call void @_WriteString(i8* %t1260, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.580, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1260)
    ; line 1345
    %t1261 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1261, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.581, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1261, i32 15, i32 0, double 3.34000e-24)
    call void @_WriteString(i8* %t1261, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.582, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1261)
    ; line 1346
    %t1262 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1262, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.583, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1262, i32 15, i32 0, double 4.00000e-45)
    call void @_WriteString(i8* %t1262, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.584, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1262)
    ; line 1347
    %t1263 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1263, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.585, i32 0, i32 0), i32 9)
    %t1264 = fneg double 5.56500
    call void @_WriteReal(i8* %t1263, i32 15, i32 0, double %t1264)
    call void @_WriteString(i8* %t1263, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.586, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1263)
    ; line 1348
    %t1265 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1265, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.587, i32 0, i32 0), i32 9)
    %t1266 = fneg double 0.00944000
    call void @_WriteReal(i8* %t1265, i32 15, i32 0, double %t1266)
    call void @_WriteString(i8* %t1265, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.588, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1265)
    ; line 1349
    %t1267 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1267, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.589, i32 0, i32 0), i32 9)
    %t1268 = fneg double 6.36400e+29
    call void @_WriteReal(i8* %t1267, i32 15, i32 0, double %t1268)
    call void @_WriteString(i8* %t1267, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.590, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1267)
    ; line 1350
    %t1269 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1269, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    %t1270 = fneg double 2.00000e-14
    call void @_WriteReal(i8* %t1269, i32 15, i32 0, double %t1270)
    call void @_WriteString(i8* %t1269, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.592, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1269)
    ; line 1351
    %t1271 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1271, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.593, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1271)
    ; line 1352
    %t1272 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1272, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.594, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1272)
    ; line 1353
    %t1273 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1273, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.595, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1273)
    ; line 1354
    ; line 1355
    %t1274 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1274, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.596, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t1274)
    ; line 1356
    %t1275 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1275, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1275)
    ; line 1357
    %t1276 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1276, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1276)
    ; line 1358
    %t1277 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1277, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1277)
    ; line 1359
    %t1278 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1278, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1278)
    ; line 1360
    %t1279 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1279, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1279)
    ; line 1361
    %t1280 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1280, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1280)
    ; line 1362
    %t1281 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1281, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1281)
    ; line 1363
    %t1282 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1282, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1282)
    ; line 1364
    %t1283 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1283, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.597, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1283)
    ; line 1365
    %t1284 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1284, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.598, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1284)
    ; line 1366
    %t1285 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1285, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.599, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1285)
    ; line 1367
    %t1286 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1286, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.600, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t1286)
    ; line 1368
    %t1287 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1287, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.601, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t1287)
    ; line 1369
    %t1288 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1288, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.602, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1288)
    ; line 1370
    %t1289 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1289, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.603, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1289)
    ; line 1371
    %t1290 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1290, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.604, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t1290)
    ; line 1372
    %t1291 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1291, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.605, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1291)
    ; line 1373
    %t1292 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1292, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.606, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1292)
    ; line 1374
    %t1293 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1293, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.607, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t1293)
    ; line 1375
    %t1294 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1294, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.608, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1294)
    ; line 1376
    %t1295 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1295, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.609, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1295)
    ; line 1377
    %t1296 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1296, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.594, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1296)
    ; line 1378
    %t1297 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1297, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.595, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1297)
    ; line 1379
    ; line 1380
    %t1298 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1298, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.596, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t1298)
    ; line 1381
    %t1299 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1299, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.610, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1299)
    ; line 1382
    %t1300 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1300, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.611, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1300)
    ; line 1383
    %t1301 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1301, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.612, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1301)
    ; line 1384
    %t1302 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1302, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.613, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1302)
    ; line 1385
    %t1303 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1303, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.614, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1303)
    ; line 1386
    %t1304 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1304, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.615, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1304)
    ; line 1387
    %t1305 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1305, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.616, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1305)
    ; line 1388
    %t1306 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1306, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.617, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1306)
    ; line 1389
    %t1307 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1307, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.618, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1307)
    ; line 1390
    %t1308 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1308, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.619, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t1308)
    ; line 1391
    %t1309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1309, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.620, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1309)
    ; line 1392
    %t1310 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1310, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.621, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1310)
    ; line 1393
    %t1311 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1311, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.622, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t1311)
    ; line 1394
    %t1312 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1312, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.623, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1312)
    ; line 1395
    %t1313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1313, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.624, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1313)
    ; line 1396
    %t1314 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1314, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.625, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t1314)
    ; line 1397
    %t1315 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1315, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.626, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1315)
    ; line 1398
    %t1316 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1316, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.627, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t1316)
    ; line 1399
    %t1317 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1317, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.628, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t1317)
    ; line 1400
    %t1318 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1318, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.629, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t1318)
    ; line 1403
    store double 435.230, double* @ra
    ; line 1404
    store double 983.670, double* @rb
    ; line 1405
    %t1319 = load double, double* @rb
    store double %t1319, double* @rc
    ; line 1406
    store double 0.344300, double* @rd
    ; line 1407
    %t1320 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1320, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.630, i32 0, i32 0), i32 9)
    %t1322 = load double, double* @ra
    %t1323 = load double, double* @rb
    %t1321 = fadd double %t1322, %t1323
    call void @_WriteReal(i8* %t1320, i32 15, i32 0, double %t1321)
    call void @_WriteString(i8* %t1320, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.631, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1320)
    ; line 1408
    %t1324 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1324, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.632, i32 0, i32 0), i32 9)
    %t1326 = load double, double* @rb
    %t1327 = load double, double* @ra
    %t1325 = fsub double %t1326, %t1327
    call void @_WriteReal(i8* %t1324, i32 15, i32 0, double %t1325)
    call void @_WriteString(i8* %t1324, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.633, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1324)
    ; line 1409
    %t1328 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1328, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.634, i32 0, i32 0), i32 9)
    %t1330 = load double, double* @ra
    %t1331 = load double, double* @rb
    %t1329 = fmul double %t1330, %t1331
    call void @_WriteReal(i8* %t1328, i32 15, i32 0, double %t1329)
    call void @_WriteString(i8* %t1328, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.635, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1328)
    ; line 1410
    %t1332 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1332, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.636, i32 0, i32 0), i32 9)
    %t1334 = load double, double* @rb
    %t1335 = load double, double* @ra
    %t1333 = fdiv double %t1334, %t1335
    call void @_WriteReal(i8* %t1332, i32 15, i32 0, double %t1333)
    call void @_WriteString(i8* %t1332, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.637, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1332)
    ; line 1411
    %t1336 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1336, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.638, i32 0, i32 0), i32 9)
    %t1338 = load double, double* @rc
    %t1339 = load double, double* @rb
    %t1337 = fcmp ueq double %t1338, %t1339
    call void @_WriteBool(i8* %t1336, i32 5, i32 0, i1 %t1337)
    call void @_WriteString(i8* %t1336, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1336)
    ; line 1412
    %t1340 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1340, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.639, i32 0, i32 0), i32 9)
    %t1342 = load double, double* @ra
    %t1343 = load double, double* @rb
    %t1341 = fcmp ueq double %t1342, %t1343
    call void @_WriteBool(i8* %t1340, i32 5, i32 0, i1 %t1341)
    call void @_WriteString(i8* %t1340, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1340)
    ; line 1413
    %t1344 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1344, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.640, i32 0, i32 0), i32 9)
    %t1346 = load double, double* @ra
    %t1347 = load double, double* @rb
    %t1345 = fcmp ult double %t1346, %t1347
    call void @_WriteBool(i8* %t1344, i32 5, i32 0, i1 %t1345)
    call void @_WriteString(i8* %t1344, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1344)
    ; line 1414
    %t1348 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1348, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.641, i32 0, i32 0), i32 9)
    %t1350 = load double, double* @rb
    %t1351 = load double, double* @ra
    %t1349 = fcmp ult double %t1350, %t1351
    call void @_WriteBool(i8* %t1348, i32 5, i32 0, i1 %t1349)
    call void @_WriteString(i8* %t1348, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1348)
    ; line 1415
    %t1352 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1352, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.642, i32 0, i32 0), i32 9)
    %t1354 = load double, double* @rb
    %t1355 = load double, double* @ra
    %t1353 = fcmp ugt double %t1354, %t1355
    call void @_WriteBool(i8* %t1352, i32 5, i32 0, i1 %t1353)
    call void @_WriteString(i8* %t1352, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1352)
    ; line 1416
    %t1356 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1356, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.643, i32 0, i32 0), i32 9)
    %t1358 = load double, double* @ra
    %t1359 = load double, double* @rb
    %t1357 = fcmp ugt double %t1358, %t1359
    call void @_WriteBool(i8* %t1356, i32 5, i32 0, i1 %t1357)
    call void @_WriteString(i8* %t1356, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1356)
    ; line 1417
    %t1360 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1360, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.644, i32 0, i32 0), i32 9)
    %t1362 = load double, double* @ra
    %t1363 = load double, double* @rb
    %t1361 = fcmp une double %t1362, %t1363
    call void @_WriteBool(i8* %t1360, i32 5, i32 0, i1 %t1361)
    call void @_WriteString(i8* %t1360, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1360)
    ; line 1418
    %t1364 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1364, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.645, i32 0, i32 0), i32 9)
    %t1366 = load double, double* @rb
    %t1367 = load double, double* @rc
    %t1365 = fcmp une double %t1366, %t1367
    call void @_WriteBool(i8* %t1364, i32 5, i32 0, i1 %t1365)
    call void @_WriteString(i8* %t1364, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1364)
    ; line 1419
    %t1368 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1368, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.646, i32 0, i32 0), i32 9)
    %t1370 = load double, double* @ra
    %t1371 = load double, double* @rb
    %t1369 = fcmp ule double %t1370, %t1371
    call void @_WriteBool(i8* %t1368, i32 5, i32 0, i1 %t1369)
    call void @_WriteString(i8* %t1368, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1368)
    ; line 1420
    %t1372 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1372, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.647, i32 0, i32 0), i32 9)
    %t1374 = load double, double* @rc
    %t1375 = load double, double* @rb
    %t1373 = fcmp ule double %t1374, %t1375
    call void @_WriteBool(i8* %t1372, i32 5, i32 0, i1 %t1373)
    call void @_WriteString(i8* %t1372, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1372)
    ; line 1421
    %t1376 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1376, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.648, i32 0, i32 0), i32 9)
    %t1378 = load double, double* @rb
    %t1379 = load double, double* @ra
    %t1377 = fcmp ule double %t1378, %t1379
    call void @_WriteBool(i8* %t1376, i32 5, i32 0, i1 %t1377)
    call void @_WriteString(i8* %t1376, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1376)
    ; line 1422
    %t1380 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1380, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.649, i32 0, i32 0), i32 9)
    %t1382 = load double, double* @rb
    %t1383 = load double, double* @ra
    %t1381 = fcmp uge double %t1382, %t1383
    call void @_WriteBool(i8* %t1380, i32 5, i32 0, i1 %t1381)
    call void @_WriteString(i8* %t1380, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1380)
    ; line 1423
    %t1384 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1384, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.650, i32 0, i32 0), i32 9)
    %t1386 = load double, double* @rb
    %t1387 = load double, double* @rc
    %t1385 = fcmp uge double %t1386, %t1387
    call void @_WriteBool(i8* %t1384, i32 5, i32 0, i1 %t1385)
    call void @_WriteString(i8* %t1384, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1384)
    ; line 1424
    %t1388 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1388, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.651, i32 0, i32 0), i32 9)
    %t1390 = load double, double* @ra
    %t1391 = load double, double* @rb
    %t1389 = fcmp uge double %t1390, %t1391
    call void @_WriteBool(i8* %t1388, i32 5, i32 0, i1 %t1389)
    call void @_WriteString(i8* %t1388, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1388)
    ; line 1425
    %t1392 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1392, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.652, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1392, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1392, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.653, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1392)
    ; line 1426
    %t1393 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1393, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.654, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1393, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1393, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.655, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1393)
    ; line 1427
    %t1394 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1394, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.656, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1394, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1394, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.657, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1394)
    ; line 1428
    %t1395 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1395, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.658, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1395, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1395, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.659, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1395)
    ; line 1429
    %t1396 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1396, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.660, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1396, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1396, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.661, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1396)
    ; line 1430
    %t1397 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1397, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.662, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1397, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1397, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.663, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1397)
    ; line 1431
    %t1398 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1398, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.664, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1398, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1398, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.665, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1398)
    ; line 1432
    %t1399 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1399, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.666, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1399, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1399, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.667, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1399)
    ; line 1433
    %t1400 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1400, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.668, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1400, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1400, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.669, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1400)
    ; line 1434
    %t1401 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1401, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.670, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1401, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1401, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.667, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1401)
    ; line 1437
    %t1402 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1402, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.671, i32 0, i32 0), i32 9)
    %t1403 = fadd double 344.939, 933.113
    call void @_WriteReal(i8* %t1402, i32 15, i32 0, double %t1403)
    call void @_WriteString(i8* %t1402, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.672, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1402)
    ; line 1438
    %t1404 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1404, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.673, i32 0, i32 0), i32 9)
    %t1405 = fsub double 883.885, 644.939
    call void @_WriteReal(i8* %t1404, i32 15, i32 0, double %t1405)
    call void @_WriteString(i8* %t1404, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.674, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1404)
    ; line 1439
    %t1406 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1406, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.675, i32 0, i32 0), i32 9)
    %t1407 = fmul double 754.740, 138.750
    call void @_WriteReal(i8* %t1406, i32 15, i32 0, double %t1407)
    call void @_WriteString(i8* %t1406, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.676, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1406)
    ; line 1440
    %t1408 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1408, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.677, i32 0, i32 0), i32 9)
    %t1409 = fdiv double 634.300, 87374.0
    call void @_WriteReal(i8* %t1408, i32 15, i32 0, double %t1409)
    call void @_WriteString(i8* %t1408, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.678, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1408)
    ; line 1441
    %t1410 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1410, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.679, i32 0, i32 0), i32 9)
    %t1411 = fcmp ueq double 77.4400, 77.4400
    call void @_WriteBool(i8* %t1410, i32 5, i32 0, i1 %t1411)
    call void @_WriteString(i8* %t1410, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1410)
    ; line 1442
    %t1412 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1412, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.680, i32 0, i32 0), i32 9)
    %t1413 = fcmp ueq double 733.900, 959.200
    call void @_WriteBool(i8* %t1412, i32 5, i32 0, i1 %t1413)
    call void @_WriteString(i8* %t1412, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1412)
    ; line 1443
    %t1414 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1414, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.681, i32 0, i32 0), i32 9)
    %t1415 = fcmp ult double 883.220, 8383.33
    call void @_WriteBool(i8* %t1414, i32 5, i32 0, i1 %t1415)
    call void @_WriteString(i8* %t1414, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1414)
    ; line 1444
    %t1416 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1416, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.682, i32 0, i32 0), i32 9)
    %t1417 = fcmp ult double 475.322, 234.930
    call void @_WriteBool(i8* %t1416, i32 5, i32 0, i1 %t1417)
    call void @_WriteString(i8* %t1416, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1416)
    ; line 1445
    %t1418 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1418, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.683, i32 0, i32 0), i32 9)
    %t1419 = fcmp ugt double 7374.30, 6442.34
    call void @_WriteBool(i8* %t1418, i32 5, i32 0, i1 %t1419)
    call void @_WriteString(i8* %t1418, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1418)
    ; line 1446
    %t1420 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1420, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.684, i32 0, i32 0), i32 9)
    %t1421 = fcmp ugt double 985.562, 1001.95
    call void @_WriteBool(i8* %t1420, i32 5, i32 0, i1 %t1421)
    call void @_WriteString(i8* %t1420, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1420)
    ; line 1447
    %t1422 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1422, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.685, i32 0, i32 0), i32 9)
    %t1423 = fcmp une double 30.1100, 938.440
    call void @_WriteBool(i8* %t1422, i32 5, i32 0, i1 %t1423)
    call void @_WriteString(i8* %t1422, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1422)
    ; line 1448
    %t1424 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1424, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.686, i32 0, i32 0), i32 9)
    %t1425 = fcmp une double 1.23300, 1.23300
    call void @_WriteBool(i8* %t1424, i32 5, i32 0, i1 %t1425)
    call void @_WriteString(i8* %t1424, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1424)
    ; line 1449
    %t1426 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1426, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.687, i32 0, i32 0), i32 9)
    %t1427 = fcmp ule double 8484.00, 9344.00
    call void @_WriteBool(i8* %t1426, i32 5, i32 0, i1 %t1427)
    call void @_WriteString(i8* %t1426, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1426)
    ; line 1450
    %t1428 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1428, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.688, i32 0, i32 0), i32 9)
    %t1429 = fcmp ule double 9.11000, 9.11000
    call void @_WriteBool(i8* %t1428, i32 5, i32 0, i1 %t1429)
    call void @_WriteString(i8* %t1428, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1428)
    ; line 1451
    %t1430 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1430, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.689, i32 0, i32 0), i32 9)
    %t1431 = fcmp ule double 93.3230, 90.3230
    call void @_WriteBool(i8* %t1430, i32 5, i32 0, i1 %t1431)
    call void @_WriteString(i8* %t1430, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1430)
    ; line 1452
    %t1432 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1432, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.690, i32 0, i32 0), i32 9)
    %t1433 = fcmp uge double 6543.44, 5883.33
    call void @_WriteBool(i8* %t1432, i32 5, i32 0, i1 %t1433)
    call void @_WriteString(i8* %t1432, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1432)
    ; line 1453
    %t1434 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1434, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.691, i32 0, i32 0), i32 9)
    %t1435 = fcmp uge double 3247.03, 3247.03
    call void @_WriteBool(i8* %t1434, i32 5, i32 0, i1 %t1435)
    call void @_WriteString(i8* %t1434, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1434)
    ; line 1454
    %t1436 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1436, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.692, i32 0, i32 0), i32 9)
    %t1437 = fcmp uge double 28343.2, 30044.5
    call void @_WriteBool(i8* %t1436, i32 5, i32 0, i1 %t1437)
    call void @_WriteString(i8* %t1436, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1436)
    ; line 1455
    %t1438 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1438, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.693, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1438, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1438, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.694, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1438)
    ; line 1456
    %t1439 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1439, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.695, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1439, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1439, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.696, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1439)
    ; line 1457
    %t1440 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1440, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.697, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1440, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1440, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.698, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1440)
    ; line 1458
    %t1441 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1441, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.699, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1441, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1441, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.700, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1441)
    ; line 1459
    %t1442 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1442, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.701, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1442, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1442, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.702, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1442)
    ; line 1460
    %t1443 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1443, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.703, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1443, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1443, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.704, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1443)
    ; line 1461
    %t1444 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1444, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.705, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1444, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1444, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.706, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1444)
    ; line 1462
    %t1445 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1445, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.707, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1445, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1445, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.708, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1445)
    ; line 1463
    %t1446 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1446, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.709, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1446, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1446, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.710, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1446)
    ; line 1464
    %t1447 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1447, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.711, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1447, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1447, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.712, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1447)
    ; line 1465
    %t1448 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1448, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.713, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1448, i32 15, i32 0, double 43.3300)
    call void @_WriteString(i8* %t1448, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.714, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1448)
    ; line 1468
    %t1449 = fneg double 734.200
    store double %t1449, double* @ra
    ; line 1469
    %t1450 = fneg double 7634.52
    store double %t1450, double* @rb
    ; line 1470
    %t1451 = load double, double* @ra
    store double %t1451, double* @rc
    ; line 1471
    store double 1034.54, double* @rd
    ; line 1472
    %t1452 = fneg double 0.384830
    store double %t1452, double* @re
    ; line 1473
    %t1453 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1453, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.715, i32 0, i32 0), i32 9)
    %t1455 = load double, double* @ra
    %t1456 = load double, double* @rd
    %t1454 = fadd double %t1455, %t1456
    call void @_WriteReal(i8* %t1453, i32 15, i32 0, double %t1454)
    call void @_WriteString(i8* %t1453, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.716, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1453)
    ; line 1474
    %t1457 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1457, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.717, i32 0, i32 0), i32 9)
    %t1459 = load double, double* @rd
    %t1460 = load double, double* @ra
    %t1458 = fadd double %t1459, %t1460
    call void @_WriteReal(i8* %t1457, i32 15, i32 0, double %t1458)
    call void @_WriteString(i8* %t1457, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.716, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1457)
    ; line 1475
    %t1461 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1461, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.718, i32 0, i32 0), i32 9)
    %t1463 = load double, double* @rb
    %t1464 = load double, double* @rd
    %t1462 = fadd double %t1463, %t1464
    call void @_WriteReal(i8* %t1461, i32 15, i32 0, double %t1462)
    call void @_WriteString(i8* %t1461, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.719, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1461)
    ; line 1476
    %t1465 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1465, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.720, i32 0, i32 0), i32 9)
    %t1467 = load double, double* @ra
    %t1468 = load double, double* @rb
    %t1466 = fadd double %t1467, %t1468
    call void @_WriteReal(i8* %t1465, i32 15, i32 0, double %t1466)
    call void @_WriteString(i8* %t1465, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.721, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1465)
    ; line 1477
    %t1469 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1469, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.722, i32 0, i32 0), i32 9)
    %t1471 = load double, double* @rd
    %t1472 = load double, double* @ra
    %t1470 = fsub double %t1471, %t1472
    call void @_WriteReal(i8* %t1469, i32 15, i32 0, double %t1470)
    call void @_WriteString(i8* %t1469, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.723, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1469)
    ; line 1478
    %t1473 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1473, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.724, i32 0, i32 0), i32 9)
    %t1475 = load double, double* @rb
    %t1476 = load double, double* @rd
    %t1474 = fsub double %t1475, %t1476
    call void @_WriteReal(i8* %t1473, i32 15, i32 0, double %t1474)
    call void @_WriteString(i8* %t1473, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.725, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1473)
    ; line 1479
    %t1477 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1477, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.726, i32 0, i32 0), i32 9)
    %t1479 = load double, double* @rb
    %t1480 = load double, double* @ra
    %t1478 = fsub double %t1479, %t1480
    call void @_WriteReal(i8* %t1477, i32 15, i32 0, double %t1478)
    call void @_WriteString(i8* %t1477, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.727, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1477)
    ; line 1480
    %t1481 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1481, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.728, i32 0, i32 0), i32 9)
    %t1483 = load double, double* @rd
    %t1484 = load double, double* @ra
    %t1482 = fmul double %t1483, %t1484
    call void @_WriteReal(i8* %t1481, i32 15, i32 0, double %t1482)
    call void @_WriteString(i8* %t1481, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.729, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1481)
    ; line 1481
    %t1485 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1485, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.730, i32 0, i32 0), i32 9)
    %t1487 = load double, double* @ra
    %t1488 = load double, double* @rd
    %t1486 = fmul double %t1487, %t1488
    call void @_WriteReal(i8* %t1485, i32 15, i32 0, double %t1486)
    call void @_WriteString(i8* %t1485, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.729, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1485)
    ; line 1482
    %t1489 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1489, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.731, i32 0, i32 0), i32 9)
    %t1491 = load double, double* @ra
    %t1492 = load double, double* @rb
    %t1490 = fmul double %t1491, %t1492
    call void @_WriteReal(i8* %t1489, i32 15, i32 0, double %t1490)
    call void @_WriteString(i8* %t1489, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.732, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1489)
    ; line 1483
    %t1493 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1493, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.733, i32 0, i32 0), i32 9)
    %t1495 = load double, double* @rd
    %t1496 = load double, double* @ra
    %t1494 = fdiv double %t1495, %t1496
    call void @_WriteReal(i8* %t1493, i32 15, i32 0, double %t1494)
    call void @_WriteString(i8* %t1493, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.734, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1493)
    ; line 1484
    %t1497 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1497, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.735, i32 0, i32 0), i32 9)
    %t1499 = load double, double* @rb
    %t1500 = load double, double* @rd
    %t1498 = fdiv double %t1499, %t1500
    call void @_WriteReal(i8* %t1497, i32 15, i32 0, double %t1498)
    call void @_WriteString(i8* %t1497, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.736, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1497)
    ; line 1485
    %t1501 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1501, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.737, i32 0, i32 0), i32 9)
    %t1503 = load double, double* @rb
    %t1504 = load double, double* @ra
    %t1502 = fdiv double %t1503, %t1504
    call void @_WriteReal(i8* %t1501, i32 15, i32 0, double %t1502)
    call void @_WriteString(i8* %t1501, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.738, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1501)
    ; line 1486
    %t1505 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1505, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.739, i32 0, i32 0), i32 9)
    %t1507 = load double, double* @ra
    %t1508 = load double, double* @rc
    %t1506 = fcmp ueq double %t1507, %t1508
    call void @_WriteBool(i8* %t1505, i32 5, i32 0, i1 %t1506)
    call void @_WriteString(i8* %t1505, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1505)
    ; line 1487
    %t1509 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1509, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.740, i32 0, i32 0), i32 9)
    %t1511 = load double, double* @ra
    %t1512 = load double, double* @rb
    %t1510 = fcmp ueq double %t1511, %t1512
    call void @_WriteBool(i8* %t1509, i32 5, i32 0, i1 %t1510)
    call void @_WriteString(i8* %t1509, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1509)
    ; line 1488
    %t1513 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1513, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.741, i32 0, i32 0), i32 9)
    %t1515 = load double, double* @ra
    %t1516 = load double, double* @rb
    %t1514 = fcmp une double %t1515, %t1516
    call void @_WriteBool(i8* %t1513, i32 5, i32 0, i1 %t1514)
    call void @_WriteString(i8* %t1513, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1513)
    ; line 1489
    %t1517 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1517, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.742, i32 0, i32 0), i32 9)
    %t1519 = load double, double* @ra
    %t1520 = load double, double* @rc
    %t1518 = fcmp une double %t1519, %t1520
    call void @_WriteBool(i8* %t1517, i32 5, i32 0, i1 %t1518)
    call void @_WriteString(i8* %t1517, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1517)
    ; line 1490
    %t1521 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1521, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.743, i32 0, i32 0), i32 9)
    %t1523 = load double, double* @ra
    %t1524 = load double, double* @rd
    %t1522 = fcmp ult double %t1523, %t1524
    call void @_WriteBool(i8* %t1521, i32 5, i32 0, i1 %t1522)
    call void @_WriteString(i8* %t1521, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1521)
    ; line 1491
    %t1525 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1525, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.744, i32 0, i32 0), i32 9)
    %t1527 = load double, double* @rb
    %t1528 = load double, double* @ra
    %t1526 = fcmp ult double %t1527, %t1528
    call void @_WriteBool(i8* %t1525, i32 5, i32 0, i1 %t1526)
    call void @_WriteString(i8* %t1525, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1525)
    ; line 1492
    %t1529 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1529, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.745, i32 0, i32 0), i32 9)
    %t1531 = load double, double* @rd
    %t1532 = load double, double* @ra
    %t1530 = fcmp ult double %t1531, %t1532
    call void @_WriteBool(i8* %t1529, i32 5, i32 0, i1 %t1530)
    call void @_WriteString(i8* %t1529, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1529)
    ; line 1493
    %t1533 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1533, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.746, i32 0, i32 0), i32 9)
    %t1535 = load double, double* @ra
    %t1536 = load double, double* @rb
    %t1534 = fcmp ult double %t1535, %t1536
    call void @_WriteBool(i8* %t1533, i32 5, i32 0, i1 %t1534)
    call void @_WriteString(i8* %t1533, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1533)
    ; line 1494
    %t1537 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1537, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.747, i32 0, i32 0), i32 9)
    %t1539 = load double, double* @rd
    %t1540 = load double, double* @ra
    %t1538 = fcmp ugt double %t1539, %t1540
    call void @_WriteBool(i8* %t1537, i32 5, i32 0, i1 %t1538)
    call void @_WriteString(i8* %t1537, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1537)
    ; line 1495
    %t1541 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1541, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.748, i32 0, i32 0), i32 9)
    %t1543 = load double, double* @ra
    %t1544 = load double, double* @rb
    %t1542 = fcmp ugt double %t1543, %t1544
    call void @_WriteBool(i8* %t1541, i32 5, i32 0, i1 %t1542)
    call void @_WriteString(i8* %t1541, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1541)
    ; line 1496
    %t1545 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1545, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.749, i32 0, i32 0), i32 9)
    %t1547 = load double, double* @ra
    %t1548 = load double, double* @rd
    %t1546 = fcmp ugt double %t1547, %t1548
    call void @_WriteBool(i8* %t1545, i32 5, i32 0, i1 %t1546)
    call void @_WriteString(i8* %t1545, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1545)
    ; line 1497
    %t1549 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1549, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.750, i32 0, i32 0), i32 9)
    %t1551 = load double, double* @rb
    %t1552 = load double, double* @ra
    %t1550 = fcmp ugt double %t1551, %t1552
    call void @_WriteBool(i8* %t1549, i32 5, i32 0, i1 %t1550)
    call void @_WriteString(i8* %t1549, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1549)
    ; line 1498
    %t1553 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1553, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.751, i32 0, i32 0), i32 9)
    %t1555 = load double, double* @ra
    %t1556 = load double, double* @rd
    %t1554 = fcmp ule double %t1555, %t1556
    call void @_WriteBool(i8* %t1553, i32 5, i32 0, i1 %t1554)
    call void @_WriteString(i8* %t1553, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1553)
    ; line 1499
    %t1557 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1557, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.752, i32 0, i32 0), i32 9)
    %t1559 = load double, double* @rb
    %t1560 = load double, double* @ra
    %t1558 = fcmp ule double %t1559, %t1560
    call void @_WriteBool(i8* %t1557, i32 5, i32 0, i1 %t1558)
    call void @_WriteString(i8* %t1557, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1557)
    ; line 1500
    %t1561 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1561, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.753, i32 0, i32 0), i32 9)
    %t1563 = load double, double* @ra
    %t1564 = load double, double* @rc
    %t1562 = fcmp ule double %t1563, %t1564
    call void @_WriteBool(i8* %t1561, i32 5, i32 0, i1 %t1562)
    call void @_WriteString(i8* %t1561, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1561)
    ; line 1501
    %t1565 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1565, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.754, i32 0, i32 0), i32 9)
    %t1567 = load double, double* @rd
    %t1568 = load double, double* @ra
    %t1566 = fcmp ule double %t1567, %t1568
    call void @_WriteBool(i8* %t1565, i32 5, i32 0, i1 %t1566)
    call void @_WriteString(i8* %t1565, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1565)
    ; line 1502
    %t1569 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1569, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.755, i32 0, i32 0), i32 9)
    %t1571 = load double, double* @ra
    %t1572 = load double, double* @rb
    %t1570 = fcmp ule double %t1571, %t1572
    call void @_WriteBool(i8* %t1569, i32 5, i32 0, i1 %t1570)
    call void @_WriteString(i8* %t1569, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1569)
    ; line 1503
    %t1573 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1573, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.756, i32 0, i32 0), i32 9)
    %t1575 = load double, double* @rd
    %t1576 = load double, double* @ra
    %t1574 = fcmp uge double %t1575, %t1576
    call void @_WriteBool(i8* %t1573, i32 5, i32 0, i1 %t1574)
    call void @_WriteString(i8* %t1573, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1573)
    ; line 1504
    %t1577 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1577, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.757, i32 0, i32 0), i32 9)
    %t1579 = load double, double* @ra
    %t1580 = load double, double* @rb
    %t1578 = fcmp uge double %t1579, %t1580
    call void @_WriteBool(i8* %t1577, i32 5, i32 0, i1 %t1578)
    call void @_WriteString(i8* %t1577, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1577)
    ; line 1505
    %t1581 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1581, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.758, i32 0, i32 0), i32 9)
    %t1583 = load double, double* @ra
    %t1584 = load double, double* @rc
    %t1582 = fcmp uge double %t1583, %t1584
    call void @_WriteBool(i8* %t1581, i32 5, i32 0, i1 %t1582)
    call void @_WriteString(i8* %t1581, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1581)
    ; line 1506
    %t1585 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1585, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.759, i32 0, i32 0), i32 9)
    %t1587 = load double, double* @ra
    %t1588 = load double, double* @rd
    %t1586 = fcmp uge double %t1587, %t1588
    call void @_WriteBool(i8* %t1585, i32 5, i32 0, i1 %t1586)
    call void @_WriteString(i8* %t1585, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1585)
    ; line 1507
    %t1589 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1589, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.760, i32 0, i32 0), i32 9)
    %t1591 = load double, double* @rb
    %t1592 = load double, double* @ra
    %t1590 = fcmp uge double %t1591, %t1592
    call void @_WriteBool(i8* %t1589, i32 5, i32 0, i1 %t1590)
    call void @_WriteString(i8* %t1589, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1589)
    ; line 1508
    %t1593 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1593, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.761, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1593, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1593, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.762, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1593)
    ; line 1509
    %t1594 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1594, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.763, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1594, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1594, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.764, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1594)
    ; line 1510
    %t1595 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1595, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.765, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1595, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1595, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.766, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1595)
    ; line 1511
    %t1596 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1596, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.767, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1596, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1596, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.768, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1596)
    ; line 1512
    %t1597 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1597, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.769, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1597, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1597, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.770, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1597)
    ; line 1513
    %t1598 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1598, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.771, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1598, i32 15, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1598, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.772, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1598)
    ; line 1514
    %t1599 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1599, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.773, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1599, i32 15, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1599, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.774, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1599)
    ; line 1515
    %t1600 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1600, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.775, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1600, i32 15, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1600, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.772, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1600)
    ; line 1518
    %t1601 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1601, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.776, i32 0, i32 0), i32 9)
    %t1603 = fneg double 30.8340
    %t1602 = fadd double 45.9340, %t1603
    call void @_WriteReal(i8* %t1601, i32 15, i32 0, double %t1602)
    call void @_WriteString(i8* %t1601, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.777, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1601)
    ; line 1519
    %t1604 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1604, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.778, i32 0, i32 0), i32 9)
    %t1606 = fneg double 25.7370
    %t1605 = fadd double %t1606, 70.8700
    call void @_WriteReal(i8* %t1604, i32 15, i32 0, double %t1605)
    call void @_WriteString(i8* %t1604, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.779, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1604)
    ; line 1520
    %t1607 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1607, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.780, i32 0, i32 0), i32 9)
    %t1609 = fneg double 62.6300
    %t1608 = fadd double %t1609, 23.9900
    call void @_WriteReal(i8* %t1607, i32 15, i32 0, double %t1608)
    call void @_WriteString(i8* %t1607, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.781, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1607)
    ; line 1521
    %t1610 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1610, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.782, i32 0, i32 0), i32 9)
    %t1612 = fneg double 20.7330
    %t1613 = fneg double 15.8480
    %t1611 = fadd double %t1612, %t1613
    call void @_WriteReal(i8* %t1610, i32 15, i32 0, double %t1611)
    call void @_WriteString(i8* %t1610, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.783, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1610)
    ; line 1522
    %t1614 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1614, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.784, i32 0, i32 0), i32 9)
    %t1616 = fneg double 14.7740
    %t1615 = fsub double 20.7740, %t1616
    call void @_WriteReal(i8* %t1614, i32 15, i32 0, double %t1615)
    call void @_WriteString(i8* %t1614, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.785, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1614)
    ; line 1523
    %t1617 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1617, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.786, i32 0, i32 0), i32 9)
    %t1619 = fneg double 34.5230
    %t1618 = fsub double %t1619, 14.8754
    call void @_WriteReal(i8* %t1617, i32 15, i32 0, double %t1618)
    call void @_WriteString(i8* %t1617, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.787, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1617)
    ; line 1524
    %t1620 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1620, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.788, i32 0, i32 0), i32 9)
    %t1622 = fneg double 56.6640
    %t1623 = fneg double 12.6630
    %t1621 = fsub double %t1622, %t1623
    call void @_WriteReal(i8* %t1620, i32 15, i32 0, double %t1621)
    call void @_WriteString(i8* %t1620, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.789, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1620)
    ; line 1525
    %t1624 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1624, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.790, i32 0, i32 0), i32 9)
    %t1626 = fneg double 4.66400
    %t1625 = fmul double 5.66300, %t1626
    call void @_WriteReal(i8* %t1624, i32 15, i32 0, double %t1625)
    call void @_WriteString(i8* %t1624, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.791, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1624)
    ; line 1526
    %t1627 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1627, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.792, i32 0, i32 0), i32 9)
    %t1629 = fneg double 18.6200
    %t1628 = fmul double %t1629, 7.99700
    call void @_WriteReal(i8* %t1627, i32 15, i32 0, double %t1628)
    call void @_WriteString(i8* %t1627, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.793, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1627)
    ; line 1527
    %t1630 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1630, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.794, i32 0, i32 0), i32 9)
    %t1632 = fneg double 40.5520
    %t1633 = fneg double 13.7740
    %t1631 = fmul double %t1632, %t1633
    call void @_WriteReal(i8* %t1630, i32 15, i32 0, double %t1631)
    call void @_WriteString(i8* %t1630, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.795, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1630)
    ; line 1528
    %t1634 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1634, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.796, i32 0, i32 0), i32 9)
    %t1636 = fneg double 5.87400
    %t1635 = fdiv double 30.6632, %t1636
    call void @_WriteReal(i8* %t1634, i32 15, i32 0, double %t1635)
    call void @_WriteString(i8* %t1634, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.797, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1634)
    ; line 1529
    %t1637 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1637, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.798, i32 0, i32 0), i32 9)
    %t1639 = fneg double 50.6360
    %t1638 = fdiv double %t1639, 2.85730
    call void @_WriteReal(i8* %t1637, i32 15, i32 0, double %t1638)
    call void @_WriteString(i8* %t1637, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.799, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1637)
    ; line 1530
    %t1640 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1640, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.800, i32 0, i32 0), i32 9)
    %t1642 = fneg double 20.7631
    %t1643 = fneg double 4.85734
    %t1641 = fdiv double %t1642, %t1643
    call void @_WriteReal(i8* %t1640, i32 15, i32 0, double %t1641)
    call void @_WriteString(i8* %t1640, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.801, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1640)
    ; line 1531
    %t1644 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1644, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.802, i32 0, i32 0), i32 9)
    %t1646 = fneg double 5.77500
    %t1647 = fneg double 5.77500
    %t1645 = fcmp ueq double %t1646, %t1647
    call void @_WriteBool(i8* %t1644, i32 5, i32 0, i1 %t1645)
    call void @_WriteString(i8* %t1644, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1644)
    ; line 1532
    %t1648 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1648, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.803, i32 0, i32 0), i32 9)
    %t1650 = fneg double 5.63640
    %t1649 = fcmp ueq double %t1650, 5.85750
    call void @_WriteBool(i8* %t1648, i32 5, i32 0, i1 %t1649)
    call void @_WriteString(i8* %t1648, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1648)
    ; line 1533
    %t1651 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1651, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.804, i32 0, i32 0), i32 9)
    %t1653 = fneg double 21.6385
    %t1654 = fneg double 40.7640
    %t1652 = fcmp une double %t1653, %t1654
    call void @_WriteBool(i8* %t1651, i32 5, i32 0, i1 %t1652)
    call void @_WriteString(i8* %t1651, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1651)
    ; line 1534
    %t1655 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1655, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.805, i32 0, i32 0), i32 9)
    %t1657 = fneg double 21.7720
    %t1658 = fneg double 21.7720
    %t1656 = fcmp une double %t1657, %t1658
    call void @_WriteBool(i8* %t1655, i32 5, i32 0, i1 %t1656)
    call void @_WriteString(i8* %t1655, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1655)
    ; line 1535
    %t1659 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1659, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.806, i32 0, i32 0), i32 9)
    %t1661 = fneg double 3.51200
    %t1660 = fcmp ult double %t1661, 5.84670
    call void @_WriteBool(i8* %t1659, i32 5, i32 0, i1 %t1660)
    call void @_WriteString(i8* %t1659, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1659)
    ; line 1536
    %t1662 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1662, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.807, i32 0, i32 0), i32 9)
    %t1664 = fneg double 32.6440
    %t1665 = fneg double 20.9074
    %t1663 = fcmp ult double %t1664, %t1665
    call void @_WriteBool(i8* %t1662, i32 5, i32 0, i1 %t1663)
    call void @_WriteString(i8* %t1662, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1662)
    ; line 1537
    %t1666 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1666, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.808, i32 0, i32 0), i32 9)
    %t1668 = fneg double 20.7430
    %t1667 = fcmp ult double 20.7630, %t1668
    call void @_WriteBool(i8* %t1666, i32 5, i32 0, i1 %t1667)
    call void @_WriteString(i8* %t1666, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1666)
    ; line 1538
    %t1669 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1669, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.809, i32 0, i32 0), i32 9)
    %t1671 = fneg double 15.6630
    %t1672 = fneg double 40.7840
    %t1670 = fcmp ult double %t1671, %t1672
    call void @_WriteBool(i8* %t1669, i32 5, i32 0, i1 %t1670)
    call void @_WriteString(i8* %t1669, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1669)
    ; line 1539
    %t1673 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1673, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.810, i32 0, i32 0), i32 9)
    %t1675 = fneg double 4.97400
    %t1674 = fcmp ugt double 70.7660, %t1675
    call void @_WriteBool(i8* %t1673, i32 5, i32 0, i1 %t1674)
    call void @_WriteString(i8* %t1673, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1673)
    ; line 1540
    %t1676 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1676, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.811, i32 0, i32 0), i32 9)
    %t1678 = fneg double 23.6532
    %t1679 = fneg double 34.7740
    %t1677 = fcmp ugt double %t1678, %t1679
    call void @_WriteBool(i8* %t1676, i32 5, i32 0, i1 %t1677)
    call void @_WriteString(i8* %t1676, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1676)
    ; line 1541
    %t1680 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1680, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.812, i32 0, i32 0), i32 9)
    %t1682 = fneg double 5.77300
    %t1681 = fcmp ugt double %t1682, 5.98740
    call void @_WriteBool(i8* %t1680, i32 5, i32 0, i1 %t1681)
    call void @_WriteString(i8* %t1680, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1680)
    ; line 1542
    %t1683 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1683, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.813, i32 0, i32 0), i32 9)
    %t1685 = fneg double 60.6630
    %t1686 = fneg double 59.7800
    %t1684 = fcmp ugt double %t1685, %t1686
    call void @_WriteBool(i8* %t1683, i32 5, i32 0, i1 %t1684)
    call void @_WriteString(i8* %t1683, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1683)
    ; line 1543
    %t1687 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1687, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.814, i32 0, i32 0), i32 9)
    %t1689 = fneg double 12.5420
    %t1688 = fcmp ule double %t1689, 4.08480
    call void @_WriteBool(i8* %t1687, i32 5, i32 0, i1 %t1688)
    call void @_WriteString(i8* %t1687, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1687)
    ; line 1544
    %t1690 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1690, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.815, i32 0, i32 0), i32 9)
    %t1692 = fneg double 14.8763
    %t1693 = fneg double 5.08470
    %t1691 = fcmp ule double %t1692, %t1693
    call void @_WriteBool(i8* %t1690, i32 5, i32 0, i1 %t1691)
    call void @_WriteString(i8* %t1690, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1690)
    ; line 1545
    %t1694 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1694, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.816, i32 0, i32 0), i32 9)
    %t1696 = fneg double 7.83730
    %t1697 = fneg double 7.83730
    %t1695 = fcmp ule double %t1696, %t1697
    call void @_WriteBool(i8* %t1694, i32 5, i32 0, i1 %t1695)
    call void @_WriteString(i8* %t1694, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1694)
    ; line 1546
    %t1698 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1698, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.817, i32 0, i32 0), i32 9)
    %t1700 = fneg double 5.45640
    %t1699 = fcmp ule double 5.45640, %t1700
    call void @_WriteBool(i8* %t1698, i32 5, i32 0, i1 %t1699)
    call void @_WriteString(i8* %t1698, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1698)
    ; line 1547
    %t1701 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1701, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.818, i32 0, i32 0), i32 9)
    %t1703 = fneg double 10.7263
    %t1704 = fneg double 20.9840
    %t1702 = fcmp ule double %t1703, %t1704
    call void @_WriteBool(i8* %t1701, i32 5, i32 0, i1 %t1702)
    call void @_WriteString(i8* %t1701, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1701)
    ; line 1548
    %t1705 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1705, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.819, i32 0, i32 0), i32 9)
    %t1707 = fneg double 3.93830
    %t1706 = fcmp uge double 9.83400, %t1707
    call void @_WriteBool(i8* %t1705, i32 5, i32 0, i1 %t1706)
    call void @_WriteString(i8* %t1705, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1705)
    ; line 1549
    %t1708 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1708, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.820, i32 0, i32 0), i32 9)
    %t1710 = fneg double 4.56200
    %t1711 = fneg double 10.7400
    %t1709 = fcmp uge double %t1710, %t1711
    call void @_WriteBool(i8* %t1708, i32 5, i32 0, i1 %t1709)
    call void @_WriteString(i8* %t1708, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1708)
    ; line 1550
    %t1712 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1712, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.821, i32 0, i32 0), i32 9)
    %t1714 = fneg double 13.6300
    %t1715 = fneg double 13.6300
    %t1713 = fcmp uge double %t1714, %t1715
    call void @_WriteBool(i8* %t1712, i32 5, i32 0, i1 %t1713)
    call void @_WriteString(i8* %t1712, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1712)
    ; line 1551
    %t1716 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1716, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.822, i32 0, i32 0), i32 9)
    %t1718 = fneg double 6.74000
    %t1717 = fcmp uge double %t1718, 6.74000
    call void @_WriteBool(i8* %t1716, i32 5, i32 0, i1 %t1717)
    call void @_WriteString(i8* %t1716, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1716)
    ; line 1552
    %t1719 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1719, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.823, i32 0, i32 0), i32 9)
    %t1721 = fneg double 20.7623
    %t1722 = fneg double 10.5740
    %t1720 = fcmp uge double %t1721, %t1722
    call void @_WriteBool(i8* %t1719, i32 5, i32 0, i1 %t1720)
    call void @_WriteString(i8* %t1719, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1719)
    ; line 1553
    %t1723 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1723, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.824, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1723, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1723, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.825, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1723)
    ; line 1554
    %t1724 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1724, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.826, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1724, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1724, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.827, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1724)
    ; line 1555
    %t1725 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1725, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.828, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1725, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1725, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.829, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1725)
    ; line 1556
    %t1726 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1726, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.830, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1726, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1726, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.831, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1726)
    ; line 1557
    %t1727 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1727, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.832, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1727, i32 15, i32 0, double %.dummy.intrin)
    call void @_WriteString(i8* %t1727, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.833, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1727)
    ; line 1558
    %t1728 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1728, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.834, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1728, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1728, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.183, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1728)
    ; line 1559
    %t1729 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1729, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.835, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1729, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1729, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.836, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1729)
    ; line 1560
    %t1730 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1730, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.837, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1730, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1730, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.838, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1730)
    ; line 1561
    %t1731 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1731, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.839, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1731, i32 15, i32 0, i32 -2061584302)
    call void @_WriteString(i8* %t1731, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.840, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1731)
    ; line 1562
    %t1732 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1732, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.841, i32 0, i32 0), i32 9)
    %t1733 = sub i32 0, -2061584302
    call void @_WriteInteger(i8* %t1732, i32 15, i32 0, i32 %t1733)
    call void @_WriteString(i8* %t1732, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.842, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1732)
    ; line 1563
    %t1734 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1734, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.843, i32 0, i32 0), i32 10)
    call void @_WriteReal(i8* %t1734, i32 15, i32 0, double -43.3300)
    call void @_WriteString(i8* %t1734, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.844, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1734)
    ; line 1564
    %t1735 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1735, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.845, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1735, i32 15, i32 0, i32 2061584302)
    call void @_WriteString(i8* %t1735, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.842, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1735)
    ; line 1572
    %t1736 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1736)
    ; line 1573
    %t1737 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1737, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.846, i32 0, i32 0), i32 55)
    call void @_WriteLn(i8* %t1737)
    ; line 1574
    %t1738 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1738)
    ; line 1577
    %t1739 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1739, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.847, i32 0, i32 0), i32 7)
    ; line 1578
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1579
    ; line 1580
    ; line 1581
    %t1740 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1740, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1582
    %t1741 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1741, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.849, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1741)
    ; line 1583
    %t1742 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1742, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.850, i32 0, i32 0), i32 7)
    ; line 1584
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1585
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    ; line 1586
    ; line 1587
    %t1743 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1743, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1588
    %t1744 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1744, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.851, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1744)
    ; line 1589
    %t1745 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1745, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.852, i32 0, i32 0), i32 7)
    ; line 1590
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1591
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    ; line 1592
    ; line 1593
    %t1746 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1746, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1594
    %t1747 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1747, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.853, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1747)
    ; line 1595
    %t1748 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1748, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.854, i32 0, i32 0), i32 7)
    ; line 1596
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1597
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    ; line 1598
    ; line 1599
    %t1749 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1749, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1600
    %t1750 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1750, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.855, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1750)
    ; line 1601
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1602
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    ; line 1603
    store %T_set_121 %.dummy_set, %T_set_121* @stc
    ; line 1604
    %t1751 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1751, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.856, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1751, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1751, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1751)
    ; line 1605
    %t1753 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1753, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.857, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1753, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1753, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1753)
    ; line 1606
    %t1755 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1755, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.858, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1755, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1755, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1755)
    ; line 1607
    %t1757 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1757, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.859, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1757, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1757, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1757)
    ; line 1608
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1609
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    ; line 1610
    store %T_set_121 %.dummy_set, %T_set_121* @stc
    ; line 1611
    store %T_set_121 %.dummy_set, %T_set_121* @std
    ; line 1612
    %t1759 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1759, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.860, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1759, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1759, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1759)
    ; line 1613
    %t1761 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1761, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.861, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1761, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1761, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1761)
    ; line 1614
    %t1763 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1763, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.862, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1763, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1763, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1763)
    ; line 1615
    %t1765 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1765, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.863, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1765, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1765, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1765)
    ; line 1616
    %t1767 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1767, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.864, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1767, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1767, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1767)
    ; line 1617
    %t1769 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1769, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.865, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1769, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1769, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1769)
    ; line 1618
    %t1771 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1771, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.866, i32 0, i32 0), i32 7)
    ; line 1619
    store i32 2, i32* @i
    ; line 1620
    store i32 4, i32* @x
    ; line 1621
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    ; line 1622
    ; line 1623
    %t1772 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1772, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1624
    %t1773 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1773, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.867, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1773)
    ; line 1626
    %t1774 = load %T_set_121, %T_set_121* @std
    store %T_set_122 %.dummy_set, %T_set_122* @ste
    ; line 1627
    store %T_set_123 %.dummy_set, %T_set_123* @stf
    ; line 1628
    %t1775 = load %T_set_123, %T_set_123* @stf
    store %T_set_124 %.dummy_set, %T_set_124* @stg
    ; line 1631
    %t1776 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1776, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.868, i32 0, i32 0), i32 7)
    ; line 1632
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1633
    ; line 1635
    ; line 1636
    %t1777 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1777, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1637
    %t1778 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1778, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.869, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1778)
    ; line 1638
    %t1779 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1779, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.870, i32 0, i32 0), i32 7)
    ; line 1639
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1640
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    ; line 1641
    ; line 1642
    %t1780 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1780, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1643
    %t1781 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1781, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.871, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1781)
    ; line 1644
    %t1782 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1782, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.872, i32 0, i32 0), i32 7)
    ; line 1645
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1646
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    ; line 1647
    ; line 1648
    %t1783 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1783, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1649
    %t1784 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1784, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.873, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1784)
    ; line 1650
    %t1785 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1785, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.874, i32 0, i32 0), i32 7)
    ; line 1651
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1652
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    ; line 1653
    ; line 1654
    %t1786 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1786, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1655
    %t1787 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1787, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.875, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1787)
    ; line 1656
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1657
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    ; line 1658
    store %T_set_25 %.dummy_set, %T_set_25* @cstc
    ; line 1659
    %t1788 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1788, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.876, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1788, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1788, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1788)
    ; line 1660
    %t1790 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1790, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.877, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1790, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1790, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1790)
    ; line 1661
    %t1792 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1792, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.878, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1792, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1792, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1792)
    ; line 1662
    %t1794 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1794, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.879, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1794, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1794, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1794)
    ; line 1663
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1664
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    ; line 1665
    store %T_set_25 %.dummy_set, %T_set_25* @cstc
    ; line 1666
    store %T_set_25 %.dummy_set, %T_set_25* @cstd
    ; line 1667
    %t1796 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1796, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.880, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1796, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1796, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1796)
    ; line 1668
    %t1798 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1798, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.881, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1798, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1798, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1798)
    ; line 1669
    %t1800 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1800, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.882, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1800, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1800, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1800)
    ; line 1670
    %t1802 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1802, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.883, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1802, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1802, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1802)
    ; line 1671
    %t1804 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1804, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.884, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1804, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1804, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1804)
    ; line 1672
    %t1806 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1806, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.885, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1806, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1806, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1806)
    ; line 1673
    %t1808 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1808, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.886, i32 0, i32 0), i32 7)
    ; line 1674
    store i8 97, i8* @ci
    ; line 1675
    store i32 4, i32* @i
    ; line 1676
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    ; line 1677
    ; line 1678
    %t1809 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1809, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1679
    %t1810 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1810, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.887, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1810)
    ; line 1681
    %t1811 = load %T_set_25, %T_set_25* @cstd
    store %T_set_26 %.dummy_set, %T_set_26* @cste
    ; line 1682
    store %T_set_27 %.dummy_set, %T_set_27* @cstf
    ; line 1683
    %t1812 = load %T_set_27, %T_set_27* @cstf
    store %T_set_28 %.dummy_set, %T_set_28* @cstg
    ; line 1686
    %t1813 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1813, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.888, i32 0, i32 0), i32 7)
    ; line 1687
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1688
    ; line 1689
    ; line 1690
    %t1814 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1814, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1691
    %t1815 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1815, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.889, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1815)
    ; line 1692
    %t1816 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1816, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.890, i32 0, i32 0), i32 7)
    ; line 1693
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1694
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    ; line 1695
    ; line 1696
    %t1817 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1817, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1697
    %t1818 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1818, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.851, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1818)
    ; line 1698
    %t1819 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1819, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.891, i32 0, i32 0), i32 7)
    ; line 1699
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1700
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    ; line 1701
    ; line 1702
    %t1820 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1820, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1703
    %t1821 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1821, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.853, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1821)
    ; line 1704
    %t1822 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1822, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.892, i32 0, i32 0), i32 7)
    ; line 1705
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1706
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    ; line 1707
    ; line 1708
    %t1823 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1823, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1709
    %t1824 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1824, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.855, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1824)
    ; line 1710
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1711
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    ; line 1712
    store %T_set_115 %.dummy_set, %T_set_115* @senc
    ; line 1713
    %t1825 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1825, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.893, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1825, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1825, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1825)
    ; line 1714
    %t1827 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1827, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.894, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1827, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1827, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1827)
    ; line 1715
    %t1829 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1829, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.895, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1829, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1829, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1829)
    ; line 1716
    %t1831 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1831, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.896, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1831, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1831, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1831)
    ; line 1717
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1718
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    ; line 1719
    store %T_set_115 %.dummy_set, %T_set_115* @senc
    ; line 1720
    store %T_set_115 %.dummy_set, %T_set_115* @send
    ; line 1721
    %t1833 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1833, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.897, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1833, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1833, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1833)
    ; line 1722
    %t1835 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1835, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.898, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1835, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1835, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1835)
    ; line 1723
    %t1837 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1837, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.899, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1837, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1837, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1837)
    ; line 1724
    %t1839 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1839, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.900, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1839, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1839, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1839)
    ; line 1725
    %t1841 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1841, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.901, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1841, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1841, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1841)
    ; line 1726
    %t1843 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1843, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.902, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1843, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1843, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1843)
    ; line 1727
    %t1845 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1845, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.903, i32 0, i32 0), i32 7)
    ; line 1728
    store i32 1, i32* @ei
    ; line 1729
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    ; line 1730
    ; line 1731
    %t1846 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1846, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1732
    %t1847 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1847, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.904, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1847)
    ; line 1734
    store %T_set_115 %.dummy_set, %T_set_115* @send
    ; line 1735
    %t1848 = load %T_set_115, %T_set_115* @send
    store %T_set_116 %.dummy_set, %T_set_116* @sene
    ; line 1736
    store %T_set_117 %.dummy_set, %T_set_117* @senf
    ; line 1737
    %t1849 = load %T_set_117, %T_set_117* @senf
    store %T_set_118 %.dummy_set, %T_set_118* @seng
    ; line 1740
    %t1850 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1850, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.905, i32 0, i32 0), i32 7)
    ; line 1741
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1742
    ; line 1743
    ; line 1744
    %t1851 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1851, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1745
    %t1852 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1852, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.906, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1852)
    ; line 1746
    %t1853 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1853, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.907, i32 0, i32 0), i32 7)
    ; line 1747
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1748
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    ; line 1749
    ; line 1750
    %t1854 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1854, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1751
    %t1855 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1855, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.908, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1855)
    ; line 1752
    %t1856 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1856, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.909, i32 0, i32 0), i32 7)
    ; line 1753
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1754
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    ; line 1755
    ; line 1756
    %t1857 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1857, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1757
    %t1858 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1858, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.910, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1858)
    ; line 1758
    %t1859 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1859, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.911, i32 0, i32 0), i32 7)
    ; line 1759
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1760
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    ; line 1761
    ; line 1762
    %t1860 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1860, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1763
    %t1861 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1861, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.910, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1861)
    ; line 1764
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1765
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    ; line 1766
    store %T_set_110 %.dummy_set, %T_set_110* @sbc
    ; line 1767
    %t1862 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1862, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.912, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1862, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1862, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1862)
    ; line 1768
    %t1864 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1864, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.913, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1864, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1864, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1864)
    ; line 1769
    %t1866 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1866, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.914, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1866, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1866, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1866)
    ; line 1770
    %t1868 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1868, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.915, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1868, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1868, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1868)
    ; line 1771
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1772
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    ; line 1773
    store %T_set_110 %.dummy_set, %T_set_110* @sbc
    ; line 1774
    store %T_set_110 %.dummy_set, %T_set_110* @sbd
    ; line 1775
    %t1870 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1870, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.916, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1870, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1870, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1870)
    ; line 1776
    %t1872 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1872, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.917, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1872, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1872, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1872)
    ; line 1777
    %t1874 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1874, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.918, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1874, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1874, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1874)
    ; line 1778
    %t1876 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1876, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.919, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1876, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1876, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1876)
    ; line 1779
    %t1878 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1878, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.920, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1878, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1878, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1878)
    ; line 1780
    %t1880 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1880, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.921, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1880, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1880, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1880)
    ; line 1781
    %t1882 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1882, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.922, i32 0, i32 0), i32 7)
    ; line 1782
    store i1 0, i1* @ba
    ; line 1783
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    ; line 1784
    ; line 1785
    %t1883 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1883, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    ; line 1786
    %t1884 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1884, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.908, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1884)
    ; line 1788
    %t1885 = load %T_set_110, %T_set_110* @sbd
    store %T_set_111 %.dummy_set, %T_set_111* @sbe
    ; line 1789
    store %T_set_112 %.dummy_set, %T_set_112* @sbf
    ; line 1790
    %t1886 = load %T_set_112, %T_set_112* @sbf
    store %T_set_113 %.dummy_set, %T_set_113* @sbg
    ; line 1791
    %t1887 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1887, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.923, i32 0, i32 0), i32 7)
    ; line 1792
    ; line 1793
    ; line 1794
    %t1888 = load i8*, i8** @pi1
    %t1889 = bitcast i8* %t1888 to i32*
    store i32 3, i32* %t1889
    ; line 1795
    %t1890 = load i8*, i8** @pi2
    %t1891 = bitcast i8* %t1890 to i32*
    store i32 5, i32* %t1891
    ; line 1796
    %t1892 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t1892, i32 5, i32 0, i1 true)
    ; line 1797
    %t1894 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1894, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1894)
    ; line 1805
    %t1895 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1895)
    ; line 1806
    %t1896 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1896, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.924, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t1896)
    ; line 1807
    %t1897 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1897)
    ; line 1810
    %t1898 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1898, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.925, i32 0, i32 0), i32 12)
    ; line 1811
    ; line 1812
    %t1899 = load i8*, i8** @pti
    %t1900 = bitcast i8* %t1899 to i32*
    store i32 4594, i32* %t1900
    ; line 1813
    %t1901 = load %T_text, %T_text* @output
    %t1902 = load i8*, i8** @pti
    %t1903 = bitcast i8* %t1902 to i32*
    %t1904 = load i32, i32* %t1903
    call void @_WriteInteger(i8* %t1901, i32 1, i32 0, i32 %t1904)
    call void @_WriteString(i8* %t1901, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.926, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1901)
    ; line 1814
    %t1905 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1905, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.927, i32 0, i32 0), i32 12)
    ; line 1815
    ; line 1816
    %t1906 = load i8*, i8** @ptb
    %t1907 = bitcast i8* %t1906 to i1*
    store i1 1, i1* %t1907
    ; line 1817
    %t1908 = load %T_text, %T_text* @output
    %t1909 = load i8*, i8** @ptb
    %t1910 = bitcast i8* %t1909 to i1*
    %t1911 = load i1, i1* %t1910
    call void @_WriteBool(i8* %t1908, i32 5, i32 0, i1 %t1911)
    call void @_WriteString(i8* %t1908, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.928, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1908)
    ; line 1818
    %t1912 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1912, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.929, i32 0, i32 0), i32 12)
    ; line 1819
    ; line 1820
    %t1913 = load i8*, i8** @ptb
    %t1914 = bitcast i8* %t1913 to i1*
    store i1 0, i1* %t1914
    ; line 1821
    %t1915 = load %T_text, %T_text* @output
    %t1916 = load i8*, i8** @ptb
    %t1917 = bitcast i8* %t1916 to i1*
    %t1918 = load i1, i1* %t1917
    call void @_WriteBool(i8* %t1915, i32 5, i32 0, i1 %t1918)
    call void @_WriteString(i8* %t1915, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1915)
    ; line 1822
    %t1919 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1919, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.930, i32 0, i32 0), i32 12)
    ; line 1823
    ; line 1824
    %t1920 = load i8*, i8** @ptc
    %t1921 = bitcast i8* %t1920 to i8*
    store i8 112, i8* %t1921
    ; line 1825
    %t1922 = load %T_text, %T_text* @output
    %t1923 = load i8*, i8** @ptc
    %t1924 = bitcast i8* %t1923 to i8*
    %t1925 = load i8, i8* %t1924
    call void @_WriteChar(i8* %t1922, i32 0, i32 0, i8 %t1925)
    call void @_WriteString(i8* %t1922, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.931, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1922)
    ; line 1826
    %t1926 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1926, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.932, i32 0, i32 0), i32 12)
    ; line 1827
    ; line 1828
    %t1927 = load i8*, i8** @pte
    %t1928 = bitcast i8* %t1927 to i32*
    store i32 5, i32* %t1928
    ; line 1829
    %t1929 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t1929, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1929, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1929)
    ; line 1830
    %t1930 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1930, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.933, i32 0, i32 0), i32 12)
    ; line 1831
    ; line 1832
    %t1931 = load i8*, i8** @ptes
    %t1932 = bitcast i8* %t1931 to i32*
    store i32 3, i32* %t1932
    ; line 1833
    %t1933 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t1933, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteString(i8* %t1933, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.934, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1933)
    ; line 1834
    %t1934 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1934, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.935, i32 0, i32 0), i32 12)
    ; line 1835
    ; line 1836
    %t1935 = load i8*, i8** @pts
    %t1936 = bitcast i8* %t1935 to i32*
    store i32 17, i32* %t1936
    ; line 1837
    %t1937 = load %T_text, %T_text* @output
    %t1938 = load i8*, i8** @pts
    %t1939 = bitcast i8* %t1938 to i32*
    %t1940 = load i32, i32* %t1939
    call void @_WriteInteger(i8* %t1937, i32 1, i32 0, i32 %t1940)
    call void @_WriteString(i8* %t1937, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.936, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1937)
    ; line 1838
    %t1941 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1941, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.937, i32 0, i32 0), i32 12)
    ; line 1839
    ; line 1840
    %t1942 = load i8*, i8** @ptr
    %t1943 = bitcast i8* %t1942 to double*
    store double 1234.57, double* %t1943
    ; line 1841
    %t1944 = load %T_text, %T_text* @output
    %t1945 = load i8*, i8** @ptr
    %t1946 = bitcast i8* %t1945 to double*
    %t1947 = load double, double* %t1946
    call void @_WriteReal(i8* %t1944, i32 1, i32 4, double %t1947)
    call void @_WriteString(i8* %t1944, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.938, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1944)
    ; line 1842
    %t1948 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1948, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.939, i32 0, i32 0), i32 12)
    ; line 1843
    ; line 1844
    %t1949 = load i8*, i8** @ptst
    %t1950 = bitcast i8* %t1949 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.940, i32 0, i32 0), %T_string10* %t1950
    ; line 1845
    %t1951 = load %T_text, %T_text* @output
    %t1952 = load i8*, i8** @ptst
    %t1953 = bitcast i8* %t1952 to %T_string10*
    call void @_WriteString(i8* %t1951, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t1953, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t1951, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.941, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1951)
    ; line 1846
    %t1954 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1954, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.942, i32 0, i32 0), i32 12)
    ; line 1847
    ; line 1848
    ; line 1849
    ; line 1850
    %t1955 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1955, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t1955)
    ; line 1851
    %t1956 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1956, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.944, i32 0, i32 0), i32 13)
    ; line 1852
    ; line 1853
    %t1957 = load i8*, i8** @ptrc
    %t1958 = bitcast i8* %t1957 to %T_recs*
    %t1960 = getelementptr inbounds %T_recs, %T_recs* %t1958, i32 0, i32 0
    %t1959 = bitcast i8* %t1960 to i32*
    store i32 7234, i32* %t1959
    ; line 1854
    %t1961 = load i8*, i8** @ptrc
    %t1962 = bitcast i8* %t1961 to %T_recs*
    %t1964 = getelementptr inbounds %T_recs, %T_recs* %t1962, i32 0, i32 4
    %t1963 = bitcast i8* %t1964 to i8*
    store i8 121, i8* %t1963
    ; line 1855
    %t1965 = load %T_text, %T_text* @output
    %t1966 = load i8*, i8** @ptrc
    %t1967 = bitcast i8* %t1966 to %T_recs*
    %t1969 = getelementptr inbounds %T_recs, %T_recs* %t1967, i32 0, i32 0
    %t1968 = bitcast i8* %t1969 to i32*
    %t1970 = load i32, i32* %t1968
    call void @_WriteInteger(i8* %t1965, i32 1, i32 0, i32 %t1970)
    call void @_WriteChar(i8* %t1965, i32 0, i32 0, i8 32)
    %t1971 = load i8*, i8** @ptrc
    %t1972 = bitcast i8* %t1971 to %T_recs*
    %t1974 = getelementptr inbounds %T_recs, %T_recs* %t1972, i32 0, i32 4
    %t1973 = bitcast i8* %t1974 to i8*
    %t1975 = load i8, i8* %t1973
    call void @_WriteChar(i8* %t1965, i32 0, i32 0, i8 %t1975)
    call void @_WriteString(i8* %t1965, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.945, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1965)
    ; line 1856
    %t1976 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1976, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.946, i32 0, i32 0), i32 13)
    ; line 1857
    ; line 1858
    %t1977 = load i8*, i8** @ptstc
    %t1978 = bitcast i8* %t1977 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t1978
    ; line 1859
    ; line 1860
    %t1979 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1979, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.947, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1979)
    ; line 1861
    %t1980 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1980, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.948, i32 0, i32 0), i32 12)
    ; line 1862
    ; line 1863
    ; line 1864
    %t1981 = load i8*, i8** @ptp
    %t1982 = bitcast i8* %t1981 to i8**
    %t1983 = load i8*, i8** %t1982
    %t1984 = bitcast i8* %t1983 to i32*
    store i32 3732, i32* %t1984
    ; line 1865
    %t1985 = load %T_text, %T_text* @output
    %t1986 = load i8*, i8** @ptp
    %t1987 = bitcast i8* %t1986 to i8**
    %t1988 = load i8*, i8** %t1987
    %t1989 = bitcast i8* %t1988 to i32*
    %t1990 = load i32, i32* %t1989
    call void @_WriteInteger(i8* %t1985, i32 1, i32 0, i32 %t1990)
    call void @_WriteString(i8* %t1985, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.949, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1985)
    ; line 1868
    %t1991 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1991, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.950, i32 0, i32 0), i32 12)
    ; line 1869
    store i8* null, i8** @pti
    ; line 1870
    %t1992 = load %T_text, %T_text* @output
    %t1994 = load i8*, i8** @pti
    %t1993 = icmp eq i32 %t1994, null
    call void @_WriteBool(i8* %t1992, i32 5, i32 0, i1 %t1993)
    call void @_WriteString(i8* %t1992, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.928, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1992)
    ; line 1871
    %t1995 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1995, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.951, i32 0, i32 0), i32 12)
    ; line 1872
    ; line 1873
    %t1996 = load %T_text, %T_text* @output
    %t1998 = load i8*, i8** @pti
    %t1997 = icmp eq i32 %t1998, null
    call void @_WriteBool(i8* %t1996, i32 5, i32 0, i1 %t1997)
    call void @_WriteString(i8* %t1996, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1996)
    ; line 1874
    %t1999 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1999, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.952, i32 0, i32 0), i32 12)
    ; line 1875
    %t2000 = load i8*, i8** @pti
    store i8* %t2000, i8** @pti1
    ; line 1876
    %t2001 = load %T_text, %T_text* @output
    %t2003 = load i8*, i8** @pti
    %t2004 = load i8*, i8** @pti1
    %t2002 = icmp eq i32 %t2003, %t2004
    call void @_WriteBool(i8* %t2001, i32 5, i32 0, i1 %t2002)
    call void @_WriteString(i8* %t2001, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2001)
    ; line 1877
    %t2005 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2005, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.953, i32 0, i32 0), i32 12)
    ; line 1878
    %t2006 = load i8*, i8** @pti
    store i8* %t2006, i8** @pti1
    ; line 1879
    %t2007 = load %T_text, %T_text* @output
    %t2009 = load i8*, i8** @pti
    %t2010 = load i8*, i8** @pti1
    %t2008 = icmp ne i32 %t2009, %t2010
    call void @_WriteBool(i8* %t2007, i32 5, i32 0, i1 %t2008)
    call void @_WriteString(i8* %t2007, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2007)
    ; line 1880
    %t2011 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2011, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.954, i32 0, i32 0), i32 12)
    ; line 1881
    ; line 1882
    %t2012 = load %T_text, %T_text* @output
    %t2014 = load i8*, i8** @pti
    %t2015 = load i8*, i8** @pti1
    %t2013 = icmp eq i32 %t2014, %t2015
    call void @_WriteBool(i8* %t2012, i32 5, i32 0, i1 %t2013)
    call void @_WriteString(i8* %t2012, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2012)
    ; line 1883
    %t2016 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2016, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.955, i32 0, i32 0), i32 12)
    ; line 1884
    %t2017 = load %T_text, %T_text* @output
    %t2019 = load i8*, i8** @pti
    %t2020 = load i8*, i8** @pti1
    %t2018 = icmp ne i32 %t2019, %t2020
    call void @_WriteBool(i8* %t2017, i32 5, i32 0, i1 %t2018)
    call void @_WriteString(i8* %t2017, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.928, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2017)
    ; line 1889
    %t2021 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2021, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.956, i32 0, i32 0), i32 12)
    ; line 1890
    ; line 1891
    ; line 1892
    ; line 1893
    ; line 1894
    ; line 1895
    ; line 1896
    %t2022 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2022, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.957, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2022)
    ; line 1900
    %t2023 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2023, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.958, i32 0, i32 0), i32 12)
    ; line 1901
    ; line 1902
    ; line 1903
    ; line 1904
    ; line 1905
    ; line 1906
    ; line 1910
    %t2024 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2024, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.959, i32 0, i32 0), i32 12)
    ; line 1911
    ; line 1912
    ; line 1913
    ; line 1914
    ; line 1915
    ; line 1916
    ; line 1917
    ; line 1918
    ; line 1919
    %t2025 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2025, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.957, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2025)
    ; line 1922
    %t2026 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2026, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.960, i32 0, i32 0), i32 12)
    ; line 1923
    ; line 1924
    ; line 1925
    ; line 1926
    ; line 1927
    ; line 1928
    ; line 1929
    ; line 1930
    ; line 1931
    ; line 1932
    ; line 1933
    %t2027 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2027, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.957, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2027)
    ; line 1936
    %t2028 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2028, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.961, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2028)
    ; line 1937
    ; line 1973
    %t2029 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2029)
    ; line 1974
    %t2030 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2030, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.962, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2030)
    ; line 1975
    %t2031 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2031)
    ; line 1976
    %t2032 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2032, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.963, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2032)
    ; line 1977
    %t2033 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2033, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.964, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2033)
    ; line 1978
    %t2034 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2034, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.965, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2034)
    ; line 1979
    %t2035 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2035, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.966, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2035)
    ; line 1980
    %t2036 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2036, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.967, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2036)
    ; line 1981
    %t2037 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2037, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.968, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2037)
    ; line 1982
    %t2038 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2038, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.969, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2038)
    ; line 1983
    %t2039 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2039, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.970, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2039)
    ; line 1984
    %t2040 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2040, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.971, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2040)
    ; line 1985
    %t2041 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2041, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.972, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t2041)
    ; line 1987
    store i32 1, i32* @rndseq
    ; line 1990
    %t2042 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2042, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.973, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2042)
    ; line 1991
    ; line 1992
    ; line 2016
    %t2043 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2043)
    ; line 2017
    %t2044 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2044, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.962, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2044)
    ; line 2018
    %t2045 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2045)
    ; line 2019
    %t2046 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2046, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.963, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2046)
    ; line 2020
    %t2047 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2047, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.964, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2047)
    ; line 2021
    %t2048 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2048, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.965, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2048)
    ; line 2022
    %t2049 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2049, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.966, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2049)
    ; line 2023
    %t2050 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2050, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.967, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2050)
    ; line 2024
    %t2051 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2051, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.968, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2051)
    ; line 2025
    %t2052 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2052, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.969, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2052)
    ; line 2026
    %t2053 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2053, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.970, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2053)
    ; line 2027
    %t2054 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2054, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.971, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2054)
    ; line 2028
    %t2055 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2055, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.972, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t2055)
    ; line 2036
    %t2056 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2056)
    ; line 2037
    %t2057 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2057, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.974, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t2057)
    ; line 2038
    %t2058 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2058)
    ; line 2041
    %t2059 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2059, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.975, i32 0, i32 0), i32 10)
    ; line 2042
    ; line 2043
    ; line 2044
    %t2060 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2060, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.976, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2060)
    ; line 2045
    %t2061 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2061, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.977, i32 0, i32 0), i32 10)
    ; line 2046
    ; line 2047
    ; line 2048
    %t2062 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2062, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.976, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2062)
    ; line 2049
    %t2063 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2063, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.978, i32 0, i32 0), i32 10)
    ; line 2050
    ; line 2051
    ; line 2052
    %t2064 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2064, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.976, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2064)
    ; line 2053
    %t2065 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2065, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.979, i32 0, i32 0), i32 10)
    ; line 2054
    ; line 2055
    ; line 2056
    %t2066 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2066, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.976, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2066)
    ; line 2057
    %t2067 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2067, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.980, i32 0, i32 0), i32 10)
    ; line 2058
    ; line 2059
    ; line 2060
    %t2068 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2068)
    ; line 2061
    %t2069 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2069, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.981, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t2069, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.547, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2069)
    ; line 2063
    %t2070 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2070, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.982, i32 0, i32 0), i32 10)
    ; line 2064
    ; line 2065
    ; line 2066
    %t2071 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2071)
    ; line 2067
    %t2072 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2072, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.981, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t2072, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.547, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2072)
    ; line 2069
    %t2073 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2073, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.983, i32 0, i32 0), i32 10)
    ; line 2070
    ; line 2071
    ; line 2072
    %t2074 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2074)
    ; line 2073
    %t2075 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2075, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.984, i32 0, i32 0), i32 53)
    call void @_WriteString(i8* %t2075, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.985, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2075)
    ; line 2075
    %t2076 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2076, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.986, i32 0, i32 0), i32 10)
    ; line 2076
    ; line 2077
    ; line 2078
    %t2077 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2077)
    ; line 2079
    %t2078 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2078, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.984, i32 0, i32 0), i32 53)
    call void @_WriteString(i8* %t2078, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.985, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2078)
    ; line 2081
    %t2079 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2079, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.987, i32 0, i32 0), i32 10)
    ; line 2082
    ; line 2083
    ; line 2084
    %t2080 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2080, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2080)
    ; line 2085
    %t2081 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2081, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.989, i32 0, i32 0), i32 10)
    ; line 2086
    ; line 2087
    ; line 2088
    %t2082 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2082, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2082)
    ; line 2089
    %t2083 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2083, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.990, i32 0, i32 0), i32 10)
    ; line 2090
    ; line 2091
    ; line 2092
    %t2084 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2084, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.991, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2084)
    ; line 2093
    %t2085 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2085, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.992, i32 0, i32 0), i32 10)
    ; line 2094
    ; line 2095
    ; line 2096
    %t2086 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2086, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.991, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2086)
    ; line 2097
    %t2087 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2087, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.993, i32 0, i32 0), i32 10)
    ; line 2098
    ; line 2099
    ; line 2100
    %t2088 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2088, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.994, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2088)
    ; line 2101
    %t2089 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2089, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.995, i32 0, i32 0), i32 10)
    ; line 2102
    ; line 2103
    ; line 2104
    %t2090 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2090, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.994, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2090)
    ; line 2105
    %t2091 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2091, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.996, i32 0, i32 0), i32 10)
    ; line 2106
    ; line 2107
    ; line 2108
    %t2092 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2092, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.997, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2092)
    ; line 2109
    %t2093 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2093, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.998, i32 0, i32 0), i32 10)
    ; line 2110
    ; line 2111
    ; line 2112
    %t2094 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2094, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.997, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2094)
    ; line 2113
    %t2095 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2095, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.999, i32 0, i32 0), i32 10)
    ; line 2114
    ; line 2115
    ; line 2117
    %t2096 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2096, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2096)
    ; line 2118
    %t2097 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2097, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1000, i32 0, i32 0), i32 10)
    ; line 2119
    ; line 2120
    ; line 2122
    %t2098 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2098, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2098)
    ; line 2123
    %t2099 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2099, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1001, i32 0, i32 0), i32 10)
    ; line 2124
    ; line 2126
    ; line 2127
    %t2100 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2100)
    ; line 2128
    %t2101 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2101, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1002, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t2101)
    ; line 2129
    %t2102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2102, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1003, i32 0, i32 0), i32 10)
    ; line 2130
    ; line 2132
    ; line 2133
    %t2103 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2103)
    ; line 2134
    %t2104 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2104, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1002, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t2104)
    ; line 2135
    %t2105 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2105, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1004, i32 0, i32 0), i32 10)
    ; line 2136
    ; line 2137
    ; line 2139
    %t2106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2106, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2106)
    ; line 2140
    %t2107 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2107, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1005, i32 0, i32 0), i32 10)
    ; line 2141
    ; line 2142
    ; line 2144
    %t2108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2108, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2108)
    ; line 2145
    %t2109 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2109, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1006, i32 0, i32 0), i32 10)
    ; line 2146
    ; line 2147
    ; line 2148
    %t2110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2110, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2110)
    ; line 2149
    %t2111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2111, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1007, i32 0, i32 0), i32 10)
    ; line 2150
    ; line 2151
    ; line 2152
    %t2112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2112, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2112)
    ; line 2155
    %t2113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2113, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1008, i32 0, i32 0), i32 10)
    ; line 2156
    ; line 2157
    ; line 2158
    %t2114 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2114, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1009, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2114)
    ; line 2159
    %t2115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2115, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1010, i32 0, i32 0), i32 10)
    ; line 2160
    ; line 2161
    ; line 2162
    %t2116 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2116, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1009, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2116)
    ; line 2163
    %t2117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2117, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1011, i32 0, i32 0), i32 10)
    ; line 2164
    ; line 2165
    ; line 2166
    %t2118 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2118, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1012, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2118)
    ; line 2167
    %t2119 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2119, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1013, i32 0, i32 0), i32 10)
    ; line 2168
    ; line 2169
    ; line 2170
    %t2120 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2120, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1012, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2120)
    ; line 2171
    %t2121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2121, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1014, i32 0, i32 0), i32 10)
    ; line 2172
    ; line 2173
    ; line 2174
    %t2122 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2122, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1012, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2122)
    ; line 2175
    %t2123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2123, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1015, i32 0, i32 0), i32 10)
    ; line 2176
    ; line 2177
    ; line 2178
    %t2124 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2124, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1012, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2124)
    ; line 2179
    %t2125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2125, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1016, i32 0, i32 0), i32 10)
    ; line 2180
    ; line 2181
    ; line 2182
    %t2126 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2126, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1017, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2126)
    ; line 2183
    %t2127 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2127, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1018, i32 0, i32 0), i32 10)
    ; line 2184
    ; line 2185
    ; line 2186
    %t2128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2128, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1017, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2128)
    ; line 2187
    %t2129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2129, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1019, i32 0, i32 0), i32 10)
    ; line 2188
    ; line 2189
    ; line 2190
    %t2130 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2130, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1020, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2130)
    ; line 2191
    %t2131 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2131, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1021, i32 0, i32 0), i32 10)
    ; line 2192
    ; line 2193
    ; line 2194
    %t2132 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2132, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1020, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2132)
    ; line 2197
    %t2133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2133, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1022, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t2133)
    ; line 2198
    store i32 0, i32* @z
    ; line 2199
    ; line 2201
    ; line 2206
    %t2134 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2134, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.962, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2134)
    ; line 2207
    %t2135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2135, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1023, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2135)
    ; line 2208
    %t2136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2136, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1024, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2136)
    ; line 2209
    %t2137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2137, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1025, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2137)
    ; line 2210
    %t2138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2138, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1026, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2138)
    ; line 2211
    %t2139 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2139, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1027, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2139)
    ; line 2212
    %t2140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2140, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1028, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2140)
    ; line 2213
    %t2141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2141, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1029, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2141)
    ; line 2214
    %t2142 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2142, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1030, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2142)
    ; line 2215
    %t2143 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2143, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1031, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2143)
    ; line 2216
    %t2144 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2144, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1032, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2144)
    ; line 2217
    %t2145 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2145, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1033, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2145)
    ; line 2218
    store i32 0, i32* @t
    ; line 2219
    ; line 2226
    ; line 2236
    %t2146 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2146, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2146)
    ; line 2237
    %t2147 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2147, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1035, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2147)
    ; line 2238
    %t2148 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2148, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1036, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2148)
    ; line 2239
    %t2149 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2149, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1037, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2149)
    ; line 2240
    %t2150 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2150, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1038, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2150)
    ; line 2241
    %t2151 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2151, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1039, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2151)
    ; line 2242
    %t2152 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2152, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1040, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2152)
    ; line 2243
    %t2153 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2153, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1041, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2153)
    ; line 2244
    %t2154 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2154, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1042, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2154)
    ; line 2247
    %t2155 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2155, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1043, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2155)
    ; line 2248
    store %T_array_60 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1044, i32 0, i32 0), %T_array_60* @pavc
    ; line 2249
    %t2156 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2156, i32 0, i32 0, i8* getelementptr inbounds (%T_array_60, %T_array_60* @pavc, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t2156, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1045, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2156)
    ; line 2250
    %t2157 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2157, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1046, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2157)
    ; line 2251
    ; line 2252
    %t2158 = load %T_arri, %T_arri* @avi
    store %T_arri %t2158, %T_arri* @avi2
    ; line 2253
    ; line 2254
    %t2159 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2159, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2159)
    ; line 2255
    %t2160 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2160, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1047, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2160)
    ; line 2256
    store i32 0, i32* @t
    ; line 2257
    ; line 2264
    %t2161 = load %T_arrim, %T_arrim* @mdar
    store %T_arrim %t2161, %T_arrim* @mdar2
    ; line 2265
    ; line 2275
    %t2162 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2162, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2162)
    ; line 2276
    %t2163 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2163, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1035, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2163)
    ; line 2277
    %t2164 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2164, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1036, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2164)
    ; line 2278
    %t2165 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2165, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1037, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2165)
    ; line 2279
    %t2166 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2166, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1038, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2166)
    ; line 2280
    %t2167 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2167, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1039, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2167)
    ; line 2281
    %t2168 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2168, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1040, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2168)
    ; line 2282
    %t2169 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2169, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1041, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2169)
    ; line 2283
    %t2170 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2170, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1042, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2170)
    ; line 2286
    %t2171 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2171, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1048, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2171)
    ; line 2287
    ; line 2288
    ; line 2289
    ; line 2290
    %t2172 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2172, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2172)
    ; line 2291
    %t2173 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2173, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1049, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2173)
    ; line 2292
    ; line 2293
    ; line 2294
    ; line 2295
    %t2174 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2174, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1050, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2174)
    ; line 2296
    %t2175 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2175, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1051, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2175)
    ; line 2297
    ; line 2298
    ; line 2299
    ; line 2300
    %t2176 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2176, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1052, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2176)
    ; line 2301
    %t2177 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2177, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1053, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2177)
    ; line 2302
    store i32 1, i32* @x
    ; line 2303
    ; line 2304
    ; line 2305
    ; line 2306
    %t2178 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2178, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1054, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2178)
    ; line 2314
    %t2179 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2179)
    ; line 2315
    %t2180 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2180, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1055, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t2180)
    ; line 2316
    %t2181 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2181)
    ; line 2319
    %t2182 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2182, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1056, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2182)
    ; line 2320
    %t2184 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t2183 = bitcast i8* %t2184 to i32*
    store i32 64, i32* %t2183
    ; line 2321
    %t2186 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t2185 = bitcast i8* %t2186 to i1*
    store i1 0, i1* %t2185
    ; line 2322
    %t2188 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t2187 = bitcast i8* %t2188 to i8*
    store i8 106, i8* %t2187
    ; line 2323
    %t2190 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 8
    %t2189 = bitcast i8* %t2190 to i32*
    store i32 1, i32* %t2189
    ; line 2324
    %t2192 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 12
    %t2191 = bitcast i8* %t2192 to i32*
    store i32 3, i32* %t2191
    ; line 2325
    %t2194 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t2193 = bitcast i8* %t2194 to i32*
    store i32 12, i32* %t2193
    ; line 2326
    %t2196 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t2195 = bitcast i8* %t2196 to double*
    store double 4.54512e-29, double* %t2195
    ; line 2327
    %t2198 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t2197 = bitcast i8* %t2198 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1057, i32 0, i32 0), %T_string10* %t2197
    ; line 2328
    ; line 2329
    %t2200 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2199 = bitcast i8* %t2200 to %T_recs*
    %t2202 = getelementptr inbounds %T_recs, %T_recs* %t2199, i32 0, i32 0
    %t2201 = bitcast i8* %t2202 to i32*
    store i32 2324, i32* %t2201
    ; line 2330
    %t2204 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2203 = bitcast i8* %t2204 to %T_recs*
    %t2206 = getelementptr inbounds %T_recs, %T_recs* %t2203, i32 0, i32 4
    %t2205 = bitcast i8* %t2206 to i8*
    store i8 121, i8* %t2205
    ; line 2331
    %t2208 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 92
    %t2207 = bitcast i8* %t2208 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2207
    ; line 2332
    ; line 2333
    %t2210 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t2209 = bitcast i8* %t2210 to i8**
    %t2211 = load i8*, i8** %t2209
    %t2212 = bitcast i8* %t2211 to i32*
    store i32 8454, i32* %t2212
    ; line 2334
    %t2213 = load %T_text, %T_text* @output
    %t2215 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t2214 = bitcast i8* %t2215 to i32*
    %t2216 = load i32, i32* %t2214
    call void @_WriteInteger(i8* %t2213, i32 1, i32 0, i32 %t2216)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    %t2218 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t2217 = bitcast i8* %t2218 to i1*
    %t2219 = load i1, i1* %t2217
    call void @_WriteBool(i8* %t2213, i32 5, i32 0, i1 %t2219)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    %t2221 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t2220 = bitcast i8* %t2221 to i8*
    %t2222 = load i8, i8* %t2220
    call void @_WriteChar(i8* %t2213, i32 1, i32 0, i8 %t2222)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2213, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2213, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    %t2224 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t2223 = bitcast i8* %t2224 to i32*
    %t2225 = load i32, i32* %t2223
    call void @_WriteInteger(i8* %t2213, i32 1, i32 0, i32 %t2225)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    %t2227 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t2226 = bitcast i8* %t2227 to double*
    %t2228 = load double, double* %t2226
    call void @_WriteReal(i8* %t2213, i32 15, i32 0, double %t2228)
    call void @_WriteChar(i8* %t2213, i32 0, i32 0, i8 32)
    %t2230 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t2229 = bitcast i8* %t2230 to %T_string10*
    call void @_WriteString(i8* %t2213, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2229, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2213)
    ; line 2337
    ; line 2337
    %t2231 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2231)
    ; line 2338
    %t2232 = load %T_text, %T_text* @output
    %t2234 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2233 = bitcast i8* %t2234 to %T_recs*
    %t2236 = getelementptr inbounds %T_recs, %T_recs* %t2233, i32 0, i32 0
    %t2235 = bitcast i8* %t2236 to i32*
    %t2237 = load i32, i32* %t2235
    call void @_WriteInteger(i8* %t2232, i32 1, i32 0, i32 %t2237)
    call void @_WriteChar(i8* %t2232, i32 0, i32 0, i8 32)
    %t2239 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2238 = bitcast i8* %t2239 to %T_recs*
    %t2241 = getelementptr inbounds %T_recs, %T_recs* %t2238, i32 0, i32 4
    %t2240 = bitcast i8* %t2241 to i8*
    %t2242 = load i8, i8* %t2240
    call void @_WriteChar(i8* %t2232, i32 1, i32 0, i8 %t2242)
    call void @_WriteLn(i8* %t2232)
    ; line 2339
    ; line 2340
    %t2243 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2243)
    ; line 2341
    %t2244 = load %T_text, %T_text* @output
    %t2246 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t2245 = bitcast i8* %t2246 to i8**
    %t2247 = load i8*, i8** %t2245
    %t2248 = bitcast i8* %t2247 to i32*
    %t2249 = load i32, i32* %t2248
    call void @_WriteInteger(i8* %t2244, i32 1, i32 0, i32 %t2249)
    call void @_WriteLn(i8* %t2244)
    ; line 2342
    %t2250 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2250, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2250)
    ; line 2343
    %t2251 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2251, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1058, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t2251)
    ; line 2344
    %t2252 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2252, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1059, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t2252)
    ; line 2345
    %t2253 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2253, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1060, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2253)
    ; line 2346
    %t2254 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2254, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1061, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2254)
    ; line 2347
    %t2255 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2255, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1062, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2255)
    ; line 2348
    %t2256 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2256, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1063, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2256)
    ; line 2349
    %t2258 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 0
    %t2257 = bitcast i8* %t2258 to i32*
    store i32 64, i32* %t2257
    ; line 2350
    %t2260 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 4
    %t2259 = bitcast i8* %t2260 to i1*
    store i1 0, i1* %t2259
    ; line 2351
    %t2262 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 5
    %t2261 = bitcast i8* %t2262 to i8*
    store i8 106, i8* %t2261
    ; line 2352
    %t2264 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 8
    %t2263 = bitcast i8* %t2264 to i32*
    store i32 1, i32* %t2263
    ; line 2353
    %t2266 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 12
    %t2265 = bitcast i8* %t2266 to i32*
    store i32 3, i32* %t2265
    ; line 2354
    %t2268 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 16
    %t2267 = bitcast i8* %t2268 to i32*
    store i32 12, i32* %t2267
    ; line 2355
    %t2270 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 24
    %t2269 = bitcast i8* %t2270 to double*
    store double 4.54512e-29, double* %t2269
    ; line 2356
    %t2272 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 32
    %t2271 = bitcast i8* %t2272 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1057, i32 0, i32 0), %T_string10* %t2271
    ; line 2357
    ; line 2358
    %t2274 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2273 = bitcast i8* %t2274 to %T_recs*
    %t2276 = getelementptr inbounds %T_recs, %T_recs* %t2273, i32 0, i32 0
    %t2275 = bitcast i8* %t2276 to i32*
    store i32 2324, i32* %t2275
    ; line 2359
    %t2278 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2277 = bitcast i8* %t2278 to %T_recs*
    %t2280 = getelementptr inbounds %T_recs, %T_recs* %t2277, i32 0, i32 4
    %t2279 = bitcast i8* %t2280 to i8*
    store i8 121, i8* %t2279
    ; line 2360
    %t2282 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 92
    %t2281 = bitcast i8* %t2282 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2281
    ; line 2361
    ; line 2362
    %t2284 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 128
    %t2283 = bitcast i8* %t2284 to i8**
    %t2285 = load i8*, i8** %t2283
    %t2286 = bitcast i8* %t2285 to i32*
    store i32 8454, i32* %t2286
    ; line 2363
    %t2287 = load %T_text, %T_text* @output
    %t2289 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 0
    %t2288 = bitcast i8* %t2289 to i32*
    %t2290 = load i32, i32* %t2288
    call void @_WriteInteger(i8* %t2287, i32 1, i32 0, i32 %t2290)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    %t2292 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 4
    %t2291 = bitcast i8* %t2292 to i1*
    %t2293 = load i1, i1* %t2291
    call void @_WriteBool(i8* %t2287, i32 5, i32 0, i1 %t2293)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    %t2295 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 5
    %t2294 = bitcast i8* %t2295 to i8*
    %t2296 = load i8, i8* %t2294
    call void @_WriteChar(i8* %t2287, i32 1, i32 0, i8 %t2296)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2287, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2287, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    %t2298 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 16
    %t2297 = bitcast i8* %t2298 to i32*
    %t2299 = load i32, i32* %t2297
    call void @_WriteInteger(i8* %t2287, i32 1, i32 0, i32 %t2299)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    %t2301 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 24
    %t2300 = bitcast i8* %t2301 to double*
    %t2302 = load double, double* %t2300
    call void @_WriteReal(i8* %t2287, i32 15, i32 0, double %t2302)
    call void @_WriteChar(i8* %t2287, i32 0, i32 0, i8 32)
    %t2304 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 32
    %t2303 = bitcast i8* %t2304 to %T_string10*
    call void @_WriteString(i8* %t2287, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2303, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2287)
    ; line 2366
    ; line 2366
    %t2305 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2305)
    ; line 2367
    %t2306 = load %T_text, %T_text* @output
    %t2308 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2307 = bitcast i8* %t2308 to %T_recs*
    %t2310 = getelementptr inbounds %T_recs, %T_recs* %t2307, i32 0, i32 0
    %t2309 = bitcast i8* %t2310 to i32*
    %t2311 = load i32, i32* %t2309
    call void @_WriteInteger(i8* %t2306, i32 1, i32 0, i32 %t2311)
    call void @_WriteChar(i8* %t2306, i32 0, i32 0, i8 32)
    %t2313 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2312 = bitcast i8* %t2313 to %T_recs*
    %t2315 = getelementptr inbounds %T_recs, %T_recs* %t2312, i32 0, i32 4
    %t2314 = bitcast i8* %t2315 to i8*
    %t2316 = load i8, i8* %t2314
    call void @_WriteChar(i8* %t2306, i32 1, i32 0, i8 %t2316)
    call void @_WriteLn(i8* %t2306)
    ; line 2368
    ; line 2369
    %t2317 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2317)
    ; line 2370
    %t2318 = load %T_text, %T_text* @output
    %t2320 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 128
    %t2319 = bitcast i8* %t2320 to i8**
    %t2321 = load i8*, i8** %t2319
    %t2322 = bitcast i8* %t2321 to i32*
    %t2323 = load i32, i32* %t2322
    call void @_WriteInteger(i8* %t2318, i32 1, i32 0, i32 %t2323)
    call void @_WriteLn(i8* %t2318)
    ; line 2371
    %t2324 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2324, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2324)
    ; line 2372
    %t2325 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2325, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1058, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t2325)
    ; line 2373
    %t2326 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2326, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1059, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t2326)
    ; line 2374
    %t2327 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2327, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1060, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2327)
    ; line 2375
    %t2328 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2328, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1061, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2328)
    ; line 2376
    %t2329 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2329, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1062, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2329)
    ; line 2379
    %t2330 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2330, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1064, i32 0, i32 0), i32 11)
    ; line 2380
    %t2332 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2331 = bitcast i8* %t2332 to i32*
    store i32 873, i32* %t2331
    ; line 2381
    %t2334 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2333 = bitcast i8* %t2334 to i32*
    store i32 0, i32* %t2333
    ; line 2382
    %t2336 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2335 = bitcast i8* %t2336 to i32*
    store i32 427, i32* %t2335
    ; line 2383
    %t2338 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2337 = bitcast i8* %t2338 to i32*
    store i32 235, i32* %t2337
    ; line 2384
    %t2339 = load %T_text, %T_text* @output
    %t2341 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2340 = bitcast i8* %t2341 to i32*
    %t2342 = load i32, i32* %t2340
    call void @_WriteInteger(i8* %t2339, i32 1, i32 0, i32 %t2342)
    call void @_WriteChar(i8* %t2339, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2339, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2339, i32 0, i32 0, i8 32)
    %t2344 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2343 = bitcast i8* %t2344 to i32*
    %t2345 = load i32, i32* %t2343
    call void @_WriteInteger(i8* %t2339, i32 1, i32 0, i32 %t2345)
    call void @_WriteChar(i8* %t2339, i32 0, i32 0, i8 32)
    %t2347 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2346 = bitcast i8* %t2347 to i32*
    %t2348 = load i32, i32* %t2346
    call void @_WriteInteger(i8* %t2339, i32 1, i32 0, i32 %t2348)
    ; line 2385
    %t2349 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2349, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1065, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t2349)
    ; line 2386
    %t2350 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2350, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1066, i32 0, i32 0), i32 11)
    ; line 2387
    %t2352 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2351 = bitcast i8* %t2352 to i32*
    store i32 873, i32* %t2351
    ; line 2388
    %t2354 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2353 = bitcast i8* %t2354 to i32*
    store i32 1, i32* %t2353
    ; line 2389
    %t2356 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2355 = bitcast i8* %t2356 to i32*
    store i32 427, i32* %t2355
    ; line 2390
    %t2358 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2357 = bitcast i8* %t2358 to i1*
    store i1 1, i1* %t2357
    ; line 2391
    %t2359 = load %T_text, %T_text* @output
    %t2361 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2360 = bitcast i8* %t2361 to i32*
    %t2362 = load i32, i32* %t2360
    call void @_WriteInteger(i8* %t2359, i32 1, i32 0, i32 %t2362)
    call void @_WriteChar(i8* %t2359, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2359, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2359, i32 0, i32 0, i8 32)
    %t2364 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2363 = bitcast i8* %t2364 to i1*
    %t2365 = load i1, i1* %t2363
    call void @_WriteBool(i8* %t2359, i32 5, i32 0, i1 %t2365)
    call void @_WriteChar(i8* %t2359, i32 0, i32 0, i8 32)
    %t2367 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2366 = bitcast i8* %t2367 to i32*
    %t2368 = load i32, i32* %t2366
    call void @_WriteInteger(i8* %t2359, i32 1, i32 0, i32 %t2368)
    ; line 2392
    %t2369 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2369, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1067, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2369)
    ; line 2393
    %t2370 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2370, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1068, i32 0, i32 0), i32 11)
    ; line 2394
    %t2372 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2371 = bitcast i8* %t2372 to i32*
    store i32 873, i32* %t2371
    ; line 2395
    %t2374 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2373 = bitcast i8* %t2374 to i32*
    store i32 2, i32* %t2373
    ; line 2396
    %t2376 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2375 = bitcast i8* %t2376 to i32*
    store i32 427, i32* %t2375
    ; line 2397
    %t2378 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2377 = bitcast i8* %t2378 to i8*
    store i8 102, i8* %t2377
    ; line 2398
    %t2379 = load %T_text, %T_text* @output
    %t2381 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2380 = bitcast i8* %t2381 to i32*
    %t2382 = load i32, i32* %t2380
    call void @_WriteInteger(i8* %t2379, i32 1, i32 0, i32 %t2382)
    call void @_WriteChar(i8* %t2379, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2379, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2379, i32 0, i32 0, i8 32)
    %t2384 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2383 = bitcast i8* %t2384 to i8*
    %t2385 = load i8, i8* %t2383
    call void @_WriteChar(i8* %t2379, i32 0, i32 0, i8 %t2385)
    call void @_WriteChar(i8* %t2379, i32 0, i32 0, i8 32)
    %t2387 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2386 = bitcast i8* %t2387 to i32*
    %t2388 = load i32, i32* %t2386
    call void @_WriteInteger(i8* %t2379, i32 1, i32 0, i32 %t2388)
    ; line 2399
    %t2389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2389, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1069, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2389)
    ; line 2400
    %t2390 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2390, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1070, i32 0, i32 0), i32 11)
    ; line 2401
    %t2392 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2391 = bitcast i8* %t2392 to i32*
    store i32 873, i32* %t2391
    ; line 2402
    %t2394 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2393 = bitcast i8* %t2394 to i32*
    store i32 3, i32* %t2393
    ; line 2403
    %t2396 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2395 = bitcast i8* %t2396 to i32*
    store i32 427, i32* %t2395
    ; line 2404
    %t2398 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2397 = bitcast i8* %t2398 to i32*
    store i32 8, i32* %t2397
    ; line 2405
    %t2399 = load %T_text, %T_text* @output
    %t2401 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2400 = bitcast i8* %t2401 to i32*
    %t2402 = load i32, i32* %t2400
    call void @_WriteInteger(i8* %t2399, i32 1, i32 0, i32 %t2402)
    call void @_WriteChar(i8* %t2399, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2399, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2399, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2399, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2399, i32 0, i32 0, i8 32)
    %t2404 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2403 = bitcast i8* %t2404 to i32*
    %t2405 = load i32, i32* %t2403
    call void @_WriteInteger(i8* %t2399, i32 1, i32 0, i32 %t2405)
    ; line 2406
    %t2406 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2406, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1071, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2406)
    ; line 2407
    %t2407 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2407, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1072, i32 0, i32 0), i32 11)
    ; line 2408
    %t2409 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2408 = bitcast i8* %t2409 to i32*
    store i32 873, i32* %t2408
    ; line 2409
    %t2411 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2410 = bitcast i8* %t2411 to i32*
    store i32 4, i32* %t2410
    ; line 2410
    %t2413 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2412 = bitcast i8* %t2413 to i32*
    store i32 427, i32* %t2412
    ; line 2411
    %t2415 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2414 = bitcast i8* %t2415 to i32*
    store i32 3, i32* %t2414
    ; line 2412
    %t2416 = load %T_text, %T_text* @output
    %t2418 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2417 = bitcast i8* %t2418 to i32*
    %t2419 = load i32, i32* %t2417
    call void @_WriteInteger(i8* %t2416, i32 1, i32 0, i32 %t2419)
    call void @_WriteChar(i8* %t2416, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2416, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2416, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2416, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2416, i32 0, i32 0, i8 32)
    %t2421 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2420 = bitcast i8* %t2421 to i32*
    %t2422 = load i32, i32* %t2420
    call void @_WriteInteger(i8* %t2416, i32 1, i32 0, i32 %t2422)
    ; line 2413
    %t2423 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2423, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1073, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2423)
    ; line 2414
    %t2424 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2424, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1074, i32 0, i32 0), i32 11)
    ; line 2415
    %t2426 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2425 = bitcast i8* %t2426 to i32*
    store i32 873, i32* %t2425
    ; line 2416
    %t2428 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2427 = bitcast i8* %t2428 to i32*
    store i32 5, i32* %t2427
    ; line 2417
    %t2430 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2429 = bitcast i8* %t2430 to i32*
    store i32 427, i32* %t2429
    ; line 2418
    %t2432 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2431 = bitcast i8* %t2432 to i32*
    store i32 12, i32* %t2431
    ; line 2419
    %t2433 = load %T_text, %T_text* @output
    %t2435 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2434 = bitcast i8* %t2435 to i32*
    %t2436 = load i32, i32* %t2434
    call void @_WriteInteger(i8* %t2433, i32 1, i32 0, i32 %t2436)
    call void @_WriteChar(i8* %t2433, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2433, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2433, i32 0, i32 0, i8 32)
    %t2438 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2437 = bitcast i8* %t2438 to i32*
    %t2439 = load i32, i32* %t2437
    call void @_WriteInteger(i8* %t2433, i32 1, i32 0, i32 %t2439)
    call void @_WriteChar(i8* %t2433, i32 0, i32 0, i8 32)
    %t2441 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2440 = bitcast i8* %t2441 to i32*
    %t2442 = load i32, i32* %t2440
    call void @_WriteInteger(i8* %t2433, i32 1, i32 0, i32 %t2442)
    ; line 2420
    %t2443 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2443, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1075, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2443)
    ; line 2421
    %t2444 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2444, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1076, i32 0, i32 0), i32 11)
    ; line 2422
    %t2446 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2445 = bitcast i8* %t2446 to i32*
    store i32 873, i32* %t2445
    ; line 2423
    %t2448 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2447 = bitcast i8* %t2448 to i32*
    store i32 6, i32* %t2447
    ; line 2424
    %t2450 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2449 = bitcast i8* %t2450 to i32*
    store i32 427, i32* %t2449
    ; line 2425
    %t2452 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2451 = bitcast i8* %t2452 to double*
    store double 8734.84, double* %t2451
    ; line 2426
    %t2453 = load %T_text, %T_text* @output
    %t2455 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2454 = bitcast i8* %t2455 to i32*
    %t2456 = load i32, i32* %t2454
    call void @_WriteInteger(i8* %t2453, i32 1, i32 0, i32 %t2456)
    call void @_WriteChar(i8* %t2453, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2453, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2453, i32 0, i32 0, i8 32)
    %t2458 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2457 = bitcast i8* %t2458 to double*
    %t2459 = load double, double* %t2457
    call void @_WriteReal(i8* %t2453, i32 1, i32 4, double %t2459)
    call void @_WriteChar(i8* %t2453, i32 0, i32 0, i8 32)
    %t2461 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2460 = bitcast i8* %t2461 to i32*
    %t2462 = load i32, i32* %t2460
    call void @_WriteInteger(i8* %t2453, i32 1, i32 0, i32 %t2462)
    ; line 2427
    %t2463 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2463, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1077, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t2463)
    ; line 2428
    %t2464 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2464, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1078, i32 0, i32 0), i32 11)
    ; line 2429
    %t2466 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2465 = bitcast i8* %t2466 to i32*
    store i32 873, i32* %t2465
    ; line 2430
    %t2468 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2467 = bitcast i8* %t2468 to i32*
    store i32 7, i32* %t2467
    ; line 2431
    %t2470 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 20
    %t2469 = bitcast i8* %t2470 to i32*
    store i32 427, i32* %t2469
    ; line 2432
    %t2472 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2471 = bitcast i8* %t2472 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1079, i32 0, i32 0), %T_string10* %t2471
    ; line 2433
    %t2473 = load %T_text, %T_text* @output
    %t2475 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2474 = bitcast i8* %t2475 to i32*
    %t2476 = load i32, i32* %t2474
    call void @_WriteInteger(i8* %t2473, i32 1, i32 0, i32 %t2476)
    call void @_WriteChar(i8* %t2473, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2473, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2473, i32 0, i32 0, i8 32)
    %t2478 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2477 = bitcast i8* %t2478 to %T_string10*
    call void @_WriteString(i8* %t2473, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2477, i32 0, i32 0), i32 10)
    call void @_WriteChar(i8* %t2473, i32 0, i32 0, i8 32)
    %t2480 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 20
    %t2479 = bitcast i8* %t2480 to i32*
    %t2481 = load i32, i32* %t2479
    call void @_WriteInteger(i8* %t2473, i32 1, i32 0, i32 %t2481)
    ; line 2434
    %t2482 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2482, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1080, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2482)
    ; line 2435
    %t2483 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2483, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1081, i32 0, i32 0), i32 11)
    ; line 2436
    %t2485 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2484 = bitcast i8* %t2485 to i32*
    store i32 873, i32* %t2484
    ; line 2437
    %t2487 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2486 = bitcast i8* %t2487 to i32*
    store i32 8, i32* %t2486
    ; line 2438
    %t2489 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 48
    %t2488 = bitcast i8* %t2489 to i32*
    store i32 427, i32* %t2488
    ; line 2439
    ; line 2440
    %t2490 = load %T_text, %T_text* @output
    %t2492 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2491 = bitcast i8* %t2492 to i32*
    %t2493 = load i32, i32* %t2491
    call void @_WriteInteger(i8* %t2490, i32 1, i32 0, i32 %t2493)
    call void @_WriteChar(i8* %t2490, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2490, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2490, i32 0, i32 0, i8 32)
    ; line 2441
    ; line 2442
    %t2494 = load %T_text, %T_text* @output
    %t2496 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 48
    %t2495 = bitcast i8* %t2496 to i32*
    %t2497 = load i32, i32* %t2495
    call void @_WriteInteger(i8* %t2494, i32 1, i32 0, i32 %t2497)
    call void @_WriteLn(i8* %t2494)
    ; line 2443
    %t2498 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2498, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1082, i32 0, i32 0), i32 51)
    call void @_WriteLn(i8* %t2498)
    ; line 2444
    %t2499 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2499, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1083, i32 0, i32 0), i32 11)
    ; line 2445
    %t2501 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2500 = bitcast i8* %t2501 to i32*
    store i32 873, i32* %t2500
    ; line 2446
    %t2503 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2502 = bitcast i8* %t2503 to i32*
    store i32 9, i32* %t2502
    ; line 2447
    %t2505 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2504 = bitcast i8* %t2505 to i32*
    store i32 427, i32* %t2504
    ; line 2448
    %t2507 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2506 = bitcast i8* %t2507 to %T_recs*
    %t2509 = getelementptr inbounds %T_recs, %T_recs* %t2506, i32 0, i32 0
    %t2508 = bitcast i8* %t2509 to i32*
    store i32 2387, i32* %t2508
    ; line 2449
    %t2511 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2510 = bitcast i8* %t2511 to %T_recs*
    %t2513 = getelementptr inbounds %T_recs, %T_recs* %t2510, i32 0, i32 4
    %t2512 = bitcast i8* %t2513 to i8*
    store i8 116, i8* %t2512
    ; line 2450
    %t2514 = load %T_text, %T_text* @output
    %t2516 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2515 = bitcast i8* %t2516 to i32*
    %t2517 = load i32, i32* %t2515
    call void @_WriteInteger(i8* %t2514, i32 1, i32 0, i32 %t2517)
    call void @_WriteChar(i8* %t2514, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2514, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2514, i32 0, i32 0, i8 32)
    %t2519 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2518 = bitcast i8* %t2519 to %T_recs*
    %t2521 = getelementptr inbounds %T_recs, %T_recs* %t2518, i32 0, i32 0
    %t2520 = bitcast i8* %t2521 to i32*
    %t2522 = load i32, i32* %t2520
    call void @_WriteInteger(i8* %t2514, i32 1, i32 0, i32 %t2522)
    call void @_WriteChar(i8* %t2514, i32 0, i32 0, i8 32)
    %t2524 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2523 = bitcast i8* %t2524 to %T_recs*
    %t2526 = getelementptr inbounds %T_recs, %T_recs* %t2523, i32 0, i32 4
    %t2525 = bitcast i8* %t2526 to i8*
    %t2527 = load i8, i8* %t2525
    call void @_WriteChar(i8* %t2514, i32 0, i32 0, i8 %t2527)
    call void @_WriteChar(i8* %t2514, i32 0, i32 0, i8 32)
    %t2529 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2528 = bitcast i8* %t2529 to i32*
    %t2530 = load i32, i32* %t2528
    call void @_WriteInteger(i8* %t2514, i32 1, i32 0, i32 %t2530)
    ; line 2452
    %t2531 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2531, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1084, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2531)
    ; line 2453
    %t2532 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2532, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1085, i32 0, i32 0), i32 11)
    ; line 2454
    %t2534 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2533 = bitcast i8* %t2534 to i32*
    store i32 873, i32* %t2533
    ; line 2455
    %t2536 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2535 = bitcast i8* %t2536 to i32*
    store i32 10, i32* %t2535
    ; line 2456
    %t2538 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 40
    %t2537 = bitcast i8* %t2538 to i32*
    store i32 427, i32* %t2537
    ; line 2457
    %t2540 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2539 = bitcast i8* %t2540 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2539
    ; line 2458
    %t2541 = load %T_text, %T_text* @output
    %t2543 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2542 = bitcast i8* %t2543 to i32*
    %t2544 = load i32, i32* %t2542
    call void @_WriteInteger(i8* %t2541, i32 1, i32 0, i32 %t2544)
    call void @_WriteChar(i8* %t2541, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2541, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2541, i32 0, i32 0, i8 32)
    ; line 2459
    ; line 2460
    %t2545 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t2545, i32 0, i32 0, i8 32)
    %t2547 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 40
    %t2546 = bitcast i8* %t2547 to i32*
    %t2548 = load i32, i32* %t2546
    call void @_WriteInteger(i8* %t2545, i32 1, i32 0, i32 %t2548)
    call void @_WriteLn(i8* %t2545)
    ; line 2461
    %t2549 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2549, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1086, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2549)
    ; line 2462
    %t2550 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2550, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1087, i32 0, i32 0), i32 11)
    ; line 2463
    %t2552 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2551 = bitcast i8* %t2552 to i32*
    store i32 873, i32* %t2551
    ; line 2464
    %t2554 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2553 = bitcast i8* %t2554 to i32*
    store i32 11, i32* %t2553
    ; line 2465
    %t2556 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2555 = bitcast i8* %t2556 to i32*
    store i32 427, i32* %t2555
    ; line 2466
    ; line 2467
    %t2558 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2557 = bitcast i8* %t2558 to i8**
    %t2559 = load i8*, i8** %t2557
    %t2560 = bitcast i8* %t2559 to i32*
    store i32 2394, i32* %t2560
    ; line 2468
    %t2561 = load %T_text, %T_text* @output
    %t2563 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2562 = bitcast i8* %t2563 to i32*
    %t2564 = load i32, i32* %t2562
    call void @_WriteInteger(i8* %t2561, i32 1, i32 0, i32 %t2564)
    call void @_WriteChar(i8* %t2561, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2561, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2561, i32 0, i32 0, i8 32)
    %t2566 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2565 = bitcast i8* %t2566 to i8**
    %t2567 = load i8*, i8** %t2565
    %t2568 = bitcast i8* %t2567 to i32*
    %t2569 = load i32, i32* %t2568
    call void @_WriteInteger(i8* %t2561, i32 1, i32 0, i32 %t2569)
    call void @_WriteChar(i8* %t2561, i32 0, i32 0, i8 32)
    %t2571 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2570 = bitcast i8* %t2571 to i32*
    %t2572 = load i32, i32* %t2570
    call void @_WriteInteger(i8* %t2561, i32 1, i32 0, i32 %t2572)
    ; line 2469
    %t2573 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2573, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1088, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2573)
    ; line 2472
    %t2574 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2574, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1089, i32 0, i32 0), i32 11)
    ; line 2473
    %t2576 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2575 = bitcast i8* %t2576 to i32*
    store i32 10, i32* %t2575
    ; line 2474
    %t2578 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2577 = bitcast i8* %t2578 to i32*
    store i32 2343, i32* %t2577
    ; line 2475
    %t2579 = load %T_text, %T_text* @output
    %t2581 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2580 = bitcast i8* %t2581 to i32*
    %t2582 = load i32, i32* %t2580
    call void @_WriteInteger(i8* %t2579, i32 1, i32 0, i32 %t2582)
    call void @_WriteChar(i8* %t2579, i32 0, i32 0, i8 32)
    %t2584 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2583 = bitcast i8* %t2584 to i32*
    %t2585 = load i32, i32* %t2583
    call void @_WriteInteger(i8* %t2579, i32 1, i32 0, i32 %t2585)
    ; line 2476
    %t2586 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2586, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1090, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2586)
    ; line 2477
    %t2587 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2587, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1091, i32 0, i32 0), i32 11)
    ; line 2478
    %t2589 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2588 = bitcast i8* %t2589 to i32*
    store i32 19, i32* %t2588
    ; line 2479
    %t2591 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2590 = bitcast i8* %t2591 to i1*
    store i1 1, i1* %t2590
    ; line 2480
    %t2592 = load %T_text, %T_text* @output
    %t2594 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2593 = bitcast i8* %t2594 to i32*
    %t2595 = load i32, i32* %t2593
    call void @_WriteInteger(i8* %t2592, i32 1, i32 0, i32 %t2595)
    call void @_WriteChar(i8* %t2592, i32 0, i32 0, i8 32)
    %t2597 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2596 = bitcast i8* %t2597 to i1*
    %t2598 = load i1, i1* %t2596
    call void @_WriteBool(i8* %t2592, i32 5, i32 0, i1 %t2598)
    ; line 2481
    %t2599 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2599, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1092, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2599)
    ; line 2482
    %t2600 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2600, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1093, i32 0, i32 0), i32 11)
    ; line 2483
    %t2602 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2601 = bitcast i8* %t2602 to i1*
    store i1 1, i1* %t2601
    ; line 2484
    %t2604 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 4
    %t2603 = bitcast i8* %t2604 to i32*
    store i32 2343, i32* %t2603
    ; line 2485
    %t2605 = load %T_text, %T_text* @output
    %t2607 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2606 = bitcast i8* %t2607 to i1*
    %t2608 = load i1, i1* %t2606
    call void @_WriteBool(i8* %t2605, i32 5, i32 0, i1 %t2608)
    call void @_WriteChar(i8* %t2605, i32 0, i32 0, i8 32)
    %t2610 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 4
    %t2609 = bitcast i8* %t2610 to i32*
    %t2611 = load i32, i32* %t2609
    call void @_WriteInteger(i8* %t2605, i32 1, i32 0, i32 %t2611)
    ; line 2486
    %t2612 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2612, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1094, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2612)
    ; line 2487
    %t2613 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2613, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1095, i32 0, i32 0), i32 11)
    ; line 2488
    %t2615 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2614 = bitcast i8* %t2615 to i1*
    store i1 0, i1* %t2614
    ; line 2489
    %t2617 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 1
    %t2616 = bitcast i8* %t2617 to i1*
    store i1 1, i1* %t2616
    ; line 2490
    %t2618 = load %T_text, %T_text* @output
    %t2620 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2619 = bitcast i8* %t2620 to i1*
    %t2621 = load i1, i1* %t2619
    call void @_WriteBool(i8* %t2618, i32 5, i32 0, i1 %t2621)
    call void @_WriteChar(i8* %t2618, i32 0, i32 0, i8 32)
    %t2623 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 1
    %t2622 = bitcast i8* %t2623 to i1*
    %t2624 = load i1, i1* %t2622
    call void @_WriteBool(i8* %t2618, i32 5, i32 0, i1 %t2624)
    ; line 2491
    %t2625 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2625, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1096, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2625)
    ; line 2492
    %t2626 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2626, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1097, i32 0, i32 0), i32 11)
    ; line 2493
    %t2628 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 0
    %t2627 = bitcast i8* %t2628 to i32*
    store i32 2, i32* %t2627
    ; line 2494
    %t2630 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2629 = bitcast i8* %t2630 to i32*
    store i32 2343, i32* %t2629
    ; line 2495
    %t2631 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2631, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2631, i32 0, i32 0, i8 32)
    %t2633 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2632 = bitcast i8* %t2633 to i32*
    %t2634 = load i32, i32* %t2632
    call void @_WriteInteger(i8* %t2631, i32 1, i32 0, i32 %t2634)
    ; line 2496
    %t2635 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2635, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1098, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2635)
    ; line 2497
    %t2636 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2636, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1099, i32 0, i32 0), i32 11)
    ; line 2498
    %t2638 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 0
    %t2637 = bitcast i8* %t2638 to i32*
    store i32 7, i32* %t2637
    ; line 2499
    %t2640 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2639 = bitcast i8* %t2640 to i1*
    store i1 1, i1* %t2639
    ; line 2500
    %t2641 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2641, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2641, i32 0, i32 0, i8 32)
    %t2643 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2642 = bitcast i8* %t2643 to i1*
    %t2644 = load i1, i1* %t2642
    call void @_WriteBool(i8* %t2641, i32 5, i32 0, i1 %t2644)
    ; line 2501
    %t2645 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2645, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1100, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2645)
    ; line 2502
    %t2646 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2646, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1101, i32 0, i32 0), i32 11)
    ; line 2503
    %t2648 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 0
    %t2647 = bitcast i8* %t2648 to i32*
    store i32 3, i32* %t2647
    ; line 2504
    %t2650 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2649 = bitcast i8* %t2650 to i32*
    store i32 2343, i32* %t2649
    ; line 2505
    %t2651 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2651, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2651, i32 0, i32 0, i8 32)
    %t2653 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2652 = bitcast i8* %t2653 to i32*
    %t2654 = load i32, i32* %t2652
    call void @_WriteInteger(i8* %t2651, i32 1, i32 0, i32 %t2654)
    ; line 2506
    %t2655 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2655, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1102, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2655)
    ; line 2507
    %t2656 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2656, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1103, i32 0, i32 0), i32 11)
    ; line 2508
    %t2658 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 0
    %t2657 = bitcast i8* %t2658 to i32*
    store i32 4, i32* %t2657
    ; line 2509
    %t2660 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2659 = bitcast i8* %t2660 to i1*
    store i1 1, i1* %t2659
    ; line 2510
    %t2661 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2661, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t2661, i32 0, i32 0, i8 32)
    %t2663 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2662 = bitcast i8* %t2663 to i1*
    %t2664 = load i1, i1* %t2662
    call void @_WriteBool(i8* %t2661, i32 5, i32 0, i1 %t2664)
    ; line 2511
    %t2665 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2665, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1104, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2665)
    ; line 2514
    %t2666 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2666, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1105, i32 0, i32 0), i32 11)
    ; line 2515
    %t2668 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2667 = bitcast i8* %t2668 to i32*
    store i32 1, i32* %t2667
    ; line 2516
    %t2670 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2669 = bitcast i8* %t2670 to %T_record_50*
    %t2672 = getelementptr inbounds %T_record_50, %T_record_50* %t2669, i32 0, i32 0
    %t2671 = bitcast i8* %t2672 to i32*
    store i32 2, i32* %t2671
    ; line 2517
    %t2674 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2673 = bitcast i8* %t2674 to %T_record_50*
    %t2676 = getelementptr inbounds %T_record_50, %T_record_50* %t2673, i32 0, i32 4
    %t2675 = bitcast i8* %t2676 to %T_record_51*
    %t2678 = getelementptr inbounds %T_record_51, %T_record_51* %t2675, i32 0, i32 0
    %t2677 = bitcast i8* %t2678 to i32*
    store i32 3, i32* %t2677
    ; line 2518
    %t2680 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2679 = bitcast i8* %t2680 to %T_record_50*
    %t2682 = getelementptr inbounds %T_record_50, %T_record_50* %t2679, i32 0, i32 4
    %t2681 = bitcast i8* %t2682 to %T_record_51*
    %t2684 = getelementptr inbounds %T_record_51, %T_record_51* %t2681, i32 0, i32 4
    %t2683 = bitcast i8* %t2684 to %T_record_52*
    %t2686 = getelementptr inbounds %T_record_52, %T_record_52* %t2683, i32 0, i32 0
    %t2685 = bitcast i8* %t2686 to i32*
    store i32 4, i32* %t2685
    ; line 2519
    %t2688 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2687 = bitcast i8* %t2688 to %T_record_50*
    %t2690 = getelementptr inbounds %T_record_50, %T_record_50* %t2687, i32 0, i32 4
    %t2689 = bitcast i8* %t2690 to %T_record_51*
    %t2692 = getelementptr inbounds %T_record_51, %T_record_51* %t2689, i32 0, i32 4
    %t2691 = bitcast i8* %t2692 to %T_record_52*
    %t2694 = getelementptr inbounds %T_record_52, %T_record_52* %t2691, i32 0, i32 4
    %t2693 = bitcast i8* %t2694 to %T_record_53*
    %t2696 = getelementptr inbounds %T_record_53, %T_record_53* %t2693, i32 0, i32 0
    %t2695 = bitcast i8* %t2696 to i32*
    store i32 5, i32* %t2695
    ; line 2520
    %t2698 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2697 = bitcast i8* %t2698 to %T_record_50*
    %t2700 = getelementptr inbounds %T_record_50, %T_record_50* %t2697, i32 0, i32 4
    %t2699 = bitcast i8* %t2700 to %T_record_51*
    %t2702 = getelementptr inbounds %T_record_51, %T_record_51* %t2699, i32 0, i32 4
    %t2701 = bitcast i8* %t2702 to %T_record_52*
    %t2704 = getelementptr inbounds %T_record_52, %T_record_52* %t2701, i32 0, i32 4
    %t2703 = bitcast i8* %t2704 to %T_record_53*
    %t2706 = getelementptr inbounds %T_record_53, %T_record_53* %t2703, i32 0, i32 4
    %t2705 = bitcast i8* %t2706 to %T_record_54*
    %t2708 = getelementptr inbounds %T_record_54, %T_record_54* %t2705, i32 0, i32 0
    %t2707 = bitcast i8* %t2708 to i32*
    store i32 6, i32* %t2707
    ; line 2521
    %t2710 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2709 = bitcast i8* %t2710 to %T_record_50*
    %t2712 = getelementptr inbounds %T_record_50, %T_record_50* %t2709, i32 0, i32 4
    %t2711 = bitcast i8* %t2712 to %T_record_51*
    %t2714 = getelementptr inbounds %T_record_51, %T_record_51* %t2711, i32 0, i32 4
    %t2713 = bitcast i8* %t2714 to %T_record_52*
    %t2716 = getelementptr inbounds %T_record_52, %T_record_52* %t2713, i32 0, i32 4
    %t2715 = bitcast i8* %t2716 to %T_record_53*
    %t2718 = getelementptr inbounds %T_record_53, %T_record_53* %t2715, i32 0, i32 4
    %t2717 = bitcast i8* %t2718 to %T_record_54*
    %t2720 = getelementptr inbounds %T_record_54, %T_record_54* %t2717, i32 0, i32 4
    %t2719 = bitcast i8* %t2720 to %T_record_55*
    %t2722 = getelementptr inbounds %T_record_55, %T_record_55* %t2719, i32 0, i32 0
    %t2721 = bitcast i8* %t2722 to i32*
    store i32 7, i32* %t2721
    ; line 2522
    %t2724 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2723 = bitcast i8* %t2724 to %T_record_50*
    %t2726 = getelementptr inbounds %T_record_50, %T_record_50* %t2723, i32 0, i32 4
    %t2725 = bitcast i8* %t2726 to %T_record_51*
    %t2728 = getelementptr inbounds %T_record_51, %T_record_51* %t2725, i32 0, i32 4
    %t2727 = bitcast i8* %t2728 to %T_record_52*
    %t2730 = getelementptr inbounds %T_record_52, %T_record_52* %t2727, i32 0, i32 4
    %t2729 = bitcast i8* %t2730 to %T_record_53*
    %t2732 = getelementptr inbounds %T_record_53, %T_record_53* %t2729, i32 0, i32 4
    %t2731 = bitcast i8* %t2732 to %T_record_54*
    %t2734 = getelementptr inbounds %T_record_54, %T_record_54* %t2731, i32 0, i32 4
    %t2733 = bitcast i8* %t2734 to %T_record_55*
    %t2736 = getelementptr inbounds %T_record_55, %T_record_55* %t2733, i32 0, i32 4
    %t2735 = bitcast i8* %t2736 to %T_record_56*
    %t2738 = getelementptr inbounds %T_record_56, %T_record_56* %t2735, i32 0, i32 0
    %t2737 = bitcast i8* %t2738 to i32*
    store i32 8, i32* %t2737
    ; line 2523
    %t2740 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2739 = bitcast i8* %t2740 to %T_record_50*
    %t2742 = getelementptr inbounds %T_record_50, %T_record_50* %t2739, i32 0, i32 4
    %t2741 = bitcast i8* %t2742 to %T_record_51*
    %t2744 = getelementptr inbounds %T_record_51, %T_record_51* %t2741, i32 0, i32 4
    %t2743 = bitcast i8* %t2744 to %T_record_52*
    %t2746 = getelementptr inbounds %T_record_52, %T_record_52* %t2743, i32 0, i32 4
    %t2745 = bitcast i8* %t2746 to %T_record_53*
    %t2748 = getelementptr inbounds %T_record_53, %T_record_53* %t2745, i32 0, i32 4
    %t2747 = bitcast i8* %t2748 to %T_record_54*
    %t2750 = getelementptr inbounds %T_record_54, %T_record_54* %t2747, i32 0, i32 4
    %t2749 = bitcast i8* %t2750 to %T_record_55*
    %t2752 = getelementptr inbounds %T_record_55, %T_record_55* %t2749, i32 0, i32 4
    %t2751 = bitcast i8* %t2752 to %T_record_56*
    %t2754 = getelementptr inbounds %T_record_56, %T_record_56* %t2751, i32 0, i32 4
    %t2753 = bitcast i8* %t2754 to %T_record_57*
    %t2756 = getelementptr inbounds %T_record_57, %T_record_57* %t2753, i32 0, i32 0
    %t2755 = bitcast i8* %t2756 to i32*
    store i32 9, i32* %t2755
    ; line 2524
    %t2758 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2757 = bitcast i8* %t2758 to %T_record_50*
    %t2760 = getelementptr inbounds %T_record_50, %T_record_50* %t2757, i32 0, i32 4
    %t2759 = bitcast i8* %t2760 to %T_record_51*
    %t2762 = getelementptr inbounds %T_record_51, %T_record_51* %t2759, i32 0, i32 4
    %t2761 = bitcast i8* %t2762 to %T_record_52*
    %t2764 = getelementptr inbounds %T_record_52, %T_record_52* %t2761, i32 0, i32 4
    %t2763 = bitcast i8* %t2764 to %T_record_53*
    %t2766 = getelementptr inbounds %T_record_53, %T_record_53* %t2763, i32 0, i32 4
    %t2765 = bitcast i8* %t2766 to %T_record_54*
    %t2768 = getelementptr inbounds %T_record_54, %T_record_54* %t2765, i32 0, i32 4
    %t2767 = bitcast i8* %t2768 to %T_record_55*
    %t2770 = getelementptr inbounds %T_record_55, %T_record_55* %t2767, i32 0, i32 4
    %t2769 = bitcast i8* %t2770 to %T_record_56*
    %t2772 = getelementptr inbounds %T_record_56, %T_record_56* %t2769, i32 0, i32 4
    %t2771 = bitcast i8* %t2772 to %T_record_57*
    %t2774 = getelementptr inbounds %T_record_57, %T_record_57* %t2771, i32 0, i32 4
    %t2773 = bitcast i8* %t2774 to %T_record_58*
    %t2776 = getelementptr inbounds %T_record_58, %T_record_58* %t2773, i32 0, i32 0
    %t2775 = bitcast i8* %t2776 to i32*
    store i32 10, i32* %t2775
    ; line 2525
    %t2777 = load %T_text, %T_text* @output
    %t2779 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2778 = bitcast i8* %t2779 to i32*
    %t2780 = load i32, i32* %t2778
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2780)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2782 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2781 = bitcast i8* %t2782 to %T_record_50*
    %t2784 = getelementptr inbounds %T_record_50, %T_record_50* %t2781, i32 0, i32 0
    %t2783 = bitcast i8* %t2784 to i32*
    %t2785 = load i32, i32* %t2783
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2785)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2787 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2786 = bitcast i8* %t2787 to %T_record_50*
    %t2789 = getelementptr inbounds %T_record_50, %T_record_50* %t2786, i32 0, i32 4
    %t2788 = bitcast i8* %t2789 to %T_record_51*
    %t2791 = getelementptr inbounds %T_record_51, %T_record_51* %t2788, i32 0, i32 0
    %t2790 = bitcast i8* %t2791 to i32*
    %t2792 = load i32, i32* %t2790
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2792)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2794 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2793 = bitcast i8* %t2794 to %T_record_50*
    %t2796 = getelementptr inbounds %T_record_50, %T_record_50* %t2793, i32 0, i32 4
    %t2795 = bitcast i8* %t2796 to %T_record_51*
    %t2798 = getelementptr inbounds %T_record_51, %T_record_51* %t2795, i32 0, i32 4
    %t2797 = bitcast i8* %t2798 to %T_record_52*
    %t2800 = getelementptr inbounds %T_record_52, %T_record_52* %t2797, i32 0, i32 0
    %t2799 = bitcast i8* %t2800 to i32*
    %t2801 = load i32, i32* %t2799
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2801)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2803 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2802 = bitcast i8* %t2803 to %T_record_50*
    %t2805 = getelementptr inbounds %T_record_50, %T_record_50* %t2802, i32 0, i32 4
    %t2804 = bitcast i8* %t2805 to %T_record_51*
    %t2807 = getelementptr inbounds %T_record_51, %T_record_51* %t2804, i32 0, i32 4
    %t2806 = bitcast i8* %t2807 to %T_record_52*
    %t2809 = getelementptr inbounds %T_record_52, %T_record_52* %t2806, i32 0, i32 4
    %t2808 = bitcast i8* %t2809 to %T_record_53*
    %t2811 = getelementptr inbounds %T_record_53, %T_record_53* %t2808, i32 0, i32 0
    %t2810 = bitcast i8* %t2811 to i32*
    %t2812 = load i32, i32* %t2810
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2812)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2814 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2813 = bitcast i8* %t2814 to %T_record_50*
    %t2816 = getelementptr inbounds %T_record_50, %T_record_50* %t2813, i32 0, i32 4
    %t2815 = bitcast i8* %t2816 to %T_record_51*
    %t2818 = getelementptr inbounds %T_record_51, %T_record_51* %t2815, i32 0, i32 4
    %t2817 = bitcast i8* %t2818 to %T_record_52*
    %t2820 = getelementptr inbounds %T_record_52, %T_record_52* %t2817, i32 0, i32 4
    %t2819 = bitcast i8* %t2820 to %T_record_53*
    %t2822 = getelementptr inbounds %T_record_53, %T_record_53* %t2819, i32 0, i32 4
    %t2821 = bitcast i8* %t2822 to %T_record_54*
    %t2824 = getelementptr inbounds %T_record_54, %T_record_54* %t2821, i32 0, i32 0
    %t2823 = bitcast i8* %t2824 to i32*
    %t2825 = load i32, i32* %t2823
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2825)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
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
    %t2839 = getelementptr inbounds %T_record_55, %T_record_55* %t2836, i32 0, i32 0
    %t2838 = bitcast i8* %t2839 to i32*
    %t2840 = load i32, i32* %t2838
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2840)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2842 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2841 = bitcast i8* %t2842 to %T_record_50*
    %t2844 = getelementptr inbounds %T_record_50, %T_record_50* %t2841, i32 0, i32 4
    %t2843 = bitcast i8* %t2844 to %T_record_51*
    %t2846 = getelementptr inbounds %T_record_51, %T_record_51* %t2843, i32 0, i32 4
    %t2845 = bitcast i8* %t2846 to %T_record_52*
    %t2848 = getelementptr inbounds %T_record_52, %T_record_52* %t2845, i32 0, i32 4
    %t2847 = bitcast i8* %t2848 to %T_record_53*
    %t2850 = getelementptr inbounds %T_record_53, %T_record_53* %t2847, i32 0, i32 4
    %t2849 = bitcast i8* %t2850 to %T_record_54*
    %t2852 = getelementptr inbounds %T_record_54, %T_record_54* %t2849, i32 0, i32 4
    %t2851 = bitcast i8* %t2852 to %T_record_55*
    %t2854 = getelementptr inbounds %T_record_55, %T_record_55* %t2851, i32 0, i32 4
    %t2853 = bitcast i8* %t2854 to %T_record_56*
    %t2856 = getelementptr inbounds %T_record_56, %T_record_56* %t2853, i32 0, i32 0
    %t2855 = bitcast i8* %t2856 to i32*
    %t2857 = load i32, i32* %t2855
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2857)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2859 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2858 = bitcast i8* %t2859 to %T_record_50*
    %t2861 = getelementptr inbounds %T_record_50, %T_record_50* %t2858, i32 0, i32 4
    %t2860 = bitcast i8* %t2861 to %T_record_51*
    %t2863 = getelementptr inbounds %T_record_51, %T_record_51* %t2860, i32 0, i32 4
    %t2862 = bitcast i8* %t2863 to %T_record_52*
    %t2865 = getelementptr inbounds %T_record_52, %T_record_52* %t2862, i32 0, i32 4
    %t2864 = bitcast i8* %t2865 to %T_record_53*
    %t2867 = getelementptr inbounds %T_record_53, %T_record_53* %t2864, i32 0, i32 4
    %t2866 = bitcast i8* %t2867 to %T_record_54*
    %t2869 = getelementptr inbounds %T_record_54, %T_record_54* %t2866, i32 0, i32 4
    %t2868 = bitcast i8* %t2869 to %T_record_55*
    %t2871 = getelementptr inbounds %T_record_55, %T_record_55* %t2868, i32 0, i32 4
    %t2870 = bitcast i8* %t2871 to %T_record_56*
    %t2873 = getelementptr inbounds %T_record_56, %T_record_56* %t2870, i32 0, i32 4
    %t2872 = bitcast i8* %t2873 to %T_record_57*
    %t2875 = getelementptr inbounds %T_record_57, %T_record_57* %t2872, i32 0, i32 0
    %t2874 = bitcast i8* %t2875 to i32*
    %t2876 = load i32, i32* %t2874
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2876)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    %t2878 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2877 = bitcast i8* %t2878 to %T_record_50*
    %t2880 = getelementptr inbounds %T_record_50, %T_record_50* %t2877, i32 0, i32 4
    %t2879 = bitcast i8* %t2880 to %T_record_51*
    %t2882 = getelementptr inbounds %T_record_51, %T_record_51* %t2879, i32 0, i32 4
    %t2881 = bitcast i8* %t2882 to %T_record_52*
    %t2884 = getelementptr inbounds %T_record_52, %T_record_52* %t2881, i32 0, i32 4
    %t2883 = bitcast i8* %t2884 to %T_record_53*
    %t2886 = getelementptr inbounds %T_record_53, %T_record_53* %t2883, i32 0, i32 4
    %t2885 = bitcast i8* %t2886 to %T_record_54*
    %t2888 = getelementptr inbounds %T_record_54, %T_record_54* %t2885, i32 0, i32 4
    %t2887 = bitcast i8* %t2888 to %T_record_55*
    %t2890 = getelementptr inbounds %T_record_55, %T_record_55* %t2887, i32 0, i32 4
    %t2889 = bitcast i8* %t2890 to %T_record_56*
    %t2892 = getelementptr inbounds %T_record_56, %T_record_56* %t2889, i32 0, i32 4
    %t2891 = bitcast i8* %t2892 to %T_record_57*
    %t2894 = getelementptr inbounds %T_record_57, %T_record_57* %t2891, i32 0, i32 4
    %t2893 = bitcast i8* %t2894 to %T_record_58*
    %t2896 = getelementptr inbounds %T_record_58, %T_record_58* %t2893, i32 0, i32 0
    %t2895 = bitcast i8* %t2896 to i32*
    %t2897 = load i32, i32* %t2895
    call void @_WriteInteger(i8* %t2777, i32 1, i32 0, i32 %t2897)
    call void @_WriteChar(i8* %t2777, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t2777, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t2777)
    ; line 2538
    %t2898 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2898, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1106, i32 0, i32 0), i32 11)
    ; line 2541
    %t2900 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2899 = bitcast i8* %t2900 to i32*
    store i32 10, i32* %t2899
    ; line 2544
    %t2902 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2901 = bitcast i8* %t2902 to %T_record_50*
    %t2904 = getelementptr inbounds %T_record_50, %T_record_50* %t2901, i32 0, i32 0
    %t2903 = bitcast i8* %t2904 to i32*
    store i32 9, i32* %t2903
    ; line 2547
    %t2906 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2905 = bitcast i8* %t2906 to %T_record_50*
    %t2908 = getelementptr inbounds %T_record_50, %T_record_50* %t2905, i32 0, i32 4
    %t2907 = bitcast i8* %t2908 to %T_record_51*
    %t2910 = getelementptr inbounds %T_record_51, %T_record_51* %t2907, i32 0, i32 0
    %t2909 = bitcast i8* %t2910 to i32*
    store i32 8, i32* %t2909
    ; line 2550
    %t2912 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2911 = bitcast i8* %t2912 to %T_record_50*
    %t2914 = getelementptr inbounds %T_record_50, %T_record_50* %t2911, i32 0, i32 4
    %t2913 = bitcast i8* %t2914 to %T_record_51*
    %t2916 = getelementptr inbounds %T_record_51, %T_record_51* %t2913, i32 0, i32 4
    %t2915 = bitcast i8* %t2916 to %T_record_52*
    %t2918 = getelementptr inbounds %T_record_52, %T_record_52* %t2915, i32 0, i32 0
    %t2917 = bitcast i8* %t2918 to i32*
    store i32 7, i32* %t2917
    ; line 2553
    %t2920 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2919 = bitcast i8* %t2920 to %T_record_50*
    %t2922 = getelementptr inbounds %T_record_50, %T_record_50* %t2919, i32 0, i32 4
    %t2921 = bitcast i8* %t2922 to %T_record_51*
    %t2924 = getelementptr inbounds %T_record_51, %T_record_51* %t2921, i32 0, i32 4
    %t2923 = bitcast i8* %t2924 to %T_record_52*
    %t2926 = getelementptr inbounds %T_record_52, %T_record_52* %t2923, i32 0, i32 4
    %t2925 = bitcast i8* %t2926 to %T_record_53*
    %t2928 = getelementptr inbounds %T_record_53, %T_record_53* %t2925, i32 0, i32 0
    %t2927 = bitcast i8* %t2928 to i32*
    store i32 6, i32* %t2927
    ; line 2556
    %t2930 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2929 = bitcast i8* %t2930 to %T_record_50*
    %t2932 = getelementptr inbounds %T_record_50, %T_record_50* %t2929, i32 0, i32 4
    %t2931 = bitcast i8* %t2932 to %T_record_51*
    %t2934 = getelementptr inbounds %T_record_51, %T_record_51* %t2931, i32 0, i32 4
    %t2933 = bitcast i8* %t2934 to %T_record_52*
    %t2936 = getelementptr inbounds %T_record_52, %T_record_52* %t2933, i32 0, i32 4
    %t2935 = bitcast i8* %t2936 to %T_record_53*
    %t2938 = getelementptr inbounds %T_record_53, %T_record_53* %t2935, i32 0, i32 4
    %t2937 = bitcast i8* %t2938 to %T_record_54*
    %t2940 = getelementptr inbounds %T_record_54, %T_record_54* %t2937, i32 0, i32 0
    %t2939 = bitcast i8* %t2940 to i32*
    store i32 5, i32* %t2939
    ; line 2559
    %t2942 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2941 = bitcast i8* %t2942 to %T_record_50*
    %t2944 = getelementptr inbounds %T_record_50, %T_record_50* %t2941, i32 0, i32 4
    %t2943 = bitcast i8* %t2944 to %T_record_51*
    %t2946 = getelementptr inbounds %T_record_51, %T_record_51* %t2943, i32 0, i32 4
    %t2945 = bitcast i8* %t2946 to %T_record_52*
    %t2948 = getelementptr inbounds %T_record_52, %T_record_52* %t2945, i32 0, i32 4
    %t2947 = bitcast i8* %t2948 to %T_record_53*
    %t2950 = getelementptr inbounds %T_record_53, %T_record_53* %t2947, i32 0, i32 4
    %t2949 = bitcast i8* %t2950 to %T_record_54*
    %t2952 = getelementptr inbounds %T_record_54, %T_record_54* %t2949, i32 0, i32 4
    %t2951 = bitcast i8* %t2952 to %T_record_55*
    %t2954 = getelementptr inbounds %T_record_55, %T_record_55* %t2951, i32 0, i32 0
    %t2953 = bitcast i8* %t2954 to i32*
    store i32 4, i32* %t2953
    ; line 2562
    %t2956 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2955 = bitcast i8* %t2956 to %T_record_50*
    %t2958 = getelementptr inbounds %T_record_50, %T_record_50* %t2955, i32 0, i32 4
    %t2957 = bitcast i8* %t2958 to %T_record_51*
    %t2960 = getelementptr inbounds %T_record_51, %T_record_51* %t2957, i32 0, i32 4
    %t2959 = bitcast i8* %t2960 to %T_record_52*
    %t2962 = getelementptr inbounds %T_record_52, %T_record_52* %t2959, i32 0, i32 4
    %t2961 = bitcast i8* %t2962 to %T_record_53*
    %t2964 = getelementptr inbounds %T_record_53, %T_record_53* %t2961, i32 0, i32 4
    %t2963 = bitcast i8* %t2964 to %T_record_54*
    %t2966 = getelementptr inbounds %T_record_54, %T_record_54* %t2963, i32 0, i32 4
    %t2965 = bitcast i8* %t2966 to %T_record_55*
    %t2968 = getelementptr inbounds %T_record_55, %T_record_55* %t2965, i32 0, i32 4
    %t2967 = bitcast i8* %t2968 to %T_record_56*
    %t2970 = getelementptr inbounds %T_record_56, %T_record_56* %t2967, i32 0, i32 0
    %t2969 = bitcast i8* %t2970 to i32*
    store i32 3, i32* %t2969
    ; line 2565
    %t2972 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2971 = bitcast i8* %t2972 to %T_record_50*
    %t2974 = getelementptr inbounds %T_record_50, %T_record_50* %t2971, i32 0, i32 4
    %t2973 = bitcast i8* %t2974 to %T_record_51*
    %t2976 = getelementptr inbounds %T_record_51, %T_record_51* %t2973, i32 0, i32 4
    %t2975 = bitcast i8* %t2976 to %T_record_52*
    %t2978 = getelementptr inbounds %T_record_52, %T_record_52* %t2975, i32 0, i32 4
    %t2977 = bitcast i8* %t2978 to %T_record_53*
    %t2980 = getelementptr inbounds %T_record_53, %T_record_53* %t2977, i32 0, i32 4
    %t2979 = bitcast i8* %t2980 to %T_record_54*
    %t2982 = getelementptr inbounds %T_record_54, %T_record_54* %t2979, i32 0, i32 4
    %t2981 = bitcast i8* %t2982 to %T_record_55*
    %t2984 = getelementptr inbounds %T_record_55, %T_record_55* %t2981, i32 0, i32 4
    %t2983 = bitcast i8* %t2984 to %T_record_56*
    %t2986 = getelementptr inbounds %T_record_56, %T_record_56* %t2983, i32 0, i32 4
    %t2985 = bitcast i8* %t2986 to %T_record_57*
    %t2988 = getelementptr inbounds %T_record_57, %T_record_57* %t2985, i32 0, i32 0
    %t2987 = bitcast i8* %t2988 to i32*
    store i32 2, i32* %t2987
    ; line 2568
    %t2990 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2989 = bitcast i8* %t2990 to %T_record_50*
    %t2992 = getelementptr inbounds %T_record_50, %T_record_50* %t2989, i32 0, i32 4
    %t2991 = bitcast i8* %t2992 to %T_record_51*
    %t2994 = getelementptr inbounds %T_record_51, %T_record_51* %t2991, i32 0, i32 4
    %t2993 = bitcast i8* %t2994 to %T_record_52*
    %t2996 = getelementptr inbounds %T_record_52, %T_record_52* %t2993, i32 0, i32 4
    %t2995 = bitcast i8* %t2996 to %T_record_53*
    %t2998 = getelementptr inbounds %T_record_53, %T_record_53* %t2995, i32 0, i32 4
    %t2997 = bitcast i8* %t2998 to %T_record_54*
    %t3000 = getelementptr inbounds %T_record_54, %T_record_54* %t2997, i32 0, i32 4
    %t2999 = bitcast i8* %t3000 to %T_record_55*
    %t3002 = getelementptr inbounds %T_record_55, %T_record_55* %t2999, i32 0, i32 4
    %t3001 = bitcast i8* %t3002 to %T_record_56*
    %t3004 = getelementptr inbounds %T_record_56, %T_record_56* %t3001, i32 0, i32 4
    %t3003 = bitcast i8* %t3004 to %T_record_57*
    %t3006 = getelementptr inbounds %T_record_57, %T_record_57* %t3003, i32 0, i32 4
    %t3005 = bitcast i8* %t3006 to %T_record_58*
    %t3008 = getelementptr inbounds %T_record_58, %T_record_58* %t3005, i32 0, i32 0
    %t3007 = bitcast i8* %t3008 to i32*
    store i32 2, i32* %t3007
    ; line 2571
    %t3010 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3009 = bitcast i8* %t3010 to %T_record_50*
    %t3012 = getelementptr inbounds %T_record_50, %T_record_50* %t3009, i32 0, i32 4
    %t3011 = bitcast i8* %t3012 to %T_record_51*
    %t3014 = getelementptr inbounds %T_record_51, %T_record_51* %t3011, i32 0, i32 4
    %t3013 = bitcast i8* %t3014 to %T_record_52*
    %t3016 = getelementptr inbounds %T_record_52, %T_record_52* %t3013, i32 0, i32 4
    %t3015 = bitcast i8* %t3016 to %T_record_53*
    %t3018 = getelementptr inbounds %T_record_53, %T_record_53* %t3015, i32 0, i32 4
    %t3017 = bitcast i8* %t3018 to %T_record_54*
    %t3020 = getelementptr inbounds %T_record_54, %T_record_54* %t3017, i32 0, i32 4
    %t3019 = bitcast i8* %t3020 to %T_record_55*
    %t3022 = getelementptr inbounds %T_record_55, %T_record_55* %t3019, i32 0, i32 4
    %t3021 = bitcast i8* %t3022 to %T_record_56*
    %t3024 = getelementptr inbounds %T_record_56, %T_record_56* %t3021, i32 0, i32 4
    %t3023 = bitcast i8* %t3024 to %T_record_57*
    %t3026 = getelementptr inbounds %T_record_57, %T_record_57* %t3023, i32 0, i32 4
    %t3025 = bitcast i8* %t3026 to %T_record_58*
    %t3028 = getelementptr inbounds %T_record_58, %T_record_58* %t3025, i32 0, i32 0
    %t3027 = bitcast i8* %t3028 to i32*
    store i32 1, i32* %t3027
    ; line 2594
    %t3029 = load %T_text, %T_text* @output
    %t3031 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t3030 = bitcast i8* %t3031 to i32*
    %t3032 = load i32, i32* %t3030
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3032)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3034 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3033 = bitcast i8* %t3034 to %T_record_50*
    %t3036 = getelementptr inbounds %T_record_50, %T_record_50* %t3033, i32 0, i32 0
    %t3035 = bitcast i8* %t3036 to i32*
    %t3037 = load i32, i32* %t3035
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3037)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3039 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3038 = bitcast i8* %t3039 to %T_record_50*
    %t3041 = getelementptr inbounds %T_record_50, %T_record_50* %t3038, i32 0, i32 4
    %t3040 = bitcast i8* %t3041 to %T_record_51*
    %t3043 = getelementptr inbounds %T_record_51, %T_record_51* %t3040, i32 0, i32 0
    %t3042 = bitcast i8* %t3043 to i32*
    %t3044 = load i32, i32* %t3042
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3044)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3046 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3045 = bitcast i8* %t3046 to %T_record_50*
    %t3048 = getelementptr inbounds %T_record_50, %T_record_50* %t3045, i32 0, i32 4
    %t3047 = bitcast i8* %t3048 to %T_record_51*
    %t3050 = getelementptr inbounds %T_record_51, %T_record_51* %t3047, i32 0, i32 4
    %t3049 = bitcast i8* %t3050 to %T_record_52*
    %t3052 = getelementptr inbounds %T_record_52, %T_record_52* %t3049, i32 0, i32 0
    %t3051 = bitcast i8* %t3052 to i32*
    %t3053 = load i32, i32* %t3051
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3053)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3055 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3054 = bitcast i8* %t3055 to %T_record_50*
    %t3057 = getelementptr inbounds %T_record_50, %T_record_50* %t3054, i32 0, i32 4
    %t3056 = bitcast i8* %t3057 to %T_record_51*
    %t3059 = getelementptr inbounds %T_record_51, %T_record_51* %t3056, i32 0, i32 4
    %t3058 = bitcast i8* %t3059 to %T_record_52*
    %t3061 = getelementptr inbounds %T_record_52, %T_record_52* %t3058, i32 0, i32 4
    %t3060 = bitcast i8* %t3061 to %T_record_53*
    %t3063 = getelementptr inbounds %T_record_53, %T_record_53* %t3060, i32 0, i32 0
    %t3062 = bitcast i8* %t3063 to i32*
    %t3064 = load i32, i32* %t3062
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3064)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3066 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3065 = bitcast i8* %t3066 to %T_record_50*
    %t3068 = getelementptr inbounds %T_record_50, %T_record_50* %t3065, i32 0, i32 4
    %t3067 = bitcast i8* %t3068 to %T_record_51*
    %t3070 = getelementptr inbounds %T_record_51, %T_record_51* %t3067, i32 0, i32 4
    %t3069 = bitcast i8* %t3070 to %T_record_52*
    %t3072 = getelementptr inbounds %T_record_52, %T_record_52* %t3069, i32 0, i32 4
    %t3071 = bitcast i8* %t3072 to %T_record_53*
    %t3074 = getelementptr inbounds %T_record_53, %T_record_53* %t3071, i32 0, i32 4
    %t3073 = bitcast i8* %t3074 to %T_record_54*
    %t3076 = getelementptr inbounds %T_record_54, %T_record_54* %t3073, i32 0, i32 0
    %t3075 = bitcast i8* %t3076 to i32*
    %t3077 = load i32, i32* %t3075
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3077)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
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
    %t3091 = getelementptr inbounds %T_record_55, %T_record_55* %t3088, i32 0, i32 0
    %t3090 = bitcast i8* %t3091 to i32*
    %t3092 = load i32, i32* %t3090
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3092)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3094 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3093 = bitcast i8* %t3094 to %T_record_50*
    %t3096 = getelementptr inbounds %T_record_50, %T_record_50* %t3093, i32 0, i32 4
    %t3095 = bitcast i8* %t3096 to %T_record_51*
    %t3098 = getelementptr inbounds %T_record_51, %T_record_51* %t3095, i32 0, i32 4
    %t3097 = bitcast i8* %t3098 to %T_record_52*
    %t3100 = getelementptr inbounds %T_record_52, %T_record_52* %t3097, i32 0, i32 4
    %t3099 = bitcast i8* %t3100 to %T_record_53*
    %t3102 = getelementptr inbounds %T_record_53, %T_record_53* %t3099, i32 0, i32 4
    %t3101 = bitcast i8* %t3102 to %T_record_54*
    %t3104 = getelementptr inbounds %T_record_54, %T_record_54* %t3101, i32 0, i32 4
    %t3103 = bitcast i8* %t3104 to %T_record_55*
    %t3106 = getelementptr inbounds %T_record_55, %T_record_55* %t3103, i32 0, i32 4
    %t3105 = bitcast i8* %t3106 to %T_record_56*
    %t3108 = getelementptr inbounds %T_record_56, %T_record_56* %t3105, i32 0, i32 0
    %t3107 = bitcast i8* %t3108 to i32*
    %t3109 = load i32, i32* %t3107
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3109)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3111 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3110 = bitcast i8* %t3111 to %T_record_50*
    %t3113 = getelementptr inbounds %T_record_50, %T_record_50* %t3110, i32 0, i32 4
    %t3112 = bitcast i8* %t3113 to %T_record_51*
    %t3115 = getelementptr inbounds %T_record_51, %T_record_51* %t3112, i32 0, i32 4
    %t3114 = bitcast i8* %t3115 to %T_record_52*
    %t3117 = getelementptr inbounds %T_record_52, %T_record_52* %t3114, i32 0, i32 4
    %t3116 = bitcast i8* %t3117 to %T_record_53*
    %t3119 = getelementptr inbounds %T_record_53, %T_record_53* %t3116, i32 0, i32 4
    %t3118 = bitcast i8* %t3119 to %T_record_54*
    %t3121 = getelementptr inbounds %T_record_54, %T_record_54* %t3118, i32 0, i32 4
    %t3120 = bitcast i8* %t3121 to %T_record_55*
    %t3123 = getelementptr inbounds %T_record_55, %T_record_55* %t3120, i32 0, i32 4
    %t3122 = bitcast i8* %t3123 to %T_record_56*
    %t3125 = getelementptr inbounds %T_record_56, %T_record_56* %t3122, i32 0, i32 4
    %t3124 = bitcast i8* %t3125 to %T_record_57*
    %t3127 = getelementptr inbounds %T_record_57, %T_record_57* %t3124, i32 0, i32 0
    %t3126 = bitcast i8* %t3127 to i32*
    %t3128 = load i32, i32* %t3126
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3128)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    %t3130 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3129 = bitcast i8* %t3130 to %T_record_50*
    %t3132 = getelementptr inbounds %T_record_50, %T_record_50* %t3129, i32 0, i32 4
    %t3131 = bitcast i8* %t3132 to %T_record_51*
    %t3134 = getelementptr inbounds %T_record_51, %T_record_51* %t3131, i32 0, i32 4
    %t3133 = bitcast i8* %t3134 to %T_record_52*
    %t3136 = getelementptr inbounds %T_record_52, %T_record_52* %t3133, i32 0, i32 4
    %t3135 = bitcast i8* %t3136 to %T_record_53*
    %t3138 = getelementptr inbounds %T_record_53, %T_record_53* %t3135, i32 0, i32 4
    %t3137 = bitcast i8* %t3138 to %T_record_54*
    %t3140 = getelementptr inbounds %T_record_54, %T_record_54* %t3137, i32 0, i32 4
    %t3139 = bitcast i8* %t3140 to %T_record_55*
    %t3142 = getelementptr inbounds %T_record_55, %T_record_55* %t3139, i32 0, i32 4
    %t3141 = bitcast i8* %t3142 to %T_record_56*
    %t3144 = getelementptr inbounds %T_record_56, %T_record_56* %t3141, i32 0, i32 4
    %t3143 = bitcast i8* %t3144 to %T_record_57*
    %t3146 = getelementptr inbounds %T_record_57, %T_record_57* %t3143, i32 0, i32 4
    %t3145 = bitcast i8* %t3146 to %T_record_58*
    %t3148 = getelementptr inbounds %T_record_58, %T_record_58* %t3145, i32 0, i32 0
    %t3147 = bitcast i8* %t3148 to i32*
    %t3149 = load i32, i32* %t3147
    call void @_WriteInteger(i8* %t3029, i32 1, i32 0, i32 %t3149)
    call void @_WriteChar(i8* %t3029, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t3029, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t3029)
    ; line 2605
    %t3150 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3150, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1107, i32 0, i32 0), i32 11)
    ; line 2606
    %t3152 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3151 = bitcast i8* %t3152 to %T_record_50*
    %t3154 = getelementptr inbounds %T_record_50, %T_record_50* %t3151, i32 0, i32 4
    %t3153 = bitcast i8* %t3154 to %T_record_51*
    %t3156 = getelementptr inbounds %T_record_51, %T_record_51* %t3153, i32 0, i32 4
    %t3155 = bitcast i8* %t3156 to %T_record_52*
    %t3158 = getelementptr inbounds %T_record_52, %T_record_52* %t3155, i32 0, i32 4
    %t3157 = bitcast i8* %t3158 to %T_record_53*
    %t3160 = getelementptr inbounds %T_record_53, %T_record_53* %t3157, i32 0, i32 4
    %t3159 = bitcast i8* %t3160 to %T_record_54*
    %t3162 = getelementptr inbounds %T_record_54, %T_record_54* %t3159, i32 0, i32 4
    %t3161 = bitcast i8* %t3162 to %T_record_55*
    %t3164 = getelementptr inbounds %T_record_55, %T_record_55* %t3161, i32 0, i32 4
    %t3163 = bitcast i8* %t3164 to %T_record_56*
    %t3166 = getelementptr inbounds %T_record_56, %T_record_56* %t3163, i32 0, i32 4
    %t3165 = bitcast i8* %t3166 to %T_record_57*
    %t3168 = getelementptr inbounds %T_record_57, %T_record_57* %t3165, i32 0, i32 4
    %t3167 = bitcast i8* %t3168 to %T_record_58*
    %t3170 = getelementptr inbounds %T_record_58, %T_record_58* %t3167, i32 0, i32 0
    %t3169 = bitcast i8* %t3170 to i32*
    store i32 76, i32* %t3169
    ; line 2607
    %t3171 = load %T_text, %T_text* @output
    %t3173 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t3172 = bitcast i8* %t3173 to i32*
    %t3174 = load i32, i32* %t3172
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3174)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3176 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3175 = bitcast i8* %t3176 to %T_record_50*
    %t3178 = getelementptr inbounds %T_record_50, %T_record_50* %t3175, i32 0, i32 0
    %t3177 = bitcast i8* %t3178 to i32*
    %t3179 = load i32, i32* %t3177
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3179)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3181 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3180 = bitcast i8* %t3181 to %T_record_50*
    %t3183 = getelementptr inbounds %T_record_50, %T_record_50* %t3180, i32 0, i32 4
    %t3182 = bitcast i8* %t3183 to %T_record_51*
    %t3185 = getelementptr inbounds %T_record_51, %T_record_51* %t3182, i32 0, i32 0
    %t3184 = bitcast i8* %t3185 to i32*
    %t3186 = load i32, i32* %t3184
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3186)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3188 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3187 = bitcast i8* %t3188 to %T_record_50*
    %t3190 = getelementptr inbounds %T_record_50, %T_record_50* %t3187, i32 0, i32 4
    %t3189 = bitcast i8* %t3190 to %T_record_51*
    %t3192 = getelementptr inbounds %T_record_51, %T_record_51* %t3189, i32 0, i32 4
    %t3191 = bitcast i8* %t3192 to %T_record_52*
    %t3194 = getelementptr inbounds %T_record_52, %T_record_52* %t3191, i32 0, i32 0
    %t3193 = bitcast i8* %t3194 to i32*
    %t3195 = load i32, i32* %t3193
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3195)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3197 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3196 = bitcast i8* %t3197 to %T_record_50*
    %t3199 = getelementptr inbounds %T_record_50, %T_record_50* %t3196, i32 0, i32 4
    %t3198 = bitcast i8* %t3199 to %T_record_51*
    %t3201 = getelementptr inbounds %T_record_51, %T_record_51* %t3198, i32 0, i32 4
    %t3200 = bitcast i8* %t3201 to %T_record_52*
    %t3203 = getelementptr inbounds %T_record_52, %T_record_52* %t3200, i32 0, i32 4
    %t3202 = bitcast i8* %t3203 to %T_record_53*
    %t3205 = getelementptr inbounds %T_record_53, %T_record_53* %t3202, i32 0, i32 0
    %t3204 = bitcast i8* %t3205 to i32*
    %t3206 = load i32, i32* %t3204
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3206)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3208 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3207 = bitcast i8* %t3208 to %T_record_50*
    %t3210 = getelementptr inbounds %T_record_50, %T_record_50* %t3207, i32 0, i32 4
    %t3209 = bitcast i8* %t3210 to %T_record_51*
    %t3212 = getelementptr inbounds %T_record_51, %T_record_51* %t3209, i32 0, i32 4
    %t3211 = bitcast i8* %t3212 to %T_record_52*
    %t3214 = getelementptr inbounds %T_record_52, %T_record_52* %t3211, i32 0, i32 4
    %t3213 = bitcast i8* %t3214 to %T_record_53*
    %t3216 = getelementptr inbounds %T_record_53, %T_record_53* %t3213, i32 0, i32 4
    %t3215 = bitcast i8* %t3216 to %T_record_54*
    %t3218 = getelementptr inbounds %T_record_54, %T_record_54* %t3215, i32 0, i32 0
    %t3217 = bitcast i8* %t3218 to i32*
    %t3219 = load i32, i32* %t3217
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3219)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
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
    %t3233 = getelementptr inbounds %T_record_55, %T_record_55* %t3230, i32 0, i32 0
    %t3232 = bitcast i8* %t3233 to i32*
    %t3234 = load i32, i32* %t3232
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3234)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3236 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3235 = bitcast i8* %t3236 to %T_record_50*
    %t3238 = getelementptr inbounds %T_record_50, %T_record_50* %t3235, i32 0, i32 4
    %t3237 = bitcast i8* %t3238 to %T_record_51*
    %t3240 = getelementptr inbounds %T_record_51, %T_record_51* %t3237, i32 0, i32 4
    %t3239 = bitcast i8* %t3240 to %T_record_52*
    %t3242 = getelementptr inbounds %T_record_52, %T_record_52* %t3239, i32 0, i32 4
    %t3241 = bitcast i8* %t3242 to %T_record_53*
    %t3244 = getelementptr inbounds %T_record_53, %T_record_53* %t3241, i32 0, i32 4
    %t3243 = bitcast i8* %t3244 to %T_record_54*
    %t3246 = getelementptr inbounds %T_record_54, %T_record_54* %t3243, i32 0, i32 4
    %t3245 = bitcast i8* %t3246 to %T_record_55*
    %t3248 = getelementptr inbounds %T_record_55, %T_record_55* %t3245, i32 0, i32 4
    %t3247 = bitcast i8* %t3248 to %T_record_56*
    %t3250 = getelementptr inbounds %T_record_56, %T_record_56* %t3247, i32 0, i32 0
    %t3249 = bitcast i8* %t3250 to i32*
    %t3251 = load i32, i32* %t3249
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3251)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3253 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3252 = bitcast i8* %t3253 to %T_record_50*
    %t3255 = getelementptr inbounds %T_record_50, %T_record_50* %t3252, i32 0, i32 4
    %t3254 = bitcast i8* %t3255 to %T_record_51*
    %t3257 = getelementptr inbounds %T_record_51, %T_record_51* %t3254, i32 0, i32 4
    %t3256 = bitcast i8* %t3257 to %T_record_52*
    %t3259 = getelementptr inbounds %T_record_52, %T_record_52* %t3256, i32 0, i32 4
    %t3258 = bitcast i8* %t3259 to %T_record_53*
    %t3261 = getelementptr inbounds %T_record_53, %T_record_53* %t3258, i32 0, i32 4
    %t3260 = bitcast i8* %t3261 to %T_record_54*
    %t3263 = getelementptr inbounds %T_record_54, %T_record_54* %t3260, i32 0, i32 4
    %t3262 = bitcast i8* %t3263 to %T_record_55*
    %t3265 = getelementptr inbounds %T_record_55, %T_record_55* %t3262, i32 0, i32 4
    %t3264 = bitcast i8* %t3265 to %T_record_56*
    %t3267 = getelementptr inbounds %T_record_56, %T_record_56* %t3264, i32 0, i32 4
    %t3266 = bitcast i8* %t3267 to %T_record_57*
    %t3269 = getelementptr inbounds %T_record_57, %T_record_57* %t3266, i32 0, i32 0
    %t3268 = bitcast i8* %t3269 to i32*
    %t3270 = load i32, i32* %t3268
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3270)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    %t3272 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3271 = bitcast i8* %t3272 to %T_record_50*
    %t3274 = getelementptr inbounds %T_record_50, %T_record_50* %t3271, i32 0, i32 4
    %t3273 = bitcast i8* %t3274 to %T_record_51*
    %t3276 = getelementptr inbounds %T_record_51, %T_record_51* %t3273, i32 0, i32 4
    %t3275 = bitcast i8* %t3276 to %T_record_52*
    %t3278 = getelementptr inbounds %T_record_52, %T_record_52* %t3275, i32 0, i32 4
    %t3277 = bitcast i8* %t3278 to %T_record_53*
    %t3280 = getelementptr inbounds %T_record_53, %T_record_53* %t3277, i32 0, i32 4
    %t3279 = bitcast i8* %t3280 to %T_record_54*
    %t3282 = getelementptr inbounds %T_record_54, %T_record_54* %t3279, i32 0, i32 4
    %t3281 = bitcast i8* %t3282 to %T_record_55*
    %t3284 = getelementptr inbounds %T_record_55, %T_record_55* %t3281, i32 0, i32 4
    %t3283 = bitcast i8* %t3284 to %T_record_56*
    %t3286 = getelementptr inbounds %T_record_56, %T_record_56* %t3283, i32 0, i32 4
    %t3285 = bitcast i8* %t3286 to %T_record_57*
    %t3288 = getelementptr inbounds %T_record_57, %T_record_57* %t3285, i32 0, i32 4
    %t3287 = bitcast i8* %t3288 to %T_record_58*
    %t3290 = getelementptr inbounds %T_record_58, %T_record_58* %t3287, i32 0, i32 0
    %t3289 = bitcast i8* %t3290 to i32*
    %t3291 = load i32, i32* %t3289
    call void @_WriteInteger(i8* %t3171, i32 1, i32 0, i32 %t3291)
    call void @_WriteChar(i8* %t3171, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t3171, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1108, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t3171)
    ; line 2618
    %t3292 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3292, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1109, i32 0, i32 0), i32 11)
    ; line 2619
    ; line 2622
    %t3293 = load i8*, i8** @rpa
    %t3294 = bitcast i8* %t3293 to %T_rec*
    %t3296 = getelementptr inbounds %T_rec, %T_rec* %t3294, i32 0, i32 0
    %t3295 = bitcast i8* %t3296 to i32*
    store i32 1, i32* %t3295
    ; line 2623
    %t3297 = load i8*, i8** @rpa
    %t3298 = bitcast i8* %t3297 to %T_rec*
    %t3300 = getelementptr inbounds %T_rec, %T_rec* %t3298, i32 0, i32 84
    %t3299 = bitcast i8* %t3300 to %T_recs*
    %t3302 = getelementptr inbounds %T_recs, %T_recs* %t3299, i32 0, i32 4
    %t3301 = bitcast i8* %t3302 to i8*
    store i8 103, i8* %t3301
    ; line 2626
    %t3303 = load %T_text, %T_text* @output
    %t3304 = load i8*, i8** @rpa
    %t3305 = bitcast i8* %t3304 to %T_rec*
    %t3307 = getelementptr inbounds %T_rec, %T_rec* %t3305, i32 0, i32 0
    %t3306 = bitcast i8* %t3307 to i32*
    %t3308 = load i32, i32* %t3306
    call void @_WriteInteger(i8* %t3303, i32 1, i32 0, i32 %t3308)
    call void @_WriteChar(i8* %t3303, i32 0, i32 0, i8 32)
    %t3309 = load i8*, i8** @rpa
    %t3310 = bitcast i8* %t3309 to %T_rec*
    %t3312 = getelementptr inbounds %T_rec, %T_rec* %t3310, i32 0, i32 84
    %t3311 = bitcast i8* %t3312 to %T_recs*
    %t3314 = getelementptr inbounds %T_recs, %T_recs* %t3311, i32 0, i32 4
    %t3313 = bitcast i8* %t3314 to i8*
    %t3315 = load i8, i8* %t3313
    call void @_WriteChar(i8* %t3303, i32 0, i32 0, i8 %t3315)
    call void @_WriteString(i8* %t3303, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1110, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3303)
    ; line 2627
    %t3316 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3316, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1111, i32 0, i32 0), i32 11)
    ; line 2628
    ; line 2629
    ; line 2630
    %t3317 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3317, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.943, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3317)
    ; line 2638
    br i1 0, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2640
    %t3318 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3318)
    ; line 2641
    %t3319 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3319, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1112, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t3319)
    ; line 2642
    %t3320 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3320)
    ; line 2645
    %t3321 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3321, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1113, i32 0, i32 0), i32 9)
    ; line 2646
    ; line 2647
    ; line 2648
    ; line 2649
    ; line 2650
    %t3322 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3322, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1114, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3322)
    ; line 2651
    %t3323 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3323, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1115, i32 0, i32 0), i32 9)
    ; line 2652
    ; line 2653
    ; line 2654
    ; line 2655
    ; line 2656
    %t3324 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3324, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1114, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3324)
    ; line 2657
    %t3325 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3325, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1116, i32 0, i32 0), i32 9)
    ; line 2658
    ; line 2659
    ; line 2660
    ; line 2661
    ; line 2662
    %t3326 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3326)
    ; line 2663
    %t3327 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3327, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1117, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t3327, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3327)
    ; line 2665
    %t3328 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3328, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1118, i32 0, i32 0), i32 9)
    ; line 2666
    ; line 2667
    ; line 2668
    ; line 2669
    ; line 2670
    %t3329 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3329)
    ; line 2671
    %t3330 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3330, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1117, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t3330, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3330)
    ; line 2673
    %t3331 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3331, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1119, i32 0, i32 0), i32 9)
    ; line 2674
    ; line 2675
    ; line 2676
    ; line 2677
    ; line 2678
    %t3332 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3332, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1120, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3332)
    ; line 2679
    %t3333 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3333, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1121, i32 0, i32 0), i32 9)
    ; line 2680
    ; line 2681
    ; line 2682
    ; line 2683
    ; line 2684
    %t3334 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3334, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1120, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3334)
    ; line 2685
    %t3335 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3335, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1122, i32 0, i32 0), i32 9)
    ; line 2686
    ; line 2687
    ; line 2688
    ; line 2689
    ; line 2690
    %t3336 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3336, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1123, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3336)
    ; line 2691
    %t3337 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3337, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1124, i32 0, i32 0), i32 9)
    ; line 2692
    ; line 2693
    ; line 2694
    ; line 2695
    ; line 2696
    %t3338 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3338, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1123, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3338)
    ; line 2699
    %t3339 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3339, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3339)
    ; line 2700
    ; line 2701
    store i32 7384, i32* @x
    ; line 2702
    %t3340 = load %T_text, %T_text* @ft
    %t3341 = load i32, i32* @x
    call void @_WriteInteger(i8* %t3340, i32 1, i32 0, i32 %t3341)
    call void @_WriteLn(i8* %t3340)
    ; line 2703
    %t3342 = load %T_text, %T_text* @ft
    call void @_WriteInteger(i8* %t3342, i32 1, i32 0, i32 8342)
    call void @_WriteLn(i8* %t3342)
    ; line 2704
    store i1 1, i1* @ba
    ; line 2705
    %t3343 = load %T_text, %T_text* @ft
    %t3344 = load i1, i1* @ba
    call void @_WriteBool(i8* %t3343, i32 5, i32 0, i1 %t3344)
    call void @_WriteLn(i8* %t3343)
    ; line 2706
    %t3345 = load %T_text, %T_text* @ft
    call void @_WriteBool(i8* %t3345, i32 5, i32 0, i1 0)
    call void @_WriteLn(i8* %t3345)
    ; line 2707
    store i8 109, i8* @ca
    ; line 2708
    %t3346 = load %T_text, %T_text* @ft
    %t3347 = load i8, i8* @ca
    call void @_WriteChar(i8* %t3346, i32 0, i32 0, i8 %t3347)
    call void @_WriteLn(i8* %t3346)
    ; line 2709
    %t3348 = load %T_text, %T_text* @ft
    call void @_WriteChar(i8* %t3348, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t3348)
    ; line 2710
    store double 1.23457, double* @ra
    ; line 2711
    %t3349 = load %T_text, %T_text* @ft
    %t3350 = load double, double* @ra
    call void @_WriteReal(i8* %t3349, i32 15, i32 0, double %t3350)
    call void @_WriteLn(i8* %t3349)
    ; line 2712
    %t3351 = load %T_text, %T_text* @ft
    %t3352 = load double, double* @ra
    call void @_WriteReal(i8* %t3351, i32 1, i32 7, double %t3352)
    call void @_WriteLn(i8* %t3351)
    ; line 2713
    %t3353 = load %T_text, %T_text* @ft
    call void @_WriteReal(i8* %t3353, i32 15, i32 0, double 56.8943)
    call void @_WriteLn(i8* %t3353)
    ; line 2714
    %t3354 = load %T_text, %T_text* @ft
    call void @_WriteReal(i8* %t3354, i32 1, i32 8, double 0.938376)
    call void @_WriteLn(i8* %t3354)
    ; line 2715
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1126, i32 0, i32 0), %T_string10* @s
    ; line 2716
    %t3355 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3355, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* @s, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3355)
    ; line 2717
    %t3356 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3356, i32 5, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* @s, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3356)
    ; line 2718
    %t3357 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3357, i32 15, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* @s, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3357)
    ; line 2719
    ; line 2720
    ; line 2735
    %t3358 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3358, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3358)
    ; line 2736
    %t3359 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3359, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1127, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3359)
    ; line 2737
    %t3360 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3360, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1128, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3360)
    ; line 2738
    %t3361 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3361, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.548, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3361)
    ; line 2739
    %t3362 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3362, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3362)
    ; line 2740
    %t3363 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3363, i32 0, i32 0, i8 109)
    call void @_WriteLn(i8* %t3363)
    ; line 2741
    %t3364 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3364, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t3364)
    ; line 2742
    %t3365 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3365, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1129, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t3365)
    ; line 2743
    %t3366 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3366, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1130, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t3366)
    ; line 2744
    %t3367 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3367, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1131, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t3367)
    ; line 2745
    %t3368 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3368, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1132, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3368)
    ; line 2746
    %t3369 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3369, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1126, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3369)
    ; line 2747
    %t3370 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3370, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1133, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3370)
    ; line 2748
    %t3371 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3371, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1134, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3371)
    ; line 2751
    %t3372 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3372, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1135, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3372)
    ; line 2752
    ; line 2753
    ; line 2754
    %t3373 = load %T_text, %T_text* @output
    %t3374 = load i32, i32* @y
    call void @_WriteInteger(i8* %t3373, i32 1, i32 0, i32 %t3374)
    call void @_WriteLn(i8* %t3373)
    ; line 2755
    ; line 2756
    %t3375 = load %T_text, %T_text* @output
    %t3376 = load i32, i32* @y
    call void @_WriteInteger(i8* %t3375, i32 1, i32 0, i32 %t3376)
    call void @_WriteLn(i8* %t3375)
    ; line 2757
    ; line 2758
    ; line 2759
    ; line 2760
    %t3377 = load %T_text, %T_text* @output
    %t3378 = load i8, i8* @ci
    call void @_WriteChar(i8* %t3377, i32 0, i32 0, i8 %t3378)
    call void @_WriteLn(i8* %t3377)
    ; line 2761
    ; line 2762
    %t3379 = load %T_text, %T_text* @output
    %t3380 = load i8, i8* @ci
    call void @_WriteChar(i8* %t3379, i32 0, i32 0, i8 %t3380)
    call void @_WriteLn(i8* %t3379)
    ; line 2763
    ; line 2764
    %t3381 = load %T_text, %T_text* @output
    %t3382 = load double, double* @rb
    call void @_WriteReal(i8* %t3381, i32 15, i32 0, double %t3382)
    call void @_WriteLn(i8* %t3381)
    ; line 2765
    ; line 2766
    %t3383 = load %T_text, %T_text* @output
    %t3384 = load double, double* @rb
    call void @_WriteReal(i8* %t3383, i32 15, i32 0, double %t3384)
    call void @_WriteLn(i8* %t3383)
    ; line 2767
    ; line 2768
    %t3385 = load %T_text, %T_text* @output
    %t3386 = load double, double* @rb
    call void @_WriteReal(i8* %t3385, i32 15, i32 0, double %t3386)
    call void @_WriteLn(i8* %t3385)
    ; line 2769
    ; line 2770
    %t3387 = load %T_text, %T_text* @output
    %t3388 = load double, double* @rb
    call void @_WriteReal(i8* %t3387, i32 15, i32 0, double %t3388)
    call void @_WriteLn(i8* %t3387)
    ; line 2771
    %t3389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3389, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3389)
    ; line 2772
    %t3390 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3390, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1127, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3390)
    ; line 2773
    %t3391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3391, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1128, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3391)
    ; line 2774
    %t3392 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3392, i32 0, i32 0, i8 109)
    call void @_WriteLn(i8* %t3392)
    ; line 2775
    %t3393 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3393, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t3393)
    ; line 2776
    %t3394 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3394, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1129, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t3394)
    ; line 2777
    %t3395 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3395, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1129, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t3395)
    ; line 2778
    %t3396 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3396, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1131, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t3396)
    ; line 2779
    %t3397 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3397, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1136, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t3397)
    ; line 2782
    %t3398 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3398, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1137, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3398)
    ; line 2783
    ; line 2784
    %t3399 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3399, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1138, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3399)
    ; line 2785
    %t3400 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3400, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1139, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t3400)
    ; line 2786
    ; line 2787
    %t3401 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3401, i32 0, i32 0, i8 39)
    ; line 2788
    ; line 2795
    %t3402 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3402, i32 0, i32 0, i8 39)
    ; line 2796
    %t3403 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3403, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1140, i32 0, i32 0), i32 37)
    call void @_WriteLn(i8* %t3403)
    ; line 2797
    %t3404 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3404, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1141, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3404)
    ; line 2798
    ; line 2799
    %t3405 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3405, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1142, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3405)
    ; line 2800
    %t3406 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3406, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1143, i32 0, i32 0), i32 8)
    ; line 2801
    ; line 2802
    %t3407 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3407, i32 0, i32 0, i8 39)
    ; line 2803
    ; line 2810
    %t3408 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3408, i32 0, i32 0, i8 39)
    ; line 2811
    %t3409 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3409, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1144, i32 0, i32 0), i32 37)
    call void @_WriteLn(i8* %t3409)
    ; line 2814
    %t3410 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3410, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1145, i32 0, i32 0), i32 10)
    ; line 2815
    ; line 2816
    ; line 2817
    ; line 2818
    ; line 2819
    %t3411 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3411, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1114, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3411)
    ; line 2820
    %t3412 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3412, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1146, i32 0, i32 0), i32 10)
    ; line 2821
    ; line 2822
    ; line 2823
    ; line 2824
    ; line 2825
    %t3413 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3413, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1114, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3413)
    ; line 2826
    %t3414 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3414, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1147, i32 0, i32 0), i32 10)
    ; line 2827
    ; line 2828
    ; line 2829
    ; line 2830
    ; line 2831
    %t3415 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3415)
    ; line 2832
    %t3416 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3416, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1117, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t3416, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3416)
    ; line 2834
    %t3417 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3417, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1148, i32 0, i32 0), i32 10)
    ; line 2835
    ; line 2836
    ; line 2837
    ; line 2838
    ; line 2839
    %t3418 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3418)
    ; line 2840
    %t3419 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3419, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1117, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t3419, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.538, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3419)
    ; line 2842
    %t3420 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3420, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1149, i32 0, i32 0), i32 10)
    ; line 2843
    ; line 2844
    ; line 2845
    ; line 2846
    ; line 2847
    %t3421 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3421, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1120, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3421)
    ; line 2848
    %t3422 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3422, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1150, i32 0, i32 0), i32 10)
    ; line 2849
    ; line 2850
    ; line 2851
    ; line 2852
    ; line 2853
    %t3423 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3423, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1120, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3423)
    ; line 2854
    %t3424 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3424, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1151, i32 0, i32 0), i32 10)
    ; line 2855
    ; line 2856
    ; line 2857
    ; line 2858
    ; line 2859
    %t3425 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3425, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1123, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3425)
    ; line 2860
    %t3426 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3426, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1152, i32 0, i32 0), i32 10)
    ; line 2861
    ; line 2862
    ; line 2863
    ; line 2864
    ; line 2865
    %t3427 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3427, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1123, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3427)
    ; line 2866
    %t3428 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3428, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1153, i32 0, i32 0), i32 10)
    ; line 2867
    ; line 2868
    %t3429 = load %T_text, %T_text* @ft
    call void @_WriteString(i8* %t3429, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1154, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t3429)
    ; line 2869
    ; line 2870
    ; line 2871
    %t3430 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3430, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.848, i32 0, i32 0), i32 5)
    call void @_WriteInteger(i8* %t3430, i32 1, i32 0, i32 50)
    call void @_WriteLn(i8* %t3430)
    ; line 2872
    %t3431 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3431, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1155, i32 0, i32 0), i32 10)
    ; line 2873
    ; line 2874
    %t3432 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t3432, i32 0, i32 0, i1 %.dummy.intrin)
    call void @_WriteString(i8* %t3432, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t3432)
    ; nop
    br label %L_endif_9
L_endif_9:
    ; line 2884
    %t3433 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3433)
    ; line 2885
    %t3434 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3434, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1156, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t3434)
    ; line 2886
    %t3435 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3435)
    ; line 2887
    %t3436 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3436, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1157, i32 0, i32 0), i32 22)
    ; line 2888
    store i32 45, i32* @x
    ; line 2888
    store i32 89, i32* @y
    ; line 2889
    %t3437 = load i32, i32* @x
    %t3438 = load i32, i32* @y
    call void @P_junk1(i32 %t3437, i32 %t3438)
    ; line 2890
    %t3439 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3439, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1158, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3439)
    ; line 2891
    %t3440 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3440, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1159, i32 0, i32 0), i32 22)
    ; line 2892
    store i32 45, i32* @x
    ; line 2892
    call void @P_junk2(i32* @x)
    ; line 2893
    %t3441 = load %T_text, %T_text* @output
    %t3442 = load i32, i32* @x
    call void @_WriteInteger(i8* %t3441, i32 1, i32 0, i32 %t3442)
    call void @_WriteString(i8* %t3441, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1160, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3441)
    ; line 2894
    %t3443 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3443, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1161, i32 0, i32 0), i32 22)
    ; line 2895
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1162, i32 0, i32 0), %T_string10* @s
    ; line 2896
    call void @P_junk3(%T_string10* @s)
    ; line 2897
    %t3444 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3444, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1163, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3444)
    ; line 2898
    %t3445 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3445, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1164, i32 0, i32 0), i32 22)
    ; line 2899
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1162, i32 0, i32 0), %T_string10* @s
    ; line 2900
    %t3446 = load %T_string10, %T_string10* @s
    call void @P_junk4(%T_string10 %t3446)
    ; line 2901
    %t3447 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3447, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1165, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3447)
    ; line 2902
    %t3448 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3448, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* @s, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t3448, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1163, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3448)
    ; line 2903
    %t3449 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3449, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1166, i32 0, i32 0), i32 22)
    ; line 2904
    %t3450 = load %T_text, %T_text* @output
    %t3451 = call i32 @F_junk5(i32 34)
    call void @_WriteInteger(i8* %t3450, i32 1, i32 0, i32 %t3451)
    call void @_WriteString(i8* %t3450, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3450)
    ; line 2905
    %t3452 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3452, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1167, i32 0, i32 0), i32 22)
    ; line 2906
    %t3453 = call i32 @F_junk7(i32 10, i32 9, i32 8)
    store i32 %t3453, i32* @i
    ; line 2907
    %t3454 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3454, i32 0, i32 0, i8 32)
    %t3455 = load i32, i32* @i
    call void @_WriteInteger(i8* %t3454, i32 1, i32 0, i32 %t3455)
    call void @_WriteLn(i8* %t3454)
    ; line 2908
    %t3456 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3456, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1168, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t3456)
    ; line 2909
    %t3457 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3457, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1169, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t3457)
    ; line 2910
    ; line 2911
    %t3459 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t3458 = bitcast i8* %t3459 to i32*
    store i32 64, i32* %t3458
    ; line 2912
    %t3461 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t3460 = bitcast i8* %t3461 to i1*
    store i1 0, i1* %t3460
    ; line 2913
    %t3463 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t3462 = bitcast i8* %t3463 to i8*
    store i8 106, i8* %t3462
    ; line 2914
    %t3465 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 8
    %t3464 = bitcast i8* %t3465 to i32*
    store i32 1, i32* %t3464
    ; line 2915
    %t3467 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 12
    %t3466 = bitcast i8* %t3467 to i32*
    store i32 3, i32* %t3466
    ; line 2916
    %t3469 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t3468 = bitcast i8* %t3469 to i32*
    store i32 12, i32* %t3468
    ; line 2917
    %t3471 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t3470 = bitcast i8* %t3471 to double*
    store double 4.54512e-29, double* %t3470
    ; line 2918
    %t3473 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t3472 = bitcast i8* %t3473 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1057, i32 0, i32 0), %T_string10* %t3472
    ; line 2919
    ; line 2920
    %t3475 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t3474 = bitcast i8* %t3475 to %T_recs*
    %t3477 = getelementptr inbounds %T_recs, %T_recs* %t3474, i32 0, i32 0
    %t3476 = bitcast i8* %t3477 to i32*
    store i32 2324, i32* %t3476
    ; line 2921
    %t3479 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t3478 = bitcast i8* %t3479 to %T_recs*
    %t3481 = getelementptr inbounds %T_recs, %T_recs* %t3478, i32 0, i32 4
    %t3480 = bitcast i8* %t3481 to i8*
    store i8 121, i8* %t3480
    ; line 2922
    %t3483 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 92
    %t3482 = bitcast i8* %t3483 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t3482
    ; line 2923
    ; line 2924
    %t3485 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t3484 = bitcast i8* %t3485 to i8**
    %t3486 = load i8*, i8** %t3484
    %t3487 = bitcast i8* %t3486 to i32*
    store i32 8454, i32* %t3487
    ; line 2925
    %t3489 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 0
    %t3488 = bitcast i8* %t3489 to i32*
    store i32 23487, i32* %t3488
    ; line 2926
    %t3491 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 4
    %t3490 = bitcast i8* %t3491 to i8*
    store i8 110, i8* %t3490
    ; line 2927
    %t3493 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 5
    %t3492 = bitcast i8* %t3493 to i1*
    store i1 0, i1* %t3492
    ; line 2928
    %t3495 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 6
    %t3494 = bitcast i8* %t3495 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1170, i32 0, i32 0), %T_string10* %t3494
    ; line 2929
    ; line 2930
    %t3496 = load i8*, i8** @ip
    %t3497 = bitcast i8* %t3496 to i32*
    store i32 734, i32* %t3497
    ; line 2931
    %t3498 = load %T_arri, %T_arri* @ai
    %t3499 = load %T_rec, %T_rec* @arec
    %t3500 = load %T_recv, %T_recv* @vrec
    %t3501 = load i8*, i8** @ip
    call void @P_junk8(i32 93, i1 1, i8 107, i32 7, i32 4, i32 10, double 3.14140, %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1044, i32 0, i32 0), %T_arri %t3498, %T_rec %t3499, %T_recv %t3500, %T_cset %.dummy_set, i8* %t3501)
    ; line 2933
    %t3502 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3502, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1034, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3502)
    ; line 2934
    %t3503 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3503, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1171, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t3503)
    ; line 2935
    %t3504 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3504, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1172, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3504)
    ; line 2936
    %t3505 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3505, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1173, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t3505)
    ; line 2937
    %t3506 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3506, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1059, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3506)
    ; line 2938
    %t3507 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3507, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1060, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3507)
    ; line 2939
    %t3508 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3508, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1061, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3508)
    ; line 2940
    %t3509 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3509, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1062, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3509)
    ; line 2941
    %t3510 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3510, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1174, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t3510)
    ; line 2942
    %t3511 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3511, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1170, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3511)
    ; line 2943
    %t3512 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3512, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1175, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3512)
    ; line 2944
    %t3513 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3513, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1176, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t3513)
    ; line 2945
    %t3514 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1177, i32 0, i32 0), i32 22)
    ; line 2946
    call void @P_junk9( %.dummy,  %.dummy)
    ; line 2947
    %t3515 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3515, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1178, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t3515)
    ; line 2948
    %t3516 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3516, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1179, i32 0, i32 0), i32 22)
    ; line 2949
    call void @P_junk12( %.dummy,  %.dummy)
    ; line 2950
    %t3517 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3517, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1180, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3517)
    ; line 2951
    %t3518 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3518, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1181, i32 0, i32 0), i32 23)
    ; line 2952
    call void @P_junk14()
    ; line 2953
    %t3519 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3519, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1182, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3519)
    ; line 2954
    %t3520 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3520, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1183, i32 0, i32 0), i32 23)
    ; line 2955
    call void @P_junk17( %.dummy, i32 52)
    ; line 2956
    %t3521 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3521, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.277, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3521)
    ; line 2957
    %t3522 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3522, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1184, i32 0, i32 0), i32 23)
    ; line 2958
    call void @P_junk19()
    ; line 2959
    %t3523 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3523, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.416, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3523)
    ; line 2960
    %t3524 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3524, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1185, i32 0, i32 0), i32 23)
    ; line 2961
    %t3525 = load %T_text, %T_text* @output
    %t3526 = call i32 @F_junk20()
    call void @_WriteInteger(i8* %t3525, i32 1, i32 0, i32 %t3526)
    call void @_WriteString(i8* %t3525, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1186, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3525)
    ; nop

    ; cleanup
    %t3527 = load %T_file_89, %T_file_89* @pfstc
    call void @_CloseFile(i8* %t3527)
    %t3528 = load %T_file_88, %T_file_88* @pfst
    call void @_CloseFile(i8* %t3528)
    %t3529 = load %T_file_87, %T_file_87* @pfs
    call void @_CloseFile(i8* %t3529)
    %t3530 = load %T_file_86, %T_file_86* @pfrc
    call void @_CloseFile(i8* %t3530)
    %t3531 = load %T_file_85, %T_file_85* @pfr
    call void @_CloseFile(i8* %t3531)
    %t3532 = load %T_file_84, %T_file_84* @pfp
    call void @_CloseFile(i8* %t3532)
    %t3533 = load %T_file_83, %T_file_83* @pfi
    call void @_CloseFile(i8* %t3533)
    %t3534 = load %T_file_82, %T_file_82* @pfes
    call void @_CloseFile(i8* %t3534)
    %t3535 = load %T_file_81, %T_file_81* @pfe
    call void @_CloseFile(i8* %t3535)
    %t3536 = load %T_text_80, %T_text_80* @pfc
    call void @_CloseFile(i8* %t3536)
    %t3537 = load %T_file_79, %T_file_79* @pfb
    call void @_CloseFile(i8* %t3537)
    %t3538 = load %T_file_78, %T_file_78* @pfa
    call void @_CloseFile(i8* %t3538)
    %t3539 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t3539)
    %t3540 = load %T_text, %T_text* @ft
    call void @_CloseFile(i8* %t3540)
    %t3541 = load %T_file_45, %T_file_45* @fstc
    call void @_CloseFile(i8* %t3541)
    %t3542 = load %T_file_44, %T_file_44* @fst
    call void @_CloseFile(i8* %t3542)
    %t3543 = load %T_file_43, %T_file_43* @fs
    call void @_CloseFile(i8* %t3543)
    %t3544 = load %T_file_41, %T_file_41* @frc
    call void @_CloseFile(i8* %t3544)
    %t3545 = load %T_file_40, %T_file_40* @fr
    call void @_CloseFile(i8* %t3545)
    %t3546 = load %T_file_39, %T_file_39* @fp
    call void @_CloseFile(i8* %t3546)
    %t3547 = load %T_file_38, %T_file_38* @fi
    call void @_CloseFile(i8* %t3547)
    %t3548 = load %T_file_37, %T_file_37* @fes
    call void @_CloseFile(i8* %t3548)
    %t3549 = load %T_file_36, %T_file_36* @fe
    call void @_CloseFile(i8* %t3549)
    %t3550 = load %T_text_35, %T_text_35* @fc
    call void @_CloseFile(i8* %t3550)
    %t3551 = load %T_file_34, %T_file_34* @fb
    call void @_CloseFile(i8* %t3551)
    %t3552 = load %T_file_33, %T_file_33* @fa
    call void @_CloseFile(i8* %t3552)
    %t3553 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t3553)

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
    ; line 402
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
    ; line 410
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
    ; line 418
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
    ; line 426
    %t2 = getelementptr inbounds %Frame_junk4, %Frame_junk4* %.frame, i32 0, i32 0
    %t3 = getelementptr inbounds %T_string10, %T_string10* %t2, i32 0, i32 5
    store i8 63, i8* %t3
    ; line 427
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
    ; line 435
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
    ; line 443

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
    ; line 455
    %t4 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 4
    store i32 1, i32* %t4
    ; line 456
    %t5 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 5
    store i32 2, i32* %t5
    ; line 457
    %t6 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 6
    store i32 3, i32* %t6
    ; line 458
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
    ; line 459
    %t14 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 0
    store i32 4, i32* %t14
    ; line 460
    %t15 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 1
    store i32 5, i32* %t15
    ; line 461
    %t16 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 2
    store i32 6, i32* %t16
    ; line 462
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
    ; line 463
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
    ; line 476
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
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 %.dummy.intrin)
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
    ; line 478
    ; line 478
    %t26 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t26)
    ; line 479
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
    call void @_WriteInteger(i8* %t27, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t27, i32 1, i32 0, i32 %.dummy.intrin)
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
    ; line 481
    ; line 481
    %t51 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t51)
    ; line 482
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
    ; line 483
    ; line 484
    %t65 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t65)
    ; line 485
    %t66 = load %T_text, %T_text* @output
    %t67 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t69 = getelementptr inbounds %T_rec, %T_rec* %t67, i32 0, i32 128
    %t68 = bitcast i8* %t69 to i8**
    %t70 = load i8*, i8** %t68
    %t71 = bitcast i8* %t70 to i32*
    %t72 = load i32, i32* %t71
    call void @_WriteInteger(i8* %t66, i32 1, i32 0, i32 %t72)
    call void @_WriteLn(i8* %t66)
    ; line 486
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
    ; line 487
    %t86 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t88 = getelementptr inbounds %T_recv, %T_recv* %t86, i32 0, i32 5
    %t87 = bitcast i8* %t88 to i1*
    %t89 = load i1, i1* %t87
    br i1 %t89, label %L_then_1, label %L_else_1
L_then_1:
    ; line 487
    %t90 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t90, i32 1, i32 0, i32 %.dummy.intrin)
    call void @_WriteLn(i8* %t90)
    br label %L_endif_1
L_else_1:
    ; line 487
    %t91 = load %T_text, %T_text* @output
    %t92 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t94 = getelementptr inbounds %T_recv, %T_recv* %t92, i32 0, i32 6
    %t93 = bitcast i8* %t94 to %T_string10*
    call void @_WriteString(i8* %t91, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t93, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t91)
    br label %L_endif_1
L_endif_1:
    ; line 488
    ; line 489
    %t95 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t95)
    ; line 490
    %t96 = load %T_text, %T_text* @output
    %t98 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 6
    %t97 = load i8*, i8** %t98
    %t99 = bitcast i8* %t97 to i32*
    %t100 = load i32, i32* %t99
    call void @_WriteInteger(i8* %t96, i32 1, i32 0, i32 %t100)
    call void @_WriteLn(i8* %t96)

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
    ; line 499
    call void (i32 9834, i32 8383, i8 106)
    ; line 500
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
    ; line 508
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
    ; line 516
    %t2 = getelementptr inbounds %Frame_junk11, %Frame_junk11* %.frame, i32 0, i32 1
    store i32 %.dummy.intrin, i32* %t2

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
    ; line 525
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
    ; line 533
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
    ; line 551
    %t1 = getelementptr inbounds %Frame_junk14, %Frame_junk14* %.frame, i32 0, i32 0
    store i32 62, i32* %t1
    ; line 552
    %t2 = getelementptr inbounds %Frame_junk14, %Frame_junk14* %.frame, i32 0, i32 1
    store i32 76, i32* %t2
    ; line 553
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
    ; line 545
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
    ; line 571
    call void ()
    ; line 572
    %t5 = getelementptr inbounds %Frame_junk17, %Frame_junk17* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    %t3 = icmp eq i32 %t4, 52
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 572
    call void @P_junk17( %.dummy, i32 83)
    br label %L_endif_1
L_endif_1:

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
    ; line 565
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
    ; line 587
    ; line 588
    %t2 = getelementptr inbounds %Frame_junk19, %Frame_junk19* %.frame, i32 0, i32 0
    %t1 = load i8*, i8** %t2
    %t3 = bitcast i8* %t1 to i8*
    store i8 97, i8* %t3
    ; line 589
    %t4 = load %T_text, %T_text* @output
    %t6 = getelementptr inbounds %Frame_junk19, %Frame_junk19* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t7 = bitcast i8* %t5 to i8*
    %t8 = load i8, i8* %t7
    call void @_WriteChar(i8* %t4, i32 0, i32 0, i8 %t8)
    ; line 590

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
    ; line 609
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
    ; line 602
    %t2 = getelementptr inbounds %Frame_junk20_inner, %Frame_junk20_inner* %.frame, i32 0, i32 0
    store i32 12, i32* %t2
    ; line 603
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
    ; line 621
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
    ; line 622
    %t16 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 3
    %t15 = load i32, i32* %t16
    %t14 = icmp sgt i32 %t15, 0
    br i1 %t14, label %L_then_1, label %L_else_1
L_then_1:
    ; line 622
    %t18 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 3
    %t17 = load i32, i32* %t18
    store i32 %t17, i32* @rndseq
    br label %L_endif_1
L_else_1:
    ; line 622
    %t21 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 3
    %t20 = load i32, i32* %t21
    %t19 = add i32 %t20, 2147483647
    store i32 %t19, i32* @rndseq
    br label %L_endif_1
L_endif_1:
    ; line 623
    %t22 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t25 = load i32, i32* @rndseq
    %t30 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 0
    %t29 = load i32, i32* %t30
    %t32 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    %t31 = load i32, i32* %t32
    %t28 = sub i32 %t29, %t31
    %t27 = add i32 %t28, 1
    %t26 = sdiv i32 2147483647, %t27
    %t24 = sdiv i32 %t25, %t26
    %t34 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    %t33 = load i32, i32* %t34
    %t23 = add i32 %t24, %t33
    store i32 %t23, i32* %t22

    ; epilogue
    %t35 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t36 = load i32, i32* %t35
    ret i32 %t36
}


;================================================================================
; string literals

@.str.31 = private unnamed_addr constant [62 x i8] c"                 Copyright (C) 1995 S. A. Moore - All rights \00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"                 TEST SUITE FOR ISO 7185 PASCAL\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"         1111111111222222222233333333334\00", align 1
@.str.594 = private unnamed_addr constant [51 x i8] c"         11111111112222222222333333333344444444445\00", align 1
@.str.1086 = private unnamed_addr constant [34 x i8] c"      s/b:  873 10 _i_gfedcb_ 427\00", align 1
@.str.1082 = private unnamed_addr constant [52 x i8] c"      s/b:  873 8 20 19 18 17 16 15 14 13 12 11 427\00", align 1
@.str.543 = private unnamed_addr constant [11 x i8] c"      true\00", align 1
@.str.533 = private unnamed_addr constant [11 x i8] c"     false\00", align 1
@.str.1134 = private unnamed_addr constant [16 x i8] c"     hi there !\00", align 1
@.str.1002 = private unnamed_addr constant [61 x i8] c"     s/b:  20 k 19 j 18 i 17 h 16 g 15 f 14 e 13 d 12 c 11 b\00", align 1
@.str.544 = private unnamed_addr constant [10 x i8] c"     true\00", align 1
@.str.534 = private unnamed_addr constant [10 x i8] c"    false\00", align 1
@.str.984 = private unnamed_addr constant [54 x i8] c"    s/b:   20.12 19.12 18.12 17.12 16.12 15.12 14.12 \00", align 1
@.str.981 = private unnamed_addr constant [65 x i8] c"    s/b:   false  true false  true false  true false  true false\00", align 1
@.str.545 = private unnamed_addr constant [9 x i8] c"    true\00", align 1
@.str.535 = private unnamed_addr constant [9 x i8] c"   false\00", align 1
@.str.469 = private unnamed_addr constant [16 x i8] c"   hello, world\00", align 1
@.str.1117 = private unnamed_addr constant [65 x i8] c"   s/b:    true false  true false  true false  true false  true \00", align 1
@.str.546 = private unnamed_addr constant [8 x i8] c"   true\00", align 1
@.str.963 = private unnamed_addr constant [40 x i8] c"  1   2   3   4   5   6   7   8   9  10\00", align 1
@.str.536 = private unnamed_addr constant [8 x i8] c"  false\00", align 1
@.str.470 = private unnamed_addr constant [15 x i8] c"  hello, world\00", align 1
@.str.547 = private unnamed_addr constant [7 x i8] c"  true\00", align 1
@.str.1129 = private unnamed_addr constant [18 x i8] c" 1.2345678000e+00\00", align 1
@.str.608 = private unnamed_addr constant [21 x i8] c" 1.234567890123e+000\00", align 1
@.str.607 = private unnamed_addr constant [20 x i8] c" 1.23456789012e+000\00", align 1
@.str.606 = private unnamed_addr constant [19 x i8] c" 1.2345678901e+000\00", align 1
@.str.605 = private unnamed_addr constant [18 x i8] c" 1.234567890e+000\00", align 1
@.str.604 = private unnamed_addr constant [17 x i8] c" 1.23456789e+000\00", align 1
@.str.603 = private unnamed_addr constant [16 x i8] c" 1.2345678e+000\00", align 1
@.str.602 = private unnamed_addr constant [15 x i8] c" 1.234567e+000\00", align 1
@.str.601 = private unnamed_addr constant [14 x i8] c" 1.23456e+000\00", align 1
@.str.600 = private unnamed_addr constant [13 x i8] c" 1.2345e+000\00", align 1
@.str.599 = private unnamed_addr constant [12 x i8] c" 1.234e+000\00", align 1
@.str.598 = private unnamed_addr constant [11 x i8] c" 1.23e+000\00", align 1
@.str.597 = private unnamed_addr constant [10 x i8] c" 1.2e+000\00", align 1
@.str.964 = private unnamed_addr constant [40 x i8] c" 11  12  13  14  15  16  17  18  19  20\00", align 1
@.str.397 = private unnamed_addr constant [36 x i8] c" 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.965 = private unnamed_addr constant [40 x i8] c" 21  22  23  24  25  26  27  28  29  30\00", align 1
@.str.966 = private unnamed_addr constant [40 x i8] c" 31  32  33  34  35  36  37  38  39  40\00", align 1
@.str.967 = private unnamed_addr constant [40 x i8] c" 41  42  43  44  45  46  47  48  49  50\00", align 1
@.str.1131 = private unnamed_addr constant [18 x i8] c" 5.6894321000e+01\00", align 1
@.str.968 = private unnamed_addr constant [40 x i8] c" 51  52  53  54  55  56  57  58  59  60\00", align 1
@.str.969 = private unnamed_addr constant [40 x i8] c" 61  62  63  64  65  66  67  68  69  70\00", align 1
@.str.1042 = private unnamed_addr constant [24 x i8] c" 7  6  5  4  3  2  1  0\00", align 1
@.str.970 = private unnamed_addr constant [40 x i8] c" 71  72  73  74  75  76  77  78  79  80\00", align 1
@.str.971 = private unnamed_addr constant [40 x i8] c" 81  82  83  84  85  86  87  88  89  90\00", align 1
@.str.1136 = private unnamed_addr constant [18 x i8] c" 9.3837632000e+01\00", align 1
@.str.972 = private unnamed_addr constant [41 x i8] c" 91  92  93  94  95  96  97  98  99  100\00", align 1
@.str.537 = private unnamed_addr constant [7 x i8] c" false\00", align 1
@.str.471 = private unnamed_addr constant [15 x i8] c" hello, world \00", align 1
@.str.848 = private unnamed_addr constant [6 x i8] c" s/b \00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c" s/b   1  2  3  4  5  6  7  8  9 10\00", align 1
@.str.738 = private unnamed_addr constant [19 x i8] c" s/b  1.039842e+01\00", align 1
@.str.676 = private unnamed_addr constant [19 x i8] c" s/b  1.047202e+05\00", align 1
@.str.827 = private unnamed_addr constant [19 x i8] c" s/b  1.212572e+05\00", align 1
@.str.672 = private unnamed_addr constant [19 x i8] c" s/b  1.278052e+03\00", align 1
@.str.704 = private unnamed_addr constant [19 x i8] c" s/b  1.393753e+00\00", align 1
@.str.663 = private unnamed_addr constant [18 x i8] c" s/b  1.41100e+00\00", align 1
@.str.631 = private unnamed_addr constant [19 x i8] c" s/b  1.418900e+03\00", align 1
@.str.777 = private unnamed_addr constant [19 x i8] c" s/b  1.510000e+01\00", align 1
@.str.578 = private unnamed_addr constant [19 x i8] c" s/b  1.554000e+00\00", align 1
@.str.702 = private unnamed_addr constant [19 x i8] c" s/b  1.567883e+00\00", align 1
@.str.661 = private unnamed_addr constant [18 x i8] c" s/b  1.56850e+00\00", align 1
@.str.723 = private unnamed_addr constant [19 x i8] c" s/b  1.768740e+03\00", align 1
@.str.655 = private unnamed_addr constant [18 x i8] c" s/b  1.89425e+05\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c" s/b  10  9  8  7  6  5  4  3  2  1\00", align 1
@.str.637 = private unnamed_addr constant [19 x i8] c" s/b  2.260115e+00\00", align 1
@.str.674 = private unnamed_addr constant [19 x i8] c" s/b  2.389460e+02\00", align 1
@.str.716 = private unnamed_addr constant [19 x i8] c" s/b  3.003400e+02\00", align 1
@.str.657 = private unnamed_addr constant [18 x i8] c" s/b  3.13635e+01\00", align 1
@.str.700 = private unnamed_addr constant [19 x i8] c" s/b  3.311461e-01\00", align 1
@.str.580 = private unnamed_addr constant [19 x i8] c" s/b  3.340000e-03\00", align 1
@.str.582 = private unnamed_addr constant [18 x i8] c" s/b  3.34000e-24\00", align 1
@.str.694 = private unnamed_addr constant [19 x i8] c" s/b  3.493000e+01\00", align 1
@.str.785 = private unnamed_addr constant [19 x i8] c" s/b  3.554800e+01\00", align 1
@.str.584 = private unnamed_addr constant [19 x i8] c" s/b  4.000000e-45\00", align 1
@.str.833 = private unnamed_addr constant [19 x i8] c" s/b  4.171539e-01\00", align 1
@.str.801 = private unnamed_addr constant [19 x i8] c" s/b  4.274582e+00\00", align 1
@.str.635 = private unnamed_addr constant [19 x i8] c" s/b  4.281227e+05\00", align 1
@.str.714 = private unnamed_addr constant [19 x i8] c" s/b  4.333000e+01\00", align 1
@.str.653 = private unnamed_addr constant [18 x i8] c" s/b  4.35230e+02\00", align 1
@.str.706 = private unnamed_addr constant [19 x i8] c" s/b  4.421488e+00\00", align 1
@.str.779 = private unnamed_addr constant [19 x i8] c" s/b  4.513300e+01\00", align 1
@.str.1020 = private unnamed_addr constant [16 x i8] c" s/b  5 4 3 2 1\00", align 1
@.str.764 = private unnamed_addr constant [18 x i8] c" s/b  5.39050e+05\00", align 1
@.str.696 = private unnamed_addr constant [19 x i8] c" s/b  5.475600e+00\00", align 1
@.str.633 = private unnamed_addr constant [19 x i8] c" s/b  5.484399e+02\00", align 1
@.str.795 = private unnamed_addr constant [19 x i8] c" s/b  5.585632e+02\00", align 1
@.str.732 = private unnamed_addr constant [19 x i8] c" s/b  5.605265e+06\00", align 1
@.str.665 = private unnamed_addr constant [18 x i8] c" s/b  6.07587e+00\00", align 1
@.str.770 = private unnamed_addr constant [18 x i8] c" s/b  6.80566e-01\00", align 1
@.str.825 = private unnamed_addr constant [19 x i8] c" s/b  6.823000e+00\00", align 1
@.str.678 = private unnamed_addr constant [19 x i8] c" s/b  7.259598e-03\00", align 1
@.str.762 = private unnamed_addr constant [18 x i8] c" s/b  7.34200e+02\00", align 1
@.str.842 = private unnamed_addr constant [19 x i8] c" s/b  8.422000e+01\00", align 1
@.str.1017 = private unnamed_addr constant [26 x i8] c" s/b  9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.829 = private unnamed_addr constant [19 x i8] c" s/b  9.421146e-01\00", align 1
@.str.698 = private unnamed_addr constant [19 x i8] c" s/b  9.723333e+01\00", align 1
@.str.1012 = private unnamed_addr constant [26 x i8] c" s/b  j i h g f e d c b a\00", align 1
@.str.928 = private unnamed_addr constant [11 x i8] c" s/b  true\00", align 1
@.str.1094 = private unnamed_addr constant [16 x i8] c" s/b  true 2343\00", align 1
@.str.1140 = private unnamed_addr constant [38 x i8] c" s/b 'how now<eoln> brown cow<eoln> '\00", align 1
@.str.1144 = private unnamed_addr constant [38 x i8] c" s/b 'too much<eoln> too soon<eoln> '\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c" s/b -1\00", align 1
@.str.734 = private unnamed_addr constant [19 x i8] c" s/b -1.409071e+00\00", align 1
@.str.793 = private unnamed_addr constant [19 x i8] c" s/b -1.489041e+02\00", align 1
@.str.768 = private unnamed_addr constant [18 x i8] c" s/b -1.56943e+00\00", align 1
@.str.831 = private unnamed_addr constant [19 x i8] c" s/b -1.570677e+00\00", align 1
@.str.799 = private unnamed_addr constant [19 x i8] c" s/b -1.772163e+01\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c" s/b -12\00", align 1
@.str.232 = private unnamed_addr constant [10 x i8] c" s/b -126\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c" s/b -13\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c" s/b -18\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c" s/b -2\00", align 1
@.str.592 = private unnamed_addr constant [19 x i8] c" s/b -2.000000e-14\00", align 1
@.str.791 = private unnamed_addr constant [19 x i8] c" s/b -2.641223e+01\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c" s/b -20\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c" s/b -25\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c" s/b -280\00", align 1
@.str.659 = private unnamed_addr constant [18 x i8] c" s/b -3.44290e-01\00", align 1
@.str.783 = private unnamed_addr constant [19 x i8] c" s/b -3.658100e+01\00", align 1
@.str.781 = private unnamed_addr constant [19 x i8] c" s/b -3.864000e+01\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c" s/b -33\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c" s/b -35\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c" s/b -39\00", align 1
@.str.844 = private unnamed_addr constant [19 x i8] c" s/b -4.333000e+01\00", align 1
@.str.766 = private unnamed_addr constant [18 x i8] c" s/b -4.34850e-01\00", align 1
@.str.789 = private unnamed_addr constant [19 x i8] c" s/b -4.400100e+01\00", align 1
@.str.787 = private unnamed_addr constant [19 x i8] c" s/b -4.939840e+01\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c" s/b -44\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c" s/b -46\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c" s/b -48\00", align 1
@.str.797 = private unnamed_addr constant [19 x i8] c" s/b -5.220157e+00\00", align 1
@.str.586 = private unnamed_addr constant [19 x i8] c" s/b -5.565000e+03\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c" s/b -52\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c" s/b -55\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c" s/b -6\00", align 1
@.str.590 = private unnamed_addr constant [19 x i8] c" s/b -6.364000e+29\00", align 1
@.str.719 = private unnamed_addr constant [19 x i8] c" s/b -6.599980e+03\00", align 1
@.str.727 = private unnamed_addr constant [19 x i8] c" s/b -6.900320e+03\00", align 1
@.str.838 = private unnamed_addr constant [11 x i8] c" s/b -6244\00", align 1
@.str.736 = private unnamed_addr constant [19 x i8] c" s/b -7.379627e+00\00", align 1
@.str.729 = private unnamed_addr constant [19 x i8] c" s/b -7.595593e+05\00", align 1
@.str.772 = private unnamed_addr constant [10 x i8] c" s/b -734\00", align 1
@.str.774 = private unnamed_addr constant [11 x i8] c" s/b -7635\00", align 1
@.str.279 = private unnamed_addr constant [10 x i8] c" s/b -768\00", align 1
@.str.721 = private unnamed_addr constant [19 x i8] c" s/b -8.368720e+03\00", align 1
@.str.840 = private unnamed_addr constant [19 x i8] c" s/b -8.422000e+01\00", align 1
@.str.725 = private unnamed_addr constant [19 x i8] c" s/b -8.669061e+03\00", align 1
@.str.836 = private unnamed_addr constant [10 x i8] c" s/b -843\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c" s/b -9\00", align 1
@.str.588 = private unnamed_addr constant [19 x i8] c" s/b -9.440000e-03\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c" s/b 0\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c" s/b 0 1 2 3 4 5 6 7 8 9\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c" s/b 1\00", align 1
@.str.1110 = private unnamed_addr constant [9 x i8] c" s/b 1 g\00", align 1
@.str.1090 = private unnamed_addr constant [13 x i8] c" s/b 10 2343\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c" s/b 103\00", align 1
@.str.1009 = private unnamed_addr constant [11 x i8] c" s/b 11 10\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c" s/b 121\00", align 1
@.str.938 = private unnamed_addr constant [15 x i8] c" s/b 1234.5678\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c" s/b 14\00", align 1
@.str.217 = private unnamed_addr constant [8 x i8] c" s/b 15\00", align 1
@.str.936 = private unnamed_addr constant [8 x i8] c" s/b 17\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c" s/b 1849\00", align 1
@.str.1092 = private unnamed_addr constant [14 x i8] c" s/b 19  true\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c" s/b 1904\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c" s/b 196\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c" s/b 2\00", align 1
@.str.1098 = private unnamed_addr constant [12 x i8] c" s/b 2 2343\00", align 1
@.str.976 = private unnamed_addr constant [35 x i8] c" s/b 20 19 18 17 16 15 14 13 12 11\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c" s/b 22\00", align 1
@.str.708 = private unnamed_addr constant [8 x i8] c" s/b 24\00", align 1
@.str.934 = private unnamed_addr constant [7 x i8] c" s/b 3\00", align 1
@.str.1102 = private unnamed_addr constant [12 x i8] c" s/b 3 2343\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c" s/b 3354\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c" s/b 34\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c" s/b 35\00", align 1
@.str.1186 = private unnamed_addr constant [8 x i8] c" s/b 37\00", align 1
@.str.949 = private unnamed_addr constant [10 x i8] c" s/b 3732\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c" s/b 4\00", align 1
@.str.1104 = private unnamed_addr constant [13 x i8] c" s/b 4  true\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c" s/b 42\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c" s/b 43\00", align 1
@.str.667 = private unnamed_addr constant [9 x i8] c" s/b 435\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c" s/b 44\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c" s/b 448\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c" s/b 45\00", align 1
@.str.1158 = private unnamed_addr constant [11 x i8] c" s/b 45 89\00", align 1
@.str.926 = private unnamed_addr constant [10 x i8] c" s/b 4594\00", align 1
@.str.1160 = private unnamed_addr constant [8 x i8] c" s/b 46\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c" s/b 49\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c" s/b 5\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c" s/b 52\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c" s/b 520\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c" s/b 546\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c" s/b 6\00", align 1
@.str.1182 = private unnamed_addr constant [11 x i8] c" s/b 62 76\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c" s/b 64\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c" s/b 65\00", align 1
@.str.1100 = private unnamed_addr constant [13 x i8] c" s/b 7  true\00", align 1
@.str.945 = private unnamed_addr constant [12 x i8] c" s/b 7234 y\00", align 1
@.str.710 = private unnamed_addr constant [8 x i8] c" s/b 75\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c" s/b 768\00", align 1
@.str.712 = private unnamed_addr constant [8 x i8] c" s/b 83\00", align 1
@.str.1065 = private unnamed_addr constant [19 x i8] c" s/b 873 0 235 427\00", align 1
@.str.1067 = private unnamed_addr constant [21 x i8] c" s/b 873 1  true 427\00", align 1
@.str.1088 = private unnamed_addr constant [21 x i8] c" s/b 873 11 2394 427\00", align 1
@.str.1069 = private unnamed_addr constant [17 x i8] c" s/b 873 2 f 427\00", align 1
@.str.1071 = private unnamed_addr constant [17 x i8] c" s/b 873 3 8 427\00", align 1
@.str.1073 = private unnamed_addr constant [17 x i8] c" s/b 873 4 3 427\00", align 1
@.str.1075 = private unnamed_addr constant [18 x i8] c" s/b 873 5 12 427\00", align 1
@.str.1077 = private unnamed_addr constant [25 x i8] c" s/b 873 6 8734.8389 427\00", align 1
@.str.1080 = private unnamed_addr constant [26 x i8] c" s/b 873 7 this one ? 427\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c" s/b 9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c" s/b 90\00", align 1
@.str.1180 = private unnamed_addr constant [9 x i8] c" s/b 942\00", align 1
@.str.1178 = private unnamed_addr constant [21 x i8] c" s/b 9834 8383 j 744\00", align 1
@.str.669 = private unnamed_addr constant [9 x i8] c" s/b 984\00", align 1
@.str.422 = private unnamed_addr constant [8 x i8] c" s/b 99\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c" s/b A\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c" s/b N\00", align 1
@.str.947 = private unnamed_addr constant [16 x i8] c" s/b _b_d____ij\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c" s/b a\00", align 1
@.str.392 = private unnamed_addr constant [32 x i8] c" s/b abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c" s/b b\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c" s/b f\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c" s/b false\00", align 1
@.str.1096 = private unnamed_addr constant [17 x i8] c" s/b false  true\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c" s/b g\00", align 1
@.str.350 = private unnamed_addr constant [11 x i8] c" s/b g g u\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c" s/b h\00", align 1
@.str.1045 = private unnamed_addr constant [16 x i8] c" s/b hello, guy\00", align 1
@.str.402 = private unnamed_addr constant [16 x i8] c" s/b junky01234\00", align 1
@.str.941 = private unnamed_addr constant [16 x i8] c" s/b my word is\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c" s/b n\00", align 1
@.str.931 = private unnamed_addr constant [7 x i8] c" s/b p\00", align 1
@.str.376 = private unnamed_addr constant [32 x i8] c" s/b porker    porker    parker\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c" s/b stop\00", align 1
@.str.464 = private unnamed_addr constant [22 x i8] c" s/b this is a string\00", align 1
@.str.1165 = private unnamed_addr constant [16 x i8] c" s/b tota? junk\00", align 1
@.str.1163 = private unnamed_addr constant [16 x i8] c" s/b total junk\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c" s/b true\00", align 1
@.str.485 = private unnamed_addr constant [16 x i8] c" s/b true false\00", align 1
@.str.358 = private unnamed_addr constant [7 x i8] c" s/b u\00", align 1
@.str.466 = private unnamed_addr constant [7 x i8] c" s/b v\00", align 1
@.str.420 = private unnamed_addr constant [7 x i8] c" s/b y\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" s/b yes\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c" s/b yes stop\00", align 1
@.str.413 = private unnamed_addr constant [39 x i8] c" s/b zero one two three four five six \00", align 1
@.str.394 = private unnamed_addr constant [32 x i8] c" s/b zyxwvutsrqponmlkjihgfedcba\00", align 1
@.str.1084 = private unnamed_addr constant [24 x i8] c" s/b:  873 9 2387 t 427\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c" start s/b good\00", align 1
@.str.548 = private unnamed_addr constant [6 x i8] c" true\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"!! BAD !!\00", align 1
@.str.1156 = private unnamed_addr constant [57 x i8] c"************ Procedures and functions ******************\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"***************\00", align 1
@.str.483 = private unnamed_addr constant [49 x i8] c"******************* Booleans *******************\00", align 1
@.str.348 = private unnamed_addr constant [50 x i8] c"******************* Characters*******************\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"******************* Control structures tests *******************\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"******************* Integers *******************\00", align 1
@.str.924 = private unnamed_addr constant [60 x i8] c"******************* Pointers ******************************\00", align 1
@.str.576 = private unnamed_addr constant [57 x i8] c"******************* Reals ******************************\00", align 1
@.str.552 = private unnamed_addr constant [47 x i8] c"******************* Scalar *******************\00", align 1
@.str.282 = private unnamed_addr constant [50 x i8] c"******************* Subranges *******************\00", align 1
@.str.974 = private unnamed_addr constant [58 x i8] c"******************* arrays ******************************\00", align 1
@.str.1112 = private unnamed_addr constant [57 x i8] c"******************* files ******************************\00", align 1
@.str.1055 = private unnamed_addr constant [59 x i8] c"******************* records ******************************\00", align 1
@.str.846 = private unnamed_addr constant [56 x i8] c"******************* sets ******************************\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"****************************************************************\00", align 1
@.str.1023 = private unnamed_addr constant [29 x i8] c"0 10 20 30 40 50 60 70 80 90\00", align 1
@.str.1132 = private unnamed_addr constant [11 x i8] c"0.93837632\00", align 1
@.str.906 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.855 = private unnamed_addr constant [11 x i8] c"0100001000\00", align 1
@.str.853 = private unnamed_addr constant [11 x i8] c"0100010000\00", align 1
@.str.867 = private unnamed_addr constant [11 x i8] c"0101010000\00", align 1
@.str.889 = private unnamed_addr constant [11 x i8] c"0101010101\00", align 1
@.str.904 = private unnamed_addr constant [11 x i8] c"0110000000\00", align 1
@.str.409 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1024 = private unnamed_addr constant [29 x i8] c"1 11 21 31 41 51 61 71 81 91\00", align 1
@.str.610 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.1130 = private unnamed_addr constant [10 x i8] c"1.2345678\00", align 1
@.str.910 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.619 = private unnamed_addr constant [14 x i8] c"10.2345678901\00", align 1
@.str.849 = private unnamed_addr constant [21 x i8] c"10101010101010101010\00", align 1
@.str.908 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.1172 = private unnamed_addr constant [30 x i8] c"11 12 13 14 15 16 17 18 19 20\00", align 1
@.str.620 = private unnamed_addr constant [15 x i8] c"11.23456789012\00", align 1
@.str.851 = private unnamed_addr constant [11 x i8] c"1101110001\00", align 1
@.str.621 = private unnamed_addr constant [16 x i8] c"12.234567890123\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"1234567890123456789012345678901234567890\00", align 1
@.str.595 = private unnamed_addr constant [51 x i8] c"12345678901234567890123456789012345678901234567890\00", align 1
@.str.985 = private unnamed_addr constant [18 x i8] c"13.12 12.12 11.12\00", align 1
@.str.622 = private unnamed_addr constant [17 x i8] c"13.2345678901234\00", align 1
@.str.623 = private unnamed_addr constant [18 x i8] c"14.23456789012345\00", align 1
@.str.1041 = private unnamed_addr constant [24 x i8] c"15 14 13 12 11 10  9  8\00", align 1
@.str.624 = private unnamed_addr constant [19 x i8] c"15.234567890123456\00", align 1
@.str.625 = private unnamed_addr constant [20 x i8] c"16.2345678901234567\00", align 1
@.str.626 = private unnamed_addr constant [21 x i8] c"17.23456789012345678\00", align 1
@.str.627 = private unnamed_addr constant [22 x i8] c"18.234567890123456789\00", align 1
@.str.628 = private unnamed_addr constant [23 x i8] c"19.2345678901234567890\00", align 1
@.str.1025 = private unnamed_addr constant [29 x i8] c"2 12 22 32 42 52 62 72 82 92\00", align 1
@.str.611 = private unnamed_addr constant [5 x i8] c"2.23\00", align 1
@.str.629 = private unnamed_addr constant [24 x i8] c"20.23456789012345678901\00", align 1
@.str.1059 = private unnamed_addr constant [30 x i8] c"21 22 23 24 25 26 27 28 29 30\00", align 1
@.str.1040 = private unnamed_addr constant [24 x i8] c"23 22 21 20 19 18 17 16\00", align 1
@.str.1060 = private unnamed_addr constant [7 x i8] c"2324 y\00", align 1
@.str.1174 = private unnamed_addr constant [14 x i8] c"23487 n false\00", align 1
@.str.1026 = private unnamed_addr constant [29 x i8] c"3 13 23 33 43 53 63 73 83 93\00", align 1
@.str.612 = private unnamed_addr constant [6 x i8] c"3.234\00", align 1
@.str.1039 = private unnamed_addr constant [24 x i8] c"31 30 29 28 27 26 25 24\00", align 1
@.str.1038 = private unnamed_addr constant [24 x i8] c"39 38 37 36 35 34 33 32\00", align 1
@.str.1027 = private unnamed_addr constant [29 x i8] c"4 14 24 34 44 54 64 74 84 94\00", align 1
@.str.613 = private unnamed_addr constant [7 x i8] c"4.2345\00", align 1
@.str.1037 = private unnamed_addr constant [24 x i8] c"47 46 45 44 43 42 41 40\00", align 1
@.str.1028 = private unnamed_addr constant [29 x i8] c"5 15 25 35 45 55 65 75 85 95\00", align 1
@.str.614 = private unnamed_addr constant [8 x i8] c"5.23456\00", align 1
@.str.1154 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.1036 = private unnamed_addr constant [24 x i8] c"55 54 53 52 51 50 49 48\00", align 1
@.str.1029 = private unnamed_addr constant [29 x i8] c"6 16 26 36 46 56 66 76 86 96\00", align 1
@.str.615 = private unnamed_addr constant [9 x i8] c"6.234567\00", align 1
@.str.1035 = private unnamed_addr constant [24 x i8] c"63 62 61 60 59 58 57 56\00", align 1
@.str.1173 = private unnamed_addr constant [45 x i8] c"64 false j 1 3 12  4.54500000e-29 what ? who\00", align 1
@.str.1058 = private unnamed_addr constant [45 x i8] c"64 false j 1 3 12  4.54512000e-29 what ? who\00", align 1
@.str.1030 = private unnamed_addr constant [29 x i8] c"7 17 27 37 47 57 67 77 87 97\00", align 1
@.str.616 = private unnamed_addr constant [10 x i8] c"7.2345678\00", align 1
@.str.1176 = private unnamed_addr constant [4 x i8] c"734\00", align 1
@.str.1127 = private unnamed_addr constant [5 x i8] c"7384\00", align 1
@.str.1031 = private unnamed_addr constant [29 x i8] c"8 18 28 38 48 58 68 78 88 98\00", align 1
@.str.617 = private unnamed_addr constant [11 x i8] c"8.23456789\00", align 1
@.str.1128 = private unnamed_addr constant [5 x i8] c"8342\00", align 1
@.str.1062 = private unnamed_addr constant [5 x i8] c"8454\00", align 1
@.str.1032 = private unnamed_addr constant [29 x i8] c"9 19 29 39 49 59 69 79 89 99\00", align 1
@.str.618 = private unnamed_addr constant [12 x i8] c"9.234567890\00", align 1
@.str.1171 = private unnamed_addr constant [45 x i8] c"93  true k 7 4 10  3.14140000e+00 hello, guy\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Appears to be ASCII\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Appears to not be ASCII\00", align 1
@.str.989 = private unnamed_addr constant [11 x i8] c"Array10:  \00", align 1
@.str.990 = private unnamed_addr constant [11 x i8] c"Array11:  \00", align 1
@.str.992 = private unnamed_addr constant [11 x i8] c"Array12:  \00", align 1
@.str.993 = private unnamed_addr constant [11 x i8] c"Array13:  \00", align 1
@.str.995 = private unnamed_addr constant [11 x i8] c"Array14:  \00", align 1
@.str.996 = private unnamed_addr constant [11 x i8] c"Array15:  \00", align 1
@.str.998 = private unnamed_addr constant [11 x i8] c"Array16:  \00", align 1
@.str.999 = private unnamed_addr constant [11 x i8] c"Array17:  \00", align 1
@.str.1000 = private unnamed_addr constant [11 x i8] c"Array18:  \00", align 1
@.str.1001 = private unnamed_addr constant [11 x i8] c"Array19:  \00", align 1
@.str.975 = private unnamed_addr constant [11 x i8] c"Array1:   \00", align 1
@.str.1003 = private unnamed_addr constant [11 x i8] c"Array20:  \00", align 1
@.str.1004 = private unnamed_addr constant [11 x i8] c"Array21:  \00", align 1
@.str.1005 = private unnamed_addr constant [11 x i8] c"Array22:  \00", align 1
@.str.1006 = private unnamed_addr constant [11 x i8] c"Array23:  \00", align 1
@.str.1007 = private unnamed_addr constant [11 x i8] c"Array24:  \00", align 1
@.str.1008 = private unnamed_addr constant [11 x i8] c"Array25:  \00", align 1
@.str.1010 = private unnamed_addr constant [11 x i8] c"Array26:  \00", align 1
@.str.1011 = private unnamed_addr constant [11 x i8] c"Array27:  \00", align 1
@.str.1013 = private unnamed_addr constant [11 x i8] c"Array28:  \00", align 1
@.str.1014 = private unnamed_addr constant [11 x i8] c"Array29:  \00", align 1
@.str.977 = private unnamed_addr constant [11 x i8] c"Array2:   \00", align 1
@.str.1015 = private unnamed_addr constant [11 x i8] c"Array30:  \00", align 1
@.str.1016 = private unnamed_addr constant [11 x i8] c"Array31:  \00", align 1
@.str.1018 = private unnamed_addr constant [11 x i8] c"Array32:  \00", align 1
@.str.1019 = private unnamed_addr constant [11 x i8] c"Array33:  \00", align 1
@.str.1021 = private unnamed_addr constant [11 x i8] c"Array34:  \00", align 1
@.str.1022 = private unnamed_addr constant [9 x i8] c"Array35:\00", align 1
@.str.1033 = private unnamed_addr constant [10 x i8] c"Array36: \00", align 1
@.str.1043 = private unnamed_addr constant [10 x i8] c"Array37: \00", align 1
@.str.1046 = private unnamed_addr constant [10 x i8] c"Array38: \00", align 1
@.str.1047 = private unnamed_addr constant [10 x i8] c"Array39: \00", align 1
@.str.978 = private unnamed_addr constant [11 x i8] c"Array3:   \00", align 1
@.str.1048 = private unnamed_addr constant [10 x i8] c"Array40: \00", align 1
@.str.1049 = private unnamed_addr constant [10 x i8] c"Array41: \00", align 1
@.str.1051 = private unnamed_addr constant [10 x i8] c"Array42: \00", align 1
@.str.1053 = private unnamed_addr constant [10 x i8] c"Array43: \00", align 1
@.str.979 = private unnamed_addr constant [11 x i8] c"Array4:   \00", align 1
@.str.980 = private unnamed_addr constant [11 x i8] c"Array5:   \00", align 1
@.str.982 = private unnamed_addr constant [11 x i8] c"Array6:   \00", align 1
@.str.983 = private unnamed_addr constant [11 x i8] c"Array7:   \00", align 1
@.str.986 = private unnamed_addr constant [11 x i8] c"Array8:   \00", align 1
@.str.987 = private unnamed_addr constant [11 x i8] c"Array9:   \00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"Bit length of integer without sign bit appears to be: \00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Boolean default output field\00", align 1
@.str.494 = private unnamed_addr constant [13 x i8] c"Boolean10:  \00", align 1
@.str.495 = private unnamed_addr constant [13 x i8] c"Boolean11:  \00", align 1
@.str.496 = private unnamed_addr constant [13 x i8] c"Boolean12:  \00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"Boolean13:  \00", align 1
@.str.498 = private unnamed_addr constant [13 x i8] c"Boolean14:  \00", align 1
@.str.499 = private unnamed_addr constant [13 x i8] c"Boolean15:  \00", align 1
@.str.500 = private unnamed_addr constant [13 x i8] c"Boolean16:  \00", align 1
@.str.501 = private unnamed_addr constant [13 x i8] c"Boolean17:  \00", align 1
@.str.502 = private unnamed_addr constant [13 x i8] c"Boolean18:  \00", align 1
@.str.503 = private unnamed_addr constant [13 x i8] c"Boolean19:  \00", align 1
@.str.484 = private unnamed_addr constant [13 x i8] c"Boolean1:   \00", align 1
@.str.504 = private unnamed_addr constant [13 x i8] c"Boolean20:  \00", align 1
@.str.505 = private unnamed_addr constant [13 x i8] c"Boolean21:  \00", align 1
@.str.507 = private unnamed_addr constant [13 x i8] c"Boolean22:  \00", align 1
@.str.509 = private unnamed_addr constant [13 x i8] c"Boolean23:  \00", align 1
@.str.510 = private unnamed_addr constant [13 x i8] c"Boolean24:  \00", align 1
@.str.511 = private unnamed_addr constant [13 x i8] c"Boolean25:  \00", align 1
@.str.512 = private unnamed_addr constant [13 x i8] c"Boolean26:  \00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"Boolean27:  \00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"Boolean28:  \00", align 1
@.str.515 = private unnamed_addr constant [13 x i8] c"Boolean29:  \00", align 1
@.str.486 = private unnamed_addr constant [13 x i8] c"Boolean2:   \00", align 1
@.str.516 = private unnamed_addr constant [13 x i8] c"Boolean30:  \00", align 1
@.str.517 = private unnamed_addr constant [13 x i8] c"Boolean31:  \00", align 1
@.str.518 = private unnamed_addr constant [13 x i8] c"Boolean32:  \00", align 1
@.str.519 = private unnamed_addr constant [13 x i8] c"Boolean33:  \00", align 1
@.str.520 = private unnamed_addr constant [13 x i8] c"Boolean34:  \00", align 1
@.str.521 = private unnamed_addr constant [13 x i8] c"Boolean35:  \00", align 1
@.str.522 = private unnamed_addr constant [13 x i8] c"Boolean36:  \00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"Boolean37:  \00", align 1
@.str.524 = private unnamed_addr constant [13 x i8] c"Boolean38:  \00", align 1
@.str.525 = private unnamed_addr constant [13 x i8] c"Boolean39:  \00", align 1
@.str.487 = private unnamed_addr constant [13 x i8] c"Boolean3:   \00", align 1
@.str.526 = private unnamed_addr constant [13 x i8] c"Boolean40:  \00", align 1
@.str.527 = private unnamed_addr constant [13 x i8] c"Boolean41:  \00", align 1
@.str.528 = private unnamed_addr constant [13 x i8] c"Boolean42:  \00", align 1
@.str.529 = private unnamed_addr constant [13 x i8] c"Boolean43:  \00", align 1
@.str.530 = private unnamed_addr constant [13 x i8] c"Boolean44:  \00", align 1
@.str.531 = private unnamed_addr constant [11 x i8] c"Boolean45:\00", align 1
@.str.532 = private unnamed_addr constant [16 x i8] c"Boolean45: s/b:\00", align 1
@.str.541 = private unnamed_addr constant [11 x i8] c"Boolean46:\00", align 1
@.str.542 = private unnamed_addr constant [16 x i8] c"Boolean46: s/b:\00", align 1
@.str.488 = private unnamed_addr constant [13 x i8] c"Boolean4:   \00", align 1
@.str.489 = private unnamed_addr constant [13 x i8] c"Boolean5:   \00", align 1
@.str.490 = private unnamed_addr constant [13 x i8] c"Boolean6:   \00", align 1
@.str.491 = private unnamed_addr constant [13 x i8] c"Boolean7:   \00", align 1
@.str.492 = private unnamed_addr constant [13 x i8] c"Boolean8:   \00", align 1
@.str.493 = private unnamed_addr constant [13 x i8] c"Boolean9:   \00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Char default output field\00", align 1
@.str.363 = private unnamed_addr constant [15 x i8] c"Character10:  \00", align 1
@.str.364 = private unnamed_addr constant [15 x i8] c"Character11:  \00", align 1
@.str.365 = private unnamed_addr constant [15 x i8] c"Character12:  \00", align 1
@.str.366 = private unnamed_addr constant [15 x i8] c"Character13:  \00", align 1
@.str.367 = private unnamed_addr constant [15 x i8] c"Character14:  \00", align 1
@.str.368 = private unnamed_addr constant [15 x i8] c"Character15:  \00", align 1
@.str.369 = private unnamed_addr constant [15 x i8] c"Character16:  \00", align 1
@.str.370 = private unnamed_addr constant [15 x i8] c"Character17:  \00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"Character18:  \00", align 1
@.str.372 = private unnamed_addr constant [15 x i8] c"Character19:  \00", align 1
@.str.349 = private unnamed_addr constant [15 x i8] c"Character1:   \00", align 1
@.str.375 = private unnamed_addr constant [15 x i8] c"Character20:  \00", align 1
@.str.377 = private unnamed_addr constant [15 x i8] c"Character21:  \00", align 1
@.str.378 = private unnamed_addr constant [15 x i8] c"Character22:  \00", align 1
@.str.379 = private unnamed_addr constant [15 x i8] c"Character23:  \00", align 1
@.str.380 = private unnamed_addr constant [15 x i8] c"Character24:  \00", align 1
@.str.381 = private unnamed_addr constant [15 x i8] c"Character25:  \00", align 1
@.str.382 = private unnamed_addr constant [15 x i8] c"Character26:  \00", align 1
@.str.383 = private unnamed_addr constant [15 x i8] c"Character27:  \00", align 1
@.str.384 = private unnamed_addr constant [15 x i8] c"Character28:  \00", align 1
@.str.385 = private unnamed_addr constant [15 x i8] c"Character29:  \00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"Character2:   \00", align 1
@.str.386 = private unnamed_addr constant [15 x i8] c"Character30:  \00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"Character3:   \00", align 1
@.str.387 = private unnamed_addr constant [15 x i8] c"Character40:  \00", align 1
@.str.388 = private unnamed_addr constant [15 x i8] c"Character41:  \00", align 1
@.str.389 = private unnamed_addr constant [15 x i8] c"Character42:  \00", align 1
@.str.390 = private unnamed_addr constant [15 x i8] c"Character43:  \00", align 1
@.str.391 = private unnamed_addr constant [15 x i8] c"Character44:  \00", align 1
@.str.393 = private unnamed_addr constant [15 x i8] c"Character45:  \00", align 1
@.str.395 = private unnamed_addr constant [15 x i8] c"Character46:  \00", align 1
@.str.396 = private unnamed_addr constant [50 x i8] c"Character46: s/b 25 24 23 22 21 20 19 18 17 16 15\00", align 1
@.str.398 = private unnamed_addr constant [14 x i8] c"Character47: \00", align 1
@.str.401 = private unnamed_addr constant [14 x i8] c"Character48: \00", align 1
@.str.406 = private unnamed_addr constant [15 x i8] c"Character49:  \00", align 1
@.str.407 = private unnamed_addr constant [17 x i8] c"Character49: s/b\00", align 1
@.str.355 = private unnamed_addr constant [15 x i8] c"Character4:   \00", align 1
@.str.412 = private unnamed_addr constant [15 x i8] c"Character50:  \00", align 1
@.str.415 = private unnamed_addr constant [15 x i8] c"Character51:  \00", align 1
@.str.417 = private unnamed_addr constant [15 x i8] c"Character52:  \00", align 1
@.str.419 = private unnamed_addr constant [15 x i8] c"Character53:  \00", align 1
@.str.421 = private unnamed_addr constant [15 x i8] c"Character54:  \00", align 1
@.str.423 = private unnamed_addr constant [15 x i8] c"Character55:  \00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"Character56:  \00", align 1
@.str.426 = private unnamed_addr constant [15 x i8] c"Character57:  \00", align 1
@.str.427 = private unnamed_addr constant [15 x i8] c"Character58:  \00", align 1
@.str.428 = private unnamed_addr constant [15 x i8] c"Character59:  \00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"Character5:   \00", align 1
@.str.429 = private unnamed_addr constant [15 x i8] c"Character61:  \00", align 1
@.str.430 = private unnamed_addr constant [15 x i8] c"Character62:  \00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"Character63:  \00", align 1
@.str.432 = private unnamed_addr constant [15 x i8] c"Character64:  \00", align 1
@.str.433 = private unnamed_addr constant [15 x i8] c"Character65:  \00", align 1
@.str.434 = private unnamed_addr constant [15 x i8] c"Character66:  \00", align 1
@.str.435 = private unnamed_addr constant [15 x i8] c"Character67:  \00", align 1
@.str.436 = private unnamed_addr constant [15 x i8] c"Character68:  \00", align 1
@.str.437 = private unnamed_addr constant [15 x i8] c"Character69:  \00", align 1
@.str.359 = private unnamed_addr constant [15 x i8] c"Character6:   \00", align 1
@.str.438 = private unnamed_addr constant [15 x i8] c"Character70:  \00", align 1
@.str.439 = private unnamed_addr constant [15 x i8] c"Character71:  \00", align 1
@.str.441 = private unnamed_addr constant [15 x i8] c"Character72:  \00", align 1
@.str.444 = private unnamed_addr constant [15 x i8] c"Character73:  \00", align 1
@.str.445 = private unnamed_addr constant [15 x i8] c"Character74:  \00", align 1
@.str.446 = private unnamed_addr constant [15 x i8] c"Character75:  \00", align 1
@.str.447 = private unnamed_addr constant [15 x i8] c"Character76:  \00", align 1
@.str.450 = private unnamed_addr constant [15 x i8] c"Character77:  \00", align 1
@.str.451 = private unnamed_addr constant [15 x i8] c"Character78:  \00", align 1
@.str.454 = private unnamed_addr constant [15 x i8] c"Character79:  \00", align 1
@.str.360 = private unnamed_addr constant [15 x i8] c"Character7:   \00", align 1
@.str.455 = private unnamed_addr constant [15 x i8] c"Character80:  \00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"Character81:  \00", align 1
@.str.459 = private unnamed_addr constant [15 x i8] c"Character82:  \00", align 1
@.str.460 = private unnamed_addr constant [15 x i8] c"Character83:  \00", align 1
@.str.462 = private unnamed_addr constant [15 x i8] c"Character84:  \00", align 1
@.str.465 = private unnamed_addr constant [15 x i8] c"Character85:  \00", align 1
@.str.467 = private unnamed_addr constant [15 x i8] c"Character86:  \00", align 1
@.str.468 = private unnamed_addr constant [19 x i8] c"Character86:  s/b:\00", align 1
@.str.361 = private unnamed_addr constant [15 x i8] c"Character8:   \00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"Character9:   \00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"Control10: \00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"Control10: s/b \00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Control11: start \00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Control12: start \00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"Control13: start \00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"Control14: start \00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Control15: start \00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"Control16: start \00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"Control17: start \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Control1: \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Control2: \00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Control3: \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Control4: \00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Control5: \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Control6: \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Control7: \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Control8: \00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Control9: \00", align 1
@.str.1145 = private unnamed_addr constant [11 x i8] c"File13:   \00", align 1
@.str.1146 = private unnamed_addr constant [11 x i8] c"File14:   \00", align 1
@.str.1147 = private unnamed_addr constant [11 x i8] c"File15:   \00", align 1
@.str.1148 = private unnamed_addr constant [11 x i8] c"File16:   \00", align 1
@.str.1149 = private unnamed_addr constant [11 x i8] c"File17:   \00", align 1
@.str.1150 = private unnamed_addr constant [11 x i8] c"File18:   \00", align 1
@.str.1151 = private unnamed_addr constant [11 x i8] c"File19:   \00", align 1
@.str.1113 = private unnamed_addr constant [10 x i8] c"File1:   \00", align 1
@.str.1152 = private unnamed_addr constant [11 x i8] c"File20:   \00", align 1
@.str.1153 = private unnamed_addr constant [11 x i8] c"File21:   \00", align 1
@.str.1155 = private unnamed_addr constant [11 x i8] c"File22:   \00", align 1
@.str.1115 = private unnamed_addr constant [10 x i8] c"File2:   \00", align 1
@.str.1116 = private unnamed_addr constant [10 x i8] c"File3:   \00", align 1
@.str.1118 = private unnamed_addr constant [10 x i8] c"File4:   \00", align 1
@.str.1119 = private unnamed_addr constant [10 x i8] c"File5:   \00", align 1
@.str.1121 = private unnamed_addr constant [10 x i8] c"File6:   \00", align 1
@.str.1122 = private unnamed_addr constant [10 x i8] c"File7:   \00", align 1
@.str.1124 = private unnamed_addr constant [10 x i8] c"File8:   \00", align 1
@.str.1125 = private unnamed_addr constant [7 x i8] c"File9:\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Integer default output field\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"Integer100:  \00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"Integer101: \00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"Integer102: \00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"Integer103: \00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"Integer104: \00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"Integer105: \00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"Integer106: \00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"Integer107: \00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"Integer108: \00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"Integer109: \00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"Integer10:  \00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"Integer110: \00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"Integer111: \00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"Integer112: \00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"Integer113: \00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"Integer114: \00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"Integer115: \00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"Integer116: \00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"Integer117: \00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"Integer118: \00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"Integer119: \00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"Integer11:  \00", align 1
@.str.253 = private unnamed_addr constant [13 x i8] c"Integer120: \00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"Integer121: \00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"Integer122: \00", align 1
@.str.256 = private unnamed_addr constant [13 x i8] c"Integer123: \00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"Integer124: \00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"Integer125: \00", align 1
@.str.259 = private unnamed_addr constant [13 x i8] c"Integer126: \00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"Integer127: \00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"Integer128: \00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"Integer129: \00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"Integer12:  \00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"Integer130: \00", align 1
@.str.264 = private unnamed_addr constant [13 x i8] c"Integer131: \00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"Integer132: \00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"Integer133: \00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"Integer134: \00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"Integer135: \00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"Integer136: \00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"Integer137: \00", align 1
@.str.271 = private unnamed_addr constant [13 x i8] c"Integer138: \00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"Integer139: \00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"Integer13:  \00", align 1
@.str.273 = private unnamed_addr constant [13 x i8] c"Integer140: \00", align 1
@.str.274 = private unnamed_addr constant [13 x i8] c"Integer141: \00", align 1
@.str.275 = private unnamed_addr constant [13 x i8] c"Integer142: \00", align 1
@.str.276 = private unnamed_addr constant [13 x i8] c"Integer143: \00", align 1
@.str.278 = private unnamed_addr constant [13 x i8] c"Integer144: \00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"Integer145: \00", align 1
@.str.281 = private unnamed_addr constant [13 x i8] c"Integer146: \00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"Integer14:  \00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"Integer15:  \00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"Integer16:  \00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"Integer17:  \00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"Integer18:  \00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"Integer19:  \00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"Integer1:   \00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"Integer20:  \00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"Integer21:  \00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"Integer22:  \00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"Integer23:  \00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"Integer24:  \00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Integer25:  \00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"Integer26:  \00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"Integer27:  \00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"Integer28:  \00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"Integer29:  \00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"Integer2:   \00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"Integer30:  \00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"Integer31:  \00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"Integer32:  \00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Integer33:  \00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"Integer34:  \00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Integer35:  \00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"Integer36:  \00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"Integer37:  \00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"Integer38:  \00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Integer39:  \00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"Integer3:   \00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"Integer40:  \00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"Integer41:  \00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Integer42:  \00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"Integer43:  \00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"Integer44:  \00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Integer45:  \00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"Integer46:  \00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"Integer47:  \00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"Integer48:  \00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"Integer49:  \00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"Integer4:   \00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"Integer50:  \00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"Integer51:  \00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"Integer52:  \00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"Integer53:  \00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"Integer54:  \00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"Integer55:  \00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"Integer56:  \00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"Integer57:  \00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"Integer58:  \00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"Integer59:  \00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"Integer5:   \00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"Integer60:  \00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"Integer61:  \00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"Integer62:  \00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"Integer63:  \00", align 1
@.str.173 = private unnamed_addr constant [13 x i8] c"Integer64:  \00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"Integer65:  \00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"Integer66:  \00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"Integer67:  \00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"Integer68:  \00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"Integer69:  \00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Integer6:   \00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"Integer70: \00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"Integer71:  \00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"Integer72:  \00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"Integer73:  \00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"Integer74:  \00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"Integer75:  \00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"Integer76:  \00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"Integer77:  \00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"Integer78:  \00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"Integer79:  \00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"Integer7:   \00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"Integer80:  \00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"Integer81:  \00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"Integer82:  \00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"Integer83:  \00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"Integer84:  \00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"Integer85:  \00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"Integer86:  \00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"Integer87:  \00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"Integer88:  \00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"Integer89:  \00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"Integer8:   \00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"Integer90:  \00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"Integer91:  \00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"Integer92:  \00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"Integer93:  \00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"Integer94:  \00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"Integer95:  \00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"Integer96:  \00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"Integer97:  \00", align 1
@.str.215 = private unnamed_addr constant [13 x i8] c"Integer98:  \00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"Integer99:  \00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Integer9:   \00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Maxint: \00", align 1
@.str.942 = private unnamed_addr constant [13 x i8] c"Pointer10:  \00", align 1
@.str.944 = private unnamed_addr constant [14 x i8] c"Pointer11:   \00", align 1
@.str.946 = private unnamed_addr constant [14 x i8] c"Pointer12:   \00", align 1
@.str.948 = private unnamed_addr constant [13 x i8] c"Pointer13:  \00", align 1
@.str.950 = private unnamed_addr constant [13 x i8] c"Pointer14:  \00", align 1
@.str.951 = private unnamed_addr constant [13 x i8] c"Pointer15:  \00", align 1
@.str.952 = private unnamed_addr constant [13 x i8] c"Pointer16:  \00", align 1
@.str.953 = private unnamed_addr constant [13 x i8] c"Pointer17:  \00", align 1
@.str.954 = private unnamed_addr constant [13 x i8] c"Pointer18:  \00", align 1
@.str.955 = private unnamed_addr constant [13 x i8] c"Pointer19:  \00", align 1
@.str.925 = private unnamed_addr constant [13 x i8] c"Pointer1:   \00", align 1
@.str.956 = private unnamed_addr constant [13 x i8] c"Pointer20:  \00", align 1
@.str.958 = private unnamed_addr constant [13 x i8] c"Pointer21:  \00", align 1
@.str.959 = private unnamed_addr constant [13 x i8] c"Pointer22:  \00", align 1
@.str.960 = private unnamed_addr constant [13 x i8] c"Pointer23:  \00", align 1
@.str.961 = private unnamed_addr constant [13 x i8] c"Pointer24:  \00", align 1
@.str.973 = private unnamed_addr constant [13 x i8] c"Pointer25:  \00", align 1
@.str.927 = private unnamed_addr constant [13 x i8] c"Pointer2:   \00", align 1
@.str.929 = private unnamed_addr constant [13 x i8] c"Pointer3:   \00", align 1
@.str.930 = private unnamed_addr constant [13 x i8] c"Pointer4:   \00", align 1
@.str.932 = private unnamed_addr constant [13 x i8] c"Pointer5:   \00", align 1
@.str.933 = private unnamed_addr constant [13 x i8] c"Pointer6:   \00", align 1
@.str.935 = private unnamed_addr constant [13 x i8] c"Pointer7:   \00", align 1
@.str.937 = private unnamed_addr constant [13 x i8] c"Pointer8:   \00", align 1
@.str.939 = private unnamed_addr constant [13 x i8] c"Pointer9:   \00", align 1
@.str.1181 = private unnamed_addr constant [24 x i8] c"ProcedureFunction10:   \00", align 1
@.str.1183 = private unnamed_addr constant [24 x i8] c"ProcedureFunction11:   \00", align 1
@.str.1184 = private unnamed_addr constant [24 x i8] c"ProcedureFunction12:   \00", align 1
@.str.1185 = private unnamed_addr constant [24 x i8] c"ProcedureFunction13:   \00", align 1
@.str.1157 = private unnamed_addr constant [23 x i8] c"ProcedureFunction1:   \00", align 1
@.str.1159 = private unnamed_addr constant [23 x i8] c"ProcedureFunction2:   \00", align 1
@.str.1161 = private unnamed_addr constant [23 x i8] c"ProcedureFunction3:   \00", align 1
@.str.1164 = private unnamed_addr constant [23 x i8] c"ProcedureFunction4:   \00", align 1
@.str.1166 = private unnamed_addr constant [23 x i8] c"ProcedureFunction5:   \00", align 1
@.str.1167 = private unnamed_addr constant [23 x i8] c"ProcedureFunction6:   \00", align 1
@.str.1169 = private unnamed_addr constant [20 x i8] c"ProcedureFunction7:\00", align 1
@.str.1177 = private unnamed_addr constant [23 x i8] c"ProcedureFunction8:   \00", align 1
@.str.1179 = private unnamed_addr constant [23 x i8] c"ProcedureFunction9:   \00", align 1
@.str.632 = private unnamed_addr constant [10 x i8] c"Rea112:  \00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Real default output field\00", align 1
@.str.758 = private unnamed_addr constant [10 x i8] c"Real100: \00", align 1
@.str.759 = private unnamed_addr constant [10 x i8] c"Real101: \00", align 1
@.str.760 = private unnamed_addr constant [10 x i8] c"Real102: \00", align 1
@.str.761 = private unnamed_addr constant [10 x i8] c"Real103: \00", align 1
@.str.763 = private unnamed_addr constant [10 x i8] c"Real104: \00", align 1
@.str.765 = private unnamed_addr constant [10 x i8] c"Real105: \00", align 1
@.str.767 = private unnamed_addr constant [10 x i8] c"Real106: \00", align 1
@.str.769 = private unnamed_addr constant [10 x i8] c"Real107: \00", align 1
@.str.771 = private unnamed_addr constant [10 x i8] c"Real108: \00", align 1
@.str.773 = private unnamed_addr constant [10 x i8] c"Real109: \00", align 1
@.str.609 = private unnamed_addr constant [8 x i8] c"Real10:\00", align 1
@.str.775 = private unnamed_addr constant [10 x i8] c"Real110: \00", align 1
@.str.776 = private unnamed_addr constant [10 x i8] c"Real111: \00", align 1
@.str.778 = private unnamed_addr constant [10 x i8] c"Real112: \00", align 1
@.str.780 = private unnamed_addr constant [10 x i8] c"Real113: \00", align 1
@.str.782 = private unnamed_addr constant [10 x i8] c"Real114: \00", align 1
@.str.784 = private unnamed_addr constant [10 x i8] c"Real115: \00", align 1
@.str.786 = private unnamed_addr constant [10 x i8] c"Real116: \00", align 1
@.str.788 = private unnamed_addr constant [10 x i8] c"Real117: \00", align 1
@.str.790 = private unnamed_addr constant [10 x i8] c"Real118: \00", align 1
@.str.792 = private unnamed_addr constant [10 x i8] c"Real119: \00", align 1
@.str.630 = private unnamed_addr constant [10 x i8] c"Real11:  \00", align 1
@.str.794 = private unnamed_addr constant [10 x i8] c"Real120: \00", align 1
@.str.796 = private unnamed_addr constant [10 x i8] c"Real121: \00", align 1
@.str.798 = private unnamed_addr constant [10 x i8] c"Real122: \00", align 1
@.str.800 = private unnamed_addr constant [10 x i8] c"Real123: \00", align 1
@.str.802 = private unnamed_addr constant [10 x i8] c"Real124: \00", align 1
@.str.803 = private unnamed_addr constant [10 x i8] c"Real125: \00", align 1
@.str.804 = private unnamed_addr constant [10 x i8] c"Real126: \00", align 1
@.str.805 = private unnamed_addr constant [10 x i8] c"Real127: \00", align 1
@.str.806 = private unnamed_addr constant [10 x i8] c"Real128: \00", align 1
@.str.807 = private unnamed_addr constant [10 x i8] c"Real129: \00", align 1
@.str.808 = private unnamed_addr constant [10 x i8] c"Real130: \00", align 1
@.str.809 = private unnamed_addr constant [10 x i8] c"Real131: \00", align 1
@.str.810 = private unnamed_addr constant [10 x i8] c"Real132: \00", align 1
@.str.811 = private unnamed_addr constant [10 x i8] c"Real133: \00", align 1
@.str.812 = private unnamed_addr constant [10 x i8] c"Real134: \00", align 1
@.str.813 = private unnamed_addr constant [10 x i8] c"Real135: \00", align 1
@.str.814 = private unnamed_addr constant [10 x i8] c"Real136: \00", align 1
@.str.815 = private unnamed_addr constant [10 x i8] c"Real137: \00", align 1
@.str.816 = private unnamed_addr constant [10 x i8] c"Real138: \00", align 1
@.str.817 = private unnamed_addr constant [10 x i8] c"Real139: \00", align 1
@.str.634 = private unnamed_addr constant [10 x i8] c"Real13:  \00", align 1
@.str.818 = private unnamed_addr constant [10 x i8] c"Real140: \00", align 1
@.str.819 = private unnamed_addr constant [10 x i8] c"Real141: \00", align 1
@.str.820 = private unnamed_addr constant [10 x i8] c"Real142: \00", align 1
@.str.821 = private unnamed_addr constant [10 x i8] c"Real143: \00", align 1
@.str.822 = private unnamed_addr constant [10 x i8] c"Real144: \00", align 1
@.str.823 = private unnamed_addr constant [10 x i8] c"Real145: \00", align 1
@.str.824 = private unnamed_addr constant [10 x i8] c"Real146: \00", align 1
@.str.826 = private unnamed_addr constant [10 x i8] c"Real147  \00", align 1
@.str.828 = private unnamed_addr constant [10 x i8] c"Real148: \00", align 1
@.str.830 = private unnamed_addr constant [10 x i8] c"Real149: \00", align 1
@.str.636 = private unnamed_addr constant [10 x i8] c"Real14:  \00", align 1
@.str.832 = private unnamed_addr constant [10 x i8] c"Real150: \00", align 1
@.str.834 = private unnamed_addr constant [10 x i8] c"Real151: \00", align 1
@.str.835 = private unnamed_addr constant [10 x i8] c"Real152: \00", align 1
@.str.837 = private unnamed_addr constant [10 x i8] c"Real153: \00", align 1
@.str.839 = private unnamed_addr constant [10 x i8] c"Real154: \00", align 1
@.str.841 = private unnamed_addr constant [10 x i8] c"Real155: \00", align 1
@.str.843 = private unnamed_addr constant [11 x i8] c"Real156:  \00", align 1
@.str.845 = private unnamed_addr constant [10 x i8] c"Real157: \00", align 1
@.str.638 = private unnamed_addr constant [10 x i8] c"Real15:  \00", align 1
@.str.639 = private unnamed_addr constant [10 x i8] c"Real16:  \00", align 1
@.str.640 = private unnamed_addr constant [10 x i8] c"Real17:  \00", align 1
@.str.641 = private unnamed_addr constant [10 x i8] c"Real18:  \00", align 1
@.str.642 = private unnamed_addr constant [10 x i8] c"Real19:  \00", align 1
@.str.577 = private unnamed_addr constant [10 x i8] c"Real1:   \00", align 1
@.str.643 = private unnamed_addr constant [10 x i8] c"Real20:  \00", align 1
@.str.644 = private unnamed_addr constant [10 x i8] c"Real21:  \00", align 1
@.str.645 = private unnamed_addr constant [10 x i8] c"Real22:  \00", align 1
@.str.646 = private unnamed_addr constant [10 x i8] c"Real23:  \00", align 1
@.str.647 = private unnamed_addr constant [10 x i8] c"Real24:  \00", align 1
@.str.648 = private unnamed_addr constant [10 x i8] c"Real25:  \00", align 1
@.str.649 = private unnamed_addr constant [10 x i8] c"Real26:  \00", align 1
@.str.650 = private unnamed_addr constant [10 x i8] c"Real27:  \00", align 1
@.str.651 = private unnamed_addr constant [10 x i8] c"Real28:  \00", align 1
@.str.652 = private unnamed_addr constant [10 x i8] c"Real29:  \00", align 1
@.str.579 = private unnamed_addr constant [10 x i8] c"Real2:   \00", align 1
@.str.654 = private unnamed_addr constant [10 x i8] c"Real30:  \00", align 1
@.str.656 = private unnamed_addr constant [10 x i8] c"Real31:  \00", align 1
@.str.658 = private unnamed_addr constant [10 x i8] c"Real32:  \00", align 1
@.str.660 = private unnamed_addr constant [10 x i8] c"Real33:  \00", align 1
@.str.662 = private unnamed_addr constant [10 x i8] c"Real34:  \00", align 1
@.str.664 = private unnamed_addr constant [10 x i8] c"Real35:  \00", align 1
@.str.666 = private unnamed_addr constant [10 x i8] c"Real36:  \00", align 1
@.str.668 = private unnamed_addr constant [10 x i8] c"Real37:  \00", align 1
@.str.670 = private unnamed_addr constant [10 x i8] c"Real38:  \00", align 1
@.str.671 = private unnamed_addr constant [10 x i8] c"Real39:  \00", align 1
@.str.581 = private unnamed_addr constant [10 x i8] c"Real3:   \00", align 1
@.str.673 = private unnamed_addr constant [10 x i8] c"Real40:  \00", align 1
@.str.675 = private unnamed_addr constant [10 x i8] c"Real41:  \00", align 1
@.str.677 = private unnamed_addr constant [10 x i8] c"Real42:  \00", align 1
@.str.679 = private unnamed_addr constant [10 x i8] c"Real43:  \00", align 1
@.str.680 = private unnamed_addr constant [10 x i8] c"Real44:  \00", align 1
@.str.681 = private unnamed_addr constant [10 x i8] c"Real45:  \00", align 1
@.str.682 = private unnamed_addr constant [10 x i8] c"Real46:  \00", align 1
@.str.683 = private unnamed_addr constant [10 x i8] c"Real47:  \00", align 1
@.str.684 = private unnamed_addr constant [10 x i8] c"Real48:  \00", align 1
@.str.685 = private unnamed_addr constant [10 x i8] c"Real49:  \00", align 1
@.str.583 = private unnamed_addr constant [10 x i8] c"Real4:   \00", align 1
@.str.686 = private unnamed_addr constant [10 x i8] c"Real50:  \00", align 1
@.str.687 = private unnamed_addr constant [10 x i8] c"Real51:  \00", align 1
@.str.688 = private unnamed_addr constant [10 x i8] c"Real52:  \00", align 1
@.str.689 = private unnamed_addr constant [10 x i8] c"Real53:  \00", align 1
@.str.690 = private unnamed_addr constant [10 x i8] c"Real54:  \00", align 1
@.str.691 = private unnamed_addr constant [10 x i8] c"Real55:  \00", align 1
@.str.692 = private unnamed_addr constant [10 x i8] c"Real56:  \00", align 1
@.str.693 = private unnamed_addr constant [10 x i8] c"Real57:  \00", align 1
@.str.695 = private unnamed_addr constant [10 x i8] c"Real58:  \00", align 1
@.str.697 = private unnamed_addr constant [10 x i8] c"Real59:  \00", align 1
@.str.585 = private unnamed_addr constant [10 x i8] c"Real5:   \00", align 1
@.str.699 = private unnamed_addr constant [10 x i8] c"Real60:  \00", align 1
@.str.701 = private unnamed_addr constant [10 x i8] c"Real61:  \00", align 1
@.str.703 = private unnamed_addr constant [10 x i8] c"Real62:  \00", align 1
@.str.705 = private unnamed_addr constant [10 x i8] c"Real63:  \00", align 1
@.str.707 = private unnamed_addr constant [10 x i8] c"Real64:  \00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"Real65:  \00", align 1
@.str.711 = private unnamed_addr constant [10 x i8] c"Real66:  \00", align 1
@.str.713 = private unnamed_addr constant [10 x i8] c"Real67:  \00", align 1
@.str.715 = private unnamed_addr constant [10 x i8] c"Real68:  \00", align 1
@.str.717 = private unnamed_addr constant [10 x i8] c"Real69:  \00", align 1
@.str.587 = private unnamed_addr constant [10 x i8] c"Real6:   \00", align 1
@.str.718 = private unnamed_addr constant [10 x i8] c"Real70:  \00", align 1
@.str.720 = private unnamed_addr constant [10 x i8] c"Real71:  \00", align 1
@.str.722 = private unnamed_addr constant [10 x i8] c"Real72:  \00", align 1
@.str.724 = private unnamed_addr constant [10 x i8] c"Real73:  \00", align 1
@.str.726 = private unnamed_addr constant [10 x i8] c"Real74:  \00", align 1
@.str.728 = private unnamed_addr constant [10 x i8] c"Real75:  \00", align 1
@.str.730 = private unnamed_addr constant [10 x i8] c"Real76:  \00", align 1
@.str.731 = private unnamed_addr constant [10 x i8] c"Real77:  \00", align 1
@.str.733 = private unnamed_addr constant [10 x i8] c"Real78:  \00", align 1
@.str.735 = private unnamed_addr constant [10 x i8] c"Real79:  \00", align 1
@.str.589 = private unnamed_addr constant [10 x i8] c"Real7:   \00", align 1
@.str.737 = private unnamed_addr constant [10 x i8] c"Real80:  \00", align 1
@.str.739 = private unnamed_addr constant [10 x i8] c"Real81:  \00", align 1
@.str.740 = private unnamed_addr constant [10 x i8] c"Real82:  \00", align 1
@.str.741 = private unnamed_addr constant [10 x i8] c"Real83:  \00", align 1
@.str.742 = private unnamed_addr constant [10 x i8] c"Real84:  \00", align 1
@.str.743 = private unnamed_addr constant [10 x i8] c"Real85:  \00", align 1
@.str.744 = private unnamed_addr constant [10 x i8] c"Real86:  \00", align 1
@.str.745 = private unnamed_addr constant [10 x i8] c"Real87:  \00", align 1
@.str.746 = private unnamed_addr constant [10 x i8] c"Real88:  \00", align 1
@.str.747 = private unnamed_addr constant [10 x i8] c"Real89:  \00", align 1
@.str.591 = private unnamed_addr constant [10 x i8] c"Real8:   \00", align 1
@.str.748 = private unnamed_addr constant [10 x i8] c"Real90:  \00", align 1
@.str.749 = private unnamed_addr constant [10 x i8] c"Real91:  \00", align 1
@.str.750 = private unnamed_addr constant [10 x i8] c"Real92:  \00", align 1
@.str.751 = private unnamed_addr constant [10 x i8] c"Real93:  \00", align 1
@.str.752 = private unnamed_addr constant [10 x i8] c"Real94:  \00", align 1
@.str.753 = private unnamed_addr constant [10 x i8] c"Real95:  \00", align 1
@.str.754 = private unnamed_addr constant [10 x i8] c"Real96:  \00", align 1
@.str.755 = private unnamed_addr constant [10 x i8] c"Real97:  \00", align 1
@.str.756 = private unnamed_addr constant [10 x i8] c"Real98:  \00", align 1
@.str.757 = private unnamed_addr constant [10 x i8] c"Real99:  \00", align 1
@.str.593 = private unnamed_addr constant [7 x i8] c"Real9:\00", align 1
@.str.1078 = private unnamed_addr constant [12 x i8] c"Record10:  \00", align 1
@.str.1081 = private unnamed_addr constant [12 x i8] c"Record11:  \00", align 1
@.str.1083 = private unnamed_addr constant [12 x i8] c"Record12:  \00", align 1
@.str.1085 = private unnamed_addr constant [12 x i8] c"Record13:  \00", align 1
@.str.1087 = private unnamed_addr constant [12 x i8] c"Record14:  \00", align 1
@.str.1089 = private unnamed_addr constant [12 x i8] c"Record15:  \00", align 1
@.str.1091 = private unnamed_addr constant [12 x i8] c"Record16:  \00", align 1
@.str.1093 = private unnamed_addr constant [12 x i8] c"Record17:  \00", align 1
@.str.1095 = private unnamed_addr constant [12 x i8] c"Record18:  \00", align 1
@.str.1097 = private unnamed_addr constant [12 x i8] c"Record19:  \00", align 1
@.str.1056 = private unnamed_addr constant [12 x i8] c"Record1:   \00", align 1
@.str.1099 = private unnamed_addr constant [12 x i8] c"Record20:  \00", align 1
@.str.1101 = private unnamed_addr constant [12 x i8] c"Record21:  \00", align 1
@.str.1103 = private unnamed_addr constant [12 x i8] c"Record22:  \00", align 1
@.str.1105 = private unnamed_addr constant [12 x i8] c"Record23:  \00", align 1
@.str.1106 = private unnamed_addr constant [12 x i8] c"Record24:  \00", align 1
@.str.1107 = private unnamed_addr constant [12 x i8] c"Record25:  \00", align 1
@.str.1109 = private unnamed_addr constant [12 x i8] c"Record26:  \00", align 1
@.str.1111 = private unnamed_addr constant [12 x i8] c"Record27:  \00", align 1
@.str.1063 = private unnamed_addr constant [12 x i8] c"Record2:   \00", align 1
@.str.1064 = private unnamed_addr constant [12 x i8] c"Record3:   \00", align 1
@.str.1066 = private unnamed_addr constant [12 x i8] c"Record4:   \00", align 1
@.str.1068 = private unnamed_addr constant [12 x i8] c"Record5:   \00", align 1
@.str.1070 = private unnamed_addr constant [12 x i8] c"Record6:   \00", align 1
@.str.1072 = private unnamed_addr constant [12 x i8] c"Record7:   \00", align 1
@.str.1074 = private unnamed_addr constant [12 x i8] c"Record8:   \00", align 1
@.str.1076 = private unnamed_addr constant [12 x i8] c"Record9:   \00", align 1
@.str.562 = private unnamed_addr constant [12 x i8] c"Scalar10:  \00", align 1
@.str.563 = private unnamed_addr constant [12 x i8] c"Scalar11:  \00", align 1
@.str.564 = private unnamed_addr constant [12 x i8] c"Scalar12:  \00", align 1
@.str.565 = private unnamed_addr constant [12 x i8] c"Scalar13:  \00", align 1
@.str.566 = private unnamed_addr constant [12 x i8] c"Scalar14:  \00", align 1
@.str.567 = private unnamed_addr constant [12 x i8] c"Scalar15:  \00", align 1
@.str.568 = private unnamed_addr constant [12 x i8] c"Scalar16:  \00", align 1
@.str.569 = private unnamed_addr constant [12 x i8] c"Scalar17:  \00", align 1
@.str.570 = private unnamed_addr constant [12 x i8] c"Scalar18:  \00", align 1
@.str.571 = private unnamed_addr constant [12 x i8] c"Scalar19:  \00", align 1
@.str.553 = private unnamed_addr constant [12 x i8] c"Scalar1:   \00", align 1
@.str.572 = private unnamed_addr constant [12 x i8] c"Scalar20:  \00", align 1
@.str.574 = private unnamed_addr constant [12 x i8] c"Scalar21:  \00", align 1
@.str.554 = private unnamed_addr constant [12 x i8] c"Scalar2:   \00", align 1
@.str.555 = private unnamed_addr constant [12 x i8] c"Scalar3:   \00", align 1
@.str.556 = private unnamed_addr constant [12 x i8] c"Scalar4:   \00", align 1
@.str.557 = private unnamed_addr constant [12 x i8] c"Scalar5:   \00", align 1
@.str.558 = private unnamed_addr constant [12 x i8] c"Scalar6:   \00", align 1
@.str.559 = private unnamed_addr constant [12 x i8] c"Scalar7:   \00", align 1
@.str.560 = private unnamed_addr constant [12 x i8] c"Scalar8:   \00", align 1
@.str.561 = private unnamed_addr constant [12 x i8] c"Scalar9:   \00", align 1
@.str.861 = private unnamed_addr constant [8 x i8] c"Set10: \00", align 1
@.str.862 = private unnamed_addr constant [8 x i8] c"Set11: \00", align 1
@.str.863 = private unnamed_addr constant [8 x i8] c"Set12: \00", align 1
@.str.864 = private unnamed_addr constant [8 x i8] c"Set13: \00", align 1
@.str.865 = private unnamed_addr constant [8 x i8] c"Set14: \00", align 1
@.str.866 = private unnamed_addr constant [8 x i8] c"Set15: \00", align 1
@.str.868 = private unnamed_addr constant [8 x i8] c"Set16: \00", align 1
@.str.870 = private unnamed_addr constant [8 x i8] c"Set17: \00", align 1
@.str.872 = private unnamed_addr constant [8 x i8] c"Set18: \00", align 1
@.str.874 = private unnamed_addr constant [8 x i8] c"Set19: \00", align 1
@.str.847 = private unnamed_addr constant [8 x i8] c"Set1:  \00", align 1
@.str.876 = private unnamed_addr constant [8 x i8] c"Set20: \00", align 1
@.str.877 = private unnamed_addr constant [8 x i8] c"Set21: \00", align 1
@.str.878 = private unnamed_addr constant [8 x i8] c"Set22: \00", align 1
@.str.879 = private unnamed_addr constant [8 x i8] c"Set23: \00", align 1
@.str.880 = private unnamed_addr constant [8 x i8] c"Set24: \00", align 1
@.str.881 = private unnamed_addr constant [8 x i8] c"Set25: \00", align 1
@.str.882 = private unnamed_addr constant [8 x i8] c"Set26: \00", align 1
@.str.883 = private unnamed_addr constant [8 x i8] c"Set27: \00", align 1
@.str.884 = private unnamed_addr constant [8 x i8] c"Set28: \00", align 1
@.str.885 = private unnamed_addr constant [8 x i8] c"Set29: \00", align 1
@.str.850 = private unnamed_addr constant [8 x i8] c"Set2:  \00", align 1
@.str.886 = private unnamed_addr constant [8 x i8] c"Set30: \00", align 1
@.str.888 = private unnamed_addr constant [8 x i8] c"Set31: \00", align 1
@.str.890 = private unnamed_addr constant [8 x i8] c"Set32: \00", align 1
@.str.891 = private unnamed_addr constant [8 x i8] c"Set33: \00", align 1
@.str.892 = private unnamed_addr constant [8 x i8] c"Set34: \00", align 1
@.str.893 = private unnamed_addr constant [8 x i8] c"Set35: \00", align 1
@.str.894 = private unnamed_addr constant [8 x i8] c"Set36: \00", align 1
@.str.895 = private unnamed_addr constant [8 x i8] c"Set37: \00", align 1
@.str.896 = private unnamed_addr constant [8 x i8] c"Set38: \00", align 1
@.str.897 = private unnamed_addr constant [8 x i8] c"Set39: \00", align 1
@.str.852 = private unnamed_addr constant [8 x i8] c"Set3:  \00", align 1
@.str.898 = private unnamed_addr constant [8 x i8] c"Set40: \00", align 1
@.str.899 = private unnamed_addr constant [8 x i8] c"Set41: \00", align 1
@.str.900 = private unnamed_addr constant [8 x i8] c"Set42: \00", align 1
@.str.901 = private unnamed_addr constant [8 x i8] c"Set43: \00", align 1
@.str.902 = private unnamed_addr constant [8 x i8] c"Set44: \00", align 1
@.str.903 = private unnamed_addr constant [8 x i8] c"Set45: \00", align 1
@.str.905 = private unnamed_addr constant [8 x i8] c"Set46: \00", align 1
@.str.907 = private unnamed_addr constant [8 x i8] c"Set47: \00", align 1
@.str.909 = private unnamed_addr constant [8 x i8] c"Set48: \00", align 1
@.str.911 = private unnamed_addr constant [8 x i8] c"Set49: \00", align 1
@.str.854 = private unnamed_addr constant [8 x i8] c"Set4:  \00", align 1
@.str.912 = private unnamed_addr constant [8 x i8] c"Set50: \00", align 1
@.str.913 = private unnamed_addr constant [8 x i8] c"Set51: \00", align 1
@.str.914 = private unnamed_addr constant [8 x i8] c"Set52: \00", align 1
@.str.915 = private unnamed_addr constant [8 x i8] c"Set53: \00", align 1
@.str.916 = private unnamed_addr constant [8 x i8] c"Set54: \00", align 1
@.str.917 = private unnamed_addr constant [8 x i8] c"Set55: \00", align 1
@.str.918 = private unnamed_addr constant [8 x i8] c"Set56: \00", align 1
@.str.919 = private unnamed_addr constant [8 x i8] c"Set57: \00", align 1
@.str.920 = private unnamed_addr constant [8 x i8] c"Set58: \00", align 1
@.str.921 = private unnamed_addr constant [8 x i8] c"Set59: \00", align 1
@.str.856 = private unnamed_addr constant [8 x i8] c"Set5:  \00", align 1
@.str.922 = private unnamed_addr constant [8 x i8] c"Set60: \00", align 1
@.str.857 = private unnamed_addr constant [8 x i8] c"Set6:  \00", align 1
@.str.858 = private unnamed_addr constant [8 x i8] c"Set7:  \00", align 1
@.str.859 = private unnamed_addr constant [8 x i8] c"Set8:  \00", align 1
@.str.860 = private unnamed_addr constant [8 x i8] c"Set9:  \00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"Subrange10:  \00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"Subrange11:  \00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"Subrange12:  \00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"Subrange13:  \00", align 1
@.str.296 = private unnamed_addr constant [14 x i8] c"Subrange14:  \00", align 1
@.str.297 = private unnamed_addr constant [14 x i8] c"Subrange15:  \00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"Subrange16:  \00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"Subrange17:  \00", align 1
@.str.300 = private unnamed_addr constant [14 x i8] c"Subrange18:  \00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"Subrange19:  \00", align 1
@.str.283 = private unnamed_addr constant [14 x i8] c"Subrange1:   \00", align 1
@.str.302 = private unnamed_addr constant [14 x i8] c"Subrange20:  \00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"Subrange21:  \00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"Subrange22:  \00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"Subrange23:  \00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"Subrange24:  \00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"Subrange25:  \00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"Subrange26:  \00", align 1
@.str.309 = private unnamed_addr constant [14 x i8] c"Subrange27:  \00", align 1
@.str.310 = private unnamed_addr constant [14 x i8] c"Subrange28:  \00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"Subrange29:  \00", align 1
@.str.284 = private unnamed_addr constant [14 x i8] c"Subrange2:   \00", align 1
@.str.312 = private unnamed_addr constant [14 x i8] c"Subrange30:  \00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"Subrange31:  \00", align 1
@.str.314 = private unnamed_addr constant [14 x i8] c"Subrange32:  \00", align 1
@.str.315 = private unnamed_addr constant [14 x i8] c"Subrange33:  \00", align 1
@.str.316 = private unnamed_addr constant [14 x i8] c"Subrange34:  \00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"Subrange35:  \00", align 1
@.str.318 = private unnamed_addr constant [14 x i8] c"Subrange36:  \00", align 1
@.str.319 = private unnamed_addr constant [14 x i8] c"Subrange37:  \00", align 1
@.str.320 = private unnamed_addr constant [14 x i8] c"Subrange38:  \00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"Subrange39:  \00", align 1
@.str.285 = private unnamed_addr constant [14 x i8] c"Subrange3:   \00", align 1
@.str.322 = private unnamed_addr constant [14 x i8] c"Subrange40:  \00", align 1
@.str.323 = private unnamed_addr constant [14 x i8] c"Subrange41:  \00", align 1
@.str.324 = private unnamed_addr constant [14 x i8] c"Subrange42:  \00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"Subrange43:  \00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"Subrange44:  \00", align 1
@.str.327 = private unnamed_addr constant [14 x i8] c"Subrange45:  \00", align 1
@.str.328 = private unnamed_addr constant [14 x i8] c"Subrange46:  \00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"Subrange47:  \00", align 1
@.str.330 = private unnamed_addr constant [14 x i8] c"Subrange48:  \00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"Subrange49:  \00", align 1
@.str.286 = private unnamed_addr constant [14 x i8] c"Subrange4:   \00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"Subrange50:  \00", align 1
@.str.333 = private unnamed_addr constant [14 x i8] c"Subrange51:  \00", align 1
@.str.334 = private unnamed_addr constant [14 x i8] c"Subrange52:  \00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"Subrange53:  \00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"Subrange54:  \00", align 1
@.str.337 = private unnamed_addr constant [14 x i8] c"Subrange55:  \00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"Subrange56:  \00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"Subrange57:  \00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"Subrange58:  \00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"Subrange59:  \00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"Subrange5:   \00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"Subrange60:  \00", align 1
@.str.343 = private unnamed_addr constant [14 x i8] c"Subrange61:  \00", align 1
@.str.344 = private unnamed_addr constant [14 x i8] c"Subrange62:  \00", align 1
@.str.345 = private unnamed_addr constant [14 x i8] c"Subrange63:  \00", align 1
@.str.346 = private unnamed_addr constant [14 x i8] c"Subrange64:  \00", align 1
@.str.347 = private unnamed_addr constant [14 x i8] c"Subrange65:  \00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"Subrange6:   \00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"Subrange7:   \00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"Subrange8:   \00", align 1
@.str.291 = private unnamed_addr constant [14 x i8] c"Subrange9:   \00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"The following are implementation defined characteristics\00", align 1
@.str.875 = private unnamed_addr constant [11 x i8] c"_b_______j\00", align 1
@.str.1061 = private unnamed_addr constant [11 x i8] c"_bcde___i_\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.873 = private unnamed_addr constant [11 x i8] c"a______h__\00", align 1
@.str.887 = private unnamed_addr constant [11 x i8] c"a___e_____\00", align 1
@.str.869 = private unnamed_addr constant [21 x i8] c"a_c_e_g_i_k_m_o_q_s_\00", align 1
@.str.871 = private unnamed_addr constant [11 x i8] c"a_cd_fg___\00", align 1
@.str.1175 = private unnamed_addr constant [11 x i8] c"abcd___h__\00", align 1
@.str.1139 = private unnamed_addr constant [10 x i8] c"brown cow\00", align 1
@.str.408 = private unnamed_addr constant [8 x i8] c"crapola\00", align 1
@.str.405 = private unnamed_addr constant [11 x i8] c"crapola   \00", align 1
@.str.957 = private unnamed_addr constant [14 x i8] c"done s/b done\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.540 = private unnamed_addr constant [4 x i8] c"fal\00", align 1
@.str.539 = private unnamed_addr constant [5 x i8] c"fals\00", align 1
@.str.538 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.448 = private unnamed_addr constant [6 x i8] c"fark \00", align 1
@.str.452 = private unnamed_addr constant [6 x i8] c"farka\00", align 1
@.str.449 = private unnamed_addr constant [6 x i8] c"farks\00", align 1
@.str.453 = private unnamed_addr constant [6 x i8] c"farkz\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.1135 = private unnamed_addr constant [8 x i8] c"file10:\00", align 1
@.str.1137 = private unnamed_addr constant [8 x i8] c"file11:\00", align 1
@.str.1141 = private unnamed_addr constant [8 x i8] c"file12:\00", align 1
@.str.410 = private unnamed_addr constant [8 x i8] c"finnork\00", align 1
@.str.404 = private unnamed_addr constant [11 x i8] c"finnork   \00", align 1
@.str.440 = private unnamed_addr constant [8 x i8] c"finoork\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"frc\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"fst\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fstc\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.482 = private unnamed_addr constant [3 x i8] c"he\00", align 1
@.str.481 = private unnamed_addr constant [4 x i8] c"hel\00", align 1
@.str.480 = private unnamed_addr constant [5 x i8] c"hell\00", align 1
@.str.479 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.478 = private unnamed_addr constant [7 x i8] c"hello,\00", align 1
@.str.477 = private unnamed_addr constant [8 x i8] c"hello, \00", align 1
@.str.1044 = private unnamed_addr constant [11 x i8] c"hello, guy\00", align 1
@.str.476 = private unnamed_addr constant [9 x i8] c"hello, w\00", align 1
@.str.475 = private unnamed_addr constant [10 x i8] c"hello, wo\00", align 1
@.str.474 = private unnamed_addr constant [11 x i8] c"hello, wor\00", align 1
@.str.473 = private unnamed_addr constant [12 x i8] c"hello, worl\00", align 1
@.str.472 = private unnamed_addr constant [13 x i8] c"hello, world\00", align 1
@.str.1170 = private unnamed_addr constant [11 x i8] c"help me123\00", align 1
@.str.1133 = private unnamed_addr constant [6 x i8] c"hi th\00", align 1
@.str.1126 = private unnamed_addr constant [11 x i8] c"hi there !\00", align 1
@.str.1138 = private unnamed_addr constant [8 x i8] c"how now\00", align 1
@.str.400 = private unnamed_addr constant [11 x i8] c"junky01234\00", align 1
@.str.940 = private unnamed_addr constant [11 x i8] c"my word is\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.442 = private unnamed_addr constant [6 x i8] c"oliab\00", align 1
@.str.443 = private unnamed_addr constant [6 x i8] c"olibb\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"one two three four five \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.374 = private unnamed_addr constant [11 x i8] c"parker    \00", align 1
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
@.str.373 = private unnamed_addr constant [11 x i8] c"porker    \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.962 = private unnamed_addr constant [4 x i8] c"s/b\00", align 1
@.str.596 = private unnamed_addr constant [39 x i8] c"s/b (note precision dropoff at right):\00", align 1
@.str.573 = private unnamed_addr constant [18 x i8] c"s/b 0 1 2 3 4 5 6\00", align 1
@.str.1123 = private unnamed_addr constant [24 x i8] c"s/b 0 1 2 3 4 5 6 7 8 9\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"s/b 1 2 3 4 5 6 7 8 9 10\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"s/b 10 9 8 7 6 5 4 3 2 1\00", align 1
@.str.1108 = private unnamed_addr constant [26 x i8] c"s/b 10 9 8 7 6 5 4 3 2 76\00", align 1
@.str.1114 = private unnamed_addr constant [34 x i8] c"s/b 11 12 13 14 15 16 17 18 19 20\00", align 1
@.str.943 = private unnamed_addr constant [34 x i8] c"s/b 20 19 18 17 16 15 14 13 12 11\00", align 1
@.str.1054 = private unnamed_addr constant [34 x i8] c"s/b 22 21 20 19 18 17 16 15 14 13\00", align 1
@.str.1050 = private unnamed_addr constant [34 x i8] c"s/b 30 29 28 27 26 25 24 23 22 21\00", align 1
@.str.1052 = private unnamed_addr constant [34 x i8] c"s/b 40 39 38 37 36 35 34 33 32 31\00", align 1
@.str.997 = private unnamed_addr constant [12 x i8] c"s/b 5 4 3 2\00", align 1
@.str.575 = private unnamed_addr constant [18 x i8] c"s/b 6 5 4 3 2 1 0\00", align 1
@.str.994 = private unnamed_addr constant [24 x i8] c"s/b 9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.1120 = private unnamed_addr constant [24 x i8] c"s/b a b c d e f g h i j\00", align 1
@.str.506 = private unnamed_addr constant [15 x i8] c"s/b false true\00", align 1
@.str.988 = private unnamed_addr constant [24 x i8] c"s/b k j i h g f e d c b\00", align 1
@.str.991 = private unnamed_addr constant [24 x i8] c"s/b p o n m l k j i h g\00", align 1
@.str.508 = private unnamed_addr constant [15 x i8] c"s/b true false\00", align 1
@.str.1034 = private unnamed_addr constant [5 x i8] c"s/b:\00", align 1
@.str.1168 = private unnamed_addr constant [29 x i8] c"s/b:   10 9 8 6 5 4 3 2 1 78\00", align 1
@.str.923 = private unnamed_addr constant [8 x i8] c"set61: \00", align 1
@.str.414 = private unnamed_addr constant [17 x i8] c"seven eight nine\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"six seven eight nine-ten nine-ten\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"stop s/b start stop\00", align 1
@.str.463 = private unnamed_addr constant [17 x i8] c"this is a string\00", align 1
@.str.1079 = private unnamed_addr constant [11 x i8] c"this one ?\00", align 1
@.str.1142 = private unnamed_addr constant [9 x i8] c"too much\00", align 1
@.str.1143 = private unnamed_addr constant [9 x i8] c"too soon\00", align 1
@.str.458 = private unnamed_addr constant [7 x i8] c"topcat\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"topnat\00", align 1
@.str.461 = private unnamed_addr constant [7 x i8] c"topzat\00", align 1
@.str.1162 = private unnamed_addr constant [11 x i8] c"total junk\00", align 1
@.str.551 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@.str.411 = private unnamed_addr constant [6 x i8] c"trash\00", align 1
@.str.403 = private unnamed_addr constant [11 x i8] c"trash     \00", align 1
@.str.550 = private unnamed_addr constant [4 x i8] c"tru\00", align 1
@.str.549 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1057 = private unnamed_addr constant [11 x i8] c"what ? who\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"yes \00", align 1


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

