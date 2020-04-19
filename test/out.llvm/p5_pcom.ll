; ModuleID = 'p5_pcom.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\p5_pcom.pas"
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
    %struct._Filename { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([4 x %struct._Filename], [4 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 3, align 4

; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 236
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type [10 x i8]
%T_strvs = type [24 x i8]
%T_setty = type [8 x i32]
%T_constant = type [56 x i8]
%T_valu = type [17 x i8]
%T_identifier = type [278 x i8]
%T_structure = type [104 x i8]
%T_attr = type [52 x i8]
%T_setofsys = type [2 x i32]
%T_caseinfo = type [16 x i8]
%T_array_5 = type [75 x i32]
%T_array_7 = type [256 x i32]
%T_csstr = type [250 x i8]
%T_labl = type [37 x i8]
%T_record_9 = type [84 x i8]
%T_array_8 = type [301 x %T_record_9]
%T_record_12 = type [8 x i8]
%T_array_11 = type [10 x %T_record_12]
%T_array_14 = type [500 x i1]
%T_idstr = type [250 x i8]
%T_filerec = type [264 x i8]
%T_array_15 = type [10 x i32]
%T_array_20 = type [4 x i8]
%T_array_19 = type [75 x %T_array_20]
%T_restr = type [9 x i8]
%T_array_21 = type [39 x %T_restr]
%T_nmstr = type [250 x i8]
%T_array_22 = type [256 x i32]
%T_array_23 = type [39 x i32]
%T_array_25 = type [35 x i32]
%T_array_26 = type [35 x i32]
%T_array_27 = type [35 x %T_restr]
%T_setofids = type [1 x i32]
%T_array_29 = type [4 x i8]
%T_array_28 = type [39 x %T_array_29]
%T_array_30 = type [256 x i32]
%T_array_31 = type [256 x i32]

; program variables
@blockbegsys = dso_local global %T_setofsys zeroinitializer
@boolptr = dso_local global i8* zeroinitializer
@cdx = dso_local global %T_array_5 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@charptr = dso_local global i8* zeroinitializer
@chartp = dso_local global %T_array_7 zeroinitializer
@chcnt = dso_local global i32 zeroinitializer
@cipcnt = dso_local global i32 zeroinitializer
@constbegsys = dso_local global %T_setofsys zeroinitializer
@cspcnt = dso_local global i32 zeroinitializer
@ctpcnt = dso_local global i32 zeroinitializer
@debug = dso_local global i1 zeroinitializer
@display = dso_local global %T_array_8 zeroinitializer
@disx = dso_local global i32 zeroinitializer
@dp = dso_local global i1 zeroinitializer
@eol = dso_local global i1 zeroinitializer
@errinx = dso_local global i32 zeroinitializer
@errlist = dso_local global %T_array_11 zeroinitializer
@errtbl = dso_local global %T_array_14 zeroinitializer
@f = dso_local global i1 zeroinitializer
@facbegsys = dso_local global %T_setofsys zeroinitializer
@fextfilep = dso_local global i8* zeroinitializer
@filcnt = dso_local global i32 zeroinitializer
@frw = dso_local global %T_array_15 zeroinitializer
@fwptr = dso_local global i8* zeroinitializer
@gattr = dso_local global %T_attr zeroinitializer
@i = dso_local global i32 zeroinitializer
@ic = dso_local global i32 zeroinitializer
@id = dso_local global %T_idstr zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inputhdf = dso_local global i1 zeroinitializer
@inputptr = dso_local global i8* zeroinitializer
@intlabel = dso_local global i32 zeroinitializer
@intptr = dso_local global i8* zeroinitializer
@kk = dso_local global i32 zeroinitializer
@lbpcnt = dso_local global i32 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@level = dso_local global i32 zeroinitializer
@lgth = dso_local global i32 zeroinitializer
@linecount = dso_local global i32 zeroinitializer
@list = dso_local global i1 zeroinitializer
@mn = dso_local global %T_array_19 zeroinitializer
@mxint10 = dso_local global i32 zeroinitializer
@na = dso_local global %T_array_21 zeroinitializer
@nilptr = dso_local global i8* zeroinitializer
@op = dso_local global i32 zeroinitializer
@ordint = dso_local global %T_array_22 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@outputhdf = dso_local global i1 zeroinitializer
@outputptr = dso_local global i8* zeroinitializer
@parmptr = dso_local global i8* zeroinitializer
@pdx = dso_local global %T_array_23 zeroinitializer
@prcode = dso_local global i1 zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@prtables = dso_local global i1 zeroinitializer
@realptr = dso_local global i8* zeroinitializer
@rop = dso_local global %T_array_25 zeroinitializer
@rsy = dso_local global %T_array_26 zeroinitializer
@rw = dso_local global %T_array_27 zeroinitializer
@selectsys = dso_local global %T_setofsys zeroinitializer
@simptypebegsys = dso_local global %T_setofsys zeroinitializer
@sna = dso_local global %T_array_28 zeroinitializer
@sop = dso_local global %T_array_30 zeroinitializer
@ssy = dso_local global %T_array_31 zeroinitializer
@statbegsys = dso_local global %T_setofsys zeroinitializer
@stpcnt = dso_local global i32 zeroinitializer
@strcnt = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@textptr = dso_local global i8* zeroinitializer
@top = dso_local global i32 zeroinitializer
@toterr = dso_local global i32 zeroinitializer
@typebegsys = dso_local global %T_setofsys zeroinitializer
@typedels = dso_local global %T_setofsys zeroinitializer
@ucstptr = dso_local global i8* zeroinitializer
@ufctptr = dso_local global i8* zeroinitializer
@ufldptr = dso_local global i8* zeroinitializer
@uprcptr = dso_local global i8* zeroinitializer
@utypptr = dso_local global i8* zeroinitializer
@uvarptr = dso_local global i8* zeroinitializer
@val = dso_local global %T_valu zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @prr

    ; body
    ; line 5493
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i32 23)
    call void @_WriteInteger(i8* %t4, i32 1, i32 0, i32 1)
    call void @_WriteChar(i8* %t4, i32 0, i32 0, i8 46)
    call void @_WriteInteger(i8* %t4, i32 1, i32 0, i32 0)
    call void @_WriteLn(i8* %t4)
    ; line 5494
    %t5 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t5)
    ; line 5498
    call void @P_initscalars()
    ; line 5498
    call void @P_initsets()
    ; line 5498
    call void @P_inittables()
    ; line 5503
    store i32 0, i32* @level
    ; line 5503
    store i32 0, i32* @top
    ; line 5505
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 0
    %t8 = getelementptr inbounds %T_record_9, %T_record_9* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    store i8* null, i8** %t7
    ; line 5505
    %t9 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 0
    %t11 = getelementptr inbounds %T_record_9, %T_record_9* %t9, i32 0, i32 8
    %t10 = bitcast i8* %t11 to i8**
    store i8* null, i8** %t10
    ; line 5505
    %t12 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 0
    %t14 = getelementptr inbounds %T_record_9, %T_record_9* %t12, i32 0, i32 16
    %t13 = bitcast i8* %t14 to i8**
    store i8* null, i8** %t13
    ; line 5505
    %t15 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 0
    %t17 = getelementptr inbounds %T_record_9, %T_record_9* %t15, i32 0, i32 24
    %t16 = bitcast i8* %t17 to i8**
    store i8* null, i8** %t16
    ; line 5506
    %t18 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 0
    %t20 = getelementptr inbounds %T_record_9, %T_record_9* %t18, i32 0, i32 32
    %t19 = bitcast i8* %t20 to i32*
    store i32 0, i32* %t19
    ; line 5506
    %t21 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 0
    %t23 = getelementptr inbounds %T_record_9, %T_record_9* %t21, i32 0, i32 40
    %t22 = bitcast i8* %t23 to i8**
    store i8* null, i8** %t22
    ; line 5507
    call void @P_enterstdtypes()
    ; line 5507
    call void @P_stdnames()
    ; line 5507
    call void @P_entstdnames()
    ; line 5507
    call void @P_enterundecl()
    ; line 5508
    store i32 1, i32* @top
    ; line 5508
    store i32 1, i32* @level
    ; line 5510
    %t24 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 1
    %t26 = getelementptr inbounds %T_record_9, %T_record_9* %t24, i32 0, i32 0
    %t25 = bitcast i8* %t26 to i8**
    store i8* null, i8** %t25
    ; line 5510
    %t27 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 1
    %t29 = getelementptr inbounds %T_record_9, %T_record_9* %t27, i32 0, i32 8
    %t28 = bitcast i8* %t29 to i8**
    store i8* null, i8** %t28
    ; line 5510
    %t30 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 1
    %t32 = getelementptr inbounds %T_record_9, %T_record_9* %t30, i32 0, i32 16
    %t31 = bitcast i8* %t32 to i8**
    store i8* null, i8** %t31
    ; line 5510
    %t33 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 1
    %t35 = getelementptr inbounds %T_record_9, %T_record_9* %t33, i32 0, i32 24
    %t34 = bitcast i8* %t35 to i8**
    store i8* null, i8** %t34
    ; line 5511
    %t36 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 1
    %t38 = getelementptr inbounds %T_record_9, %T_record_9* %t36, i32 0, i32 32
    %t37 = bitcast i8* %t38 to i32*
    store i32 0, i32* %t37
    ; line 5511
    %t39 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 1
    %t41 = getelementptr inbounds %T_record_9, %T_record_9* %t39, i32 0, i32 40
    %t40 = bitcast i8* %t41 to i8**
    store i8* null, i8** %t40
    ; line 5517
    ; line 5520
    %t42 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t42, i32 0, i32 0, i8 105)
    call void @_WriteLn(i8* %t42)
    ; line 5521
    %t43 = load %T_text, %T_text* @prr
    call void @_WriteString(i8* %t43, i32 0, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0), i32 63)
    call void @_WriteInteger(i8* %t43, i32 1, i32 0, i32 1)
    call void @_WriteChar(i8* %t43, i32 0, i32 0, i8 46)
    call void @_WriteInteger(i8* %t43, i32 1, i32 0, i32 0)
    call void @_WriteLn(i8* %t43)
    ; line 5523
    %t44 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t44, i32 0, i32 0, i8 105)
    call void @_WriteLn(i8* %t44)
    ; line 5524
    call void @P_insymbol()
    ; line 5525
    call void @P_programme(%T_setofsys %.dummy_set)
    ; line 5528
    call void @P_putdsp(i32 1)
    ; line 5529
    call void @P_putdsp(i32 0)
    ; line 5532
    call void @P_exitundecl()
    ; line 5534
    %t46 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t46)
    ; line 5535
    %t47 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t47, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i32 19)
    %t48 = load i32, i32* @toterr
    call void @_WriteInteger(i8* %t47, i32 1, i32 0, i32 %t48)
    call void @_WriteLn(i8* %t47)
    ; line 5537
    store i1 1, i1* @f
    ; line 5538
    ; line 5547
    %t49 = load i1, i1* @f
    %t50 = icmp eq i1 0, %t49
    br i1 %t50, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 5547
    %t51 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t51)
    br label %L_endif_1
L_endif_1:
    ; line 5549
    br i1 0, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 5551
    %t52 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t52)
    ; line 5552
    %t53 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t53, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t53)
    ; line 5553
    %t54 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t54)
    ; line 5554
    %t55 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t55, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i32 28)
    %t56 = load i32, i32* @strcnt
    call void @_WriteInteger(i8* %t55, i32 1, i32 0, i32 %t56)
    call void @_WriteLn(i8* %t55)
    ; line 5555
    %t57 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t57, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 28)
    %t58 = load i32, i32* @cspcnt
    call void @_WriteInteger(i8* %t57, i32 1, i32 0, i32 %t58)
    call void @_WriteLn(i8* %t57)
    ; line 5556
    %t59 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t59, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 28)
    %t60 = load i32, i32* @stpcnt
    call void @_WriteInteger(i8* %t59, i32 1, i32 0, i32 %t60)
    call void @_WriteLn(i8* %t59)
    ; line 5557
    %t61 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t61, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i32 28)
    %t62 = load i32, i32* @ctpcnt
    call void @_WriteInteger(i8* %t61, i32 1, i32 0, i32 %t62)
    call void @_WriteLn(i8* %t61)
    ; line 5558
    %t63 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t63, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 28)
    %t64 = load i32, i32* @lbpcnt
    call void @_WriteInteger(i8* %t63, i32 1, i32 0, i32 %t64)
    call void @_WriteLn(i8* %t63)
    ; line 5559
    %t65 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t65, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 28)
    %t66 = load i32, i32* @filcnt
    call void @_WriteInteger(i8* %t65, i32 1, i32 0, i32 %t66)
    call void @_WriteLn(i8* %t65)
    ; line 5560
    %t67 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t67, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i32 28)
    %t68 = load i32, i32* @cipcnt
    call void @_WriteInteger(i8* %t67, i32 1, i32 0, i32 %t68)
    call void @_WriteLn(i8* %t67)
    ; line 5561
    %t69 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t69)
    ; nop
    br label %L_endif_2
L_endif_2:
    ; line 5567
    %t71 = load i32, i32* @strcnt
    %t70 = icmp ne i32 %t71, 0
    br i1 %t70, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 5568
    %t72 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t72, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0), i32 60)
    %t73 = load i32, i32* @strcnt
    call void @_WriteInteger(i8* %t72, i32 1, i32 0, i32 %t73)
    call void @_WriteLn(i8* %t72)
    br label %L_endif_3
L_endif_3:
    ; line 5570
    %t75 = load i32, i32* @cspcnt
    %t74 = icmp ne i32 %t75, 0
    br i1 %t74, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 5571
    %t76 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t76, i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i32 0, i32 0), i32 62)
    %t77 = load i32, i32* @cspcnt
    call void @_WriteInteger(i8* %t76, i32 1, i32 0, i32 %t77)
    call void @_WriteLn(i8* %t76)
    br label %L_endif_4
L_endif_4:
    ; line 5573
    %t79 = load i32, i32* @stpcnt
    %t78 = icmp ne i32 %t79, 0
    br i1 %t78, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 5574
    %t80 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t80, i32 0, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i32 0, i32 0), i32 63)
    %t81 = load i32, i32* @stpcnt
    call void @_WriteInteger(i8* %t80, i32 1, i32 0, i32 %t81)
    call void @_WriteLn(i8* %t80)
    br label %L_endif_5
L_endif_5:
    ; line 5576
    %t83 = load i32, i32* @ctpcnt
    %t82 = icmp ne i32 %t83, 0
    br i1 %t82, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 5577
    %t84 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t84, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i32 0, i32 0), i32 64)
    %t85 = load i32, i32* @ctpcnt
    call void @_WriteInteger(i8* %t84, i32 1, i32 0, i32 %t85)
    call void @_WriteLn(i8* %t84)
    br label %L_endif_6
L_endif_6:
    ; line 5579
    %t87 = load i32, i32* @lbpcnt
    %t86 = icmp ne i32 %t87, 0
    br i1 %t86, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 5580
    %t88 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t88, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i32 0, i32 0), i32 59)
    %t89 = load i32, i32* @lbpcnt
    call void @_WriteInteger(i8* %t88, i32 1, i32 0, i32 %t89)
    call void @_WriteLn(i8* %t88)
    br label %L_endif_7
L_endif_7:
    ; line 5582
    %t91 = load i32, i32* @filcnt
    %t90 = icmp ne i32 %t91, 0
    br i1 %t90, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 5583
    %t92 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t92, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0), i32 58)
    %t93 = load i32, i32* @filcnt
    call void @_WriteInteger(i8* %t92, i32 1, i32 0, i32 %t93)
    call void @_WriteLn(i8* %t92)
    br label %L_endif_8
L_endif_8:
    ; line 5585
    %t95 = load i32, i32* @cipcnt
    %t94 = icmp ne i32 %t95, 0
    br i1 %t94, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 5586
    %t96 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t96, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i32 0, i32 0), i32 58)
    %t97 = load i32, i32* @cipcnt
    call void @_WriteInteger(i8* %t96, i32 1, i32 0, i32 %t97)
    call void @_WriteLn(i8* %t96)
    br label %L_endif_9
L_endif_9:
    br label %L_99
L_99:
    ; nop

    ; cleanup
    %t98 = load %T_text, %T_text* @prr
    call void @_CloseFile(i8* %t98)
    %t99 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t99)
    %t100 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t100)

    ; epilogue
    ret void
}


; line 628
;================================================================================
; scope: getstr (level : 2)

; activation record
%Frame_getstr = type
{
    ; parameters
    i8**,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getstr(i8** %p)
{
    ; allocate frame
    %.frame = alloca %Frame_getstr, align 8
    %t1 = getelementptr inbounds %Frame_getstr, %Frame_getstr* %.frame, i32 0, i32 0
    store i8** %p, i8*** %t1

    ; body
    ; line 630
    ; line 631
    %t3 = load i32, i32* @strcnt
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @strcnt

    ; epilogue
    ret void
}


; line 635
;================================================================================
; scope: putstrs (level : 2)

; activation record
%Frame_putstrs = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i8*,    ; 1: p1

    ; dummy
    i8*
};

; procedure body
define void @P_putstrs(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putstrs, align 8
    %t1 = getelementptr inbounds %Frame_putstrs, %Frame_putstrs* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 638

    ; epilogue
    ret void
}


; line 644
;================================================================================
; scope: getlab (level : 2)

; activation record
%Frame_getlab = type
{
    ; parameters
    i8**,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getlab(i8** %p)
{
    ; allocate frame
    %.frame = alloca %Frame_getlab, align 8
    %t1 = getelementptr inbounds %Frame_getlab, %Frame_getlab* %.frame, i32 0, i32 0
    store i8** %p, i8*** %t1

    ; body
    ; line 646
    ; line 647
    %t3 = load i32, i32* @lbpcnt
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @lbpcnt

    ; epilogue
    ret void
}


; line 651
;================================================================================
; scope: putlab (level : 2)

; activation record
%Frame_putlab = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_putlab(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putlab, align 8
    %t1 = getelementptr inbounds %Frame_putlab, %Frame_putlab* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 653
    ; line 654
    %t3 = load i32, i32* @lbpcnt
    %t2 = sub i32 %t3, 1
    store i32 %t2, i32* @lbpcnt

    ; epilogue
    ret void
}


; line 658
;================================================================================
; scope: pshcst (level : 2)

; activation record
%Frame_pshcst = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_pshcst(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_pshcst, align 8
    %t1 = getelementptr inbounds %Frame_pshcst, %Frame_pshcst* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 661
    %t3 = getelementptr inbounds %Frame_pshcst, %Frame_pshcst* %.frame, i32 0, i32 0
    %t2 = load i8*, i8** %t3
    %t4 = bitcast i8* %t2 to %T_constant*
    %t6 = getelementptr inbounds %T_constant, %T_constant* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    %t7 = load i32, i32* @top
    %t8 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t7
    %t10 = getelementptr inbounds %T_record_9, %T_record_9* %t8, i32 0, i32 16
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t5
    ; line 662
    %t12 = load i32, i32* @top
    %t13 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t12
    %t15 = getelementptr inbounds %T_record_9, %T_record_9* %t13, i32 0, i32 16
    %t14 = bitcast i8* %t15 to i8**
    %t17 = getelementptr inbounds %Frame_pshcst, %Frame_pshcst* %.frame, i32 0, i32 0
    %t16 = load i8*, i8** %t17
    store i8* %t16, i8** %t14
    ; line 663
    %t19 = load i32, i32* @cspcnt
    %t18 = add i32 %t19, 1
    store i32 %t18, i32* @cspcnt

    ; epilogue
    ret void
}


; line 667
;================================================================================
; scope: putcst (level : 2)

; activation record
%Frame_putcst = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_putcst(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putcst, align 8
    %t1 = getelementptr inbounds %Frame_putcst, %Frame_putcst* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 670
    %t4 = getelementptr inbounds %Frame_putcst, %Frame_putcst* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    %t5 = bitcast i8* %t3 to %T_constant*
    %t7 = getelementptr inbounds %T_constant, %T_constant* %t5, i32 0, i32 8
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    %t2 = icmp eq i32 %t8, 2
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 670
    %t10 = getelementptr inbounds %Frame_putcst, %Frame_putcst* %.frame, i32 0, i32 0
    %t9 = load i8*, i8** %t10
    %t11 = bitcast i8* %t9 to %T_constant*
    %t13 = getelementptr inbounds %T_constant, %T_constant* %t11, i32 0, i32 16
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    call void @P_putstrs(i8* %t14)
    br label %L_endif_1
L_else_1:
    ; line 671
    %t17 = getelementptr inbounds %Frame_putcst, %Frame_putcst* %.frame, i32 0, i32 0
    %t16 = load i8*, i8** %t17
    %t18 = bitcast i8* %t16 to %T_constant*
    %t20 = getelementptr inbounds %T_constant, %T_constant* %t18, i32 0, i32 8
    %t19 = bitcast i8* %t20 to i32*
    %t21 = load i32, i32* %t19
    %t15 = icmp eq i32 %t21, 0
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 671
    %t23 = getelementptr inbounds %Frame_putcst, %Frame_putcst* %.frame, i32 0, i32 0
    %t22 = load i8*, i8** %t23
    %t24 = bitcast i8* %t22 to %T_constant*
    %t26 = getelementptr inbounds %T_constant, %T_constant* %t24, i32 0, i32 16
    %t25 = bitcast i8* %t26 to i8**
    %t27 = load i8*, i8** %t25
    call void @P_putstrs(i8* %t27)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 672
    ; line 673
    %t29 = load i32, i32* @cspcnt
    %t28 = sub i32 %t29, 1
    store i32 %t28, i32* @cspcnt

    ; epilogue
    ret void
}


; line 677
;================================================================================
; scope: pshstc (level : 2)

; activation record
%Frame_pshstc = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_pshstc(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_pshstc, align 8
    %t1 = getelementptr inbounds %Frame_pshstc, %Frame_pshstc* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 680
    %t3 = getelementptr inbounds %Frame_pshstc, %Frame_pshstc* %.frame, i32 0, i32 0
    %t2 = load i8*, i8** %t3
    %t4 = bitcast i8* %t2 to %T_structure*
    %t6 = getelementptr inbounds %T_structure, %T_structure* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    %t7 = load i32, i32* @top
    %t8 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t7
    %t10 = getelementptr inbounds %T_record_9, %T_record_9* %t8, i32 0, i32 24
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t5
    ; line 681
    %t12 = load i32, i32* @top
    %t13 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t12
    %t15 = getelementptr inbounds %T_record_9, %T_record_9* %t13, i32 0, i32 24
    %t14 = bitcast i8* %t15 to i8**
    %t17 = getelementptr inbounds %Frame_pshstc, %Frame_pshstc* %.frame, i32 0, i32 0
    %t16 = load i8*, i8** %t17
    store i8* %t16, i8** %t14
    ; line 682
    %t19 = load i32, i32* @stpcnt
    %t18 = add i32 %t19, 1
    store i32 %t18, i32* @stpcnt

    ; epilogue
    ret void
}


; line 686
;================================================================================
; scope: putstc (level : 2)

; activation record
%Frame_putstc = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_putstc(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putstc, align 8
    %t1 = getelementptr inbounds %Frame_putstc, %Frame_putstc* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 688
    ; line 689
    %t3 = load i32, i32* @stpcnt
    %t2 = sub i32 %t3, 1
    store i32 %t2, i32* @stpcnt

    ; epilogue
    ret void
}


; line 693
;================================================================================
; scope: ininam (level : 2)

; activation record
%Frame_ininam = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_ininam(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_ininam, align 8
    %t1 = getelementptr inbounds %Frame_ininam, %Frame_ininam* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 695
    %t3 = load i32, i32* @ctpcnt
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @ctpcnt
    ; line 696
    %t5 = getelementptr inbounds %Frame_ininam, %Frame_ininam* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t6 = bitcast i8* %t4 to %T_identifier*
    %t8 = getelementptr inbounds %T_identifier, %T_identifier* %t6, i32 0, i32 40
    %t7 = bitcast i8* %t8 to i1*
    store i1 0, i1* %t7

    ; epilogue
    ret void
}


; line 700
;================================================================================
; scope: putnam (level : 2)

; activation record
%Frame_putnam = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i8*,    ; 1: p1

    ; dummy
    i8*
};

; procedure body
define void @P_putnam(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putnam, align 8
    %t1 = getelementptr inbounds %Frame_putnam, %Frame_putnam* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 703
    br label %L_OR_expr_1
L_OR_expr_1:
    %t5 = getelementptr inbounds %Frame_putnam, %Frame_putnam* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t6 = bitcast i8* %t4 to %T_identifier*
    %t8 = getelementptr inbounds %T_identifier, %T_identifier* %t6, i32 0, i32 44
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    %t3 = icmp eq i32 %t9, 4
    br i1 %t3, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t12 = getelementptr inbounds %Frame_putnam, %Frame_putnam* %.frame, i32 0, i32 0
    %t11 = load i8*, i8** %t12
    %t13 = bitcast i8* %t11 to %T_identifier*
    %t15 = getelementptr inbounds %T_identifier, %T_identifier* %t13, i32 0, i32 44
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    %t10 = icmp eq i32 %t16, 5
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t2 = phi [%t10, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t2, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 704
    br label %L_endif_2
L_endif_2:
    ; line 709
    %t18 = getelementptr inbounds %Frame_putnam, %Frame_putnam* %.frame, i32 0, i32 0
    %t17 = load i8*, i8** %t18
    %t19 = bitcast i8* %t17 to %T_identifier*
    %t21 = getelementptr inbounds %T_identifier, %T_identifier* %t19, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t22 = load i8*, i8** %t20
    call void @P_putstrs(i8* %t22)
    ; line 710
    ; line 711
    %t24 = load i32, i32* @ctpcnt
    %t23 = sub i32 %t24, 1
    store i32 %t23, i32* @ctpcnt

    ; epilogue
    ret void
}


; line 715
;================================================================================
; scope: putnams (level : 2)

; activation record
%Frame_putnams = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_putnams(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putnams, align 8
    %t1 = getelementptr inbounds %Frame_putnams, %Frame_putnams* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 717
    %t4 = getelementptr inbounds %Frame_putnams, %Frame_putnams* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    %t2 = icmp ne i32 %t3, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 718
    %t6 = getelementptr inbounds %Frame_putnams, %Frame_putnams* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t7 = bitcast i8* %t5 to %T_identifier*
    %t9 = getelementptr inbounds %T_identifier, %T_identifier* %t7, i32 0, i32 8
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** %t8
    call void @P_putnams(i8* %t10)
    ; line 719
    %t12 = getelementptr inbounds %Frame_putnams, %Frame_putnams* %.frame, i32 0, i32 0
    %t11 = load i8*, i8** %t12
    %t13 = bitcast i8* %t11 to %T_identifier*
    %t15 = getelementptr inbounds %T_identifier, %T_identifier* %t13, i32 0, i32 16
    %t14 = bitcast i8* %t15 to i8**
    %t16 = load i8*, i8** %t14
    call void @P_putnams(i8* %t16)
    ; line 722
    %t18 = getelementptr inbounds %Frame_putnams, %Frame_putnams* %.frame, i32 0, i32 0
    %t17 = load i8*, i8** %t18
    %t19 = bitcast i8* %t17 to %T_identifier*
    %t21 = getelementptr inbounds %T_identifier, %T_identifier* %t19, i32 0, i32 40
    %t20 = bitcast i8* %t21 to i1*
    %t22 = load i1, i1* %t20
    %t23 = icmp eq i1 0, %t22
    br i1 %t23, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 722
    %t25 = getelementptr inbounds %Frame_putnams, %Frame_putnams* %.frame, i32 0, i32 0
    %t24 = load i8*, i8** %t25
    call void @P_putnam(i8* %t24)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 727
;================================================================================
; scope: putdsp (level : 2)

; activation record
%Frame_putdsp = type
{
    ; parameters
    i32,    ; 0: l

    ; variables
    i8*,    ; 1: llp
    i8*,    ; 2: lsp
    i8*,    ; 3: lvp

    ; dummy
    i8*
};

; procedure body
define void @P_putdsp(i32 %l)
{
    ; allocate frame
    %.frame = alloca %Frame_putdsp, align 8
    %t1 = getelementptr inbounds %Frame_putdsp, %Frame_putdsp* %.frame, i32 0, i32 0
    store i32 %l, i32* %t1

    ; body
    ; line 748
    %t3 = getelementptr inbounds %Frame_putdsp, %Frame_putdsp* %.frame, i32 0, i32 0
    %t2 = load i32, i32* %t3
    %t4 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t2
    %t6 = getelementptr inbounds %T_record_9, %T_record_9* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    %t7 = load i8*, i8** %t5
    call void @P_putnams(i8* %t7)
    ; line 750
    ; line 754
    ; line 758

    ; epilogue
    ret void
}


; line 730
;================================================================================
; scope: putdsp_putsub (level : 3)

; activation record
%Frame_putdsp_putsub = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i8*,    ; 1: p1

    ; slink
    %Frame_putdsp*    ; 2
};

; procedure body
define void @P_putdsp_putsub(%Frame_putdsp* %.slink, i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putdsp_putsub, align 8
    %t1 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 2
    store %Frame_putdsp* %.slink, %Frame_putdsp** %t1
    %t2 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    store i8* %p, i8** %t2

    ; body
    ; line 734
    %t5 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t6 = bitcast i8* %t4 to %T_structure*
    %t8 = getelementptr inbounds %T_structure, %T_structure* %t6, i32 0, i32 20
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    %t3 = icmp eq i32 %t9, 5
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 736
    ; line 741
    %t11 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    %t10 = load i8*, i8** %t11
    %t12 = bitcast i8* %t10 to %T_structure*
    %t14 = getelementptr inbounds %T_structure, %T_structure* %t12, i32 0, i32 24
    %t13 = bitcast i8* %t14 to i8**
    %t15 = load i8*, i8** %t13
    call void @P_putnams(i8* %t15)
    br label %L_endif_1
L_else_1:
    ; line 742
    %t18 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    %t17 = load i8*, i8** %t18
    %t19 = bitcast i8* %t17 to %T_structure*
    %t21 = getelementptr inbounds %T_structure, %T_structure* %t19, i32 0, i32 20
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t16 = icmp eq i32 %t22, 7
    br i1 %t16, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 744
    %t25 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 24
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** %t27
    %t30 = bitcast i8* %t29 to %T_identifier*
    %t32 = getelementptr inbounds %T_identifier, %T_identifier* %t30, i32 0, i32 0
    %t31 = bitcast i8* %t32 to i8**
    %t33 = load i8*, i8** %t31
    %t23 = icmp eq i32 %t33, null
    br i1 %t23, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 744
    %t35 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    %t34 = load i8*, i8** %t35
    %t36 = bitcast i8* %t34 to %T_structure*
    %t38 = getelementptr inbounds %T_structure, %T_structure* %t36, i32 0, i32 24
    %t37 = bitcast i8* %t38 to i8**
    %t39 = load i8*, i8** %t37
    call void @P_putnam(i8* %t39)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 745
    %t41 = getelementptr inbounds %Frame_putdsp_putsub, %Frame_putdsp_putsub* %.frame, i32 0, i32 0
    %t40 = load i8*, i8** %t41
    call void @P_putstc(i8* %t40)

    ; epilogue
    ret void
}


; line 765
;================================================================================
; scope: putdsps (level : 2)

; activation record
%Frame_putdsps = type
{
    ; parameters
    i32,    ; 0: l

    ; variables
    i32,    ; 1: t

    ; dummy
    i8*
};

; procedure body
define void @P_putdsps(i32 %l)
{
    ; allocate frame
    %.frame = alloca %Frame_putdsps, align 8
    %t1 = getelementptr inbounds %Frame_putdsps, %Frame_putdsps* %.frame, i32 0, i32 0
    store i32 %l, i32* %t1

    ; body
    ; line 768
    %t4 = getelementptr inbounds %Frame_putdsps, %Frame_putdsps* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = load i32, i32* @top
    %t2 = icmp sgt i32 %t3, %t5
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 769
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t6)
    ; line 770
    br label %L_endif_1
L_endif_1:
    ; line 772
    %t7 = getelementptr inbounds %Frame_putdsps, %Frame_putdsps* %.frame, i32 0, i32 1
    %t8 = load i32, i32* @top
    store i32 %t8, i32* %t7
    ; line 773

    ; epilogue
    ret void
}


; line 779
;================================================================================
; scope: getfil (level : 2)

; activation record
%Frame_getfil = type
{
    ; parameters
    i8**,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getfil(i8** %p)
{
    ; allocate frame
    %.frame = alloca %Frame_getfil, align 8
    %t1 = getelementptr inbounds %Frame_getfil, %Frame_getfil* %.frame, i32 0, i32 0
    store i8** %p, i8*** %t1

    ; body
    ; line 781
    ; line 782
    %t3 = load i32, i32* @filcnt
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @filcnt

    ; epilogue
    ret void
}


; line 786
;================================================================================
; scope: putfil (level : 2)

; activation record
%Frame_putfil = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_putfil(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putfil, align 8
    %t1 = getelementptr inbounds %Frame_putfil, %Frame_putfil* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 788
    ; line 789
    %t3 = load i32, i32* @filcnt
    %t2 = sub i32 %t3, 1
    store i32 %t2, i32* @filcnt

    ; epilogue
    ret void
}


; line 793
;================================================================================
; scope: getcas (level : 2)

; activation record
%Frame_getcas = type
{
    ; parameters
    i8**,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getcas(i8** %p)
{
    ; allocate frame
    %.frame = alloca %Frame_getcas, align 8
    %t1 = getelementptr inbounds %Frame_getcas, %Frame_getcas* %.frame, i32 0, i32 0
    store i8** %p, i8*** %t1

    ; body
    ; line 795
    ; line 796
    %t3 = load i32, i32* @cipcnt
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @cipcnt

    ; epilogue
    ret void
}


; line 800
;================================================================================
; scope: putcas (level : 2)

; activation record
%Frame_putcas = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_putcas(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_putcas, align 8
    %t1 = getelementptr inbounds %Frame_putcas, %Frame_putcas* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 802
    ; line 803
    %t3 = load i32, i32* @cipcnt
    %t2 = sub i32 %t3, 1
    store i32 %t2, i32* @cipcnt

    ; epilogue
    ret void
}


; line 813
;================================================================================
; scope: lcase (level : 2)

; activation record
%Frame_lcase = type
{
    ; parameters
    i8,    ; 0: c

    ; variables
    i8,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i8 @F_lcase(i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_lcase, align 8
    %t1 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    store i8 %c, i8* %t1

    ; body
    ; line 815
    br i1 true, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 815
    %t3 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    store i8 %.dummy.intrin, i8* %t3
    br label %L_endif_1
L_endif_1:
    ; line 816
    %t4 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    %t5 = load i8, i8* %t6
    store i8 %t5, i8* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 1
    %t8 = load i8, i8* %t7
    ret i8 %t8
}


; line 820
;================================================================================
; scope: lcases (level : 2)

; activation record
%Frame_lcases = type
{
    ; parameters
    %T_idstr*,    ; 0: s

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_lcases(%T_idstr* %s)
{
    ; allocate frame
    %.frame = alloca %Frame_lcases, align 8
    %t1 = getelementptr inbounds %Frame_lcases, %Frame_lcases* %.frame, i32 0, i32 0
    store %T_idstr* %s, %T_idstr** %t1

    ; body
    ; line 823
    ; nop

    ; epilogue
    ret void
}


; line 827
;================================================================================
; scope: strequri (level : 2)

; activation record
%Frame_strequri = type
{
    ; parameters
    %T_restr,    ; 0: a
    %T_idstr*,    ; 1: b

    ; variables
    i1,    ; 2: _fnvalue
    i32,    ; 3: i
    i1,    ; 4: m

    ; dummy
    i8*
};

; function body
define i1 @F_strequri(%T_restr %a, %T_idstr* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strequri, align 8
    %t1 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %.frame, i32 0, i32 0
    store %T_restr %a, %T_restr* %t1
    %t2 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %.frame, i32 0, i32 1
    store %T_idstr* %b, %T_idstr** %t2

    ; body
    ; line 830
    %t3 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %.frame, i32 0, i32 4
    store i1 1, i1* %t3
    ; line 831
    ; line 832
    ; line 833
    %t4 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %.frame, i32 0, i32 4
    %t5 = load i1, i1* %t6
    store i1 %t5, i1* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %.frame, i32 0, i32 2
    %t8 = load i1, i1* %t7
    ret i1 %t8
}


; line 837
;================================================================================
; scope: writev (level : 2)

; activation record
%Frame_writev = type
{
    ; parameters
    %T_text*,    ; 0: f
    i32,    ; 1: fl
    i8*,    ; 2: s

    ; variables
    i8,    ; 3: c
    i32,    ; 4: i

    ; dummy
    i8*
};

; procedure body
define void @P_writev(%T_text* %f, i8* %s, i32 %fl)
{
    ; allocate frame
    %.frame = alloca %Frame_writev, align 8
    %t1 = getelementptr inbounds %Frame_writev, %Frame_writev* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t1
    %t2 = getelementptr inbounds %Frame_writev, %Frame_writev* %.frame, i32 0, i32 1
    store i32 %fl, i32* %t2
    %t3 = getelementptr inbounds %Frame_writev, %Frame_writev* %.frame, i32 0, i32 2
    store i8* %s, i8** %t3

    ; body
    ; line 839
    %t4 = getelementptr inbounds %Frame_writev, %Frame_writev* %.frame, i32 0, i32 4
    store i32 1, i32* %t4
    ; line 840

    ; epilogue
    ret void
}


; line 848
;================================================================================
; scope: lenpv (level : 2)

; activation record
%Frame_lenpv = type
{
    ; parameters
    i8*,    ; 0: s

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    i32,    ; 3: l
    i32,    ; 4: lc

    ; dummy
    i8*
};

; function body
define i32 @F_lenpv(i8* %s)
{
    ; allocate frame
    %.frame = alloca %Frame_lenpv, align 8
    %t1 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %.frame, i32 0, i32 0
    store i8* %s, i8** %t1

    ; body
    ; line 850
    %t2 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %.frame, i32 0, i32 3
    store i32 1, i32* %t2
    ; line 850
    %t3 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %.frame, i32 0, i32 4
    store i32 0, i32* %t3
    ; line 851
    ; line 858
    %t4 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %.frame, i32 0, i32 4
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
}


; line 862
;================================================================================
; scope: strassvf (level : 2)

; activation record
%Frame_strassvf = type
{
    ; parameters
    i8**,    ; 0: a
    %T_idstr*,    ; 1: b

    ; variables
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: l
    i8*,    ; 5: lp
    i8*,    ; 6: p

    ; dummy
    i8*
};

; procedure body
define void @P_strassvf(i8** %a, %T_idstr* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strassvf, align 8
    %t1 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 0
    store i8** %a, i8*** %t1
    %t2 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 1
    store %T_idstr* %b, %T_idstr** %t2

    ; body
    ; line 864
    %t3 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 4
    store i32 250, i32* %t3
    ; line 864
    %t4 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 6
    store i8* null, i8** %t4
    ; line 864
    %t5 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    store i8* null, i8** %t6
    ; line 864
    %t7 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 3
    store i32 1, i32* %t7
    ; line 865
    ; line 866
    %t9 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 1
    %t10 = load %T_idstr*, %T_idstr** %t9
    %t12 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 4
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_idstr, %T_idstr* %t10, i32 0, i32 %t11
    %t14 = load i8, i8* %t13
    %t8 = icmp eq i32 %t14, 32
    br i1 %t8, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 866
    %t15 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 4
    store i32 0, i32* %t15
    br label %L_endif_1
L_endif_1:
    ; line 867
    ; line 875
    %t18 = getelementptr inbounds %Frame_strassvf, %Frame_strassvf* %.frame, i32 0, i32 6
    %t17 = load i8*, i8** %t18
    %t16 = icmp ne i32 %t17, null
    br i1 %t16, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 875
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 879
;================================================================================
; scope: strassvr (level : 2)

; activation record
%Frame_strassvr = type
{
    ; parameters
    i8**,    ; 0: a
    %T_restr,    ; 1: b

    ; variables
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: l
    i8*,    ; 5: lp
    i8*,    ; 6: p

    ; dummy
    i8*
};

; procedure body
define void @P_strassvr(i8** %a, %T_restr %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strassvr, align 8
    %t1 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 0
    store i8** %a, i8*** %t1
    %t2 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 1
    store %T_restr %b, %T_restr* %t2

    ; body
    ; line 881
    %t3 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 4
    store i32 9, i32* %t3
    ; line 881
    %t4 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 6
    store i8* null, i8** %t4
    ; line 881
    %t5 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    store i8* null, i8** %t6
    ; line 881
    %t7 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 5
    store i8* null, i8** %t7
    ; line 881
    %t8 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 3
    store i32 1, i32* %t8
    ; line 882
    ; line 883
    %t10 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 4
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_restr, %T_restr* %t10, i32 0, i32 %t11
    %t14 = load i8, i8* %t13
    %t9 = icmp eq i32 %t14, 32
    br i1 %t9, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 883
    %t15 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 4
    store i32 0, i32* %t15
    br label %L_endif_1
L_endif_1:
    ; line 884
    ; line 892
    %t18 = getelementptr inbounds %Frame_strassvr, %Frame_strassvr* %.frame, i32 0, i32 6
    %t17 = load i8*, i8** %t18
    %t16 = icmp ne i32 %t17, null
    br i1 %t16, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 892
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 896
;================================================================================
; scope: strassvd (level : 2)

; activation record
%Frame_strassvd = type
{
    ; parameters
    i8**,    ; 0: a
    %T_nmstr,    ; 1: b

    ; variables
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: l
    i8*,    ; 5: lp
    i8*,    ; 6: p

    ; dummy
    i8*
};

; procedure body
define void @P_strassvd(i8** %a, %T_nmstr %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strassvd, align 8
    %t1 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 0
    store i8** %a, i8*** %t1
    %t2 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 1
    store %T_nmstr %b, %T_nmstr* %t2

    ; body
    ; line 898
    %t3 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 4
    store i32 250, i32* %t3
    ; line 898
    %t4 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 6
    store i8* null, i8** %t4
    ; line 898
    %t5 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    store i8* null, i8** %t6
    ; line 898
    %t7 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 5
    store i8* null, i8** %t7
    ; line 898
    %t8 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 3
    store i32 1, i32* %t8
    ; line 899
    ; line 900
    %t10 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 4
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_nmstr, %T_nmstr* %t10, i32 0, i32 %t11
    %t14 = load i8, i8* %t13
    %t9 = icmp eq i32 %t14, 32
    br i1 %t9, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 900
    %t15 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 4
    store i32 0, i32* %t15
    br label %L_endif_1
L_endif_1:
    ; line 901
    ; line 909
    %t18 = getelementptr inbounds %Frame_strassvd, %Frame_strassvd* %.frame, i32 0, i32 6
    %t17 = load i8*, i8** %t18
    %t16 = icmp ne i32 %t17, null
    br i1 %t16, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 909
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 913
;================================================================================
; scope: strassvc (level : 2)

; activation record
%Frame_strassvc = type
{
    ; parameters
    i8**,    ; 0: a
    %T_csstr,    ; 1: b
    i32,    ; 2: l

    ; variables
    i32,    ; 3: i
    i32,    ; 4: j
    i8*,    ; 5: lp
    i8*,    ; 6: p

    ; dummy
    i8*
};

; procedure body
define void @P_strassvc(i8** %a, %T_csstr %b, i32 %l)
{
    ; allocate frame
    %.frame = alloca %Frame_strassvc, align 8
    %t1 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 0
    store i8** %a, i8*** %t1
    %t2 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 1
    store %T_csstr %b, %T_csstr* %t2
    %t3 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 2
    store i32 %l, i32* %t3

    ; body
    ; line 915
    %t4 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 6
    store i8* null, i8** %t4
    ; line 915
    %t5 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    store i8* null, i8** %t6
    ; line 915
    %t7 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 5
    store i8* null, i8** %t7
    ; line 915
    %t8 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 4
    store i32 1, i32* %t8
    ; line 916
    ; line 924
    %t11 = getelementptr inbounds %Frame_strassvc, %Frame_strassvc* %.frame, i32 0, i32 6
    %t10 = load i8*, i8** %t11
    %t9 = icmp ne i32 %t10, null
    br i1 %t9, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 924
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 928
;================================================================================
; scope: strassfv (level : 2)

; activation record
%Frame_strassfv = type
{
    ; parameters
    %T_idstr*,    ; 0: a
    i8*,    ; 1: b

    ; variables
    i32,    ; 2: i
    i32,    ; 3: j

    ; dummy
    i8*
};

; procedure body
define void @P_strassfv(%T_idstr* %a, i8* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strassfv, align 8
    %t1 = getelementptr inbounds %Frame_strassfv, %Frame_strassfv* %.frame, i32 0, i32 0
    store %T_idstr* %a, %T_idstr** %t1
    %t2 = getelementptr inbounds %Frame_strassfv, %Frame_strassfv* %.frame, i32 0, i32 1
    store i8* %b, i8** %t2

    ; body
    ; line 930
    ; line 930
    %t3 = getelementptr inbounds %Frame_strassfv, %Frame_strassfv* %.frame, i32 0, i32 2
    store i32 1, i32* %t3
    ; line 931

    ; epilogue
    ret void
}


; line 938
;================================================================================
; scope: strequvv (level : 2)

; activation record
%Frame_strequvv = type
{
    ; parameters
    i8*,    ; 0: a
    i8*,    ; 1: b

    ; variables
    i1,    ; 2: _fnvalue
    i32,    ; 3: i
    i1,    ; 4: m

    ; dummy
    i8*
};

; function body
define i1 @F_strequvv(i8* %a, i8* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strequvv, align 8
    %t1 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 0
    store i8* %a, i8** %t1
    %t2 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 1
    store i8* %b, i8** %t2

    ; body
    ; line 941
    %t3 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 4
    store i1 1, i1* %t3
    ; line 942
    ; line 946
    %t6 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t8 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 1
    %t7 = load i8*, i8** %t8
    %t4 = icmp ne i32 %t5, %t7
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 946
    %t9 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 4
    store i1 0, i1* %t9
    br label %L_endif_1
L_endif_1:
    ; line 947
    %t10 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 2
    %t12 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 4
    %t11 = load i1, i1* %t12
    store i1 %t11, i1* %t10

    ; epilogue
    %t13 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %.frame, i32 0, i32 2
    %t14 = load i1, i1* %t13
    ret i1 %t14
}


; line 951
;================================================================================
; scope: strltnvv (level : 2)

; activation record
%Frame_strltnvv = type
{
    ; parameters
    i8*,    ; 0: a
    i8*,    ; 1: b

    ; variables
    i1,    ; 2: _fnvalue
    i8,    ; 3: ca
    i8,    ; 4: cb
    i32,    ; 5: i

    ; dummy
    i8*
};

; function body
define i1 @F_strltnvv(i8* %a, i8* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strltnvv, align 8
    %t1 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 0
    store i8* %a, i8** %t1
    %t2 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 1
    store i8* %b, i8** %t2

    ; body
    ; line 953
    %t3 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 3
    store i8 32, i8* %t3
    ; line 953
    %t4 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 4
    store i8 32, i8* %t4
    ; line 954
    ; line 964
    %t5 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 2
    %t8 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 3
    %t7 = load i8, i8* %t8
    %t10 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 4
    %t9 = load i8, i8* %t10
    %t6 = icmp slt i32 %t7, %t9
    store i1 %t6, i1* %t5

    ; epilogue
    %t11 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %.frame, i32 0, i32 2
    %t12 = load i1, i1* %t11
    ret i1 %t12
}


; line 968
;================================================================================
; scope: strequvf (level : 2)

; activation record
%Frame_strequvf = type
{
    ; parameters
    i8*,    ; 0: a
    %T_idstr*,    ; 1: b

    ; variables
    i1,    ; 2: _fnvalue
    i8,    ; 3: c
    i32,    ; 4: i
    i32,    ; 5: j
    i1,    ; 6: m

    ; dummy
    i8*
};

; function body
define i1 @F_strequvf(i8* %a, %T_idstr* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strequvf, align 8
    %t1 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 0
    store i8* %a, i8** %t1
    %t2 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 1
    store %T_idstr* %b, %T_idstr** %t2

    ; body
    ; line 971
    %t3 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 6
    store i1 1, i1* %t3
    ; line 971
    %t4 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 5
    store i32 1, i32* %t4
    ; line 972
    ; line 977
    %t5 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 2
    %t7 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 6
    %t6 = load i1, i1* %t7
    store i1 %t6, i1* %t5

    ; epilogue
    %t8 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %.frame, i32 0, i32 2
    %t9 = load i1, i1* %t8
    ret i1 %t9
}


; line 981
;================================================================================
; scope: strltnvf (level : 2)

; activation record
%Frame_strltnvf = type
{
    ; parameters
    i8*,    ; 0: a
    %T_idstr*,    ; 1: b

    ; variables
    i1,    ; 2: _fnvalue
    i8,    ; 3: c
    i32,    ; 4: f
    i32,    ; 5: i
    i32,    ; 6: j
    i1,    ; 7: m

    ; dummy
    i8*
};

; function body
define i1 @F_strltnvf(i8* %a, %T_idstr* %b)
{
    ; allocate frame
    %.frame = alloca %Frame_strltnvf, align 8
    %t1 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 0
    store i8* %a, i8** %t1
    %t2 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 1
    store %T_idstr* %b, %T_idstr** %t2

    ; body
    ; line 984
    %t3 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 7
    store i1 1, i1* %t3
    ; line 984
    %t4 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 5
    store i32 1, i32* %t4
    ; line 984
    %t5 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 6
    store i32 1, i32* %t5
    ; line 985
    ; line 990
    %t6 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 2
    %t9 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 3
    %t8 = load i8, i8* %t9
    %t10 = call i8 @F_lcase(i8 %t8)
    %t11 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 1
    %t12 = load %T_idstr*, %T_idstr** %t11
    %t14 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 4
    %t13 = load i32, i32* %t14
    %t15 = getelementptr inbounds %T_idstr, %T_idstr* %t12, i32 0, i32 %t13
    %t16 = load i8, i8* %t15
    %t17 = call i8 @F_lcase(i8 %t16)
    %t7 = icmp slt i32 %t10, %t17
    store i1 %t7, i1* %t6

    ; epilogue
    %t18 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %.frame, i32 0, i32 2
    %t19 = load i1, i1* %t18
    ret i1 %t19
}


; line 995
;================================================================================
; scope: strchr (level : 2)

; activation record
%Frame_strchr = type
{
    ; parameters
    i8*,    ; 0: a
    i32,    ; 1: x

    ; variables
    i8,    ; 2: _fnvalue
    i8,    ; 3: c
    i32,    ; 4: i
    i32,    ; 5: q

    ; dummy
    i8*
};

; function body
define i8 @F_strchr(i8* %a, i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_strchr, align 8
    %t1 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 0
    store i8* %a, i8** %t1
    %t2 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 1
    store i32 %x, i32* %t2

    ; body
    ; line 998
    %t3 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 3
    store i8 32, i8* %t3
    ; line 998
    %t4 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 4
    store i32 1, i32* %t4
    ; line 998
    %t5 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 5
    store i32 1, i32* %t5
    ; line 999
    ; line 1004
    %t8 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 0
    %t7 = load i8*, i8** %t8
    %t6 = icmp ne i32 %t7, null
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1004
    %t9 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 3
    %t11 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 0
    %t10 = load i8*, i8** %t11
    %t12 = bitcast i8* %t10 to %T_strvs*
    %t14 = getelementptr inbounds %T_strvs, %T_strvs* %t12, i32 0, i32 0
    %t13 = bitcast i8* %t14 to %T_array_2*
    %t16 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 5
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %T_array_2, %T_array_2* %t13, i32 0, i32 %t15
    %t18 = load i8, i8* %t17
    store i8 %t18, i8* %t9
    br label %L_endif_1
L_endif_1:
    ; line 1005
    %t19 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 2
    %t21 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 3
    %t20 = load i8, i8* %t21
    store i8 %t20, i8* %t19

    ; epilogue
    %t22 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %.frame, i32 0, i32 2
    %t23 = load i8, i8* %t22
    ret i8 %t23
}


; line 1010
;================================================================================
; scope: strchrass (level : 2)

; activation record
%Frame_strchrass = type
{
    ; parameters
    i8**,    ; 0: a
    i8,    ; 1: c
    i32,    ; 2: x

    ; variables
    i32,    ; 3: i
    i8*,    ; 4: l
    i8*,    ; 5: p
    i32,    ; 6: q

    ; dummy
    i8*
};

; procedure body
define void @P_strchrass(i8** %a, i32 %x, i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_strchrass, align 8
    %t1 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 0
    store i8** %a, i8*** %t1
    %t2 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 1
    store i8 %c, i8* %t2
    %t3 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 2
    store i32 %x, i32* %t3

    ; body
    ; line 1020
    %t4 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 3
    store i32 1, i32* %t4
    ; line 1020
    %t5 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 6
    store i32 1, i32* %t5
    ; line 1020
    %t6 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 5
    %t8 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 0
    %t9 = load i8**, i8*** %t8
    %t7 = load i8*, i8** %t9
    store i8* %t7, i8** %t6
    ; line 1020
    %t10 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 4
    store i8* null, i8** %t10
    ; line 1021
    call void @P_strchrass_getsqt(%Frame_strchrass* %.frame)
    ; line 1022
    ; line 1027
    %t12 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 5
    %t11 = load i8*, i8** %t12
    %t13 = bitcast i8* %t11 to %T_strvs*
    %t15 = getelementptr inbounds %T_strvs, %T_strvs* %t13, i32 0, i32 0
    %t14 = bitcast i8* %t15 to %T_array_2*
    %t17 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 6
    %t16 = load i32, i32* %t17
    %t18 = getelementptr inbounds %T_array_2, %T_array_2* %t14, i32 0, i32 %t16
    %t20 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %.frame, i32 0, i32 1
    %t19 = load i8, i8* %t20
    store i8 %t19, i8* %t18

    ; epilogue
    ret void
}


; line 1012
;================================================================================
; scope: strchrass_getsqt (level : 3)

; activation record
%Frame_strchrass_getsqt = type
{
    ; variables
    i32,    ; 0: y

    ; slink
    %Frame_strchrass*    ; 1
};

; procedure body
define void @P_strchrass_getsqt(%Frame_strchrass* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_strchrass_getsqt, align 8
    %t1 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    store %Frame_strchrass* %.slink, %Frame_strchrass** %t1

    ; body
    ; line 1015
    %t5 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t6 = load %Frame_strchrass*, %Frame_strchrass** %t5
    %t4 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t6, i32 0, i32 5
    %t3 = load i8*, i8** %t4
    %t2 = icmp eq i32 %t3, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1015
    %t8 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t9 = load %Frame_strchrass*, %Frame_strchrass** %t8
    %t7 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t9, i32 0, i32 5
    call void @P_getstr(i8** %t7)
    ; line 1015
    ; line 1016
    %t12 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t13 = load %Frame_strchrass*, %Frame_strchrass** %t12
    %t11 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t13, i32 0, i32 5
    %t10 = load i8*, i8** %t11
    %t14 = bitcast i8* %t10 to %T_strvs*
    %t16 = getelementptr inbounds %T_strvs, %T_strvs* %t14, i32 0, i32 16
    %t15 = bitcast i8* %t16 to i8**
    store i8* null, i8** %t15
    ; line 1016
    %t20 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t21 = load %Frame_strchrass*, %Frame_strchrass** %t20
    %t19 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t21, i32 0, i32 0
    %t22 = load i8**, i8*** %t19
    %t18 = load i8*, i8** %t22
    %t17 = icmp eq i32 %t18, null
    br i1 %t17, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1016
    %t24 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t25 = load %Frame_strchrass*, %Frame_strchrass** %t24
    %t23 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t25, i32 0, i32 0
    %t26 = load i8**, i8*** %t23
    %t29 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t30 = load %Frame_strchrass*, %Frame_strchrass** %t29
    %t28 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t30, i32 0, i32 5
    %t27 = load i8*, i8** %t28
    store i8* %t27, i8** %t26
    br label %L_endif_2
L_else_2:
    ; line 1016
    %t33 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t34 = load %Frame_strchrass*, %Frame_strchrass** %t33
    %t32 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t34, i32 0, i32 4
    %t31 = load i8*, i8** %t32
    %t35 = bitcast i8* %t31 to %T_strvs*
    %t37 = getelementptr inbounds %T_strvs, %T_strvs* %t35, i32 0, i32 16
    %t36 = bitcast i8* %t37 to i8**
    %t40 = getelementptr inbounds %Frame_strchrass_getsqt, %Frame_strchrass_getsqt* %.frame, i32 0, i32 1
    %t41 = load %Frame_strchrass*, %Frame_strchrass** %t40
    %t39 = getelementptr inbounds %Frame_strchrass, %Frame_strchrass* %t41, i32 0, i32 5
    %t38 = load i8*, i8** %t39
    store i8* %t38, i8** %t36
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1033
;================================================================================
; scope: prtdsp (level : 2)

; activation record
%Frame_prtdsp = type
{
    ; variables
    i32,    ; 0: i

    ; dummy
    i8*
};

; procedure body
define void @P_prtdsp()
{
    ; allocate frame
    %.frame = alloca %Frame_prtdsp, align 8

    ; body
    ; line 1046
    %t1 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1)
    ; line 1047
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t2)
    ; line 1048
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 1049
    ; line 1057
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; nop

    ; epilogue
    ret void
}


; line 1035
;================================================================================
; scope: prtdsp_prtlnk (level : 3)

; activation record
%Frame_prtdsp_prtlnk = type
{
    ; parameters
    i32,    ; 0: f
    i8*,    ; 1: p

    ; variables
    i32,    ; 2: i

    ; slink
    %Frame_prtdsp*    ; 3
};

; procedure body
define void @P_prtdsp_prtlnk(%Frame_prtdsp* %.slink, i8* %p, i32 %f)
{
    ; allocate frame
    %.frame = alloca %Frame_prtdsp_prtlnk, align 8
    %t1 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 3
    store %Frame_prtdsp* %.slink, %Frame_prtdsp** %t1
    %t2 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 0
    store i32 %f, i32* %t2
    %t3 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    store i8* %p, i8** %t3

    ; body
    ; line 1038
    %t6 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    %t5 = load i8*, i8** %t6
    %t4 = icmp ne i32 %t5, null
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1039
    ; line 1040
    %t8 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    %t7 = load i8*, i8** %t8
    %t9 = bitcast i8* %t7 to %T_identifier*
    %t11 = getelementptr inbounds %T_identifier, %T_identifier* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    call void @P_writev(%T_text* @output, i8* %t12, i32 10)
    ; line 1040
    %t13 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t13)
    ; line 1041
    %t16 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    %t15 = load i8*, i8** %t16
    %t17 = bitcast i8* %t15 to %T_identifier*
    %t19 = getelementptr inbounds %T_identifier, %T_identifier* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t14 = icmp ne i32 %t20, null
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1041
    %t21 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 3
    %t22 = load %Frame_prtdsp*, %Frame_prtdsp** %t21
    %t24 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    %t23 = load i8*, i8** %t24
    %t25 = bitcast i8* %t23 to %T_identifier*
    %t27 = getelementptr inbounds %T_identifier, %T_identifier* %t25, i32 0, i32 8
    %t26 = bitcast i8* %t27 to i8**
    %t28 = load i8*, i8** %t26
    %t31 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 0
    %t30 = load i32, i32* %t31
    %t29 = add i32 %t30, 3
    call void @P_prtdsp_prtlnk(%Frame_prtdsp* %t22, i8* %t28, i32 %t29)
    br label %L_endif_2
L_endif_2:
    ; line 1042
    %t34 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    %t33 = load i8*, i8** %t34
    %t35 = bitcast i8* %t33 to %T_identifier*
    %t37 = getelementptr inbounds %T_identifier, %T_identifier* %t35, i32 0, i32 16
    %t36 = bitcast i8* %t37 to i8**
    %t38 = load i8*, i8** %t36
    %t32 = icmp ne i32 %t38, null
    br i1 %t32, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1042
    %t39 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 3
    %t40 = load %Frame_prtdsp*, %Frame_prtdsp** %t39
    %t42 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 1
    %t41 = load i8*, i8** %t42
    %t43 = bitcast i8* %t41 to %T_identifier*
    %t45 = getelementptr inbounds %T_identifier, %T_identifier* %t43, i32 0, i32 16
    %t44 = bitcast i8* %t45 to i8**
    %t46 = load i8*, i8** %t44
    %t49 = getelementptr inbounds %Frame_prtdsp_prtlnk, %Frame_prtdsp_prtlnk* %.frame, i32 0, i32 0
    %t48 = load i32, i32* %t49
    %t47 = add i32 %t48, 3
    call void @P_prtdsp_prtlnk(%Frame_prtdsp* %t40, i8* %t46, i32 %t47)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1060
;================================================================================
; scope: endofline (level : 2)

; activation record
%Frame_endofline = type
{
    ; variables
    i32,    ; 0: currnmr
    i32,    ; 1: currpos
    i32,    ; 2: f
    i32,    ; 3: freepos
    i32,    ; 4: k
    i32,    ; 5: lastpos

    ; dummy
    i8*
};

; procedure body
define void @P_endofline()
{
    ; allocate frame
    %.frame = alloca %Frame_endofline, align 8

    ; body
    ; line 1063
    %t2 = load i32, i32* @errinx
    %t1 = icmp sgt i32 %t2, 0
    br i1 %t1, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1064
    %t3 = load %T_text, %T_text* @output
    %t4 = load i32, i32* @linecount
    call void @_WriteInteger(i8* %t3, i32 6, i32 0, i32 %t4)
    call void @_WriteString(i8* %t3, i32 9, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 7)
    ; line 1065
    %t5 = getelementptr inbounds %Frame_endofline, %Frame_endofline* %.frame, i32 0, i32 5
    store i32 0, i32* %t5
    ; line 1065
    %t6 = getelementptr inbounds %Frame_endofline, %Frame_endofline* %.frame, i32 0, i32 3
    store i32 1, i32* %t6
    ; line 1066
    ; line 1084
    %t7 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t7)
    ; line 1084
    store i32 0, i32* @errinx
    br label %L_endif_1
L_endif_1:
    ; line 1086
    %t9 = load i32, i32* @linecount
    %t8 = add i32 %t9, 1
    store i32 %t8, i32* @linecount
    ; line 1087
    br label %L_AND_expr_2
L_AND_expr_2:
    %t11 = load i1, i1* @list
    br i1 %t11, label %L_AND_eval_2, label %L_AND_shortcut_2
L_AND_eval_2:
    %t12 = icmp eq i1 0, %.dummy.intrin
    br label %L_AND_shortcut_2
L_AND_shortcut_2:
    %t10 = phi [%t12, %L_AND_eval_2], [false, %L_AND_expr_2]
    br i1 %t10, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1088
    %t13 = load %T_text, %T_text* @output
    %t14 = load i32, i32* @linecount
    call void @_WriteInteger(i8* %t13, i32 6, i32 0, i32 %t14)
    call void @_WriteString(i8* %t13, i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 2)
    ; line 1089
    %t15 = load i1, i1* @dp
    br i1 %t15, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1089
    %t16 = load %T_text, %T_text* @output
    %t17 = load i32, i32* @lc
    call void @_WriteInteger(i8* %t16, i32 7, i32 0, i32 %t17)
    br label %L_endif_4
L_else_4:
    ; line 1089
    %t18 = load %T_text, %T_text* @output
    %t19 = load i32, i32* @ic
    call void @_WriteInteger(i8* %t18, i32 7, i32 0, i32 %t19)
    br label %L_endif_4
L_endif_4:
    ; line 1090
    %t20 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t20, i32 0, i32 0, i8 32)
    br label %L_endif_3
L_endif_3:
    ; line 1093
    %t21 = icmp eq i1 0, %.dummy.intrin
    br i1 %t21, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 1094
    %t22 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t22, i32 0, i32 0, i8 58)
    %t23 = load i32, i32* @linecount
    call void @_WriteInteger(i8* %t22, i32 1, i32 0, i32 %t23)
    call void @_WriteLn(i8* %t22)
    ; nop
    br label %L_endif_5
L_endif_5:
    ; line 1096
    store i32 0, i32* @chcnt

    ; epilogue
    ret void
}


; line 1099
;================================================================================
; scope: errmsg (level : 2)

; activation record
%Frame_errmsg = type
{
    ; parameters
    i32,    ; 0: ferrnr

    ; dummy
    i8*
};

; procedure body
define void @P_errmsg(i32 %ferrnr)
{
    ; allocate frame
    %.frame = alloca %Frame_errmsg, align 8
    %t1 = getelementptr inbounds %Frame_errmsg, %Frame_errmsg* %.frame, i32 0, i32 0
    store i32 %ferrnr, i32* %t1

    ; body
    ; line 1100

    ; epilogue
    ret void
}


; line 1259
;================================================================================
; scope: error (level : 2)

; activation record
%Frame_error = type
{
    ; parameters
    i32,    ; 0: ferrnr

    ; dummy
    i8*
};

; procedure body
define void @P_error(i32 %ferrnr)
{
    ; allocate frame
    %.frame = alloca %Frame_error, align 8
    %t1 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    store i32 %ferrnr, i32* %t1

    ; body
    ; line 1271
    %t3 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    %t2 = load i32, i32* %t3
    %t4 = getelementptr inbounds %T_array_14, %T_array_14* @errtbl, i32 0, i32 %t2
    store i1 1, i1* %t4
    ; line 1272
    %t6 = load i32, i32* @errinx
    %t5 = icmp sge i32 %t6, 9
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1273
    %t7 = getelementptr inbounds %T_array_11, %T_array_11* @errlist, i32 0, i32 10
    %t9 = getelementptr inbounds %T_record_12, %T_record_12* %t7, i32 0, i32 4
    %t8 = bitcast i8* %t9 to i32*
    store i32 255, i32* %t8
    ; line 1273
    store i32 10, i32* @errinx
    br label %L_endif_1
L_else_1:
    ; line 1275
    %t11 = load i32, i32* @errinx
    %t10 = add i32 %t11, 1
    store i32 %t10, i32* @errinx
    ; line 1276
    %t12 = load i32, i32* @errinx
    %t13 = getelementptr inbounds %T_array_11, %T_array_11* @errlist, i32 0, i32 %t12
    %t15 = getelementptr inbounds %T_record_12, %T_record_12* %t13, i32 0, i32 4
    %t14 = bitcast i8* %t15 to i32*
    %t17 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    %t16 = load i32, i32* %t17
    store i32 %t16, i32* %t14
    br label %L_endif_1
L_endif_1:
    ; line 1278
    %t18 = load i32, i32* @errinx
    %t19 = getelementptr inbounds %T_array_11, %T_array_11* @errlist, i32 0, i32 %t18
    %t21 = getelementptr inbounds %T_record_12, %T_record_12* %t19, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* @chcnt
    store i32 %t22, i32* %t20
    ; line 1279
    %t24 = load i32, i32* @toterr
    %t23 = add i32 %t24, 1
    store i32 %t23, i32* @toterr

    ; epilogue
    ret void
}


; line 1282
;================================================================================
; scope: insymbol (level : 2)

; activation record
%Frame_insymbol = type
{
    ; variables
    %T_nmstr,    ; 0: digit
    i1,    ; 1: ferr
    i32,    ; 2: i
    i1,    ; 3: iscmte
    i32,    ; 4: j
    i32,    ; 5: k
    i8*,    ; 6: lvp
    %T_nmstr,    ; 7: rvalb
    %T_csstr,    ; 8: string
    i1,    ; 9: test

    ; dummy
    i8*
};

; procedure body
define void @P_insymbol()
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol, align 8

    ; body
    ; line 1335
    br label %L_1
L_1:
    ; line 1339
    %t2 = load i8, i8* @ch
    %t3 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 %t2
    %t4 = load i32, i32* %t3
    %t1 = icmp eq i32 %t4, 3
    br i1 %t1, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1340
    store i32 48, i32* @sy
    ; line 1340
    store i32 15, i32* @op
    ; line 1341
    call void @P_error(i32 399)
    ; line 1341
    call void @P_insymbol_nextch(%Frame_insymbol* %.frame)
    br label %L_endif_1
L_else_1:
    ; line 1344
    br label %L_endif_1
L_endif_1:
    ; line 1505
    br i1 0, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1507
    %t5 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t5)
    ; line 1508
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 8)
    ; line 1509
    ; line 1534
    %t7 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t7)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 1293
;================================================================================
; scope: insymbol_nextch (level : 3)

; activation record
%Frame_insymbol_nextch = type
{
    ; slink
    %Frame_insymbol*    ; 0
};

; procedure body
define void @P_insymbol_nextch(%Frame_insymbol* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol_nextch, align 8
    %t1 = getelementptr inbounds %Frame_insymbol_nextch, %Frame_insymbol_nextch* %.frame, i32 0, i32 0
    store %Frame_insymbol* %.slink, %Frame_insymbol** %t1

    ; body
    ; line 1294
    %t2 = load i1, i1* @eol
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1295
    %t3 = load i1, i1* @list
    br i1 %t3, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1295
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    br label %L_endif_2
L_endif_2:
    ; line 1295
    call void @P_endofline()
    br label %L_endif_1
L_endif_1:
    ; line 1297
    %t5 = icmp eq i1 0, %.dummy.intrin
    br i1 %t5, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1298
    store i1 %.dummy.intrin, i1* @eol
    ; line 1298
    ; line 1299
    %t6 = load i1, i1* @list
    br i1 %t6, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1299
    %t7 = load %T_text, %T_text* @output
    %t8 = load i8, i8* @ch
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 %t8)
    br label %L_endif_4
L_endif_4:
    ; line 1300
    %t10 = load i32, i32* @chcnt
    %t9 = add i32 %t10, 1
    store i32 %t9, i32* @chcnt
    br label %L_endif_3
L_else_3:
    ; line 1303
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 11)
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t11)
    ; line 1304
    %t13 = getelementptr inbounds %Frame_insymbol_nextch, %Frame_insymbol_nextch* %.frame, i32 0, i32 0
    %t14 = load %Frame_insymbol*, %Frame_insymbol** %t13
    %t12 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t14, i32 0, i32 9
    store i1 0, i1* %t12
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 1308
;================================================================================
; scope: insymbol_options (level : 3)

; activation record
%Frame_insymbol_options = type
{
    ; slink
    %Frame_insymbol*    ; 0
};

; procedure body
define void @P_insymbol_options(%Frame_insymbol* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol_options, align 8
    %t1 = getelementptr inbounds %Frame_insymbol_options, %Frame_insymbol_options* %.frame, i32 0, i32 0
    store %Frame_insymbol* %.slink, %Frame_insymbol** %t1

    ; body
    ; line 1310

    ; epilogue
    ret void
}


; line 1540
;================================================================================
; scope: enterid (level : 2)

; activation record
%Frame_enterid = type
{
    ; parameters
    i8*,    ; 0: fcp

    ; variables
    i8*,    ; 1: lcp
    i8*,    ; 2: lcp1
    i1,    ; 3: lleft

    ; dummy
    i8*
};

; procedure body
define void @P_enterid(i8* %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_enterid, align 8
    %t1 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    store i8* %fcp, i8** %t1

    ; body
    ; line 1546
    %t2 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 1
    %t3 = load i32, i32* @top
    %t4 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t3
    %t6 = getelementptr inbounds %T_record_9, %T_record_9* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    %t7 = load i8*, i8** %t5
    store i8* %t7, i8** %t2
    ; line 1547
    %t10 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 1
    %t9 = load i8*, i8** %t10
    %t8 = icmp eq i32 %t9, null
    br i1 %t8, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1548
    %t11 = load i32, i32* @top
    %t12 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t11
    %t14 = getelementptr inbounds %T_record_9, %T_record_9* %t12, i32 0, i32 0
    %t13 = bitcast i8* %t14 to i8**
    %t16 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t15 = load i8*, i8** %t16
    store i8* %t15, i8** %t13
    br label %L_endif_1
L_else_1:
    ; line 1551
    ; line 1559
    %t18 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 3
    %t17 = load i1, i1* %t18
    br i1 %t17, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1559
    %t20 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 2
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 8
    %t22 = bitcast i8* %t23 to i8**
    %t25 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t24 = load i8*, i8** %t25
    store i8* %t24, i8** %t22
    br label %L_endif_2
L_else_2:
    ; line 1559
    %t27 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 2
    %t26 = load i8*, i8** %t27
    %t28 = bitcast i8* %t26 to %T_identifier*
    %t30 = getelementptr inbounds %T_identifier, %T_identifier* %t28, i32 0, i32 16
    %t29 = bitcast i8* %t30 to i8**
    %t32 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t31 = load i8*, i8** %t32
    store i8* %t31, i8** %t29
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 1561
    %t34 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t33 = load i8*, i8** %t34
    %t35 = bitcast i8* %t33 to %T_identifier*
    %t37 = getelementptr inbounds %T_identifier, %T_identifier* %t35, i32 0, i32 8
    %t36 = bitcast i8* %t37 to i8**
    store i8* null, i8** %t36
    ; line 1561
    %t39 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t38 = load i8*, i8** %t39
    %t40 = bitcast i8* %t38 to %T_identifier*
    %t42 = getelementptr inbounds %T_identifier, %T_identifier* %t40, i32 0, i32 16
    %t41 = bitcast i8* %t42 to i8**
    store i8* null, i8** %t41

    ; epilogue
    ret void
}


; line 1564
;================================================================================
; scope: searchsection (level : 2)

; activation record
%Frame_searchsection = type
{
    ; parameters
    i8*,    ; 0: fcp
    i8**,    ; 1: fcp1

    ; dummy
    i8*
};

; procedure body
define void @P_searchsection(i8* %fcp, i8** %fcp1)
{
    ; allocate frame
    %.frame = alloca %Frame_searchsection, align 8
    %t1 = getelementptr inbounds %Frame_searchsection, %Frame_searchsection* %.frame, i32 0, i32 0
    store i8* %fcp, i8** %t1
    %t2 = getelementptr inbounds %Frame_searchsection, %Frame_searchsection* %.frame, i32 0, i32 1
    store i8** %fcp1, i8*** %t2

    ; body
    ; line 1570
    ; line 1574
    br label %L_1
L_1:
    %t3 = getelementptr inbounds %Frame_searchsection, %Frame_searchsection* %.frame, i32 0, i32 1
    %t4 = load i8**, i8*** %t3
    %t6 = getelementptr inbounds %Frame_searchsection, %Frame_searchsection* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    store i8* %t5, i8** %t4

    ; epilogue
    ret void
}


; line 1577
;================================================================================
; scope: searchidnenm (level : 2)

; activation record
%Frame_searchidnenm = type
{
    ; parameters
    i8**,    ; 0: fcp
    %T_setofids,    ; 1: fidcls
    i1*,    ; 2: mm

    ; variables
    i32,    ; 3: disxl
    i8*,    ; 4: lcp

    ; dummy
    i8*
};

; procedure body
define void @P_searchidnenm(%T_setofids %fidcls, i8** %fcp, i1* %mm)
{
    ; allocate frame
    %.frame = alloca %Frame_searchidnenm, align 8
    %t1 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 0
    store i8** %fcp, i8*** %t1
    %t2 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 1
    store %T_setofids %fidcls, %T_setofids* %t2
    %t3 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 2
    store i1* %mm, i1** %t3

    ; body
    ; line 1582
    %t4 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 2
    %t5 = load i1*, i1** %t4
    store i1 0, i1* %t5
    ; line 1583
    ; line 1598
    store i32 0, i32* @disx
    ; line 1599
    %t6 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 4
    store i8* null, i8** %t6
    ; line 1600
    br label %L_1
L_1:
    %t7 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 0
    %t8 = load i8**, i8*** %t7
    %t10 = getelementptr inbounds %Frame_searchidnenm, %Frame_searchidnenm* %.frame, i32 0, i32 4
    %t9 = load i8*, i8** %t10
    store i8* %t9, i8** %t8

    ; epilogue
    ret void
}


; line 1603
;================================================================================
; scope: searchidne (level : 2)

; activation record
%Frame_searchidne = type
{
    ; parameters
    i8**,    ; 0: fcp
    %T_setofids,    ; 1: fidcls

    ; variables
    i1,    ; 2: mm

    ; dummy
    i8*
};

; procedure body
define void @P_searchidne(%T_setofids %fidcls, i8** %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_searchidne, align 8
    %t1 = getelementptr inbounds %Frame_searchidne, %Frame_searchidne* %.frame, i32 0, i32 0
    store i8** %fcp, i8*** %t1
    %t2 = getelementptr inbounds %Frame_searchidne, %Frame_searchidne* %.frame, i32 0, i32 1
    store %T_setofids %fidcls, %T_setofids* %t2

    ; body
    ; line 1606
    %t4 = getelementptr inbounds %Frame_searchidne, %Frame_searchidne* %.frame, i32 0, i32 1
    %t3 = load %T_setofids, %T_setofids* %t4
    %t5 = getelementptr inbounds %Frame_searchidne, %Frame_searchidne* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    %t7 = getelementptr inbounds %Frame_searchidne, %Frame_searchidne* %.frame, i32 0, i32 2
    call void @P_searchidnenm(%T_setofids %t3, i8** %t6, i1* %t7)
    ; line 1607
    %t9 = getelementptr inbounds %Frame_searchidne, %Frame_searchidne* %.frame, i32 0, i32 2
    %t8 = load i1, i1* %t9
    br i1 %t8, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1607
    call void @P_error(i32 103)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1610
;================================================================================
; scope: searchid (level : 2)

; activation record
%Frame_searchid = type
{
    ; parameters
    i8**,    ; 0: fcp
    %T_setofids,    ; 1: fidcls

    ; variables
    i8*,    ; 2: lcp

    ; dummy
    i8*
};

; procedure body
define void @P_searchid(%T_setofids %fidcls, i8** %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_searchid, align 8
    %t1 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 0
    store i8** %fcp, i8*** %t1
    %t2 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 1
    store %T_setofids %fidcls, %T_setofids* %t2

    ; body
    ; line 1614
    %t4 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 1
    %t3 = load %T_setofids, %T_setofids* %t4
    %t5 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    call void @P_searchidne(%T_setofids %t3, i8** %t5)
    ; line 1615
    %t8 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t7 = load i8*, i8** %t8
    %t6 = icmp ne i32 %t7, null
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1615
    br label %L_endif_1
L_endif_1:
    ; line 1618
    call void @P_error(i32 104)
    ; line 1622
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1622
    %t10 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t11 = load i8*, i8** @utypptr
    store i8* %t11, i8** %t10
    br label %L_endif_2
L_else_2:
    ; line 1624
    br i1 true, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1624
    %t13 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t14 = load i8*, i8** @uvarptr
    store i8* %t14, i8** %t13
    br label %L_endif_3
L_else_3:
    ; line 1626
    br i1 true, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1626
    %t16 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t17 = load i8*, i8** @ufldptr
    store i8* %t17, i8** %t16
    br label %L_endif_4
L_else_4:
    ; line 1628
    br i1 true, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1628
    %t19 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t20 = load i8*, i8** @ucstptr
    store i8* %t20, i8** %t19
    br label %L_endif_5
L_else_5:
    ; line 1630
    br i1 true, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1630
    %t22 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t23 = load i8*, i8** @uprcptr
    store i8* %t23, i8** %t22
    br label %L_endif_6
L_else_6:
    ; line 1631
    %t24 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t25 = load i8*, i8** @ufctptr
    store i8* %t25, i8** %t24
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 1632
    br label %L_1
L_1:
    %t26 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 0
    %t27 = load i8**, i8*** %t26
    %t29 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 2
    %t28 = load i8*, i8** %t29
    store i8* %t28, i8** %t27

    ; epilogue
    ret void
}


; line 1635
;================================================================================
; scope: getbounds (level : 2)

; activation record
%Frame_getbounds = type
{
    ; parameters
    i32*,    ; 0: fmax
    i32*,    ; 1: fmin
    i8*,    ; 2: fsp

    ; dummy
    i8*
};

; procedure body
define void @P_getbounds(i8* %fsp, i32* %fmin, i32* %fmax)
{
    ; allocate frame
    %.frame = alloca %Frame_getbounds, align 8
    %t1 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    store i32* %fmax, i32** %t1
    %t2 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    store i32* %fmin, i32** %t2
    %t3 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    store i8* %fsp, i8** %t3

    ; body
    ; line 1639
    %t4 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t5 = load i32*, i32** %t4
    store i32 0, i32* %t5
    ; line 1639
    %t6 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t7 = load i32*, i32** %t6
    store i32 0, i32* %t7
    ; line 1640
    %t10 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t9 = load i8*, i8** %t10
    %t8 = icmp ne i32 %t9, null
    br i1 %t8, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1642
    %t13 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 20
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t11 = icmp eq i32 %t17, 1
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1643
    %t18 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t19 = load i32*, i32** %t18
    %t21 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t20 = load i8*, i8** %t21
    %t22 = bitcast i8* %t20 to %T_structure*
    %t24 = getelementptr inbounds %T_structure, %T_structure* %t22, i32 0, i32 32
    %t23 = bitcast i8* %t24 to %T_valu*
    %t26 = getelementptr inbounds %T_valu, %T_valu* %t23, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    store i32 %t27, i32* %t19
    ; line 1643
    %t28 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t29 = load i32*, i32** %t28
    %t31 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t30 = load i8*, i8** %t31
    %t32 = bitcast i8* %t30 to %T_structure*
    %t34 = getelementptr inbounds %T_structure, %T_structure* %t32, i32 0, i32 56
    %t33 = bitcast i8* %t34 to %T_valu*
    %t36 = getelementptr inbounds %T_valu, %T_valu* %t33, i32 0, i32 4
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* %t35
    store i32 %t37, i32* %t29
    br label %L_endif_2
L_else_2:
    ; line 1645
    %t40 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t39 = load i8*, i8** %t40
    %t41 = load i8*, i8** @charptr
    %t38 = icmp eq i32 %t39, %t41
    br i1 %t38, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1646
    %t42 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t43 = load i32*, i32** %t42
    store i32 0, i32* %t43
    ; line 1646
    %t44 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t45 = load i32*, i32** %t44
    store i32 255, i32* %t45
    br label %L_endif_3
L_else_3:
    ; line 1649
    %t48 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t47 = load i8*, i8** %t48
    %t49 = bitcast i8* %t47 to %T_structure*
    %t51 = getelementptr inbounds %T_structure, %T_structure* %t49, i32 0, i32 32
    %t50 = bitcast i8* %t51 to i8**
    %t52 = load i8*, i8** %t50
    %t46 = icmp ne i32 %t52, null
    br i1 %t46, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1650
    %t53 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t54 = load i32*, i32** %t53
    %t56 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t55 = load i8*, i8** %t56
    %t57 = bitcast i8* %t55 to %T_structure*
    %t59 = getelementptr inbounds %T_structure, %T_structure* %t57, i32 0, i32 32
    %t58 = bitcast i8* %t59 to i8**
    %t60 = load i8*, i8** %t58
    %t61 = bitcast i8* %t60 to %T_identifier*
    %t63 = getelementptr inbounds %T_identifier, %T_identifier* %t61, i32 0, i32 48
    %t62 = bitcast i8* %t63 to %T_valu*
    %t65 = getelementptr inbounds %T_valu, %T_valu* %t62, i32 0, i32 4
    %t64 = bitcast i8* %t65 to i32*
    %t66 = load i32, i32* %t64
    store i32 %t66, i32* %t54
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1654
;================================================================================
; scope: alignquot (level : 2)

; activation record
%Frame_alignquot = type
{
    ; parameters
    i8*,    ; 0: fsp

    ; variables
    i32,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_alignquot(i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_alignquot, align 8
    %t1 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 0
    store i8* %fsp, i8** %t1

    ; body
    ; line 1656
    %t2 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    ; line 1657
    %t5 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1659
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t6 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t6
    ret i32 %t7
}


; line 1676
;================================================================================
; scope: align (level : 2)

; activation record
%Frame_align = type
{
    ; parameters
    i32*,    ; 0: flc
    i8*,    ; 1: fsp

    ; variables
    i32,    ; 2: k
    i32,    ; 3: l

    ; dummy
    i8*
};

; procedure body
define void @P_align(i8* %fsp, i32* %flc)
{
    ; allocate frame
    %.frame = alloca %Frame_align, align 8
    %t1 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 0
    store i32* %flc, i32** %t1
    %t2 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 1
    store i8* %fsp, i8** %t2

    ; body
    ; line 1679
    %t3 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 1
    %t4 = load i8*, i8** %t5
    %t6 = call i32 @F_alignquot(i8* %t4)
    store i32 %t6, i32* %t3
    ; line 1680
    %t7 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 0
    %t11 = load i32*, i32** %t10
    %t9 = load i32, i32* %t11
    %t8 = sub i32 %t9, 1
    store i32 %t8, i32* %t7
    ; line 1681
    %t12 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 0
    %t13 = load i32*, i32** %t12
    %t17 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 3
    %t16 = load i32, i32* %t17
    %t19 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    %t15 = add i32 %t16, %t18
    %t23 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 2
    %t22 = load i32, i32* %t23
    %t25 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 3
    %t24 = load i32, i32* %t25
    %t21 = add i32 %t22, %t24
    %t27 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 2
    %t26 = load i32, i32* %t27
    %t20 = srem i32 %t21, %t26
    %t14 = sub i32 %t15, %t20
    store i32 %t14, i32* %t13

    ; epilogue
    ret void
}


; line 1684
;================================================================================
; scope: printtables (level : 2)

; activation record
%Frame_printtables = type
{
    ; parameters
    i1,    ; 0: fb

    ; variables
    i32,    ; 1: i
    i32,    ; 2: lim

    ; dummy
    i8*
};

; procedure body
define void @P_printtables(i1 %fb)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables, align 8
    %t1 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 0
    store i1 %fb, i1* %t1

    ; body
    ; line 1859
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 1859
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 1859
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 1860
    %t6 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 0
    %t5 = load i1, i1* %t6
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1860
    %t7 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 2
    store i32 0, i32* %t7
    br label %L_endif_1
L_else_1:
    ; line 1861
    %t8 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 2
    %t9 = load i32, i32* @top
    store i32 %t9, i32* %t8
    ; line 1861
    %t10 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t10, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 6)
    br label %L_endif_1
L_endif_1:
    ; line 1862
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t11)
    ; line 1862
    %t12 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t12)
    ; line 1863
    call void @P_printtables_marker(%Frame_printtables* %.frame)
    ; line 1864
    ; line 1866
    %t13 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t13)
    ; line 1867
    %t14 = load i1, i1* @eol
    %t15 = icmp eq i1 0, %t14
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1867
    %t16 = load %T_text, %T_text* @output
    %t18 = load i32, i32* @chcnt
    %t17 = add i32 %t18, 16
    call void @_WriteChar(i8* %t16, i32 %t17, i32 0, i8 32)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 1694
;================================================================================
; scope: printtables_stptoint (level : 3)

; types
%T_printtables_stptoint_record_32 = type [8 x i8]

; activation record
%Frame_printtables_stptoint = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i32,    ; 1: _fnvalue
    %T_printtables_stptoint_record_32,    ; 2: r

    ; slink
    %Frame_printtables*    ; 3
};

; function body
define i32 @F_printtables_stptoint(%Frame_printtables* %.slink, i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_stptoint, align 8
    %t1 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 3
    store %Frame_printtables* %.slink, %Frame_printtables** %t1
    %t2 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 0
    store i8* %p, i8** %t2

    ; body
    ; line 1696
    %t3 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %T_printtables_stptoint_record_32, %T_printtables_stptoint_record_32* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    store i8* %t6, i8** %t4
    ; line 1696
    %t8 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %T_printtables_stptoint_record_32, %T_printtables_stptoint_record_32* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    store i32 %t12, i32* %t8

    ; epilogue
    %t13 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 1
    %t14 = load i32, i32* %t13
    ret i32 %t14
}


; line 1698
;================================================================================
; scope: printtables_ctptoint (level : 3)

; types
%T_printtables_ctptoint_record_33 = type [8 x i8]

; activation record
%Frame_printtables_ctptoint = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i32,    ; 1: _fnvalue
    %T_printtables_ctptoint_record_33,    ; 2: r

    ; slink
    %Frame_printtables*    ; 3
};

; function body
define i32 @F_printtables_ctptoint(%Frame_printtables* %.slink, i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_ctptoint, align 8
    %t1 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 3
    store %Frame_printtables* %.slink, %Frame_printtables** %t1
    %t2 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 0
    store i8* %p, i8** %t2

    ; body
    ; line 1700
    %t3 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %T_printtables_ctptoint_record_33, %T_printtables_ctptoint_record_33* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    store i8* %t6, i8** %t4
    ; line 1700
    %t8 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %T_printtables_ctptoint_record_33, %T_printtables_ctptoint_record_33* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    store i32 %t12, i32* %t8

    ; epilogue
    %t13 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 1
    %t14 = load i32, i32* %t13
    ret i32 %t14
}


; line 1702
;================================================================================
; scope: printtables_marker (level : 3)

; activation record
%Frame_printtables_marker = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_printtables*    ; 1
};

; procedure body
define void @P_printtables_marker(%Frame_printtables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_marker, align 8
    %t1 = getelementptr inbounds %Frame_printtables_marker, %Frame_printtables_marker* %.frame, i32 0, i32 1
    store %Frame_printtables* %.slink, %Frame_printtables** %t1

    ; body
    ; line 1739

    ; epilogue
    ret void
}


; line 1708
;================================================================================
; scope: printtables_marker_markstp (level : 4)

; activation record
%Frame_printtables_marker_markstp = type
{
    ; parameters
    i8*,    ; 0: fp

    ; slink
    %Frame_printtables_marker*    ; 1
};

; procedure body
define void @P_printtables_marker_markstp(%Frame_printtables_marker* %.slink, i8* %fp)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_marker_markstp, align 8
    %t1 = getelementptr inbounds %Frame_printtables_marker_markstp, %Frame_printtables_marker_markstp* %.frame, i32 0, i32 1
    store %Frame_printtables_marker* %.slink, %Frame_printtables_marker** %t1
    %t2 = getelementptr inbounds %Frame_printtables_marker_markstp, %Frame_printtables_marker_markstp* %.frame, i32 0, i32 0
    store i8* %fp, i8** %t2

    ; body
    ; line 1711
    %t5 = getelementptr inbounds %Frame_printtables_marker_markstp, %Frame_printtables_marker_markstp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1713
    %t7 = getelementptr inbounds %Frame_printtables_marker_markstp, %Frame_printtables_marker_markstp* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_structure*
    %t10 = getelementptr inbounds %T_structure, %T_structure* %t8, i32 0, i32 8
    %t9 = bitcast i8* %t10 to i1*
    store i1 1, i1* %t9
    ; line 1714
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1729
;================================================================================
; scope: printtables_marker_markctp (level : 4)

; activation record
%Frame_printtables_marker_markctp = type
{
    ; parameters
    i8*,    ; 0: fp

    ; slink
    %Frame_printtables_marker*    ; 1
};

; procedure body
define void @P_printtables_marker_markctp(%Frame_printtables_marker* %.slink, i8* %fp)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_marker_markctp, align 8
    %t1 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 1
    store %Frame_printtables_marker* %.slink, %Frame_printtables_marker** %t1
    %t2 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    store i8* %fp, i8** %t2

    ; body
    ; line 1731
    %t5 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1733
    %t6 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 1
    %t7 = load %Frame_printtables_marker*, %Frame_printtables_marker** %t6
    %t9 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t8 = load i8*, i8** %t9
    %t10 = bitcast i8* %t8 to %T_identifier*
    %t12 = getelementptr inbounds %T_identifier, %T_identifier* %t10, i32 0, i32 8
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    call void @P_printtables_marker_markctp(%Frame_printtables_marker* %t7, i8* %t13)
    ; line 1733
    %t14 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 1
    %t15 = load %Frame_printtables_marker*, %Frame_printtables_marker** %t14
    %t17 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t16 = load i8*, i8** %t17
    %t18 = bitcast i8* %t16 to %T_identifier*
    %t20 = getelementptr inbounds %T_identifier, %T_identifier* %t18, i32 0, i32 16
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    call void @P_printtables_marker_markctp(%Frame_printtables_marker* %t15, i8* %t21)
    ; line 1734
    %t22 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 1
    %t23 = load %Frame_printtables_marker*, %Frame_printtables_marker** %t22
    %t25 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_identifier*
    %t28 = getelementptr inbounds %T_identifier, %T_identifier* %t26, i32 0, i32 24
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** %t27
    call void @P_printtables_marker_markstp(%Frame_printtables_marker* %t23, i8* %t29)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1745
;================================================================================
; scope: printtables_followstp (level : 3)

; activation record
%Frame_printtables_followstp = type
{
    ; parameters
    i8*,    ; 0: fp

    ; slink
    %Frame_printtables*    ; 1
};

; procedure body
define void @P_printtables_followstp(%Frame_printtables* %.slink, i8* %fp)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_followstp, align 8
    %t1 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 1
    store %Frame_printtables* %.slink, %Frame_printtables** %t1
    %t2 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    store i8* %fp, i8** %t2

    ; body
    ; line 1747
    %t5 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1749
    %t7 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_structure*
    %t10 = getelementptr inbounds %T_structure, %T_structure* %t8, i32 0, i32 8
    %t9 = bitcast i8* %t10 to i1*
    %t11 = load i1, i1* %t9
    br i1 %t11, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1750
    %t13 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 8
    %t15 = bitcast i8* %t16 to i1*
    store i1 0, i1* %t15
    ; line 1750
    %t17 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t17, i32 4, i32 0, i8 32)
    %t18 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 1
    %t19 = load %Frame_printtables*, %Frame_printtables** %t18
    %t21 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t20 = load i8*, i8** %t21
    %t22 = call i32 @F_printtables_stptoint(%Frame_printtables* %t19, i8* %t20)
    call void @_WriteInteger(i8* %t17, i32 11, i32 0, i32 %t22)
    %t24 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t23 = load i8*, i8** %t24
    %t25 = bitcast i8* %t23 to %T_structure*
    %t27 = getelementptr inbounds %T_structure, %T_structure* %t25, i32 0, i32 12
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* %t26
    call void @_WriteInteger(i8* %t17, i32 10, i32 0, i32 %t28)
    ; line 1751
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1798
;================================================================================
; scope: printtables_followctp (level : 3)

; activation record
%Frame_printtables_followctp = type
{
    ; parameters
    i8*,    ; 0: fp

    ; slink
    %Frame_printtables*    ; 1
};

; procedure body
define void @P_printtables_followctp(%Frame_printtables* %.slink, i8* %fp)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_followctp, align 8
    %t1 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    store %Frame_printtables* %.slink, %Frame_printtables** %t1
    %t2 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    store i8* %fp, i8** %t2

    ; body
    ; line 1800
    %t5 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1802
    %t6 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t6, i32 4, i32 0, i8 32)
    %t7 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t8 = load %Frame_printtables*, %Frame_printtables** %t7
    %t10 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t9 = load i8*, i8** %t10
    %t11 = call i32 @F_printtables_ctptoint(%Frame_printtables* %t8, i8* %t9)
    call void @_WriteInteger(i8* %t6, i32 11, i32 0, i32 %t11)
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 32)
    ; line 1803
    %t13 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8**
    %t17 = load i8*, i8** %t15
    call void @P_writev(%T_text* @output, i8* %t17, i32 9)
    ; line 1803
    %t18 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t18, i32 4, i32 0, i8 32)
    %t19 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t20 = load %Frame_printtables*, %Frame_printtables** %t19
    %t22 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t21 = load i8*, i8** %t22
    %t23 = bitcast i8* %t21 to %T_identifier*
    %t25 = getelementptr inbounds %T_identifier, %T_identifier* %t23, i32 0, i32 8
    %t24 = bitcast i8* %t25 to i8**
    %t26 = load i8*, i8** %t24
    %t27 = call i32 @F_printtables_ctptoint(%Frame_printtables* %t20, i8* %t26)
    call void @_WriteInteger(i8* %t18, i32 11, i32 0, i32 %t27)
    call void @_WriteChar(i8* %t18, i32 4, i32 0, i8 32)
    %t28 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t29 = load %Frame_printtables*, %Frame_printtables** %t28
    %t31 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t30 = load i8*, i8** %t31
    %t32 = bitcast i8* %t30 to %T_identifier*
    %t34 = getelementptr inbounds %T_identifier, %T_identifier* %t32, i32 0, i32 16
    %t33 = bitcast i8* %t34 to i8**
    %t35 = load i8*, i8** %t33
    %t36 = call i32 @F_printtables_ctptoint(%Frame_printtables* %t29, i8* %t35)
    call void @_WriteInteger(i8* %t18, i32 11, i32 0, i32 %t36)
    call void @_WriteChar(i8* %t18, i32 4, i32 0, i8 32)
    %t37 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t38 = load %Frame_printtables*, %Frame_printtables** %t37
    %t40 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t39 = load i8*, i8** %t40
    %t41 = bitcast i8* %t39 to %T_identifier*
    %t43 = getelementptr inbounds %T_identifier, %T_identifier* %t41, i32 0, i32 24
    %t42 = bitcast i8* %t43 to i8**
    %t44 = load i8*, i8** %t42
    %t45 = call i32 @F_printtables_stptoint(%Frame_printtables* %t38, i8* %t44)
    call void @_WriteInteger(i8* %t18, i32 11, i32 0, i32 %t45)
    ; line 1805
    ; line 1852
    %t46 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t46)
    ; line 1853
    %t47 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t48 = load %Frame_printtables*, %Frame_printtables** %t47
    %t50 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t49 = load i8*, i8** %t50
    %t51 = bitcast i8* %t49 to %T_identifier*
    %t53 = getelementptr inbounds %T_identifier, %T_identifier* %t51, i32 0, i32 8
    %t52 = bitcast i8* %t53 to i8**
    %t54 = load i8*, i8** %t52
    call void @P_printtables_followctp(%Frame_printtables* %t48, i8* %t54)
    ; line 1853
    %t55 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t56 = load %Frame_printtables*, %Frame_printtables** %t55
    %t58 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t57 = load i8*, i8** %t58
    %t59 = bitcast i8* %t57 to %T_identifier*
    %t61 = getelementptr inbounds %T_identifier, %T_identifier* %t59, i32 0, i32 16
    %t60 = bitcast i8* %t61 to i8**
    %t62 = load i8*, i8** %t60
    call void @P_printtables_followctp(%Frame_printtables* %t56, i8* %t62)
    ; line 1854
    %t63 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 1
    %t64 = load %Frame_printtables*, %Frame_printtables** %t63
    %t66 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t65 = load i8*, i8** %t66
    %t67 = bitcast i8* %t65 to %T_identifier*
    %t69 = getelementptr inbounds %T_identifier, %T_identifier* %t67, i32 0, i32 24
    %t68 = bitcast i8* %t69 to i8**
    %t70 = load i8*, i8** %t68
    call void @P_printtables_followstp(%Frame_printtables* %t64, i8* %t70)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1870
;================================================================================
; scope: genlabel (level : 2)

; activation record
%Frame_genlabel = type
{
    ; parameters
    i32*,    ; 0: nxtlab

    ; dummy
    i8*
};

; procedure body
define void @P_genlabel(i32* %nxtlab)
{
    ; allocate frame
    %.frame = alloca %Frame_genlabel, align 8
    %t1 = getelementptr inbounds %Frame_genlabel, %Frame_genlabel* %.frame, i32 0, i32 0
    store i32* %nxtlab, i32** %t1

    ; body
    ; line 1871
    %t3 = load i32, i32* @intlabel
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @intlabel
    ; line 1872
    %t4 = getelementptr inbounds %Frame_genlabel, %Frame_genlabel* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t6 = load i32, i32* @intlabel
    store i32 %t6, i32* %t5

    ; epilogue
    ret void
}


; line 1875
;================================================================================
; scope: searchlabel (level : 2)

; activation record
%Frame_searchlabel = type
{
    ; parameters
    i32,    ; 0: level
    i8**,    ; 1: llp

    ; variables
    i8*,    ; 2: fllp

    ; dummy
    i8*
};

; procedure body
define void @P_searchlabel(i8** %llp, i32 %level)
{
    ; allocate frame
    %.frame = alloca %Frame_searchlabel, align 8
    %t1 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 0
    store i32 %level, i32* %t1
    %t2 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 1
    store i8** %llp, i8*** %t2

    ; body
    ; line 1878
    %t3 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 2
    store i8* null, i8** %t3
    ; line 1879
    %t4 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 1
    %t5 = load i8**, i8*** %t4
    %t7 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t8 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t6
    %t10 = getelementptr inbounds %T_record_9, %T_record_9* %t8, i32 0, i32 8
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t5
    ; line 1880
    ; line 1886
    %t12 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 1
    %t13 = load i8**, i8*** %t12
    %t15 = getelementptr inbounds %Frame_searchlabel, %Frame_searchlabel* %.frame, i32 0, i32 2
    %t14 = load i8*, i8** %t15
    store i8* %t14, i8** %t13

    ; epilogue
    ret void
}


; line 1889
;================================================================================
; scope: newlabel (level : 2)

; activation record
%Frame_newlabel = type
{
    ; parameters
    i8**,    ; 0: llp

    ; variables
    i32,    ; 1: lbname

    ; dummy
    i8*
};

; procedure body
define void @P_newlabel(i8** %llp)
{
    ; allocate frame
    %.frame = alloca %Frame_newlabel, align 8
    %t1 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    store i8** %llp, i8*** %t1

    ; body
    ; line 1893
    %t2 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t3 = load i8**, i8*** %t2
    call void @P_getlab(i8** %t3)
    ; line 1895
    %t5 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    %t4 = load i8*, i8** %t6
    %t7 = bitcast i8* %t4 to %T_labl*
    %t9 = getelementptr inbounds %T_labl, %T_labl* %t7, i32 0, i32 12
    %t8 = bitcast i8* %t9 to i32*
    %t11 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 4
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    store i32 %t12, i32* %t8
    ; line 1895
    %t13 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t13)
    ; line 1896
    %t15 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t16 = load i8**, i8*** %t15
    %t14 = load i8*, i8** %t16
    %t17 = bitcast i8* %t14 to %T_labl*
    %t19 = getelementptr inbounds %T_labl, %T_labl* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i1*
    store i1 0, i1* %t18
    ; line 1896
    %t21 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t22 = load i8**, i8*** %t21
    %t20 = load i8*, i8** %t22
    %t23 = bitcast i8* %t20 to %T_labl*
    %t25 = getelementptr inbounds %T_labl, %T_labl* %t23, i32 0, i32 0
    %t24 = bitcast i8* %t25 to i8**
    %t26 = load i32, i32* @top
    %t27 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t26
    %t29 = getelementptr inbounds %T_record_9, %T_record_9* %t27, i32 0, i32 8
    %t28 = bitcast i8* %t29 to i8**
    %t30 = load i8*, i8** %t28
    store i8* %t30, i8** %t24
    ; line 1896
    %t32 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t33 = load i8**, i8*** %t32
    %t31 = load i8*, i8** %t33
    %t34 = bitcast i8* %t31 to %T_labl*
    %t36 = getelementptr inbounds %T_labl, %T_labl* %t34, i32 0, i32 16
    %t35 = bitcast i8* %t36 to i32*
    %t38 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 1
    %t37 = load i32, i32* %t38
    store i32 %t37, i32* %t35
    ; line 1897
    %t40 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t41 = load i8**, i8*** %t40
    %t39 = load i8*, i8** %t41
    %t42 = bitcast i8* %t39 to %T_labl*
    %t44 = getelementptr inbounds %T_labl, %T_labl* %t42, i32 0, i32 20
    %t43 = bitcast i8* %t44 to i32*
    %t45 = load i32, i32* @level
    store i32 %t45, i32* %t43
    ; line 1897
    %t47 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t48 = load i8**, i8*** %t47
    %t46 = load i8*, i8** %t48
    %t49 = bitcast i8* %t46 to %T_labl*
    %t51 = getelementptr inbounds %T_labl, %T_labl* %t49, i32 0, i32 24
    %t50 = bitcast i8* %t51 to i32*
    store i32 0, i32* %t50
    ; line 1897
    %t53 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t54 = load i8**, i8*** %t53
    %t52 = load i8*, i8** %t54
    %t55 = bitcast i8* %t52 to %T_labl*
    %t57 = getelementptr inbounds %T_labl, %T_labl* %t55, i32 0, i32 28
    %t56 = bitcast i8* %t57 to i1*
    store i1 0, i1* %t56
    ; line 1897
    %t59 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t60 = load i8**, i8*** %t59
    %t58 = load i8*, i8** %t60
    %t61 = bitcast i8* %t58 to %T_labl*
    %t63 = getelementptr inbounds %T_labl, %T_labl* %t61, i32 0, i32 32
    %t62 = bitcast i8* %t63 to i32*
    store i32 2147483647, i32* %t62
    ; line 1898
    %t65 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t66 = load i8**, i8*** %t65
    %t64 = load i8*, i8** %t66
    %t67 = bitcast i8* %t64 to %T_labl*
    %t69 = getelementptr inbounds %T_labl, %T_labl* %t67, i32 0, i32 36
    %t68 = bitcast i8* %t69 to i1*
    store i1 0, i1* %t68
    ; nop
    ; line 1900
    %t70 = load i32, i32* @top
    %t71 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t70
    %t73 = getelementptr inbounds %T_record_9, %T_record_9* %t71, i32 0, i32 8
    %t72 = bitcast i8* %t73 to i8**
    %t75 = getelementptr inbounds %Frame_newlabel, %Frame_newlabel* %.frame, i32 0, i32 0
    %t76 = load i8**, i8*** %t75
    %t74 = load i8*, i8** %t76
    store i8* %t74, i8** %t72

    ; epilogue
    ret void
}


; line 1904
;================================================================================
; scope: prtlabels (level : 2)

; activation record
%Frame_prtlabels = type
{
    ; variables
    i8*,    ; 0: llp

    ; dummy
    i8*
};

; procedure body
define void @P_prtlabels()
{
    ; allocate frame
    %.frame = alloca %Frame_prtlabels, align 8

    ; body
    ; line 1907
    %t1 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1)
    ; line 1908
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t2)
    ; line 1909
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 1910
    %t4 = getelementptr inbounds %Frame_prtlabels, %Frame_prtlabels* %.frame, i32 0, i32 0
    %t5 = load i32, i32* @level
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_record_9, %T_record_9* %t6, i32 0, i32 8
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    store i8* %t9, i8** %t4
    ; line 1911

    ; epilogue
    ret void
}


; line 1921
;================================================================================
; scope: block (level : 2)

; activation record
%Frame_block = type
{
    ; parameters
    i8*,    ; 0: fprocp
    i32,    ; 1: fsy
    %T_setofsys,    ; 2: fsys

    ; variables
    i32,    ; 3: lsy
    i32,    ; 4: stalvl

    ; dummy
    i8*
};

; procedure body
define void @P_block(%T_setofsys %fsys, i32 %fsy, i8* %fprocp)
{
    ; allocate frame
    %.frame = alloca %Frame_block, align 8
    %t1 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    store i8* %fprocp, i8** %t1
    %t2 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 1
    store i32 %fsy, i32* %t2
    %t3 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    store %T_setofsys %fsys, %T_setofsys* %t3

    ; body
    ; line 4993
    %t4 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    store i32 0, i32* %t4
    ; line 4994
    store i1 1, i1* @dp
    ; line 4995
    ; line 5009
    store i1 0, i1* @dp
    ; line 5010
    %t6 = load i32, i32* @sy
    %t5 = icmp eq i32 %t6, 31
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 5010
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 5010
    call void @P_error(i32 17)
    br label %L_endif_1
L_endif_1:
    ; line 5011
    ; nop

    ; epilogue
    ret void
}


; line 1925
;================================================================================
; scope: block_skip (level : 3)

; activation record
%Frame_block_skip = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_skip(%Frame_block* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_skip, align 8
    %t1 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 1928
    %t3 = icmp eq i1 0, %.dummy.intrin
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1929
    ; line 1930
    %t5 = icmp eq i1 0, true
    br i1 %t5, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1930
    call void @P_insymbol()
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1934
;================================================================================
; scope: block_constant (level : 3)

; activation record
%Frame_block_constant = type
{
    ; parameters
    i8**,    ; 0: fsp
    %T_setofsys,    ; 1: fsys
    %T_valu*,    ; 2: fvalu

    ; variables
    i32,    ; 3: i
    i8*,    ; 4: lcp
    i8*,    ; 5: lsp
    i8*,    ; 6: lvp
    i32,    ; 7: sign

    ; slink
    %Frame_block*    ; 8
};

; procedure body
define void @P_block_constant(%Frame_block* %.slink, %T_setofsys %fsys, i8** %fsp, %T_valu* %fvalu)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constant, align 8
    %t1 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    store i8** %fsp, i8*** %t2
    %t3 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    store %T_setofsys %fsys, %T_setofsys* %t3
    %t4 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    store %T_valu* %fvalu, %T_valu** %t4

    ; body
    ; line 1937
    %t5 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    store i8* null, i8** %t5
    ; line 1937
    %t6 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t7 = load %T_valu*, %T_valu** %t6
    %t9 = getelementptr inbounds %T_valu, %T_valu* %t7, i32 0, i32 4
    %t8 = bitcast i8* %t9 to i32*
    store i32 0, i32* %t8
    ; line 1938
    %t11 = icmp eq i1 0, true
    br i1 %t11, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1939
    call void @P_error(i32 50)
    ; line 1939
    %t12 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    %t13 = load %Frame_block*, %Frame_block** %t12
    call void @P_block_skip(%Frame_block* %t13, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 1940
    br i1 true, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1942
    %t17 = load i32, i32* @sy
    %t16 = icmp eq i32 %t17, 3
    br i1 %t16, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1944
    %t19 = load i32, i32* @lgth
    %t18 = icmp eq i32 %t19, 1
    br i1 %t18, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1944
    %t20 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t21 = load i8*, i8** @charptr
    store i8* %t21, i8** %t20
    br label %L_endif_4
L_else_4:
    ; line 1947
    ; line 1947
    %t23 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t22 = load i8*, i8** %t23
    call void @P_pshstc(i8* %t22)
    ; line 1949
    %t25 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 24
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** @charptr
    store i8* %t29, i8** %t27
    ; line 1949
    %t31 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t30 = load i8*, i8** %t31
    %t32 = bitcast i8* %t30 to %T_structure*
    %t34 = getelementptr inbounds %T_structure, %T_structure* %t32, i32 0, i32 32
    %t33 = bitcast i8* %t34 to i8**
    store i8* null, i8** %t33
    ; line 1950
    %t36 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t35 = load i8*, i8** %t36
    %t37 = bitcast i8* %t35 to %T_structure*
    %t39 = getelementptr inbounds %T_structure, %T_structure* %t37, i32 0, i32 12
    %t38 = bitcast i8* %t39 to i32*
    %t41 = load i32, i32* @lgth
    %t40 = mul i32 %t41, 1
    store i32 %t40, i32* %t38
    ; line 1950
    %t43 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t42 = load i8*, i8** %t43
    %t44 = bitcast i8* %t42 to %T_structure*
    %t46 = getelementptr inbounds %T_structure, %T_structure* %t44, i32 0, i32 20
    %t45 = bitcast i8* %t46 to i32*
    store i32 4, i32* %t45
    ; line 1951
    %t48 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t47 = load i8*, i8** %t48
    %t49 = bitcast i8* %t47 to %T_structure*
    %t51 = getelementptr inbounds %T_structure, %T_structure* %t49, i32 0, i32 16
    %t50 = bitcast i8* %t51 to i1*
    store i1 1, i1* %t50
    br label %L_endif_4
L_endif_4:
    ; line 1954
    %t52 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t53 = load %T_valu*, %T_valu** %t52
    %t54 = load %T_valu, %T_valu* @val
    store %T_valu %t54, %T_valu* %t53
    ; line 1954
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 1958
    %t55 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    store i32 0, i32* %t55
    ; line 1959
    br label %L_AND_expr_5
L_AND_expr_5:
    %t58 = load i32, i32* @sy
    %t57 = icmp eq i32 %t58, 6
    br i1 %t57, label %L_AND_eval_5, label %L_AND_shortcut_5
L_AND_eval_5:
    br label %L_AND_shortcut_5
L_AND_shortcut_5:
    %t56 = phi [true, %L_AND_eval_5], [false, %L_AND_expr_5]
    br i1 %t56, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1960
    %t61 = load i32, i32* @op
    %t60 = icmp eq i32 %t61, 5
    br i1 %t60, label %L_then_7, label %L_else_7
L_then_7:
    ; line 1960
    %t62 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    store i32 1, i32* %t62
    br label %L_endif_7
L_else_7:
    ; line 1960
    %t63 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    store i32 2, i32* %t63
    br label %L_endif_7
L_endif_7:
    ; line 1961
    call void @P_insymbol()
    br label %L_endif_6
L_endif_6:
    ; line 1963
    %t65 = load i32, i32* @sy
    %t64 = icmp eq i32 %t65, 0
    br i1 %t64, label %L_then_8, label %L_else_8
L_then_8:
    ; line 1964
    %t66 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t66)
    ; line 1966
    %t67 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t69 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t68 = load i8*, i8** %t69
    %t70 = bitcast i8* %t68 to %T_identifier*
    %t72 = getelementptr inbounds %T_identifier, %T_identifier* %t70, i32 0, i32 24
    %t71 = bitcast i8* %t72 to i8**
    %t73 = load i8*, i8** %t71
    store i8* %t73, i8** %t67
    ; line 1966
    %t74 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t75 = load %T_valu*, %T_valu** %t74
    %t77 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t76 = load i8*, i8** %t77
    %t78 = bitcast i8* %t76 to %T_identifier*
    %t80 = getelementptr inbounds %T_identifier, %T_identifier* %t78, i32 0, i32 48
    %t79 = bitcast i8* %t80 to %T_valu*
    %t81 = load %T_valu, %T_valu* %t79
    store %T_valu %t81, %T_valu* %t75
    ; line 1967
    %t84 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t83 = load i32, i32* %t84
    %t82 = icmp ne i32 %t83, 0
    br i1 %t82, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 1968
    %t87 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t86 = load i8*, i8** %t87
    %t88 = load i8*, i8** @intptr
    %t85 = icmp eq i32 %t86, %t88
    br i1 %t85, label %L_then_10, label %L_else_10
L_then_10:
    ; line 1969
    %t91 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t90 = load i32, i32* %t91
    %t89 = icmp eq i32 %t90, 2
    br i1 %t89, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 1969
    %t92 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t93 = load %T_valu*, %T_valu** %t92
    %t95 = getelementptr inbounds %T_valu, %T_valu* %t93, i32 0, i32 4
    %t94 = bitcast i8* %t95 to i32*
    %t96 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t97 = load %T_valu*, %T_valu** %t96
    %t99 = getelementptr inbounds %T_valu, %T_valu* %t97, i32 0, i32 4
    %t98 = bitcast i8* %t99 to i32*
    %t100 = load i32, i32* %t98
    %t101 = sub i32 0, %t100
    store i32 %t101, i32* %t94
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_else_10:
    ; line 1971
    %t104 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t103 = load i8*, i8** %t104
    %t105 = load i8*, i8** @realptr
    %t102 = icmp eq i32 %t103, %t105
    br i1 %t102, label %L_then_12, label %L_else_12
L_then_12:
    ; line 1973
    %t108 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t107 = load i32, i32* %t108
    %t106 = icmp eq i32 %t107, 2
    br i1 %t106, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 1974
    ; line 1974
    %t110 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t109 = load i8*, i8** %t110
    call void @P_pshcst(i8* %t109)
    ; line 1975
    %t112 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t113 = load %T_valu*, %T_valu** %t112
    %t115 = getelementptr inbounds %T_valu, %T_valu* %t113, i32 0, i32 8
    %t114 = bitcast i8* %t115 to i8**
    %t116 = load i8*, i8** %t114
    %t117 = bitcast i8* %t116 to %T_constant*
    %t119 = getelementptr inbounds %T_constant, %T_constant* %t117, i32 0, i32 16
    %t118 = bitcast i8* %t119 to i8**
    %t120 = load i8*, i8** %t118
    %t121 = call i8 @F_strchr(i8* %t120, i32 1)
    %t111 = icmp eq i32 %t121, 45
    br i1 %t111, label %L_then_14, label %L_else_14
L_then_14:
    ; line 1976
    %t123 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t122 = load i8*, i8** %t123
    %t124 = bitcast i8* %t122 to %T_constant*
    %t126 = getelementptr inbounds %T_constant, %T_constant* %t124, i32 0, i32 16
    %t125 = bitcast i8* %t126 to i8**
    call void @P_strchrass(i8** %t125, i32 1, i8 43)
    br label %L_endif_14
L_else_14:
    ; line 1977
    %t128 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t127 = load i8*, i8** %t128
    %t129 = bitcast i8* %t127 to %T_constant*
    %t131 = getelementptr inbounds %T_constant, %T_constant* %t129, i32 0, i32 16
    %t130 = bitcast i8* %t131 to i8**
    call void @P_strchrass(i8** %t130, i32 1, i8 45)
    br label %L_endif_14
L_endif_14:
    ; line 1978
    ; line 1980
    %t132 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t133 = load %T_valu*, %T_valu** %t132
    %t135 = getelementptr inbounds %T_valu, %T_valu* %t133, i32 0, i32 8
    %t134 = bitcast i8* %t135 to i8**
    %t137 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t136 = load i8*, i8** %t137
    store i8* %t136, i8** %t134
    ; nop
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_else_12:
    ; line 1983
    call void @P_error(i32 105)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; line 1984
    call void @P_insymbol()
    ; nop
    br label %L_endif_8
L_else_8:
    ; line 1987
    %t139 = load i32, i32* @sy
    %t138 = icmp eq i32 %t139, 1
    br i1 %t138, label %L_then_15, label %L_else_15
L_then_15:
    ; line 1988
    %t142 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t141 = load i32, i32* %t142
    %t140 = icmp eq i32 %t141, 2
    br i1 %t140, label %L_then_16, label %L_endif_16
L_then_16:
    ; line 1988
    %t144 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 4
    %t143 = bitcast i8* %t144 to i32*
    %t146 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 4
    %t145 = bitcast i8* %t146 to i32*
    %t147 = load i32, i32* %t145
    %t148 = sub i32 0, %t147
    store i32 %t148, i32* %t143
    br label %L_endif_16
L_endif_16:
    ; line 1989
    %t149 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t150 = load i8*, i8** @intptr
    store i8* %t150, i8** %t149
    ; line 1989
    %t151 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t152 = load %T_valu*, %T_valu** %t151
    %t153 = load %T_valu, %T_valu* @val
    store %T_valu %t153, %T_valu* %t152
    ; line 1989
    call void @P_insymbol()
    br label %L_endif_15
L_else_15:
    ; line 1992
    %t155 = load i32, i32* @sy
    %t154 = icmp eq i32 %t155, 2
    br i1 %t154, label %L_then_17, label %L_else_17
L_then_17:
    ; line 1993
    %t158 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t157 = load i32, i32* %t158
    %t156 = icmp eq i32 %t157, 2
    br i1 %t156, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 1993
    %t160 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 8
    %t159 = bitcast i8* %t160 to i8**
    %t161 = load i8*, i8** %t159
    %t162 = bitcast i8* %t161 to %T_constant*
    %t164 = getelementptr inbounds %T_constant, %T_constant* %t162, i32 0, i32 16
    %t163 = bitcast i8* %t164 to i8**
    call void @P_strchrass(i8** %t163, i32 1, i8 45)
    br label %L_endif_18
L_endif_18:
    ; line 1994
    %t165 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t166 = load i8*, i8** @realptr
    store i8* %t166, i8** %t165
    ; line 1994
    %t167 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t168 = load %T_valu*, %T_valu** %t167
    %t169 = load %T_valu, %T_valu* @val
    store %T_valu %t169, %T_valu* %t168
    ; line 1994
    call void @P_insymbol()
    br label %L_endif_17
L_else_17:
    ; line 1997
    call void @P_error(i32 106)
    ; line 1997
    %t170 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    %t171 = load %Frame_block*, %Frame_block** %t170
    %t173 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t172 = load %T_setofsys, %T_setofsys* %t173
    call void @P_block_skip(%Frame_block* %t171, %T_setofsys %t172)
    br label %L_endif_17
L_endif_17:
    br label %L_endif_15
L_endif_15:
    br label %L_endif_8
L_endif_8:
    br label %L_endif_3
L_endif_3:
    ; line 1999
    %t175 = icmp eq i1 0, true
    br i1 %t175, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 2000
    call void @P_error(i32 6)
    ; line 2000
    %t176 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    %t177 = load %Frame_block*, %Frame_block** %t176
    %t179 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t178 = load %T_setofsys, %T_setofsys* %t179
    call void @P_block_skip(%Frame_block* %t177, %T_setofsys %t178)
    br label %L_endif_19
L_endif_19:
    br label %L_endif_2
L_endif_2:
    ; line 2002
    %t180 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t181 = load i8**, i8*** %t180
    %t183 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t182 = load i8*, i8** %t183
    store i8* %t182, i8** %t181

    ; epilogue
    ret void
}


; line 2007
;================================================================================
; scope: block_comptypes (level : 3)

; activation record
%Frame_block_comptypes = type
{
    ; parameters
    i8*,    ; 0: fsp1
    i8*,    ; 1: fsp2

    ; variables
    i1,    ; 2: _fnvalue

    ; slink
    %Frame_block*    ; 3
};

; function body
define i1 @F_block_comptypes(%Frame_block* %.slink, i8* %fsp1, i8* %fsp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_comptypes, align 8
    %t1 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    store i8* %fsp1, i8** %t2
    %t3 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    store i8* %fsp2, i8** %t3

    ; body
    ; line 2010
    %t4 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 0, i1* %t4
    ; line 2012
    %t7 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t9 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t8 = load i8*, i8** %t9
    %t5 = icmp eq i32 %t6, %t8
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2012
    %t10 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 1, i1* %t10
    br label %L_endif_1
L_else_1:
    ; line 2014
    br label %L_AND_expr_2
L_AND_expr_2:
    %t14 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t13 = load i8*, i8** %t14
    %t12 = icmp ne i32 %t13, null
    br i1 %t12, label %L_AND_eval_2, label %L_AND_shortcut_2
L_AND_eval_2:
    %t17 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t16 = load i8*, i8** %t17
    %t15 = icmp ne i32 %t16, null
    br label %L_AND_shortcut_2
L_AND_shortcut_2:
    %t11 = phi [%t15, %L_AND_eval_2], [false, %L_AND_expr_2]
    br i1 %t11, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2015
    %t20 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_structure*
    %t23 = getelementptr inbounds %T_structure, %T_structure* %t21, i32 0, i32 20
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t26 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t25 = load i8*, i8** %t26
    %t27 = bitcast i8* %t25 to %T_structure*
    %t29 = getelementptr inbounds %T_structure, %T_structure* %t27, i32 0, i32 20
    %t28 = bitcast i8* %t29 to i32*
    %t30 = load i32, i32* %t28
    %t18 = icmp eq i32 %t24, %t30
    br i1 %t18, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2016
    br label %L_endif_4
L_else_4:
    ; line 2051
    %t33 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t32 = load i8*, i8** %t33
    %t34 = bitcast i8* %t32 to %T_structure*
    %t36 = getelementptr inbounds %T_structure, %T_structure* %t34, i32 0, i32 20
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* %t35
    %t31 = icmp eq i32 %t37, 1
    br i1 %t31, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2052
    %t38 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t41 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t40 = load i8*, i8** %t41
    %t42 = bitcast i8* %t40 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 24
    %t43 = bitcast i8* %t44 to i8**
    %t45 = load i8*, i8** %t43
    %t47 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t46 = load i8*, i8** %t47
    %t39 = icmp eq i32 %t45, %t46
    store i1 %t39, i1* %t38
    br label %L_endif_5
L_else_5:
    ; line 2054
    %t50 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t49 = load i8*, i8** %t50
    %t51 = bitcast i8* %t49 to %T_structure*
    %t53 = getelementptr inbounds %T_structure, %T_structure* %t51, i32 0, i32 20
    %t52 = bitcast i8* %t53 to i32*
    %t54 = load i32, i32* %t52
    %t48 = icmp eq i32 %t54, 1
    br i1 %t48, label %L_then_6, label %L_else_6
L_then_6:
    ; line 2055
    %t55 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t58 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t57 = load i8*, i8** %t58
    %t60 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t59 = load i8*, i8** %t60
    %t61 = bitcast i8* %t59 to %T_structure*
    %t63 = getelementptr inbounds %T_structure, %T_structure* %t61, i32 0, i32 24
    %t62 = bitcast i8* %t63 to i8**
    %t64 = load i8*, i8** %t62
    %t56 = icmp eq i32 %t57, %t64
    store i1 %t56, i1* %t55
    br label %L_endif_6
L_else_6:
    ; line 2056
    %t65 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 0, i1* %t65
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 2057
    %t66 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 1, i1* %t66
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t67 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t68 = load i1, i1* %t67
    ret i1 %t68
}


; line 2061
;================================================================================
; scope: block_filecomponent (level : 3)

; activation record
%Frame_block_filecomponent = type
{
    ; parameters
    i8*,    ; 0: fsp

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: f

    ; slink
    %Frame_block*    ; 3
};

; function body
define i1 @F_block_filecomponent(%Frame_block* %.slink, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_filecomponent, align 8
    %t1 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 0
    store i8* %fsp, i8** %t2

    ; body
    ; line 2076
    %t3 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 2
    store i1 0, i1* %t3
    ; line 2077
    %t6 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t4 = icmp ne i32 %t5, null
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2077
    br label %L_endif_1
L_endif_1:
    ; line 2088
    %t7 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 2
    %t8 = load i1, i1* %t9
    store i1 %t8, i1* %t7

    ; epilogue
    %t10 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %.frame, i32 0, i32 1
    %t11 = load i1, i1* %t10
    ret i1 %t11
}


; line 2064
;================================================================================
; scope: block_filecomponent_filecomponentre (level : 4)

; activation record
%Frame_block_filecomponent_filecomponentre = type
{
    ; parameters
    i8*,    ; 0: lcp

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: f

    ; slink
    %Frame_block_filecomponent*    ; 3
};

; function body
define i1 @F_block_filecomponent_filecomponentre(%Frame_block_filecomponent* %.slink, i8* %lcp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_filecomponent_filecomponentre, align 8
    %t1 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 3
    store %Frame_block_filecomponent* %.slink, %Frame_block_filecomponent** %t1
    %t2 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 0
    store i8* %lcp, i8** %t2

    ; body
    ; line 2067
    %t3 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 2
    store i1 0, i1* %t3
    ; line 2068
    %t6 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t4 = icmp ne i32 %t5, null
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2069
    %t7 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 3
    %t8 = load %Frame_block_filecomponent*, %Frame_block_filecomponent** %t7
    %t9 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %t8, i32 0, i32 3
    %t10 = load %Frame_block*, %Frame_block** %t9
    %t12 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 0
    %t11 = load i8*, i8** %t12
    %t13 = bitcast i8* %t11 to %T_identifier*
    %t15 = getelementptr inbounds %T_identifier, %T_identifier* %t13, i32 0, i32 24
    %t14 = bitcast i8* %t15 to i8**
    %t16 = load i8*, i8** %t14
    %t17 = call i1 @F_block_filecomponent(%Frame_block* %t10, i8* %t16)
    br i1 %t17, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2069
    %t18 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 2
    store i1 1, i1* %t18
    br label %L_endif_2
L_endif_2:
    ; line 2070
    %t19 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 3
    %t20 = load %Frame_block_filecomponent*, %Frame_block_filecomponent** %t19
    %t22 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 0
    %t21 = load i8*, i8** %t22
    %t23 = bitcast i8* %t21 to %T_identifier*
    %t25 = getelementptr inbounds %T_identifier, %T_identifier* %t23, i32 0, i32 8
    %t24 = bitcast i8* %t25 to i8**
    %t26 = load i8*, i8** %t24
    %t27 = call i1 @F_block_filecomponent_filecomponentre(%Frame_block_filecomponent* %t20, i8* %t26)
    br i1 %t27, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2070
    %t28 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 2
    store i1 1, i1* %t28
    br label %L_endif_3
L_endif_3:
    ; line 2071
    %t29 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 3
    %t30 = load %Frame_block_filecomponent*, %Frame_block_filecomponent** %t29
    %t32 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 0
    %t31 = load i8*, i8** %t32
    %t33 = bitcast i8* %t31 to %T_identifier*
    %t35 = getelementptr inbounds %T_identifier, %T_identifier* %t33, i32 0, i32 16
    %t34 = bitcast i8* %t35 to i8**
    %t36 = load i8*, i8** %t34
    %t37 = call i1 @F_block_filecomponent_filecomponentre(%Frame_block_filecomponent* %t30, i8* %t36)
    br i1 %t37, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2071
    %t38 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 2
    store i1 1, i1* %t38
    br label %L_endif_4
L_endif_4:
    br label %L_endif_1
L_endif_1:
    ; line 2073
    %t39 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 1
    %t41 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 2
    %t40 = load i1, i1* %t41
    store i1 %t40, i1* %t39

    ; epilogue
    %t42 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %.frame, i32 0, i32 1
    %t43 = load i1, i1* %t42
    ret i1 %t43
}


; line 2091
;================================================================================
; scope: block_string (level : 3)

; activation record
%Frame_block_string = type
{
    ; parameters
    i8*,    ; 0: fsp

    ; variables
    i1,    ; 1: _fnvalue
    i32,    ; 2: fmax
    i32,    ; 3: fmin

    ; slink
    %Frame_block*    ; 4
};

; function body
define i1 @F_block_string(%Frame_block* %.slink, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_string, align 8
    %t1 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    store i8* %fsp, i8** %t2

    ; body
    ; line 2093
    %t3 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    store i1 0, i1* %t3
    ; line 2094
    %t6 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t4 = icmp ne i32 %t5, null
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2095
    br label %L_AND_expr_2
L_AND_expr_2:
    %t10 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t9 = load i8*, i8** %t10
    %t11 = bitcast i8* %t9 to %T_structure*
    %t13 = getelementptr inbounds %T_structure, %T_structure* %t11, i32 0, i32 20
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t8 = icmp eq i32 %t14, 4
    br i1 %t8, label %L_AND_eval_2, label %L_AND_shortcut_2
L_AND_eval_2:
    %t16 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t15 = load i8*, i8** %t16
    %t17 = bitcast i8* %t15 to %T_structure*
    %t19 = getelementptr inbounds %T_structure, %T_structure* %t17, i32 0, i32 16
    %t18 = bitcast i8* %t19 to i1*
    %t20 = load i1, i1* %t18
    br label %L_AND_shortcut_2
L_AND_shortcut_2:
    %t7 = phi [%t20, %L_AND_eval_2], [false, %L_AND_expr_2]
    br i1 %t7, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2098
    %t23 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t22 = load i8*, i8** %t23
    %t24 = bitcast i8* %t22 to %T_structure*
    %t26 = getelementptr inbounds %T_structure, %T_structure* %t24, i32 0, i32 32
    %t25 = bitcast i8* %t26 to i8**
    %t27 = load i8*, i8** %t25
    %t21 = icmp eq i32 %t27, null
    br i1 %t21, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2098
    %t28 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 3
    store i32 1, i32* %t28
    br label %L_endif_4
L_else_4:
    ; line 2099
    %t30 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t29 = load i8*, i8** %t30
    %t31 = bitcast i8* %t29 to %T_structure*
    %t33 = getelementptr inbounds %T_structure, %T_structure* %t31, i32 0, i32 32
    %t32 = bitcast i8* %t33 to i8**
    %t34 = load i8*, i8** %t32
    %t35 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 3
    %t36 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 2
    call void @P_getbounds(i8* %t34, i32* %t35, i32* %t36)
    br label %L_endif_4
L_endif_4:
    ; line 2100
    br label %L_AND_expr_5
L_AND_expr_5:
    %t38 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 4
    %t39 = load %Frame_block*, %Frame_block** %t38
    %t41 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t40 = load i8*, i8** %t41
    %t42 = bitcast i8* %t40 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 24
    %t43 = bitcast i8* %t44 to i8**
    %t45 = load i8*, i8** %t43
    %t46 = load i8*, i8** @charptr
    %t47 = call i1 @F_block_comptypes(%Frame_block* %t39, i8* %t45, i8* %t46)
    br i1 %t47, label %L_AND_eval_5, label %L_AND_shortcut_5
L_AND_eval_5:
    %t50 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 3
    %t49 = load i32, i32* %t50
    %t48 = icmp eq i32 %t49, 1
    br label %L_AND_shortcut_5
L_AND_shortcut_5:
    %t37 = phi [%t48, %L_AND_eval_5], [false, %L_AND_expr_5]
    br i1 %t37, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2100
    %t51 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    store i1 1, i1* %t51
    br label %L_endif_6
L_endif_6:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t52 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    %t53 = load i1, i1* %t52
    ret i1 %t53
}


; line 2105
;================================================================================
; scope: block_resolvep (level : 3)

; activation record
%Frame_block_resolvep = type
{
    ; variables
    i1,    ; 0: fe
    %T_idstr,    ; 1: ids
    i8*,    ; 2: lcp1
    i8*,    ; 3: lcp2
    i1,    ; 4: mm

    ; slink
    %Frame_block*    ; 5
};

; procedure body
define void @P_block_resolvep(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_resolvep, align 8
    %t1 = getelementptr inbounds %Frame_block_resolvep, %Frame_block_resolvep* %.frame, i32 0, i32 5
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 2108
    %t2 = getelementptr inbounds %Frame_block_resolvep, %Frame_block_resolvep* %.frame, i32 0, i32 1
    %t3 = load %T_idstr, %T_idstr* @id
    store %T_idstr %t3, %T_idstr* %t2
    ; line 2109
    %t4 = getelementptr inbounds %Frame_block_resolvep, %Frame_block_resolvep* %.frame, i32 0, i32 0
    store i1 1, i1* %t4
    ; line 2110
    ; line 2124
    %t6 = getelementptr inbounds %Frame_block_resolvep, %Frame_block_resolvep* %.frame, i32 0, i32 1
    %t5 = load %T_idstr, %T_idstr* %t6
    store %T_idstr %t5, %T_idstr* @id

    ; epilogue
    ret void
}


; line 2127
;================================================================================
; scope: block_typ (level : 3)

; activation record
%Frame_block_typ = type
{
    ; parameters
    i32*,    ; 0: fsize
    i8**,    ; 1: fsp
    %T_setofsys,    ; 2: fsys

    ; variables
    i32,    ; 3: displ
    i1,    ; 4: ispacked
    i8*,    ; 5: lcp
    i32,    ; 6: lmax
    i32,    ; 7: lmin
    i32,    ; 8: lsize
    i8*,    ; 9: lsp
    i8*,    ; 10: lsp1
    i8*,    ; 11: lsp2
    i32,    ; 12: oldtop
    i1,    ; 13: test

    ; slink
    %Frame_block*    ; 14
};

; procedure body
define void @P_block_typ(%Frame_block* %.slink, %T_setofsys %fsys, i8** %fsp, i32* %fsize)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ, align 8
    %t1 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    store i32* %fsize, i32** %t2
    %t3 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    store i8** %fsp, i8*** %t3
    %t4 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    store %T_setofsys %fsys, %T_setofsys* %t4

    ; body
    ; line 2362
    %t6 = icmp eq i1 0, true
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2363
    call void @P_error(i32 10)
    ; line 2363
    %t7 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    %t8 = load %Frame_block*, %Frame_block** %t7
    call void @P_block_skip(%Frame_block* %t8, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 2364
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2366
    br i1 true, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2366
    %t13 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t12 = load %T_setofsys, %T_setofsys* %t13
    %t14 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t15 = load i8**, i8*** %t14
    %t16 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t17 = load i32*, i32** %t16
    call void @P_block_typ_simpletype(%Frame_block_typ* %.frame, %T_setofsys %t12, i8** %t15, i32* %t17)
    br label %L_endif_3
L_else_3:
    ; line 2368
    %t19 = load i32, i32* @sy
    %t18 = icmp eq i32 %t19, 15
    br i1 %t18, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2369
    ; line 2369
    %t21 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t20 = load i8*, i8** %t21
    call void @P_pshstc(i8* %t20)
    ; line 2369
    %t22 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t23 = load i8**, i8*** %t22
    %t25 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t24 = load i8*, i8** %t25
    store i8* %t24, i8** %t23
    ; line 2371
    %t27 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t26 = load i8*, i8** %t27
    %t28 = bitcast i8* %t26 to %T_structure*
    %t30 = getelementptr inbounds %T_structure, %T_structure* %t28, i32 0, i32 24
    %t29 = bitcast i8* %t30 to i8**
    store i8* null, i8** %t29
    ; line 2371
    %t32 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t31 = load i8*, i8** %t32
    %t33 = bitcast i8* %t31 to %T_structure*
    %t35 = getelementptr inbounds %T_structure, %T_structure* %t33, i32 0, i32 12
    %t34 = bitcast i8* %t35 to i32*
    store i32 4, i32* %t34
    ; line 2371
    %t37 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t36 = load i8*, i8** %t37
    %t38 = bitcast i8* %t36 to %T_structure*
    %t40 = getelementptr inbounds %T_structure, %T_structure* %t38, i32 0, i32 20
    %t39 = bitcast i8* %t40 to i32*
    store i32 2, i32* %t39
    ; line 2372
    call void @P_insymbol()
    ; line 2373
    %t42 = load i32, i32* @sy
    %t41 = icmp eq i32 %t42, 0
    br i1 %t41, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2375
    ; line 2375
    %t44 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t43 = load i8*, i8** %t44
    call void @P_ininam(i8* %t43)
    ; line 2377
    %t46 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t45 = load i8*, i8** %t46
    %t47 = bitcast i8* %t45 to %T_identifier*
    %t49 = getelementptr inbounds %T_identifier, %T_identifier* %t47, i32 0, i32 0
    %t48 = bitcast i8* %t49 to i8**
    call void @P_strassvf(i8** %t48, %T_idstr* @id)
    ; line 2377
    %t51 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t50 = load i8*, i8** %t51
    %t52 = bitcast i8* %t50 to %T_identifier*
    %t54 = getelementptr inbounds %T_identifier, %T_identifier* %t52, i32 0, i32 24
    %t53 = bitcast i8* %t54 to i8**
    %t56 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t55 = load i8*, i8** %t56
    store i8* %t55, i8** %t53
    ; line 2378
    %t58 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t57 = load i8*, i8** %t58
    %t59 = bitcast i8* %t57 to %T_identifier*
    %t61 = getelementptr inbounds %T_identifier, %T_identifier* %t59, i32 0, i32 32
    %t60 = bitcast i8* %t61 to i8**
    %t62 = load i8*, i8** @fwptr
    store i8* %t62, i8** %t60
    ; line 2378
    %t64 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t63 = load i8*, i8** %t64
    %t65 = bitcast i8* %t63 to %T_identifier*
    %t67 = getelementptr inbounds %T_identifier, %T_identifier* %t65, i32 0, i32 44
    %t66 = bitcast i8* %t67 to i32*
    store i32 0, i32* %t66
    ; line 2380
    %t69 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t68 = load i8*, i8** %t69
    store i8* %t68, i8** @fwptr
    ; line 2381
    call void @P_insymbol()
    ; nop
    br label %L_endif_5
L_else_5:
    ; line 2383
    call void @P_error(i32 2)
    br label %L_endif_5
L_endif_5:
    ; nop
    br label %L_endif_4
L_else_4:
    ; line 2387
    %t70 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    store i1 0, i1* %t70
    ; line 2388
    %t72 = load i32, i32* @sy
    %t71 = icmp eq i32 %t72, 27
    br i1 %t71, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2389
    call void @P_insymbol()
    ; line 2389
    %t73 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    store i1 1, i1* %t73
    ; line 2390
    %t75 = icmp eq i1 0, true
    br i1 %t75, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2392
    call void @P_error(i32 10)
    ; line 2392
    %t76 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    %t77 = load %Frame_block*, %Frame_block** %t76
    call void @P_block_skip(%Frame_block* %t77, %T_setofsys true)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 2395
    %t80 = load i32, i32* @sy
    %t79 = icmp eq i32 %t80, 28
    br i1 %t79, label %L_then_8, label %L_else_8
L_then_8:
    ; line 2396
    call void @P_insymbol()
    ; line 2397
    %t82 = load i32, i32* @sy
    %t81 = icmp eq i32 %t82, 10
    br i1 %t81, label %L_then_9, label %L_else_9
L_then_9:
    ; line 2397
    call void @P_insymbol()
    br label %L_endif_9
L_else_9:
    ; line 2397
    call void @P_error(i32 11)
    br label %L_endif_9
L_endif_9:
    ; line 2398
    %t83 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    store i8* null, i8** %t83
    ; line 2399
    ; line 2420
    %t85 = load i32, i32* @sy
    %t84 = icmp eq i32 %t85, 11
    br i1 %t84, label %L_then_10, label %L_else_10
L_then_10:
    ; line 2420
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 2420
    call void @P_error(i32 12)
    br label %L_endif_10
L_endif_10:
    ; line 2421
    %t87 = load i32, i32* @sy
    %t86 = icmp eq i32 %t87, 42
    br i1 %t86, label %L_then_11, label %L_else_11
L_then_11:
    ; line 2421
    call void @P_insymbol()
    br label %L_endif_11
L_else_11:
    ; line 2421
    call void @P_error(i32 8)
    br label %L_endif_11
L_endif_11:
    ; line 2422
    %t88 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    %t89 = load %Frame_block*, %Frame_block** %t88
    %t91 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t90 = load %T_setofsys, %T_setofsys* %t91
    %t92 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t93 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    call void @P_block_typ(%Frame_block* %t89, %T_setofsys %t90, i8** %t92, i32* %t93)
    ; line 2423
    br label %L_endif_8
L_else_8:
    ; line 2437
    %t95 = load i32, i32* @sy
    %t94 = icmp eq i32 %t95, 29
    br i1 %t94, label %L_then_12, label %L_else_12
L_then_12:
    ; line 2438
    call void @P_insymbol()
    ; line 2439
    %t96 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t97 = load i32, i32* @top
    store i32 %t97, i32* %t96
    ; line 2440
    %t99 = load i32, i32* @top
    %t98 = icmp slt i32 %t99, 300
    br i1 %t98, label %L_then_13, label %L_else_13
L_then_13:
    ; line 2441
    %t101 = load i32, i32* @top
    %t100 = add i32 %t101, 1
    store i32 %t100, i32* @top
    ; line 2443
    %t102 = load i32, i32* @top
    %t103 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t102
    %t105 = getelementptr inbounds %T_record_9, %T_record_9* %t103, i32 0, i32 0
    %t104 = bitcast i8* %t105 to i8**
    store i8* null, i8** %t104
    ; line 2444
    %t106 = load i32, i32* @top
    %t107 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t106
    %t109 = getelementptr inbounds %T_record_9, %T_record_9* %t107, i32 0, i32 8
    %t108 = bitcast i8* %t109 to i8**
    store i8* null, i8** %t108
    ; line 2445
    %t110 = load i32, i32* @top
    %t111 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t110
    %t113 = getelementptr inbounds %T_record_9, %T_record_9* %t111, i32 0, i32 16
    %t112 = bitcast i8* %t113 to i8**
    store i8* null, i8** %t112
    ; line 2446
    %t114 = load i32, i32* @top
    %t115 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t114
    %t117 = getelementptr inbounds %T_record_9, %T_record_9* %t115, i32 0, i32 24
    %t116 = bitcast i8* %t117 to i8**
    store i8* null, i8** %t116
    ; line 2447
    %t118 = load i32, i32* @top
    %t119 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t118
    %t121 = getelementptr inbounds %T_record_9, %T_record_9* %t119, i32 0, i32 32
    %t120 = bitcast i8* %t121 to i32*
    store i32 3, i32* %t120
    br label %L_endif_13
L_else_13:
    ; line 2450
    call void @P_error(i32 250)
    br label %L_endif_13
L_endif_13:
    ; line 2451
    %t122 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    store i32 0, i32* %t122
    ; line 2452
    %t124 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    call void @P_block_typ_fieldlist(%Frame_block_typ* %.frame, %T_setofsys %.dummy_set, i8** %t124)
    ; line 2453
    ; line 2455
    %t126 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t125 = load i8*, i8** %t126
    %t127 = bitcast i8* %t125 to %T_structure*
    %t129 = getelementptr inbounds %T_structure, %T_structure* %t127, i32 0, i32 24
    %t128 = bitcast i8* %t129 to i8**
    %t130 = load i32, i32* @top
    %t131 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t130
    %t133 = getelementptr inbounds %T_record_9, %T_record_9* %t131, i32 0, i32 0
    %t132 = bitcast i8* %t133 to i8**
    %t134 = load i8*, i8** %t132
    store i8* %t134, i8** %t128
    ; line 2456
    %t135 = load i32, i32* @top
    %t136 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t135
    %t138 = getelementptr inbounds %T_record_9, %T_record_9* %t136, i32 0, i32 0
    %t137 = bitcast i8* %t138 to i8**
    store i8* null, i8** %t137
    ; line 2457
    %t140 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t139 = load i8*, i8** %t140
    %t141 = bitcast i8* %t139 to %T_structure*
    %t143 = getelementptr inbounds %T_structure, %T_structure* %t141, i32 0, i32 32
    %t142 = bitcast i8* %t143 to i8**
    %t145 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t144 = load i8*, i8** %t145
    store i8* %t144, i8** %t142
    ; line 2457
    %t147 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t146 = load i8*, i8** %t147
    %t148 = bitcast i8* %t146 to %T_structure*
    %t150 = getelementptr inbounds %T_structure, %T_structure* %t148, i32 0, i32 12
    %t149 = bitcast i8* %t150 to i32*
    %t152 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t151 = load i32, i32* %t152
    store i32 %t151, i32* %t149
    ; line 2457
    %t154 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t153 = load i8*, i8** %t154
    %t155 = bitcast i8* %t153 to %T_structure*
    %t157 = getelementptr inbounds %T_structure, %T_structure* %t155, i32 0, i32 20
    %t156 = bitcast i8* %t157 to i32*
    store i32 5, i32* %t156
    ; line 2458
    %t159 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t158 = load i8*, i8** %t159
    %t160 = bitcast i8* %t158 to %T_structure*
    %t162 = getelementptr inbounds %T_structure, %T_structure* %t160, i32 0, i32 16
    %t161 = bitcast i8* %t162 to i1*
    %t164 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t163 = load i1, i1* %t164
    store i1 %t163, i1* %t161
    ; line 2459
    %t166 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t165 = load i8*, i8** %t166
    %t167 = bitcast i8* %t165 to %T_structure*
    %t169 = getelementptr inbounds %T_structure, %T_structure* %t167, i32 0, i32 40
    %t168 = bitcast i8* %t169 to i8**
    %t170 = load i32, i32* @top
    %t171 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t170
    %t173 = getelementptr inbounds %T_record_9, %T_record_9* %t171, i32 0, i32 24
    %t172 = bitcast i8* %t173 to i8**
    %t174 = load i8*, i8** %t172
    store i8* %t174, i8** %t168
    ; line 2460
    %t175 = load i32, i32* @top
    %t176 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t175
    %t178 = getelementptr inbounds %T_record_9, %T_record_9* %t176, i32 0, i32 24
    %t177 = bitcast i8* %t178 to i8**
    store i8* null, i8** %t177
    ; line 2462
    %t180 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t179 = load i32, i32* %t180
    call void @P_putdsps(i32 %t179)
    ; line 2462
    %t182 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t181 = load i32, i32* %t182
    store i32 %t181, i32* @top
    ; line 2464
    %t184 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t183 = load i8*, i8** %t184
    call void @P_pshstc(i8* %t183)
    ; line 2465
    %t186 = load i32, i32* @sy
    %t185 = icmp eq i32 %t186, 39
    br i1 %t185, label %L_then_14, label %L_else_14
L_then_14:
    ; line 2465
    call void @P_insymbol()
    br label %L_endif_14
L_else_14:
    ; line 2465
    call void @P_error(i32 13)
    br label %L_endif_14
L_endif_14:
    br label %L_endif_12
L_else_12:
    ; line 2468
    %t188 = load i32, i32* @sy
    %t187 = icmp eq i32 %t188, 26
    br i1 %t187, label %L_then_15, label %L_else_15
L_then_15:
    ; line 2469
    call void @P_insymbol()
    ; line 2470
    %t190 = load i32, i32* @sy
    %t189 = icmp eq i32 %t190, 42
    br i1 %t189, label %L_then_16, label %L_else_16
L_then_16:
    ; line 2470
    call void @P_insymbol()
    br label %L_endif_16
L_else_16:
    ; line 2470
    call void @P_error(i32 8)
    br label %L_endif_16
L_endif_16:
    ; line 2471
    %t192 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t191 = load %T_setofsys, %T_setofsys* %t192
    %t193 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t194 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    call void @P_block_typ_simpletype(%Frame_block_typ* %.frame, %T_setofsys %t191, i8** %t193, i32* %t194)
    ; line 2472
    %t197 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t196 = load i8*, i8** %t197
    %t195 = icmp ne i32 %t196, null
    br i1 %t195, label %L_then_17, label %L_endif_17
L_then_17:
    ; line 2473
    %t200 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t199 = load i8*, i8** %t200
    %t201 = bitcast i8* %t199 to %T_structure*
    %t203 = getelementptr inbounds %T_structure, %T_structure* %t201, i32 0, i32 20
    %t202 = bitcast i8* %t203 to i32*
    %t204 = load i32, i32* %t202
    %t198 = icmp sgt i32 %t204, 1
    br i1 %t198, label %L_then_18, label %L_else_18
L_then_18:
    ; line 2474
    call void @P_error(i32 115)
    ; line 2474
    %t205 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    store i8* null, i8** %t205
    br label %L_endif_18
L_else_18:
    ; line 2476
    %t208 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t207 = load i8*, i8** %t208
    %t209 = load i8*, i8** @realptr
    %t206 = icmp eq i32 %t207, %t209
    br i1 %t206, label %L_then_19, label %L_else_19
L_then_19:
    ; line 2477
    call void @P_error(i32 114)
    ; line 2477
    %t210 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    store i8* null, i8** %t210
    br label %L_endif_19
L_else_19:
    ; line 2478
    %t213 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t212 = load i8*, i8** %t213
    %t214 = load i8*, i8** @intptr
    %t211 = icmp eq i32 %t212, %t214
    br i1 %t211, label %L_then_20, label %L_else_20
L_then_20:
    ; line 2479
    call void @P_error(i32 169)
    ; line 2479
    %t215 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    store i8* null, i8** %t215
    br label %L_endif_20
L_else_20:
    ; line 2481
    %t217 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t216 = load i8*, i8** %t217
    %t218 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    %t219 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 6
    call void @P_getbounds(i8* %t216, i32* %t218, i32* %t219)
    ; line 2482
    br label %L_OR_expr_21
L_OR_expr_21:
    %t223 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    %t222 = load i32, i32* %t223
    %t221 = icmp slt i32 %t222, 0
    br i1 %t221, label %L_OR_shortcut_21, label %L_OR_eval_21
L_OR_eval_21:
    %t226 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 6
    %t225 = load i32, i32* %t226
    %t224 = icmp sgt i32 %t225, 255
    br label %L_OR_shortcut_21
L_OR_shortcut_21:
    %t220 = phi [%t224, %L_OR_eval_21], [true, %L_OR_expr_21]
    br i1 %t220, label %L_then_22, label %L_endif_22
L_then_22:
    ; line 2483
    call void @P_error(i32 169)
    br label %L_endif_22
L_endif_22:
    ; nop
    br label %L_endif_20
L_endif_20:
    br label %L_endif_19
L_endif_19:
    br label %L_endif_18
L_endif_18:
    br label %L_endif_17
L_endif_17:
    ; line 2485
    ; line 2485
    %t228 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t227 = load i8*, i8** %t228
    call void @P_pshstc(i8* %t227)
    ; line 2487
    %t230 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t229 = load i8*, i8** %t230
    %t231 = bitcast i8* %t229 to %T_structure*
    %t233 = getelementptr inbounds %T_structure, %T_structure* %t231, i32 0, i32 24
    %t232 = bitcast i8* %t233 to i8**
    %t235 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t234 = load i8*, i8** %t235
    store i8* %t234, i8** %t232
    ; line 2487
    %t237 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t236 = load i8*, i8** %t237
    %t238 = bitcast i8* %t236 to %T_structure*
    %t240 = getelementptr inbounds %T_structure, %T_structure* %t238, i32 0, i32 12
    %t239 = bitcast i8* %t240 to i32*
    store i32 32, i32* %t239
    ; line 2487
    %t242 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t241 = load i8*, i8** %t242
    %t243 = bitcast i8* %t241 to %T_structure*
    %t245 = getelementptr inbounds %T_structure, %T_structure* %t243, i32 0, i32 20
    %t244 = bitcast i8* %t245 to i32*
    store i32 3, i32* %t244
    ; line 2488
    %t247 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t246 = load i8*, i8** %t247
    %t248 = bitcast i8* %t246 to %T_structure*
    %t250 = getelementptr inbounds %T_structure, %T_structure* %t248, i32 0, i32 16
    %t249 = bitcast i8* %t250 to i1*
    %t252 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t251 = load i1, i1* %t252
    store i1 %t251, i1* %t249
    ; line 2488
    %t254 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t253 = load i8*, i8** %t254
    %t255 = bitcast i8* %t253 to %T_structure*
    %t257 = getelementptr inbounds %T_structure, %T_structure* %t255, i32 0, i32 32
    %t256 = bitcast i8* %t257 to i1*
    store i1 1, i1* %t256
    ; nop
    br label %L_endif_15
L_else_15:
    ; line 2491
    %t259 = load i32, i32* @sy
    %t258 = icmp eq i32 %t259, 30
    br i1 %t258, label %L_then_23, label %L_endif_23
L_then_23:
    ; line 2492
    call void @P_insymbol()
    ; line 2493
    %t261 = load i32, i32* @sy
    %t260 = icmp eq i32 %t261, 42
    br i1 %t260, label %L_then_24, label %L_else_24
L_then_24:
    ; line 2493
    call void @P_insymbol()
    br label %L_endif_24
L_else_24:
    ; line 2493
    call void @P_error(i32 8)
    br label %L_endif_24
L_endif_24:
    ; line 2494
    %t262 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    %t263 = load %Frame_block*, %Frame_block** %t262
    %t265 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t264 = load %T_setofsys, %T_setofsys* %t265
    %t266 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t267 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    call void @P_block_typ(%Frame_block* %t263, %T_setofsys %t264, i8** %t266, i32* %t267)
    ; line 2495
    %t268 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    %t269 = load %Frame_block*, %Frame_block** %t268
    %t271 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t270 = load i8*, i8** %t271
    %t272 = call i1 @F_block_filecomponent(%Frame_block* %t269, i8* %t270)
    br i1 %t272, label %L_then_25, label %L_endif_25
L_then_25:
    ; line 2495
    call void @P_error(i32 190)
    br label %L_endif_25
L_endif_25:
    ; line 2496
    ; line 2496
    %t274 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t273 = load i8*, i8** %t274
    call void @P_pshstc(i8* %t273)
    ; line 2498
    %t276 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t275 = load i8*, i8** %t276
    %t277 = bitcast i8* %t275 to %T_structure*
    %t279 = getelementptr inbounds %T_structure, %T_structure* %t277, i32 0, i32 24
    %t278 = bitcast i8* %t279 to i8**
    %t281 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t280 = load i8*, i8** %t281
    store i8* %t280, i8** %t278
    ; line 2498
    %t283 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t282 = load i8*, i8** %t283
    %t284 = bitcast i8* %t282 to %T_structure*
    %t286 = getelementptr inbounds %T_structure, %T_structure* %t284, i32 0, i32 12
    %t285 = bitcast i8* %t286 to i32*
    %t289 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t288 = load i32, i32* %t289
    %t287 = add i32 1, %t288
    store i32 %t287, i32* %t285
    ; line 2499
    %t291 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t290 = load i8*, i8** %t291
    %t292 = bitcast i8* %t290 to %T_structure*
    %t294 = getelementptr inbounds %T_structure, %T_structure* %t292, i32 0, i32 20
    %t293 = bitcast i8* %t294 to i32*
    store i32 6, i32* %t293
    ; line 2499
    %t296 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t295 = load i8*, i8** %t296
    %t297 = bitcast i8* %t295 to %T_structure*
    %t299 = getelementptr inbounds %T_structure, %T_structure* %t297, i32 0, i32 16
    %t298 = bitcast i8* %t299 to i1*
    %t301 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t300 = load i1, i1* %t301
    store i1 %t300, i1* %t298
    br label %L_endif_23
L_endif_23:
    br label %L_endif_15
L_endif_15:
    br label %L_endif_12
L_endif_12:
    br label %L_endif_8
L_endif_8:
    ; line 2502
    %t302 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t303 = load i8**, i8*** %t302
    %t305 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t304 = load i8*, i8** %t305
    store i8* %t304, i8** %t303
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 2504
    %t307 = icmp eq i1 0, true
    br i1 %t307, label %L_then_26, label %L_endif_26
L_then_26:
    ; line 2505
    call void @P_error(i32 6)
    ; line 2505
    %t308 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 14
    %t309 = load %Frame_block*, %Frame_block** %t308
    %t311 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t310 = load %T_setofsys, %T_setofsys* %t311
    call void @P_block_skip(%Frame_block* %t309, %T_setofsys %t310)
    br label %L_endif_26
L_endif_26:
    br label %L_endif_2
L_else_2:
    ; line 2507
    %t312 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t313 = load i8**, i8*** %t312
    store i8* null, i8** %t313
    br label %L_endif_2
L_endif_2:
    ; line 2508
    %t316 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t317 = load i8**, i8*** %t316
    %t315 = load i8*, i8** %t317
    %t314 = icmp eq i32 %t315, null
    br i1 %t314, label %L_then_27, label %L_else_27
L_then_27:
    ; line 2508
    %t318 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t319 = load i32*, i32** %t318
    store i32 1, i32* %t319
    br label %L_endif_27
L_else_27:
    ; line 2508
    %t320 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t321 = load i32*, i32** %t320
    %t323 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t324 = load i8**, i8*** %t323
    %t322 = load i8*, i8** %t324
    %t325 = bitcast i8* %t322 to %T_structure*
    %t327 = getelementptr inbounds %T_structure, %T_structure* %t325, i32 0, i32 12
    %t326 = bitcast i8* %t327 to i32*
    %t328 = load i32, i32* %t326
    store i32 %t328, i32* %t321
    br label %L_endif_27
L_endif_27:

    ; epilogue
    ret void
}


; line 2132
;================================================================================
; scope: block_typ_simpletype (level : 4)

; activation record
%Frame_block_typ_simpletype = type
{
    ; parameters
    i32*,    ; 0: fsize
    i8**,    ; 1: fsp
    %T_setofsys,    ; 2: fsys

    ; variables
    i32,    ; 3: lcnt
    i8*,    ; 4: lcp
    i8*,    ; 5: lcp1
    i8*,    ; 6: lsp
    i8*,    ; 7: lsp1
    %T_valu,    ; 8: lvalu
    i32,    ; 9: ttop

    ; slink
    %Frame_block_typ*    ; 10
};

; procedure body
define void @P_block_typ_simpletype(%Frame_block_typ* %.slink, %T_setofsys %fsys, i8** %fsp, i32* %fsize)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ_simpletype, align 8
    %t1 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    store %Frame_block_typ* %.slink, %Frame_block_typ** %t1
    %t2 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 0
    store i32* %fsize, i32** %t2
    %t3 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 1
    store i8** %fsp, i8*** %t3
    %t4 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    store %T_setofsys %fsys, %T_setofsys* %t4

    ; body
    ; line 2135
    %t5 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 0
    %t6 = load i32*, i32** %t5
    store i32 1, i32* %t6
    ; line 2136
    %t8 = icmp eq i1 0, true
    br i1 %t8, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2137
    call void @P_error(i32 1)
    ; line 2137
    %t9 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t10 = load %Frame_block_typ*, %Frame_block_typ** %t9
    %t11 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t10, i32 0, i32 14
    %t12 = load %Frame_block*, %Frame_block** %t11
    call void @P_block_skip(%Frame_block* %t12, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 2138
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2140
    %t16 = load i32, i32* @sy
    %t15 = icmp eq i32 %t16, 8
    br i1 %t15, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2141
    %t17 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 9
    %t18 = load i32, i32* @top
    store i32 %t18, i32* %t17
    ; line 2142
    ; line 2143
    ; line 2143
    %t20 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t19 = load i8*, i8** %t20
    call void @P_pshstc(i8* %t19)
    ; line 2145
    %t22 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t21 = load i8*, i8** %t22
    %t23 = bitcast i8* %t21 to %T_structure*
    %t25 = getelementptr inbounds %T_structure, %T_structure* %t23, i32 0, i32 12
    %t24 = bitcast i8* %t25 to i32*
    store i32 4, i32* %t24
    ; line 2145
    %t27 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t26 = load i8*, i8** %t27
    %t28 = bitcast i8* %t26 to %T_structure*
    %t30 = getelementptr inbounds %T_structure, %T_structure* %t28, i32 0, i32 20
    %t29 = bitcast i8* %t30 to i32*
    store i32 0, i32* %t29
    ; line 2146
    %t32 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t31 = load i8*, i8** %t32
    %t33 = bitcast i8* %t31 to %T_structure*
    %t35 = getelementptr inbounds %T_structure, %T_structure* %t33, i32 0, i32 24
    %t34 = bitcast i8* %t35 to i32*
    store i32 1, i32* %t34
    ; line 2148
    %t36 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 5
    store i8* null, i8** %t36
    ; line 2148
    %t37 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 3
    store i32 0, i32* %t37
    ; line 2149
    ; line 2164
    %t39 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t38 = load i8*, i8** %t39
    %t40 = bitcast i8* %t38 to %T_structure*
    %t42 = getelementptr inbounds %T_structure, %T_structure* %t40, i32 0, i32 32
    %t41 = bitcast i8* %t42 to i8**
    %t44 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 5
    %t43 = load i8*, i8** %t44
    store i8* %t43, i8** %t41
    ; line 2164
    %t46 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 9
    %t45 = load i32, i32* %t46
    store i32 %t45, i32* @top
    ; line 2165
    %t48 = load i32, i32* @sy
    %t47 = icmp eq i32 %t48, 9
    br i1 %t47, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2165
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 2165
    call void @P_error(i32 4)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 2169
    %t50 = load i32, i32* @sy
    %t49 = icmp eq i32 %t50, 0
    br i1 %t49, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2170
    %t51 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t51)
    ; line 2171
    call void @P_insymbol()
    ; line 2172
    %t54 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t53 = load i8*, i8** %t54
    %t55 = bitcast i8* %t53 to %T_identifier*
    %t57 = getelementptr inbounds %T_identifier, %T_identifier* %t55, i32 0, i32 44
    %t56 = bitcast i8* %t57 to i32*
    %t58 = load i32, i32* %t56
    %t52 = icmp eq i32 %t58, 1
    br i1 %t52, label %L_then_6, label %L_else_6
L_then_6:
    ; line 2173
    ; line 2173
    %t60 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t59 = load i8*, i8** %t60
    call void @P_pshstc(i8* %t59)
    ; line 2175
    %t62 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t61 = load i8*, i8** %t62
    %t63 = bitcast i8* %t61 to %T_structure*
    %t65 = getelementptr inbounds %T_structure, %T_structure* %t63, i32 0, i32 24
    %t64 = bitcast i8* %t65 to i8**
    %t67 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t66 = load i8*, i8** %t67
    %t68 = bitcast i8* %t66 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 24
    %t69 = bitcast i8* %t70 to i8**
    %t71 = load i8*, i8** %t69
    store i8* %t71, i8** %t64
    ; line 2175
    %t73 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t72 = load i8*, i8** %t73
    %t74 = bitcast i8* %t72 to %T_structure*
    %t76 = getelementptr inbounds %T_structure, %T_structure* %t74, i32 0, i32 20
    %t75 = bitcast i8* %t76 to i32*
    store i32 1, i32* %t75
    ; line 2176
    %t77 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t78 = load %Frame_block_typ*, %Frame_block_typ** %t77
    %t79 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t78, i32 0, i32 14
    %t80 = load %Frame_block*, %Frame_block** %t79
    %t82 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t81 = load i8*, i8** %t82
    %t83 = bitcast i8* %t81 to %T_structure*
    %t85 = getelementptr inbounds %T_structure, %T_structure* %t83, i32 0, i32 24
    %t84 = bitcast i8* %t85 to i8**
    %t86 = load i8*, i8** %t84
    %t87 = call i1 @F_block_string(%Frame_block* %t80, i8* %t86)
    br i1 %t87, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2177
    call void @P_error(i32 148)
    ; line 2177
    %t89 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t88 = load i8*, i8** %t89
    %t90 = bitcast i8* %t88 to %T_structure*
    %t92 = getelementptr inbounds %T_structure, %T_structure* %t90, i32 0, i32 24
    %t91 = bitcast i8* %t92 to i8**
    store i8* null, i8** %t91
    br label %L_endif_7
L_endif_7:
    ; line 2178
    %t94 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t93 = load i8*, i8** %t94
    %t95 = bitcast i8* %t93 to %T_structure*
    %t97 = getelementptr inbounds %T_structure, %T_structure* %t95, i32 0, i32 32
    %t96 = bitcast i8* %t97 to %T_valu*
    %t99 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t98 = load i8*, i8** %t99
    %t100 = bitcast i8* %t98 to %T_identifier*
    %t102 = getelementptr inbounds %T_identifier, %T_identifier* %t100, i32 0, i32 48
    %t101 = bitcast i8* %t102 to %T_valu*
    %t103 = load %T_valu, %T_valu* %t101
    store %T_valu %t103, %T_valu* %t96
    ; line 2178
    %t105 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t104 = load i8*, i8** %t105
    %t106 = bitcast i8* %t104 to %T_structure*
    %t108 = getelementptr inbounds %T_structure, %T_structure* %t106, i32 0, i32 12
    %t107 = bitcast i8* %t108 to i32*
    store i32 4, i32* %t107
    ; line 2180
    %t110 = load i32, i32* @sy
    %t109 = icmp eq i32 %t110, 18
    br i1 %t109, label %L_then_8, label %L_else_8
L_then_8:
    ; line 2180
    call void @P_insymbol()
    br label %L_endif_8
L_else_8:
    ; line 2180
    call void @P_error(i32 5)
    br label %L_endif_8
L_endif_8:
    ; line 2181
    %t111 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t112 = load %Frame_block_typ*, %Frame_block_typ** %t111
    %t113 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t112, i32 0, i32 14
    %t114 = load %Frame_block*, %Frame_block** %t113
    %t116 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    %t115 = load %T_setofsys, %T_setofsys* %t116
    %t117 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t118 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    call void @P_block_constant(%Frame_block* %t114, %T_setofsys %t115, i8** %t117, %T_valu* %t118)
    ; line 2182
    %t120 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t119 = load i8*, i8** %t120
    %t121 = bitcast i8* %t119 to %T_structure*
    %t123 = getelementptr inbounds %T_structure, %T_structure* %t121, i32 0, i32 56
    %t122 = bitcast i8* %t123 to %T_valu*
    %t125 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    %t124 = load %T_valu, %T_valu* %t125
    store %T_valu %t124, %T_valu* %t122
    ; line 2183
    %t128 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t127 = load i8*, i8** %t128
    %t129 = bitcast i8* %t127 to %T_structure*
    %t131 = getelementptr inbounds %T_structure, %T_structure* %t129, i32 0, i32 24
    %t130 = bitcast i8* %t131 to i8**
    %t132 = load i8*, i8** %t130
    %t134 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t133 = load i8*, i8** %t134
    %t126 = icmp ne i32 %t132, %t133
    br i1 %t126, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2183
    call void @P_error(i32 107)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_6
L_else_6:
    ; line 2186
    %t135 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t137 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t136 = load i8*, i8** %t137
    %t138 = bitcast i8* %t136 to %T_identifier*
    %t140 = getelementptr inbounds %T_identifier, %T_identifier* %t138, i32 0, i32 24
    %t139 = bitcast i8* %t140 to i8**
    %t141 = load i8*, i8** %t139
    store i8* %t141, i8** %t135
    ; line 2187
    %t144 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t143 = load i8*, i8** %t144
    %t142 = icmp ne i32 %t143, null
    br i1 %t142, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 2187
    %t145 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 0
    %t146 = load i32*, i32** %t145
    %t148 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t147 = load i8*, i8** %t148
    %t149 = bitcast i8* %t147 to %T_structure*
    %t151 = getelementptr inbounds %T_structure, %T_structure* %t149, i32 0, i32 12
    %t150 = bitcast i8* %t151 to i32*
    %t152 = load i32, i32* %t150
    store i32 %t152, i32* %t146
    br label %L_endif_10
L_endif_10:
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 2191
    ; line 2191
    %t154 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t153 = load i8*, i8** %t154
    call void @P_pshstc(i8* %t153)
    ; line 2192
    %t156 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t155 = load i8*, i8** %t156
    %t157 = bitcast i8* %t155 to %T_structure*
    %t159 = getelementptr inbounds %T_structure, %T_structure* %t157, i32 0, i32 20
    %t158 = bitcast i8* %t159 to i32*
    store i32 1, i32* %t158
    ; line 2193
    %t160 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t161 = load %Frame_block_typ*, %Frame_block_typ** %t160
    %t162 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t161, i32 0, i32 14
    %t163 = load %Frame_block*, %Frame_block** %t162
    %t165 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t166 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    call void @P_block_constant(%Frame_block* %t163, %T_setofsys %.dummy_set, i8** %t165, %T_valu* %t166)
    ; line 2194
    %t167 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t168 = load %Frame_block_typ*, %Frame_block_typ** %t167
    %t169 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t168, i32 0, i32 14
    %t170 = load %Frame_block*, %Frame_block** %t169
    %t172 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t171 = load i8*, i8** %t172
    %t173 = call i1 @F_block_string(%Frame_block* %t170, i8* %t171)
    br i1 %t173, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 2195
    call void @P_error(i32 148)
    ; line 2195
    %t174 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    store i8* null, i8** %t174
    br label %L_endif_11
L_endif_11:
    ; line 2197
    %t176 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t175 = load i8*, i8** %t176
    %t177 = bitcast i8* %t175 to %T_structure*
    %t179 = getelementptr inbounds %T_structure, %T_structure* %t177, i32 0, i32 24
    %t178 = bitcast i8* %t179 to i8**
    %t181 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t180 = load i8*, i8** %t181
    store i8* %t180, i8** %t178
    ; line 2197
    %t183 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t182 = load i8*, i8** %t183
    %t184 = bitcast i8* %t182 to %T_structure*
    %t186 = getelementptr inbounds %T_structure, %T_structure* %t184, i32 0, i32 32
    %t185 = bitcast i8* %t186 to %T_valu*
    %t188 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    %t187 = load %T_valu, %T_valu* %t188
    store %T_valu %t187, %T_valu* %t185
    ; line 2197
    %t190 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t189 = load i8*, i8** %t190
    %t191 = bitcast i8* %t189 to %T_structure*
    %t193 = getelementptr inbounds %T_structure, %T_structure* %t191, i32 0, i32 12
    %t192 = bitcast i8* %t193 to i32*
    store i32 4, i32* %t192
    ; line 2198
    %t195 = load i32, i32* @sy
    %t194 = icmp eq i32 %t195, 18
    br i1 %t194, label %L_then_12, label %L_else_12
L_then_12:
    ; line 2198
    call void @P_insymbol()
    br label %L_endif_12
L_else_12:
    ; line 2198
    call void @P_error(i32 5)
    br label %L_endif_12
L_endif_12:
    ; line 2199
    %t196 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t197 = load %Frame_block_typ*, %Frame_block_typ** %t196
    %t198 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t197, i32 0, i32 14
    %t199 = load %Frame_block*, %Frame_block** %t198
    %t201 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    %t200 = load %T_setofsys, %T_setofsys* %t201
    %t202 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t203 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    call void @P_block_constant(%Frame_block* %t199, %T_setofsys %t200, i8** %t202, %T_valu* %t203)
    ; line 2200
    %t205 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t204 = load i8*, i8** %t205
    %t206 = bitcast i8* %t204 to %T_structure*
    %t208 = getelementptr inbounds %T_structure, %T_structure* %t206, i32 0, i32 56
    %t207 = bitcast i8* %t208 to %T_valu*
    %t210 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    %t209 = load %T_valu, %T_valu* %t210
    store %T_valu %t209, %T_valu* %t207
    ; line 2201
    %t213 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t212 = load i8*, i8** %t213
    %t214 = bitcast i8* %t212 to %T_structure*
    %t216 = getelementptr inbounds %T_structure, %T_structure* %t214, i32 0, i32 24
    %t215 = bitcast i8* %t216 to i8**
    %t217 = load i8*, i8** %t215
    %t219 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t218 = load i8*, i8** %t219
    %t211 = icmp ne i32 %t217, %t218
    br i1 %t211, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 2201
    call void @P_error(i32 107)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_5
L_endif_5:
    ; line 2203
    %t222 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t221 = load i8*, i8** %t222
    %t220 = icmp ne i32 %t221, null
    br i1 %t220, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 2205
    %t225 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t224 = load i8*, i8** %t225
    %t226 = bitcast i8* %t224 to %T_structure*
    %t228 = getelementptr inbounds %T_structure, %T_structure* %t226, i32 0, i32 20
    %t227 = bitcast i8* %t228 to i32*
    %t229 = load i32, i32* %t227
    %t223 = icmp eq i32 %t229, 1
    br i1 %t223, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 2206
    %t232 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t231 = load i8*, i8** %t232
    %t233 = bitcast i8* %t231 to %T_structure*
    %t235 = getelementptr inbounds %T_structure, %T_structure* %t233, i32 0, i32 24
    %t234 = bitcast i8* %t235 to i8**
    %t236 = load i8*, i8** %t234
    %t230 = icmp ne i32 %t236, null
    br i1 %t230, label %L_then_16, label %L_endif_16
L_then_16:
    ; line 2207
    %t239 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t238 = load i8*, i8** %t239
    %t240 = bitcast i8* %t238 to %T_structure*
    %t242 = getelementptr inbounds %T_structure, %T_structure* %t240, i32 0, i32 24
    %t241 = bitcast i8* %t242 to i8**
    %t243 = load i8*, i8** %t241
    %t244 = load i8*, i8** @realptr
    %t237 = icmp eq i32 %t243, %t244
    br i1 %t237, label %L_then_17, label %L_else_17
L_then_17:
    ; line 2207
    call void @P_error(i32 399)
    br label %L_endif_17
L_else_17:
    ; line 2209
    %t247 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t246 = load i8*, i8** %t247
    %t248 = bitcast i8* %t246 to %T_structure*
    %t250 = getelementptr inbounds %T_structure, %T_structure* %t248, i32 0, i32 32
    %t249 = bitcast i8* %t250 to %T_valu*
    %t252 = getelementptr inbounds %T_valu, %T_valu* %t249, i32 0, i32 4
    %t251 = bitcast i8* %t252 to i32*
    %t253 = load i32, i32* %t251
    %t255 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t254 = load i8*, i8** %t255
    %t256 = bitcast i8* %t254 to %T_structure*
    %t258 = getelementptr inbounds %T_structure, %T_structure* %t256, i32 0, i32 56
    %t257 = bitcast i8* %t258 to %T_valu*
    %t260 = getelementptr inbounds %T_valu, %T_valu* %t257, i32 0, i32 4
    %t259 = bitcast i8* %t260 to i32*
    %t261 = load i32, i32* %t259
    %t245 = icmp sgt i32 %t253, %t261
    br i1 %t245, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 2209
    call void @P_error(i32 102)
    br label %L_endif_18
L_endif_18:
    br label %L_endif_17
L_endif_17:
    br label %L_endif_16
L_endif_16:
    br label %L_endif_15
L_endif_15:
    br label %L_endif_14
L_endif_14:
    br label %L_endif_3
L_endif_3:
    ; line 2211
    %t262 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 1
    %t263 = load i8**, i8*** %t262
    %t265 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t264 = load i8*, i8** %t265
    store i8* %t264, i8** %t263
    ; line 2212
    %t267 = icmp eq i1 0, true
    br i1 %t267, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 2213
    call void @P_error(i32 6)
    ; line 2213
    %t268 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t269 = load %Frame_block_typ*, %Frame_block_typ** %t268
    %t270 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t269, i32 0, i32 14
    %t271 = load %Frame_block*, %Frame_block** %t270
    %t273 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    %t272 = load %T_setofsys, %T_setofsys* %t273
    call void @P_block_skip(%Frame_block* %t271, %T_setofsys %t272)
    br label %L_endif_19
L_endif_19:
    br label %L_endif_2
L_else_2:
    ; line 2215
    %t274 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 1
    %t275 = load i8**, i8*** %t274
    store i8* null, i8** %t275
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 2218
;================================================================================
; scope: block_typ_fieldlist (level : 4)

; activation record
%Frame_block_typ_fieldlist = type
{
    ; parameters
    i8**,    ; 0: frecvar
    %T_setofsys,    ; 1: fsys

    ; variables
    i8*,    ; 2: lcp
    i8*,    ; 3: lcp1
    i32,    ; 4: lsize
    i8*,    ; 5: lsp
    i8*,    ; 6: lsp1
    i8*,    ; 7: lsp2
    i8*,    ; 8: lsp3
    i8*,    ; 9: lsp4
    %T_valu,    ; 10: lvalu
    i32,    ; 11: maxsize
    i32,    ; 12: minsize
    i1,    ; 13: mm
    i8*,    ; 14: nxt
    i8*,    ; 15: nxt1
    i1,    ; 16: test

    ; slink
    %Frame_block_typ*    ; 17
};

; procedure body
define void @P_block_typ_fieldlist(%Frame_block_typ* %.slink, %T_setofsys %fsys, i8** %frecvar)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ_fieldlist, align 8
    %t1 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    store %Frame_block_typ* %.slink, %Frame_block_typ** %t1
    %t2 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 0
    store i8** %frecvar, i8*** %t2
    %t3 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 1
    store %T_setofsys %fsys, %T_setofsys* %t3

    ; body
    ; line 2222
    %t4 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    store i8* null, i8** %t4
    ; line 2222
    %t5 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    store i8* null, i8** %t5
    ; line 2223
    %t7 = icmp eq i1 0, true
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2224
    call void @P_error(i32 19)
    ; line 2224
    %t8 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t9 = load %Frame_block_typ*, %Frame_block_typ** %t8
    %t10 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t9, i32 0, i32 14
    %t11 = load %Frame_block*, %Frame_block** %t10
    call void @P_block_skip(%Frame_block* %t11, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 2225
    ; line 2260
    %t13 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 14
    store i8* null, i8** %t13
    ; line 2261
    ; line 2264
    %t15 = load i32, i32* @sy
    %t14 = icmp eq i32 %t15, 33
    br i1 %t14, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2265
    ; line 2265
    %t17 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t16 = load i8*, i8** %t17
    call void @P_pshstc(i8* %t16)
    ; line 2267
    %t19 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t18 = load i8*, i8** %t19
    %t20 = bitcast i8* %t18 to %T_structure*
    %t22 = getelementptr inbounds %T_structure, %T_structure* %t20, i32 0, i32 24
    %t21 = bitcast i8* %t22 to i8**
    store i8* null, i8** %t21
    ; line 2267
    %t24 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t23 = load i8*, i8** %t24
    %t25 = bitcast i8* %t23 to %T_structure*
    %t27 = getelementptr inbounds %T_structure, %T_structure* %t25, i32 0, i32 32
    %t26 = bitcast i8* %t27 to i8**
    store i8* null, i8** %t26
    ; line 2267
    %t29 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t28 = load i8*, i8** %t29
    %t30 = bitcast i8* %t28 to %T_structure*
    %t32 = getelementptr inbounds %T_structure, %T_structure* %t30, i32 0, i32 20
    %t31 = bitcast i8* %t32 to i32*
    store i32 7, i32* %t31
    ; line 2268
    %t33 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 0
    %t34 = load i8**, i8*** %t33
    %t36 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t35 = load i8*, i8** %t36
    store i8* %t35, i8** %t34
    ; line 2269
    call void @P_insymbol()
    ; line 2270
    %t38 = load i32, i32* @sy
    %t37 = icmp eq i32 %t38, 0
    br i1 %t37, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2273
    %t39 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    %t40 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 13
    call void @P_searchidnenm(%T_setofids %.dummy_set, i8** %t39, i1* %t40)
    ; line 2275
    ; line 2275
    %t42 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t41 = load i8*, i8** %t42
    call void @P_ininam(i8* %t41)
    ; line 2277
    %t44 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t43 = load i8*, i8** %t44
    %t45 = bitcast i8* %t43 to %T_identifier*
    %t47 = getelementptr inbounds %T_identifier, %T_identifier* %t45, i32 0, i32 0
    %t46 = bitcast i8* %t47 to i8**
    call void @P_strassvf(i8** %t46, %T_idstr* @id)
    ; line 2277
    %t49 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t48 = load i8*, i8** %t49
    %t50 = bitcast i8* %t48 to %T_identifier*
    %t52 = getelementptr inbounds %T_identifier, %T_identifier* %t50, i32 0, i32 24
    %t51 = bitcast i8* %t52 to i8**
    store i8* null, i8** %t51
    ; line 2277
    %t54 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t53 = load i8*, i8** %t54
    %t55 = bitcast i8* %t53 to %T_identifier*
    %t57 = getelementptr inbounds %T_identifier, %T_identifier* %t55, i32 0, i32 44
    %t56 = bitcast i8* %t57 to i32*
    store i32 3, i32* %t56
    ; line 2278
    %t59 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t58 = load i8*, i8** %t59
    %t60 = bitcast i8* %t58 to %T_identifier*
    %t62 = getelementptr inbounds %T_identifier, %T_identifier* %t60, i32 0, i32 32
    %t61 = bitcast i8* %t62 to i8**
    store i8* null, i8** %t61
    ; line 2278
    %t64 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t63 = load i8*, i8** %t64
    %t65 = bitcast i8* %t63 to %T_identifier*
    %t67 = getelementptr inbounds %T_identifier, %T_identifier* %t65, i32 0, i32 48
    %t66 = bitcast i8* %t67 to i32*
    %t70 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t71 = load %Frame_block_typ*, %Frame_block_typ** %t70
    %t69 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t71, i32 0, i32 3
    %t68 = load i32, i32* %t69
    store i32 %t68, i32* %t66
    ; line 2280
    call void @P_insymbol()
    ; line 2282
    %t73 = load i32, i32* @sy
    %t72 = icmp eq i32 %t73, 16
    br i1 %t72, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2283
    %t75 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t74 = load i8*, i8** %t75
    call void @P_enterid(i8* %t74)
    ; line 2283
    call void @P_insymbol()
    ; line 2284
    %t77 = load i32, i32* @sy
    %t76 = icmp eq i32 %t77, 0
    br i1 %t76, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2284
    %t78 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t78)
    ; line 2284
    call void @P_insymbol()
    br label %L_endif_5
L_else_5:
    ; line 2285
    call void @P_error(i32 2)
    ; line 2285
    %t79 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t80 = load %Frame_block_typ*, %Frame_block_typ** %t79
    %t81 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t80, i32 0, i32 14
    %t82 = load %Frame_block*, %Frame_block** %t81
    call void @P_block_skip(%Frame_block* %t82, %T_setofsys %.dummy_set)
    ; line 2285
    %t84 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    store i8* null, i8** %t84
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_else_4:
    ; line 2287
    %t86 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 13
    %t85 = load i1, i1* %t86
    br i1 %t85, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2287
    call void @P_error(i32 103)
    br label %L_endif_6
L_endif_6:
    ; line 2288
    %t88 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t87 = load i8*, i8** %t88
    %t89 = bitcast i8* %t87 to %T_identifier*
    %t91 = getelementptr inbounds %T_identifier, %T_identifier* %t89, i32 0, i32 0
    %t90 = bitcast i8* %t91 to i8**
    %t92 = load i8*, i8** %t90
    call void @P_putstrs(i8* %t92)
    ; line 2289
    %t94 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t93 = load i8*, i8** %t94
    %t95 = bitcast i8* %t93 to %T_identifier*
    %t97 = getelementptr inbounds %T_identifier, %T_identifier* %t95, i32 0, i32 0
    %t96 = bitcast i8* %t97 to i8**
    store i8* null, i8** %t96
    br label %L_endif_4
L_endif_4:
    ; line 2291
    %t100 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    %t99 = load i8*, i8** %t100
    %t98 = icmp ne i32 %t99, null
    br i1 %t98, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2292
    %t101 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t103 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    %t102 = load i8*, i8** %t103
    %t104 = bitcast i8* %t102 to %T_identifier*
    %t106 = getelementptr inbounds %T_identifier, %T_identifier* %t104, i32 0, i32 24
    %t105 = bitcast i8* %t106 to i8**
    %t107 = load i8*, i8** %t105
    store i8* %t107, i8** %t101
    ; line 2293
    %t110 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t109 = load i8*, i8** %t110
    %t108 = icmp ne i32 %t109, null
    br i1 %t108, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 2294
    %t112 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t111 = load i8*, i8** %t112
    %t114 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t115 = load %Frame_block_typ*, %Frame_block_typ** %t114
    %t113 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t115, i32 0, i32 3
    call void @P_align(i8* %t111, i32* %t113)
    ; line 2295
    %t117 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t116 = load i8*, i8** %t117
    %t118 = bitcast i8* %t116 to %T_identifier*
    %t120 = getelementptr inbounds %T_identifier, %T_identifier* %t118, i32 0, i32 48
    %t119 = bitcast i8* %t120 to i32*
    %t123 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t124 = load %Frame_block_typ*, %Frame_block_typ** %t123
    %t122 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t124, i32 0, i32 3
    %t121 = load i32, i32* %t122
    store i32 %t121, i32* %t119
    ; line 2297
    %t127 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t126 = load i8*, i8** %t127
    %t128 = bitcast i8* %t126 to %T_identifier*
    %t130 = getelementptr inbounds %T_identifier, %T_identifier* %t128, i32 0, i32 0
    %t129 = bitcast i8* %t130 to i8**
    %t131 = load i8*, i8** %t129
    %t125 = icmp ne i32 %t131, null
    br i1 %t125, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2297
    %t133 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t134 = load %Frame_block_typ*, %Frame_block_typ** %t133
    %t132 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t134, i32 0, i32 3
    %t138 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t139 = load %Frame_block_typ*, %Frame_block_typ** %t138
    %t137 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t139, i32 0, i32 3
    %t136 = load i32, i32* %t137
    %t141 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t140 = load i8*, i8** %t141
    %t142 = bitcast i8* %t140 to %T_structure*
    %t144 = getelementptr inbounds %T_structure, %T_structure* %t142, i32 0, i32 12
    %t143 = bitcast i8* %t144 to i32*
    %t145 = load i32, i32* %t143
    %t135 = add i32 %t136, %t145
    store i32 %t135, i32* %t132
    br label %L_endif_9
L_endif_9:
    ; line 2298
    br label %L_OR_expr_10
L_OR_expr_10:
    %t149 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t148 = load i8*, i8** %t149
    %t150 = bitcast i8* %t148 to %T_structure*
    %t152 = getelementptr inbounds %T_structure, %T_structure* %t150, i32 0, i32 20
    %t151 = bitcast i8* %t152 to i32*
    %t153 = load i32, i32* %t151
    %t147 = icmp sle i32 %t153, 1
    br i1 %t147, label %L_OR_shortcut_10, label %L_OR_eval_10
L_OR_eval_10:
    %t154 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t155 = load %Frame_block_typ*, %Frame_block_typ** %t154
    %t156 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t155, i32 0, i32 14
    %t157 = load %Frame_block*, %Frame_block** %t156
    %t159 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t158 = load i8*, i8** %t159
    %t160 = call i1 @F_block_string(%Frame_block* %t157, i8* %t158)
    br label %L_OR_shortcut_10
L_OR_shortcut_10:
    %t146 = phi [%t160, %L_OR_eval_10], [true, %L_OR_expr_10]
    br i1 %t146, label %L_then_11, label %L_else_11
L_then_11:
    ; line 2299
    %t161 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t162 = load %Frame_block_typ*, %Frame_block_typ** %t161
    %t163 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t162, i32 0, i32 14
    %t164 = load %Frame_block*, %Frame_block** %t163
    %t165 = load i8*, i8** @realptr
    %t167 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t166 = load i8*, i8** %t167
    %t168 = call i1 @F_block_comptypes(%Frame_block* %t164, i8* %t165, i8* %t166)
    br i1 %t168, label %L_then_12, label %L_else_12
L_then_12:
    ; line 2299
    call void @P_error(i32 109)
    br label %L_endif_12
L_else_12:
    ; line 2300
    %t169 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t170 = load %Frame_block_typ*, %Frame_block_typ** %t169
    %t171 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t170, i32 0, i32 14
    %t172 = load %Frame_block*, %Frame_block** %t171
    %t174 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t173 = load i8*, i8** %t174
    %t175 = call i1 @F_block_string(%Frame_block* %t172, i8* %t173)
    br i1 %t175, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 2300
    call void @P_error(i32 399)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_endif_12:
    ; line 2301
    %t177 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t176 = load i8*, i8** %t177
    %t178 = bitcast i8* %t176 to %T_identifier*
    %t180 = getelementptr inbounds %T_identifier, %T_identifier* %t178, i32 0, i32 24
    %t179 = bitcast i8* %t180 to i8**
    %t182 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t181 = load i8*, i8** %t182
    store i8* %t181, i8** %t179
    ; line 2301
    %t184 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t183 = load i8*, i8** %t184
    %t185 = bitcast i8* %t183 to %T_structure*
    %t187 = getelementptr inbounds %T_structure, %T_structure* %t185, i32 0, i32 24
    %t186 = bitcast i8* %t187 to i8**
    %t189 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t188 = load i8*, i8** %t189
    store i8* %t188, i8** %t186
    ; nop
    br label %L_endif_11
L_else_11:
    ; line 2303
    call void @P_error(i32 110)
    br label %L_endif_11
L_endif_11:
    ; nop
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_3
L_else_3:
    ; line 2307
    call void @P_error(i32 2)
    ; line 2307
    %t190 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t191 = load %Frame_block_typ*, %Frame_block_typ** %t190
    %t192 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t191, i32 0, i32 14
    %t193 = load %Frame_block*, %Frame_block** %t192
    call void @P_block_skip(%Frame_block* %t193, %T_setofsys %.dummy_set)
    br label %L_endif_3
L_endif_3:
    ; line 2308
    %t196 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t195 = load i8*, i8** %t196
    %t197 = bitcast i8* %t195 to %T_structure*
    %t199 = getelementptr inbounds %T_structure, %T_structure* %t197, i32 0, i32 12
    %t198 = bitcast i8* %t199 to i32*
    %t202 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t203 = load %Frame_block_typ*, %Frame_block_typ** %t202
    %t201 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t203, i32 0, i32 3
    %t200 = load i32, i32* %t201
    store i32 %t200, i32* %t198
    ; line 2309
    %t205 = load i32, i32* @sy
    %t204 = icmp eq i32 %t205, 42
    br i1 %t204, label %L_then_14, label %L_else_14
L_then_14:
    ; line 2309
    call void @P_insymbol()
    br label %L_endif_14
L_else_14:
    ; line 2309
    call void @P_error(i32 8)
    br label %L_endif_14
L_endif_14:
    ; line 2310
    %t206 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    store i8* null, i8** %t206
    ; line 2310
    %t207 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 12
    %t210 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t211 = load %Frame_block_typ*, %Frame_block_typ** %t210
    %t209 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t211, i32 0, i32 3
    %t208 = load i32, i32* %t209
    store i32 %t208, i32* %t207
    ; line 2310
    %t212 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 11
    %t215 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t216 = load %Frame_block_typ*, %Frame_block_typ** %t215
    %t214 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t216, i32 0, i32 3
    %t213 = load i32, i32* %t214
    store i32 %t213, i32* %t212
    ; line 2311
    ; line 2355
    %t218 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 17
    %t219 = load %Frame_block_typ*, %Frame_block_typ** %t218
    %t217 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t219, i32 0, i32 3
    %t221 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 11
    %t220 = load i32, i32* %t221
    store i32 %t220, i32* %t217
    ; line 2356
    %t223 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t222 = load i8*, i8** %t223
    %t224 = bitcast i8* %t222 to %T_structure*
    %t226 = getelementptr inbounds %T_structure, %T_structure* %t224, i32 0, i32 32
    %t225 = bitcast i8* %t226 to i8**
    %t228 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t227 = load i8*, i8** %t228
    store i8* %t227, i8** %t225
    ; nop
    br label %L_endif_2
L_else_2:
    ; line 2358
    %t229 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 0
    %t230 = load i8**, i8*** %t229
    store i8* null, i8** %t230
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 2511
;================================================================================
; scope: block_labeldeclaration (level : 3)

; activation record
%Frame_block_labeldeclaration = type
{
    ; variables
    i8*,    ; 0: llp
    i1,    ; 1: test

    ; slink
    %Frame_block*    ; 2
};

; procedure body
define void @P_block_labeldeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_labeldeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_labeldeclaration, %Frame_block_labeldeclaration* %.frame, i32 0, i32 2
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 2515
    ; line 2527
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 13
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2527
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 2527
    call void @P_error(i32 14)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2530
;================================================================================
; scope: block_constdeclaration (level : 3)

; activation record
%Frame_block_constdeclaration = type
{
    ; variables
    i8*,    ; 0: lcp
    i8*,    ; 1: lsp
    %T_valu,    ; 2: lvalu

    ; slink
    %Frame_block*    ; 3
};

; procedure body
define void @P_block_constdeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_constdeclaration, %Frame_block_constdeclaration* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 2533
    %t3 = load i32, i32* @sy
    %t2 = icmp ne i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2534
    call void @P_error(i32 2)
    ; line 2534
    %t4 = getelementptr inbounds %Frame_block_constdeclaration, %Frame_block_constdeclaration* %.frame, i32 0, i32 3
    %t5 = load %Frame_block*, %Frame_block** %t4
    call void @P_block_skip(%Frame_block* %t5, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 2535

    ; epilogue
    ret void
}


; line 2553
;================================================================================
; scope: block_typedeclaration (level : 3)

; activation record
%Frame_block_typedeclaration = type
{
    ; variables
    i8*,    ; 0: lcp
    i8*,    ; 1: lcp1
    i8*,    ; 2: lcp2
    i8*,    ; 3: lcp3
    i32,    ; 4: lsize
    i8*,    ; 5: lsp

    ; slink
    %Frame_block*    ; 6
};

; procedure body
define void @P_block_typedeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typedeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 6
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 2556
    %t3 = load i32, i32* @sy
    %t2 = icmp ne i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2557
    call void @P_error(i32 2)
    ; line 2557
    %t4 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 6
    %t5 = load %Frame_block*, %Frame_block** %t4
    call void @P_block_skip(%Frame_block* %t5, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 2558
    ; line 2574
    %t7 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 6
    %t8 = load %Frame_block*, %Frame_block** %t7
    call void @P_block_resolvep(%Frame_block* %t8)

    ; epilogue
    ret void
}


; line 2577
;================================================================================
; scope: block_vardeclaration (level : 3)

; activation record
%Frame_block_vardeclaration = type
{
    ; variables
    i8*,    ; 0: lcp
    i32,    ; 1: lsize
    i8*,    ; 2: lsp
    i8*,    ; 3: nxt
    i1,    ; 4: test

    ; slink
    %Frame_block*    ; 5
};

; procedure body
define void @P_block_vardeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_vardeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 5
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 2580
    %t2 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 3
    store i8* null, i8** %t2
    ; line 2581
    ; line 2614
    %t3 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 5
    %t4 = load %Frame_block*, %Frame_block** %t3
    call void @P_block_resolvep(%Frame_block* %t4)

    ; epilogue
    ret void
}


; line 2617
;================================================================================
; scope: block_procdeclaration (level : 3)

; activation record
%Frame_block_procdeclaration = type
{
    ; parameters
    i32,    ; 0: fsy

    ; variables
    i1,    ; 1: forw
    i32,    ; 2: lbname
    i32,    ; 3: lcm
    i8*,    ; 4: lcp
    i8*,    ; 5: lcp1
    i32,    ; 6: llc
    i8*,    ; 7: lsp
    i32,    ; 8: oldlev
    i32,    ; 9: oldtop

    ; slink
    %Frame_block*    ; 10
};

; procedure body
define void @P_block_procdeclaration(%Frame_block* %.slink, i32 %fsy)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    store i32 %fsy, i32* %t2

    ; body
    ; line 2815
    %t3 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 6
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    ; line 2815
    store i32 32, i32* @lc
    ; line 2815
    %t5 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store i1 0, i1* %t5
    ; line 2816
    %t7 = load i32, i32* @sy
    %t6 = icmp eq i32 %t7, 0
    br i1 %t6, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2817
    %t8 = load i32, i32* @top
    %t9 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t8
    %t11 = getelementptr inbounds %T_record_9, %T_record_9* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    %t13 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    call void @P_searchsection(i8* %t12, i8** %t13)
    ; line 2818
    %t16 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t15 = load i8*, i8** %t16
    %t14 = icmp ne i32 %t15, null
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2820
    %t19 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t18 = load i8*, i8** %t19
    %t20 = bitcast i8* %t18 to %T_identifier*
    %t22 = getelementptr inbounds %T_identifier, %T_identifier* %t20, i32 0, i32 44
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t17 = icmp eq i32 %t23, 4
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2821
    %t24 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    br label %L_AND_expr_5
L_AND_expr_5:
    br label %L_AND_expr_4
L_AND_expr_4:
    %t28 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t27 = load i8*, i8** %t28
    %t29 = bitcast i8* %t27 to %T_identifier*
    %t31 = getelementptr inbounds %T_identifier, %T_identifier* %t29, i32 0, i32 80
    %t30 = bitcast i8* %t31 to i1*
    %t32 = load i1, i1* %t30
    br i1 %t32, label %L_AND_eval_4, label %L_AND_shortcut_4
L_AND_eval_4:
    %t35 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t34 = load i32, i32* %t35
    %t33 = icmp eq i32 %t34, 25
    br label %L_AND_shortcut_4
L_AND_shortcut_4:
    %t26 = phi [%t33, %L_AND_eval_4], [false, %L_AND_expr_4]
    br i1 %t26, label %L_AND_eval_5, label %L_AND_shortcut_5
L_AND_eval_5:
    %t38 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t37 = load i8*, i8** %t38
    %t39 = bitcast i8* %t37 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 76
    %t40 = bitcast i8* %t41 to i32*
    %t42 = load i32, i32* %t40
    %t36 = icmp eq i32 %t42, 0
    br label %L_AND_shortcut_5
L_AND_shortcut_5:
    %t25 = phi [%t36, %L_AND_eval_5], [false, %L_AND_expr_5]
    store i1 %t25, i1* %t24
    br label %L_endif_3
L_else_3:
    ; line 2823
    %t45 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t44 = load i8*, i8** %t45
    %t46 = bitcast i8* %t44 to %T_identifier*
    %t48 = getelementptr inbounds %T_identifier, %T_identifier* %t46, i32 0, i32 44
    %t47 = bitcast i8* %t48 to i32*
    %t49 = load i32, i32* %t47
    %t43 = icmp eq i32 %t49, 5
    br i1 %t43, label %L_then_6, label %L_else_6
L_then_6:
    ; line 2824
    %t50 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    br label %L_AND_expr_8
L_AND_expr_8:
    br label %L_AND_expr_7
L_AND_expr_7:
    %t54 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t53 = load i8*, i8** %t54
    %t55 = bitcast i8* %t53 to %T_identifier*
    %t57 = getelementptr inbounds %T_identifier, %T_identifier* %t55, i32 0, i32 80
    %t56 = bitcast i8* %t57 to i1*
    %t58 = load i1, i1* %t56
    br i1 %t58, label %L_AND_eval_7, label %L_AND_shortcut_7
L_AND_eval_7:
    %t61 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t60 = load i32, i32* %t61
    %t59 = icmp eq i32 %t60, 23
    br label %L_AND_shortcut_7
L_AND_shortcut_7:
    %t52 = phi [%t59, %L_AND_eval_7], [false, %L_AND_expr_7]
    br i1 %t52, label %L_AND_eval_8, label %L_AND_shortcut_8
L_AND_eval_8:
    %t64 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t63 = load i8*, i8** %t64
    %t65 = bitcast i8* %t63 to %T_identifier*
    %t67 = getelementptr inbounds %T_identifier, %T_identifier* %t65, i32 0, i32 76
    %t66 = bitcast i8* %t67 to i32*
    %t68 = load i32, i32* %t66
    %t62 = icmp eq i32 %t68, 0
    br label %L_AND_shortcut_8
L_AND_shortcut_8:
    %t51 = phi [%t62, %L_AND_eval_8], [false, %L_AND_expr_8]
    store i1 %t51, i1* %t50
    br label %L_endif_6
L_else_6:
    ; line 2825
    %t69 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store i1 0, i1* %t69
    br label %L_endif_6
L_endif_6:
    br label %L_endif_3
L_endif_3:
    ; line 2826
    %t71 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t70 = load i1, i1* %t71
    %t72 = icmp eq i1 0, %t70
    br i1 %t72, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2826
    call void @P_error(i32 160)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_2
L_endif_2:
    ; line 2828
    %t74 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t73 = load i1, i1* %t74
    %t75 = icmp eq i1 0, %t73
    br i1 %t75, label %L_then_10, label %L_else_10
L_then_10:
    ; line 2830
    %t78 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t77 = load i32, i32* %t78
    %t76 = icmp eq i32 %t77, 25
    br i1 %t76, label %L_then_11, label %L_else_11
L_then_11:
    ; line 2830
    br label %L_endif_11
L_else_11:
    ; line 2831
    br label %L_endif_11
L_endif_11:
    ; line 2831
    %t80 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t79 = load i8*, i8** %t80
    call void @P_ininam(i8* %t79)
    ; line 2833
    %t82 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t81 = load i8*, i8** %t82
    %t83 = bitcast i8* %t81 to %T_identifier*
    %t85 = getelementptr inbounds %T_identifier, %T_identifier* %t83, i32 0, i32 0
    %t84 = bitcast i8* %t85 to i8**
    call void @P_strassvf(i8** %t84, %T_idstr* @id)
    ; line 2833
    %t87 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t86 = load i8*, i8** %t87
    %t88 = bitcast i8* %t86 to %T_identifier*
    %t90 = getelementptr inbounds %T_identifier, %T_identifier* %t88, i32 0, i32 24
    %t89 = bitcast i8* %t90 to i8**
    store i8* null, i8** %t89
    ; line 2834
    %t92 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t91 = load i8*, i8** %t92
    %t93 = bitcast i8* %t91 to %T_identifier*
    %t95 = getelementptr inbounds %T_identifier, %T_identifier* %t93, i32 0, i32 81
    %t94 = bitcast i8* %t95 to i1*
    store i1 0, i1* %t94
    ; line 2834
    %t97 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t96 = load i8*, i8** %t97
    %t98 = bitcast i8* %t96 to %T_identifier*
    %t100 = getelementptr inbounds %T_identifier, %T_identifier* %t98, i32 0, i32 68
    %t99 = bitcast i8* %t100 to i32*
    %t101 = load i32, i32* @level
    store i32 %t101, i32* %t99
    ; line 2834
    %t102 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t102)
    ; line 2835
    %t104 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t103 = load i8*, i8** %t104
    %t105 = bitcast i8* %t103 to %T_identifier*
    %t107 = getelementptr inbounds %T_identifier, %T_identifier* %t105, i32 0, i32 64
    %t106 = bitcast i8* %t107 to i32*
    store i32 1, i32* %t106
    ; line 2835
    %t109 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t108 = load i8*, i8** %t109
    %t110 = bitcast i8* %t108 to %T_identifier*
    %t112 = getelementptr inbounds %T_identifier, %T_identifier* %t110, i32 0, i32 76
    %t111 = bitcast i8* %t112 to i32*
    store i32 0, i32* %t111
    ; line 2835
    %t114 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t113 = load i8*, i8** %t114
    %t115 = bitcast i8* %t113 to %T_identifier*
    %t117 = getelementptr inbounds %T_identifier, %T_identifier* %t115, i32 0, i32 72
    %t116 = bitcast i8* %t117 to i32*
    %t119 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 2
    %t118 = load i32, i32* %t119
    store i32 %t118, i32* %t116
    ; line 2836
    %t122 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t121 = load i32, i32* %t122
    %t120 = icmp eq i32 %t121, 25
    br i1 %t120, label %L_then_12, label %L_else_12
L_then_12:
    ; line 2836
    %t124 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t123 = load i8*, i8** %t124
    %t125 = bitcast i8* %t123 to %T_identifier*
    %t127 = getelementptr inbounds %T_identifier, %T_identifier* %t125, i32 0, i32 44
    %t126 = bitcast i8* %t127 to i32*
    store i32 4, i32* %t126
    br label %L_endif_12
L_else_12:
    ; line 2837
    %t129 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t128 = load i8*, i8** %t129
    %t130 = bitcast i8* %t128 to %T_identifier*
    %t132 = getelementptr inbounds %T_identifier, %T_identifier* %t130, i32 0, i32 44
    %t131 = bitcast i8* %t132 to i32*
    store i32 5, i32* %t131
    br label %L_endif_12
L_endif_12:
    ; line 2839
    %t134 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t133 = load i8*, i8** %t134
    call void @P_enterid(i8* %t133)
    br label %L_endif_10
L_else_10:
    ; line 2842
    %t135 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t137 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t136 = load i8*, i8** %t137
    %t138 = bitcast i8* %t136 to %T_identifier*
    %t140 = getelementptr inbounds %T_identifier, %T_identifier* %t138, i32 0, i32 56
    %t139 = bitcast i8* %t140 to i8**
    %t141 = load i8*, i8** %t139
    store i8* %t141, i8** %t135
    ; line 2843
    br label %L_endif_10
L_endif_10:
    ; line 2854
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 2857
    call void @P_error(i32 2)
    ; line 2857
    %t142 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t143 = load i8*, i8** @ufctptr
    store i8* %t143, i8** %t142
    br label %L_endif_1
L_endif_1:
    ; line 2858
    %t144 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 8
    %t145 = load i32, i32* @level
    store i32 %t145, i32* %t144
    ; line 2858
    %t146 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t147 = load i32, i32* @top
    store i32 %t147, i32* %t146
    ; line 2859
    %t149 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t148 = load i1, i1* %t149
    %t151 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t150 = load i8*, i8** %t151
    call void @P_block_procdeclaration_pushlvl(%Frame_block_procdeclaration* %.frame, i1 %t148, i8* %t150)
    ; line 2860
    %t154 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t153 = load i32, i32* %t154
    %t152 = icmp eq i32 %t153, 25
    br i1 %t152, label %L_then_13, label %L_else_13
L_then_13:
    ; line 2861
    %t155 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    call void @P_block_procdeclaration_parameterlist(%Frame_block_procdeclaration* %.frame, %T_setofsys %.dummy_set, i8** %t155)
    ; line 2862
    %t157 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t156 = load i1, i1* %t157
    %t158 = icmp eq i1 0, %t156
    br i1 %t158, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 2862
    %t160 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t159 = load i8*, i8** %t160
    %t161 = bitcast i8* %t159 to %T_identifier*
    %t163 = getelementptr inbounds %T_identifier, %T_identifier* %t161, i32 0, i32 56
    %t162 = bitcast i8* %t163 to i8**
    %t165 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t164 = load i8*, i8** %t165
    store i8* %t164, i8** %t162
    br label %L_endif_14
L_endif_14:
    br label %L_endif_13
L_else_13:
    ; line 2865
    %t166 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    call void @P_block_procdeclaration_parameterlist(%Frame_block_procdeclaration* %.frame, %T_setofsys %.dummy_set, i8** %t166)
    ; line 2866
    %t168 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t167 = load i1, i1* %t168
    %t169 = icmp eq i1 0, %t167
    br i1 %t169, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 2866
    %t171 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t170 = load i8*, i8** %t171
    %t172 = bitcast i8* %t170 to %T_identifier*
    %t174 = getelementptr inbounds %T_identifier, %T_identifier* %t172, i32 0, i32 56
    %t173 = bitcast i8* %t174 to i8**
    %t176 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t175 = load i8*, i8** %t176
    store i8* %t175, i8** %t173
    br label %L_endif_15
L_endif_15:
    ; line 2867
    %t178 = load i32, i32* @sy
    %t177 = icmp eq i32 %t178, 16
    br i1 %t177, label %L_then_16, label %L_else_16
L_then_16:
    ; line 2868
    call void @P_insymbol()
    ; line 2869
    %t180 = load i32, i32* @sy
    %t179 = icmp eq i32 %t180, 0
    br i1 %t179, label %L_then_17, label %L_else_17
L_then_17:
    ; line 2870
    %t182 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t181 = load i1, i1* %t182
    br i1 %t181, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 2870
    call void @P_error(i32 122)
    br label %L_endif_18
L_endif_18:
    ; line 2871
    %t183 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t183)
    ; line 2872
    %t184 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 7
    %t186 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t185 = load i8*, i8** %t186
    %t187 = bitcast i8* %t185 to %T_identifier*
    %t189 = getelementptr inbounds %T_identifier, %T_identifier* %t187, i32 0, i32 24
    %t188 = bitcast i8* %t189 to i8**
    %t190 = load i8*, i8** %t188
    store i8* %t190, i8** %t184
    ; line 2873
    %t192 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t191 = load i8*, i8** %t192
    %t193 = bitcast i8* %t191 to %T_identifier*
    %t195 = getelementptr inbounds %T_identifier, %T_identifier* %t193, i32 0, i32 24
    %t194 = bitcast i8* %t195 to i8**
    %t197 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 7
    %t196 = load i8*, i8** %t197
    store i8* %t196, i8** %t194
    ; line 2874
    %t200 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 7
    %t199 = load i8*, i8** %t200
    %t198 = icmp ne i32 %t199, null
    br i1 %t198, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 2875
    %t202 = icmp eq i1 0, true
    br i1 %t202, label %L_then_20, label %L_endif_20
L_then_20:
    ; line 2876
    call void @P_error(i32 120)
    ; line 2876
    %t204 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t203 = load i8*, i8** %t204
    %t205 = bitcast i8* %t203 to %T_identifier*
    %t207 = getelementptr inbounds %T_identifier, %T_identifier* %t205, i32 0, i32 24
    %t206 = bitcast i8* %t207 to i8**
    store i8* null, i8** %t206
    br label %L_endif_20
L_endif_20:
    br label %L_endif_19
L_endif_19:
    ; line 2877
    call void @P_insymbol()
    br label %L_endif_17
L_else_17:
    ; line 2879
    call void @P_error(i32 2)
    ; line 2879
    %t208 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t209 = load %Frame_block*, %Frame_block** %t208
    call void @P_block_skip(%Frame_block* %t209, %T_setofsys %.dummy_set)
    br label %L_endif_17
L_endif_17:
    br label %L_endif_16
L_else_16:
    ; line 2882
    %t212 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t211 = load i1, i1* %t212
    %t213 = icmp eq i1 0, %t211
    br i1 %t213, label %L_then_21, label %L_endif_21
L_then_21:
    ; line 2882
    call void @P_error(i32 123)
    br label %L_endif_21
L_endif_21:
    br label %L_endif_16
L_endif_16:
    br label %L_endif_13
L_endif_13:
    ; line 2884
    %t215 = load i32, i32* @sy
    %t214 = icmp eq i32 %t215, 13
    br i1 %t214, label %L_then_22, label %L_else_22
L_then_22:
    ; line 2884
    call void @P_insymbol()
    br label %L_endif_22
L_else_22:
    ; line 2884
    call void @P_error(i32 14)
    br label %L_endif_22
L_endif_22:
    ; line 2885
    br label %L_AND_expr_23
L_AND_expr_23:
    %t218 = load i32, i32* @sy
    %t217 = icmp eq i32 %t218, 0
    br i1 %t217, label %L_AND_eval_23, label %L_AND_shortcut_23
L_AND_eval_23:
    %t219 = call i1 @F_strequri(%T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %T_idstr* @id)
    br label %L_AND_shortcut_23
L_AND_shortcut_23:
    %t216 = phi [%t219, %L_AND_eval_23], [false, %L_AND_expr_23]
    br i1 %t216, label %L_then_24, label %L_else_24
L_then_24:
    ; line 2887
    %t221 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t220 = load i1, i1* %t221
    br i1 %t220, label %L_then_25, label %L_else_25
L_then_25:
    ; line 2887
    call void @P_error(i32 161)
    br label %L_endif_25
L_else_25:
    ; line 2888
    %t223 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t222 = load i8*, i8** %t223
    %t224 = bitcast i8* %t222 to %T_identifier*
    %t226 = getelementptr inbounds %T_identifier, %T_identifier* %t224, i32 0, i32 80
    %t225 = bitcast i8* %t226 to i1*
    store i1 1, i1* %t225
    br label %L_endif_25
L_endif_25:
    ; line 2889
    call void @P_insymbol()
    ; line 2890
    %t228 = load i32, i32* @sy
    %t227 = icmp eq i32 %t228, 13
    br i1 %t227, label %L_then_26, label %L_else_26
L_then_26:
    ; line 2890
    call void @P_insymbol()
    br label %L_endif_26
L_else_26:
    ; line 2890
    call void @P_error(i32 14)
    br label %L_endif_26
L_endif_26:
    ; line 2891
    %t230 = icmp eq i1 0, true
    br i1 %t230, label %L_then_27, label %L_endif_27
L_then_27:
    ; line 2892
    call void @P_error(i32 6)
    ; line 2892
    %t231 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t232 = load %Frame_block*, %Frame_block** %t231
    %t235 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t236 = load %Frame_block*, %Frame_block** %t235
    %t234 = getelementptr inbounds %Frame_block, %Frame_block* %t236, i32 0, i32 2
    %t233 = load %T_setofsys, %T_setofsys* %t234
    call void @P_block_skip(%Frame_block* %t232, %T_setofsys %t233)
    br label %L_endif_27
L_endif_27:
    br label %L_endif_24
L_else_24:
    ; line 2895
    %t238 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t237 = load i8*, i8** %t238
    %t239 = bitcast i8* %t237 to %T_identifier*
    %t241 = getelementptr inbounds %T_identifier, %T_identifier* %t239, i32 0, i32 80
    %t240 = bitcast i8* %t241 to i1*
    store i1 0, i1* %t240
    ; line 2897
    ; nop
    br label %L_endif_24
L_endif_24:
    ; line 2907
    %t243 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 8
    %t242 = load i32, i32* %t243
    store i32 %t242, i32* @level
    ; line 2907
    %t245 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t244 = load i32, i32* %t245
    call void @P_putdsps(i32 %t244)
    ; line 2907
    %t247 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t246 = load i32, i32* %t247
    store i32 %t246, i32* @top
    ; line 2907
    %t249 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 6
    %t248 = load i32, i32* %t249
    store i32 %t248, i32* @lc
    ; nop

    ; epilogue
    ret void
}


; line 2622
;================================================================================
; scope: block_procdeclaration_pushlvl (level : 4)

; activation record
%Frame_block_procdeclaration_pushlvl = type
{
    ; parameters
    i1,    ; 0: forw
    i8*,    ; 1: lcp

    ; slink
    %Frame_block_procdeclaration*    ; 2
};

; procedure body
define void @P_block_procdeclaration_pushlvl(%Frame_block_procdeclaration* %.slink, i1 %forw, i8* %lcp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration_pushlvl, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration_pushlvl, %Frame_block_procdeclaration_pushlvl* %.frame, i32 0, i32 2
    store %Frame_block_procdeclaration* %.slink, %Frame_block_procdeclaration** %t1
    %t2 = getelementptr inbounds %Frame_block_procdeclaration_pushlvl, %Frame_block_procdeclaration_pushlvl* %.frame, i32 0, i32 0
    store i1 %forw, i1* %t2
    %t3 = getelementptr inbounds %Frame_block_procdeclaration_pushlvl, %Frame_block_procdeclaration_pushlvl* %.frame, i32 0, i32 1
    store i8* %lcp, i8** %t3

    ; body
    ; line 2624
    %t5 = load i32, i32* @level
    %t4 = icmp slt i32 %t5, 255
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2624
    %t7 = load i32, i32* @level
    %t6 = add i32 %t7, 1
    store i32 %t6, i32* @level
    br label %L_endif_1
L_else_1:
    ; line 2624
    call void @P_error(i32 251)
    br label %L_endif_1
L_endif_1:
    ; line 2625
    %t9 = load i32, i32* @top
    %t8 = icmp slt i32 %t9, 300
    br i1 %t8, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2626
    %t11 = load i32, i32* @top
    %t10 = add i32 %t11, 1
    store i32 %t10, i32* @top
    ; line 2629
    %t13 = getelementptr inbounds %Frame_block_procdeclaration_pushlvl, %Frame_block_procdeclaration_pushlvl* %.frame, i32 0, i32 0
    %t12 = load i1, i1* %t13
    br i1 %t12, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2629
    %t14 = load i32, i32* @top
    %t15 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t14
    %t17 = getelementptr inbounds %T_record_9, %T_record_9* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i8**
    %t19 = getelementptr inbounds %Frame_block_procdeclaration_pushlvl, %Frame_block_procdeclaration_pushlvl* %.frame, i32 0, i32 1
    %t18 = load i8*, i8** %t19
    %t20 = bitcast i8* %t18 to %T_identifier*
    %t22 = getelementptr inbounds %T_identifier, %T_identifier* %t20, i32 0, i32 56
    %t21 = bitcast i8* %t22 to i8**
    %t23 = load i8*, i8** %t21
    store i8* %t23, i8** %t16
    br label %L_endif_3
L_else_3:
    ; line 2630
    %t24 = load i32, i32* @top
    %t25 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t24
    %t27 = getelementptr inbounds %T_record_9, %T_record_9* %t25, i32 0, i32 0
    %t26 = bitcast i8* %t27 to i8**
    store i8* null, i8** %t26
    br label %L_endif_3
L_endif_3:
    ; line 2631
    %t28 = load i32, i32* @top
    %t29 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t28
    %t31 = getelementptr inbounds %T_record_9, %T_record_9* %t29, i32 0, i32 8
    %t30 = bitcast i8* %t31 to i8**
    store i8* null, i8** %t30
    ; line 2631
    %t32 = load i32, i32* @top
    %t33 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t32
    %t35 = getelementptr inbounds %T_record_9, %T_record_9* %t33, i32 0, i32 16
    %t34 = bitcast i8* %t35 to i8**
    store i8* null, i8** %t34
    ; line 2631
    %t36 = load i32, i32* @top
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t36
    %t39 = getelementptr inbounds %T_record_9, %T_record_9* %t37, i32 0, i32 24
    %t38 = bitcast i8* %t39 to i8**
    store i8* null, i8** %t38
    ; line 2632
    %t40 = load i32, i32* @top
    %t41 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t40
    %t43 = getelementptr inbounds %T_record_9, %T_record_9* %t41, i32 0, i32 32
    %t42 = bitcast i8* %t43 to i32*
    store i32 0, i32* %t42
    ; line 2633
    %t44 = load i32, i32* @top
    %t45 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t44
    %t47 = getelementptr inbounds %T_record_9, %T_record_9* %t45, i32 0, i32 40
    %t46 = bitcast i8* %t47 to i8**
    %t49 = getelementptr inbounds %Frame_block_procdeclaration_pushlvl, %Frame_block_procdeclaration_pushlvl* %.frame, i32 0, i32 1
    %t48 = load i8*, i8** %t49
    store i8* %t48, i8** %t46
    br label %L_endif_2
L_else_2:
    ; line 2636
    call void @P_error(i32 250)
    br label %L_endif_2
L_endif_2:
    ; nop

    ; epilogue
    ret void
}


; line 2639
;================================================================================
; scope: block_procdeclaration_parameterlist (level : 4)

; activation record
%Frame_block_procdeclaration_parameterlist = type
{
    ; parameters
    i8**,    ; 0: fpar
    %T_setofsys,    ; 1: fsy

    ; variables
    i32,    ; 2: count
    i8*,    ; 3: lcp
    i8*,    ; 4: lcp1
    i8*,    ; 5: lcp2
    i8*,    ; 6: lcp3
    i32,    ; 7: lcs
    i32,    ; 8: lkind
    i32,    ; 9: llc
    i32,    ; 10: lsize
    i8*,    ; 11: lsp
    i32,    ; 12: oldlev
    i32,    ; 13: oldtop
    i1,    ; 14: test

    ; slink
    %Frame_block_procdeclaration*    ; 15
};

; procedure body
define void @P_block_procdeclaration_parameterlist(%Frame_block_procdeclaration* %.slink, %T_setofsys %fsy, i8** %fpar)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration_parameterlist, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 15
    store %Frame_block_procdeclaration* %.slink, %Frame_block_procdeclaration** %t1
    %t2 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 0
    store i8** %fpar, i8*** %t2
    %t3 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 1
    store %T_setofsys %fsy, %T_setofsys* %t3

    ; body
    ; line 2645
    %t4 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 4
    store i8* null, i8** %t4
    ; line 2646
    %t6 = icmp eq i1 0, true
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2647
    call void @P_error(i32 7)
    ; line 2647
    %t7 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 15
    %t8 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t7
    %t9 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t8, i32 0, i32 10
    %t10 = load %Frame_block*, %Frame_block** %t9
    call void @P_block_skip(%Frame_block* %t10, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 2648
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 8
    br i1 %t12, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2649
    %t16 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 15
    %t17 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t16
    %t15 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t17, i32 0, i32 1
    %t14 = load i1, i1* %t15
    br i1 %t14, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2649
    call void @P_error(i32 119)
    br label %L_endif_3
L_endif_3:
    ; line 2650
    call void @P_insymbol()
    ; line 2651
    %t19 = icmp eq i1 0, true
    br i1 %t19, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2652
    call void @P_error(i32 7)
    ; line 2652
    %t20 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 15
    %t21 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t20
    %t22 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t21, i32 0, i32 10
    %t23 = load %Frame_block*, %Frame_block** %t22
    call void @P_block_skip(%Frame_block* %t23, %T_setofsys %.dummy_set)
    br label %L_endif_4
L_endif_4:
    ; line 2653
    ; line 2788
    %t26 = load i32, i32* @sy
    %t25 = icmp eq i32 %t26, 9
    br i1 %t25, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2789
    call void @P_insymbol()
    ; line 2790
    %t28 = icmp eq i1 0, true
    br i1 %t28, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2791
    call void @P_error(i32 6)
    ; line 2791
    %t29 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 15
    %t30 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t29
    %t31 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t30, i32 0, i32 10
    %t32 = load %Frame_block*, %Frame_block** %t31
    call void @P_block_skip(%Frame_block* %t32, %T_setofsys true)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 2793
    call void @P_error(i32 4)
    br label %L_endif_5
L_endif_5:
    ; line 2794
    %t34 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 6
    store i8* null, i8** %t34
    ; line 2797
    ; line 2809
    %t35 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 0
    %t36 = load i8**, i8*** %t35
    %t38 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 6
    %t37 = load i8*, i8** %t38
    store i8* %t37, i8** %t36
    br label %L_endif_2
L_else_2:
    ; line 2811
    %t39 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 0
    %t40 = load i8**, i8*** %t39
    store i8* null, i8** %t40
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 2910
;================================================================================
; scope: block_body (level : 3)

; types
%T_block_body_array_38 = type [4000 x i8*]

; activation record
%Frame_block_body = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    %T_block_body_array_38,    ; 1: cstptr
    i32,    ; 2: cstptrix
    i32,    ; 3: entname
    i8*,    ; 4: fp
    i32,    ; 5: lcmax
    i8*,    ; 6: lcp
    i32,    ; 7: llc1
    i8*,    ; 8: llcp
    i8*,    ; 9: llp
    %T_idstr,    ; 10: saveid
    i32,    ; 11: segsize
    i32,    ; 12: stacktop
    i1,    ; 13: test
    i32,    ; 14: topmax
    i32,    ; 15: topnew

    ; slink
    %Frame_block*    ; 16
};

; procedure body
define void @P_block_body(%Frame_block* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body, align 8
    %t1 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 4877
    %t6 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t5 = getelementptr inbounds %Frame_block, %Frame_block* %t7, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4877
    %t8 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t11 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t12 = load %Frame_block*, %Frame_block** %t11
    %t10 = getelementptr inbounds %Frame_block, %Frame_block* %t12, i32 0, i32 0
    %t9 = load i8*, i8** %t10
    %t13 = bitcast i8* %t9 to %T_identifier*
    %t15 = getelementptr inbounds %T_identifier, %T_identifier* %t13, i32 0, i32 72
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    store i32 %t16, i32* %t8
    br label %L_endif_1
L_else_1:
    ; line 4878
    %t17 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    call void @P_genlabel(i32* %t17)
    br label %L_endif_1
L_endif_1:
    ; line 4879
    %t18 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 2
    store i32 0, i32* %t18
    ; line 4879
    %t19 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 15
    store i32 32, i32* %t19
    ; line 4879
    %t20 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    store i32 32, i32* %t20
    ; line 4880
    %t22 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t21 = load i32, i32* %t22
    call void @P_block_body_putlabel(%Frame_block_body* %.frame, i32 %t21)
    ; line 4880
    %t23 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    call void @P_genlabel(i32* %t23)
    ; line 4880
    %t24 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    call void @P_genlabel(i32* %t24)
    ; line 4881
    %t26 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t25 = load i32, i32* %t26
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 32, i32 1, i32 %t25)
    ; line 4881
    %t28 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    %t27 = load i32, i32* %t28
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 32, i32 2, i32 %t27)
    ; line 4882
    %t32 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t33 = load %Frame_block*, %Frame_block** %t32
    %t31 = getelementptr inbounds %Frame_block, %Frame_block* %t33, i32 0, i32 0
    %t30 = load i8*, i8** %t31
    %t29 = icmp ne i32 %t30, null
    br i1 %t29, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 4883
    %t34 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 7
    store i32 32, i32* %t34
    ; line 4884
    %t35 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 6
    %t38 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t39 = load %Frame_block*, %Frame_block** %t38
    %t37 = getelementptr inbounds %Frame_block, %Frame_block* %t39, i32 0, i32 0
    %t36 = load i8*, i8** %t37
    %t40 = bitcast i8* %t36 to %T_identifier*
    %t42 = getelementptr inbounds %T_identifier, %T_identifier* %t40, i32 0, i32 56
    %t41 = bitcast i8* %t42 to i8**
    %t43 = load i8*, i8** %t41
    store i8* %t43, i8** %t35
    ; line 4885
    ; nop
    br label %L_endif_2
L_endif_2:
    ; line 4905
    %t44 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 5
    %t45 = load i32, i32* @lc
    store i32 %t45, i32* %t44
    ; line 4906
    call void @P_block_body_addlvl(%Frame_block_body* %.frame)
    ; line 4907
    ; line 4913
    call void @P_block_body_sublvl(%Frame_block_body* %.frame)
    ; line 4914
    %t47 = load i32, i32* @sy
    %t46 = icmp eq i32 %t47, 39
    br i1 %t46, label %L_then_3, label %L_else_3
L_then_3:
    ; line 4914
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 4914
    call void @P_error(i32 13)
    br label %L_endif_3
L_endif_3:
    ; line 4915
    %t48 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 9
    %t49 = load i32, i32* @top
    %t50 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t49
    %t52 = getelementptr inbounds %T_record_9, %T_record_9* %t50, i32 0, i32 8
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** %t51
    store i8* %t53, i8** %t48
    ; line 4916
    ; line 4926
    %t57 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t58 = load %Frame_block*, %Frame_block** %t57
    %t56 = getelementptr inbounds %Frame_block, %Frame_block* %t58, i32 0, i32 0
    %t55 = load i8*, i8** %t56
    %t54 = icmp ne i32 %t55, null
    br i1 %t54, label %L_then_4, label %L_else_4
L_then_4:
    ; line 4928
    %t62 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t63 = load %Frame_block*, %Frame_block** %t62
    %t61 = getelementptr inbounds %Frame_block, %Frame_block* %t63, i32 0, i32 0
    %t60 = load i8*, i8** %t61
    %t64 = bitcast i8* %t60 to %T_identifier*
    %t66 = getelementptr inbounds %T_identifier, %T_identifier* %t64, i32 0, i32 24
    %t65 = bitcast i8* %t66 to i8**
    %t67 = load i8*, i8** %t65
    %t59 = icmp eq i32 %t67, null
    br i1 %t59, label %L_then_5, label %L_else_5
L_then_5:
    ; line 4928
    call void @P_block_body_gen1(%Frame_block_body* %.frame, i32 42, i32 %.dummy.intrin)
    br label %L_endif_5
L_else_5:
    ; line 4929
    %t70 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 16
    %t71 = load %Frame_block*, %Frame_block** %t70
    %t69 = getelementptr inbounds %Frame_block, %Frame_block* %t71, i32 0, i32 0
    %t68 = load i8*, i8** %t69
    %t72 = bitcast i8* %t68 to %T_identifier*
    %t74 = getelementptr inbounds %T_identifier, %T_identifier* %t72, i32 0, i32 24
    %t73 = bitcast i8* %t74 to i8**
    %t75 = load i8*, i8** %t73
    call void @P_block_body_gen0t(%Frame_block_body* %.frame, i32 42, i8* %t75)
    br label %L_endif_5
L_endif_5:
    ; line 4930
    %t76 = load i8*, i8** @parmptr
    %t77 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 5
    call void @P_align(i8* %t76, i32* %t77)
    ; line 4931
    %t78 = load i1, i1* @prcode
    br i1 %t78, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 4932
    %t79 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t79, i32 0, i32 0, i8 108)
    %t81 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t80 = load i32, i32* %t81
    call void @_WriteInteger(i8* %t79, i32 4, i32 0, i32 %t80)
    call void @_WriteChar(i8* %t79, i32 0, i32 0, i8 61)
    %t83 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 5
    %t82 = load i32, i32* %t83
    call void @_WriteInteger(i8* %t79, i32 0, i32 0, i32 %t82)
    call void @_WriteLn(i8* %t79)
    ; line 4933
    %t84 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t84, i32 0, i32 0, i8 108)
    %t86 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    %t85 = load i32, i32* %t86
    call void @_WriteInteger(i8* %t84, i32 4, i32 0, i32 %t85)
    call void @_WriteChar(i8* %t84, i32 0, i32 0, i8 61)
    %t88 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t87 = load i32, i32* %t88
    call void @_WriteInteger(i8* %t84, i32 0, i32 0, i32 %t87)
    call void @_WriteLn(i8* %t84)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_4
L_else_4:
    ; line 4937
    call void @P_block_body_gen1(%Frame_block_body* %.frame, i32 42, i32 %.dummy.intrin)
    ; line 4938
    %t89 = load i8*, i8** @parmptr
    %t90 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 5
    call void @P_align(i8* %t89, i32* %t90)
    ; line 4939
    %t91 = load i1, i1* @prcode
    br i1 %t91, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 4940
    %t92 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t92, i32 0, i32 0, i8 108)
    %t94 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t93 = load i32, i32* %t94
    call void @_WriteInteger(i8* %t92, i32 4, i32 0, i32 %t93)
    call void @_WriteChar(i8* %t92, i32 0, i32 0, i8 61)
    %t96 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 5
    %t95 = load i32, i32* %t96
    call void @_WriteInteger(i8* %t92, i32 0, i32 0, i32 %t95)
    call void @_WriteLn(i8* %t92)
    ; line 4941
    %t97 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t97, i32 0, i32 0, i8 108)
    %t99 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    %t98 = load i32, i32* %t99
    call void @_WriteInteger(i8* %t97, i32 4, i32 0, i32 %t98)
    call void @_WriteChar(i8* %t97, i32 0, i32 0, i8 61)
    %t101 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t100 = load i32, i32* %t101
    call void @_WriteInteger(i8* %t97, i32 0, i32 0, i32 %t100)
    call void @_WriteLn(i8* %t97)
    ; line 4942
    %t102 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t102, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t102)
    br label %L_endif_7
L_endif_7:
    ; line 4944
    store i32 0, i32* @ic
    ; line 4947
    call void @P_block_body_gen1(%Frame_block_body* %.frame, i32 41, i32 0)
    ; line 4947
    %t104 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t103 = load i32, i32* %t104
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 46, i32 0, i32 %t103)
    ; line 4947
    call void @P_block_body_gen0(%Frame_block_body* %.frame, i32 29)
    ; line 4948
    %t105 = load i1, i1* @prcode
    br i1 %t105, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 4949
    %t106 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t106, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t106)
    br label %L_endif_8
L_endif_8:
    ; line 4950
    %t107 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    %t108 = load %T_idstr, %T_idstr* @id
    store %T_idstr %t108, %T_idstr* %t107
    ; line 4951
    ; line 4985
    %t110 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    %t109 = load %T_idstr, %T_idstr* %t110
    store %T_idstr %t109, %T_idstr* @id
    ; line 4986
    %t111 = load i1, i1* @prtables
    br i1 %t111, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 4987
    %t112 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t112)
    ; line 4987
    call void @P_printtables(i1 1)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_4
L_endif_4:
    ; nop

    ; epilogue
    ret void
}


; line 2929
;================================================================================
; scope: block_body_addlvl (level : 4)

; activation record
%Frame_block_body_addlvl = type
{
    ; slink
    %Frame_block_body*    ; 0
};

; procedure body
define void @P_block_body_addlvl(%Frame_block_body* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_addlvl, align 8
    %t1 = getelementptr inbounds %Frame_block_body_addlvl, %Frame_block_body_addlvl* %.frame, i32 0, i32 0
    store %Frame_block_body* %.slink, %Frame_block_body** %t1

    ; body
    ; line 2931
    %t3 = getelementptr inbounds %Frame_block_body_addlvl, %Frame_block_body_addlvl* %.frame, i32 0, i32 0
    %t4 = load %Frame_block_body*, %Frame_block_body** %t3
    %t5 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t4, i32 0, i32 16
    %t6 = load %Frame_block*, %Frame_block** %t5
    %t2 = getelementptr inbounds %Frame_block, %Frame_block* %t6, i32 0, i32 4
    %t10 = getelementptr inbounds %Frame_block_body_addlvl, %Frame_block_body_addlvl* %.frame, i32 0, i32 0
    %t11 = load %Frame_block_body*, %Frame_block_body** %t10
    %t12 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t11, i32 0, i32 16
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t9 = getelementptr inbounds %Frame_block, %Frame_block* %t13, i32 0, i32 4
    %t8 = load i32, i32* %t9
    %t7 = add i32 %t8, 1
    store i32 %t7, i32* %t2

    ; epilogue
    ret void
}


; line 2935
;================================================================================
; scope: block_body_sublvl (level : 4)

; activation record
%Frame_block_body_sublvl = type
{
    ; variables
    i8*,    ; 0: llp

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_sublvl(%Frame_block_body* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_sublvl, align 8
    %t1 = getelementptr inbounds %Frame_block_body_sublvl, %Frame_block_body_sublvl* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1

    ; body
    ; line 2938
    %t3 = getelementptr inbounds %Frame_block_body_sublvl, %Frame_block_body_sublvl* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body*, %Frame_block_body** %t3
    %t5 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t4, i32 0, i32 16
    %t6 = load %Frame_block*, %Frame_block** %t5
    %t2 = getelementptr inbounds %Frame_block, %Frame_block* %t6, i32 0, i32 4
    %t10 = getelementptr inbounds %Frame_block_body_sublvl, %Frame_block_body_sublvl* %.frame, i32 0, i32 1
    %t11 = load %Frame_block_body*, %Frame_block_body** %t10
    %t12 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t11, i32 0, i32 16
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t9 = getelementptr inbounds %Frame_block, %Frame_block* %t13, i32 0, i32 4
    %t8 = load i32, i32* %t9
    %t7 = sub i32 %t8, 1
    store i32 %t7, i32* %t2
    ; line 2941
    %t14 = getelementptr inbounds %Frame_block_body_sublvl, %Frame_block_body_sublvl* %.frame, i32 0, i32 0
    %t15 = load i32, i32* @top
    %t16 = getelementptr inbounds %T_array_8, %T_array_8* @display, i32 0, i32 %t15
    %t18 = getelementptr inbounds %T_record_9, %T_record_9* %t16, i32 0, i32 8
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** %t17
    store i8* %t19, i8** %t14
    ; line 2942

    ; epilogue
    ret void
}


; line 2948
;================================================================================
; scope: block_body_mes (level : 4)

; activation record
%Frame_block_body_mes = type
{
    ; parameters
    i32,    ; 0: i

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_mes(%Frame_block_body* %.slink, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_mes, align 8
    %t1 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2

    ; body
    ; line 2949
    %t4 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t5 = load %Frame_block_body*, %Frame_block_body** %t4
    %t3 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t5, i32 0, i32 15
    %t9 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    %t8 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t10, i32 0, i32 15
    %t7 = load i32, i32* %t8
    %t13 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 0
    %t12 = load i32, i32* %t13
    %t14 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 %t12
    %t15 = load i32, i32* %t14
    %t11 = mul i32 %t15, 1
    %t6 = add i32 %t7, %t11
    store i32 %t6, i32* %t3
    ; line 2950
    %t19 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t20 = load %Frame_block_body*, %Frame_block_body** %t19
    %t18 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t20, i32 0, i32 15
    %t17 = load i32, i32* %t18
    %t23 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    %t22 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t24, i32 0, i32 14
    %t21 = load i32, i32* %t22
    %t16 = icmp sgt i32 %t17, %t21
    br i1 %t16, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2950
    %t26 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    %t25 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t27, i32 0, i32 14
    %t30 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t31 = load %Frame_block_body*, %Frame_block_body** %t30
    %t29 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t31, i32 0, i32 15
    %t28 = load i32, i32* %t29
    store i32 %t28, i32* %t25
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2953
;================================================================================
; scope: block_body_putic (level : 4)

; activation record
%Frame_block_body_putic = type
{
    ; slink
    %Frame_block_body*    ; 0
};

; procedure body
define void @P_block_body_putic(%Frame_block_body* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_putic, align 8
    %t1 = getelementptr inbounds %Frame_block_body_putic, %Frame_block_body_putic* %.frame, i32 0, i32 0
    store %Frame_block_body* %.slink, %Frame_block_body** %t1

    ; body
    ; line 2954
    %t4 = load i32, i32* @ic
    %t3 = srem i32 %t4, 10
    %t2 = icmp eq i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2954
    %t5 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 105)
    %t6 = load i32, i32* @ic
    call void @_WriteInteger(i8* %t5, i32 5, i32 0, i32 %t6)
    call void @_WriteLn(i8* %t5)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2956
;================================================================================
; scope: block_body_gen0 (level : 4)

; activation record
%Frame_block_body_gen0 = type
{
    ; parameters
    i32,    ; 0: fop

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_gen0(%Frame_block_body* %.slink, i32 %fop)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen0, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2

    ; body
    ; line 2958
    %t3 = load i1, i1* @prcode
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2958
    %t4 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 1
    %t5 = load %Frame_block_body*, %Frame_block_body** %t4
    call void @P_block_body_putic(%Frame_block_body* %t5)
    ; line 2958
    %t6 = load %T_text, %T_text* @prr
    %t8 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t7
    call void @_WriteString(i8* %t6, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t9, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t6)
    br label %L_endif_1
L_endif_1:
    ; line 2959
    %t11 = load i32, i32* @ic
    %t10 = add i32 %t11, 1
    store i32 %t10, i32* @ic
    ; line 2959
    %t12 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 1
    %t13 = load %Frame_block_body*, %Frame_block_body** %t12
    %t15 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    call void @P_block_body_mes(%Frame_block_body* %t13, i32 %t14)

    ; epilogue
    ret void
}


; line 2962
;================================================================================
; scope: block_body_gen1 (level : 4)

; activation record
%Frame_block_body_gen1 = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp2

    ; variables
    i32,    ; 2: j
    i32,    ; 3: k
    i8*,    ; 4: p

    ; slink
    %Frame_block_body*    ; 5
};

; procedure body
define void @P_block_body_gen1(%Frame_block_body* %.slink, i32 %fop, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen1, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    store i32 %fp2, i32* %t3

    ; body
    ; line 2965
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2966
    %t5 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 2966
    %t7 = load %T_text, %T_text* @prr
    %t9 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t8
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t10, i32 0, i32 0), i32 4)
    ; line 2967
    %t13 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t12 = load i32, i32* %t13
    %t11 = icmp eq i32 %t12, 30
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2968
    %t14 = load %T_text, %T_text* @prr
    %t16 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 %t15
    call void @_WriteString(i8* %t14, i32 12, i32 0, i8* getelementptr inbounds (%T_array_29, %T_array_29* %t17, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t14)
    ; line 2969
    %t19 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t20 = load %Frame_block_body*, %Frame_block_body** %t19
    %t18 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t20, i32 0, i32 15
    %t24 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    %t23 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t25, i32 0, i32 15
    %t22 = load i32, i32* %t23
    %t28 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t27 = load i32, i32* %t28
    %t29 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 %t27
    %t30 = load i32, i32* %t29
    %t26 = mul i32 %t30, 1
    %t21 = add i32 %t22, %t26
    store i32 %t21, i32* %t18
    ; line 2970
    %t34 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t35 = load %Frame_block_body*, %Frame_block_body** %t34
    %t33 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t35, i32 0, i32 15
    %t32 = load i32, i32* %t33
    %t38 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t39 = load %Frame_block_body*, %Frame_block_body** %t38
    %t37 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t39, i32 0, i32 14
    %t36 = load i32, i32* %t37
    %t31 = icmp sgt i32 %t32, %t36
    br i1 %t31, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2970
    %t41 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t42 = load %Frame_block_body*, %Frame_block_body** %t41
    %t40 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t42, i32 0, i32 14
    %t45 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t46 = load %Frame_block_body*, %Frame_block_body** %t45
    %t44 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t46, i32 0, i32 15
    %t43 = load i32, i32* %t44
    store i32 %t43, i32* %t40
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_else_2:
    ; line 2974
    %t49 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t48 = load i32, i32* %t49
    %t47 = icmp eq i32 %t48, 38
    br i1 %t47, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2975
    %t50 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 4
    %t52 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t53 = load %Frame_block_body*, %Frame_block_body** %t52
    %t51 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t53, i32 0, i32 1
    %t55 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t54 = load i32, i32* %t55
    %t56 = getelementptr inbounds %T_block_body_array_38, %T_block_body_array_38* %t51, i32 0, i32 %t54
    %t57 = load i8*, i8** %t56
    %t58 = bitcast i8* %t57 to %T_constant*
    %t60 = getelementptr inbounds %T_constant, %T_constant* %t58, i32 0, i32 16
    %t59 = bitcast i8* %t60 to i8**
    %t61 = load i8*, i8** %t59
    store i8* %t61, i8** %t50
    ; line 2975
    %t62 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 2
    store i32 1, i32* %t62
    ; line 2976
    %t63 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t63, i32 0, i32 0, i8 32)
    %t65 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t66 = load %Frame_block_body*, %Frame_block_body** %t65
    %t64 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t66, i32 0, i32 1
    %t68 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t67 = load i32, i32* %t68
    %t69 = getelementptr inbounds %T_block_body_array_38, %T_block_body_array_38* %t64, i32 0, i32 %t67
    %t70 = load i8*, i8** %t69
    %t71 = bitcast i8* %t70 to %T_constant*
    %t73 = getelementptr inbounds %T_constant, %T_constant* %t71, i32 0, i32 12
    %t72 = bitcast i8* %t73 to i32*
    %t74 = load i32, i32* %t72
    call void @_WriteInteger(i8* %t63, i32 4, i32 0, i32 %t74)
    call void @_WriteString(i8* %t63, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 2)
    ; line 2977
    ; line 2985
    %t75 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t75, i32 0, i32 0, i8 39)
    call void @_WriteLn(i8* %t75)
    br label %L_endif_4
L_else_4:
    ; line 2987
    %t78 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t77 = load i32, i32* %t78
    %t76 = icmp eq i32 %t77, 42
    br i1 %t76, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2987
    %t79 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t79, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteLn(i8* %t79)
    br label %L_endif_5
L_else_5:
    ; line 2988
    %t82 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t81 = load i32, i32* %t82
    %t80 = icmp eq i32 %t81, 67
    br i1 %t80, label %L_then_6, label %L_else_6
L_then_6:
    ; line 2988
    %t83 = load %T_text, %T_text* @prr
    %t85 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t84 = load i32, i32* %t85
    call void @_WriteInteger(i8* %t83, i32 4, i32 0, i32 %t84)
    call void @_WriteLn(i8* %t83)
    br label %L_endif_6
L_else_6:
    ; line 2989
    %t86 = load %T_text, %T_text* @prr
    %t88 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t87 = load i32, i32* %t88
    call void @_WriteInteger(i8* %t86, i32 12, i32 0, i32 %t87)
    call void @_WriteLn(i8* %t86)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 2990
    %t89 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 5
    %t90 = load %Frame_block_body*, %Frame_block_body** %t89
    %t92 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t91 = load i32, i32* %t92
    call void @P_block_body_mes(%Frame_block_body* %t90, i32 %t91)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2993
    %t94 = load i32, i32* @ic
    %t93 = add i32 %t94, 1
    store i32 %t93, i32* @ic

    ; epilogue
    ret void
}


; line 2996
;================================================================================
; scope: block_body_gen2 (level : 4)

; activation record
%Frame_block_body_gen2 = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp1
    i32,    ; 2: fp2

    ; variables
    i32,    ; 3: k

    ; slink
    %Frame_block_body*    ; 4
};

; procedure body
define void @P_block_body_gen2(%Frame_block_body* %.slink, i32 %fop, i32 %fp1, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen2, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 4
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 1
    store i32 %fp1, i32* %t3
    %t4 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 2
    store i32 %fp2, i32* %t4

    ; body
    ; line 2999
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3000
    %t6 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 4
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 3000
    %t8 = load %T_text, %T_text* @prr
    %t10 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t9
    call void @_WriteString(i8* %t8, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t11, i32 0, i32 0), i32 4)
    ; line 3001
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 3029
    %t13 = load i32, i32* @ic
    %t12 = add i32 %t13, 1
    store i32 %t12, i32* @ic
    ; line 3029
    %t14 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 4
    %t15 = load %Frame_block_body*, %Frame_block_body** %t14
    %t17 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 0
    %t16 = load i32, i32* %t17
    call void @P_block_body_mes(%Frame_block_body* %t15, i32 %t16)

    ; epilogue
    ret void
}


; line 3032
;================================================================================
; scope: block_body_gentypindicator (level : 4)

; activation record
%Frame_block_body_gentypindicator = type
{
    ; parameters
    i8*,    ; 0: fsp

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_gentypindicator(%Frame_block_body* %.slink, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gentypindicator, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gentypindicator, %Frame_block_body_gentypindicator* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gentypindicator, %Frame_block_body_gentypindicator* %.frame, i32 0, i32 0
    store i8* %fsp, i8** %t2

    ; body
    ; line 3034
    %t5 = getelementptr inbounds %Frame_block_body_gentypindicator, %Frame_block_body_gentypindicator* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3036
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3054
;================================================================================
; scope: block_body_gen0t (level : 4)

; activation record
%Frame_block_body_gen0t = type
{
    ; parameters
    i32,    ; 0: fop
    i8*,    ; 1: fsp

    ; slink
    %Frame_block_body*    ; 2
};

; procedure body
define void @P_block_body_gen0t(%Frame_block_body* %.slink, i32 %fop, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen0t, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 1
    store i8* %fsp, i8** %t3

    ; body
    ; line 3056
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3057
    %t5 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 3058
    %t7 = load %T_text, %T_text* @prr
    %t9 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t8
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t10, i32 0, i32 0), i32 4)
    ; line 3059
    %t11 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t12 = load %Frame_block_body*, %Frame_block_body** %t11
    %t14 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 1
    %t13 = load i8*, i8** %t14
    call void @P_block_body_gentypindicator(%Frame_block_body* %t12, i8* %t13)
    ; line 3060
    %t15 = load %T_text, %T_text* @prr
    call void @_WriteLn(i8* %t15)
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 3062
    %t17 = load i32, i32* @ic
    %t16 = add i32 %t17, 1
    store i32 %t16, i32* @ic
    ; line 3062
    %t18 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_block_body_mes(%Frame_block_body* %t19, i32 %t20)

    ; epilogue
    ret void
}


; line 3065
;================================================================================
; scope: block_body_gen1t (level : 4)

; activation record
%Frame_block_body_gen1t = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp2
    i8*,    ; 2: fsp

    ; slink
    %Frame_block_body*    ; 3
};

; procedure body
define void @P_block_body_gen1t(%Frame_block_body* %.slink, i32 %fop, i32 %fp2, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen1t, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 1
    store i32 %fp2, i32* %t3
    %t4 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 2
    store i8* %fsp, i8** %t4

    ; body
    ; line 3067
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3068
    %t6 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 3069
    %t8 = load %T_text, %T_text* @prr
    %t10 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t9
    call void @_WriteString(i8* %t8, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t11, i32 0, i32 0), i32 4)
    ; line 3070
    %t12 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t13 = load %Frame_block_body*, %Frame_block_body** %t12
    %t15 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 2
    %t14 = load i8*, i8** %t15
    call void @P_block_body_gentypindicator(%Frame_block_body* %t13, i8* %t14)
    ; line 3071
    %t16 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t16, i32 0, i32 0, i8 32)
    %t18 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    call void @_WriteInteger(i8* %t16, i32 11, i32 0, i32 %t17)
    call void @_WriteLn(i8* %t16)
    br label %L_endif_1
L_endif_1:
    ; line 3073
    %t20 = load i32, i32* @ic
    %t19 = add i32 %t20, 1
    store i32 %t19, i32* @ic
    ; line 3073
    %t21 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t22 = load %Frame_block_body*, %Frame_block_body** %t21
    %t24 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 0
    %t23 = load i32, i32* %t24
    call void @P_block_body_mes(%Frame_block_body* %t22, i32 %t23)

    ; epilogue
    ret void
}


; line 3076
;================================================================================
; scope: block_body_gen2t (level : 4)

; activation record
%Frame_block_body_gen2t = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp1
    i32,    ; 2: fp2
    i8*,    ; 3: fsp

    ; slink
    %Frame_block_body*    ; 4
};

; procedure body
define void @P_block_body_gen2t(%Frame_block_body* %.slink, i32 %fop, i32 %fp1, i32 %fp2, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen2t, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 1
    store i32 %fp1, i32* %t3
    %t4 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 2
    store i32 %fp2, i32* %t4
    %t5 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 3
    store i8* %fsp, i8** %t5

    ; body
    ; line 3078
    %t6 = load i1, i1* @prcode
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3079
    %t7 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    call void @P_block_body_putic(%Frame_block_body* %t8)
    ; line 3080
    %t9 = load %T_text, %T_text* @prr
    %t11 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t10
    call void @_WriteString(i8* %t9, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t12, i32 0, i32 0), i32 4)
    ; line 3081
    %t13 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t14 = load %Frame_block_body*, %Frame_block_body** %t13
    %t16 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 3
    %t15 = load i8*, i8** %t16
    call void @P_block_body_gentypindicator(%Frame_block_body* %t14, i8* %t15)
    ; line 3082
    %t17 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 32)
    %t19 = mul i32 5, %.dummy.intrin
    %t18 = add i32 3, %t19
    %t21 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 1
    %t20 = load i32, i32* %t21
    call void @_WriteInteger(i8* %t17, i32 %t18, i32 0, i32 %t20)
    %t23 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 2
    %t22 = load i32, i32* %t23
    call void @_WriteInteger(i8* %t17, i32 11, i32 0, i32 %t22)
    call void @_WriteLn(i8* %t17)
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 3084
    %t25 = load i32, i32* @ic
    %t24 = add i32 %t25, 1
    store i32 %t24, i32* @ic
    ; line 3084
    %t26 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    %t29 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 0
    %t28 = load i32, i32* %t29
    call void @P_block_body_mes(%Frame_block_body* %t27, i32 %t28)

    ; epilogue
    ret void
}


; line 3087
;================================================================================
; scope: block_body_load (level : 4)

; activation record
%Frame_block_body_load = type
{
    ; slink
    %Frame_block_body*    ; 0
};

; procedure body
define void @P_block_body_load(%Frame_block_body* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_load, align 8
    %t1 = getelementptr inbounds %Frame_block_body_load, %Frame_block_body_load* %.frame, i32 0, i32 0
    store %Frame_block_body* %.slink, %Frame_block_body** %t1

    ; body
    ; line 3090
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3092
    ; line 3119
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t6 = bitcast i8* %t7 to i32*
    store i32 2, i32* %t6
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3123
;================================================================================
; scope: block_body_store (level : 4)

; activation record
%Frame_block_body_store = type
{
    ; parameters
    %T_attr*,    ; 0: fattr

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_store(%Frame_block_body* %.slink, %T_attr* %fattr)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_store, align 8
    %t1 = getelementptr inbounds %Frame_block_body_store, %Frame_block_body_store* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_store, %Frame_block_body_store* %.frame, i32 0, i32 0
    store %T_attr* %fattr, %T_attr** %t2

    ; body
    ; line 3126
    %t4 = getelementptr inbounds %Frame_block_body_store, %Frame_block_body_store* %.frame, i32 0, i32 0
    %t5 = load %T_attr*, %T_attr** %t4
    %t7 = getelementptr inbounds %T_attr, %T_attr* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    %t8 = load i8*, i8** %t6
    %t3 = icmp ne i32 %t8, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3127
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3136
;================================================================================
; scope: block_body_loadaddress (level : 4)

; activation record
%Frame_block_body_loadaddress = type
{
    ; slink
    %Frame_block_body*    ; 0
};

; procedure body
define void @P_block_body_loadaddress(%Frame_block_body* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_loadaddress, align 8
    %t1 = getelementptr inbounds %Frame_block_body_loadaddress, %Frame_block_body_loadaddress* %.frame, i32 0, i32 0
    store %Frame_block_body* %.slink, %Frame_block_body** %t1

    ; body
    ; line 3139
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3141
    ; line 3159
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t6 = bitcast i8* %t7 to i32*
    store i32 1, i32* %t6
    ; line 3159
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 12
    %t8 = bitcast i8* %t9 to i32*
    store i32 1, i32* %t8
    ; line 3159
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 16
    %t10 = bitcast i8* %t11 to i32*
    store i32 0, i32* %t10
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3164
;================================================================================
; scope: block_body_genfjp (level : 4)

; activation record
%Frame_block_body_genfjp = type
{
    ; parameters
    i32,    ; 0: faddr

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_genfjp(%Frame_block_body* %.slink, i32 %faddr)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_genfjp, align 8
    %t1 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 0
    store i32 %faddr, i32* %t2

    ; body
    ; line 3165
    %t3 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body*, %Frame_block_body** %t3
    call void @P_block_body_load(%Frame_block_body* %t4)
    ; line 3166
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    %t8 = load i8*, i8** %t6
    %t5 = icmp ne i32 %t8, null
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3167
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    %t13 = load i8*, i8** @boolptr
    %t9 = icmp ne i32 %t12, %t13
    br i1 %t9, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3167
    call void @P_error(i32 144)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3168
    %t14 = load i1, i1* @prcode
    br i1 %t14, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3168
    %t15 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_putic(%Frame_block_body* %t16)
    ; line 3168
    %t17 = load %T_text, %T_text* @prr
    %t18 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 33
    call void @_WriteString(i8* %t17, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t18, i32 0, i32 0), i32 4)
    call void @_WriteString(i8* %t17, i32 8, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 2)
    %t20 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    call void @_WriteInteger(i8* %t17, i32 4, i32 0, i32 %t19)
    call void @_WriteLn(i8* %t17)
    br label %L_endif_3
L_endif_3:
    ; line 3169
    %t22 = load i32, i32* @ic
    %t21 = add i32 %t22, 1
    store i32 %t21, i32* @ic
    ; line 3169
    %t23 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    call void @P_block_body_mes(%Frame_block_body* %t24, i32 33)

    ; epilogue
    ret void
}


; line 3172
;================================================================================
; scope: block_body_genujpxjp (level : 4)

; activation record
%Frame_block_body_genujpxjp = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp2

    ; slink
    %Frame_block_body*    ; 2
};

; procedure body
define void @P_block_body_genujpxjp(%Frame_block_body* %.slink, i32 %fop, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_genujpxjp, align 8
    %t1 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 2
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 1
    store i32 %fp2, i32* %t3

    ; body
    ; line 3174
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3175
    %t5 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 2
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 3175
    %t7 = load %T_text, %T_text* @prr
    %t9 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t8
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t10, i32 0, i32 0), i32 4)
    call void @_WriteString(i8* %t7, i32 8, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 2)
    %t12 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 1
    %t11 = load i32, i32* %t12
    call void @_WriteInteger(i8* %t7, i32 4, i32 0, i32 %t11)
    call void @_WriteLn(i8* %t7)
    br label %L_endif_1
L_endif_1:
    ; line 3176
    %t14 = load i32, i32* @ic
    %t13 = add i32 %t14, 1
    store i32 %t13, i32* @ic
    ; line 3176
    %t15 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 2
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    %t18 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 0
    %t17 = load i32, i32* %t18
    call void @P_block_body_mes(%Frame_block_body* %t16, i32 %t17)

    ; epilogue
    ret void
}


; line 3179
;================================================================================
; scope: block_body_genipj (level : 4)

; activation record
%Frame_block_body_genipj = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp1
    i32,    ; 2: fp2

    ; slink
    %Frame_block_body*    ; 3
};

; procedure body
define void @P_block_body_genipj(%Frame_block_body* %.slink, i32 %fop, i32 %fp1, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_genipj, align 8
    %t1 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 3
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 1
    store i32 %fp1, i32* %t3
    %t4 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 2
    store i32 %fp2, i32* %t4

    ; body
    ; line 3181
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3182
    %t6 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 3182
    %t8 = load %T_text, %T_text* @prr
    %t10 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t9
    call void @_WriteString(i8* %t8, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t11, i32 0, i32 0), i32 4)
    %t13 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t13
    call void @_WriteInteger(i8* %t8, i32 4, i32 0, i32 %t12)
    call void @_WriteString(i8* %t8, i32 8, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 2)
    %t15 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 2
    %t14 = load i32, i32* %t15
    call void @_WriteInteger(i8* %t8, i32 4, i32 0, i32 %t14)
    call void @_WriteLn(i8* %t8)
    br label %L_endif_1
L_endif_1:
    ; line 3183
    %t17 = load i32, i32* @ic
    %t16 = add i32 %t17, 1
    store i32 %t16, i32* @ic
    ; line 3183
    %t18 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %Frame_block_body_genipj, %Frame_block_body_genipj* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_block_body_mes(%Frame_block_body* %t19, i32 %t20)

    ; epilogue
    ret void
}


; line 3186
;================================================================================
; scope: block_body_gencupent (level : 4)

; activation record
%Frame_block_body_gencupent = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp1
    i32,    ; 2: fp2

    ; slink
    %Frame_block_body*    ; 3
};

; procedure body
define void @P_block_body_gencupent(%Frame_block_body* %.slink, i32 %fop, i32 %fp1, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gencupent, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 3
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 1
    store i32 %fp1, i32* %t3
    %t4 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 2
    store i32 %fp2, i32* %t4

    ; body
    ; line 3188
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3189
    %t6 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 3190
    %t10 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t8 = icmp eq i32 %t9, 32
    br i1 %t8, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3191
    %t13 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t13
    %t11 = icmp eq i32 %t12, 1
    br i1 %t11, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3191
    %t14 = load %T_text, %T_text* @prr
    %t16 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t15
    call void @_WriteString(i8* %t14, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t17, i32 0, i32 0), i32 4)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 115)
    call void @_WriteChar(i8* %t14, i32 8, i32 0, i8 108)
    %t19 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    call void @_WriteInteger(i8* %t14, i32 4, i32 0, i32 %t18)
    call void @_WriteLn(i8* %t14)
    br label %L_endif_3
L_else_3:
    ; line 3192
    %t20 = load %T_text, %T_text* @prr
    %t22 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    %t23 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t21
    call void @_WriteString(i8* %t20, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t23, i32 0, i32 0), i32 4)
    call void @_WriteChar(i8* %t20, i32 0, i32 0, i8 101)
    call void @_WriteChar(i8* %t20, i32 8, i32 0, i8 108)
    %t25 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 2
    %t24 = load i32, i32* %t25
    call void @_WriteInteger(i8* %t20, i32 4, i32 0, i32 %t24)
    call void @_WriteLn(i8* %t20)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_else_2:
    ; line 3193
    %t26 = load %T_text, %T_text* @prr
    %t28 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t27 = load i32, i32* %t28
    %t29 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 %t27
    call void @_WriteString(i8* %t26, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t29, i32 0, i32 0), i32 4)
    %t31 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 1
    %t30 = load i32, i32* %t31
    call void @_WriteInteger(i8* %t26, i32 4, i32 0, i32 %t30)
    call void @_WriteChar(i8* %t26, i32 4, i32 0, i8 108)
    %t33 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 2
    %t32 = load i32, i32* %t33
    call void @_WriteInteger(i8* %t26, i32 4, i32 0, i32 %t32)
    call void @_WriteLn(i8* %t26)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3195
    %t35 = load i32, i32* @ic
    %t34 = add i32 %t35, 1
    store i32 %t34, i32* @ic
    ; line 3195
    %t36 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 3
    %t37 = load %Frame_block_body*, %Frame_block_body** %t36
    %t39 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t38 = load i32, i32* %t39
    call void @P_block_body_mes(%Frame_block_body* %t37, i32 %t38)

    ; epilogue
    ret void
}


; line 3198
;================================================================================
; scope: block_body_genlpa (level : 4)

; activation record
%Frame_block_body_genlpa = type
{
    ; parameters
    i32,    ; 0: fp1
    i32,    ; 1: fp2

    ; slink
    %Frame_block_body*    ; 2
};

; procedure body
define void @P_block_body_genlpa(%Frame_block_body* %.slink, i32 %fp1, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_genlpa, align 8
    %t1 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 2
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 0
    store i32 %fp1, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 1
    store i32 %fp2, i32* %t3

    ; body
    ; line 3200
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3201
    %t5 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 2
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 3202
    %t7 = load %T_text, %T_text* @prr
    %t8 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 68
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_20, %T_array_20* %t8, i32 0, i32 0), i32 4)
    %t10 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 1
    %t9 = load i32, i32* %t10
    call void @_WriteInteger(i8* %t7, i32 4, i32 0, i32 %t9)
    call void @_WriteChar(i8* %t7, i32 4, i32 0, i8 108)
    %t12 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 0
    %t11 = load i32, i32* %t12
    call void @_WriteInteger(i8* %t7, i32 4, i32 0, i32 %t11)
    call void @_WriteLn(i8* %t7)
    br label %L_endif_1
L_endif_1:
    ; line 3204
    %t14 = load i32, i32* @ic
    %t13 = add i32 %t14, 1
    store i32 %t13, i32* @ic
    ; line 3204
    %t15 = getelementptr inbounds %Frame_block_body_genlpa, %Frame_block_body_genlpa* %.frame, i32 0, i32 2
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_mes(%Frame_block_body* %t16, i32 68)

    ; epilogue
    ret void
}


; line 3207
;================================================================================
; scope: block_body_checkbnds (level : 4)

; activation record
%Frame_block_body_checkbnds = type
{
    ; parameters
    i8*,    ; 0: fsp

    ; variables
    i32,    ; 1: lmax
    i32,    ; 2: lmin

    ; slink
    %Frame_block_body*    ; 3
};

; procedure body
define void @P_block_body_checkbnds(%Frame_block_body* %.slink, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_checkbnds, align 8
    %t1 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 3
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    store i8* %fsp, i8** %t2

    ; body
    ; line 3210
    %t5 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3211
    %t8 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t7 = load i8*, i8** %t8
    %t9 = load i8*, i8** @intptr
    %t6 = icmp ne i32 %t7, %t9
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3212
    %t12 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t11 = load i8*, i8** %t12
    %t13 = load i8*, i8** @realptr
    %t10 = icmp ne i32 %t11, %t13
    br i1 %t10, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3213
    %t16 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t15 = load i8*, i8** %t16
    %t17 = bitcast i8* %t15 to %T_structure*
    %t19 = getelementptr inbounds %T_structure, %T_structure* %t17, i32 0, i32 20
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i32, i32* %t18
    %t14 = icmp sle i32 %t20, 1
    br i1 %t14, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3215
    %t22 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t21 = load i8*, i8** %t22
    %t23 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 2
    %t24 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 1
    call void @P_getbounds(i8* %t21, i32* %t23, i32* %t24)
    ; line 3216
    %t25 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 3
    %t26 = load %Frame_block_body*, %Frame_block_body** %t25
    %t28 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 2
    %t27 = load i32, i32* %t28
    %t30 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 1
    %t29 = load i32, i32* %t30
    %t32 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t31 = load i8*, i8** %t32
    call void @P_block_body_gen2t(%Frame_block_body* %t26, i32 45, i32 %t27, i32 %t29, i8* %t31)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3220
;================================================================================
; scope: block_body_putlabel (level : 4)

; activation record
%Frame_block_body_putlabel = type
{
    ; parameters
    i32,    ; 0: labname

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_putlabel(%Frame_block_body* %.slink, i32 %labname)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_putlabel, align 8
    %t1 = getelementptr inbounds %Frame_block_body_putlabel, %Frame_block_body_putlabel* %.frame, i32 0, i32 1
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_putlabel, %Frame_block_body_putlabel* %.frame, i32 0, i32 0
    store i32 %labname, i32* %t2

    ; body
    ; line 3221
    %t3 = load i1, i1* @prcode
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3221
    %t4 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t4, i32 0, i32 0, i8 108)
    %t6 = getelementptr inbounds %Frame_block_body_putlabel, %Frame_block_body_putlabel* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    call void @_WriteInteger(i8* %t4, i32 4, i32 0, i32 %t5)
    call void @_WriteLn(i8* %t4)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3224
;================================================================================
; scope: block_body_statement (level : 4)

; activation record
%Frame_block_body_statement = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    i8*,    ; 1: lcp
    i8*,    ; 2: llp

    ; slink
    %Frame_block_body*    ; 3
};

; procedure body
define void @P_block_body_statement(%Frame_block_body* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 4833
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 1
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 4835
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t6 = load i32, i32* @level
    call void @P_searchlabel(i8** %t5, i32 %t6)
    ; line 4836
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t8 = load i8*, i8** %t9
    %t7 = icmp ne i32 %t8, null
    br i1 %t7, label %L_then_2, label %L_else_2
L_then_2:
    ; line 4837
    %t11 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t10 = load i8*, i8** %t11
    %t12 = bitcast i8* %t10 to %T_labl*
    %t14 = getelementptr inbounds %T_labl, %T_labl* %t12, i32 0, i32 8
    %t13 = bitcast i8* %t14 to i1*
    %t15 = load i1, i1* %t13
    br i1 %t15, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 4837
    call void @P_error(i32 165)
    br label %L_endif_3
L_endif_3:
    ; line 4838
    %t17 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t16 = load i8*, i8** %t17
    %t18 = bitcast i8* %t16 to %T_labl*
    %t20 = getelementptr inbounds %T_labl, %T_labl* %t18, i32 0, i32 36
    %t19 = bitcast i8* %t20 to i1*
    store i1 1, i1* %t19
    ; line 4839
    %t22 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t21 = load i8*, i8** %t22
    %t23 = bitcast i8* %t21 to %T_labl*
    %t25 = getelementptr inbounds %T_labl, %T_labl* %t23, i32 0, i32 24
    %t24 = bitcast i8* %t25 to i32*
    %t28 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t29 = load %Frame_block_body*, %Frame_block_body** %t28
    %t30 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t29, i32 0, i32 16
    %t31 = load %Frame_block*, %Frame_block** %t30
    %t27 = getelementptr inbounds %Frame_block, %Frame_block* %t31, i32 0, i32 4
    %t26 = load i32, i32* %t27
    store i32 %t26, i32* %t24
    ; line 4840
    %t33 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t32 = load i8*, i8** %t33
    %t34 = bitcast i8* %t32 to %T_labl*
    %t36 = getelementptr inbounds %T_labl, %T_labl* %t34, i32 0, i32 8
    %t35 = bitcast i8* %t36 to i1*
    store i1 1, i1* %t35
    ; line 4841
    br label %L_AND_expr_4
L_AND_expr_4:
    %t39 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t38 = load i8*, i8** %t39
    %t40 = bitcast i8* %t38 to %T_labl*
    %t42 = getelementptr inbounds %T_labl, %T_labl* %t40, i32 0, i32 28
    %t41 = bitcast i8* %t42 to i1*
    %t43 = load i1, i1* %t41
    br i1 %t43, label %L_AND_eval_4, label %L_AND_shortcut_4
L_AND_eval_4:
    %t47 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t48 = load %Frame_block_body*, %Frame_block_body** %t47
    %t49 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t48, i32 0, i32 16
    %t50 = load %Frame_block*, %Frame_block** %t49
    %t46 = getelementptr inbounds %Frame_block, %Frame_block* %t50, i32 0, i32 4
    %t45 = load i32, i32* %t46
    %t44 = icmp sgt i32 %t45, 1
    br label %L_AND_shortcut_4
L_AND_shortcut_4:
    %t37 = phi [%t44, %L_AND_eval_4], [false, %L_AND_expr_4]
    br i1 %t37, label %L_then_5, label %L_else_5
L_then_5:
    ; line 4842
    call void @P_error(i32 184)
    br label %L_endif_5
L_else_5:
    ; line 4843
    %t53 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t52 = load i8*, i8** %t53
    %t54 = bitcast i8* %t52 to %T_labl*
    %t56 = getelementptr inbounds %T_labl, %T_labl* %t54, i32 0, i32 32
    %t55 = bitcast i8* %t56 to i32*
    %t57 = load i32, i32* %t55
    %t60 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t61 = load %Frame_block_body*, %Frame_block_body** %t60
    %t62 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t61, i32 0, i32 16
    %t63 = load %Frame_block*, %Frame_block** %t62
    %t59 = getelementptr inbounds %Frame_block, %Frame_block* %t63, i32 0, i32 4
    %t58 = load i32, i32* %t59
    %t51 = icmp slt i32 %t57, %t58
    br i1 %t51, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 4844
    call void @P_error(i32 186)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    ; line 4845
    %t64 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t65 = load %Frame_block_body*, %Frame_block_body** %t64
    %t67 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t66 = load i8*, i8** %t67
    %t68 = bitcast i8* %t66 to %T_labl*
    %t70 = getelementptr inbounds %T_labl, %T_labl* %t68, i32 0, i32 16
    %t69 = bitcast i8* %t70 to i32*
    %t71 = load i32, i32* %t69
    call void @P_block_body_putlabel(%Frame_block_body* %t65, i32 %t71)
    ; nop
    br label %L_endif_2
L_else_2:
    ; line 4847
    call void @P_error(i32 167)
    ; line 4848
    %t72 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    call void @P_newlabel(i8** %t72)
    br label %L_endif_2
L_endif_2:
    ; line 4850
    call void @P_insymbol()
    ; line 4851
    %t74 = load i32, i32* @sy
    %t73 = icmp eq i32 %t74, 16
    br i1 %t73, label %L_then_7, label %L_else_7
L_then_7:
    ; line 4851
    call void @P_insymbol()
    br label %L_endif_7
L_else_7:
    ; line 4851
    call void @P_error(i32 5)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_1
L_endif_1:
    ; line 4853
    %t76 = icmp eq i1 0, true
    br i1 %t76, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 4854
    call void @P_error(i32 6)
    ; line 4854
    %t77 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t78 = load %Frame_block_body*, %Frame_block_body** %t77
    %t79 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t78, i32 0, i32 16
    %t80 = load %Frame_block*, %Frame_block** %t79
    %t82 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 0
    %t81 = load %T_setofsys, %T_setofsys* %t82
    call void @P_block_skip(%Frame_block* %t80, %T_setofsys %t81)
    br label %L_endif_8
L_endif_8:
    ; line 4855
    br i1 true, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 4857
    ; line 4871
    %t85 = icmp eq i1 0, true
    br i1 %t85, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 4872
    call void @P_error(i32 6)
    ; line 4872
    %t86 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t87 = load %Frame_block_body*, %Frame_block_body** %t86
    %t88 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t87, i32 0, i32 16
    %t89 = load %Frame_block*, %Frame_block** %t88
    %t91 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 0
    %t90 = load %T_setofsys, %T_setofsys* %t91
    call void @P_block_skip(%Frame_block* %t89, %T_setofsys %t90)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:

    ; epilogue
    ret void
}


; line 3229
;================================================================================
; scope: block_body_statement_selector (level : 5)

; activation record
%Frame_block_body_statement_selector = type
{
    ; parameters
    i8*,    ; 0: fcp
    %T_setofsys,    ; 1: fsys

    ; variables
    %T_attr,    ; 2: lattr
    i8*,    ; 3: lcp
    i32,    ; 4: lmax
    i32,    ; 5: lmin
    i32,    ; 6: lsize

    ; slink
    %Frame_block_body_statement*    ; 7
};

; procedure body
define void @P_block_body_statement_selector(%Frame_block_body_statement* %.slink, %T_setofsys %fsys, i8* %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_selector, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 7
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 0
    store i8* %fcp, i8** %t2
    %t3 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 1
    store %T_setofsys %fsys, %T_setofsys* %t3

    ; body
    ; line 3240
    %t5 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 24
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t4
    ; line 3240
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t12 = bitcast i8* %t13 to i32*
    store i32 1, i32* %t12
    ; line 3241
    ; line 3277
    %t15 = icmp eq i1 0, true
    br i1 %t15, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3278
    call void @P_error(i32 59)
    ; line 3278
    %t16 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 7
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t20 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t19, i32 0, i32 16
    %t21 = load %Frame_block*, %Frame_block** %t20
    call void @P_block_skip(%Frame_block* %t21, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 3279

    ; epilogue
    ret void
}


; line 3231
;================================================================================
; scope: block_body_statement_selector_schblk (level : 6)

; activation record
%Frame_block_body_statement_selector_schblk = type
{
    ; parameters
    i8*,    ; 0: fcp

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: f
    i32,    ; 3: i

    ; slink
    %Frame_block_body_statement_selector*    ; 4
};

; function body
define i1 @F_block_body_statement_selector_schblk(%Frame_block_body_statement_selector* %.slink, i8* %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_selector_schblk, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %.frame, i32 0, i32 4
    store %Frame_block_body_statement_selector* %.slink, %Frame_block_body_statement_selector** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %.frame, i32 0, i32 0
    store i8* %fcp, i8** %t2

    ; body
    ; line 3234
    %t3 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %.frame, i32 0, i32 2
    store i1 0, i1* %t3
    ; line 3235
    ; line 3236
    %t4 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %.frame, i32 0, i32 2
    %t5 = load i1, i1* %t6
    store i1 %t5, i1* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %.frame, i32 0, i32 1
    %t8 = load i1, i1* %t7
    ret i1 %t8
}


; line 3386
;================================================================================
; scope: block_body_statement_call (level : 5)

; activation record
%Frame_block_body_statement_call = type
{
    ; parameters
    i8*,    ; 0: fcp
    %T_setofsys,    ; 1: fsys

    ; variables
    i32,    ; 2: lkey

    ; slink
    %Frame_block_body_statement*    ; 3
};

; procedure body
define void @P_block_body_statement_call(%Frame_block_body_statement* %.slink, %T_setofsys %fsys, i8* %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 3
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    store i8* %fcp, i8** %t2
    %t3 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 1
    store %T_setofsys %fsys, %T_setofsys* %t3

    ; body
    ; line 3972
    %t6 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t7 = bitcast i8* %t5 to %T_identifier*
    %t9 = getelementptr inbounds %T_identifier, %T_identifier* %t7, i32 0, i32 64
    %t8 = bitcast i8* %t9 to i32*
    %t10 = load i32, i32* %t8
    %t4 = icmp eq i32 %t10, 0
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3973
    %t11 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 68
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    store i32 %t17, i32* %t11
    ; line 3974
    %t20 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 44
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t18 = icmp eq i32 %t24, 4
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3976
    %t26 = icmp eq i1 0, true
    br i1 %t26, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3977
    %t28 = load i32, i32* @sy
    %t27 = icmp eq i32 %t28, 8
    br i1 %t27, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3977
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 3977
    call void @P_error(i32 9)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 3978
    ; line 3989
    %t30 = icmp eq i1 0, true
    br i1 %t30, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3990
    %t32 = load i32, i32* @sy
    %t31 = icmp eq i32 %t32, 9
    br i1 %t31, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3990
    call void @P_insymbol()
    br label %L_endif_6
L_else_6:
    ; line 3990
    call void @P_error(i32 4)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_2
L_else_2:
    ; line 3994
    br label %L_OR_expr_7
L_OR_expr_7:
    %t36 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t35 = load i32, i32* %t36
    %t34 = icmp sle i32 %t35, 8
    br i1 %t34, label %L_OR_shortcut_7, label %L_OR_eval_7
L_OR_eval_7:
    %t39 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t38 = load i32, i32* %t39
    %t37 = icmp eq i32 %t38, 16
    br label %L_OR_shortcut_7
L_OR_shortcut_7:
    %t33 = phi [%t37, %L_OR_eval_7], [true, %L_OR_expr_7]
    br i1 %t33, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 3996
    %t41 = load i32, i32* @sy
    %t40 = icmp eq i32 %t41, 8
    br i1 %t40, label %L_then_9, label %L_else_9
L_then_9:
    ; line 3996
    call void @P_insymbol()
    br label %L_endif_9
L_else_9:
    ; line 3996
    call void @P_error(i32 9)
    br label %L_endif_9
L_endif_9:
    ; line 3997
    %t42 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 3
    %t43 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t42
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t43, %T_setofsys %.dummy_set)
    ; line 3997
    %t45 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 3
    %t46 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t45
    %t47 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t46, i32 0, i32 3
    %t48 = load %Frame_block_body*, %Frame_block_body** %t47
    call void @P_block_body_load(%Frame_block_body* %t48)
    br label %L_endif_8
L_endif_8:
    ; line 3999
    ; line 4010
    br label %L_OR_expr_10
L_OR_expr_10:
    %t52 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t51 = load i32, i32* %t52
    %t50 = icmp sle i32 %t51, 8
    br i1 %t50, label %L_OR_shortcut_10, label %L_OR_eval_10
L_OR_eval_10:
    %t55 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t54 = load i32, i32* %t55
    %t53 = icmp eq i32 %t54, 16
    br label %L_OR_shortcut_10
L_OR_shortcut_10:
    %t49 = phi [%t53, %L_OR_eval_10], [true, %L_OR_expr_10]
    br i1 %t49, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 4011
    %t57 = load i32, i32* @sy
    %t56 = icmp eq i32 %t57, 9
    br i1 %t56, label %L_then_12, label %L_else_12
L_then_12:
    ; line 4011
    call void @P_insymbol()
    br label %L_endif_12
L_else_12:
    ; line 4011
    call void @P_error(i32 4)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_endif_11:
    br label %L_endif_2
L_endif_2:
    ; nop
    br label %L_endif_1
L_else_1:
    ; line 4014
    call void @P_block_body_statement_call_callnonstandard(%Frame_block_body_statement_call* %.frame)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3389
;================================================================================
; scope: block_body_statement_call_variable (level : 6)

; activation record
%Frame_block_body_statement_call_variable = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    i8*,    ; 1: lcp

    ; slink
    %Frame_block_body_statement_call*    ; 2
};

; procedure body
define void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_variable, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 2
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 3392
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 0
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3393
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 1
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t5)
    ; line 3393
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3394
    call void @P_error(i32 2)
    ; line 3394
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 1
    %t7 = load i8*, i8** @uvarptr
    store i8* %t7, i8** %t6
    br label %L_endif_1
L_endif_1:
    ; line 3395
    %t8 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 2
    %t9 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t8
    %t10 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t9, i32 0, i32 3
    %t11 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t10
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 0
    %t12 = load %T_setofsys, %T_setofsys* %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 1
    %t14 = load i8*, i8** %t15
    call void @P_block_body_statement_selector(%Frame_block_body_statement* %t11, %T_setofsys %t12, i8* %t14)

    ; epilogue
    ret void
}


; line 3398
;================================================================================
; scope: block_body_statement_call_getputresetrewriteprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_getputresetrewriteprocedure = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_getputresetrewriteprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_getputresetrewriteprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3399
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 3399
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    ; line 3400
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    %t11 = icmp ne i32 %t14, null
    br i1 %t11, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3401
    %t17 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i8**
    %t18 = load i8*, i8** %t16
    %t19 = bitcast i8* %t18 to %T_structure*
    %t21 = getelementptr inbounds %T_structure, %T_structure* %t19, i32 0, i32 20
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t15 = icmp ne i32 %t22, 6
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3401
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3402
    %t26 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t27 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t26
    %t25 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t27, i32 0, i32 2
    %t24 = load i32, i32* %t25
    %t23 = icmp sle i32 %t24, 2
    br i1 %t23, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3403
    %t30 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t29 = bitcast i8* %t30 to i8**
    %t31 = load i8*, i8** %t29
    %t32 = load i8*, i8** @textptr
    %t28 = icmp eq i32 %t31, %t32
    br i1 %t28, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3403
    %t33 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t34 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t33
    %t35 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t34, i32 0, i32 3
    %t36 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t35
    %t37 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t36, i32 0, i32 3
    %t38 = load %Frame_block_body*, %Frame_block_body** %t37
    %t41 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t42 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t41
    %t40 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t42, i32 0, i32 2
    %t39 = load i32, i32* %t40
    call void @P_block_body_gen1(%Frame_block_body* %t38, i32 30, i32 %t39)
    br label %L_endif_4
L_else_4:
    ; line 3405
    %t45 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t44 = bitcast i8* %t45 to i8**
    %t46 = load i8*, i8** %t44
    %t43 = icmp ne i32 %t46, null
    br i1 %t43, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3406
    %t47 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t48 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t47
    %t49 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t48, i32 0, i32 3
    %t50 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t49
    %t51 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t50, i32 0, i32 3
    %t52 = load %Frame_block_body*, %Frame_block_body** %t51
    %t54 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t53 = bitcast i8* %t54 to i8**
    %t55 = load i8*, i8** %t53
    %t56 = bitcast i8* %t55 to %T_structure*
    %t58 = getelementptr inbounds %T_structure, %T_structure* %t56, i32 0, i32 24
    %t57 = bitcast i8* %t58 to i8**
    %t59 = load i8*, i8** %t57
    %t60 = bitcast i8* %t59 to %T_structure*
    %t62 = getelementptr inbounds %T_structure, %T_structure* %t60, i32 0, i32 12
    %t61 = bitcast i8* %t62 to i32*
    %t63 = load i32, i32* %t61
    call void @P_block_body_gen2(%Frame_block_body* %t52, i32 51, i32 1, i32 %t63)
    br label %L_endif_5
L_endif_5:
    ; line 3407
    %t67 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t68 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t67
    %t66 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t68, i32 0, i32 2
    %t65 = load i32, i32* %t66
    %t64 = icmp eq i32 %t65, 1
    br i1 %t64, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3407
    %t69 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t70 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t69
    %t71 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t70, i32 0, i32 3
    %t72 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t71
    %t73 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t72, i32 0, i32 3
    %t74 = load %Frame_block_body*, %Frame_block_body** %t73
    call void @P_block_body_gen1(%Frame_block_body* %t74, i32 30, i32 38)
    br label %L_endif_6
L_else_6:
    ; line 3408
    %t75 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t76 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t75
    %t77 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t76, i32 0, i32 3
    %t78 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t77
    %t79 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t78, i32 0, i32 3
    %t80 = load %Frame_block_body*, %Frame_block_body** %t79
    call void @P_block_body_gen1(%Frame_block_body* %t80, i32 30, i32 39)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 3411
    %t83 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t82 = bitcast i8* %t83 to i8**
    %t84 = load i8*, i8** %t82
    %t85 = load i8*, i8** @textptr
    %t81 = icmp eq i32 %t84, %t85
    br i1 %t81, label %L_then_7, label %L_else_7
L_then_7:
    ; line 3412
    %t89 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t90 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t89
    %t88 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t90, i32 0, i32 2
    %t87 = load i32, i32* %t88
    %t86 = icmp eq i32 %t87, 3
    br i1 %t86, label %L_then_8, label %L_else_8
L_then_8:
    ; line 3412
    %t91 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t92 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t91
    %t93 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t92, i32 0, i32 3
    %t94 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t93
    %t95 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t94, i32 0, i32 3
    %t96 = load %Frame_block_body*, %Frame_block_body** %t95
    call void @P_block_body_gen1(%Frame_block_body* %t96, i32 30, i32 25)
    br label %L_endif_8
L_else_8:
    ; line 3413
    %t97 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t98 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t97
    %t99 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t98, i32 0, i32 3
    %t100 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t99
    %t101 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t100, i32 0, i32 3
    %t102 = load %Frame_block_body*, %Frame_block_body** %t101
    call void @P_block_body_gen1(%Frame_block_body* %t102, i32 30, i32 26)
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_else_7:
    ; line 3415
    %t106 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t107 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t106
    %t105 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t107, i32 0, i32 2
    %t104 = load i32, i32* %t105
    %t103 = icmp eq i32 %t104, 3
    br i1 %t103, label %L_then_9, label %L_else_9
L_then_9:
    ; line 3415
    %t108 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t109 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t108
    %t110 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t109, i32 0, i32 3
    %t111 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t110
    %t112 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t111, i32 0, i32 3
    %t113 = load %Frame_block_body*, %Frame_block_body** %t112
    call void @P_block_body_gen1(%Frame_block_body* %t113, i32 30, i32 36)
    br label %L_endif_9
L_else_9:
    ; line 3416
    %t114 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewriteprocedure, %Frame_block_body_statement_call_getputresetrewriteprocedure* %.frame, i32 0, i32 0
    %t115 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t114
    %t116 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t115, i32 0, i32 3
    %t117 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t116
    %t118 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t117, i32 0, i32 3
    %t119 = load %Frame_block_body*, %Frame_block_body** %t118
    call void @P_block_body_gen1(%Frame_block_body* %t119, i32 30, i32 37)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 3420
;================================================================================
; scope: block_body_statement_call_pageprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_pageprocedure = type
{
    ; variables
    i32,    ; 0: llev

    ; slink
    %Frame_block_body_statement_call*    ; 1
};

; procedure body
define void @P_block_body_statement_call_pageprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_pageprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_pageprocedure, %Frame_block_body_statement_call_pageprocedure* %.frame, i32 0, i32 1
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3423
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_pageprocedure, %Frame_block_body_statement_call_pageprocedure* %.frame, i32 0, i32 0
    store i32 1, i32* %t2
    ; line 3424
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 8
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3425
    call void @P_insymbol()
    ; line 3426
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_pageprocedure, %Frame_block_body_statement_call_pageprocedure* %.frame, i32 0, i32 1
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t6, %T_setofsys %.dummy_set)
    ; line 3426
    %t8 = getelementptr inbounds %Frame_block_body_statement_call_pageprocedure, %Frame_block_body_statement_call_pageprocedure* %.frame, i32 0, i32 1
    %t9 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t8
    %t10 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t9, i32 0, i32 3
    %t11 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t10
    %t12 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t11, i32 0, i32 3
    %t13 = load %Frame_block_body*, %Frame_block_body** %t12
    call void @P_block_body_loadaddress(%Frame_block_body* %t13)
    ; line 3427
    %t16 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8**
    %t17 = load i8*, i8** %t15
    %t14 = icmp ne i32 %t17, null
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3428
    %t20 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    %t22 = load i8*, i8** @textptr
    %t18 = icmp ne i32 %t21, %t22
    br i1 %t18, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3428
    call void @P_error(i32 116)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 3429
    %t24 = load i32, i32* @sy
    %t23 = icmp eq i32 %t24, 9
    br i1 %t23, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3429
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 3429
    call void @P_error(i32 4)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_1
L_else_1:
    ; line 3431
    %t25 = load i1, i1* @outputhdf
    %t26 = icmp eq i1 0, %t25
    br i1 %t26, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3431
    call void @P_error(i32 176)
    br label %L_endif_5
L_endif_5:
    ; line 3432
    %t27 = getelementptr inbounds %Frame_block_body_statement_call_pageprocedure, %Frame_block_body_statement_call_pageprocedure* %.frame, i32 0, i32 1
    %t28 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t29
    %t31 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t30, i32 0, i32 3
    %t32 = load %Frame_block_body*, %Frame_block_body** %t31
    %t34 = load i32, i32* @level
    %t35 = load i8*, i8** @outputptr
    %t36 = bitcast i8* %t35 to %T_identifier*
    %t38 = getelementptr inbounds %T_identifier, %T_identifier* %t36, i32 0, i32 52
    %t37 = bitcast i8* %t38 to i32*
    %t39 = load i32, i32* %t37
    %t33 = sub i32 %t34, %t39
    %t40 = load i8*, i8** @outputptr
    %t41 = bitcast i8* %t40 to %T_identifier*
    %t43 = getelementptr inbounds %T_identifier, %T_identifier* %t41, i32 0, i32 56
    %t42 = bitcast i8* %t43 to i32*
    %t44 = load i32, i32* %t42
    call void @P_block_body_gen2(%Frame_block_body* %t32, i32 50, i32 %t33, i32 %t44)
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 3434
    %t45 = getelementptr inbounds %Frame_block_body_statement_call_pageprocedure, %Frame_block_body_statement_call_pageprocedure* %.frame, i32 0, i32 1
    %t46 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t45
    %t47 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t46, i32 0, i32 3
    %t48 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t47
    %t49 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t48, i32 0, i32 3
    %t50 = load %Frame_block_body*, %Frame_block_body** %t49
    call void @P_block_body_gen1(%Frame_block_body* %t50, i32 30, i32 24)

    ; epilogue
    ret void
}


; line 3437
;================================================================================
; scope: block_body_statement_call_readprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_readprocedure = type
{
    ; variables
    i1,    ; 0: deffil
    i8*,    ; 1: lsp
    i1,    ; 2: test
    i1,    ; 3: txt

    ; slink
    %Frame_block_body_statement_call*    ; 4
};

; procedure body
define void @P_block_body_statement_call_readprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_readprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3443
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 3
    store i1 1, i1* %t2
    ; line 3443
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 0
    store i1 1, i1* %t3
    ; line 3444
    %t5 = load i32, i32* @sy
    %t4 = icmp eq i32 %t5, 8
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3445
    call void @P_insymbol()
    ; line 3446
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t7 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t6
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t7, %T_setofsys %.dummy_set)
    ; line 3447
    %t9 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 1
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    store i8* %t12, i8** %t9
    ; line 3447
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 2
    store i1 0, i1* %t13
    ; line 3448
    %t16 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 1
    %t15 = load i8*, i8** %t16
    %t14 = icmp ne i32 %t15, null
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3449
    %t19 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 1
    %t18 = load i8*, i8** %t19
    %t20 = bitcast i8* %t18 to %T_structure*
    %t22 = getelementptr inbounds %T_structure, %T_structure* %t20, i32 0, i32 20
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t17 = icmp eq i32 %t23, 6
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3452
    %t24 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 3
    %t27 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 1
    %t26 = load i8*, i8** %t27
    %t28 = load i8*, i8** @textptr
    %t25 = icmp eq i32 %t26, %t28
    store i1 %t25, i1* %t24
    ; line 3453
    br label %L_AND_expr_4
L_AND_expr_4:
    %t31 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 3
    %t30 = load i1, i1* %t31
    %t32 = icmp eq i1 0, %t30
    br i1 %t32, label %L_AND_eval_4, label %L_AND_shortcut_4
L_AND_eval_4:
    %t36 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t37 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t36
    %t35 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t37, i32 0, i32 2
    %t34 = load i32, i32* %t35
    %t33 = icmp eq i32 %t34, 11
    br label %L_AND_shortcut_4
L_AND_shortcut_4:
    %t29 = phi [%t33, %L_AND_eval_4], [false, %L_AND_expr_4]
    br i1 %t29, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3453
    call void @P_error(i32 116)
    br label %L_endif_5
L_endif_5:
    ; line 3454
    %t38 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t39 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t38
    %t40 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t39, i32 0, i32 3
    %t41 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t40
    %t42 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t41, i32 0, i32 3
    %t43 = load %Frame_block_body*, %Frame_block_body** %t42
    call void @P_block_body_loadaddress(%Frame_block_body* %t43)
    ; line 3454
    %t44 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 0
    store i1 0, i1* %t44
    ; line 3455
    %t46 = load i32, i32* @sy
    %t45 = icmp eq i32 %t46, 9
    br i1 %t45, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3456
    %t50 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t51 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t50
    %t49 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t51, i32 0, i32 2
    %t48 = load i32, i32* %t49
    %t47 = icmp eq i32 %t48, 5
    br i1 %t47, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3456
    call void @P_error(i32 116)
    br label %L_endif_7
L_endif_7:
    ; line 3457
    %t52 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 2
    store i1 1, i1* %t52
    br label %L_endif_6
L_else_6:
    ; line 3460
    %t54 = load i32, i32* @sy
    %t53 = icmp ne i32 %t54, 12
    br i1 %t53, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 3461
    call void @P_error(i32 116)
    ; line 3461
    %t55 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t56 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t55
    %t57 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t56, i32 0, i32 3
    %t58 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t57
    %t59 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t58, i32 0, i32 3
    %t60 = load %Frame_block_body*, %Frame_block_body** %t59
    %t61 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t60, i32 0, i32 16
    %t62 = load %Frame_block*, %Frame_block** %t61
    call void @P_block_skip(%Frame_block* %t62, %T_setofsys %.dummy_set)
    br label %L_endif_8
L_endif_8:
    br label %L_endif_6
L_endif_6:
    ; line 3462
    %t65 = load i32, i32* @sy
    %t64 = icmp eq i32 %t65, 12
    br i1 %t64, label %L_then_9, label %L_else_9
L_then_9:
    ; line 3463
    call void @P_insymbol()
    ; line 3463
    %t66 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t67 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t66
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t67, %T_setofsys %.dummy_set)
    br label %L_endif_9
L_else_9:
    ; line 3465
    %t69 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 2
    store i1 1, i1* %t69
    br label %L_endif_9
L_endif_9:
    br label %L_endif_3
L_else_3:
    ; line 3467
    %t70 = load i1, i1* @inputhdf
    %t71 = icmp eq i1 0, %t70
    br i1 %t71, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 3467
    call void @P_error(i32 175)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 3468
    %t73 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 2
    %t72 = load i1, i1* %t73
    %t74 = icmp eq i1 0, %t72
    br i1 %t74, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 3469
    br label %L_endif_11
L_endif_11:
    ; line 3500
    %t76 = load i32, i32* @sy
    %t75 = icmp eq i32 %t76, 9
    br i1 %t75, label %L_then_12, label %L_else_12
L_then_12:
    ; line 3500
    call void @P_insymbol()
    br label %L_endif_12
L_else_12:
    ; line 3500
    call void @P_error(i32 4)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_1
L_else_1:
    ; line 3503
    %t77 = load i1, i1* @inputhdf
    %t78 = icmp eq i1 0, %t77
    br i1 %t78, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 3503
    call void @P_error(i32 175)
    br label %L_endif_13
L_endif_13:
    ; line 3504
    %t82 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t83 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t82
    %t81 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t83, i32 0, i32 2
    %t80 = load i32, i32* %t81
    %t79 = icmp eq i32 %t80, 5
    br i1 %t79, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 3504
    call void @P_error(i32 116)
    br label %L_endif_14
L_endif_14:
    ; line 3505
    %t84 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t85 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t84
    %t86 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t85, i32 0, i32 3
    %t87 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t86
    %t88 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t87, i32 0, i32 3
    %t89 = load %Frame_block_body*, %Frame_block_body** %t88
    %t91 = load i32, i32* @level
    %t92 = load i8*, i8** @inputptr
    %t93 = bitcast i8* %t92 to %T_identifier*
    %t95 = getelementptr inbounds %T_identifier, %T_identifier* %t93, i32 0, i32 52
    %t94 = bitcast i8* %t95 to i32*
    %t96 = load i32, i32* %t94
    %t90 = sub i32 %t91, %t96
    %t97 = load i8*, i8** @inputptr
    %t98 = bitcast i8* %t97 to %T_identifier*
    %t100 = getelementptr inbounds %T_identifier, %T_identifier* %t98, i32 0, i32 56
    %t99 = bitcast i8* %t100 to i32*
    %t101 = load i32, i32* %t99
    call void @P_block_body_gen2(%Frame_block_body* %t89, i32 50, i32 %t90, i32 %t101)
    br label %L_endif_1
L_endif_1:
    ; line 3507
    %t105 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t106 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t105
    %t104 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t106, i32 0, i32 2
    %t103 = load i32, i32* %t104
    %t102 = icmp eq i32 %t103, 11
    br i1 %t102, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 3507
    %t107 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t108 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t107
    %t109 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t108, i32 0, i32 3
    %t110 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t109
    %t111 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t110, i32 0, i32 3
    %t112 = load %Frame_block_body*, %Frame_block_body** %t111
    call void @P_block_body_gen1(%Frame_block_body* %t112, i32 30, i32 21)
    br label %L_endif_15
L_endif_15:
    ; line 3509
    %t113 = getelementptr inbounds %Frame_block_body_statement_call_readprocedure, %Frame_block_body_statement_call_readprocedure* %.frame, i32 0, i32 4
    %t114 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t113
    %t115 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t114, i32 0, i32 3
    %t116 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t115
    %t117 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t116, i32 0, i32 3
    %t118 = load %Frame_block_body*, %Frame_block_body** %t117
    call void @P_block_body_gen1(%Frame_block_body* %t118, i32 71, i32 4)
    ; nop

    ; epilogue
    ret void
}


; line 3512
;================================================================================
; scope: block_body_statement_call_writeprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_writeprocedure = type
{
    ; variables
    i1,    ; 0: default
    i1,    ; 1: default1
    i1,    ; 2: deffil
    i32,    ; 3: len
    i32,    ; 4: llkey
    i8*,    ; 5: lsp
    i8*,    ; 6: lsp1
    i1,    ; 7: test
    i1,    ; 8: txt

    ; slink
    %Frame_block_body_statement_call*    ; 9
};

; procedure body
define void @P_block_body_statement_call_writeprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_writeprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3518
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 4
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 2
    %t3 = load i32, i32* %t4
    store i32 %t3, i32* %t2
    ; line 3518
    %t7 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 8
    store i1 1, i1* %t7
    ; line 3518
    %t8 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 2
    store i1 1, i1* %t8
    ; line 3519
    %t10 = load i32, i32* @sy
    %t9 = icmp eq i32 %t10, 8
    br i1 %t9, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3520
    call void @P_insymbol()
    ; line 3521
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t14, %T_setofsys %.dummy_set)
    ; line 3522
    %t16 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 5
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** %t17
    store i8* %t19, i8** %t16
    ; line 3522
    %t20 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 7
    store i1 0, i1* %t20
    ; line 3523
    %t23 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 5
    %t22 = load i8*, i8** %t23
    %t21 = icmp ne i32 %t22, null
    br i1 %t21, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3524
    %t26 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 5
    %t25 = load i8*, i8** %t26
    %t27 = bitcast i8* %t25 to %T_structure*
    %t29 = getelementptr inbounds %T_structure, %T_structure* %t27, i32 0, i32 20
    %t28 = bitcast i8* %t29 to i32*
    %t30 = load i32, i32* %t28
    %t24 = icmp eq i32 %t30, 6
    br i1 %t24, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3526
    %t31 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 6
    %t33 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 5
    %t32 = load i8*, i8** %t33
    store i8* %t32, i8** %t31
    ; line 3527
    %t34 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 8
    %t37 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 5
    %t36 = load i8*, i8** %t37
    %t38 = load i8*, i8** @textptr
    %t35 = icmp eq i32 %t36, %t38
    store i1 %t35, i1* %t34
    ; line 3528
    br label %L_AND_expr_4
L_AND_expr_4:
    %t41 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 8
    %t40 = load i1, i1* %t41
    %t42 = icmp eq i1 0, %t40
    br i1 %t42, label %L_AND_eval_4, label %L_AND_shortcut_4
L_AND_eval_4:
    %t46 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t47 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t46
    %t45 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t47, i32 0, i32 2
    %t44 = load i32, i32* %t45
    %t43 = icmp eq i32 %t44, 12
    br label %L_AND_shortcut_4
L_AND_shortcut_4:
    %t39 = phi [%t43, %L_AND_eval_4], [false, %L_AND_expr_4]
    br i1 %t39, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3528
    call void @P_error(i32 116)
    br label %L_endif_5
L_endif_5:
    ; line 3529
    %t48 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t49 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t48
    %t50 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t49, i32 0, i32 3
    %t51 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t50
    %t52 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t51, i32 0, i32 3
    %t53 = load %Frame_block_body*, %Frame_block_body** %t52
    call void @P_block_body_loadaddress(%Frame_block_body* %t53)
    ; line 3529
    %t54 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 2
    store i1 0, i1* %t54
    ; line 3530
    %t56 = load i32, i32* @sy
    %t55 = icmp eq i32 %t56, 9
    br i1 %t55, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3531
    %t59 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 4
    %t58 = load i32, i32* %t59
    %t57 = icmp eq i32 %t58, 6
    br i1 %t57, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3531
    call void @P_error(i32 116)
    br label %L_endif_7
L_endif_7:
    ; line 3532
    %t60 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 7
    store i1 1, i1* %t60
    br label %L_endif_6
L_else_6:
    ; line 3535
    %t62 = load i32, i32* @sy
    %t61 = icmp ne i32 %t62, 12
    br i1 %t61, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 3536
    call void @P_error(i32 116)
    ; line 3536
    %t63 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t64 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t63
    %t65 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t64, i32 0, i32 3
    %t66 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t65
    %t67 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t66, i32 0, i32 3
    %t68 = load %Frame_block_body*, %Frame_block_body** %t67
    %t69 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t68, i32 0, i32 16
    %t70 = load %Frame_block*, %Frame_block** %t69
    call void @P_block_skip(%Frame_block* %t70, %T_setofsys %.dummy_set)
    br label %L_endif_8
L_endif_8:
    br label %L_endif_6
L_endif_6:
    ; line 3537
    %t73 = load i32, i32* @sy
    %t72 = icmp eq i32 %t73, 12
    br i1 %t72, label %L_then_9, label %L_else_9
L_then_9:
    ; line 3538
    call void @P_insymbol()
    ; line 3538
    %t74 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t75 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t74
    %t76 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t75, i32 0, i32 3
    %t77 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t76
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t77, %T_setofsys %.dummy_set)
    br label %L_endif_9
L_else_9:
    ; line 3540
    %t79 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 7
    store i1 1, i1* %t79
    br label %L_endif_9
L_endif_9:
    br label %L_endif_3
L_else_3:
    ; line 3542
    %t80 = load i1, i1* @outputhdf
    %t81 = icmp eq i1 0, %t80
    br i1 %t81, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 3542
    call void @P_error(i32 176)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 3543
    %t83 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 7
    %t82 = load i1, i1* %t83
    %t84 = icmp eq i1 0, %t82
    br i1 %t84, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 3544
    br label %L_endif_11
L_endif_11:
    ; line 3639
    %t86 = load i32, i32* @sy
    %t85 = icmp eq i32 %t86, 9
    br i1 %t85, label %L_then_12, label %L_else_12
L_then_12:
    ; line 3639
    call void @P_insymbol()
    br label %L_endif_12
L_else_12:
    ; line 3639
    call void @P_error(i32 4)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_1
L_else_1:
    ; line 3641
    %t87 = load i1, i1* @outputhdf
    %t88 = icmp eq i1 0, %t87
    br i1 %t88, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 3641
    call void @P_error(i32 176)
    br label %L_endif_13
L_endif_13:
    ; line 3642
    %t92 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t93 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t92
    %t91 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t93, i32 0, i32 2
    %t90 = load i32, i32* %t91
    %t89 = icmp eq i32 %t90, 6
    br i1 %t89, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 3642
    call void @P_error(i32 116)
    br label %L_endif_14
L_endif_14:
    ; line 3643
    %t94 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t95 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t94
    %t96 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t95, i32 0, i32 3
    %t97 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t96
    %t98 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t97, i32 0, i32 3
    %t99 = load %Frame_block_body*, %Frame_block_body** %t98
    %t101 = load i32, i32* @level
    %t102 = load i8*, i8** @outputptr
    %t103 = bitcast i8* %t102 to %T_identifier*
    %t105 = getelementptr inbounds %T_identifier, %T_identifier* %t103, i32 0, i32 52
    %t104 = bitcast i8* %t105 to i32*
    %t106 = load i32, i32* %t104
    %t100 = sub i32 %t101, %t106
    %t107 = load i8*, i8** @outputptr
    %t108 = bitcast i8* %t107 to %T_identifier*
    %t110 = getelementptr inbounds %T_identifier, %T_identifier* %t108, i32 0, i32 56
    %t109 = bitcast i8* %t110 to i32*
    %t111 = load i32, i32* %t109
    call void @P_block_body_gen2(%Frame_block_body* %t99, i32 50, i32 %t100, i32 %t111)
    br label %L_endif_1
L_endif_1:
    ; line 3645
    %t114 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 4
    %t113 = load i32, i32* %t114
    %t112 = icmp eq i32 %t113, 12
    br i1 %t112, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 3646
    %t115 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t116 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t115
    %t117 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t116, i32 0, i32 3
    %t118 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t117
    %t119 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t118, i32 0, i32 3
    %t120 = load %Frame_block_body*, %Frame_block_body** %t119
    call void @P_block_body_gen1(%Frame_block_body* %t120, i32 30, i32 22)
    br label %L_endif_15
L_endif_15:
    ; line 3648
    %t121 = getelementptr inbounds %Frame_block_body_statement_call_writeprocedure, %Frame_block_body_statement_call_writeprocedure* %.frame, i32 0, i32 9
    %t122 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t121
    %t123 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t122, i32 0, i32 3
    %t124 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t123
    %t125 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t124, i32 0, i32 3
    %t126 = load %Frame_block_body*, %Frame_block_body** %t125
    call void @P_block_body_gen1(%Frame_block_body* %t126, i32 71, i32 4)
    ; nop

    ; epilogue
    ret void
}


; line 3651
;================================================================================
; scope: block_body_statement_call_packprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_packprocedure = type
{
    ; variables
    i32,    ; 0: bs
    %T_attr,    ; 1: lattr
    i32,    ; 2: lb
    i8*,    ; 3: lsp
    i8*,    ; 4: lsp1

    ; slink
    %Frame_block_body_statement_call*    ; 5
};

; procedure body
define void @P_block_body_statement_call_packprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_packprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3653
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 3653
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    ; line 3654
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 3
    store i8* null, i8** %t11
    ; line 3654
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 4
    store i8* null, i8** %t12
    ; line 3654
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 2
    store i32 1, i32* %t13
    ; line 3654
    %t14 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 0
    store i32 1, i32* %t14
    ; line 3655
    %t15 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 1
    %t16 = load %T_attr, %T_attr* @gattr
    store %T_attr %t16, %T_attr* %t15
    ; line 3656
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t17 = icmp ne i32 %t20, null
    br i1 %t17, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3658
    %t23 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t22 = bitcast i8* %t23 to i8**
    %t24 = load i8*, i8** %t22
    %t25 = bitcast i8* %t24 to %T_structure*
    %t27 = getelementptr inbounds %T_structure, %T_structure* %t25, i32 0, i32 20
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* %t26
    %t21 = icmp eq i32 %t28, 4
    br i1 %t21, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3659
    %t29 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 3
    %t31 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t30 = bitcast i8* %t31 to i8**
    %t32 = load i8*, i8** %t30
    %t33 = bitcast i8* %t32 to %T_structure*
    %t35 = getelementptr inbounds %T_structure, %T_structure* %t33, i32 0, i32 32
    %t34 = bitcast i8* %t35 to i8**
    %t36 = load i8*, i8** %t34
    store i8* %t36, i8** %t29
    ; line 3659
    %t37 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 4
    %t39 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t38 = bitcast i8* %t39 to i8**
    %t40 = load i8*, i8** %t38
    %t41 = bitcast i8* %t40 to %T_structure*
    %t43 = getelementptr inbounds %T_structure, %T_structure* %t41, i32 0, i32 24
    %t42 = bitcast i8* %t43 to i8**
    %t44 = load i8*, i8** %t42
    store i8* %t44, i8** %t37
    ; line 3660
    br label %L_OR_expr_3
L_OR_expr_3:
    %t48 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t47 = bitcast i8* %t48 to i8**
    %t49 = load i8*, i8** %t47
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 32
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** %t51
    %t54 = load i8*, i8** @charptr
    %t46 = icmp eq i32 %t53, %t54
    br i1 %t46, label %L_OR_shortcut_3, label %L_OR_eval_3
L_OR_eval_3:
    %t57 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t56 = bitcast i8* %t57 to i8**
    %t58 = load i8*, i8** %t56
    %t59 = bitcast i8* %t58 to %T_structure*
    %t61 = getelementptr inbounds %T_structure, %T_structure* %t59, i32 0, i32 32
    %t60 = bitcast i8* %t61 to i8**
    %t62 = load i8*, i8** %t60
    %t63 = load i8*, i8** @boolptr
    %t55 = icmp eq i32 %t62, %t63
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t45 = phi [%t55, %L_OR_eval_3], [true, %L_OR_expr_3]
    br i1 %t45, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3660
    %t64 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 2
    store i32 0, i32* %t64
    br label %L_endif_4
L_else_4:
    ; line 3661
    %t67 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t66 = bitcast i8* %t67 to i8**
    %t68 = load i8*, i8** %t66
    %t69 = bitcast i8* %t68 to %T_structure*
    %t71 = getelementptr inbounds %T_structure, %T_structure* %t69, i32 0, i32 32
    %t70 = bitcast i8* %t71 to i8**
    %t72 = load i8*, i8** %t70
    %t73 = bitcast i8* %t72 to %T_structure*
    %t75 = getelementptr inbounds %T_structure, %T_structure* %t73, i32 0, i32 20
    %t74 = bitcast i8* %t75 to i32*
    %t76 = load i32, i32* %t74
    %t65 = icmp eq i32 %t76, 1
    br i1 %t65, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3661
    %t77 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 2
    %t79 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t78 = bitcast i8* %t79 to i8**
    %t80 = load i8*, i8** %t78
    %t81 = bitcast i8* %t80 to %T_structure*
    %t83 = getelementptr inbounds %T_structure, %T_structure* %t81, i32 0, i32 32
    %t82 = bitcast i8* %t83 to i8**
    %t84 = load i8*, i8** %t82
    %t85 = bitcast i8* %t84 to %T_structure*
    %t87 = getelementptr inbounds %T_structure, %T_structure* %t85, i32 0, i32 32
    %t86 = bitcast i8* %t87 to %T_valu*
    %t89 = getelementptr inbounds %T_valu, %T_valu* %t86, i32 0, i32 4
    %t88 = bitcast i8* %t89 to i32*
    %t90 = load i32, i32* %t88
    store i32 %t90, i32* %t77
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 3662
    %t91 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 0
    %t93 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t92 = bitcast i8* %t93 to i8**
    %t94 = load i8*, i8** %t92
    %t95 = bitcast i8* %t94 to %T_structure*
    %t97 = getelementptr inbounds %T_structure, %T_structure* %t95, i32 0, i32 24
    %t96 = bitcast i8* %t97 to i8**
    %t98 = load i8*, i8** %t96
    %t99 = bitcast i8* %t98 to %T_structure*
    %t101 = getelementptr inbounds %T_structure, %T_structure* %t99, i32 0, i32 12
    %t100 = bitcast i8* %t101 to i32*
    %t102 = load i32, i32* %t100
    store i32 %t102, i32* %t91
    br label %L_endif_2
L_else_2:
    ; line 3664
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3665
    %t104 = load i32, i32* @sy
    %t103 = icmp eq i32 %t104, 12
    br i1 %t103, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3665
    call void @P_insymbol()
    br label %L_endif_6
L_else_6:
    ; line 3665
    call void @P_error(i32 20)
    br label %L_endif_6
L_endif_6:
    ; line 3666
    %t105 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t106 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t105
    %t107 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t106, i32 0, i32 3
    %t108 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t107
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t108, %T_setofsys %.dummy_set)
    ; line 3666
    %t110 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t111 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t110
    %t112 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t111, i32 0, i32 3
    %t113 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t112
    %t114 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t113, i32 0, i32 3
    %t115 = load %Frame_block_body*, %Frame_block_body** %t114
    call void @P_block_body_load(%Frame_block_body* %t115)
    ; line 3667
    %t118 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t117 = bitcast i8* %t118 to i8**
    %t119 = load i8*, i8** %t117
    %t116 = icmp ne i32 %t119, null
    br i1 %t116, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3668
    %t122 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t121 = bitcast i8* %t122 to i8**
    %t123 = load i8*, i8** %t121
    %t124 = bitcast i8* %t123 to %T_structure*
    %t126 = getelementptr inbounds %T_structure, %T_structure* %t124, i32 0, i32 20
    %t125 = bitcast i8* %t126 to i32*
    %t127 = load i32, i32* %t125
    %t120 = icmp ne i32 %t127, 0
    br i1 %t120, label %L_then_8, label %L_else_8
L_then_8:
    ; line 3668
    call void @P_error(i32 116)
    br label %L_endif_8
L_else_8:
    ; line 3670
    %t128 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t129 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t128
    %t130 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t129, i32 0, i32 3
    %t131 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t130
    %t132 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t131, i32 0, i32 3
    %t133 = load %Frame_block_body*, %Frame_block_body** %t132
    %t134 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t133, i32 0, i32 16
    %t135 = load %Frame_block*, %Frame_block** %t134
    %t137 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 3
    %t136 = load i8*, i8** %t137
    %t139 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t138 = bitcast i8* %t139 to i8**
    %t140 = load i8*, i8** %t138
    %t141 = call i1 @F_block_comptypes(%Frame_block* %t135, i8* %t136, i8* %t140)
    %t142 = icmp eq i1 0, %t141
    br i1 %t142, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 3670
    call void @P_error(i32 116)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    ; line 3671
    %t143 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t144 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t143
    %t145 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t144, i32 0, i32 3
    %t146 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t145
    %t147 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t146, i32 0, i32 3
    %t148 = load %Frame_block_body*, %Frame_block_body** %t147
    %t150 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 2
    %t149 = load i32, i32* %t150
    call void @P_block_body_gen2(%Frame_block_body* %t148, i32 51, i32 1, i32 %t149)
    ; line 3672
    %t151 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t152 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t151
    %t153 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t152, i32 0, i32 3
    %t154 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t153
    %t155 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t154, i32 0, i32 3
    %t156 = load %Frame_block_body*, %Frame_block_body** %t155
    call void @P_block_body_gen0(%Frame_block_body* %t156, i32 21)
    ; line 3673
    %t157 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t158 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t157
    %t159 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t158, i32 0, i32 3
    %t160 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t159
    %t161 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t160, i32 0, i32 3
    %t162 = load %Frame_block_body*, %Frame_block_body** %t161
    %t164 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 0
    %t163 = load i32, i32* %t164
    call void @P_block_body_gen2(%Frame_block_body* %t162, i32 51, i32 1, i32 %t163)
    ; line 3674
    %t165 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t166 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t165
    %t167 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t166, i32 0, i32 3
    %t168 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t167
    %t169 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t168, i32 0, i32 3
    %t170 = load %Frame_block_body*, %Frame_block_body** %t169
    call void @P_block_body_gen0(%Frame_block_body* %t170, i32 15)
    ; line 3675
    %t172 = load i32, i32* @sy
    %t171 = icmp eq i32 %t172, 12
    br i1 %t171, label %L_then_10, label %L_else_10
L_then_10:
    ; line 3675
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 3675
    call void @P_error(i32 20)
    br label %L_endif_10
L_endif_10:
    ; line 3676
    %t173 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t174 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t173
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t174, %T_setofsys %.dummy_set)
    ; line 3676
    %t176 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t177 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t176
    %t178 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t177, i32 0, i32 3
    %t179 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t178
    %t180 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t179, i32 0, i32 3
    %t181 = load %Frame_block_body*, %Frame_block_body** %t180
    call void @P_block_body_loadaddress(%Frame_block_body* %t181)
    ; line 3677
    %t184 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t183 = bitcast i8* %t184 to i8**
    %t185 = load i8*, i8** %t183
    %t182 = icmp ne i32 %t185, null
    br i1 %t182, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 3679
    %t188 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t187 = bitcast i8* %t188 to i8**
    %t189 = load i8*, i8** %t187
    %t190 = bitcast i8* %t189 to %T_structure*
    %t192 = getelementptr inbounds %T_structure, %T_structure* %t190, i32 0, i32 20
    %t191 = bitcast i8* %t192 to i32*
    %t193 = load i32, i32* %t191
    %t186 = icmp eq i32 %t193, 4
    br i1 %t186, label %L_then_12, label %L_else_12
L_then_12:
    ; line 3681
    %t194 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t195 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t194
    %t196 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t195, i32 0, i32 3
    %t197 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t196
    %t198 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t197, i32 0, i32 3
    %t199 = load %Frame_block_body*, %Frame_block_body** %t198
    %t200 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t199, i32 0, i32 16
    %t201 = load %Frame_block*, %Frame_block** %t200
    %t203 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t202 = bitcast i8* %t203 to i8**
    %t204 = load i8*, i8** %t202
    %t205 = bitcast i8* %t204 to %T_structure*
    %t207 = getelementptr inbounds %T_structure, %T_structure* %t205, i32 0, i32 24
    %t206 = bitcast i8* %t207 to i8**
    %t208 = load i8*, i8** %t206
    %t210 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 4
    %t209 = load i8*, i8** %t210
    %t211 = call i1 @F_block_comptypes(%Frame_block* %t201, i8* %t208, i8* %t209)
    %t212 = icmp eq i1 0, %t211
    br i1 %t212, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 3681
    call void @P_error(i32 116)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_else_12:
    ; line 3683
    call void @P_error(i32 116)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_endif_11:
    ; line 3684
    br label %L_AND_expr_14
L_AND_expr_14:
    %t216 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t215 = bitcast i8* %t216 to i8**
    %t217 = load i8*, i8** %t215
    %t214 = icmp ne i32 %t217, null
    br i1 %t214, label %L_AND_eval_14, label %L_AND_shortcut_14
L_AND_eval_14:
    %t219 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 1
    %t221 = getelementptr inbounds %T_attr, %T_attr* %t219, i32 0, i32 0
    %t220 = bitcast i8* %t221 to i8**
    %t222 = load i8*, i8** %t220
    %t218 = icmp ne i32 %t222, null
    br label %L_AND_shortcut_14
L_AND_shortcut_14:
    %t213 = phi [%t218, %L_AND_eval_14], [false, %L_AND_expr_14]
    br i1 %t213, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 3685
    %t223 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 5
    %t224 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t223
    %t225 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t224, i32 0, i32 3
    %t226 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t225
    %t227 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t226, i32 0, i32 3
    %t228 = load %Frame_block_body*, %Frame_block_body** %t227
    %t230 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t229 = bitcast i8* %t230 to i8**
    %t231 = load i8*, i8** %t229
    %t232 = bitcast i8* %t231 to %T_structure*
    %t234 = getelementptr inbounds %T_structure, %T_structure* %t232, i32 0, i32 12
    %t233 = bitcast i8* %t234 to i32*
    %t235 = load i32, i32* %t233
    %t236 = getelementptr inbounds %Frame_block_body_statement_call_packprocedure, %Frame_block_body_statement_call_packprocedure* %.frame, i32 0, i32 1
    %t238 = getelementptr inbounds %T_attr, %T_attr* %t236, i32 0, i32 0
    %t237 = bitcast i8* %t238 to i8**
    %t239 = load i8*, i8** %t237
    %t240 = bitcast i8* %t239 to %T_structure*
    %t242 = getelementptr inbounds %T_structure, %T_structure* %t240, i32 0, i32 12
    %t241 = bitcast i8* %t242 to i32*
    %t243 = load i32, i32* %t241
    call void @P_block_body_gen2(%Frame_block_body* %t228, i32 62, i32 %t235, i32 %t243)
    br label %L_endif_15
L_endif_15:

    ; epilogue
    ret void
}


; line 3688
;================================================================================
; scope: block_body_statement_call_unpackprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_unpackprocedure = type
{
    ; variables
    i32,    ; 0: bs
    %T_attr,    ; 1: lattr
    %T_attr,    ; 2: lattr1
    i32,    ; 3: lb
    i8*,    ; 4: lsp
    i8*,    ; 5: lsp1

    ; slink
    %Frame_block_body_statement_call*    ; 6
};

; procedure body
define void @P_block_body_statement_call_unpackprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_unpackprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3690
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 3690
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    ; line 3691
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 1
    %t12 = load %T_attr, %T_attr* @gattr
    store %T_attr %t12, %T_attr* %t11
    ; line 3692
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 4
    store i8* null, i8** %t13
    ; line 3692
    %t14 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 5
    store i8* null, i8** %t14
    ; line 3692
    %t15 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 3
    store i32 1, i32* %t15
    ; line 3692
    %t16 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 0
    store i32 1, i32* %t16
    ; line 3693
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t17 = icmp ne i32 %t20, null
    br i1 %t17, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3695
    %t23 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t22 = bitcast i8* %t23 to i8**
    %t24 = load i8*, i8** %t22
    %t25 = bitcast i8* %t24 to %T_structure*
    %t27 = getelementptr inbounds %T_structure, %T_structure* %t25, i32 0, i32 20
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* %t26
    %t21 = icmp eq i32 %t28, 4
    br i1 %t21, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3695
    %t29 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 5
    %t31 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t30 = bitcast i8* %t31 to i8**
    %t32 = load i8*, i8** %t30
    %t33 = bitcast i8* %t32 to %T_structure*
    %t35 = getelementptr inbounds %T_structure, %T_structure* %t33, i32 0, i32 24
    %t34 = bitcast i8* %t35 to i8**
    %t36 = load i8*, i8** %t34
    store i8* %t36, i8** %t29
    br label %L_endif_2
L_else_2:
    ; line 3696
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3697
    %t38 = load i32, i32* @sy
    %t37 = icmp eq i32 %t38, 12
    br i1 %t37, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3697
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 3697
    call void @P_error(i32 20)
    br label %L_endif_3
L_endif_3:
    ; line 3698
    %t39 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t40 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t39
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t40, %T_setofsys %.dummy_set)
    ; line 3698
    %t42 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t43 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t42
    %t44 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t43, i32 0, i32 3
    %t45 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t44
    %t46 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t45, i32 0, i32 3
    %t47 = load %Frame_block_body*, %Frame_block_body** %t46
    call void @P_block_body_loadaddress(%Frame_block_body* %t47)
    ; line 3699
    %t48 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 2
    %t49 = load %T_attr, %T_attr* @gattr
    store %T_attr %t49, %T_attr* %t48
    ; line 3700
    %t52 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** %t51
    %t50 = icmp ne i32 %t53, null
    br i1 %t50, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3702
    %t56 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t55 = bitcast i8* %t56 to i8**
    %t57 = load i8*, i8** %t55
    %t58 = bitcast i8* %t57 to %T_structure*
    %t60 = getelementptr inbounds %T_structure, %T_structure* %t58, i32 0, i32 20
    %t59 = bitcast i8* %t60 to i32*
    %t61 = load i32, i32* %t59
    %t54 = icmp eq i32 %t61, 4
    br i1 %t54, label %L_then_5, label %L_else_5
L_then_5:
    ; line 3704
    %t62 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t63 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t62
    %t64 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t63, i32 0, i32 3
    %t65 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t64
    %t66 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t65, i32 0, i32 3
    %t67 = load %Frame_block_body*, %Frame_block_body** %t66
    %t68 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t67, i32 0, i32 16
    %t69 = load %Frame_block*, %Frame_block** %t68
    %t71 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t70 = bitcast i8* %t71 to i8**
    %t72 = load i8*, i8** %t70
    %t73 = bitcast i8* %t72 to %T_structure*
    %t75 = getelementptr inbounds %T_structure, %T_structure* %t73, i32 0, i32 24
    %t74 = bitcast i8* %t75 to i8**
    %t76 = load i8*, i8** %t74
    %t78 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 5
    %t77 = load i8*, i8** %t78
    %t79 = call i1 @F_block_comptypes(%Frame_block* %t69, i8* %t76, i8* %t77)
    %t80 = icmp eq i1 0, %t79
    br i1 %t80, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 3704
    call void @P_error(i32 116)
    br label %L_endif_6
L_endif_6:
    ; line 3705
    br label %L_OR_expr_7
L_OR_expr_7:
    %t84 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t83 = bitcast i8* %t84 to i8**
    %t85 = load i8*, i8** %t83
    %t86 = bitcast i8* %t85 to %T_structure*
    %t88 = getelementptr inbounds %T_structure, %T_structure* %t86, i32 0, i32 32
    %t87 = bitcast i8* %t88 to i8**
    %t89 = load i8*, i8** %t87
    %t90 = load i8*, i8** @charptr
    %t82 = icmp eq i32 %t89, %t90
    br i1 %t82, label %L_OR_shortcut_7, label %L_OR_eval_7
L_OR_eval_7:
    %t93 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t92 = bitcast i8* %t93 to i8**
    %t94 = load i8*, i8** %t92
    %t95 = bitcast i8* %t94 to %T_structure*
    %t97 = getelementptr inbounds %T_structure, %T_structure* %t95, i32 0, i32 32
    %t96 = bitcast i8* %t97 to i8**
    %t98 = load i8*, i8** %t96
    %t99 = load i8*, i8** @boolptr
    %t91 = icmp eq i32 %t98, %t99
    br label %L_OR_shortcut_7
L_OR_shortcut_7:
    %t81 = phi [%t91, %L_OR_eval_7], [true, %L_OR_expr_7]
    br i1 %t81, label %L_then_8, label %L_else_8
L_then_8:
    ; line 3705
    %t100 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 3
    store i32 0, i32* %t100
    br label %L_endif_8
L_else_8:
    ; line 3706
    %t103 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t102 = bitcast i8* %t103 to i8**
    %t104 = load i8*, i8** %t102
    %t105 = bitcast i8* %t104 to %T_structure*
    %t107 = getelementptr inbounds %T_structure, %T_structure* %t105, i32 0, i32 32
    %t106 = bitcast i8* %t107 to i8**
    %t108 = load i8*, i8** %t106
    %t109 = bitcast i8* %t108 to %T_structure*
    %t111 = getelementptr inbounds %T_structure, %T_structure* %t109, i32 0, i32 20
    %t110 = bitcast i8* %t111 to i32*
    %t112 = load i32, i32* %t110
    %t101 = icmp eq i32 %t112, 1
    br i1 %t101, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 3706
    %t113 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 3
    %t115 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t114 = bitcast i8* %t115 to i8**
    %t116 = load i8*, i8** %t114
    %t117 = bitcast i8* %t116 to %T_structure*
    %t119 = getelementptr inbounds %T_structure, %T_structure* %t117, i32 0, i32 32
    %t118 = bitcast i8* %t119 to i8**
    %t120 = load i8*, i8** %t118
    %t121 = bitcast i8* %t120 to %T_structure*
    %t123 = getelementptr inbounds %T_structure, %T_structure* %t121, i32 0, i32 32
    %t122 = bitcast i8* %t123 to %T_valu*
    %t125 = getelementptr inbounds %T_valu, %T_valu* %t122, i32 0, i32 4
    %t124 = bitcast i8* %t125 to i32*
    %t126 = load i32, i32* %t124
    store i32 %t126, i32* %t113
    br label %L_endif_9
L_endif_9:
    br label %L_endif_8
L_endif_8:
    ; line 3707
    %t127 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 0
    %t129 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t128 = bitcast i8* %t129 to i8**
    %t130 = load i8*, i8** %t128
    %t131 = bitcast i8* %t130 to %T_structure*
    %t133 = getelementptr inbounds %T_structure, %T_structure* %t131, i32 0, i32 24
    %t132 = bitcast i8* %t133 to i8**
    %t134 = load i8*, i8** %t132
    %t135 = bitcast i8* %t134 to %T_structure*
    %t137 = getelementptr inbounds %T_structure, %T_structure* %t135, i32 0, i32 12
    %t136 = bitcast i8* %t137 to i32*
    %t138 = load i32, i32* %t136
    store i32 %t138, i32* %t127
    ; line 3708
    %t139 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 4
    %t141 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t140 = bitcast i8* %t141 to i8**
    %t142 = load i8*, i8** %t140
    %t143 = bitcast i8* %t142 to %T_structure*
    %t145 = getelementptr inbounds %T_structure, %T_structure* %t143, i32 0, i32 32
    %t144 = bitcast i8* %t145 to i8**
    %t146 = load i8*, i8** %t144
    store i8* %t146, i8** %t139
    ; nop
    br label %L_endif_5
L_else_5:
    ; line 3710
    call void @P_error(i32 116)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 3711
    %t148 = load i32, i32* @sy
    %t147 = icmp eq i32 %t148, 12
    br i1 %t147, label %L_then_10, label %L_else_10
L_then_10:
    ; line 3711
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 3711
    call void @P_error(i32 20)
    br label %L_endif_10
L_endif_10:
    ; line 3712
    %t149 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t150 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t149
    %t151 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t150, i32 0, i32 3
    %t152 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t151
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t152, %T_setofsys %.dummy_set)
    ; line 3712
    %t154 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t155 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t154
    %t156 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t155, i32 0, i32 3
    %t157 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t156
    %t158 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t157, i32 0, i32 3
    %t159 = load %Frame_block_body*, %Frame_block_body** %t158
    call void @P_block_body_load(%Frame_block_body* %t159)
    ; line 3713
    %t162 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t161 = bitcast i8* %t162 to i8**
    %t163 = load i8*, i8** %t161
    %t160 = icmp ne i32 %t163, null
    br i1 %t160, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 3714
    %t166 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t165 = bitcast i8* %t166 to i8**
    %t167 = load i8*, i8** %t165
    %t168 = bitcast i8* %t167 to %T_structure*
    %t170 = getelementptr inbounds %T_structure, %T_structure* %t168, i32 0, i32 20
    %t169 = bitcast i8* %t170 to i32*
    %t171 = load i32, i32* %t169
    %t164 = icmp ne i32 %t171, 0
    br i1 %t164, label %L_then_12, label %L_else_12
L_then_12:
    ; line 3714
    call void @P_error(i32 116)
    br label %L_endif_12
L_else_12:
    ; line 3716
    %t172 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t173 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t172
    %t174 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t173, i32 0, i32 3
    %t175 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t174
    %t176 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t175, i32 0, i32 3
    %t177 = load %Frame_block_body*, %Frame_block_body** %t176
    %t178 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t177, i32 0, i32 16
    %t179 = load %Frame_block*, %Frame_block** %t178
    %t181 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 4
    %t180 = load i8*, i8** %t181
    %t183 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t182 = bitcast i8* %t183 to i8**
    %t184 = load i8*, i8** %t182
    %t185 = call i1 @F_block_comptypes(%Frame_block* %t179, i8* %t180, i8* %t184)
    %t186 = icmp eq i1 0, %t185
    br i1 %t186, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 3716
    call void @P_error(i32 116)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_endif_11:
    ; line 3717
    %t187 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t188 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t187
    %t189 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t188, i32 0, i32 3
    %t190 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t189
    %t191 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t190, i32 0, i32 3
    %t192 = load %Frame_block_body*, %Frame_block_body** %t191
    %t194 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 3
    %t193 = load i32, i32* %t194
    call void @P_block_body_gen2(%Frame_block_body* %t192, i32 51, i32 1, i32 %t193)
    ; line 3718
    %t195 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t196 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t195
    %t197 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t196, i32 0, i32 3
    %t198 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t197
    %t199 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t198, i32 0, i32 3
    %t200 = load %Frame_block_body*, %Frame_block_body** %t199
    call void @P_block_body_gen0(%Frame_block_body* %t200, i32 21)
    ; line 3719
    %t201 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t202 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t201
    %t203 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t202, i32 0, i32 3
    %t204 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t203
    %t205 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t204, i32 0, i32 3
    %t206 = load %Frame_block_body*, %Frame_block_body** %t205
    %t208 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 0
    %t207 = load i32, i32* %t208
    call void @P_block_body_gen2(%Frame_block_body* %t206, i32 51, i32 1, i32 %t207)
    ; line 3720
    %t209 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t210 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t209
    %t211 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t210, i32 0, i32 3
    %t212 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t211
    %t213 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t212, i32 0, i32 3
    %t214 = load %Frame_block_body*, %Frame_block_body** %t213
    call void @P_block_body_gen0(%Frame_block_body* %t214, i32 15)
    ; line 3721
    br label %L_AND_expr_14
L_AND_expr_14:
    %t218 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t217 = bitcast i8* %t218 to i8**
    %t219 = load i8*, i8** %t217
    %t216 = icmp ne i32 %t219, null
    br i1 %t216, label %L_AND_eval_14, label %L_AND_shortcut_14
L_AND_eval_14:
    %t221 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 1
    %t223 = getelementptr inbounds %T_attr, %T_attr* %t221, i32 0, i32 0
    %t222 = bitcast i8* %t223 to i8**
    %t224 = load i8*, i8** %t222
    %t220 = icmp ne i32 %t224, null
    br label %L_AND_shortcut_14
L_AND_shortcut_14:
    %t215 = phi [%t220, %L_AND_eval_14], [false, %L_AND_expr_14]
    br i1 %t215, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 3722
    %t225 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 6
    %t226 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t225
    %t227 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t226, i32 0, i32 3
    %t228 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t227
    %t229 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t228, i32 0, i32 3
    %t230 = load %Frame_block_body*, %Frame_block_body** %t229
    %t231 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 1
    %t233 = getelementptr inbounds %T_attr, %T_attr* %t231, i32 0, i32 0
    %t232 = bitcast i8* %t233 to i8**
    %t234 = load i8*, i8** %t232
    %t235 = bitcast i8* %t234 to %T_structure*
    %t237 = getelementptr inbounds %T_structure, %T_structure* %t235, i32 0, i32 12
    %t236 = bitcast i8* %t237 to i32*
    %t238 = load i32, i32* %t236
    %t239 = getelementptr inbounds %Frame_block_body_statement_call_unpackprocedure, %Frame_block_body_statement_call_unpackprocedure* %.frame, i32 0, i32 2
    %t241 = getelementptr inbounds %T_attr, %T_attr* %t239, i32 0, i32 0
    %t240 = bitcast i8* %t241 to i8**
    %t242 = load i8*, i8** %t240
    %t243 = bitcast i8* %t242 to %T_structure*
    %t245 = getelementptr inbounds %T_structure, %T_structure* %t243, i32 0, i32 12
    %t244 = bitcast i8* %t245 to i32*
    %t246 = load i32, i32* %t244
    call void @P_block_body_gen2(%Frame_block_body* %t230, i32 63, i32 %t238, i32 %t246)
    br label %L_endif_15
L_endif_15:

    ; epilogue
    ret void
}


; line 3725
;================================================================================
; scope: block_body_statement_call_newdisposeprocedure (level : 6)

; activation record
%Frame_block_body_statement_call_newdisposeprocedure = type
{
    ; variables
    i32,    ; 0: lsize
    i8*,    ; 1: lsp
    i8*,    ; 2: lsp1
    %T_valu,    ; 3: lval
    i32,    ; 4: varts

    ; slink
    %Frame_block_body_statement_call*    ; 5
};

; procedure body
define void @P_block_body_statement_call_newdisposeprocedure(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_newdisposeprocedure, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3729
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 3729
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    ; line 3730
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 1
    store i8* null, i8** %t11
    ; line 3730
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 4
    store i32 0, i32* %t12
    ; line 3730
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 0
    store i32 0, i32* %t13
    ; line 3731
    %t16 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8**
    %t17 = load i8*, i8** %t15
    %t14 = icmp ne i32 %t17, null
    br i1 %t14, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3733
    %t20 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    %t22 = bitcast i8* %t21 to %T_structure*
    %t24 = getelementptr inbounds %T_structure, %T_structure* %t22, i32 0, i32 20
    %t23 = bitcast i8* %t24 to i32*
    %t25 = load i32, i32* %t23
    %t18 = icmp eq i32 %t25, 2
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3735
    %t28 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** %t27
    %t30 = bitcast i8* %t29 to %T_structure*
    %t32 = getelementptr inbounds %T_structure, %T_structure* %t30, i32 0, i32 24
    %t31 = bitcast i8* %t32 to i8**
    %t33 = load i8*, i8** %t31
    %t26 = icmp ne i32 %t33, null
    br i1 %t26, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3736
    %t34 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 0
    %t36 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t35 = bitcast i8* %t36 to i8**
    %t37 = load i8*, i8** %t35
    %t38 = bitcast i8* %t37 to %T_structure*
    %t40 = getelementptr inbounds %T_structure, %T_structure* %t38, i32 0, i32 24
    %t39 = bitcast i8* %t40 to i8**
    %t41 = load i8*, i8** %t39
    %t42 = bitcast i8* %t41 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 12
    %t43 = bitcast i8* %t44 to i32*
    %t45 = load i32, i32* %t43
    store i32 %t45, i32* %t34
    ; line 3737
    %t48 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t47 = bitcast i8* %t48 to i8**
    %t49 = load i8*, i8** %t47
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 24
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** %t51
    %t54 = bitcast i8* %t53 to %T_structure*
    %t56 = getelementptr inbounds %T_structure, %T_structure* %t54, i32 0, i32 20
    %t55 = bitcast i8* %t56 to i32*
    %t57 = load i32, i32* %t55
    %t46 = icmp eq i32 %t57, 5
    br i1 %t46, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3737
    %t58 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 1
    %t60 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t59 = bitcast i8* %t60 to i8**
    %t61 = load i8*, i8** %t59
    %t62 = bitcast i8* %t61 to %T_structure*
    %t64 = getelementptr inbounds %T_structure, %T_structure* %t62, i32 0, i32 24
    %t63 = bitcast i8* %t64 to i8**
    %t65 = load i8*, i8** %t63
    %t66 = bitcast i8* %t65 to %T_structure*
    %t68 = getelementptr inbounds %T_structure, %T_structure* %t66, i32 0, i32 32
    %t67 = bitcast i8* %t68 to i8**
    %t69 = load i8*, i8** %t67
    store i8* %t69, i8** %t58
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_else_2:
    ; line 3740
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3741
    ; line 3766
    %t70 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    %t71 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t72
    %t74 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t73, i32 0, i32 3
    %t75 = load %Frame_block_body*, %Frame_block_body** %t74
    %t77 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 0
    %t76 = load i32, i32* %t77
    call void @P_block_body_gen2(%Frame_block_body* %t75, i32 51, i32 1, i32 %t76)
    ; line 3767
    %t81 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    %t82 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t81
    %t80 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t82, i32 0, i32 2
    %t79 = load i32, i32* %t80
    %t78 = icmp eq i32 %t79, 9
    br i1 %t78, label %L_then_5, label %L_else_5
L_then_5:
    ; line 3767
    %t83 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    %t84 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t83
    %t85 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t84, i32 0, i32 3
    %t86 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t85
    %t87 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t86, i32 0, i32 3
    %t88 = load %Frame_block_body*, %Frame_block_body** %t87
    call void @P_block_body_gen1(%Frame_block_body* %t88, i32 30, i32 12)
    br label %L_endif_5
L_else_5:
    ; line 3768
    %t89 = getelementptr inbounds %Frame_block_body_statement_call_newdisposeprocedure, %Frame_block_body_statement_call_newdisposeprocedure* %.frame, i32 0, i32 5
    %t90 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t89
    %t91 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t90, i32 0, i32 3
    %t92 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t91
    %t93 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t92, i32 0, i32 3
    %t94 = load %Frame_block_body*, %Frame_block_body** %t93
    call void @P_block_body_gen1(%Frame_block_body* %t94, i32 30, i32 29)
    br label %L_endif_5
L_endif_5:

    ; epilogue
    ret void
}


; line 3771
;================================================================================
; scope: block_body_statement_call_absfunction (level : 6)

; activation record
%Frame_block_body_statement_call_absfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_absfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_absfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_absfunction, %Frame_block_body_statement_call_absfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3773
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3774
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp eq i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3774
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_absfunction, %Frame_block_body_statement_call_absfunction* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 0)
    br label %L_endif_2
L_else_2:
    ; line 3776
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t21 = load i8*, i8** @realptr
    %t17 = icmp eq i32 %t20, %t21
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3776
    %t22 = getelementptr inbounds %Frame_block_body_statement_call_absfunction, %Frame_block_body_statement_call_absfunction* %.frame, i32 0, i32 0
    %t23 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 3
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    call void @P_block_body_gen0(%Frame_block_body* %t27, i32 1)
    br label %L_endif_3
L_else_3:
    ; line 3777
    call void @P_error(i32 125)
    ; line 3777
    %t29 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i8**
    %t30 = load i8*, i8** @intptr
    store i8* %t30, i8** %t28
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3780
;================================================================================
; scope: block_body_statement_call_sqrfunction (level : 6)

; activation record
%Frame_block_body_statement_call_sqrfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_sqrfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_sqrfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_sqrfunction, %Frame_block_body_statement_call_sqrfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3782
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3783
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp eq i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3783
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_sqrfunction, %Frame_block_body_statement_call_sqrfunction* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 24)
    br label %L_endif_2
L_else_2:
    ; line 3785
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t21 = load i8*, i8** @realptr
    %t17 = icmp eq i32 %t20, %t21
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3785
    %t22 = getelementptr inbounds %Frame_block_body_statement_call_sqrfunction, %Frame_block_body_statement_call_sqrfunction* %.frame, i32 0, i32 0
    %t23 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 3
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    call void @P_block_body_gen0(%Frame_block_body* %t27, i32 25)
    br label %L_endif_3
L_else_3:
    ; line 3786
    call void @P_error(i32 125)
    ; line 3786
    %t29 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i8**
    %t30 = load i8*, i8** @intptr
    store i8* %t30, i8** %t28
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3789
;================================================================================
; scope: block_body_statement_call_truncfunction (level : 6)

; activation record
%Frame_block_body_statement_call_truncfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_truncfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_truncfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_truncfunction, %Frame_block_body_statement_call_truncfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3791
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3792
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @realptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3792
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3793
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_truncfunction, %Frame_block_body_statement_call_truncfunction* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 27)
    ; line 3794
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @intptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 3797
;================================================================================
; scope: block_body_statement_call_roundfunction (level : 6)

; activation record
%Frame_block_body_statement_call_roundfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_roundfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_roundfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_roundfunction, %Frame_block_body_statement_call_roundfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3799
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3800
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @realptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3800
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3801
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_roundfunction, %Frame_block_body_statement_call_roundfunction* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 61)
    ; line 3802
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @intptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 3805
;================================================================================
; scope: block_body_statement_call_oddfunction (level : 6)

; activation record
%Frame_block_body_statement_call_oddfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_oddfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_oddfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_oddfunction, %Frame_block_body_statement_call_oddfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3807
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3808
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3808
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3809
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_oddfunction, %Frame_block_body_statement_call_oddfunction* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 20)
    ; line 3810
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @boolptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 3813
;================================================================================
; scope: block_body_statement_call_ordfunction (level : 6)

; activation record
%Frame_block_body_statement_call_ordfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_ordfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_ordfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_ordfunction, %Frame_block_body_statement_call_ordfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3815
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3816
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = bitcast i8* %t9 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 20
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t6 = icmp sge i32 %t13, 3
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3816
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3817
    %t14 = getelementptr inbounds %Frame_block_body_statement_call_ordfunction, %Frame_block_body_statement_call_ordfunction* %.frame, i32 0, i32 0
    %t15 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t22 = load i8*, i8** %t20
    call void @P_block_body_gen0t(%Frame_block_body* %t19, i32 58, i8* %t22)
    ; line 3818
    %t24 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t23 = bitcast i8* %t24 to i8**
    %t25 = load i8*, i8** @intptr
    store i8* %t25, i8** %t23

    ; epilogue
    ret void
}


; line 3821
;================================================================================
; scope: block_body_statement_call_chrfunction (level : 6)

; activation record
%Frame_block_body_statement_call_chrfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_chrfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_chrfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_chrfunction, %Frame_block_body_statement_call_chrfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3823
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3824
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3824
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3825
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_chrfunction, %Frame_block_body_statement_call_chrfunction* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 59)
    ; line 3826
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @charptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 3829
;================================================================================
; scope: block_body_statement_call_predsuccfunction (level : 6)

; activation record
%Frame_block_body_statement_call_predsuccfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_predsuccfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_predsuccfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_predsuccfunction, %Frame_block_body_statement_call_predsuccfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3831
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3832
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = bitcast i8* %t9 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 20
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t6 = icmp ne i32 %t13, 0
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3832
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3833
    %t17 = getelementptr inbounds %Frame_block_body_statement_call_predsuccfunction, %Frame_block_body_statement_call_predsuccfunction* %.frame, i32 0, i32 0
    %t18 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t17
    %t16 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t18, i32 0, i32 2
    %t15 = load i32, i32* %t16
    %t14 = icmp eq i32 %t15, 7
    br i1 %t14, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3833
    %t19 = getelementptr inbounds %Frame_block_body_statement_call_predsuccfunction, %Frame_block_body_statement_call_predsuccfunction* %.frame, i32 0, i32 0
    %t20 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t19
    %t21 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t20, i32 0, i32 3
    %t22 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t21
    %t23 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t22, i32 0, i32 3
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    %t26 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t25 = bitcast i8* %t26 to i8**
    %t27 = load i8*, i8** %t25
    call void @P_block_body_gen1t(%Frame_block_body* %t24, i32 31, i32 1, i8* %t27)
    br label %L_endif_3
L_else_3:
    ; line 3834
    %t28 = getelementptr inbounds %Frame_block_body_statement_call_predsuccfunction, %Frame_block_body_statement_call_predsuccfunction* %.frame, i32 0, i32 0
    %t29 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t28
    %t30 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t29, i32 0, i32 3
    %t31 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t30
    %t32 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t31, i32 0, i32 3
    %t33 = load %Frame_block_body*, %Frame_block_body** %t32
    %t35 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t34 = bitcast i8* %t35 to i8**
    %t36 = load i8*, i8** %t34
    call void @P_block_body_gen1t(%Frame_block_body* %t33, i32 34, i32 1, i8* %t36)
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 3837
;================================================================================
; scope: block_body_statement_call_eofeolnfunction (level : 6)

; activation record
%Frame_block_body_statement_call_eofeolnfunction = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_eofeolnfunction(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_eofeolnfunction, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3839
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 8
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3840
    call void @P_insymbol()
    ; line 3840
    %t4 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t5 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t4
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t5, %T_setofsys %.dummy_set)
    ; line 3841
    %t8 = load i32, i32* @sy
    %t7 = icmp eq i32 %t8, 9
    br i1 %t7, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3841
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 3841
    call void @P_error(i32 4)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 3844
    %t9 = load i1, i1* @inputhdf
    %t10 = icmp eq i1 0, %t9
    br i1 %t10, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3844
    call void @P_error(i32 175)
    br label %L_endif_3
L_endif_3:
    ; line 3846
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** @textptr
    store i8* %t13, i8** %t11
    ; line 3846
    %t15 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t14 = bitcast i8* %t15 to i32*
    store i32 1, i32* %t14
    ; line 3846
    %t17 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 12
    %t16 = bitcast i8* %t17 to i32*
    store i32 0, i32* %t16
    ; line 3847
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 16
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i8*, i8** @inputptr
    %t21 = bitcast i8* %t20 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 52
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    store i32 %t24, i32* %t18
    ; line 3847
    %t26 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 20
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i8*, i8** @inputptr
    %t28 = bitcast i8* %t27 to %T_identifier*
    %t30 = getelementptr inbounds %T_identifier, %T_identifier* %t28, i32 0, i32 56
    %t29 = bitcast i8* %t30 to i32*
    %t31 = load i32, i32* %t29
    store i32 %t31, i32* %t25
    br label %L_endif_1
L_endif_1:
    ; line 3850
    %t32 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t33 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t32
    %t34 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t33, i32 0, i32 3
    %t35 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t34
    %t36 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t35, i32 0, i32 3
    %t37 = load %Frame_block_body*, %Frame_block_body** %t36
    call void @P_block_body_loadaddress(%Frame_block_body* %t37)
    ; line 3851
    %t40 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t39 = bitcast i8* %t40 to i8**
    %t41 = load i8*, i8** %t39
    %t38 = icmp ne i32 %t41, null
    br i1 %t38, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3852
    %t44 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t43 = bitcast i8* %t44 to i8**
    %t45 = load i8*, i8** %t43
    %t46 = bitcast i8* %t45 to %T_structure*
    %t48 = getelementptr inbounds %T_structure, %T_structure* %t46, i32 0, i32 20
    %t47 = bitcast i8* %t48 to i32*
    %t49 = load i32, i32* %t47
    %t42 = icmp ne i32 %t49, 6
    br i1 %t42, label %L_then_5, label %L_else_5
L_then_5:
    ; line 3852
    call void @P_error(i32 125)
    br label %L_endif_5
L_else_5:
    ; line 3853
    br label %L_AND_expr_6
L_AND_expr_6:
    %t54 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t55 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t54
    %t53 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t55, i32 0, i32 2
    %t52 = load i32, i32* %t53
    %t51 = icmp eq i32 %t52, 10
    br i1 %t51, label %L_AND_eval_6, label %L_AND_shortcut_6
L_AND_eval_6:
    %t58 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t57 = bitcast i8* %t58 to i8**
    %t59 = load i8*, i8** %t57
    %t60 = load i8*, i8** @textptr
    %t56 = icmp ne i32 %t59, %t60
    br label %L_AND_shortcut_6
L_AND_shortcut_6:
    %t50 = phi [%t56, %L_AND_eval_6], [false, %L_AND_expr_6]
    br i1 %t50, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3853
    call void @P_error(i32 116)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 3854
    %t64 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t65 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t64
    %t63 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t65, i32 0, i32 2
    %t62 = load i32, i32* %t63
    %t61 = icmp eq i32 %t62, 9
    br i1 %t61, label %L_then_8, label %L_else_8
L_then_8:
    ; line 3855
    %t68 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t67 = bitcast i8* %t68 to i8**
    %t69 = load i8*, i8** %t67
    %t70 = load i8*, i8** @textptr
    %t66 = icmp eq i32 %t69, %t70
    br i1 %t66, label %L_then_9, label %L_else_9
L_then_9:
    ; line 3855
    %t71 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t72 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t71
    %t73 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t72, i32 0, i32 3
    %t74 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t73
    %t75 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t74, i32 0, i32 3
    %t76 = load %Frame_block_body*, %Frame_block_body** %t75
    call void @P_block_body_gen0(%Frame_block_body* %t76, i32 8)
    br label %L_endif_9
L_else_9:
    ; line 3856
    %t77 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t78 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t77
    %t79 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t78, i32 0, i32 3
    %t80 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t79
    %t81 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t80, i32 0, i32 3
    %t82 = load %Frame_block_body*, %Frame_block_body** %t81
    call void @P_block_body_gen0(%Frame_block_body* %t82, i32 69)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_8
L_else_8:
    ; line 3857
    %t83 = getelementptr inbounds %Frame_block_body_statement_call_eofeolnfunction, %Frame_block_body_statement_call_eofeolnfunction* %.frame, i32 0, i32 0
    %t84 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t83
    %t85 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t84, i32 0, i32 3
    %t86 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t85
    %t87 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t86, i32 0, i32 3
    %t88 = load %Frame_block_body*, %Frame_block_body** %t87
    call void @P_block_body_gen1(%Frame_block_body* %t88, i32 30, i32 14)
    br label %L_endif_8
L_endif_8:
    ; line 3858
    %t90 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t89 = bitcast i8* %t90 to i8**
    %t91 = load i8*, i8** @boolptr
    store i8* %t91, i8** %t89

    ; epilogue
    ret void
}


; line 3861
;================================================================================
; scope: block_body_statement_call_callnonstandard (level : 6)

; activation record
%Frame_block_body_statement_call_callnonstandard = type
{
    ; variables
    i1,    ; 0: lb
    i8*,    ; 1: lcp
    i32,    ; 2: lkind
    i32,    ; 3: llc
    i32,    ; 4: locpar
    i8*,    ; 5: lsp
    i8*,    ; 6: nxt

    ; slink
    %Frame_block_body_statement_call*    ; 7
};

; procedure body
define void @P_block_body_statement_call_callnonstandard(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_callnonstandard, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 3874
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
    ; line 3876
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 6
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t7 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t6
    %t5 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t7, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t8 = bitcast i8* %t4 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 56
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t3
    ; line 3876
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 2
    %t15 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t16 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t15
    %t14 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t16, i32 0, i32 0
    %t13 = load i8*, i8** %t14
    %t17 = bitcast i8* %t13 to %T_identifier*
    %t19 = getelementptr inbounds %T_identifier, %T_identifier* %t17, i32 0, i32 76
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i32, i32* %t18
    store i32 %t20, i32* %t12
    ; line 3877
    %t24 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t25 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t24
    %t23 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t25, i32 0, i32 0
    %t22 = load i8*, i8** %t23
    %t26 = bitcast i8* %t22 to %T_identifier*
    %t28 = getelementptr inbounds %T_identifier, %T_identifier* %t26, i32 0, i32 76
    %t27 = bitcast i8* %t28 to i32*
    %t29 = load i32, i32* %t27
    %t21 = icmp eq i32 %t29, 0
    br i1 %t21, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3878
    %t32 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t33 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t32
    %t31 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t33, i32 0, i32 0
    %t30 = load i8*, i8** %t31
    %t34 = bitcast i8* %t30 to %T_identifier*
    %t36 = getelementptr inbounds %T_identifier, %T_identifier* %t34, i32 0, i32 81
    %t35 = bitcast i8* %t36 to i1*
    %t37 = load i1, i1* %t35
    %t38 = icmp eq i1 0, %t37
    br i1 %t38, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3878
    %t39 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t40 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t39
    %t41 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t40, i32 0, i32 3
    %t42 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t41
    %t43 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t42, i32 0, i32 3
    %t44 = load %Frame_block_body*, %Frame_block_body** %t43
    %t46 = load i32, i32* @level
    %t49 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t50 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t49
    %t48 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t50, i32 0, i32 0
    %t47 = load i8*, i8** %t48
    %t51 = bitcast i8* %t47 to %T_identifier*
    %t53 = getelementptr inbounds %T_identifier, %T_identifier* %t51, i32 0, i32 68
    %t52 = bitcast i8* %t53 to i32*
    %t54 = load i32, i32* %t52
    %t45 = sub i32 %t46, %t54
    call void @P_block_body_gen1(%Frame_block_body* %t44, i32 41, i32 %t45)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 3879
    %t55 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t56 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t55
    %t57 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t56, i32 0, i32 3
    %t58 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t57
    %t59 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t58, i32 0, i32 3
    %t60 = load %Frame_block_body*, %Frame_block_body** %t59
    %t62 = load i32, i32* @level
    %t65 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t66 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t65
    %t64 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t66, i32 0, i32 0
    %t63 = load i8*, i8** %t64
    %t67 = bitcast i8* %t63 to %T_identifier*
    %t69 = getelementptr inbounds %T_identifier, %T_identifier* %t67, i32 0, i32 68
    %t68 = bitcast i8* %t69 to i32*
    %t70 = load i32, i32* %t68
    %t61 = sub i32 %t62, %t70
    call void @P_block_body_gen1(%Frame_block_body* %t60, i32 41, i32 %t61)
    br label %L_endif_1
L_endif_1:
    ; line 3881
    %t72 = load i32, i32* @sy
    %t71 = icmp eq i32 %t72, 8
    br i1 %t71, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3882
    %t73 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 3
    %t74 = load i32, i32* @lc
    store i32 %t74, i32* %t73
    ; line 3883
    ; line 3953
    %t76 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 3
    %t75 = load i32, i32* %t76
    store i32 %t75, i32* @lc
    ; line 3954
    %t78 = load i32, i32* @sy
    %t77 = icmp eq i32 %t78, 9
    br i1 %t77, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3954
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 3954
    call void @P_error(i32 4)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 3956
    %t81 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 2
    %t80 = load i32, i32* %t81
    %t79 = icmp eq i32 %t80, 0
    br i1 %t79, label %L_then_5, label %L_else_5
L_then_5:
    ; line 3957
    %t84 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 6
    %t83 = load i8*, i8** %t84
    %t82 = icmp ne i32 %t83, null
    br i1 %t82, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 3957
    call void @P_error(i32 126)
    br label %L_endif_6
L_endif_6:
    ; line 3960
    %t87 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t88 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t87
    %t86 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t88, i32 0, i32 0
    %t85 = load i8*, i8** %t86
    %t89 = bitcast i8* %t85 to %T_identifier*
    %t91 = getelementptr inbounds %T_identifier, %T_identifier* %t89, i32 0, i32 81
    %t90 = bitcast i8* %t91 to i1*
    %t92 = load i1, i1* %t90
    br i1 %t92, label %L_then_7, label %L_else_7
L_then_7:
    ; line 3960
    %t93 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t94 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t93
    %t95 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t94, i32 0, i32 3
    %t96 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t95
    %t97 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t96, i32 0, i32 3
    %t98 = load %Frame_block_body*, %Frame_block_body** %t97
    %t101 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t102 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t101
    %t100 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t102, i32 0, i32 0
    %t99 = load i8*, i8** %t100
    %t103 = bitcast i8* %t99 to %T_identifier*
    %t105 = getelementptr inbounds %T_identifier, %T_identifier* %t103, i32 0, i32 72
    %t104 = bitcast i8* %t105 to i32*
    %t106 = load i32, i32* %t104
    call void @P_block_body_gen1(%Frame_block_body* %t98, i32 30, i32 %t106)
    br label %L_endif_7
L_else_7:
    ; line 3961
    %t107 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t108 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t107
    %t109 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t108, i32 0, i32 3
    %t110 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t109
    %t111 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t110, i32 0, i32 3
    %t112 = load %Frame_block_body*, %Frame_block_body** %t111
    %t114 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 4
    %t113 = load i32, i32* %t114
    %t117 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t118 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t117
    %t116 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t118, i32 0, i32 0
    %t115 = load i8*, i8** %t116
    %t119 = bitcast i8* %t115 to %T_identifier*
    %t121 = getelementptr inbounds %T_identifier, %T_identifier* %t119, i32 0, i32 72
    %t120 = bitcast i8* %t121 to i32*
    %t122 = load i32, i32* %t120
    call void @P_block_body_gencupent(%Frame_block_body* %t112, i32 46, i32 %t113, i32 %t122)
    br label %L_endif_7
L_endif_7:
    ; nop
    br label %L_endif_5
L_else_5:
    ; line 3965
    %t123 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t124 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t123
    %t125 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t124, i32 0, i32 3
    %t126 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t125
    %t127 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t126, i32 0, i32 3
    %t128 = load %Frame_block_body*, %Frame_block_body** %t127
    %t130 = load i32, i32* @level
    %t133 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t134 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t133
    %t132 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t134, i32 0, i32 0
    %t131 = load i8*, i8** %t132
    %t135 = bitcast i8* %t131 to %T_identifier*
    %t137 = getelementptr inbounds %T_identifier, %T_identifier* %t135, i32 0, i32 68
    %t136 = bitcast i8* %t137 to i32*
    %t138 = load i32, i32* %t136
    %t129 = sub i32 %t130, %t138
    %t141 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t142 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t141
    %t140 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t142, i32 0, i32 0
    %t139 = load i8*, i8** %t140
    %t143 = bitcast i8* %t139 to %T_identifier*
    %t145 = getelementptr inbounds %T_identifier, %T_identifier* %t143, i32 0, i32 48
    %t144 = bitcast i8* %t145 to i32*
    %t146 = load i32, i32* %t144
    call void @P_block_body_gen2(%Frame_block_body* %t128, i32 50, i32 %t129, i32 %t146)
    ; line 3966
    %t147 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t148 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t147
    %t149 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t148, i32 0, i32 3
    %t150 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t149
    %t151 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t150, i32 0, i32 3
    %t152 = load %Frame_block_body*, %Frame_block_body** %t151
    %t154 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 4
    %t153 = load i32, i32* %t154
    call void @P_block_body_gen1(%Frame_block_body* %t152, i32 67, i32 %t153)
    br label %L_endif_5
L_endif_5:
    ; line 3968
    %t156 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t155 = bitcast i8* %t156 to i8**
    %t159 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t160 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t159
    %t158 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t160, i32 0, i32 0
    %t157 = load i8*, i8** %t158
    %t161 = bitcast i8* %t157 to %T_identifier*
    %t163 = getelementptr inbounds %T_identifier, %T_identifier* %t161, i32 0, i32 24
    %t162 = bitcast i8* %t163 to i8**
    %t164 = load i8*, i8** %t162
    store i8* %t164, i8** %t155

    ; epilogue
    ret void
}


; line 3865
;================================================================================
; scope: block_body_statement_call_callnonstandard_compparam (level : 7)

; activation record
%Frame_block_body_statement_call_callnonstandard_compparam = type
{
    ; parameters
    i8*,    ; 0: pla
    i8*,    ; 1: plb

    ; slink
    %Frame_block_body_statement_call_callnonstandard*    ; 2
};

; procedure body
define void @P_block_body_statement_call_callnonstandard_compparam(%Frame_block_body_statement_call_callnonstandard* %.slink, i8* %pla, i8* %plb)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_callnonstandard_compparam, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard_compparam, %Frame_block_body_statement_call_callnonstandard_compparam* %.frame, i32 0, i32 2
    store %Frame_block_body_statement_call_callnonstandard* %.slink, %Frame_block_body_statement_call_callnonstandard** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard_compparam, %Frame_block_body_statement_call_callnonstandard_compparam* %.frame, i32 0, i32 0
    store i8* %pla, i8** %t2
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard_compparam, %Frame_block_body_statement_call_callnonstandard_compparam* %.frame, i32 0, i32 1
    store i8* %plb, i8** %t3

    ; body
    ; line 3867
    ; line 3871
    br label %L_OR_expr_1
L_OR_expr_1:
    %t7 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard_compparam, %Frame_block_body_statement_call_callnonstandard_compparam* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t5 = icmp ne i32 %t6, null
    br i1 %t5, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t10 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard_compparam, %Frame_block_body_statement_call_callnonstandard_compparam* %.frame, i32 0, i32 1
    %t9 = load i8*, i8** %t10
    %t8 = icmp ne i32 %t9, null
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t4 = phi [%t8, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t4, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3871
    call void @P_error(i32 189)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 4017
;================================================================================
; scope: block_body_statement_expression (level : 5)

; activation record
%Frame_block_body_statement_expression = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    %T_attr,    ; 1: lattr
    i32,    ; 2: lop
    i32,    ; 3: lsize
    i8,    ; 4: typind

    ; slink
    %Frame_block_body_statement*    ; 5
};

; procedure body
define void @P_block_body_statement_expression(%Frame_block_body_statement* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_expression, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 4355
    call void @P_block_body_statement_expression_simpleexpression(%Frame_block_body_statement_expression* %.frame, %T_setofsys %.dummy_set)
    ; line 4356
    %t5 = load i32, i32* @sy
    %t4 = icmp eq i32 %t5, 7
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 4358
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t6 = icmp ne i32 %t9, null
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 4359
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    %t14 = bitcast i8* %t13 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 20
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t10 = icmp sle i32 %t17, 3
    br i1 %t10, label %L_then_3, label %L_else_3
L_then_3:
    ; line 4359
    %t18 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t19 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t18
    %t20 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t19, i32 0, i32 3
    %t21 = load %Frame_block_body*, %Frame_block_body** %t20
    call void @P_block_body_load(%Frame_block_body* %t21)
    br label %L_endif_3
L_else_3:
    ; line 4360
    %t22 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t23 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    call void @P_block_body_loadaddress(%Frame_block_body* %t25)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 4361
    %t26 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t27 = load %T_attr, %T_attr* @gattr
    store %T_attr %t27, %T_attr* %t26
    ; line 4361
    %t28 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 2
    %t29 = load i32, i32* @op
    store i32 %t29, i32* %t28
    ; line 4362
    %t32 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 2
    %t31 = load i32, i32* %t32
    %t30 = icmp eq i32 %t31, 14
    br i1 %t30, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 4363
    %t33 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t35 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t34, i32 0, i32 3
    %t36 = load %Frame_block_body*, %Frame_block_body** %t35
    %t37 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t36, i32 0, i32 16
    %t38 = load %Frame_block*, %Frame_block** %t37
    %t40 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t39 = bitcast i8* %t40 to i8**
    %t41 = load i8*, i8** %t39
    %t42 = load i8*, i8** @intptr
    %t43 = call i1 @F_block_comptypes(%Frame_block* %t38, i8* %t41, i8* %t42)
    %t44 = icmp eq i1 0, %t43
    br i1 %t44, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 4364
    %t45 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t46 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t45
    %t47 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t46, i32 0, i32 3
    %t48 = load %Frame_block_body*, %Frame_block_body** %t47
    %t50 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t49 = bitcast i8* %t50 to i8**
    %t51 = load i8*, i8** %t49
    call void @P_block_body_gen0t(%Frame_block_body* %t48, i32 58, i8* %t51)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 4365
    call void @P_insymbol()
    ; line 4365
    %t53 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 0
    %t52 = load %T_setofsys, %T_setofsys* %t53
    call void @P_block_body_statement_expression_simpleexpression(%Frame_block_body_statement_expression* %.frame, %T_setofsys %t52)
    ; line 4366
    %t56 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t55 = bitcast i8* %t56 to i8**
    %t57 = load i8*, i8** %t55
    %t54 = icmp ne i32 %t57, null
    br i1 %t54, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 4367
    %t60 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t59 = bitcast i8* %t60 to i8**
    %t61 = load i8*, i8** %t59
    %t62 = bitcast i8* %t61 to %T_structure*
    %t64 = getelementptr inbounds %T_structure, %T_structure* %t62, i32 0, i32 20
    %t63 = bitcast i8* %t64 to i32*
    %t65 = load i32, i32* %t63
    %t58 = icmp sle i32 %t65, 3
    br i1 %t58, label %L_then_7, label %L_else_7
L_then_7:
    ; line 4367
    %t66 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t67 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t66
    %t68 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t67, i32 0, i32 3
    %t69 = load %Frame_block_body*, %Frame_block_body** %t68
    call void @P_block_body_load(%Frame_block_body* %t69)
    br label %L_endif_7
L_else_7:
    ; line 4368
    %t70 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t71 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body*, %Frame_block_body** %t72
    call void @P_block_body_loadaddress(%Frame_block_body* %t73)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 4369
    br label %L_AND_expr_8
L_AND_expr_8:
    %t76 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t78 = getelementptr inbounds %T_attr, %T_attr* %t76, i32 0, i32 0
    %t77 = bitcast i8* %t78 to i8**
    %t79 = load i8*, i8** %t77
    %t75 = icmp ne i32 %t79, null
    br i1 %t75, label %L_AND_eval_8, label %L_AND_shortcut_8
L_AND_eval_8:
    %t82 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t81 = bitcast i8* %t82 to i8**
    %t83 = load i8*, i8** %t81
    %t80 = icmp ne i32 %t83, null
    br label %L_AND_shortcut_8
L_AND_shortcut_8:
    %t74 = phi [%t80, %L_AND_eval_8], [false, %L_AND_expr_8]
    br i1 %t74, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 4370
    %t86 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 2
    %t85 = load i32, i32* %t86
    %t84 = icmp eq i32 %t85, 14
    br i1 %t84, label %L_then_10, label %L_else_10
L_then_10:
    ; line 4371
    %t89 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t88 = bitcast i8* %t89 to i8**
    %t90 = load i8*, i8** %t88
    %t91 = bitcast i8* %t90 to %T_structure*
    %t93 = getelementptr inbounds %T_structure, %T_structure* %t91, i32 0, i32 20
    %t92 = bitcast i8* %t93 to i32*
    %t94 = load i32, i32* %t92
    %t87 = icmp eq i32 %t94, 3
    br i1 %t87, label %L_then_11, label %L_else_11
L_then_11:
    ; line 4372
    %t95 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t96 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t95
    %t97 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t96, i32 0, i32 3
    %t98 = load %Frame_block_body*, %Frame_block_body** %t97
    %t99 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t98, i32 0, i32 16
    %t100 = load %Frame_block*, %Frame_block** %t99
    %t101 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t103 = getelementptr inbounds %T_attr, %T_attr* %t101, i32 0, i32 0
    %t102 = bitcast i8* %t103 to i8**
    %t104 = load i8*, i8** %t102
    %t106 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t105 = bitcast i8* %t106 to i8**
    %t107 = load i8*, i8** %t105
    %t108 = bitcast i8* %t107 to %T_structure*
    %t110 = getelementptr inbounds %T_structure, %T_structure* %t108, i32 0, i32 24
    %t109 = bitcast i8* %t110 to i8**
    %t111 = load i8*, i8** %t109
    %t112 = call i1 @F_block_comptypes(%Frame_block* %t100, i8* %t104, i8* %t111)
    br i1 %t112, label %L_then_12, label %L_else_12
L_then_12:
    ; line 4373
    %t113 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t114 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t113
    %t115 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t114, i32 0, i32 3
    %t116 = load %Frame_block_body*, %Frame_block_body** %t115
    call void @P_block_body_gen0(%Frame_block_body* %t116, i32 11)
    br label %L_endif_12
L_else_12:
    ; line 4374
    call void @P_error(i32 129)
    ; line 4374
    %t118 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t117 = bitcast i8* %t118 to i8**
    store i8* null, i8** %t117
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_else_11:
    ; line 4375
    call void @P_error(i32 130)
    ; line 4375
    %t120 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t119 = bitcast i8* %t120 to i8**
    store i8* null, i8** %t119
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_else_10:
    ; line 4378
    %t122 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t124 = getelementptr inbounds %T_attr, %T_attr* %t122, i32 0, i32 0
    %t123 = bitcast i8* %t124 to i8**
    %t125 = load i8*, i8** %t123
    %t127 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t126 = bitcast i8* %t127 to i8**
    %t128 = load i8*, i8** %t126
    %t121 = icmp ne i32 %t125, %t128
    br i1 %t121, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 4379
    %t130 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t132 = getelementptr inbounds %T_attr, %T_attr* %t130, i32 0, i32 0
    %t131 = bitcast i8* %t132 to i8**
    %t133 = load i8*, i8** %t131
    %t134 = load i8*, i8** @intptr
    %t129 = icmp eq i32 %t133, %t134
    br i1 %t129, label %L_then_14, label %L_else_14
L_then_14:
    ; line 4380
    %t135 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t136 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t135
    %t137 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t136, i32 0, i32 3
    %t138 = load %Frame_block_body*, %Frame_block_body** %t137
    call void @P_block_body_gen0(%Frame_block_body* %t138, i32 9)
    ; line 4381
    %t139 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t141 = getelementptr inbounds %T_attr, %T_attr* %t139, i32 0, i32 0
    %t140 = bitcast i8* %t141 to i8**
    %t142 = load i8*, i8** @realptr
    store i8* %t142, i8** %t140
    br label %L_endif_14
L_else_14:
    ; line 4384
    %t145 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t144 = bitcast i8* %t145 to i8**
    %t146 = load i8*, i8** %t144
    %t147 = load i8*, i8** @intptr
    %t143 = icmp eq i32 %t146, %t147
    br i1 %t143, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 4385
    %t148 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t149 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t148
    %t150 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t149, i32 0, i32 3
    %t151 = load %Frame_block_body*, %Frame_block_body** %t150
    call void @P_block_body_gen0(%Frame_block_body* %t151, i32 10)
    ; line 4386
    %t153 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t152 = bitcast i8* %t153 to i8**
    %t154 = load i8*, i8** @realptr
    store i8* %t154, i8** %t152
    br label %L_endif_15
L_endif_15:
    br label %L_endif_14
L_endif_14:
    br label %L_endif_13
L_endif_13:
    ; line 4388
    %t155 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t156 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t155
    %t157 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t156, i32 0, i32 3
    %t158 = load %Frame_block_body*, %Frame_block_body** %t157
    %t159 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t158, i32 0, i32 16
    %t160 = load %Frame_block*, %Frame_block** %t159
    %t161 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t163 = getelementptr inbounds %T_attr, %T_attr* %t161, i32 0, i32 0
    %t162 = bitcast i8* %t163 to i8**
    %t164 = load i8*, i8** %t162
    %t166 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t165 = bitcast i8* %t166 to i8**
    %t167 = load i8*, i8** %t165
    %t168 = call i1 @F_block_comptypes(%Frame_block* %t160, i8* %t164, i8* %t167)
    br i1 %t168, label %L_then_16, label %L_else_16
L_then_16:
    ; line 4389
    %t169 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 3
    %t170 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t172 = getelementptr inbounds %T_attr, %T_attr* %t170, i32 0, i32 0
    %t171 = bitcast i8* %t172 to i8**
    %t173 = load i8*, i8** %t171
    %t174 = bitcast i8* %t173 to %T_structure*
    %t176 = getelementptr inbounds %T_structure, %T_structure* %t174, i32 0, i32 12
    %t175 = bitcast i8* %t176 to i32*
    %t177 = load i32, i32* %t175
    store i32 %t177, i32* %t169
    ; line 4390
    ; line 4421
    br label %L_endif_16
L_else_16:
    ; line 4430
    call void @P_error(i32 129)
    br label %L_endif_16
L_endif_16:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; line 4432
    %t179 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t178 = bitcast i8* %t179 to i8**
    %t180 = load i8*, i8** @boolptr
    store i8* %t180, i8** %t178
    ; line 4432
    %t182 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t181 = bitcast i8* %t182 to i32*
    store i32 2, i32* %t181
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 4020
;================================================================================
; scope: block_body_statement_expression_simpleexpression (level : 6)

; activation record
%Frame_block_body_statement_expression_simpleexpression = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    %T_attr,    ; 1: lattr
    i32,    ; 2: lop
    i1,    ; 3: signed

    ; slink
    %Frame_block_body_statement_expression*    ; 4
};

; procedure body
define void @P_block_body_statement_expression_simpleexpression(%Frame_block_body_statement_expression* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_expression_simpleexpression, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    store %Frame_block_body_statement_expression* %.slink, %Frame_block_body_statement_expression** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 4286
    %t3 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    store i1 0, i1* %t3
    ; line 4287
    br label %L_AND_expr_1
L_AND_expr_1:
    %t6 = load i32, i32* @sy
    %t5 = icmp eq i32 %t6, 6
    br i1 %t5, label %L_AND_eval_1, label %L_AND_shortcut_1
L_AND_eval_1:
    br label %L_AND_shortcut_1
L_AND_shortcut_1:
    %t4 = phi [true, %L_AND_eval_1], [false, %L_AND_expr_1]
    br i1 %t4, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 4288
    %t8 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    %t10 = load i32, i32* @op
    %t9 = icmp eq i32 %t10, 6
    store i1 %t9, i1* %t8
    ; line 4288
    call void @P_insymbol()
    br label %L_endif_2
L_endif_2:
    ; line 4289
    call void @P_block_body_statement_expression_simpleexpression_term(%Frame_block_body_statement_expression_simpleexpression* %.frame, %T_setofsys %.dummy_set)
    ; line 4290
    %t13 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    %t12 = load i1, i1* %t13
    br i1 %t12, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 4291
    %t14 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    %t15 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t15, i32 0, i32 5
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    call void @P_block_body_load(%Frame_block_body* %t19)
    ; line 4292
    %t22 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t21 = bitcast i8* %t22 to i8**
    %t23 = load i8*, i8** %t21
    %t24 = load i8*, i8** @intptr
    %t20 = icmp eq i32 %t23, %t24
    br i1 %t20, label %L_then_4, label %L_else_4
L_then_4:
    ; line 4292
    %t25 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    %t26 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t25
    %t27 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t26, i32 0, i32 5
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body*, %Frame_block_body** %t29
    call void @P_block_body_gen0(%Frame_block_body* %t30, i32 17)
    br label %L_endif_4
L_else_4:
    ; line 4294
    %t33 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t32 = bitcast i8* %t33 to i8**
    %t34 = load i8*, i8** %t32
    %t35 = load i8*, i8** @realptr
    %t31 = icmp eq i32 %t34, %t35
    br i1 %t31, label %L_then_5, label %L_else_5
L_then_5:
    ; line 4294
    %t36 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    %t37 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t36
    %t38 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t37, i32 0, i32 5
    %t39 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t38
    %t40 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t39, i32 0, i32 3
    %t41 = load %Frame_block_body*, %Frame_block_body** %t40
    call void @P_block_body_gen0(%Frame_block_body* %t41, i32 18)
    br label %L_endif_5
L_else_5:
    ; line 4295
    call void @P_error(i32 134)
    ; line 4295
    %t43 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t42 = bitcast i8* %t43 to i8**
    store i8* null, i8** %t42
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 4297

    ; epilogue
    ret void
}


; line 4023
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term (level : 7)

; activation record
%Frame_block_body_statement_expression_simpleexpression_term = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    %T_attr,    ; 1: lattr
    i32,    ; 2: lop

    ; slink
    %Frame_block_body_statement_expression_simpleexpression*    ; 3
};

; procedure body
define void @P_block_body_statement_expression_simpleexpression_term(%Frame_block_body_statement_expression_simpleexpression* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_expression_simpleexpression_term, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term, %Frame_block_body_statement_expression_simpleexpression_term* %.frame, i32 0, i32 3
    store %Frame_block_body_statement_expression_simpleexpression* %.slink, %Frame_block_body_statement_expression_simpleexpression** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term, %Frame_block_body_statement_expression_simpleexpression_term* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 4231
    call void @P_block_body_statement_expression_simpleexpression_term_factor(%Frame_block_body_statement_expression_simpleexpression_term* %.frame, %T_setofsys %.dummy_set)
    ; line 4232

    ; epilogue
    ret void
}


; line 4026
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term_factor (level : 8)

; activation record
%Frame_block_body_statement_expression_simpleexpression_term_factor = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    %T_setty,    ; 1: cstpart
    i8*,    ; 2: lcp
    i8*,    ; 3: lsp
    i8*,    ; 4: lvp
    %T_attr,    ; 5: rattr
    %T_attr,    ; 6: tattr
    i1,    ; 7: test
    i1,    ; 8: varpart

    ; slink
    %Frame_block_body_statement_expression_simpleexpression_term*    ; 9
};

; procedure body
define void @P_block_body_statement_expression_simpleexpression_term_factor(%Frame_block_body_statement_expression_simpleexpression_term* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_expression_simpleexpression_term_factor, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term_factor, %Frame_block_body_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 9
    store %Frame_block_body_statement_expression_simpleexpression_term* %.slink, %Frame_block_body_statement_expression_simpleexpression_term** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term_factor, %Frame_block_body_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 4032
    %t4 = icmp eq i1 0, true
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 4033
    call void @P_error(i32 58)
    ; line 4033
    %t5 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term_factor, %Frame_block_body_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 9
    %t6 = load %Frame_block_body_statement_expression_simpleexpression_term*, %Frame_block_body_statement_expression_simpleexpression_term** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term, %Frame_block_body_statement_expression_simpleexpression_term* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement_expression_simpleexpression*, %Frame_block_body_statement_expression_simpleexpression** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %t8, i32 0, i32 4
    %t10 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t9
    %t11 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t10, i32 0, i32 5
    %t12 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body*, %Frame_block_body** %t13
    %t15 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t14, i32 0, i32 16
    %t16 = load %Frame_block*, %Frame_block** %t15
    call void @P_block_skip(%Frame_block* %t16, %T_setofsys true)
    ; line 4034
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    store i8* null, i8** %t18
    br label %L_endif_1
L_endif_1:
    ; line 4036

    ; epilogue
    ret void
}


; line 4436
;================================================================================
; scope: block_body_statement_assignment (level : 5)

; activation record
%Frame_block_body_statement_assignment = type
{
    ; parameters
    i8*,    ; 0: fcp

    ; variables
    %T_attr,    ; 1: lattr

    ; slink
    %Frame_block_body_statement*    ; 2
};

; procedure body
define void @P_block_body_statement_assignment(%Frame_block_body_statement* %.slink, i8* %fcp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_assignment, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 0
    store i8* %fcp, i8** %t2

    ; body
    ; line 4438
    %t3 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t7 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    call void @P_block_body_statement_selector(%Frame_block_body_statement* %t4, %T_setofsys %.dummy_set, i8* %t6)
    ; line 4439
    %t9 = load i32, i32* @sy
    %t8 = icmp eq i32 %t9, 17
    br i1 %t8, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4441
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    %t10 = icmp ne i32 %t13, null
    br i1 %t10, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 4442
    br label %L_OR_expr_3
L_OR_expr_3:
    %t17 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 12
    %t16 = bitcast i8* %t17 to i32*
    %t18 = load i32, i32* %t16
    %t15 = icmp ne i32 %t18, 0
    br i1 %t15, label %L_OR_shortcut_3, label %L_OR_eval_3
L_OR_eval_3:
    %t21 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t22 = load i8*, i8** %t20
    %t23 = bitcast i8* %t22 to %T_structure*
    %t25 = getelementptr inbounds %T_structure, %T_structure* %t23, i32 0, i32 20
    %t24 = bitcast i8* %t25 to i32*
    %t26 = load i32, i32* %t24
    %t19 = icmp sgt i32 %t26, 3
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t14 = phi [%t19, %L_OR_eval_3], [true, %L_OR_expr_3]
    br i1 %t14, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 4443
    %t27 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body*, %Frame_block_body** %t29
    call void @P_block_body_loadaddress(%Frame_block_body* %t30)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_2
L_endif_2:
    ; line 4444
    %t31 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 1
    %t32 = load %T_attr, %T_attr* @gattr
    store %T_attr %t32, %T_attr* %t31
    ; line 4445
    call void @P_insymbol()
    ; line 4445
    %t33 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t37 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t38 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t37
    %t36 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t38, i32 0, i32 0
    %t35 = load %T_setofsys, %T_setofsys* %t36
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t34, %T_setofsys %t35)
    ; line 4446
    %t41 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t40 = bitcast i8* %t41 to i8**
    %t42 = load i8*, i8** %t40
    %t39 = icmp ne i32 %t42, null
    br i1 %t39, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 4447
    %t45 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t44 = bitcast i8* %t45 to i8**
    %t46 = load i8*, i8** %t44
    %t47 = bitcast i8* %t46 to %T_structure*
    %t49 = getelementptr inbounds %T_structure, %T_structure* %t47, i32 0, i32 20
    %t48 = bitcast i8* %t49 to i32*
    %t50 = load i32, i32* %t48
    %t43 = icmp sle i32 %t50, 3
    br i1 %t43, label %L_then_6, label %L_else_6
L_then_6:
    ; line 4447
    %t51 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t52 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t51
    %t53 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t52, i32 0, i32 3
    %t54 = load %Frame_block_body*, %Frame_block_body** %t53
    call void @P_block_body_load(%Frame_block_body* %t54)
    br label %L_endif_6
L_else_6:
    ; line 4448
    %t55 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t56 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t55
    %t57 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t56, i32 0, i32 3
    %t58 = load %Frame_block_body*, %Frame_block_body** %t57
    call void @P_block_body_loadaddress(%Frame_block_body* %t58)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    ; line 4449
    br label %L_AND_expr_7
L_AND_expr_7:
    %t61 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 1
    %t63 = getelementptr inbounds %T_attr, %T_attr* %t61, i32 0, i32 0
    %t62 = bitcast i8* %t63 to i8**
    %t64 = load i8*, i8** %t62
    %t60 = icmp ne i32 %t64, null
    br i1 %t60, label %L_AND_eval_7, label %L_AND_shortcut_7
L_AND_eval_7:
    %t67 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t66 = bitcast i8* %t67 to i8**
    %t68 = load i8*, i8** %t66
    %t65 = icmp ne i32 %t68, null
    br label %L_AND_shortcut_7
L_AND_shortcut_7:
    %t59 = phi [%t65, %L_AND_eval_7], [false, %L_AND_expr_7]
    br i1 %t59, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 4451
    br label %L_AND_expr_9
L_AND_expr_9:
    %t70 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t71 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body*, %Frame_block_body** %t72
    %t74 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t73, i32 0, i32 16
    %t75 = load %Frame_block*, %Frame_block** %t74
    %t76 = load i8*, i8** @realptr
    %t77 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 1
    %t79 = getelementptr inbounds %T_attr, %T_attr* %t77, i32 0, i32 0
    %t78 = bitcast i8* %t79 to i8**
    %t80 = load i8*, i8** %t78
    %t81 = call i1 @F_block_comptypes(%Frame_block* %t75, i8* %t76, i8* %t80)
    br i1 %t81, label %L_AND_eval_9, label %L_AND_shortcut_9
L_AND_eval_9:
    %t84 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t83 = bitcast i8* %t84 to i8**
    %t85 = load i8*, i8** %t83
    %t86 = load i8*, i8** @intptr
    %t82 = icmp eq i32 %t85, %t86
    br label %L_AND_shortcut_9
L_AND_shortcut_9:
    %t69 = phi [%t82, %L_AND_eval_9], [false, %L_AND_expr_9]
    br i1 %t69, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 4452
    %t87 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t88 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t87
    %t89 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t88, i32 0, i32 3
    %t90 = load %Frame_block_body*, %Frame_block_body** %t89
    call void @P_block_body_gen0(%Frame_block_body* %t90, i32 10)
    ; line 4453
    %t92 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t91 = bitcast i8* %t92 to i8**
    %t93 = load i8*, i8** @realptr
    store i8* %t93, i8** %t91
    br label %L_endif_10
L_endif_10:
    ; line 4455
    %t94 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t95 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t94
    %t96 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t95, i32 0, i32 3
    %t97 = load %Frame_block_body*, %Frame_block_body** %t96
    %t98 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t97, i32 0, i32 16
    %t99 = load %Frame_block*, %Frame_block** %t98
    %t100 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 1
    %t102 = getelementptr inbounds %T_attr, %T_attr* %t100, i32 0, i32 0
    %t101 = bitcast i8* %t102 to i8**
    %t103 = load i8*, i8** %t101
    %t105 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t104 = bitcast i8* %t105 to i8**
    %t106 = load i8*, i8** %t104
    %t107 = call i1 @F_block_comptypes(%Frame_block* %t99, i8* %t103, i8* %t106)
    br i1 %t107, label %L_then_11, label %L_else_11
L_then_11:
    ; line 4456
    %t108 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t109 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t108
    %t110 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t109, i32 0, i32 3
    %t111 = load %Frame_block_body*, %Frame_block_body** %t110
    %t112 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t111, i32 0, i32 16
    %t113 = load %Frame_block*, %Frame_block** %t112
    %t115 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t114 = bitcast i8* %t115 to i8**
    %t116 = load i8*, i8** %t114
    %t117 = call i1 @F_block_filecomponent(%Frame_block* %t113, i8* %t116)
    br i1 %t117, label %L_then_12, label %L_endif_12
L_then_12:
    ; line 4456
    call void @P_error(i32 191)
    br label %L_endif_12
L_endif_12:
    ; line 4457
    br label %L_endif_11
L_else_11:
    ; line 4473
    call void @P_error(i32 129)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_8
L_endif_8:
    br label %L_endif_1
L_else_1:
    ; line 4476
    call void @P_error(i32 51)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 4479
;================================================================================
; scope: block_body_statement_gotostatement (level : 5)

; activation record
%Frame_block_body_statement_gotostatement = type
{
    ; variables
    i8*,    ; 0: llp
    i32,    ; 1: ttop
    i32,    ; 2: ttop1

    ; slink
    %Frame_block_body_statement*    ; 3
};

; procedure body
define void @P_block_body_statement_gotostatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_gotostatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 3
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4483
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 1
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4485
    %t4 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 1
    %t5 = load i32, i32* @top
    store i32 %t5, i32* %t4
    ; line 4486
    ; line 4487
    %t6 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 2
    %t8 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t8
    store i32 %t7, i32* %t6
    ; line 4488
    ; line 4509
    %t11 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 0
    %t10 = load i8*, i8** %t11
    %t9 = icmp eq i32 %t10, null
    br i1 %t9, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 4510
    call void @P_error(i32 167)
    ; line 4511
    %t12 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 0
    call void @P_newlabel(i8** %t12)
    br label %L_endif_2
L_endif_2:
    ; line 4513
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 4515
    call void @P_error(i32 15)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 4518
;================================================================================
; scope: block_body_statement_compoundstatement (level : 5)

; activation record
%Frame_block_body_statement_compoundstatement = type
{
    ; variables
    i1,    ; 0: test

    ; slink
    %Frame_block_body_statement*    ; 1
};

; procedure body
define void @P_block_body_statement_compoundstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_compoundstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_compoundstatement, %Frame_block_body_statement_compoundstatement* %.frame, i32 0, i32 1
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4521
    %t2 = getelementptr inbounds %Frame_block_body_statement_compoundstatement, %Frame_block_body_statement_compoundstatement* %.frame, i32 0, i32 1
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t3, i32 0, i32 3
    %t5 = load %Frame_block_body*, %Frame_block_body** %t4
    call void @P_block_body_addlvl(%Frame_block_body* %t5)
    ; line 4522
    ; line 4528
    %t7 = load i32, i32* @sy
    %t6 = icmp eq i32 %t7, 39
    br i1 %t6, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4528
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 4528
    call void @P_error(i32 13)
    br label %L_endif_1
L_endif_1:
    ; line 4529
    %t8 = getelementptr inbounds %Frame_block_body_statement_compoundstatement, %Frame_block_body_statement_compoundstatement* %.frame, i32 0, i32 1
    %t9 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t8
    %t10 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t9, i32 0, i32 3
    %t11 = load %Frame_block_body*, %Frame_block_body** %t10
    call void @P_block_body_sublvl(%Frame_block_body* %t11)

    ; epilogue
    ret void
}


; line 4532
;================================================================================
; scope: block_body_statement_ifstatement (level : 5)

; activation record
%Frame_block_body_statement_ifstatement = type
{
    ; variables
    i32,    ; 0: lcix1
    i32,    ; 1: lcix2

    ; slink
    %Frame_block_body_statement*    ; 2
};

; procedure body
define void @P_block_body_statement_ifstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_ifstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4534
    %t2 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t3, %T_setofsys %.dummy_set)
    ; line 4535
    %t5 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t5)
    ; line 4535
    %t6 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t7 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t6
    %t8 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t7, i32 0, i32 3
    %t9 = load %Frame_block_body*, %Frame_block_body** %t8
    %t11 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    call void @P_block_body_genfjp(%Frame_block_body* %t9, i32 %t10)
    ; line 4536
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 46
    br i1 %t12, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4536
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 4536
    call void @P_error(i32 52)
    br label %L_endif_1
L_endif_1:
    ; line 4537
    %t14 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t15 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body*, %Frame_block_body** %t16
    call void @P_block_body_addlvl(%Frame_block_body* %t17)
    ; line 4538
    %t18 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t19 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t18
    %t20 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t19, i32 0, i32 3
    %t21 = load %Frame_block_body*, %Frame_block_body** %t20
    call void @P_block_body_statement(%Frame_block_body* %t21, %T_setofsys %.dummy_set)
    ; line 4539
    %t23 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t24 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t23
    %t25 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t24, i32 0, i32 3
    %t26 = load %Frame_block_body*, %Frame_block_body** %t25
    call void @P_block_body_sublvl(%Frame_block_body* %t26)
    ; line 4540
    %t28 = load i32, i32* @sy
    %t27 = icmp eq i32 %t28, 40
    br i1 %t27, label %L_then_2, label %L_else_2
L_then_2:
    ; line 4541
    %t29 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t29)
    ; line 4541
    %t30 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t31 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t30
    %t32 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t31, i32 0, i32 3
    %t33 = load %Frame_block_body*, %Frame_block_body** %t32
    %t35 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 1
    %t34 = load i32, i32* %t35
    call void @P_block_body_genujpxjp(%Frame_block_body* %t33, i32 57, i32 %t34)
    ; line 4542
    %t36 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t37 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t36
    %t38 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t37, i32 0, i32 3
    %t39 = load %Frame_block_body*, %Frame_block_body** %t38
    %t41 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t40 = load i32, i32* %t41
    call void @P_block_body_putlabel(%Frame_block_body* %t39, i32 %t40)
    ; line 4543
    call void @P_insymbol()
    ; line 4544
    %t42 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t43 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t42
    %t44 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t43, i32 0, i32 3
    %t45 = load %Frame_block_body*, %Frame_block_body** %t44
    call void @P_block_body_addlvl(%Frame_block_body* %t45)
    ; line 4545
    %t46 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t47 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t46
    %t48 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t47, i32 0, i32 3
    %t49 = load %Frame_block_body*, %Frame_block_body** %t48
    %t52 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t53 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t52
    %t51 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t53, i32 0, i32 0
    %t50 = load %T_setofsys, %T_setofsys* %t51
    call void @P_block_body_statement(%Frame_block_body* %t49, %T_setofsys %t50)
    ; line 4546
    %t54 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t55 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t54
    %t56 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t55, i32 0, i32 3
    %t57 = load %Frame_block_body*, %Frame_block_body** %t56
    call void @P_block_body_sublvl(%Frame_block_body* %t57)
    ; line 4547
    %t58 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t59 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t58
    %t60 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t59, i32 0, i32 3
    %t61 = load %Frame_block_body*, %Frame_block_body** %t60
    %t63 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 1
    %t62 = load i32, i32* %t63
    call void @P_block_body_putlabel(%Frame_block_body* %t61, i32 %t62)
    br label %L_endif_2
L_else_2:
    ; line 4549
    %t64 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t65 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t64
    %t66 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t65, i32 0, i32 3
    %t67 = load %Frame_block_body*, %Frame_block_body** %t66
    %t69 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t68 = load i32, i32* %t69
    call void @P_block_body_putlabel(%Frame_block_body* %t67, i32 %t68)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 4552
;================================================================================
; scope: block_body_statement_casestatement (level : 5)

; activation record
%Frame_block_body_statement_casestatement = type
{
    ; variables
    i8*,    ; 0: fstptr
    i32,    ; 1: laddr
    i32,    ; 2: lcix
    i32,    ; 3: lcix1
    i32,    ; 4: lmax
    i32,    ; 5: lmin
    i8*,    ; 6: lpt1
    i8*,    ; 7: lpt2
    i8*,    ; 8: lpt3
    i8*,    ; 9: lsp
    i8*,    ; 10: lsp1
    %T_valu,    ; 11: lval
    i1,    ; 12: test

    ; slink
    %Frame_block_body_statement*    ; 13
};

; procedure body
define void @P_block_body_statement_casestatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_casestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4557
    %t2 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t3, %T_setofsys %.dummy_set)
    ; line 4558
    %t5 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t6 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    call void @P_block_body_load(%Frame_block_body* %t8)
    ; line 4558
    %t9 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t9)
    ; line 4559
    %t10 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    store i8* %t13, i8** %t10
    ; line 4560
    %t16 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t15 = load i8*, i8** %t16
    %t14 = icmp ne i32 %t15, null
    br i1 %t14, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 4561
    br label %L_OR_expr_2
L_OR_expr_2:
    %t20 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_structure*
    %t23 = getelementptr inbounds %T_structure, %T_structure* %t21, i32 0, i32 20
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t18 = icmp ne i32 %t24, 0
    br i1 %t18, label %L_OR_shortcut_2, label %L_OR_eval_2
L_OR_eval_2:
    %t27 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t26 = load i8*, i8** %t27
    %t28 = load i8*, i8** @realptr
    %t25 = icmp eq i32 %t26, %t28
    br label %L_OR_shortcut_2
L_OR_shortcut_2:
    %t17 = phi [%t25, %L_OR_eval_2], [true, %L_OR_expr_2]
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 4562
    call void @P_error(i32 144)
    ; line 4562
    %t29 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    store i8* null, i8** %t29
    br label %L_endif_3
L_else_3:
    ; line 4563
    %t30 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t31 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t30
    %t32 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t31, i32 0, i32 3
    %t33 = load %Frame_block_body*, %Frame_block_body** %t32
    %t34 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t33, i32 0, i32 16
    %t35 = load %Frame_block*, %Frame_block** %t34
    %t37 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t36 = load i8*, i8** %t37
    %t38 = load i8*, i8** @intptr
    %t39 = call i1 @F_block_comptypes(%Frame_block* %t35, i8* %t36, i8* %t38)
    %t40 = icmp eq i1 0, %t39
    br i1 %t40, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 4563
    %t41 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t42 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t41
    %t43 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t42, i32 0, i32 3
    %t44 = load %Frame_block_body*, %Frame_block_body** %t43
    %t46 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t45 = load i8*, i8** %t46
    call void @P_block_body_gen0t(%Frame_block_body* %t44, i32 58, i8* %t45)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:
    ; line 4564
    %t47 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t48 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t47
    %t49 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t48, i32 0, i32 3
    %t50 = load %Frame_block_body*, %Frame_block_body** %t49
    %t52 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t51 = load i32, i32* %t52
    call void @P_block_body_genujpxjp(%Frame_block_body* %t50, i32 57, i32 %t51)
    ; line 4565
    %t54 = load i32, i32* @sy
    %t53 = icmp eq i32 %t54, 42
    br i1 %t53, label %L_then_5, label %L_else_5
L_then_5:
    ; line 4565
    call void @P_insymbol()
    br label %L_endif_5
L_else_5:
    ; line 4565
    call void @P_error(i32 8)
    br label %L_endif_5
L_endif_5:
    ; line 4566
    %t55 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    store i8* null, i8** %t55
    ; line 4566
    %t56 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t56)
    ; line 4567
    ; line 4609
    %t57 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t58 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t57
    %t59 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t58, i32 0, i32 3
    %t60 = load %Frame_block_body*, %Frame_block_body** %t59
    %t62 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t61 = load i32, i32* %t62
    call void @P_block_body_putlabel(%Frame_block_body* %t60, i32 %t61)
    ; line 4610
    %t65 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t64 = load i8*, i8** %t65
    %t63 = icmp ne i32 %t64, null
    br i1 %t63, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 4611
    %t66 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 4
    %t68 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t67 = load i8*, i8** %t68
    %t69 = bitcast i8* %t67 to %T_caseinfo*
    %t71 = getelementptr inbounds %T_caseinfo, %T_caseinfo* %t69, i32 0, i32 12
    %t70 = bitcast i8* %t71 to i32*
    %t72 = load i32, i32* %t70
    store i32 %t72, i32* %t66
    ; line 4613
    %t73 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 6
    %t75 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t74 = load i8*, i8** %t75
    store i8* %t74, i8** %t73
    ; line 4613
    %t76 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    store i8* null, i8** %t76
    ; line 4614
    ; line 4617
    %t77 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t79 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t78 = load i8*, i8** %t79
    %t80 = bitcast i8* %t78 to %T_caseinfo*
    %t82 = getelementptr inbounds %T_caseinfo, %T_caseinfo* %t80, i32 0, i32 12
    %t81 = bitcast i8* %t82 to i32*
    %t83 = load i32, i32* %t81
    store i32 %t83, i32* %t77
    ; line 4618
    %t87 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 4
    %t86 = load i32, i32* %t87
    %t89 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t88 = load i32, i32* %t89
    %t85 = sub i32 %t86, %t88
    %t84 = icmp slt i32 %t85, 10000
    br i1 %t84, label %L_then_7, label %L_else_7
L_then_7:
    ; line 4620
    %t90 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t91 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t90
    %t92 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t91, i32 0, i32 3
    %t93 = load %Frame_block_body*, %Frame_block_body** %t92
    %t95 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t94 = load i32, i32* %t95
    %t97 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 4
    %t96 = load i32, i32* %t97
    %t98 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t93, i32 45, i32 %t94, i32 %t96, i8* %t98)
    ; line 4621
    %t99 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t100 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t99
    %t101 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t100, i32 0, i32 3
    %t102 = load %Frame_block_body*, %Frame_block_body** %t101
    %t104 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t103 = load i32, i32* %t104
    call void @P_block_body_gen2(%Frame_block_body* %t102, i32 51, i32 1, i32 %t103)
    ; line 4621
    %t105 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t106 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t105
    %t107 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t106, i32 0, i32 3
    %t108 = load %Frame_block_body*, %Frame_block_body** %t107
    call void @P_block_body_gen0(%Frame_block_body* %t108, i32 21)
    ; line 4621
    %t109 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t109)
    ; line 4622
    %t110 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t111 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t110
    %t112 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t111, i32 0, i32 3
    %t113 = load %Frame_block_body*, %Frame_block_body** %t112
    %t115 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t114 = load i32, i32* %t115
    call void @P_block_body_genujpxjp(%Frame_block_body* %t113, i32 44, i32 %t114)
    ; line 4622
    %t116 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t117 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t116
    %t118 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t117, i32 0, i32 3
    %t119 = load %Frame_block_body*, %Frame_block_body** %t118
    %t121 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t120 = load i32, i32* %t121
    call void @P_block_body_putlabel(%Frame_block_body* %t119, i32 %t120)
    ; line 4623
    ; line 4635
    %t122 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 13
    %t123 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t122
    %t124 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t123, i32 0, i32 3
    %t125 = load %Frame_block_body*, %Frame_block_body** %t124
    %t127 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 1
    %t126 = load i32, i32* %t127
    call void @P_block_body_putlabel(%Frame_block_body* %t125, i32 %t126)
    br label %L_endif_7
L_else_7:
    ; line 4638
    call void @P_error(i32 157)
    ; line 4639
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 4648
    %t129 = load i32, i32* @sy
    %t128 = icmp eq i32 %t129, 39
    br i1 %t128, label %L_then_8, label %L_else_8
L_then_8:
    ; line 4648
    call void @P_insymbol()
    br label %L_endif_8
L_else_8:
    ; line 4648
    call void @P_error(i32 13)
    br label %L_endif_8
L_endif_8:

    ; epilogue
    ret void
}


; line 4651
;================================================================================
; scope: block_body_statement_repeatstatement (level : 5)

; activation record
%Frame_block_body_statement_repeatstatement = type
{
    ; variables
    i32,    ; 0: laddr

    ; slink
    %Frame_block_body_statement*    ; 1
};

; procedure body
define void @P_block_body_statement_repeatstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_repeatstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4653
    %t2 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t2)
    ; line 4653
    %t3 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_putlabel(%Frame_block_body* %t6, i32 %t7)
    ; line 4654
    ; line 4660
    ; line 4669
    %t10 = load i32, i32* @sy
    %t9 = icmp eq i32 %t10, 41
    br i1 %t9, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4670
    call void @P_insymbol()
    ; line 4670
    %t11 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t12 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t11
    %t15 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t16 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t15
    %t14 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t16, i32 0, i32 0
    %t13 = load %T_setofsys, %T_setofsys* %t14
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t12, %T_setofsys %t13)
    ; line 4670
    %t17 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t18 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t17
    %t19 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t18, i32 0, i32 3
    %t20 = load %Frame_block_body*, %Frame_block_body** %t19
    %t22 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    call void @P_block_body_genfjp(%Frame_block_body* %t20, i32 %t21)
    br label %L_endif_1
L_else_1:
    ; line 4672
    call void @P_error(i32 53)
    br label %L_endif_1
L_endif_1:
    ; nop

    ; epilogue
    ret void
}


; line 4675
;================================================================================
; scope: block_body_statement_whilestatement (level : 5)

; activation record
%Frame_block_body_statement_whilestatement = type
{
    ; variables
    i32,    ; 0: laddr
    i32,    ; 1: lcix

    ; slink
    %Frame_block_body_statement*    ; 2
};

; procedure body
define void @P_block_body_statement_whilestatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_whilestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4677
    %t2 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t2)
    ; line 4677
    %t3 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_putlabel(%Frame_block_body* %t6, i32 %t7)
    ; line 4678
    %t9 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t10 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t9
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t10, %T_setofsys %.dummy_set)
    ; line 4678
    %t12 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t12)
    ; line 4678
    %t13 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    %t18 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    call void @P_block_body_genfjp(%Frame_block_body* %t16, i32 %t17)
    ; line 4679
    %t20 = load i32, i32* @sy
    %t19 = icmp eq i32 %t20, 43
    br i1 %t19, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4679
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 4679
    call void @P_error(i32 54)
    br label %L_endif_1
L_endif_1:
    ; line 4680
    %t21 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t22 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t21
    %t23 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t22, i32 0, i32 3
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    call void @P_block_body_addlvl(%Frame_block_body* %t24)
    ; line 4681
    %t25 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t26 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t25
    %t27 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t26, i32 0, i32 3
    %t28 = load %Frame_block_body*, %Frame_block_body** %t27
    %t31 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t32 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t31
    %t30 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t32, i32 0, i32 0
    %t29 = load %T_setofsys, %T_setofsys* %t30
    call void @P_block_body_statement(%Frame_block_body* %t28, %T_setofsys %t29)
    ; line 4682
    %t33 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t35 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t34, i32 0, i32 3
    %t36 = load %Frame_block_body*, %Frame_block_body** %t35
    call void @P_block_body_sublvl(%Frame_block_body* %t36)
    ; line 4683
    %t37 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t38 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t37
    %t39 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t38, i32 0, i32 3
    %t40 = load %Frame_block_body*, %Frame_block_body** %t39
    %t42 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    %t41 = load i32, i32* %t42
    call void @P_block_body_genujpxjp(%Frame_block_body* %t40, i32 57, i32 %t41)
    ; line 4683
    %t43 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t44 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t43
    %t45 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t44, i32 0, i32 3
    %t46 = load %Frame_block_body*, %Frame_block_body** %t45
    %t48 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    %t47 = load i32, i32* %t48
    call void @P_block_body_putlabel(%Frame_block_body* %t46, i32 %t47)

    ; epilogue
    ret void
}


; line 4686
;================================================================================
; scope: block_body_statement_forstatement (level : 5)

; activation record
%Frame_block_body_statement_forstatement = type
{
    ; variables
    i32,    ; 0: laddr
    %T_attr,    ; 1: lattr
    i32,    ; 2: lcix
    i32,    ; 3: lcs
    i32,    ; 4: llc
    i32,    ; 5: lsy
    i8,    ; 6: typind

    ; slink
    %Frame_block_body_statement*    ; 7
};

; procedure body
define void @P_block_body_statement_forstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_forstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4691
    %t2 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 4
    %t3 = load i32, i32* @lc
    store i32 %t3, i32* %t2
    ; line 4693
    %t4 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_attr, %T_attr* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    store i8* null, i8** %t5
    ; line 4693
    %t7 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %T_attr, %T_attr* %t7, i32 0, i32 8
    %t8 = bitcast i8* %t9 to i32*
    store i32 1, i32* %t8
    ; line 4694
    %t10 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_attr, %T_attr* %t10, i32 0, i32 12
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    ; line 4694
    %t13 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t15 = getelementptr inbounds %T_attr, %T_attr* %t13, i32 0, i32 16
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* @level
    store i32 %t16, i32* %t14
    ; line 4694
    %t17 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t19 = getelementptr inbounds %T_attr, %T_attr* %t17, i32 0, i32 20
    %t18 = bitcast i8* %t19 to i32*
    store i32 0, i32* %t18
    ; line 4696
    %t20 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 6
    store i8 105, i8* %t20
    ; line 4697
    %t22 = load i32, i32* @sy
    %t21 = icmp eq i32 %t22, 0
    br i1 %t21, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4698
    %t24 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t23 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 1
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t23)
    ; line 4700
    %t26 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t28 = getelementptr inbounds %T_attr, %T_attr* %t26, i32 0, i32 0
    %t27 = bitcast i8* %t28 to i8**
    %t31 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t32 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t31
    %t30 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t32, i32 0, i32 1
    %t29 = load i8*, i8** %t30
    %t33 = bitcast i8* %t29 to %T_identifier*
    %t35 = getelementptr inbounds %T_identifier, %T_identifier* %t33, i32 0, i32 24
    %t34 = bitcast i8* %t35 to i8**
    %t36 = load i8*, i8** %t34
    store i8* %t36, i8** %t27
    ; line 4700
    %t37 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t39 = getelementptr inbounds %T_attr, %T_attr* %t37, i32 0, i32 8
    %t38 = bitcast i8* %t39 to i32*
    store i32 1, i32* %t38
    ; line 4701
    %t43 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t44 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t43
    %t42 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t44, i32 0, i32 1
    %t41 = load i8*, i8** %t42
    %t45 = bitcast i8* %t41 to %T_identifier*
    %t47 = getelementptr inbounds %T_identifier, %T_identifier* %t45, i32 0, i32 48
    %t46 = bitcast i8* %t47 to i32*
    %t48 = load i32, i32* %t46
    %t40 = icmp eq i32 %t48, 0
    br i1 %t40, label %L_then_2, label %L_else_2
L_then_2:
    ; line 4702
    %t49 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t51 = getelementptr inbounds %T_attr, %T_attr* %t49, i32 0, i32 12
    %t50 = bitcast i8* %t51 to i32*
    store i32 0, i32* %t50
    ; line 4702
    %t52 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t54 = getelementptr inbounds %T_attr, %T_attr* %t52, i32 0, i32 16
    %t53 = bitcast i8* %t54 to i32*
    %t57 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t58 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t57
    %t56 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t58, i32 0, i32 1
    %t55 = load i8*, i8** %t56
    %t59 = bitcast i8* %t55 to %T_identifier*
    %t61 = getelementptr inbounds %T_identifier, %T_identifier* %t59, i32 0, i32 52
    %t60 = bitcast i8* %t61 to i32*
    %t62 = load i32, i32* %t60
    store i32 %t62, i32* %t53
    ; line 4703
    %t66 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t67 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t66
    %t65 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t67, i32 0, i32 1
    %t64 = load i8*, i8** %t65
    %t68 = bitcast i8* %t64 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 52
    %t69 = bitcast i8* %t70 to i32*
    %t71 = load i32, i32* %t69
    %t72 = load i32, i32* @level
    %t63 = icmp ne i32 %t71, %t72
    br i1 %t63, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 4703
    call void @P_error(i32 183)
    br label %L_endif_3
L_endif_3:
    ; line 4704
    %t73 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t75 = getelementptr inbounds %T_attr, %T_attr* %t73, i32 0, i32 20
    %t74 = bitcast i8* %t75 to i32*
    %t78 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t79 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t78
    %t77 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t79, i32 0, i32 1
    %t76 = load i8*, i8** %t77
    %t80 = bitcast i8* %t76 to %T_identifier*
    %t82 = getelementptr inbounds %T_identifier, %T_identifier* %t80, i32 0, i32 56
    %t81 = bitcast i8* %t82 to i32*
    %t83 = load i32, i32* %t81
    store i32 %t83, i32* %t74
    br label %L_endif_2
L_else_2:
    ; line 4706
    call void @P_error(i32 155)
    ; line 4706
    %t84 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t86 = getelementptr inbounds %T_attr, %T_attr* %t84, i32 0, i32 0
    %t85 = bitcast i8* %t86 to i8**
    store i8* null, i8** %t85
    br label %L_endif_2
L_endif_2:
    ; line 4709
    %t88 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t90 = getelementptr inbounds %T_attr, %T_attr* %t88, i32 0, i32 0
    %t89 = bitcast i8* %t90 to i8**
    %t91 = load i8*, i8** %t89
    %t92 = load i8*, i8** @boolptr
    %t87 = icmp eq i32 %t91, %t92
    br i1 %t87, label %L_then_4, label %L_else_4
L_then_4:
    ; line 4709
    %t93 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 6
    store i8 98, i8* %t93
    br label %L_endif_4
L_else_4:
    ; line 4710
    %t95 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t97 = getelementptr inbounds %T_attr, %T_attr* %t95, i32 0, i32 0
    %t96 = bitcast i8* %t97 to i8**
    %t98 = load i8*, i8** %t96
    %t99 = load i8*, i8** @charptr
    %t94 = icmp eq i32 %t98, %t99
    br i1 %t94, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 4710
    %t100 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 6
    store i8 99, i8* %t100
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 4711
    %t102 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t104 = getelementptr inbounds %T_attr, %T_attr* %t102, i32 0, i32 0
    %t103 = bitcast i8* %t104 to i8**
    %t105 = load i8*, i8** %t103
    %t101 = icmp ne i32 %t105, null
    br i1 %t101, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 4712
    br label %L_OR_expr_7
L_OR_expr_7:
    %t108 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t110 = getelementptr inbounds %T_attr, %T_attr* %t108, i32 0, i32 0
    %t109 = bitcast i8* %t110 to i8**
    %t111 = load i8*, i8** %t109
    %t112 = bitcast i8* %t111 to %T_structure*
    %t114 = getelementptr inbounds %T_structure, %T_structure* %t112, i32 0, i32 20
    %t113 = bitcast i8* %t114 to i32*
    %t115 = load i32, i32* %t113
    %t107 = icmp sgt i32 %t115, 1
    br i1 %t107, label %L_OR_shortcut_7, label %L_OR_eval_7
L_OR_eval_7:
    %t116 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t117 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t116
    %t118 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t117, i32 0, i32 3
    %t119 = load %Frame_block_body*, %Frame_block_body** %t118
    %t120 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t119, i32 0, i32 16
    %t121 = load %Frame_block*, %Frame_block** %t120
    %t122 = load i8*, i8** @realptr
    %t123 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t125 = getelementptr inbounds %T_attr, %T_attr* %t123, i32 0, i32 0
    %t124 = bitcast i8* %t125 to i8**
    %t126 = load i8*, i8** %t124
    %t127 = call i1 @F_block_comptypes(%Frame_block* %t121, i8* %t122, i8* %t126)
    br label %L_OR_shortcut_7
L_OR_shortcut_7:
    %t106 = phi [%t127, %L_OR_eval_7], [true, %L_OR_expr_7]
    br i1 %t106, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 4714
    call void @P_error(i32 143)
    ; line 4714
    %t128 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t130 = getelementptr inbounds %T_attr, %T_attr* %t128, i32 0, i32 0
    %t129 = bitcast i8* %t130 to i8**
    store i8* null, i8** %t129
    br label %L_endif_8
L_endif_8:
    br label %L_endif_6
L_endif_6:
    ; line 4715
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 4718
    call void @P_error(i32 2)
    ; line 4718
    %t131 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t132 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t131
    %t133 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t132, i32 0, i32 3
    %t134 = load %Frame_block_body*, %Frame_block_body** %t133
    %t135 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t134, i32 0, i32 16
    %t136 = load %Frame_block*, %Frame_block** %t135
    call void @P_block_skip(%Frame_block* %t136, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 4719
    %t139 = load i32, i32* @sy
    %t138 = icmp eq i32 %t139, 17
    br i1 %t138, label %L_then_9, label %L_else_9
L_then_9:
    ; line 4720
    call void @P_insymbol()
    ; line 4720
    %t140 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t141 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t140
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t141, %T_setofsys %.dummy_set)
    ; line 4721
    %t145 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t144 = bitcast i8* %t145 to i8**
    %t146 = load i8*, i8** %t144
    %t143 = icmp ne i32 %t146, null
    br i1 %t143, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 4722
    %t149 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t148 = bitcast i8* %t149 to i8**
    %t150 = load i8*, i8** %t148
    %t151 = bitcast i8* %t150 to %T_structure*
    %t153 = getelementptr inbounds %T_structure, %T_structure* %t151, i32 0, i32 20
    %t152 = bitcast i8* %t153 to i32*
    %t154 = load i32, i32* %t152
    %t147 = icmp ne i32 %t154, 0
    br i1 %t147, label %L_then_11, label %L_else_11
L_then_11:
    ; line 4722
    call void @P_error(i32 144)
    br label %L_endif_11
L_else_11:
    ; line 4724
    %t155 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t156 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t155
    %t157 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t156, i32 0, i32 3
    %t158 = load %Frame_block_body*, %Frame_block_body** %t157
    %t159 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t158, i32 0, i32 16
    %t160 = load %Frame_block*, %Frame_block** %t159
    %t161 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t163 = getelementptr inbounds %T_attr, %T_attr* %t161, i32 0, i32 0
    %t162 = bitcast i8* %t163 to i8**
    %t164 = load i8*, i8** %t162
    %t166 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t165 = bitcast i8* %t166 to i8**
    %t167 = load i8*, i8** %t165
    %t168 = call i1 @F_block_comptypes(%Frame_block* %t160, i8* %t164, i8* %t167)
    br i1 %t168, label %L_then_12, label %L_else_12
L_then_12:
    ; line 4725
    %t169 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t170 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t169
    %t171 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t170, i32 0, i32 3
    %t172 = load %Frame_block_body*, %Frame_block_body** %t171
    call void @P_block_body_load(%Frame_block_body* %t172)
    ; line 4725
    %t173 = load i8*, i8** @intptr
    call void @P_align(i8* %t173, i32* @lc)
    ; line 4727
    %t174 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t175 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t174
    %t176 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t175, i32 0, i32 3
    %t177 = load %Frame_block_body*, %Frame_block_body** %t176
    %t178 = load i32, i32* @lc
    %t179 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t177, i32 56, i32 0, i32 %t178, i8* %t179)
    ; nop
    br label %L_endif_12
L_else_12:
    ; line 4728
    call void @P_error(i32 145)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_else_9:
    ; line 4731
    call void @P_error(i32 51)
    ; line 4731
    %t180 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t181 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t180
    %t182 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t181, i32 0, i32 3
    %t183 = load %Frame_block_body*, %Frame_block_body** %t182
    %t184 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t183, i32 0, i32 16
    %t185 = load %Frame_block*, %Frame_block** %t184
    call void @P_block_skip(%Frame_block* %t185, %T_setofsys %.dummy_set)
    br label %L_endif_9
L_endif_9:
    ; line 4732
    br i1 true, label %L_then_13, label %L_else_13
L_then_13:
    ; line 4733
    %t188 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t189 = load i32, i32* @sy
    store i32 %t189, i32* %t188
    ; line 4733
    call void @P_insymbol()
    ; line 4733
    %t190 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t191 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t190
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t191, %T_setofsys %.dummy_set)
    ; line 4734
    %t195 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t194 = bitcast i8* %t195 to i8**
    %t196 = load i8*, i8** %t194
    %t193 = icmp ne i32 %t196, null
    br i1 %t193, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 4735
    %t199 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t198 = bitcast i8* %t199 to i8**
    %t200 = load i8*, i8** %t198
    %t201 = bitcast i8* %t200 to %T_structure*
    %t203 = getelementptr inbounds %T_structure, %T_structure* %t201, i32 0, i32 20
    %t202 = bitcast i8* %t203 to i32*
    %t204 = load i32, i32* %t202
    %t197 = icmp ne i32 %t204, 0
    br i1 %t197, label %L_then_15, label %L_else_15
L_then_15:
    ; line 4735
    call void @P_error(i32 144)
    br label %L_endif_15
L_else_15:
    ; line 4737
    %t205 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t206 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t205
    %t207 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t206, i32 0, i32 3
    %t208 = load %Frame_block_body*, %Frame_block_body** %t207
    %t209 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t208, i32 0, i32 16
    %t210 = load %Frame_block*, %Frame_block** %t209
    %t211 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t213 = getelementptr inbounds %T_attr, %T_attr* %t211, i32 0, i32 0
    %t212 = bitcast i8* %t213 to i8**
    %t214 = load i8*, i8** %t212
    %t216 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t215 = bitcast i8* %t216 to i8**
    %t217 = load i8*, i8** %t215
    %t218 = call i1 @F_block_comptypes(%Frame_block* %t210, i8* %t214, i8* %t217)
    br i1 %t218, label %L_then_16, label %L_else_16
L_then_16:
    ; line 4739
    %t219 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t220 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t219
    %t221 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t220, i32 0, i32 3
    %t222 = load %Frame_block_body*, %Frame_block_body** %t221
    call void @P_block_body_load(%Frame_block_body* %t222)
    ; line 4739
    %t223 = load i8*, i8** @intptr
    call void @P_align(i8* %t223, i32* @lc)
    ; line 4740
    %t224 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t225 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t224
    %t226 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t225, i32 0, i32 3
    %t227 = load %Frame_block_body*, %Frame_block_body** %t226
    %t228 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t227, i32 0, i32 16
    %t229 = load %Frame_block*, %Frame_block** %t228
    %t230 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t232 = getelementptr inbounds %T_attr, %T_attr* %t230, i32 0, i32 0
    %t231 = bitcast i8* %t232 to i8**
    %t233 = load i8*, i8** %t231
    %t234 = load i8*, i8** @intptr
    %t235 = call i1 @F_block_comptypes(%Frame_block* %t229, i8* %t233, i8* %t234)
    %t236 = icmp eq i1 0, %t235
    br i1 %t236, label %L_then_17, label %L_endif_17
L_then_17:
    ; line 4741
    %t237 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t238 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t237
    %t239 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t238, i32 0, i32 3
    %t240 = load %Frame_block_body*, %Frame_block_body** %t239
    %t242 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t241 = bitcast i8* %t242 to i8**
    %t243 = load i8*, i8** %t241
    call void @P_block_body_gen0t(%Frame_block_body* %t240, i32 58, i8* %t243)
    br label %L_endif_17
L_endif_17:
    ; line 4742
    %t244 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t245 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t244
    %t246 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t245, i32 0, i32 3
    %t247 = load %Frame_block_body*, %Frame_block_body** %t246
    %t249 = load i32, i32* @lc
    %t248 = add i32 %t249, 4
    %t250 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t247, i32 56, i32 0, i32 %t248, i8* %t250)
    ; line 4744
    %t251 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t252 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t251
    %t253 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t252, i32 0, i32 3
    %t254 = load %Frame_block_body*, %Frame_block_body** %t253
    %t255 = load i32, i32* @lc
    %t256 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t254, i32 54, i32 0, i32 %t255, i8* %t256)
    ; line 4745
    %t257 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t258 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t257
    %t259 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t258, i32 0, i32 3
    %t260 = load %Frame_block_body*, %Frame_block_body** %t259
    %t261 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    call void @P_block_body_store(%Frame_block_body* %t260, %T_attr* %t261)
    ; line 4746
    %t262 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t262)
    ; line 4746
    %t263 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t264 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t263
    %t265 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t264, i32 0, i32 3
    %t266 = load %Frame_block_body*, %Frame_block_body** %t265
    %t268 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    %t267 = load i32, i32* %t268
    call void @P_block_body_putlabel(%Frame_block_body* %t266, i32 %t267)
    ; line 4747
    %t270 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t269 = load %T_attr, %T_attr* %t270
    store %T_attr %t269, %T_attr* @gattr
    ; line 4747
    %t271 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t272 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t271
    %t273 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t272, i32 0, i32 3
    %t274 = load %Frame_block_body*, %Frame_block_body** %t273
    call void @P_block_body_load(%Frame_block_body* %t274)
    ; line 4748
    %t275 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t276 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t275
    %t277 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t276, i32 0, i32 3
    %t278 = load %Frame_block_body*, %Frame_block_body** %t277
    %t279 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t278, i32 0, i32 16
    %t280 = load %Frame_block*, %Frame_block** %t279
    %t282 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t281 = bitcast i8* %t282 to i8**
    %t283 = load i8*, i8** %t281
    %t284 = load i8*, i8** @intptr
    %t285 = call i1 @F_block_comptypes(%Frame_block* %t280, i8* %t283, i8* %t284)
    %t286 = icmp eq i1 0, %t285
    br i1 %t286, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 4749
    %t287 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t288 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t287
    %t289 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t288, i32 0, i32 3
    %t290 = load %Frame_block_body*, %Frame_block_body** %t289
    %t292 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t291 = bitcast i8* %t292 to i8**
    %t293 = load i8*, i8** %t291
    call void @P_block_body_gen0t(%Frame_block_body* %t290, i32 58, i8* %t293)
    br label %L_endif_18
L_endif_18:
    ; line 4750
    %t294 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t295 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t294
    %t296 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t295, i32 0, i32 3
    %t297 = load %Frame_block_body*, %Frame_block_body** %t296
    %t299 = load i32, i32* @lc
    %t298 = add i32 %t299, 4
    %t300 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t297, i32 54, i32 0, i32 %t298, i8* %t300)
    ; line 4751
    %t301 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 3
    %t302 = load i32, i32* @lc
    store i32 %t302, i32* %t301
    ; line 4752
    %t305 = load i32, i32* @lc
    %t304 = add i32 %t305, 4
    %t303 = add i32 %t304, 4
    store i32 %t303, i32* @lc
    ; line 4753
    %t307 = load i32, i32* @lc
    %t310 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t311 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t310
    %t312 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t311, i32 0, i32 3
    %t313 = load %Frame_block_body*, %Frame_block_body** %t312
    %t309 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t313, i32 0, i32 5
    %t308 = load i32, i32* %t309
    %t306 = icmp sgt i32 %t307, %t308
    br i1 %t306, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 4753
    %t315 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t316 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t315
    %t317 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t316, i32 0, i32 3
    %t318 = load %Frame_block_body*, %Frame_block_body** %t317
    %t314 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t318, i32 0, i32 5
    %t319 = load i32, i32* @lc
    store i32 %t319, i32* %t314
    br label %L_endif_19
L_endif_19:
    ; line 4754
    %t322 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t321 = load i32, i32* %t322
    %t320 = icmp eq i32 %t321, 44
    br i1 %t320, label %L_then_20, label %L_else_20
L_then_20:
    ; line 4754
    %t323 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t324 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t323
    %t325 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t324, i32 0, i32 3
    %t326 = load %Frame_block_body*, %Frame_block_body** %t325
    call void @P_block_body_gen2(%Frame_block_body* %t326, i32 52, i32 %.dummy.intrin, i32 1)
    br label %L_endif_20
L_else_20:
    ; line 4755
    %t327 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t328 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t327
    %t329 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t328, i32 0, i32 3
    %t330 = load %Frame_block_body*, %Frame_block_body** %t329
    call void @P_block_body_gen2(%Frame_block_body* %t330, i32 48, i32 %.dummy.intrin, i32 1)
    br label %L_endif_20
L_endif_20:
    ; nop
    br label %L_endif_16
L_else_16:
    ; line 4757
    call void @P_error(i32 145)
    br label %L_endif_16
L_endif_16:
    br label %L_endif_15
L_endif_15:
    br label %L_endif_14
L_endif_14:
    br label %L_endif_13
L_else_13:
    ; line 4759
    call void @P_error(i32 55)
    ; line 4759
    %t331 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t332 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t331
    %t333 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t332, i32 0, i32 3
    %t334 = load %Frame_block_body*, %Frame_block_body** %t333
    %t335 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t334, i32 0, i32 16
    %t336 = load %Frame_block*, %Frame_block** %t335
    call void @P_block_skip(%Frame_block* %t336, %T_setofsys %.dummy_set)
    br label %L_endif_13
L_endif_13:
    ; line 4760
    %t338 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t338)
    ; line 4760
    %t339 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t340 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t339
    %t341 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t340, i32 0, i32 3
    %t342 = load %Frame_block_body*, %Frame_block_body** %t341
    %t344 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t343 = load i32, i32* %t344
    call void @P_block_body_genujpxjp(%Frame_block_body* %t342, i32 33, i32 %t343)
    ; line 4761
    %t346 = load i32, i32* @sy
    %t345 = icmp eq i32 %t346, 43
    br i1 %t345, label %L_then_21, label %L_else_21
L_then_21:
    ; line 4761
    call void @P_insymbol()
    br label %L_endif_21
L_else_21:
    ; line 4761
    call void @P_error(i32 54)
    br label %L_endif_21
L_endif_21:
    ; line 4762
    %t347 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t348 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t347
    %t349 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t348, i32 0, i32 3
    %t350 = load %Frame_block_body*, %Frame_block_body** %t349
    call void @P_block_body_addlvl(%Frame_block_body* %t350)
    ; line 4763
    %t351 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t352 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t351
    %t353 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t352, i32 0, i32 3
    %t354 = load %Frame_block_body*, %Frame_block_body** %t353
    %t357 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t358 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t357
    %t356 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t358, i32 0, i32 0
    %t355 = load %T_setofsys, %T_setofsys* %t356
    call void @P_block_body_statement(%Frame_block_body* %t354, %T_setofsys %t355)
    ; line 4764
    %t359 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t360 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t359
    %t361 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t360, i32 0, i32 3
    %t362 = load %Frame_block_body*, %Frame_block_body** %t361
    call void @P_block_body_sublvl(%Frame_block_body* %t362)
    ; line 4765
    %t364 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t363 = load %T_attr, %T_attr* %t364
    store %T_attr %t363, %T_attr* @gattr
    ; line 4765
    %t365 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t366 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t365
    %t367 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t366, i32 0, i32 3
    %t368 = load %Frame_block_body*, %Frame_block_body** %t367
    call void @P_block_body_load(%Frame_block_body* %t368)
    ; line 4766
    %t369 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t370 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t369
    %t371 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t370, i32 0, i32 3
    %t372 = load %Frame_block_body*, %Frame_block_body** %t371
    %t373 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t372, i32 0, i32 16
    %t374 = load %Frame_block*, %Frame_block** %t373
    %t376 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t375 = bitcast i8* %t376 to i8**
    %t377 = load i8*, i8** %t375
    %t378 = load i8*, i8** @intptr
    %t379 = call i1 @F_block_comptypes(%Frame_block* %t374, i8* %t377, i8* %t378)
    %t380 = icmp eq i1 0, %t379
    br i1 %t380, label %L_then_22, label %L_endif_22
L_then_22:
    ; line 4767
    %t381 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t382 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t381
    %t383 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t382, i32 0, i32 3
    %t384 = load %Frame_block_body*, %Frame_block_body** %t383
    %t386 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t385 = bitcast i8* %t386 to i8**
    %t387 = load i8*, i8** %t385
    call void @P_block_body_gen0t(%Frame_block_body* %t384, i32 58, i8* %t387)
    br label %L_endif_22
L_endif_22:
    ; line 4768
    %t388 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t389 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t388
    %t390 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t389, i32 0, i32 3
    %t391 = load %Frame_block_body*, %Frame_block_body** %t390
    %t394 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 3
    %t393 = load i32, i32* %t394
    %t392 = add i32 %t393, 4
    %t395 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t391, i32 54, i32 0, i32 %t392, i8* %t395)
    ; line 4769
    %t396 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t397 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t396
    %t398 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t397, i32 0, i32 3
    %t399 = load %Frame_block_body*, %Frame_block_body** %t398
    call void @P_block_body_gen2(%Frame_block_body* %t399, i32 47, i32 %.dummy.intrin, i32 1)
    ; line 4770
    %t400 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t401 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t400
    %t402 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t401, i32 0, i32 3
    %t403 = load %Frame_block_body*, %Frame_block_body** %t402
    %t405 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t404 = load i32, i32* %t405
    call void @P_block_body_genujpxjp(%Frame_block_body* %t403, i32 73, i32 %t404)
    ; line 4771
    %t407 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t406 = load %T_attr, %T_attr* %t407
    store %T_attr %t406, %T_attr* @gattr
    ; line 4771
    %t408 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t409 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t408
    %t410 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t409, i32 0, i32 3
    %t411 = load %Frame_block_body*, %Frame_block_body** %t410
    call void @P_block_body_load(%Frame_block_body* %t411)
    ; line 4772
    %t414 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t413 = load i32, i32* %t414
    %t412 = icmp eq i32 %t413, 44
    br i1 %t412, label %L_then_23, label %L_else_23
L_then_23:
    ; line 4772
    %t415 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t416 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t415
    %t417 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t416, i32 0, i32 3
    %t418 = load %Frame_block_body*, %Frame_block_body** %t417
    %t420 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t419 = bitcast i8* %t420 to i8**
    %t421 = load i8*, i8** %t419
    call void @P_block_body_gen1t(%Frame_block_body* %t418, i32 34, i32 1, i8* %t421)
    br label %L_endif_23
L_else_23:
    ; line 4773
    %t422 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t423 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t422
    %t424 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t423, i32 0, i32 3
    %t425 = load %Frame_block_body*, %Frame_block_body** %t424
    %t427 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t426 = bitcast i8* %t427 to i8**
    %t428 = load i8*, i8** %t426
    call void @P_block_body_gen1t(%Frame_block_body* %t425, i32 31, i32 1, i8* %t428)
    br label %L_endif_23
L_endif_23:
    ; line 4774
    %t429 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t430 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t429
    %t431 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t430, i32 0, i32 3
    %t432 = load %Frame_block_body*, %Frame_block_body** %t431
    %t433 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    call void @P_block_body_store(%Frame_block_body* %t432, %T_attr* %t433)
    ; line 4774
    %t434 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t435 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t434
    %t436 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t435, i32 0, i32 3
    %t437 = load %Frame_block_body*, %Frame_block_body** %t436
    %t439 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    %t438 = load i32, i32* %t439
    call void @P_block_body_genujpxjp(%Frame_block_body* %t437, i32 57, i32 %t438)
    ; line 4774
    %t440 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 7
    %t441 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t440
    %t442 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t441, i32 0, i32 3
    %t443 = load %Frame_block_body*, %Frame_block_body** %t442
    %t445 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t444 = load i32, i32* %t445
    call void @P_block_body_putlabel(%Frame_block_body* %t443, i32 %t444)
    ; line 4775
    %t447 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 4
    %t446 = load i32, i32* %t447
    store i32 %t446, i32* @lc
    ; nop

    ; epilogue
    ret void
}


; line 4778
;================================================================================
; scope: block_body_statement_withstatement (level : 5)

; activation record
%Frame_block_body_statement_withstatement = type
{
    ; variables
    i32,    ; 0: lcnt1
    i8*,    ; 1: lcp
    i32,    ; 2: llc
    i1,    ; 3: test

    ; slink
    %Frame_block_body_statement*    ; 4
};

; procedure body
define void @P_block_body_statement_withstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_withstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 4
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 4781
    %t2 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 0
    store i32 0, i32* %t2
    ; line 4781
    %t3 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 2
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    ; line 4782
    ; line 4818
    %t6 = load i32, i32* @sy
    %t5 = icmp eq i32 %t6, 43
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 4818
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 4818
    call void @P_error(i32 54)
    br label %L_endif_1
L_endif_1:
    ; line 4819
    %t7 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 4
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_addlvl(%Frame_block_body* %t10)
    ; line 4820
    %t11 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 4
    %t12 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body*, %Frame_block_body** %t13
    %t17 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 4
    %t18 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t17
    %t16 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t18, i32 0, i32 0
    %t15 = load %T_setofsys, %T_setofsys* %t16
    call void @P_block_body_statement(%Frame_block_body* %t14, %T_setofsys %t15)
    ; line 4821
    %t19 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 4
    %t20 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t19
    %t21 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t20, i32 0, i32 3
    %t22 = load %Frame_block_body*, %Frame_block_body** %t21
    call void @P_block_body_sublvl(%Frame_block_body* %t22)
    ; line 4823
    ; line 4829
    %t24 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 2
    %t23 = load i32, i32* %t24
    store i32 %t23, i32* @lc
    ; nop

    ; epilogue
    ret void
}


; line 5017
;================================================================================
; scope: programme (level : 2)

; activation record
%Frame_programme = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    i8*,    ; 1: extfp

    ; dummy
    i8*
};

; procedure body
define void @P_programme(%T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_programme, align 8
    %t1 = getelementptr inbounds %Frame_programme, %Frame_programme* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t1

    ; body
    ; line 5020
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 24
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 5021
    call void @P_insymbol()
    ; line 5021
    %t5 = load i32, i32* @sy
    %t4 = icmp ne i32 %t5, 0
    br i1 %t4, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 5021
    call void @P_error(i32 2)
    br label %L_endif_2
L_endif_2:
    ; line 5021
    call void @P_insymbol()
    ; line 5022
    %t7 = icmp eq i1 0, true
    br i1 %t7, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 5022
    call void @P_error(i32 14)
    br label %L_endif_3
L_endif_3:
    ; line 5023
    %t9 = load i32, i32* @sy
    %t8 = icmp eq i32 %t9, 8
    br i1 %t8, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 5025
    ; line 5039
    %t11 = load i32, i32* @sy
    %t10 = icmp ne i32 %t11, 9
    br i1 %t10, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 5039
    call void @P_error(i32 4)
    br label %L_endif_5
L_endif_5:
    ; line 5040
    call void @P_insymbol()
    br label %L_endif_4
L_endif_4:
    ; line 5042
    %t13 = load i32, i32* @sy
    %t12 = icmp ne i32 %t13, 13
    br i1 %t12, label %L_then_6, label %L_else_6
L_then_6:
    ; line 5042
    call void @P_error(i32 14)
    br label %L_endif_6
L_else_6:
    ; line 5043
    call void @P_insymbol()
    br label %L_endif_6
L_endif_6:
    ; nop
    br label %L_endif_1
L_else_1:
    ; line 5044
    call void @P_error(i32 3)
    br label %L_endif_1
L_endif_1:
    ; line 5045
    ; line 5048
    %t14 = load i1, i1* @list
    br i1 %t14, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 5048
    %t15 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t15)
    br label %L_endif_7
L_endif_7:
    ; line 5049
    %t17 = load i32, i32* @errinx
    %t16 = icmp ne i32 %t17, 0
    br i1 %t16, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 5050
    store i1 0, i1* @list
    ; line 5050
    call void @P_endofline()
    br label %L_endif_8
L_endif_8:
    ; nop

    ; epilogue
    ret void
}


; line 5054
;================================================================================
; scope: stdnames (level : 2)

; activation record
%Frame_stdnames = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_stdnames()
{
    ; allocate frame
    %.frame = alloca %Frame_stdnames, align 8

    ; body
    ; line 5057
    %t1 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 1
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %T_restr* %t1
    ; line 5057
    %t2 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 2
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), %T_restr* %t2
    ; line 5057
    %t3 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 3
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), %T_restr* %t3
    ; line 5058
    %t4 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 4
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), %T_restr* %t4
    ; line 5058
    %t5 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 5
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %T_restr* %t5
    ; line 5058
    %t6 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 6
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), %T_restr* %t6
    ; line 5059
    %t7 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 7
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), %T_restr* %t7
    ; line 5059
    %t8 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 8
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %T_restr* %t8
    ; line 5059
    %t9 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 9
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), %T_restr* %t9
    ; line 5060
    %t10 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 10
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), %T_restr* %t10
    ; line 5060
    %t11 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 11
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), %T_restr* %t11
    ; line 5060
    %t12 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 12
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), %T_restr* %t12
    ; line 5061
    %t13 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 13
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), %T_restr* %t13
    ; line 5061
    %t14 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 14
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), %T_restr* %t14
    ; line 5061
    %t15 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 15
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), %T_restr* %t15
    ; line 5062
    %t16 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 16
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), %T_restr* %t16
    ; line 5063
    %t17 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 17
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), %T_restr* %t17
    ; line 5063
    %t18 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 18
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), %T_restr* %t18
    ; line 5063
    %t19 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 19
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), %T_restr* %t19
    ; line 5064
    %t20 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 20
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), %T_restr* %t20
    ; line 5064
    %t21 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 21
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), %T_restr* %t21
    ; line 5064
    %t22 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 22
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), %T_restr* %t22
    ; line 5065
    %t23 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 23
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), %T_restr* %t23
    ; line 5065
    %t24 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 24
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), %T_restr* %t24
    ; line 5065
    %t25 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 25
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), %T_restr* %t25
    ; line 5066
    %t26 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 26
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), %T_restr* %t26
    ; line 5067
    %t27 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 27
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), %T_restr* %t27
    ; line 5067
    %t28 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 28
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), %T_restr* %t28
    ; line 5067
    %t29 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 29
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), %T_restr* %t29
    ; line 5068
    %t30 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 30
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %T_restr* %t30
    ; line 5068
    %t31 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 31
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), %T_restr* %t31
    ; line 5068
    %t32 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 32
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), %T_restr* %t32
    ; line 5069
    %t33 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 33
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), %T_restr* %t33
    ; line 5069
    %t34 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 34
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), %T_restr* %t34
    ; line 5069
    %t35 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 35
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), %T_restr* %t35
    ; line 5070
    %t36 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 36
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), %T_restr* %t36
    ; line 5070
    %t37 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 37
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), %T_restr* %t37
    ; line 5070
    %t38 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 38
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), %T_restr* %t38
    ; line 5071
    %t39 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 39
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), %T_restr* %t39
    ; nop

    ; epilogue
    ret void
}


; line 5074
;================================================================================
; scope: enterstdtypes (level : 2)

; activation record
%Frame_enterstdtypes = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_enterstdtypes()
{
    ; allocate frame
    %.frame = alloca %Frame_enterstdtypes, align 8

    ; body
    ; line 5079
    ; line 5079
    %t1 = load i8*, i8** @intptr
    call void @P_pshstc(i8* %t1)
    ; line 5081
    %t2 = load i8*, i8** @intptr
    %t3 = bitcast i8* %t2 to %T_structure*
    %t5 = getelementptr inbounds %T_structure, %T_structure* %t3, i32 0, i32 12
    %t4 = bitcast i8* %t5 to i32*
    store i32 4, i32* %t4
    ; line 5081
    %t6 = load i8*, i8** @intptr
    %t7 = bitcast i8* %t6 to %T_structure*
    %t9 = getelementptr inbounds %T_structure, %T_structure* %t7, i32 0, i32 20
    %t8 = bitcast i8* %t9 to i32*
    store i32 0, i32* %t8
    ; line 5081
    %t10 = load i8*, i8** @intptr
    %t11 = bitcast i8* %t10 to %T_structure*
    %t13 = getelementptr inbounds %T_structure, %T_structure* %t11, i32 0, i32 24
    %t12 = bitcast i8* %t13 to i32*
    store i32 0, i32* %t12
    ; line 5082
    ; line 5082
    %t14 = load i8*, i8** @realptr
    call void @P_pshstc(i8* %t14)
    ; line 5084
    %t15 = load i8*, i8** @realptr
    %t16 = bitcast i8* %t15 to %T_structure*
    %t18 = getelementptr inbounds %T_structure, %T_structure* %t16, i32 0, i32 12
    %t17 = bitcast i8* %t18 to i32*
    store i32 8, i32* %t17
    ; line 5084
    %t19 = load i8*, i8** @realptr
    %t20 = bitcast i8* %t19 to %T_structure*
    %t22 = getelementptr inbounds %T_structure, %T_structure* %t20, i32 0, i32 20
    %t21 = bitcast i8* %t22 to i32*
    store i32 0, i32* %t21
    ; line 5084
    %t23 = load i8*, i8** @realptr
    %t24 = bitcast i8* %t23 to %T_structure*
    %t26 = getelementptr inbounds %T_structure, %T_structure* %t24, i32 0, i32 24
    %t25 = bitcast i8* %t26 to i32*
    store i32 0, i32* %t25
    ; line 5085
    ; line 5085
    %t27 = load i8*, i8** @charptr
    call void @P_pshstc(i8* %t27)
    ; line 5087
    %t28 = load i8*, i8** @charptr
    %t29 = bitcast i8* %t28 to %T_structure*
    %t31 = getelementptr inbounds %T_structure, %T_structure* %t29, i32 0, i32 12
    %t30 = bitcast i8* %t31 to i32*
    store i32 1, i32* %t30
    ; line 5087
    %t32 = load i8*, i8** @charptr
    %t33 = bitcast i8* %t32 to %T_structure*
    %t35 = getelementptr inbounds %T_structure, %T_structure* %t33, i32 0, i32 20
    %t34 = bitcast i8* %t35 to i32*
    store i32 0, i32* %t34
    ; line 5087
    %t36 = load i8*, i8** @charptr
    %t37 = bitcast i8* %t36 to %T_structure*
    %t39 = getelementptr inbounds %T_structure, %T_structure* %t37, i32 0, i32 24
    %t38 = bitcast i8* %t39 to i32*
    store i32 0, i32* %t38
    ; line 5088
    ; line 5088
    %t40 = load i8*, i8** @boolptr
    call void @P_pshstc(i8* %t40)
    ; line 5090
    %t41 = load i8*, i8** @boolptr
    %t42 = bitcast i8* %t41 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 12
    %t43 = bitcast i8* %t44 to i32*
    store i32 1, i32* %t43
    ; line 5090
    %t45 = load i8*, i8** @boolptr
    %t46 = bitcast i8* %t45 to %T_structure*
    %t48 = getelementptr inbounds %T_structure, %T_structure* %t46, i32 0, i32 20
    %t47 = bitcast i8* %t48 to i32*
    store i32 0, i32* %t47
    ; line 5090
    %t49 = load i8*, i8** @boolptr
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 24
    %t51 = bitcast i8* %t52 to i32*
    store i32 1, i32* %t51
    ; line 5091
    ; line 5091
    %t53 = load i8*, i8** @nilptr
    call void @P_pshstc(i8* %t53)
    ; line 5093
    %t54 = load i8*, i8** @nilptr
    %t55 = bitcast i8* %t54 to %T_structure*
    %t57 = getelementptr inbounds %T_structure, %T_structure* %t55, i32 0, i32 24
    %t56 = bitcast i8* %t57 to i8**
    store i8* null, i8** %t56
    ; line 5093
    %t58 = load i8*, i8** @nilptr
    %t59 = bitcast i8* %t58 to %T_structure*
    %t61 = getelementptr inbounds %T_structure, %T_structure* %t59, i32 0, i32 12
    %t60 = bitcast i8* %t61 to i32*
    store i32 4, i32* %t60
    ; line 5093
    %t62 = load i8*, i8** @nilptr
    %t63 = bitcast i8* %t62 to %T_structure*
    %t65 = getelementptr inbounds %T_structure, %T_structure* %t63, i32 0, i32 20
    %t64 = bitcast i8* %t65 to i32*
    store i32 2, i32* %t64
    ; line 5095
    ; line 5095
    %t66 = load i8*, i8** @parmptr
    call void @P_pshstc(i8* %t66)
    ; line 5097
    %t67 = load i8*, i8** @parmptr
    %t68 = bitcast i8* %t67 to %T_structure*
    %t70 = getelementptr inbounds %T_structure, %T_structure* %t68, i32 0, i32 12
    %t69 = bitcast i8* %t70 to i32*
    store i32 4, i32* %t69
    ; line 5097
    %t71 = load i8*, i8** @parmptr
    %t72 = bitcast i8* %t71 to %T_structure*
    %t74 = getelementptr inbounds %T_structure, %T_structure* %t72, i32 0, i32 20
    %t73 = bitcast i8* %t74 to i32*
    store i32 0, i32* %t73
    ; line 5097
    %t75 = load i8*, i8** @parmptr
    %t76 = bitcast i8* %t75 to %T_structure*
    %t78 = getelementptr inbounds %T_structure, %T_structure* %t76, i32 0, i32 24
    %t77 = bitcast i8* %t78 to i32*
    store i32 0, i32* %t77
    ; line 5098
    ; line 5098
    %t79 = load i8*, i8** @textptr
    call void @P_pshstc(i8* %t79)
    ; line 5100
    %t80 = load i8*, i8** @textptr
    %t81 = bitcast i8* %t80 to %T_structure*
    %t83 = getelementptr inbounds %T_structure, %T_structure* %t81, i32 0, i32 24
    %t82 = bitcast i8* %t83 to i8**
    %t84 = load i8*, i8** @charptr
    store i8* %t84, i8** %t82
    ; line 5100
    %t85 = load i8*, i8** @textptr
    %t86 = bitcast i8* %t85 to %T_structure*
    %t88 = getelementptr inbounds %T_structure, %T_structure* %t86, i32 0, i32 12
    %t87 = bitcast i8* %t88 to i32*
    %t89 = add i32 1, 1
    store i32 %t89, i32* %t87
    ; line 5100
    %t90 = load i8*, i8** @textptr
    %t91 = bitcast i8* %t90 to %T_structure*
    %t93 = getelementptr inbounds %T_structure, %T_structure* %t91, i32 0, i32 20
    %t92 = bitcast i8* %t93 to i32*
    store i32 6, i32* %t92

    ; epilogue
    ret void
}


; line 5103
;================================================================================
; scope: entstdnames (level : 2)

; activation record
%Frame_entstdnames = type
{
    ; variables
    i8*,    ; 0: cp
    i8*,    ; 1: cp1
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_entstdnames()
{
    ; allocate frame
    %.frame = alloca %Frame_entstdnames, align 8

    ; body
    ; line 5109
    ; line 5109
    %t2 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t1 = load i8*, i8** %t2
    call void @P_ininam(i8* %t1)
    ; line 5111
    %t4 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    %t5 = bitcast i8* %t3 to %T_identifier*
    %t7 = getelementptr inbounds %T_identifier, %T_identifier* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    call void @P_strassvr(i8** %t6, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0))
    ; line 5111
    %t9 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t8 = load i8*, i8** %t9
    %t10 = bitcast i8* %t8 to %T_identifier*
    %t12 = getelementptr inbounds %T_identifier, %T_identifier* %t10, i32 0, i32 24
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** @intptr
    store i8* %t13, i8** %t11
    ; line 5111
    %t15 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t14 = load i8*, i8** %t15
    %t16 = bitcast i8* %t14 to %T_identifier*
    %t18 = getelementptr inbounds %T_identifier, %T_identifier* %t16, i32 0, i32 44
    %t17 = bitcast i8* %t18 to i32*
    store i32 0, i32* %t17
    ; line 5112
    %t20 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    call void @P_enterid(i8* %t19)
    ; line 5113
    ; line 5113
    %t22 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t21 = load i8*, i8** %t22
    call void @P_ininam(i8* %t21)
    ; line 5115
    %t24 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t23 = load i8*, i8** %t24
    %t25 = bitcast i8* %t23 to %T_identifier*
    %t27 = getelementptr inbounds %T_identifier, %T_identifier* %t25, i32 0, i32 0
    %t26 = bitcast i8* %t27 to i8**
    call void @P_strassvr(i8** %t26, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0))
    ; line 5115
    %t29 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t28 = load i8*, i8** %t29
    %t30 = bitcast i8* %t28 to %T_identifier*
    %t32 = getelementptr inbounds %T_identifier, %T_identifier* %t30, i32 0, i32 24
    %t31 = bitcast i8* %t32 to i8**
    %t33 = load i8*, i8** @realptr
    store i8* %t33, i8** %t31
    ; line 5115
    %t35 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t34 = load i8*, i8** %t35
    %t36 = bitcast i8* %t34 to %T_identifier*
    %t38 = getelementptr inbounds %T_identifier, %T_identifier* %t36, i32 0, i32 44
    %t37 = bitcast i8* %t38 to i32*
    store i32 0, i32* %t37
    ; line 5116
    %t40 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t39 = load i8*, i8** %t40
    call void @P_enterid(i8* %t39)
    ; line 5117
    ; line 5117
    %t42 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t41 = load i8*, i8** %t42
    call void @P_ininam(i8* %t41)
    ; line 5119
    %t44 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t43 = load i8*, i8** %t44
    %t45 = bitcast i8* %t43 to %T_identifier*
    %t47 = getelementptr inbounds %T_identifier, %T_identifier* %t45, i32 0, i32 0
    %t46 = bitcast i8* %t47 to i8**
    call void @P_strassvr(i8** %t46, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0))
    ; line 5119
    %t49 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t48 = load i8*, i8** %t49
    %t50 = bitcast i8* %t48 to %T_identifier*
    %t52 = getelementptr inbounds %T_identifier, %T_identifier* %t50, i32 0, i32 24
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** @charptr
    store i8* %t53, i8** %t51
    ; line 5119
    %t55 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t54 = load i8*, i8** %t55
    %t56 = bitcast i8* %t54 to %T_identifier*
    %t58 = getelementptr inbounds %T_identifier, %T_identifier* %t56, i32 0, i32 44
    %t57 = bitcast i8* %t58 to i32*
    store i32 0, i32* %t57
    ; line 5120
    %t60 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t59 = load i8*, i8** %t60
    call void @P_enterid(i8* %t59)
    ; line 5121
    ; line 5121
    %t62 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t61 = load i8*, i8** %t62
    call void @P_ininam(i8* %t61)
    ; line 5123
    %t64 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t63 = load i8*, i8** %t64
    %t65 = bitcast i8* %t63 to %T_identifier*
    %t67 = getelementptr inbounds %T_identifier, %T_identifier* %t65, i32 0, i32 0
    %t66 = bitcast i8* %t67 to i8**
    call void @P_strassvr(i8** %t66, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0))
    ; line 5123
    %t69 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t68 = load i8*, i8** %t69
    %t70 = bitcast i8* %t68 to %T_identifier*
    %t72 = getelementptr inbounds %T_identifier, %T_identifier* %t70, i32 0, i32 24
    %t71 = bitcast i8* %t72 to i8**
    %t73 = load i8*, i8** @boolptr
    store i8* %t73, i8** %t71
    ; line 5123
    %t75 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t74 = load i8*, i8** %t75
    %t76 = bitcast i8* %t74 to %T_identifier*
    %t78 = getelementptr inbounds %T_identifier, %T_identifier* %t76, i32 0, i32 44
    %t77 = bitcast i8* %t78 to i32*
    store i32 0, i32* %t77
    ; line 5124
    %t80 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t79 = load i8*, i8** %t80
    call void @P_enterid(i8* %t79)
    ; line 5125
    ; line 5125
    %t82 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t81 = load i8*, i8** %t82
    call void @P_ininam(i8* %t81)
    ; line 5127
    %t84 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t83 = load i8*, i8** %t84
    %t85 = bitcast i8* %t83 to %T_identifier*
    %t87 = getelementptr inbounds %T_identifier, %T_identifier* %t85, i32 0, i32 0
    %t86 = bitcast i8* %t87 to i8**
    call void @P_strassvr(i8** %t86, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0))
    ; line 5127
    %t89 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t88 = load i8*, i8** %t89
    %t90 = bitcast i8* %t88 to %T_identifier*
    %t92 = getelementptr inbounds %T_identifier, %T_identifier* %t90, i32 0, i32 24
    %t91 = bitcast i8* %t92 to i8**
    %t93 = load i8*, i8** @textptr
    store i8* %t93, i8** %t91
    ; line 5127
    %t95 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t94 = load i8*, i8** %t95
    %t96 = bitcast i8* %t94 to %T_identifier*
    %t98 = getelementptr inbounds %T_identifier, %T_identifier* %t96, i32 0, i32 44
    %t97 = bitcast i8* %t98 to i32*
    store i32 0, i32* %t97
    ; line 5128
    %t100 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t99 = load i8*, i8** %t100
    call void @P_enterid(i8* %t99)
    ; line 5129
    %t101 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 1
    store i8* null, i8** %t101
    ; line 5130
    ; line 5138
    %t102 = load i8*, i8** @boolptr
    %t103 = bitcast i8* %t102 to %T_structure*
    %t105 = getelementptr inbounds %T_structure, %T_structure* %t103, i32 0, i32 32
    %t104 = bitcast i8* %t105 to i8**
    %t107 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t106 = load i8*, i8** %t107
    store i8* %t106, i8** %t104
    ; line 5139
    ; line 5149
    ; line 5158
    ; line 5167
    ; line 5176
    ; line 5191
    ; line 5191
    %t109 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t108 = load i8*, i8** %t109
    call void @P_ininam(i8* %t108)
    ; line 5193
    %t111 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t110 = load i8*, i8** %t111
    %t112 = bitcast i8* %t110 to %T_identifier*
    %t114 = getelementptr inbounds %T_identifier, %T_identifier* %t112, i32 0, i32 0
    %t113 = bitcast i8* %t114 to i8**
    %t115 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 36
    %t116 = load %T_restr, %T_restr* %t115
    call void @P_strassvr(i8** %t113, %T_restr %t116)
    ; line 5193
    %t118 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t117 = load i8*, i8** %t118
    %t119 = bitcast i8* %t117 to %T_identifier*
    %t121 = getelementptr inbounds %T_identifier, %T_identifier* %t119, i32 0, i32 24
    %t120 = bitcast i8* %t121 to i8**
    %t122 = load i8*, i8** @intptr
    store i8* %t122, i8** %t120
    ; line 5194
    %t124 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t123 = load i8*, i8** %t124
    %t125 = bitcast i8* %t123 to %T_identifier*
    %t127 = getelementptr inbounds %T_identifier, %T_identifier* %t125, i32 0, i32 32
    %t126 = bitcast i8* %t127 to i8**
    store i8* null, i8** %t126
    ; line 5194
    %t129 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t128 = load i8*, i8** %t129
    %t130 = bitcast i8* %t128 to %T_identifier*
    %t132 = getelementptr inbounds %T_identifier, %T_identifier* %t130, i32 0, i32 48
    %t131 = bitcast i8* %t132 to %T_valu*
    %t134 = getelementptr inbounds %T_valu, %T_valu* %t131, i32 0, i32 4
    %t133 = bitcast i8* %t134 to i32*
    store i32 2147483647, i32* %t133
    ; line 5194
    %t136 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t135 = load i8*, i8** %t136
    %t137 = bitcast i8* %t135 to %T_identifier*
    %t139 = getelementptr inbounds %T_identifier, %T_identifier* %t137, i32 0, i32 44
    %t138 = bitcast i8* %t139 to i32*
    store i32 1, i32* %t138
    ; line 5195
    %t141 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t140 = load i8*, i8** %t141
    call void @P_enterid(i8* %t140)
    ; line 5196
    ; line 5196
    %t143 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t142 = load i8*, i8** %t143
    call void @P_ininam(i8* %t142)
    ; line 5198
    %t145 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t144 = load i8*, i8** %t145
    %t146 = bitcast i8* %t144 to %T_identifier*
    %t148 = getelementptr inbounds %T_identifier, %T_identifier* %t146, i32 0, i32 0
    %t147 = bitcast i8* %t148 to i8**
    %t149 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 37
    %t150 = load %T_restr, %T_restr* %t149
    call void @P_strassvr(i8** %t147, %T_restr %t150)
    ; line 5198
    %t152 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t151 = load i8*, i8** %t152
    %t153 = bitcast i8* %t151 to %T_identifier*
    %t155 = getelementptr inbounds %T_identifier, %T_identifier* %t153, i32 0, i32 24
    %t154 = bitcast i8* %t155 to i8**
    store i8* null, i8** %t154
    ; line 5199
    %t157 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t156 = load i8*, i8** %t157
    %t158 = bitcast i8* %t156 to %T_identifier*
    %t160 = getelementptr inbounds %T_identifier, %T_identifier* %t158, i32 0, i32 56
    %t159 = bitcast i8* %t160 to i8**
    store i8* null, i8** %t159
    ; line 5199
    %t162 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t161 = load i8*, i8** %t162
    %t163 = bitcast i8* %t161 to %T_identifier*
    %t165 = getelementptr inbounds %T_identifier, %T_identifier* %t163, i32 0, i32 32
    %t164 = bitcast i8* %t165 to i8**
    store i8* null, i8** %t164
    ; line 5199
    %t167 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t166 = load i8*, i8** %t167
    %t168 = bitcast i8* %t166 to %T_identifier*
    %t170 = getelementptr inbounds %T_identifier, %T_identifier* %t168, i32 0, i32 68
    %t169 = bitcast i8* %t170 to i32*
    store i32 16, i32* %t169
    ; line 5200
    %t172 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t171 = load i8*, i8** %t172
    %t173 = bitcast i8* %t171 to %T_identifier*
    %t175 = getelementptr inbounds %T_identifier, %T_identifier* %t173, i32 0, i32 44
    %t174 = bitcast i8* %t175 to i32*
    store i32 5, i32* %t174
    ; line 5200
    %t177 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t176 = load i8*, i8** %t177
    %t178 = bitcast i8* %t176 to %T_identifier*
    %t180 = getelementptr inbounds %T_identifier, %T_identifier* %t178, i32 0, i32 64
    %t179 = bitcast i8* %t180 to i32*
    store i32 0, i32* %t179
    ; line 5201
    %t182 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t181 = load i8*, i8** %t182
    call void @P_enterid(i8* %t181)
    ; line 5202
    ; line 5202
    %t184 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t183 = load i8*, i8** %t184
    call void @P_ininam(i8* %t183)
    ; line 5204
    %t186 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t185 = load i8*, i8** %t186
    %t187 = bitcast i8* %t185 to %T_identifier*
    %t189 = getelementptr inbounds %T_identifier, %T_identifier* %t187, i32 0, i32 0
    %t188 = bitcast i8* %t189 to i8**
    %t190 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 38
    %t191 = load %T_restr, %T_restr* %t190
    call void @P_strassvr(i8** %t188, %T_restr %t191)
    ; line 5204
    %t193 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t192 = load i8*, i8** %t193
    %t194 = bitcast i8* %t192 to %T_identifier*
    %t196 = getelementptr inbounds %T_identifier, %T_identifier* %t194, i32 0, i32 24
    %t195 = bitcast i8* %t196 to i8**
    store i8* null, i8** %t195
    ; line 5205
    %t198 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t197 = load i8*, i8** %t198
    %t199 = bitcast i8* %t197 to %T_identifier*
    %t201 = getelementptr inbounds %T_identifier, %T_identifier* %t199, i32 0, i32 56
    %t200 = bitcast i8* %t201 to i8**
    store i8* null, i8** %t200
    ; line 5205
    %t203 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t202 = load i8*, i8** %t203
    %t204 = bitcast i8* %t202 to %T_identifier*
    %t206 = getelementptr inbounds %T_identifier, %T_identifier* %t204, i32 0, i32 32
    %t205 = bitcast i8* %t206 to i8**
    store i8* null, i8** %t205
    ; line 5205
    %t208 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t207 = load i8*, i8** %t208
    %t209 = bitcast i8* %t207 to %T_identifier*
    %t211 = getelementptr inbounds %T_identifier, %T_identifier* %t209, i32 0, i32 68
    %t210 = bitcast i8* %t211 to i32*
    store i32 17, i32* %t210
    ; line 5206
    %t213 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t212 = load i8*, i8** %t213
    %t214 = bitcast i8* %t212 to %T_identifier*
    %t216 = getelementptr inbounds %T_identifier, %T_identifier* %t214, i32 0, i32 44
    %t215 = bitcast i8* %t216 to i32*
    store i32 4, i32* %t215
    ; line 5206
    %t218 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t217 = load i8*, i8** %t218
    %t219 = bitcast i8* %t217 to %T_identifier*
    %t221 = getelementptr inbounds %T_identifier, %T_identifier* %t219, i32 0, i32 64
    %t220 = bitcast i8* %t221 to i32*
    store i32 0, i32* %t220
    ; line 5207
    %t223 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t222 = load i8*, i8** %t223
    call void @P_enterid(i8* %t222)
    ; line 5208
    ; line 5208
    %t225 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t224 = load i8*, i8** %t225
    call void @P_ininam(i8* %t224)
    ; line 5210
    %t227 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t226 = load i8*, i8** %t227
    %t228 = bitcast i8* %t226 to %T_identifier*
    %t230 = getelementptr inbounds %T_identifier, %T_identifier* %t228, i32 0, i32 0
    %t229 = bitcast i8* %t230 to i8**
    %t231 = getelementptr inbounds %T_array_21, %T_array_21* @na, i32 0, i32 39
    %t232 = load %T_restr, %T_restr* %t231
    call void @P_strassvr(i8** %t229, %T_restr %t232)
    ; line 5210
    %t234 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t233 = load i8*, i8** %t234
    %t235 = bitcast i8* %t233 to %T_identifier*
    %t237 = getelementptr inbounds %T_identifier, %T_identifier* %t235, i32 0, i32 24
    %t236 = bitcast i8* %t237 to i8**
    store i8* null, i8** %t236
    ; line 5211
    %t239 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t238 = load i8*, i8** %t239
    %t240 = bitcast i8* %t238 to %T_identifier*
    %t242 = getelementptr inbounds %T_identifier, %T_identifier* %t240, i32 0, i32 56
    %t241 = bitcast i8* %t242 to i8**
    store i8* null, i8** %t241
    ; line 5211
    %t244 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t243 = load i8*, i8** %t244
    %t245 = bitcast i8* %t243 to %T_identifier*
    %t247 = getelementptr inbounds %T_identifier, %T_identifier* %t245, i32 0, i32 32
    %t246 = bitcast i8* %t247 to i8**
    store i8* null, i8** %t246
    ; line 5211
    %t249 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t248 = load i8*, i8** %t249
    %t250 = bitcast i8* %t248 to %T_identifier*
    %t252 = getelementptr inbounds %T_identifier, %T_identifier* %t250, i32 0, i32 68
    %t251 = bitcast i8* %t252 to i32*
    store i32 18, i32* %t251
    ; line 5212
    %t254 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t253 = load i8*, i8** %t254
    %t255 = bitcast i8* %t253 to %T_identifier*
    %t257 = getelementptr inbounds %T_identifier, %T_identifier* %t255, i32 0, i32 44
    %t256 = bitcast i8* %t257 to i32*
    store i32 4, i32* %t256
    ; line 5212
    %t259 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t258 = load i8*, i8** %t259
    %t260 = bitcast i8* %t258 to %T_identifier*
    %t262 = getelementptr inbounds %T_identifier, %T_identifier* %t260, i32 0, i32 64
    %t261 = bitcast i8* %t262 to i32*
    store i32 0, i32* %t261
    ; line 5213
    %t264 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t263 = load i8*, i8** %t264
    call void @P_enterid(i8* %t263)

    ; epilogue
    ret void
}


; line 5216
;================================================================================
; scope: enterundecl (level : 2)

; activation record
%Frame_enterundecl = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_enterundecl()
{
    ; allocate frame
    %.frame = alloca %Frame_enterundecl, align 8

    ; body
    ; line 5218
    ; line 5218
    %t1 = load i8*, i8** @utypptr
    call void @P_ininam(i8* %t1)
    ; line 5220
    %t2 = load i8*, i8** @utypptr
    %t3 = bitcast i8* %t2 to %T_identifier*
    %t5 = getelementptr inbounds %T_identifier, %T_identifier* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    call void @P_strassvr(i8** %t4, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
    ; line 5220
    %t6 = load i8*, i8** @utypptr
    %t7 = bitcast i8* %t6 to %T_identifier*
    %t9 = getelementptr inbounds %T_identifier, %T_identifier* %t7, i32 0, i32 24
    %t8 = bitcast i8* %t9 to i8**
    store i8* null, i8** %t8
    ; line 5220
    %t10 = load i8*, i8** @utypptr
    %t11 = bitcast i8* %t10 to %T_identifier*
    %t13 = getelementptr inbounds %T_identifier, %T_identifier* %t11, i32 0, i32 44
    %t12 = bitcast i8* %t13 to i32*
    store i32 0, i32* %t12
    ; line 5221
    ; line 5221
    %t14 = load i8*, i8** @ucstptr
    call void @P_ininam(i8* %t14)
    ; line 5223
    %t15 = load i8*, i8** @ucstptr
    %t16 = bitcast i8* %t15 to %T_identifier*
    %t18 = getelementptr inbounds %T_identifier, %T_identifier* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    call void @P_strassvr(i8** %t17, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
    ; line 5223
    %t19 = load i8*, i8** @ucstptr
    %t20 = bitcast i8* %t19 to %T_identifier*
    %t22 = getelementptr inbounds %T_identifier, %T_identifier* %t20, i32 0, i32 24
    %t21 = bitcast i8* %t22 to i8**
    store i8* null, i8** %t21
    ; line 5223
    %t23 = load i8*, i8** @ucstptr
    %t24 = bitcast i8* %t23 to %T_identifier*
    %t26 = getelementptr inbounds %T_identifier, %T_identifier* %t24, i32 0, i32 32
    %t25 = bitcast i8* %t26 to i8**
    store i8* null, i8** %t25
    ; line 5224
    %t27 = load i8*, i8** @ucstptr
    %t28 = bitcast i8* %t27 to %T_identifier*
    %t30 = getelementptr inbounds %T_identifier, %T_identifier* %t28, i32 0, i32 48
    %t29 = bitcast i8* %t30 to %T_valu*
    %t32 = getelementptr inbounds %T_valu, %T_valu* %t29, i32 0, i32 4
    %t31 = bitcast i8* %t32 to i32*
    store i32 0, i32* %t31
    ; line 5224
    %t33 = load i8*, i8** @ucstptr
    %t34 = bitcast i8* %t33 to %T_identifier*
    %t36 = getelementptr inbounds %T_identifier, %T_identifier* %t34, i32 0, i32 44
    %t35 = bitcast i8* %t36 to i32*
    store i32 1, i32* %t35
    ; line 5226
    ; line 5226
    %t37 = load i8*, i8** @uvarptr
    call void @P_ininam(i8* %t37)
    ; line 5228
    %t38 = load i8*, i8** @uvarptr
    %t39 = bitcast i8* %t38 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 0
    %t40 = bitcast i8* %t41 to i8**
    call void @P_strassvr(i8** %t40, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
    ; line 5228
    %t42 = load i8*, i8** @uvarptr
    %t43 = bitcast i8* %t42 to %T_identifier*
    %t45 = getelementptr inbounds %T_identifier, %T_identifier* %t43, i32 0, i32 24
    %t44 = bitcast i8* %t45 to i8**
    store i8* null, i8** %t44
    ; line 5228
    %t46 = load i8*, i8** @uvarptr
    %t47 = bitcast i8* %t46 to %T_identifier*
    %t49 = getelementptr inbounds %T_identifier, %T_identifier* %t47, i32 0, i32 48
    %t48 = bitcast i8* %t49 to i32*
    store i32 0, i32* %t48
    ; line 5229
    %t50 = load i8*, i8** @uvarptr
    %t51 = bitcast i8* %t50 to %T_identifier*
    %t53 = getelementptr inbounds %T_identifier, %T_identifier* %t51, i32 0, i32 32
    %t52 = bitcast i8* %t53 to i8**
    store i8* null, i8** %t52
    ; line 5229
    %t54 = load i8*, i8** @uvarptr
    %t55 = bitcast i8* %t54 to %T_identifier*
    %t57 = getelementptr inbounds %T_identifier, %T_identifier* %t55, i32 0, i32 52
    %t56 = bitcast i8* %t57 to i32*
    store i32 0, i32* %t56
    ; line 5229
    %t58 = load i8*, i8** @uvarptr
    %t59 = bitcast i8* %t58 to %T_identifier*
    %t61 = getelementptr inbounds %T_identifier, %T_identifier* %t59, i32 0, i32 56
    %t60 = bitcast i8* %t61 to i32*
    store i32 0, i32* %t60
    ; line 5229
    %t62 = load i8*, i8** @uvarptr
    %t63 = bitcast i8* %t62 to %T_identifier*
    %t65 = getelementptr inbounds %T_identifier, %T_identifier* %t63, i32 0, i32 44
    %t64 = bitcast i8* %t65 to i32*
    store i32 2, i32* %t64
    ; line 5231
    ; line 5231
    %t66 = load i8*, i8** @ufldptr
    call void @P_ininam(i8* %t66)
    ; line 5233
    %t67 = load i8*, i8** @ufldptr
    %t68 = bitcast i8* %t67 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 0
    %t69 = bitcast i8* %t70 to i8**
    call void @P_strassvr(i8** %t69, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
    ; line 5233
    %t71 = load i8*, i8** @ufldptr
    %t72 = bitcast i8* %t71 to %T_identifier*
    %t74 = getelementptr inbounds %T_identifier, %T_identifier* %t72, i32 0, i32 24
    %t73 = bitcast i8* %t74 to i8**
    store i8* null, i8** %t73
    ; line 5233
    %t75 = load i8*, i8** @ufldptr
    %t76 = bitcast i8* %t75 to %T_identifier*
    %t78 = getelementptr inbounds %T_identifier, %T_identifier* %t76, i32 0, i32 32
    %t77 = bitcast i8* %t78 to i8**
    store i8* null, i8** %t77
    ; line 5233
    %t79 = load i8*, i8** @ufldptr
    %t80 = bitcast i8* %t79 to %T_identifier*
    %t82 = getelementptr inbounds %T_identifier, %T_identifier* %t80, i32 0, i32 48
    %t81 = bitcast i8* %t82 to i32*
    store i32 0, i32* %t81
    ; line 5234
    %t83 = load i8*, i8** @ufldptr
    %t84 = bitcast i8* %t83 to %T_identifier*
    %t86 = getelementptr inbounds %T_identifier, %T_identifier* %t84, i32 0, i32 44
    %t85 = bitcast i8* %t86 to i32*
    store i32 3, i32* %t85
    ; line 5236
    ; line 5236
    %t87 = load i8*, i8** @uprcptr
    call void @P_ininam(i8* %t87)
    ; line 5238
    %t88 = load i8*, i8** @uprcptr
    %t89 = bitcast i8* %t88 to %T_identifier*
    %t91 = getelementptr inbounds %T_identifier, %T_identifier* %t89, i32 0, i32 0
    %t90 = bitcast i8* %t91 to i8**
    call void @P_strassvr(i8** %t90, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
    ; line 5238
    %t92 = load i8*, i8** @uprcptr
    %t93 = bitcast i8* %t92 to %T_identifier*
    %t95 = getelementptr inbounds %T_identifier, %T_identifier* %t93, i32 0, i32 24
    %t94 = bitcast i8* %t95 to i8**
    store i8* null, i8** %t94
    ; line 5238
    %t96 = load i8*, i8** @uprcptr
    %t97 = bitcast i8* %t96 to %T_identifier*
    %t99 = getelementptr inbounds %T_identifier, %T_identifier* %t97, i32 0, i32 80
    %t98 = bitcast i8* %t99 to i1*
    store i1 0, i1* %t98
    ; line 5239
    %t100 = load i8*, i8** @uprcptr
    %t101 = bitcast i8* %t100 to %T_identifier*
    %t103 = getelementptr inbounds %T_identifier, %T_identifier* %t101, i32 0, i32 32
    %t102 = bitcast i8* %t103 to i8**
    store i8* null, i8** %t102
    ; line 5239
    %t104 = load i8*, i8** @uprcptr
    %t105 = bitcast i8* %t104 to %T_identifier*
    %t107 = getelementptr inbounds %T_identifier, %T_identifier* %t105, i32 0, i32 81
    %t106 = bitcast i8* %t107 to i1*
    store i1 0, i1* %t106
    ; line 5239
    %t108 = load i8*, i8** @uprcptr
    %t109 = bitcast i8* %t108 to %T_identifier*
    %t111 = getelementptr inbounds %T_identifier, %T_identifier* %t109, i32 0, i32 68
    %t110 = bitcast i8* %t111 to i32*
    store i32 0, i32* %t110
    ; line 5239
    %t112 = load i8*, i8** @uprcptr
    %t113 = bitcast i8* %t112 to %T_identifier*
    %t115 = getelementptr inbounds %T_identifier, %T_identifier* %t113, i32 0, i32 72
    %t114 = bitcast i8* %t115 to i32*
    call void @P_genlabel(i32* %t114)
    ; line 5240
    %t116 = load i8*, i8** @uprcptr
    %t117 = bitcast i8* %t116 to %T_identifier*
    %t119 = getelementptr inbounds %T_identifier, %T_identifier* %t117, i32 0, i32 44
    %t118 = bitcast i8* %t119 to i32*
    store i32 4, i32* %t118
    ; line 5240
    %t120 = load i8*, i8** @uprcptr
    %t121 = bitcast i8* %t120 to %T_identifier*
    %t123 = getelementptr inbounds %T_identifier, %T_identifier* %t121, i32 0, i32 56
    %t122 = bitcast i8* %t123 to i8**
    store i8* null, i8** %t122
    ; line 5240
    %t124 = load i8*, i8** @uprcptr
    %t125 = bitcast i8* %t124 to %T_identifier*
    %t127 = getelementptr inbounds %T_identifier, %T_identifier* %t125, i32 0, i32 64
    %t126 = bitcast i8* %t127 to i32*
    store i32 1, i32* %t126
    ; line 5240
    %t128 = load i8*, i8** @uprcptr
    %t129 = bitcast i8* %t128 to %T_identifier*
    %t131 = getelementptr inbounds %T_identifier, %T_identifier* %t129, i32 0, i32 76
    %t130 = bitcast i8* %t131 to i32*
    store i32 0, i32* %t130
    ; line 5242
    ; line 5242
    %t132 = load i8*, i8** @ufctptr
    call void @P_ininam(i8* %t132)
    ; line 5244
    %t133 = load i8*, i8** @ufctptr
    %t134 = bitcast i8* %t133 to %T_identifier*
    %t136 = getelementptr inbounds %T_identifier, %T_identifier* %t134, i32 0, i32 0
    %t135 = bitcast i8* %t136 to i8**
    call void @P_strassvr(i8** %t135, %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
    ; line 5244
    %t137 = load i8*, i8** @ufctptr
    %t138 = bitcast i8* %t137 to %T_identifier*
    %t140 = getelementptr inbounds %T_identifier, %T_identifier* %t138, i32 0, i32 24
    %t139 = bitcast i8* %t140 to i8**
    store i8* null, i8** %t139
    ; line 5244
    %t141 = load i8*, i8** @ufctptr
    %t142 = bitcast i8* %t141 to %T_identifier*
    %t144 = getelementptr inbounds %T_identifier, %T_identifier* %t142, i32 0, i32 32
    %t143 = bitcast i8* %t144 to i8**
    store i8* null, i8** %t143
    ; line 5245
    %t145 = load i8*, i8** @ufctptr
    %t146 = bitcast i8* %t145 to %T_identifier*
    %t148 = getelementptr inbounds %T_identifier, %T_identifier* %t146, i32 0, i32 80
    %t147 = bitcast i8* %t148 to i1*
    store i1 0, i1* %t147
    ; line 5245
    %t149 = load i8*, i8** @ufctptr
    %t150 = bitcast i8* %t149 to %T_identifier*
    %t152 = getelementptr inbounds %T_identifier, %T_identifier* %t150, i32 0, i32 81
    %t151 = bitcast i8* %t152 to i1*
    store i1 0, i1* %t151
    ; line 5245
    %t153 = load i8*, i8** @ufctptr
    %t154 = bitcast i8* %t153 to %T_identifier*
    %t156 = getelementptr inbounds %T_identifier, %T_identifier* %t154, i32 0, i32 68
    %t155 = bitcast i8* %t156 to i32*
    store i32 0, i32* %t155
    ; line 5245
    %t157 = load i8*, i8** @ufctptr
    %t158 = bitcast i8* %t157 to %T_identifier*
    %t160 = getelementptr inbounds %T_identifier, %T_identifier* %t158, i32 0, i32 72
    %t159 = bitcast i8* %t160 to i32*
    call void @P_genlabel(i32* %t159)
    ; line 5246
    %t161 = load i8*, i8** @ufctptr
    %t162 = bitcast i8* %t161 to %T_identifier*
    %t164 = getelementptr inbounds %T_identifier, %T_identifier* %t162, i32 0, i32 44
    %t163 = bitcast i8* %t164 to i32*
    store i32 5, i32* %t163
    ; line 5246
    %t165 = load i8*, i8** @ufctptr
    %t166 = bitcast i8* %t165 to %T_identifier*
    %t168 = getelementptr inbounds %T_identifier, %T_identifier* %t166, i32 0, i32 56
    %t167 = bitcast i8* %t168 to i8**
    store i8* null, i8** %t167
    ; line 5246
    %t169 = load i8*, i8** @ufctptr
    %t170 = bitcast i8* %t169 to %T_identifier*
    %t172 = getelementptr inbounds %T_identifier, %T_identifier* %t170, i32 0, i32 64
    %t171 = bitcast i8* %t172 to i32*
    store i32 1, i32* %t171
    ; line 5246
    %t173 = load i8*, i8** @ufctptr
    %t174 = bitcast i8* %t173 to %T_identifier*
    %t176 = getelementptr inbounds %T_identifier, %T_identifier* %t174, i32 0, i32 76
    %t175 = bitcast i8* %t176 to i32*
    store i32 0, i32* %t175

    ; epilogue
    ret void
}


; line 5251
;================================================================================
; scope: exitundecl (level : 2)

; activation record
%Frame_exitundecl = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_exitundecl()
{
    ; allocate frame
    %.frame = alloca %Frame_exitundecl, align 8

    ; body
    ; line 5253
    %t1 = load i8*, i8** @utypptr
    call void @P_putnam(i8* %t1)
    ; line 5254
    %t2 = load i8*, i8** @ucstptr
    call void @P_putnam(i8* %t2)
    ; line 5255
    %t3 = load i8*, i8** @uvarptr
    call void @P_putnam(i8* %t3)
    ; line 5256
    %t4 = load i8*, i8** @ufldptr
    call void @P_putnam(i8* %t4)
    ; line 5257
    %t5 = load i8*, i8** @uprcptr
    call void @P_putnam(i8* %t5)
    ; line 5258
    %t6 = load i8*, i8** @ufctptr
    call void @P_putnam(i8* %t6)
    ; nop

    ; epilogue
    ret void
}


; line 5261
;================================================================================
; scope: initscalars (level : 2)

; activation record
%Frame_initscalars = type
{
    ; variables
    i32,    ; 0: i

    ; dummy
    i8*
};

; procedure body
define void @P_initscalars()
{
    ; allocate frame
    %.frame = alloca %Frame_initscalars, align 8

    ; body
    ; line 5263
    store i8* null, i8** @fwptr
    ; line 5264
    store i1 0, i1* @prtables
    ; line 5264
    store i1 1, i1* @list
    ; line 5264
    store i1 1, i1* @prcode
    ; line 5264
    store i1 1, i1* @debug
    ; line 5265
    store i1 1, i1* @dp
    ; line 5265
    store i32 0, i32* @errinx
    ; line 5266
    store i32 0, i32* @intlabel
    ; line 5266
    store i32 250, i32* @kk
    ; line 5266
    store i8* null, i8** @fextfilep
    ; line 5267
    %t3 = add i32 1, 1
    %t2 = mul i32 4, %t3
    %t1 = add i32 32, %t2
    store i32 %t1, i32* @lc
    ; line 5269
    store i32 3, i32* @ic
    ; line 5269
    store i1 1, i1* @eol
    ; line 5269
    store i32 0, i32* @linecount
    ; line 5270
    store i8 32, i8* @ch
    ; line 5270
    store i32 0, i32* @chcnt
    ; line 5271
    %t4 = sdiv i32 2147483647, 10
    store i32 %t4, i32* @mxint10
    ; line 5272
    store i1 0, i1* @inputhdf
    ; line 5273
    store i1 0, i1* @outputhdf
    ; line 5274
    ; line 5275
    store i32 0, i32* @toterr
    ; line 5277
    store i32 0, i32* @strcnt
    ; line 5278
    store i32 0, i32* @cspcnt
    ; line 5279
    store i32 0, i32* @stpcnt
    ; line 5280
    store i32 0, i32* @ctpcnt
    ; line 5281
    store i32 0, i32* @lbpcnt
    ; line 5282
    store i32 0, i32* @filcnt
    ; line 5283
    store i32 0, i32* @cipcnt

    ; epilogue
    ret void
}


; line 5286
;================================================================================
; scope: initsets (level : 2)

; activation record
%Frame_initsets = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_initsets()
{
    ; allocate frame
    %.frame = alloca %Frame_initsets, align 8

    ; body
    ; line 5288
    store %T_setofsys %.dummy_set, %T_setofsys* @constbegsys
    ; line 5289
    store %T_setofsys %.dummy_set, %T_setofsys* @simptypebegsys
    ; line 5290
    store %T_setofsys %.dummy_set, %T_setofsys* @typebegsys
    ; line 5291
    store %T_setofsys %.dummy_set, %T_setofsys* @typedels
    ; line 5292
    store %T_setofsys %.dummy_set, %T_setofsys* @blockbegsys
    ; line 5293
    store %T_setofsys %.dummy_set, %T_setofsys* @selectsys
    ; line 5294
    store %T_setofsys %.dummy_set, %T_setofsys* @facbegsys
    ; line 5295
    store %T_setofsys %.dummy_set, %T_setofsys* @statbegsys
    ; nop

    ; epilogue
    ret void
}


; line 5298
;================================================================================
; scope: inittables (level : 2)

; activation record
%Frame_inittables = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_inittables()
{
    ; allocate frame
    %.frame = alloca %Frame_inittables, align 8

    ; body
    ; line 5486
    call void @P_inittables_reswords(%Frame_inittables* %.frame)
    ; line 5486
    call void @P_inittables_symbols(%Frame_inittables* %.frame)
    ; line 5486
    call void @P_inittables_rators(%Frame_inittables* %.frame)
    ; line 5487
    call void @P_inittables_instrmnemonics(%Frame_inittables* %.frame)
    ; line 5487
    call void @P_inittables_procmnemonics(%Frame_inittables* %.frame)
    ; line 5488
    call void @P_inittables_chartypes(%Frame_inittables* %.frame)
    ; line 5488
    call void @P_inittables_initdx(%Frame_inittables* %.frame)
    ; nop

    ; epilogue
    ret void
}


; line 5299
;================================================================================
; scope: inittables_reswords (level : 3)

; activation record
%Frame_inittables_reswords = type
{
    ; slink
    %Frame_inittables*    ; 0
};

; procedure body
define void @P_inittables_reswords(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_reswords, align 8
    %t1 = getelementptr inbounds %Frame_inittables_reswords, %Frame_inittables_reswords* %.frame, i32 0, i32 0
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5301
    %t2 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 1
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), %T_restr* %t2
    ; line 5301
    %t3 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 2
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), %T_restr* %t3
    ; line 5301
    %t4 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 3
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), %T_restr* %t4
    ; line 5302
    %t5 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 4
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), %T_restr* %t5
    ; line 5302
    %t6 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 5
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), %T_restr* %t6
    ; line 5302
    %t7 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 6
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), %T_restr* %t7
    ; line 5303
    %t8 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 7
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), %T_restr* %t8
    ; line 5303
    %t9 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 8
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), %T_restr* %t9
    ; line 5303
    %t10 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 9
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), %T_restr* %t10
    ; line 5304
    %t11 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 10
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), %T_restr* %t11
    ; line 5304
    %t12 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 11
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), %T_restr* %t12
    ; line 5304
    %t13 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 12
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), %T_restr* %t13
    ; line 5305
    %t14 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 13
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), %T_restr* %t14
    ; line 5305
    %t15 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 14
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), %T_restr* %t15
    ; line 5305
    %t16 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 15
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), %T_restr* %t16
    ; line 5306
    %t17 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 16
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), %T_restr* %t17
    ; line 5306
    %t18 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 17
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), %T_restr* %t18
    ; line 5306
    %t19 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 18
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), %T_restr* %t19
    ; line 5307
    %t20 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 19
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), %T_restr* %t20
    ; line 5307
    %t21 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 20
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), %T_restr* %t21
    ; line 5307
    %t22 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 21
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), %T_restr* %t22
    ; line 5308
    %t23 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 22
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), %T_restr* %t23
    ; line 5308
    %t24 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 23
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), %T_restr* %t24
    ; line 5308
    %t25 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 24
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), %T_restr* %t25
    ; line 5309
    %t26 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 25
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), %T_restr* %t26
    ; line 5309
    %t27 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 26
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), %T_restr* %t27
    ; line 5309
    %t28 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 27
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), %T_restr* %t28
    ; line 5310
    %t29 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 28
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), %T_restr* %t29
    ; line 5310
    %t30 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 29
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), %T_restr* %t30
    ; line 5310
    %t31 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 30
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), %T_restr* %t31
    ; line 5311
    %t32 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 31
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), %T_restr* %t32
    ; line 5311
    %t33 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 32
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), %T_restr* %t33
    ; line 5311
    %t34 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 33
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), %T_restr* %t34
    ; line 5312
    %t35 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 34
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), %T_restr* %t35
    ; line 5312
    %t36 = getelementptr inbounds %T_array_27, %T_array_27* @rw, i32 0, i32 35
    store %T_restr getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), %T_restr* %t36
    ; line 5313
    %t37 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 1
    store i32 1, i32* %t37
    ; line 5313
    %t38 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 2
    store i32 1, i32* %t38
    ; line 5313
    %t39 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 3
    store i32 7, i32* %t39
    ; line 5313
    %t40 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 4
    store i32 16, i32* %t40
    ; line 5313
    %t41 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 5
    store i32 23, i32* %t41
    ; line 5314
    %t42 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 6
    store i32 29, i32* %t42
    ; line 5314
    %t43 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 7
    store i32 33, i32* %t43
    ; line 5314
    %t44 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 8
    store i32 34, i32* %t44
    ; line 5314
    %t45 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 9
    store i32 35, i32* %t45
    ; line 5314
    %t46 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 10
    store i32 36, i32* %t46
    ; nop

    ; epilogue
    ret void
}


; line 5317
;================================================================================
; scope: inittables_symbols (level : 3)

; activation record
%Frame_inittables_symbols = type
{
    ; slink
    %Frame_inittables*    ; 0
};

; procedure body
define void @P_inittables_symbols(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_symbols, align 8
    %t1 = getelementptr inbounds %Frame_inittables_symbols, %Frame_inittables_symbols* %.frame, i32 0, i32 0
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5319
    %t2 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 1
    store i32 32, i32* %t2
    ; line 5319
    %t3 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 2
    store i32 43, i32* %t3
    ; line 5319
    %t4 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 3
    store i32 42, i32* %t4
    ; line 5320
    %t5 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 4
    store i32 44, i32* %t5
    ; line 5320
    %t6 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 5
    store i32 7, i32* %t6
    ; line 5320
    %t7 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 6
    store i32 6, i32* %t7
    ; line 5321
    %t8 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 7
    store i32 39, i32* %t8
    ; line 5321
    %t9 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 8
    store i32 36, i32* %t9
    ; line 5321
    %t10 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 9
    store i32 22, i32* %t10
    ; line 5322
    %t11 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 10
    store i32 5, i32* %t11
    ; line 5322
    %t12 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 11
    store i32 5, i32* %t12
    ; line 5322
    %t13 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 12
    store i32 26, i32* %t13
    ; line 5323
    %t14 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 13
    store i32 5, i32* %t14
    ; line 5323
    %t15 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 14
    store i32 4, i32* %t15
    ; line 5323
    %t16 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 15
    store i32 47, i32* %t16
    ; line 5324
    %t17 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 16
    store i32 46, i32* %t17
    ; line 5324
    %t18 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 17
    store i32 40, i32* %t18
    ; line 5324
    %t19 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 18
    store i32 37, i32* %t19
    ; line 5325
    %t20 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 19
    store i32 38, i32* %t20
    ; line 5325
    %t21 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 20
    store i32 33, i32* %t21
    ; line 5325
    %t22 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 21
    store i32 21, i32* %t22
    ; line 5326
    %t23 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 22
    store i32 30, i32* %t23
    ; line 5326
    %t24 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 23
    store i32 31, i32* %t24
    ; line 5326
    %t25 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 24
    store i32 41, i32* %t25
    ; line 5327
    %t26 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 25
    store i32 35, i32* %t26
    ; line 5327
    %t27 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 26
    store i32 28, i32* %t27
    ; line 5327
    %t28 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 27
    store i32 20, i32* %t28
    ; line 5328
    %t29 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 28
    store i32 19, i32* %t29
    ; line 5328
    %t30 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 29
    store i32 34, i32* %t30
    ; line 5328
    %t31 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 30
    store i32 29, i32* %t31
    ; line 5329
    %t32 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 31
    store i32 45, i32* %t32
    ; line 5329
    %t33 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 32
    store i32 27, i32* %t33
    ; line 5329
    %t34 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 33
    store i32 24, i32* %t34
    ; line 5330
    %t35 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 34
    store i32 23, i32* %t35
    ; line 5330
    %t36 = getelementptr inbounds %T_array_26, %T_array_26* @rsy, i32 0, i32 35
    store i32 25, i32* %t36
    ; line 5331
    %t37 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 43
    store i32 6, i32* %t37
    ; line 5331
    %t38 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 45
    store i32 6, i32* %t38
    ; line 5331
    %t39 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 42
    store i32 5, i32* %t39
    ; line 5332
    %t40 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 47
    store i32 5, i32* %t40
    ; line 5332
    %t41 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 40
    store i32 8, i32* %t41
    ; line 5332
    %t42 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 41
    store i32 9, i32* %t42
    ; line 5333
    %t43 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 36
    store i32 48, i32* %t43
    ; line 5333
    %t44 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 61
    store i32 7, i32* %t44
    ; line 5333
    %t45 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 32
    store i32 48, i32* %t45
    ; line 5334
    %t46 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 44
    store i32 12, i32* %t46
    ; line 5334
    %t47 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 46
    store i32 14, i32* %t47
    ; line 5334
    %t48 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 39
    store i32 48, i32* %t48
    ; line 5335
    %t49 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 91
    store i32 10, i32* %t49
    ; line 5335
    %t50 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 93
    store i32 11, i32* %t50
    ; line 5335
    %t51 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 58
    store i32 16, i32* %t51
    ; line 5336
    %t52 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 94
    store i32 15, i32* %t52
    ; line 5336
    %t53 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 60
    store i32 7, i32* %t53
    ; line 5336
    %t54 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 62
    store i32 7, i32* %t54
    ; line 5337
    %t55 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 59
    store i32 13, i32* %t55
    ; line 5337
    %t56 = getelementptr inbounds %T_array_31, %T_array_31* @ssy, i32 0, i32 64
    store i32 15, i32* %t56
    ; nop

    ; epilogue
    ret void
}


; line 5340
;================================================================================
; scope: inittables_rators (level : 3)

; activation record
%Frame_inittables_rators = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_inittables*    ; 1
};

; procedure body
define void @P_inittables_rators(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_rators, align 8
    %t1 = getelementptr inbounds %Frame_inittables_rators, %Frame_inittables_rators* %.frame, i32 0, i32 1
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5343
    ; line 5344
    %t2 = getelementptr inbounds %T_array_25, %T_array_25* @rop, i32 0, i32 5
    store i32 14, i32* %t2
    ; line 5344
    %t3 = getelementptr inbounds %T_array_25, %T_array_25* @rop, i32 0, i32 10
    store i32 3, i32* %t3
    ; line 5344
    %t4 = getelementptr inbounds %T_array_25, %T_array_25* @rop, i32 0, i32 11
    store i32 4, i32* %t4
    ; line 5345
    %t5 = getelementptr inbounds %T_array_25, %T_array_25* @rop, i32 0, i32 6
    store i32 7, i32* %t5
    ; line 5345
    %t6 = getelementptr inbounds %T_array_25, %T_array_25* @rop, i32 0, i32 13
    store i32 2, i32* %t6
    ; line 5346
    ; line 5347
    %t7 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 43
    store i32 5, i32* %t7
    ; line 5347
    %t8 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 45
    store i32 6, i32* %t8
    ; line 5347
    %t9 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 42
    store i32 0, i32* %t9
    ; line 5347
    %t10 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 47
    store i32 1, i32* %t10
    ; line 5348
    %t11 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 61
    store i32 13, i32* %t11
    ; line 5348
    %t12 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 60
    store i32 8, i32* %t12
    ; line 5348
    %t13 = getelementptr inbounds %T_array_30, %T_array_30* @sop, i32 0, i32 62
    store i32 11, i32* %t13
    ; nop

    ; epilogue
    ret void
}


; line 5351
;================================================================================
; scope: inittables_procmnemonics (level : 3)

; activation record
%Frame_inittables_procmnemonics = type
{
    ; slink
    %Frame_inittables*    ; 0
};

; procedure body
define void @P_inittables_procmnemonics(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_procmnemonics, align 8
    %t1 = getelementptr inbounds %Frame_inittables_procmnemonics, %Frame_inittables_procmnemonics* %.frame, i32 0, i32 0
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5356
    %t2 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 1
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), %T_array_29* %t2
    ; line 5356
    %t3 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 2
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), %T_array_29* %t3
    ; line 5356
    %t4 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 3
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), %T_array_29* %t4
    ; line 5356
    %t5 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 4
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), %T_array_29* %t5
    ; line 5357
    %t6 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 5
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), %T_array_29* %t6
    ; line 5357
    %t7 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 6
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), %T_array_29* %t7
    ; line 5357
    %t8 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 7
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), %T_array_29* %t8
    ; line 5357
    %t9 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 8
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), %T_array_29* %t9
    ; line 5358
    %t10 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 9
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), %T_array_29* %t10
    ; line 5358
    %t11 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 10
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), %T_array_29* %t11
    ; line 5358
    %t12 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 11
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), %T_array_29* %t12
    ; line 5358
    %t13 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 12
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), %T_array_29* %t13
    ; line 5359
    %t14 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 13
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), %T_array_29* %t14
    ; line 5359
    %t15 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 14
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), %T_array_29* %t15
    ; line 5359
    %t16 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 15
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), %T_array_29* %t16
    ; line 5359
    %t17 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 16
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), %T_array_29* %t17
    ; line 5360
    %t18 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 17
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), %T_array_29* %t18
    ; line 5360
    %t19 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 18
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), %T_array_29* %t19
    ; line 5360
    %t20 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 19
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), %T_array_29* %t20
    ; line 5360
    %t21 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 20
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), %T_array_29* %t21
    ; line 5361
    %t22 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 21
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), %T_array_29* %t22
    ; line 5361
    %t23 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 22
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), %T_array_29* %t23
    ; line 5361
    %t24 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 23
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), %T_array_29* %t24
    ; line 5363
    %t25 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 24
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), %T_array_29* %t25
    ; line 5363
    %t26 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 25
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), %T_array_29* %t26
    ; line 5363
    %t27 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 26
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), %T_array_29* %t27
    ; line 5363
    %t28 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 27
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i32 0, i32 0), %T_array_29* %t28
    ; line 5364
    %t29 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 28
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), %T_array_29* %t29
    ; line 5364
    %t30 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 29
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), %T_array_29* %t30
    ; line 5364
    %t31 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 30
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), %T_array_29* %t31
    ; line 5364
    %t32 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 31
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), %T_array_29* %t32
    ; line 5365
    %t33 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 32
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), %T_array_29* %t33
    ; line 5365
    %t34 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 33
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), %T_array_29* %t34
    ; line 5365
    %t35 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 34
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), %T_array_29* %t35
    ; line 5365
    %t36 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 35
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), %T_array_29* %t36
    ; line 5366
    %t37 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 36
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), %T_array_29* %t37
    ; line 5366
    %t38 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 37
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), %T_array_29* %t38
    ; line 5366
    %t39 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 38
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), %T_array_29* %t39
    ; line 5366
    %t40 = getelementptr inbounds %T_array_28, %T_array_28* @sna, i32 0, i32 39
    store %T_array_29 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), %T_array_29* %t40
    ; nop

    ; epilogue
    ret void
}


; line 5370
;================================================================================
; scope: inittables_instrmnemonics (level : 3)

; activation record
%Frame_inittables_instrmnemonics = type
{
    ; slink
    %Frame_inittables*    ; 0
};

; procedure body
define void @P_inittables_instrmnemonics(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_instrmnemonics, align 8
    %t1 = getelementptr inbounds %Frame_inittables_instrmnemonics, %Frame_inittables_instrmnemonics* %.frame, i32 0, i32 0
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5372
    %t2 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 0
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), %T_array_20* %t2
    ; line 5372
    %t3 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 1
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), %T_array_20* %t3
    ; line 5372
    %t4 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 2
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), %T_array_20* %t4
    ; line 5372
    %t5 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 3
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), %T_array_20* %t5
    ; line 5373
    %t6 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 4
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), %T_array_20* %t6
    ; line 5373
    %t7 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 5
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), %T_array_20* %t7
    ; line 5373
    %t8 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 6
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), %T_array_20* %t8
    ; line 5373
    %t9 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 7
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), %T_array_20* %t9
    ; line 5374
    %t10 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 8
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), %T_array_20* %t10
    ; line 5374
    %t11 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 9
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), %T_array_20* %t11
    ; line 5374
    %t12 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 10
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), %T_array_20* %t12
    ; line 5374
    %t13 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 11
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), %T_array_20* %t13
    ; line 5375
    %t14 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 12
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), %T_array_20* %t14
    ; line 5375
    %t15 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 13
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), %T_array_20* %t15
    ; line 5375
    %t16 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 14
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.167, i32 0, i32 0), %T_array_20* %t16
    ; line 5375
    %t17 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 15
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), %T_array_20* %t17
    ; line 5376
    %t18 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 16
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.169, i32 0, i32 0), %T_array_20* %t18
    ; line 5376
    %t19 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 17
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i32 0, i32 0), %T_array_20* %t19
    ; line 5376
    %t20 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 18
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), %T_array_20* %t20
    ; line 5376
    %t21 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 19
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.172, i32 0, i32 0), %T_array_20* %t21
    ; line 5377
    %t22 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 20
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0), %T_array_20* %t22
    ; line 5377
    %t23 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 21
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.174, i32 0, i32 0), %T_array_20* %t23
    ; line 5377
    %t24 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 22
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i32 0, i32 0), %T_array_20* %t24
    ; line 5377
    %t25 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 23
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i32 0, i32 0), %T_array_20* %t25
    ; line 5378
    %t26 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 24
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i32 0, i32 0), %T_array_20* %t26
    ; line 5378
    %t27 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 25
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i32 0, i32 0), %T_array_20* %t27
    ; line 5378
    %t28 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 26
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), %T_array_20* %t28
    ; line 5378
    %t29 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 27
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.180, i32 0, i32 0), %T_array_20* %t29
    ; line 5379
    %t30 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 28
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i32 0, i32 0), %T_array_20* %t30
    ; line 5379
    %t31 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 29
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.182, i32 0, i32 0), %T_array_20* %t31
    ; line 5379
    %t32 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 30
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.183, i32 0, i32 0), %T_array_20* %t32
    ; line 5379
    %t33 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 31
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.184, i32 0, i32 0), %T_array_20* %t33
    ; line 5380
    %t34 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 32
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), %T_array_20* %t34
    ; line 5380
    %t35 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 33
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i32 0, i32 0), %T_array_20* %t35
    ; line 5380
    %t36 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 34
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0), %T_array_20* %t36
    ; line 5380
    %t37 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 35
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.188, i32 0, i32 0), %T_array_20* %t37
    ; line 5381
    %t38 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 36
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), %T_array_20* %t38
    ; line 5381
    %t39 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 37
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i32 0, i32 0), %T_array_20* %t39
    ; line 5381
    %t40 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 38
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.191, i32 0, i32 0), %T_array_20* %t40
    ; line 5381
    %t41 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 39
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i32 0, i32 0), %T_array_20* %t41
    ; line 5382
    %t42 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 40
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), %T_array_20* %t42
    ; line 5382
    %t43 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 41
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.194, i32 0, i32 0), %T_array_20* %t43
    ; line 5382
    %t44 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 42
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.195, i32 0, i32 0), %T_array_20* %t44
    ; line 5382
    %t45 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 43
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.196, i32 0, i32 0), %T_array_20* %t45
    ; line 5383
    %t46 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 44
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i32 0, i32 0), %T_array_20* %t46
    ; line 5383
    %t47 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 45
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.198, i32 0, i32 0), %T_array_20* %t47
    ; line 5383
    %t48 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 46
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0), %T_array_20* %t48
    ; line 5383
    %t49 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 47
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i32 0, i32 0), %T_array_20* %t49
    ; line 5384
    %t50 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 48
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.201, i32 0, i32 0), %T_array_20* %t50
    ; line 5384
    %t51 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 49
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i32 0, i32 0), %T_array_20* %t51
    ; line 5384
    %t52 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 50
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.203, i32 0, i32 0), %T_array_20* %t52
    ; line 5384
    %t53 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 51
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.204, i32 0, i32 0), %T_array_20* %t53
    ; line 5385
    %t54 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 52
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i32 0, i32 0), %T_array_20* %t54
    ; line 5385
    %t55 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 53
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.206, i32 0, i32 0), %T_array_20* %t55
    ; line 5385
    %t56 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 54
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.207, i32 0, i32 0), %T_array_20* %t56
    ; line 5385
    %t57 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 55
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i32 0, i32 0), %T_array_20* %t57
    ; line 5386
    %t58 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 56
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i32 0, i32 0), %T_array_20* %t58
    ; line 5386
    %t59 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 57
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i32 0, i32 0), %T_array_20* %t59
    ; line 5386
    %t60 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 58
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.211, i32 0, i32 0), %T_array_20* %t60
    ; line 5386
    %t61 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 59
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), %T_array_20* %t61
    ; line 5387
    %t62 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 60
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.213, i32 0, i32 0), %T_array_20* %t62
    ; line 5389
    %t63 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 61
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.214, i32 0, i32 0), %T_array_20* %t63
    ; line 5389
    %t64 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 62
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.215, i32 0, i32 0), %T_array_20* %t64
    ; line 5389
    %t65 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 63
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.216, i32 0, i32 0), %T_array_20* %t65
    ; line 5389
    %t66 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 64
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.217, i32 0, i32 0), %T_array_20* %t66
    ; line 5390
    %t67 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 65
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.218, i32 0, i32 0), %T_array_20* %t67
    ; line 5390
    %t68 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 66
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.219, i32 0, i32 0), %T_array_20* %t68
    ; line 5390
    %t69 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 67
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.220, i32 0, i32 0), %T_array_20* %t69
    ; line 5390
    %t70 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 68
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.221, i32 0, i32 0), %T_array_20* %t70
    ; line 5391
    %t71 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 69
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), %T_array_20* %t71
    ; line 5391
    %t72 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 70
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i32 0, i32 0), %T_array_20* %t72
    ; line 5391
    %t73 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 71
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), %T_array_20* %t73
    ; line 5391
    %t74 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 72
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.225, i32 0, i32 0), %T_array_20* %t74
    ; line 5392
    %t75 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 73
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.226, i32 0, i32 0), %T_array_20* %t75
    ; line 5392
    %t76 = getelementptr inbounds %T_array_19, %T_array_19* @mn, i32 0, i32 74
    store %T_array_20 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.227, i32 0, i32 0), %T_array_20* %t76
    ; nop

    ; epilogue
    ret void
}


; line 5395
;================================================================================
; scope: inittables_chartypes (level : 3)

; activation record
%Frame_inittables_chartypes = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_inittables*    ; 1
};

; procedure body
define void @P_inittables_chartypes(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_chartypes, align 8
    %t1 = getelementptr inbounds %Frame_inittables_chartypes, %Frame_inittables_chartypes* %.frame, i32 0, i32 1
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5398
    ; line 5399
    %t2 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 97
    store i32 0, i32* %t2
    ; line 5400
    %t3 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 98
    store i32 0, i32* %t3
    ; line 5400
    %t4 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 99
    store i32 0, i32* %t4
    ; line 5401
    %t5 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 100
    store i32 0, i32* %t5
    ; line 5401
    %t6 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 101
    store i32 0, i32* %t6
    ; line 5402
    %t7 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 102
    store i32 0, i32* %t7
    ; line 5402
    %t8 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 103
    store i32 0, i32* %t8
    ; line 5403
    %t9 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 104
    store i32 0, i32* %t9
    ; line 5403
    %t10 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 105
    store i32 0, i32* %t10
    ; line 5404
    %t11 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 106
    store i32 0, i32* %t11
    ; line 5404
    %t12 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 107
    store i32 0, i32* %t12
    ; line 5405
    %t13 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 108
    store i32 0, i32* %t13
    ; line 5405
    %t14 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 109
    store i32 0, i32* %t14
    ; line 5406
    %t15 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 110
    store i32 0, i32* %t15
    ; line 5406
    %t16 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 111
    store i32 0, i32* %t16
    ; line 5407
    %t17 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 112
    store i32 0, i32* %t17
    ; line 5407
    %t18 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 113
    store i32 0, i32* %t18
    ; line 5408
    %t19 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 114
    store i32 0, i32* %t19
    ; line 5408
    %t20 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 115
    store i32 0, i32* %t20
    ; line 5409
    %t21 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 116
    store i32 0, i32* %t21
    ; line 5409
    %t22 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 117
    store i32 0, i32* %t22
    ; line 5410
    %t23 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 118
    store i32 0, i32* %t23
    ; line 5410
    %t24 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 119
    store i32 0, i32* %t24
    ; line 5411
    %t25 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 120
    store i32 0, i32* %t25
    ; line 5411
    %t26 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 121
    store i32 0, i32* %t26
    ; line 5412
    %t27 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 122
    store i32 0, i32* %t27
    ; line 5413
    %t28 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 65
    store i32 0, i32* %t28
    ; line 5414
    %t29 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 66
    store i32 0, i32* %t29
    ; line 5414
    %t30 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 67
    store i32 0, i32* %t30
    ; line 5415
    %t31 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 68
    store i32 0, i32* %t31
    ; line 5415
    %t32 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 69
    store i32 0, i32* %t32
    ; line 5416
    %t33 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 70
    store i32 0, i32* %t33
    ; line 5416
    %t34 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 71
    store i32 0, i32* %t34
    ; line 5417
    %t35 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 72
    store i32 0, i32* %t35
    ; line 5417
    %t36 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 73
    store i32 0, i32* %t36
    ; line 5418
    %t37 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 74
    store i32 0, i32* %t37
    ; line 5418
    %t38 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 75
    store i32 0, i32* %t38
    ; line 5419
    %t39 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 76
    store i32 0, i32* %t39
    ; line 5419
    %t40 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 77
    store i32 0, i32* %t40
    ; line 5420
    %t41 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 78
    store i32 0, i32* %t41
    ; line 5420
    %t42 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 79
    store i32 0, i32* %t42
    ; line 5421
    %t43 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 80
    store i32 0, i32* %t43
    ; line 5421
    %t44 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 81
    store i32 0, i32* %t44
    ; line 5422
    %t45 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 82
    store i32 0, i32* %t45
    ; line 5422
    %t46 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 83
    store i32 0, i32* %t46
    ; line 5423
    %t47 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 84
    store i32 0, i32* %t47
    ; line 5423
    %t48 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 85
    store i32 0, i32* %t48
    ; line 5424
    %t49 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 86
    store i32 0, i32* %t49
    ; line 5424
    %t50 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 87
    store i32 0, i32* %t50
    ; line 5425
    %t51 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 88
    store i32 0, i32* %t51
    ; line 5425
    %t52 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 89
    store i32 0, i32* %t52
    ; line 5426
    %t53 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 90
    store i32 0, i32* %t53
    ; line 5427
    %t54 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 48
    store i32 1, i32* %t54
    ; line 5428
    %t55 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 49
    store i32 1, i32* %t55
    ; line 5428
    %t56 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 50
    store i32 1, i32* %t56
    ; line 5429
    %t57 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 51
    store i32 1, i32* %t57
    ; line 5429
    %t58 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 52
    store i32 1, i32* %t58
    ; line 5430
    %t59 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 53
    store i32 1, i32* %t59
    ; line 5430
    %t60 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 54
    store i32 1, i32* %t60
    ; line 5431
    %t61 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 55
    store i32 1, i32* %t61
    ; line 5431
    %t62 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 56
    store i32 1, i32* %t62
    ; line 5432
    %t63 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 57
    store i32 1, i32* %t63
    ; line 5432
    %t64 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 43
    store i32 2, i32* %t64
    ; line 5433
    %t65 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 45
    store i32 2, i32* %t65
    ; line 5433
    %t66 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 42
    store i32 2, i32* %t66
    ; line 5434
    %t67 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 47
    store i32 2, i32* %t67
    ; line 5434
    %t68 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 40
    store i32 9, i32* %t68
    ; line 5435
    %t69 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 41
    store i32 2, i32* %t69
    ; line 5435
    %t70 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 36
    store i32 2, i32* %t70
    ; line 5436
    %t71 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 61
    store i32 2, i32* %t71
    ; line 5436
    %t72 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 32
    store i32 10, i32* %t72
    ; line 5437
    %t73 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 44
    store i32 2, i32* %t73
    ; line 5437
    %t74 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 46
    store i32 6, i32* %t74
    ; line 5438
    %t75 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 39
    store i32 4, i32* %t75
    ; line 5438
    %t76 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 91
    store i32 2, i32* %t76
    ; line 5439
    %t77 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 93
    store i32 2, i32* %t77
    ; line 5439
    %t78 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 58
    store i32 5, i32* %t78
    ; line 5440
    %t79 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 94
    store i32 2, i32* %t79
    ; line 5440
    %t80 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 59
    store i32 2, i32* %t80
    ; line 5441
    %t81 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 60
    store i32 7, i32* %t81
    ; line 5441
    %t82 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 62
    store i32 8, i32* %t82
    ; line 5442
    %t83 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 123
    store i32 11, i32* %t83
    ; line 5442
    %t84 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 125
    store i32 2, i32* %t84
    ; line 5443
    %t85 = getelementptr inbounds %T_array_7, %T_array_7* @chartp, i32 0, i32 64
    store i32 2, i32* %t85
    ; line 5445
    %t86 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 48
    store i32 0, i32* %t86
    ; line 5445
    %t87 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 49
    store i32 1, i32* %t87
    ; line 5445
    %t88 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 50
    store i32 2, i32* %t88
    ; line 5446
    %t89 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 51
    store i32 3, i32* %t89
    ; line 5446
    %t90 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 52
    store i32 4, i32* %t90
    ; line 5446
    %t91 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 53
    store i32 5, i32* %t91
    ; line 5447
    %t92 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 54
    store i32 6, i32* %t92
    ; line 5447
    %t93 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 55
    store i32 7, i32* %t93
    ; line 5447
    %t94 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 56
    store i32 8, i32* %t94
    ; line 5448
    %t95 = getelementptr inbounds %T_array_22, %T_array_22* @ordint, i32 0, i32 57
    store i32 9, i32* %t95
    ; nop

    ; epilogue
    ret void
}


; line 5451
;================================================================================
; scope: inittables_initdx (level : 3)

; activation record
%Frame_inittables_initdx = type
{
    ; slink
    %Frame_inittables*    ; 0
};

; procedure body
define void @P_inittables_initdx(%Frame_inittables* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_inittables_initdx, align 8
    %t1 = getelementptr inbounds %Frame_inittables_initdx, %Frame_inittables_initdx* %.frame, i32 0, i32 0
    store %Frame_inittables* %.slink, %Frame_inittables** %t1

    ; body
    ; line 5453
    %t2 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 0
    store i32 0, i32* %t2
    ; line 5453
    %t3 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 1
    store i32 0, i32* %t3
    ; line 5453
    %t4 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 2
    %t5 = sub i32 0, 1
    store i32 %t5, i32* %t4
    ; line 5453
    %t6 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 3
    %t7 = sub i32 0, 1
    store i32 %t7, i32* %t6
    ; line 5454
    %t8 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 4
    %t9 = sub i32 0, 1
    store i32 %t9, i32* %t8
    ; line 5454
    %t10 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 5
    %t11 = sub i32 0, 1
    store i32 %t11, i32* %t10
    ; line 5454
    %t12 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 6
    %t13 = sub i32 0, 1
    store i32 %t13, i32* %t12
    ; line 5454
    %t14 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 7
    %t15 = sub i32 0, 1
    store i32 %t15, i32* %t14
    ; line 5455
    %t16 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 8
    store i32 0, i32* %t16
    ; line 5455
    %t17 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 9
    store i32 0, i32* %t17
    ; line 5455
    %t18 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 10
    store i32 0, i32* %t18
    ; line 5455
    %t19 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 11
    %t20 = sub i32 0, 1
    store i32 %t20, i32* %t19
    ; line 5456
    %t21 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 12
    %t22 = sub i32 0, 1
    store i32 %t22, i32* %t21
    ; line 5456
    %t23 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 13
    %t24 = sub i32 0, 1
    store i32 %t24, i32* %t23
    ; line 5456
    %t25 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 14
    %t26 = sub i32 0, 1
    store i32 %t26, i32* %t25
    ; line 5456
    %t27 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 15
    %t28 = sub i32 0, 1
    store i32 %t28, i32* %t27
    ; line 5457
    %t29 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 16
    %t30 = sub i32 0, 1
    store i32 %t30, i32* %t29
    ; line 5457
    %t31 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 17
    store i32 0, i32* %t31
    ; line 5457
    %t32 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 18
    store i32 0, i32* %t32
    ; line 5457
    %t33 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 19
    store i32 0, i32* %t33
    ; line 5458
    %t34 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 20
    store i32 0, i32* %t34
    ; line 5458
    %t35 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 21
    %t36 = sub i32 0, 1
    store i32 %t36, i32* %t35
    ; line 5458
    %t37 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 22
    %t38 = sub i32 0, 1
    store i32 %t38, i32* %t37
    ; line 5458
    %t39 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 23
    store i32 0, i32* %t39
    ; line 5459
    %t40 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 24
    store i32 0, i32* %t40
    ; line 5459
    %t41 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 25
    store i32 0, i32* %t41
    ; line 5459
    %t42 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 26
    %t43 = sub i32 0, 2
    store i32 %t43, i32* %t42
    ; line 5459
    %t44 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 27
    store i32 0, i32* %t44
    ; line 5460
    %t45 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 28
    %t46 = sub i32 0, 1
    store i32 %t46, i32* %t45
    ; line 5460
    %t47 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 29
    store i32 0, i32* %t47
    ; line 5460
    %t48 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 30
    store i32 0, i32* %t48
    ; line 5460
    %t49 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 31
    store i32 0, i32* %t49
    ; line 5461
    %t50 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 32
    store i32 0, i32* %t50
    ; line 5461
    %t51 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 33
    %t52 = sub i32 0, 1
    store i32 %t52, i32* %t51
    ; line 5461
    %t53 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 34
    store i32 0, i32* %t53
    ; line 5461
    %t54 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 35
    store i32 0, i32* %t54
    ; line 5462
    %t55 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 36
    %t56 = sub i32 0, 1
    store i32 %t56, i32* %t55
    ; line 5462
    %t57 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 37
    store i32 1, i32* %t57
    ; line 5462
    %t58 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 38
    store i32 1, i32* %t58
    ; line 5462
    %t59 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 39
    store i32 1, i32* %t59
    ; line 5463
    %t60 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 40
    %t61 = sub i32 0, 2
    store i32 %t61, i32* %t60
    ; line 5463
    %t62 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 41
    store i32 0, i32* %t62
    ; line 5463
    %t63 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 42
    store i32 0, i32* %t63
    ; line 5463
    %t64 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 43
    %t65 = sub i32 0, 1
    store i32 %t65, i32* %t64
    ; line 5464
    %t66 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 44
    %t67 = sub i32 0, 1
    store i32 %t67, i32* %t66
    ; line 5464
    %t68 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 45
    store i32 0, i32* %t68
    ; line 5464
    %t69 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 46
    store i32 0, i32* %t69
    ; line 5464
    %t70 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 47
    %t71 = sub i32 0, 1
    store i32 %t71, i32* %t70
    ; line 5465
    %t72 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 48
    %t73 = sub i32 0, 1
    store i32 %t73, i32* %t72
    ; line 5465
    %t74 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 49
    %t75 = sub i32 0, 1
    store i32 %t75, i32* %t74
    ; line 5465
    %t76 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 50
    store i32 1, i32* %t76
    ; line 5465
    %t77 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 51
    store i32 1, i32* %t77
    ; line 5466
    %t78 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 52
    %t79 = sub i32 0, 1
    store i32 %t79, i32* %t78
    ; line 5466
    %t80 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 53
    %t81 = sub i32 0, 1
    store i32 %t81, i32* %t80
    ; line 5466
    %t82 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 54
    store i32 1, i32* %t82
    ; line 5466
    %t83 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 55
    %t84 = sub i32 0, 1
    store i32 %t84, i32* %t83
    ; line 5467
    %t85 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 56
    %t86 = sub i32 0, 1
    store i32 %t86, i32* %t85
    ; line 5467
    %t87 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 57
    store i32 0, i32* %t87
    ; line 5467
    %t88 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 58
    store i32 0, i32* %t88
    ; line 5467
    %t89 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 59
    store i32 0, i32* %t89
    ; line 5468
    %t90 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 60
    store i32 0, i32* %t90
    ; line 5468
    %t91 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 61
    store i32 0, i32* %t91
    ; line 5468
    %t92 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 62
    %t93 = sub i32 0, 3
    store i32 %t93, i32* %t92
    ; line 5468
    %t94 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 63
    %t95 = sub i32 0, 3
    store i32 %t95, i32* %t94
    ; line 5469
    %t96 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 64
    %t97 = sub i32 0, 1
    store i32 %t97, i32* %t96
    ; line 5469
    %t98 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 65
    store i32 0, i32* %t98
    ; line 5469
    %t99 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 66
    store i32 0, i32* %t99
    ; line 5469
    %t100 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 67
    %t101 = sub i32 0, 1
    store i32 %t101, i32* %t100
    ; line 5470
    %t102 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 68
    store i32 2, i32* %t102
    ; line 5470
    %t103 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 69
    store i32 0, i32* %t103
    ; line 5470
    %t104 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 70
    %t105 = sub i32 0, 1
    store i32 %t105, i32* %t104
    ; line 5470
    %t106 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 71
    %t107 = sub i32 0, 1
    store i32 %t107, i32* %t106
    ; line 5471
    %t108 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 72
    store i32 0, i32* %t108
    ; line 5471
    %t109 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 73
    %t110 = sub i32 0, 1
    store i32 %t110, i32* %t109
    ; line 5471
    %t111 = getelementptr inbounds %T_array_5, %T_array_5* @cdx, i32 0, i32 74
    store i32 2, i32* %t111
    ; line 5473
    %t112 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 1
    %t113 = sub i32 0, 1
    store i32 %t113, i32* %t112
    ; line 5473
    %t114 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 2
    %t115 = sub i32 0, 1
    store i32 %t115, i32* %t114
    ; line 5473
    %t116 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 3
    %t117 = sub i32 0, 1
    store i32 %t117, i32* %t116
    ; line 5473
    %t118 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 4
    %t119 = sub i32 0, 1
    store i32 %t119, i32* %t118
    ; line 5474
    %t120 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 5
    %t121 = sub i32 0, 1
    store i32 %t121, i32* %t120
    ; line 5474
    %t122 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 6
    %t123 = sub i32 0, 2
    store i32 %t123, i32* %t122
    ; line 5474
    %t124 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 7
    %t125 = sub i32 0, 3
    store i32 %t125, i32* %t124
    ; line 5474
    %t126 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 8
    %t127 = sub i32 0, 2
    store i32 %t127, i32* %t126
    ; line 5475
    %t128 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 9
    %t129 = sub i32 0, 2
    store i32 %t129, i32* %t128
    ; line 5475
    %t130 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 10
    %t131 = sub i32 0, 3
    store i32 %t131, i32* %t130
    ; line 5475
    %t132 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 11
    store i32 0, i32* %t132
    ; line 5475
    %t133 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 12
    %t134 = sub i32 0, 2
    store i32 %t134, i32* %t133
    ; line 5476
    %t135 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 13
    %t136 = sub i32 0, 1
    store i32 %t136, i32* %t135
    ; line 5476
    %t137 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 14
    store i32 0, i32* %t137
    ; line 5476
    %t138 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 15
    store i32 0, i32* %t138
    ; line 5476
    %t139 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 16
    store i32 0, i32* %t139
    ; line 5477
    %t140 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 17
    store i32 0, i32* %t140
    ; line 5477
    %t141 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 18
    store i32 0, i32* %t141
    ; line 5477
    %t142 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 19
    store i32 0, i32* %t142
    ; line 5477
    %t143 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 20
    store i32 0, i32* %t143
    ; line 5478
    %t144 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 21
    store i32 0, i32* %t144
    ; line 5478
    %t145 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 22
    store i32 0, i32* %t145
    ; line 5478
    %t146 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 23
    %t147 = sub i32 0, 1
    store i32 %t147, i32* %t146
    ; line 5478
    %t148 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 24
    %t149 = sub i32 0, 1
    store i32 %t149, i32* %t148
    ; line 5479
    %t150 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 25
    %t151 = sub i32 0, 1
    store i32 %t151, i32* %t150
    ; line 5479
    %t152 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 26
    %t153 = sub i32 0, 1
    store i32 %t153, i32* %t152
    ; line 5479
    %t154 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 27
    %t155 = sub i32 0, 2
    store i32 %t155, i32* %t154
    ; line 5479
    %t156 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 28
    %t157 = sub i32 0, 3
    store i32 %t157, i32* %t156
    ; line 5480
    %t158 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 29
    %t159 = sub i32 0, 2
    store i32 %t159, i32* %t158
    ; line 5480
    %t160 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 30
    %t161 = sub i32 0, 2
    store i32 %t161, i32* %t160
    ; line 5480
    %t162 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 31
    %t163 = sub i32 0, 1
    store i32 %t163, i32* %t162
    ; line 5480
    %t164 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 32
    %t165 = sub i32 0, 1
    store i32 %t165, i32* %t164
    ; line 5481
    %t166 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 33
    %t167 = sub i32 0, 1
    store i32 %t167, i32* %t166
    ; line 5481
    %t168 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 34
    %t169 = sub i32 0, 1
    store i32 %t169, i32* %t168
    ; line 5481
    %t170 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 35
    %t171 = sub i32 0, 2
    store i32 %t171, i32* %t170
    ; line 5481
    %t172 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 36
    %t173 = sub i32 0, 1
    store i32 %t173, i32* %t172
    ; line 5482
    %t174 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 37
    %t175 = sub i32 0, 1
    store i32 %t175, i32* %t174
    ; line 5482
    %t176 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 38
    %t177 = sub i32 0, 2
    store i32 %t177, i32* %t176
    ; line 5482
    %t178 = getelementptr inbounds %T_array_23, %T_array_23* @pdx, i32 0, i32 39
    %t179 = sub i32 0, 2
    store i32 %t179, i32* %t178
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.25 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"   *** eof \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" ****  \00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c" abi\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c" abr\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c" adi\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c" adr\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c" atn\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c" chk\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c" chr\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c" cip\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c" cos\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c" csp\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c" cup\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c" dec\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c" dif\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c" dmp\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c" dsp\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c" dvi\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c" dvr\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c" efb\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c" eln\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c" ent\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c" eof\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c" equ\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c" exp\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c" fbv\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c" fjp\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c" flo\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c" flt\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c" fvb\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c" gbf\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c" geq\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c" get\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c" grt\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c" inc\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c" ind\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c" inn\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c" int\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c" ior\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c" ipj\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c" ixa\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c" l\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c" lao\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c" lca\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c" lda\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c" ldc\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c" ldo\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c" leq\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c" les\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c" lip\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" local\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c" lod\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c" log\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c" lpa\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c" mod\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c" mov\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c" mpi\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c" mpr\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c" mst\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c" neq\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c" ngi\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c" ngr\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c" odd\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c" ord\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c" pag\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c" pak\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" pbf\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c" pck\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c" put\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c" rbf\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c" rdc\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c" rdi\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c" rdr\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c" ret\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c" rgs\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c" rln\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c" rnd\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c" rsb\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c" rsf\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c" rst\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c" rwb\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c" rwf\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c" sav\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c" sbi\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c" sbr\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c" sgs\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c" sin\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c" sqi\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c" sqr\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c" sqt\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c" sro\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c" sto\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c" stp\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c" str\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c" swp\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c" tables \00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c" tjp\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c" trc\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c" ujc\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c" ujp\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c" uni\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c" upk\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c" wbb\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c" wbc\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c" wbf\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c" wbi\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c" wbr\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" wln\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c" wrb\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c" wrc\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c" wrf\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c" wri\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c" wro\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c" wrr\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c" wrs\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c" xjp\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"*** Error: Compiler internal error\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"*** Error: Compiler internal error: case recycle balance: \00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"*** Error: Compiler internal error: constant recycle balance: \00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"*** Error: Compiler internal error: file recycle balance: \00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"*** Error: Compiler internal error: identifier recycle balance: \00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"*** Error: Compiler internal error: label recycle balance: \00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"*** Error: Compiler internal error: string recycle balance: \00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"*** Error: Compiler internal error: structure recycle balance: \00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"---      \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Display:\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Errors in program: \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Labels: \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"P5 Pascal compiler vs. \00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Recycling tracking counts:\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"abs      \00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"and      \00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"arctan   \00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"array    \00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"begin    \00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"boolean  \00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"case     \00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"case entry tracking counts: \00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"char     \00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"chr      \00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"const    \00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"constants:                  \00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"cos      \00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"dispose  \00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"div      \00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"do       \00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"downto   \00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"else     \00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"encountered\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"end      \00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"eof      \00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"eoln     \00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"exp      \00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"false    \00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"file     \00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"file tracking counts:       \00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"for      \00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"forward  \00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"get      \00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"goto     \00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"i Pascal intermediate file Generated by P5 Pascal compiler vs. \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"identifiers:                \00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"if       \00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"in       \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"input    \00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"integer  \00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"label    \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"label counts:               \00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"ln       \00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"maxint   \00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"mod      \00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"new      \00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"nil      \00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"not      \00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"odd      \00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"of       \00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"or       \00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"ord      \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"output   \00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"pack     \00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"packed   \00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"page     \00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"prd      \00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"pred     \00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"program  \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"prr\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"prr      \00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"put      \00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"read     \00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"readln   \00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"real     \00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"record   \00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"repeat   \00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"reset    \00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"rewrite  \00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"round    \00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"set      \00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"sin      \00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"sqr      \00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"sqrt     \00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"string quants:              \00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"structures:                 \00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"succ     \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"text     \00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"then     \00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"to       \00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"true     \00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"trunc    \00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"type     \00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"unpack   \00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"until    \00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"var      \00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"while    \00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"with     \00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"write    \00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"writeln  \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!252}
!llvm.module.flags = !{!253, !254}
!llvm.ident = !{!251}

!0 = !DIFile(filename: "p5_pcom.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attr", file: !0, line: 458, size: 448, flags: DIFlagTypePassByValue, elements: !106)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "stp", file: !0, line: 401, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "structure", file: !0, line: 404, size: 832, flags: DIFlagTypePassByValue, elements: !96)
!16 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ctp", file: !0, line: 402, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "identifier", file: !0, line: 432, size: 2240, flags: DIFlagTypePassByValue, elements: !71)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "strvsp", file: !0, line: 371, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strvs", file: !0, line: 372, size: 192, flags: DIFlagTypePassByValue, elements: !26)
!21 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 373, baseType: !2, size: 80, elements: !23)
!22 = !DISubrange(count: 10)
!23 = !{!22}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !20, file: !0, line: 373, baseType: !21, size: 80, offset: 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !0, line: 374, baseType: !19, size: 64, offset: 128)
!26 = !{!24,!25}
!27 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valu", file: !0, line: 390, size: 192, flags: DIFlagTypePassByValue, elements: !47)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "csp", file: !0, line: 381, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constant", file: !0, line: 382, size: 448, flags: DIFlagTypePassByValue, elements: !43)
!31 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!32 = !DICompositeType(tag: DW_TAG_array_type, name: "setty", file: !0, line: 379, baseType: !35, size: 256, elements: !34)
!33 = !DISubrange(count: 256)
!34 = !{!33}
!35 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!36 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !0, line: 383, baseType: !29, size: 64, offset: 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cclass", scope: !30, file: !0, line: 384, baseType: !31, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rval", scope: !30, file: !0, line: 385, baseType: !19, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pval", scope: !30, file: !0, line: 386, baseType: !32, size: 256, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "slgth", scope: !30, file: !0, line: 387, baseType: !36, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sval", scope: !30, file: !0, line: 387, baseType: !19, size: 64, offset: 128)
!43 = !{!37,!38,!39,!40,!41,!42}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !28, file: !0, line: 390, baseType: !1, size: 8, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !28, file: !0, line: 391, baseType: !3, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "valp", scope: !28, file: !0, line: 392, baseType: !29, size: 64, offset: 64)
!47 = !{!44,!45,!46}
!48 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !18, file: !0, line: 433, baseType: !19, size: 64, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !18, file: !0, line: 433, baseType: !17, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !18, file: !0, line: 433, baseType: !17, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "idtype", scope: !18, file: !0, line: 434, baseType: !14, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !0, line: 434, baseType: !17, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "keep", scope: !18, file: !0, line: 434, baseType: !1, size: 8, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "klass", scope: !18, file: !0, line: 435, baseType: !27, size: 32, offset: 352)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !18, file: !0, line: 437, baseType: !28, size: 192, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "vkind", scope: !18, file: !0, line: 438, baseType: !8, size: 32, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "vlev", scope: !18, file: !0, line: 438, baseType: !48, size: 32, offset: 416)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !18, file: !0, line: 438, baseType: !10, size: 32, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fldaddr", scope: !18, file: !0, line: 439, baseType: !10, size: 32, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pfaddr", scope: !18, file: !0, line: 440, baseType: !10, size: 32, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pflist", scope: !18, file: !0, line: 440, baseType: !17, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pfdeckind", scope: !18, file: !0, line: 441, baseType: !16, size: 32, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !18, file: !0, line: 442, baseType: !49, size: 32, offset: 544)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pflev", scope: !18, file: !0, line: 443, baseType: !48, size: 32, offset: 544)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pfname", scope: !18, file: !0, line: 443, baseType: !3, size: 32, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pfkind", scope: !18, file: !0, line: 444, baseType: !8, size: 32, offset: 608)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "forwdecl", scope: !18, file: !0, line: 445, baseType: !1, size: 8, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "externl", scope: !18, file: !0, line: 445, baseType: !1, size: 8, offset: 648)
!71 = !{!50,!51,!52,!53,!54,!55,!56,!57,!58,!59,!60,!61,!62,!63,!64,!65,!66,!67,!68,!69,!70}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !0, line: 405, baseType: !14, size: 64, offset: 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !15, file: !0, line: 406, baseType: !1, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !0, line: 407, baseType: !10, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "packing", scope: !15, file: !0, line: 408, baseType: !1, size: 8, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "form", scope: !15, file: !0, line: 409, baseType: !12, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "scalkind", scope: !15, file: !0, line: 410, baseType: !16, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fconst", scope: !15, file: !0, line: 411, baseType: !17, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rangetype", scope: !15, file: !0, line: 412, baseType: !14, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !15, file: !0, line: 412, baseType: !28, size: 192, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !15, file: !0, line: 412, baseType: !28, size: 192, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "eltype", scope: !15, file: !0, line: 413, baseType: !14, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "elset", scope: !15, file: !0, line: 414, baseType: !14, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "matchpack", scope: !15, file: !0, line: 414, baseType: !1, size: 8, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aeltype", scope: !15, file: !0, line: 415, baseType: !14, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "inxtype", scope: !15, file: !0, line: 415, baseType: !14, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fstfld", scope: !15, file: !0, line: 416, baseType: !17, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "recvar", scope: !15, file: !0, line: 416, baseType: !14, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "recyc", scope: !15, file: !0, line: 416, baseType: !14, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "filtype", scope: !15, file: !0, line: 417, baseType: !14, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tagfieldp", scope: !15, file: !0, line: 418, baseType: !17, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "fstvar", scope: !15, file: !0, line: 418, baseType: !14, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nxtvar", scope: !15, file: !0, line: 419, baseType: !14, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "subvar", scope: !15, file: !0, line: 419, baseType: !14, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "varval", scope: !15, file: !0, line: 419, baseType: !28, size: 192, offset: 320)
!96 = !{!72,!73,!74,!75,!76,!77,!78,!79,!80,!81,!82,!83,!84,!85,!86,!87,!88,!89,!90,!91,!92,!93,!94,!95}
!97 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!98 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "typtr", scope: !13, file: !0, line: 458, baseType: !14, size: 64, offset: 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !13, file: !0, line: 459, baseType: !97, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cval", scope: !13, file: !0, line: 460, baseType: !28, size: 192, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !13, file: !0, line: 461, baseType: !98, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "vlevel", scope: !13, file: !0, line: 462, baseType: !48, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dplmt", scope: !13, file: !0, line: 462, baseType: !10, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "idplmt", scope: !13, file: !0, line: 463, baseType: !10, size: 32, offset: 128)
!106 = !{!99,!100,!101,!102,!103,!104,!105}
!107 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!108 = !DICompositeType(tag: DW_TAG_array_type, name: "setofsys", file: !0, line: 366, baseType: !111, size: 64, elements: !110)
!109 = !DISubrange(count: 49)
!110 = !{!109}
!111 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "caseinfo", file: !0, line: 489, size: 128, flags: DIFlagTypePassByValue, elements: !117)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "cip", file: !0, line: 488, baseType: !112, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !0, line: 489, baseType: !113, size: 64, offset: 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "csstart", scope: !112, file: !0, line: 490, baseType: !3, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "cslab", scope: !112, file: !0, line: 491, baseType: !3, size: 32, offset: 96)
!117 = !{!114,!115,!116}
!118 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 600, baseType: !119, size: 2400, elements: !121)
!119 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!120 = !DISubrange(count: 75)
!121 = !{!120}
!122 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 590, baseType: !123, size: 8192, elements: !125)
!123 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!124 = !DISubrange(count: 256)
!125 = !{!124}
!126 = !DICompositeType(tag: DW_TAG_array_type, name: "csstr", file: !0, line: 431, baseType: !2, size: 2000, elements: !128)
!127 = !DISubrange(count: 250)
!128 = !{!127}
!129 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 554, baseType: !130, size: 211904, elements: !154)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 555, size: 704, flags: DIFlagTypePassByValue, elements: !152)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "lbp", file: !0, line: 470, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labl", file: !0, line: 471, size: 320, flags: DIFlagTypePassByValue, elements: !142)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nextlab", scope: !132, file: !0, line: 472, baseType: !131, size: 64, offset: 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !132, file: !0, line: 473, baseType: !1, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "labval", scope: !132, file: !0, line: 474, baseType: !3, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "labname", scope: !132, file: !0, line: 475, baseType: !3, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "vlevel", scope: !132, file: !0, line: 476, baseType: !48, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "slevel", scope: !132, file: !0, line: 477, baseType: !3, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ipcref", scope: !132, file: !0, line: 478, baseType: !1, size: 8, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "minlvl", scope: !132, file: !0, line: 479, baseType: !3, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bact", scope: !132, file: !0, line: 480, baseType: !1, size: 8, offset: 288)
!142 = !{!133,!134,!135,!136,!137,!138,!139,!140,!141}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !130, file: !0, line: 556, baseType: !17, size: 64, offset: 0)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flabel", scope: !130, file: !0, line: 556, baseType: !131, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fconst", scope: !130, file: !0, line: 557, baseType: !29, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fstruct", scope: !130, file: !0, line: 557, baseType: !14, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "occur", scope: !130, file: !0, line: 558, baseType: !107, size: 32, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "clev", scope: !130, file: !0, line: 559, baseType: !48, size: 32, offset: 288)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cdspl", scope: !130, file: !0, line: 560, baseType: !10, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "vdspl", scope: !130, file: !0, line: 561, baseType: !10, size: 32, offset: 288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bname", scope: !130, file: !0, line: 562, baseType: !17, size: 64, offset: 320)
!152 = !{!143,!144,!145,!146,!147,!148,!149,!150,!151}
!153 = !DISubrange(count: 301)
!154 = !{!153}
!155 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!156 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!157 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 572, baseType: !158, size: 640, elements: !164)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 573, size: 64, flags: DIFlagTypePassByValue, elements: !162)
!159 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !158, file: !0, line: 573, baseType: !3, size: 32, offset: 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nmr", scope: !158, file: !0, line: 574, baseType: !159, size: 32, offset: 32)
!162 = !{!160,!161}
!163 = !DISubrange(count: 10)
!164 = !{!163}
!165 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 607, baseType: !1, size: 4000, elements: !167)
!166 = !DISubrange(count: 500)
!167 = !{!166}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "extfilep", file: !0, line: 484, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filerec", file: !0, line: 485, size: 2112, flags: DIFlagTypePassByValue, elements: !175)
!170 = !DICompositeType(tag: DW_TAG_array_type, name: "idstr", file: !0, line: 428, baseType: !2, size: 2000, elements: !172)
!171 = !DISubrange(count: 250)
!172 = !{!171}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !169, file: !0, line: 485, baseType: !170, size: 2000, offset: 0)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nextfile", scope: !169, file: !0, line: 485, baseType: !168, size: 64, offset: 2048)
!175 = !{!173,!174}
!176 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 592, baseType: !177, size: 320, elements: !179)
!177 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!178 = !DISubrange(count: 10)
!179 = !{!178}
!180 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!181 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!182 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 598, baseType: !183, size: 2400, elements: !187)
!183 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 598, baseType: !2, size: 32, elements: !185)
!184 = !DISubrange(count: 4)
!185 = !{!184}
!186 = !DISubrange(count: 75)
!187 = !{!186}
!188 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 597, baseType: !189, size: 2808, elements: !193)
!189 = !DICompositeType(tag: DW_TAG_array_type, name: "restr", file: !0, line: 429, baseType: !2, size: 72, elements: !191)
!190 = !DISubrange(count: 9)
!191 = !{!190}
!192 = !DISubrange(count: 39)
!193 = !{!192}
!194 = !DICompositeType(tag: DW_TAG_array_type, name: "nmstr", file: !0, line: 430, baseType: !2, size: 2000, elements: !196)
!195 = !DISubrange(count: 250)
!196 = !{!195}
!197 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 602, baseType: !3, size: 8192, elements: !199)
!198 = !DISubrange(count: 256)
!199 = !{!198}
!200 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 601, baseType: !201, size: 1248, elements: !203)
!201 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!202 = !DISubrange(count: 39)
!203 = !{!202}
!204 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 595, baseType: !11, size: 1120, elements: !206)
!205 = !DISubrange(count: 35)
!206 = !{!205}
!207 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 593, baseType: !9, size: 1120, elements: !209)
!208 = !DISubrange(count: 35)
!209 = !{!208}
!210 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 591, baseType: !189, size: 2520, elements: !212)
!211 = !DISubrange(count: 35)
!212 = !{!211}
!213 = !DICompositeType(tag: DW_TAG_array_type, name: "setofids", file: !0, line: 426, baseType: !216, size: 32, elements: !215)
!214 = !DISubrange(count: 6)
!215 = !{!214}
!216 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!217 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 599, baseType: !218, size: 1248, elements: !222)
!218 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 599, baseType: !2, size: 32, elements: !220)
!219 = !DISubrange(count: 4)
!220 = !{!219}
!221 = !DISubrange(count: 39)
!222 = !{!221}
!223 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 596, baseType: !11, size: 8192, elements: !225)
!224 = !DISubrange(count: 256)
!225 = !{!224}
!226 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 594, baseType: !9, size: 8192, elements: !228)
!227 = !DISubrange(count: 256)
!228 = !{!227}
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1695, size: 64, flags: DIFlagTypePassByValue, elements: !232)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !229, file: !0, line: 1695, baseType: !14, size: 64, offset: 0)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !229, file: !0, line: 1695, baseType: !3, size: 32, offset: 0)
!232 = !{!230,!231}
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1699, size: 64, flags: DIFlagTypePassByValue, elements: !236)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !233, file: !0, line: 1699, baseType: !17, size: 64, offset: 0)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !233, file: !0, line: 1699, baseType: !3, size: 32, offset: 0)
!236 = !{!234,!235}
!237 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!238 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!239 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!240 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!241 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 2915, baseType: !29, size: 256000, elements: !243)
!242 = !DISubrange(count: 4000)
!243 = !{!242}
!244 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!245 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!246 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!247 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!248 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14,!15,!16,!17,!18,!19,!20,!21,!27,!28,!29,!30,!31,!32,!36,!48,!49,!97,!98,!107,!108,!112,!113,!118,!119,!122,!123,!126,!129,!130,!131,!132,!155,!156,!157,!158,!159,!165,!168,!169,!170,!176,!177,!180,!181,!182,!183,!188,!189,!194,!197,!200,!201,!204,!207,!210,!213,!217,!218,!223,!226,!229,!233,!237,!238,!239,!240,!241,!244,!245,!246,!247}
!249 = !{}
!250 = !{}
!251 = !{!"LPC 1.1"}
!252 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !248, globals: !250, nameTableKind: None)
!253 = !{i32 2, !"CodeView", i32 1}
!254 = !{i32 2, !"Debug Info Version", i32 3}

