; ModuleID = 'pcom.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pcom.pas"
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
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null },
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

; line 93
;================================================================================
; scope: program scope (level : 1)

; types
%T_alpha = type [8 x i8]
%T_array_2 = type [100 x i8]
%T_setty = type [2 x i32]
%T_array_4 = type [100 x i8]
%T_constant = type [112 x i8]
%T_valu = type [17 x i8]
%T_identifier = type [214 x i8]
%T_structure = type [84 x i8]
%T_attr = type [52 x i8]
%T_setofsys = type [2 x i32]
%T_array_6 = type [61 x i32]
%T_array_8 = type [256 x i32]
%T_labl = type [20 x i8]
%T_record_10 = type [48 x i8]
%T_array_9 = type [21 x %T_record_10]
%T_record_13 = type [8 x i8]
%T_array_12 = type [10 x %T_record_13]
%T_filerec = type [16 x i8]
%T_array_15 = type [9 x i32]
%T_testpointer = type [24 x i8]
%T_array_19 = type [4 x i8]
%T_array_18 = type [61 x %T_array_19]
%T_array_20 = type [35 x %T_alpha]
%T_array_21 = type [256 x i32]
%T_array_22 = type [23 x i32]
%T_array_24 = type [35 x i32]
%T_array_25 = type [35 x i32]
%T_array_26 = type [35 x %T_alpha]
%T_setofids = type [1 x i32]
%T_array_28 = type [4 x i8]
%T_array_27 = type [23 x %T_array_28]
%T_array_29 = type [256 x i32]
%T_array_30 = type [256 x i32]

; program variables
@_input = dso_local global %T_text zeroinitializer
@blockbegsys = dso_local global %T_setofsys zeroinitializer
@boolptr = dso_local global i8* zeroinitializer
@cdx = dso_local global %T_array_6 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@charptr = dso_local global i8* zeroinitializer
@chartp = dso_local global %T_array_8 zeroinitializer
@chcnt = dso_local global i32 zeroinitializer
@constbegsys = dso_local global %T_setofsys zeroinitializer
@debug = dso_local global i1 zeroinitializer
@digmax = dso_local global i32 zeroinitializer
@display = dso_local global %T_array_9 zeroinitializer
@disx = dso_local global i32 zeroinitializer
@dp = dso_local global i1 zeroinitializer
@eol = dso_local global i1 zeroinitializer
@errinx = dso_local global i32 zeroinitializer
@errlist = dso_local global %T_array_12 zeroinitializer
@facbegsys = dso_local global %T_setofsys zeroinitializer
@fextfilep = dso_local global i8* zeroinitializer
@frw = dso_local global %T_array_15 zeroinitializer
@fwptr = dso_local global i8* zeroinitializer
@gattr = dso_local global %T_attr zeroinitializer
@globtestp = dso_local global i8* zeroinitializer
@ic = dso_local global i32 zeroinitializer
@id = dso_local global %T_alpha zeroinitializer
@intlabel = dso_local global i32 zeroinitializer
@intptr = dso_local global i8* zeroinitializer
@kk = dso_local global i32 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@level = dso_local global i32 zeroinitializer
@lgth = dso_local global i32 zeroinitializer
@linecount = dso_local global i32 zeroinitializer
@list = dso_local global i1 zeroinitializer
@mn = dso_local global %T_array_18 zeroinitializer
@mxint10 = dso_local global i32 zeroinitializer
@na = dso_local global %T_array_20 zeroinitializer
@nilptr = dso_local global i8* zeroinitializer
@op = dso_local global i32 zeroinitializer
@ordint = dso_local global %T_array_21 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@parmptr = dso_local global i8* zeroinitializer
@pdx = dso_local global %T_array_22 zeroinitializer
@prcode = dso_local global i1 zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@prtables = dso_local global i1 zeroinitializer
@prterr = dso_local global i1 zeroinitializer
@realptr = dso_local global i8* zeroinitializer
@rop = dso_local global %T_array_24 zeroinitializer
@rsy = dso_local global %T_array_25 zeroinitializer
@rw = dso_local global %T_array_26 zeroinitializer
@selectsys = dso_local global %T_setofsys zeroinitializer
@simptypebegsys = dso_local global %T_setofsys zeroinitializer
@sna = dso_local global %T_array_27 zeroinitializer
@sop = dso_local global %T_array_29 zeroinitializer
@source = dso_local global %T_text zeroinitializer
@ssy = dso_local global %T_array_30 zeroinitializer
@statbegsys = dso_local global %T_setofsys zeroinitializer
@sy = dso_local global i32 zeroinitializer
@textptr = dso_local global i8* zeroinitializer
@top = dso_local global i32 zeroinitializer
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
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 3)
    store i8* %t3, i8** @prr
    %t4 = call i8* @_OpenFile(i32 2)
    store i8* %t4, i8** @source

    ; body
    ; line 4067
    ; line 4070
    call void @P_initscalars()
    ; line 4070
    call void @P_initsets()
    ; line 4070
    call void @P_inittables()
    ; line 4075
    store i32 0, i32* @level
    ; line 4075
    store i32 0, i32* @top
    ; line 4077
    %t5 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 0
    %t7 = getelementptr inbounds %T_record_10, %T_record_10* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    store i8* null, i8** %t6
    ; line 4077
    %t8 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 0
    %t10 = getelementptr inbounds %T_record_10, %T_record_10* %t8, i32 0, i32 8
    %t9 = bitcast i8* %t10 to i8**
    store i8* null, i8** %t9
    ; line 4077
    %t11 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 0
    %t13 = getelementptr inbounds %T_record_10, %T_record_10* %t11, i32 0, i32 16
    %t12 = bitcast i8* %t13 to i32*
    store i32 0, i32* %t12
    ; line 4078
    call void @P_enterstdtypes()
    ; line 4078
    call void @P_stdnames()
    ; line 4078
    call void @P_entstdnames()
    ; line 4078
    call void @P_enterundecl()
    ; line 4079
    store i32 1, i32* @top
    ; line 4079
    store i32 1, i32* @level
    ; line 4081
    %t14 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 1
    %t16 = getelementptr inbounds %T_record_10, %T_record_10* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8**
    store i8* null, i8** %t15
    ; line 4081
    %t17 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 1
    %t19 = getelementptr inbounds %T_record_10, %T_record_10* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i8**
    store i8* null, i8** %t18
    ; line 4081
    %t20 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 1
    %t22 = getelementptr inbounds %T_record_10, %T_record_10* %t20, i32 0, i32 16
    %t21 = bitcast i8* %t22 to i32*
    store i32 0, i32* %t21
    ; line 4084
    ; line 4086
    call void @P_insymbol()
    ; line 4087
    call void @P_programme(%T_setofsys %.dummy_set)
    ; nop

    ; cleanup
    %t24 = load %T_text, %T_text* @source
    call void @_CloseFile(i8* %t24)
    %t25 = load %T_text, %T_text* @prr
    call void @_CloseFile(i8* %t25)
    %t26 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t26)
    %t27 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t27)

    ; epilogue
    ret void
}


; line 366
;================================================================================
; scope: mark (level : 2)

; activation record
%Frame_mark = type
{
    ; parameters
    i8**,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_mark(i8** %p)
{
    ; allocate frame
    %.frame = alloca %Frame_mark, align 8
    %t1 = getelementptr inbounds %Frame_mark, %Frame_mark* %.frame, i32 0, i32 0
    store i8** %p, i8*** %t1

    ; body
    ; line 366
    %t2 = getelementptr inbounds %Frame_mark, %Frame_mark* %.frame, i32 0, i32 0
    %t3 = load i8**, i8*** %t2
    %t5 = getelementptr inbounds %Frame_mark, %Frame_mark* %.frame, i32 0, i32 0
    %t6 = load i8**, i8*** %t5
    %t4 = load i8*, i8** %t6
    store i8* %t4, i8** %t3

    ; epilogue
    ret void
}


; line 367
;================================================================================
; scope: release (level : 2)

; activation record
%Frame_release = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_release(i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_release, align 8
    %t1 = getelementptr inbounds %Frame_release, %Frame_release* %.frame, i32 0, i32 0
    store i8* %p, i8** %t1

    ; body
    ; line 367
    %t2 = getelementptr inbounds %Frame_release, %Frame_release* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %Frame_release, %Frame_release* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    store i8* %t3, i8** %t2

    ; epilogue
    ret void
}


; line 369
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
    ; line 372
    %t2 = load i32, i32* @errinx
    %t1 = icmp sgt i32 %t2, 0
    br i1 %t1, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 373
    %t3 = load %T_text, %T_text* @output
    %t4 = load i32, i32* @linecount
    call void @_WriteInteger(i8* %t3, i32 6, i32 0, i32 %t4)
    call void @_WriteString(i8* %t3, i32 9, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 7)
    ; line 374
    %t5 = getelementptr inbounds %Frame_endofline, %Frame_endofline* %.frame, i32 0, i32 5
    store i32 0, i32* %t5
    ; line 374
    %t6 = getelementptr inbounds %Frame_endofline, %Frame_endofline* %.frame, i32 0, i32 3
    store i32 1, i32* %t6
    ; line 375
    ; line 393
    %t7 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t7)
    ; line 393
    store i32 0, i32* @errinx
    br label %L_endif_1
L_endif_1:
    ; line 395
    %t9 = load i32, i32* @linecount
    %t8 = add i32 %t9, 1
    store i32 %t8, i32* @linecount
    ; line 396
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
    ; line 397
    %t13 = load %T_text, %T_text* @output
    %t14 = load i32, i32* @linecount
    call void @_WriteInteger(i8* %t13, i32 6, i32 0, i32 %t14)
    call void @_WriteString(i8* %t13, i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 2)
    ; line 398
    %t15 = load i1, i1* @dp
    br i1 %t15, label %L_then_4, label %L_else_4
L_then_4:
    ; line 398
    %t16 = load %T_text, %T_text* @output
    %t17 = load i32, i32* @lc
    call void @_WriteInteger(i8* %t16, i32 7, i32 0, i32 %t17)
    br label %L_endif_4
L_else_4:
    ; line 398
    %t18 = load %T_text, %T_text* @output
    %t19 = load i32, i32* @ic
    call void @_WriteInteger(i8* %t18, i32 7, i32 0, i32 %t19)
    br label %L_endif_4
L_endif_4:
    ; line 399
    %t20 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t20, i32 0, i32 0, i8 32)
    br label %L_endif_3
L_endif_3:
    ; line 401
    store i32 0, i32* @chcnt

    ; epilogue
    ret void
}


; line 404
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
    ; line 406
    %t3 = load i32, i32* @errinx
    %t2 = icmp sge i32 %t3, 9
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 407
    %t4 = getelementptr inbounds %T_array_12, %T_array_12* @errlist, i32 0, i32 10
    %t6 = getelementptr inbounds %T_record_13, %T_record_13* %t4, i32 0, i32 4
    %t5 = bitcast i8* %t6 to i32*
    store i32 255, i32* %t5
    ; line 407
    store i32 10, i32* @errinx
    br label %L_endif_1
L_else_1:
    ; line 409
    %t8 = load i32, i32* @errinx
    %t7 = add i32 %t8, 1
    store i32 %t7, i32* @errinx
    ; line 410
    %t9 = load i32, i32* @errinx
    %t10 = getelementptr inbounds %T_array_12, %T_array_12* @errlist, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_record_13, %T_record_13* %t10, i32 0, i32 4
    %t11 = bitcast i8* %t12 to i32*
    %t14 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    %t13 = load i32, i32* %t14
    store i32 %t13, i32* %t11
    br label %L_endif_1
L_endif_1:
    ; line 412
    %t15 = load i32, i32* @errinx
    %t16 = getelementptr inbounds %T_array_12, %T_array_12* @errlist, i32 0, i32 %t15
    %t18 = getelementptr inbounds %T_record_13, %T_record_13* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* @chcnt
    store i32 %t19, i32* %t17

    ; epilogue
    ret void
}


; line 415
;================================================================================
; scope: insymbol (level : 2)

; types
%T_insymbol_array_31 = type [100 x i8]
%T_insymbol_array_32 = type [100 x i8]

; activation record
%Frame_insymbol = type
{
    ; variables
    %T_insymbol_array_31,    ; 0: digit
    i32,    ; 1: i
    i32,    ; 2: k
    i8*,    ; 3: lvp
    %T_insymbol_array_32,    ; 4: string
    i1,    ; 5: test

    ; dummy
    i8*
};

; procedure body
define void @P_insymbol()
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol, align 8

    ; body
    ; line 464
    br label %L_1
L_1:
    ; line 468
    %t2 = load i8, i8* @ch
    %t3 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 %t2
    %t4 = load i32, i32* %t3
    %t1 = icmp eq i32 %t4, 3
    br i1 %t1, label %L_then_1, label %L_else_1
L_then_1:
    ; line 469
    store i32 47, i32* @sy
    ; line 469
    store i32 15, i32* @op
    ; line 470
    call void @P_error(i32 399)
    ; line 470
    call void @P_insymbol_nextch(%Frame_insymbol* %.frame)
    br label %L_endif_1
L_else_1:
    ; line 473
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 424
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
    ; line 425
    %t2 = load i1, i1* @eol
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 426
    %t3 = load i1, i1* @list
    br i1 %t3, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 426
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    br label %L_endif_2
L_endif_2:
    ; line 426
    call void @P_endofline()
    br label %L_endif_1
L_endif_1:
    ; line 428
    %t5 = icmp eq i1 0, %.dummy.intrin
    br i1 %t5, label %L_then_3, label %L_else_3
L_then_3:
    ; line 429
    store i1 %.dummy.intrin, i1* @eol
    ; line 429
    ; line 430
    %t6 = load i1, i1* @list
    br i1 %t6, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 430
    %t7 = load %T_text, %T_text* @output
    %t8 = load i8, i8* @ch
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 %t8)
    br label %L_endif_4
L_endif_4:
    ; line 431
    %t10 = load i32, i32* @chcnt
    %t9 = add i32 %t10, 1
    store i32 %t9, i32* @chcnt
    br label %L_endif_3
L_else_3:
    ; line 434
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 11)
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t11)
    ; line 435
    %t13 = getelementptr inbounds %Frame_insymbol_nextch, %Frame_insymbol_nextch* %.frame, i32 0, i32 0
    %t14 = load %Frame_insymbol*, %Frame_insymbol** %t13
    %t12 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t14, i32 0, i32 5
    store i1 0, i1* %t12
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 439
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
    ; line 441

    ; epilogue
    ret void
}


; line 617
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
    %T_alpha,    ; 4: nam

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
    ; line 622
    %t2 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 4
    %t4 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    %t5 = bitcast i8* %t3 to %T_identifier*
    %t7 = getelementptr inbounds %T_identifier, %T_identifier* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to %T_alpha*
    %t8 = load %T_alpha, %T_alpha* %t6
    store %T_alpha %t8, %T_alpha* %t2
    ; line 623
    %t9 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 1
    %t10 = load i32, i32* @top
    %t11 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t10
    %t13 = getelementptr inbounds %T_record_10, %T_record_10* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    store i8* %t14, i8** %t9
    ; line 624
    %t17 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 1
    %t16 = load i8*, i8** %t17
    %t15 = icmp eq i32 %t16, null
    br i1 %t15, label %L_then_1, label %L_else_1
L_then_1:
    ; line 625
    %t18 = load i32, i32* @top
    %t19 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t18
    %t21 = getelementptr inbounds %T_record_10, %T_record_10* %t19, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t23 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t22 = load i8*, i8** %t23
    store i8* %t22, i8** %t20
    br label %L_endif_1
L_else_1:
    ; line 628
    ; line 636
    %t25 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 3
    %t24 = load i1, i1* %t25
    br i1 %t24, label %L_then_2, label %L_else_2
L_then_2:
    ; line 636
    %t27 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 2
    %t26 = load i8*, i8** %t27
    %t28 = bitcast i8* %t26 to %T_identifier*
    %t30 = getelementptr inbounds %T_identifier, %T_identifier* %t28, i32 0, i32 8
    %t29 = bitcast i8* %t30 to i8**
    %t32 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t31 = load i8*, i8** %t32
    store i8* %t31, i8** %t29
    br label %L_endif_2
L_else_2:
    ; line 636
    %t34 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 2
    %t33 = load i8*, i8** %t34
    %t35 = bitcast i8* %t33 to %T_identifier*
    %t37 = getelementptr inbounds %T_identifier, %T_identifier* %t35, i32 0, i32 16
    %t36 = bitcast i8* %t37 to i8**
    %t39 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t38 = load i8*, i8** %t39
    store i8* %t38, i8** %t36
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 638
    %t41 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t40 = load i8*, i8** %t41
    %t42 = bitcast i8* %t40 to %T_identifier*
    %t44 = getelementptr inbounds %T_identifier, %T_identifier* %t42, i32 0, i32 8
    %t43 = bitcast i8* %t44 to i8**
    store i8* null, i8** %t43
    ; line 638
    %t46 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t45 = load i8*, i8** %t46
    %t47 = bitcast i8* %t45 to %T_identifier*
    %t49 = getelementptr inbounds %T_identifier, %T_identifier* %t47, i32 0, i32 16
    %t48 = bitcast i8* %t49 to i8**
    store i8* null, i8** %t48

    ; epilogue
    ret void
}


; line 641
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
    ; line 647
    ; line 651
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


; line 659
;================================================================================
; scope: searchid (level : 2)

; activation record
%Frame_searchid = type
{
    ; parameters
    i8**,    ; 0: fcp
    %T_setofids,    ; 1: fidcls

    ; variables
    i32,    ; 2: disxl
    i8*,    ; 3: lcp

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
    ; line 664
    ; line 678
    store i32 0, i32* @disx
    ; line 682
    %t3 = load i1, i1* @prterr
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 683
    call void @P_error(i32 104)
    ; line 687
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 687
    %t5 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t6 = load i8*, i8** @utypptr
    store i8* %t6, i8** %t5
    br label %L_endif_2
L_else_2:
    ; line 689
    br i1 true, label %L_then_3, label %L_else_3
L_then_3:
    ; line 689
    %t8 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t9 = load i8*, i8** @uvarptr
    store i8* %t9, i8** %t8
    br label %L_endif_3
L_else_3:
    ; line 691
    br i1 true, label %L_then_4, label %L_else_4
L_then_4:
    ; line 691
    %t11 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t12 = load i8*, i8** @ufldptr
    store i8* %t12, i8** %t11
    br label %L_endif_4
L_else_4:
    ; line 693
    br i1 true, label %L_then_5, label %L_else_5
L_then_5:
    ; line 693
    %t14 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t15 = load i8*, i8** @ucstptr
    store i8* %t15, i8** %t14
    br label %L_endif_5
L_else_5:
    ; line 695
    br i1 true, label %L_then_6, label %L_else_6
L_then_6:
    ; line 695
    %t17 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t18 = load i8*, i8** @uprcptr
    store i8* %t18, i8** %t17
    br label %L_endif_6
L_else_6:
    ; line 696
    %t19 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t20 = load i8*, i8** @ufctptr
    store i8* %t20, i8** %t19
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
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 698
    br label %L_1
L_1:
    %t21 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 0
    %t22 = load i8**, i8*** %t21
    %t24 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t23 = load i8*, i8** %t24
    store i8* %t23, i8** %t22

    ; epilogue
    ret void
}


; line 701
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
    ; line 705
    %t4 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t5 = load i32*, i32** %t4
    store i32 0, i32* %t5
    ; line 705
    %t6 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t7 = load i32*, i32** %t6
    store i32 0, i32* %t7
    ; line 706
    %t10 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t9 = load i8*, i8** %t10
    %t8 = icmp ne i32 %t9, null
    br i1 %t8, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 708
    %t13 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 8
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t11 = icmp eq i32 %t17, 1
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 709
    %t18 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t19 = load i32*, i32** %t18
    %t21 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t20 = load i8*, i8** %t21
    %t22 = bitcast i8* %t20 to %T_structure*
    %t24 = getelementptr inbounds %T_structure, %T_structure* %t22, i32 0, i32 24
    %t23 = bitcast i8* %t24 to %T_valu*
    %t26 = getelementptr inbounds %T_valu, %T_valu* %t23, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    store i32 %t27, i32* %t19
    ; line 709
    %t28 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t29 = load i32*, i32** %t28
    %t31 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t30 = load i8*, i8** %t31
    %t32 = bitcast i8* %t30 to %T_structure*
    %t34 = getelementptr inbounds %T_structure, %T_structure* %t32, i32 0, i32 48
    %t33 = bitcast i8* %t34 to %T_valu*
    %t36 = getelementptr inbounds %T_valu, %T_valu* %t33, i32 0, i32 4
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* %t35
    store i32 %t37, i32* %t29
    br label %L_endif_2
L_else_2:
    ; line 711
    %t40 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t39 = load i8*, i8** %t40
    %t41 = load i8*, i8** @charptr
    %t38 = icmp eq i32 %t39, %t41
    br i1 %t38, label %L_then_3, label %L_else_3
L_then_3:
    ; line 712
    %t42 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t43 = load i32*, i32** %t42
    store i32 0, i32* %t43
    ; line 712
    %t44 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t45 = load i32*, i32** %t44
    store i32 255, i32* %t45
    br label %L_endif_3
L_else_3:
    ; line 715
    %t48 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t47 = load i8*, i8** %t48
    %t49 = bitcast i8* %t47 to %T_structure*
    %t51 = getelementptr inbounds %T_structure, %T_structure* %t49, i32 0, i32 16
    %t50 = bitcast i8* %t51 to i8**
    %t52 = load i8*, i8** %t50
    %t46 = icmp ne i32 %t52, null
    br i1 %t46, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 716
    %t53 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t54 = load i32*, i32** %t53
    %t56 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 2
    %t55 = load i8*, i8** %t56
    %t57 = bitcast i8* %t55 to %T_structure*
    %t59 = getelementptr inbounds %T_structure, %T_structure* %t57, i32 0, i32 16
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


; line 719
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
    ; line 721
    %t2 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    ; line 722
    %t5 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 724
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t6 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t6
    ret i32 %t7
}


; line 741
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
    ; line 744
    %t3 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 1
    %t4 = load i8*, i8** %t5
    %t6 = call i32 @F_alignquot(i8* %t4)
    store i32 %t6, i32* %t3
    ; line 745
    %t7 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 0
    %t11 = load i32*, i32** %t10
    %t9 = load i32, i32* %t11
    %t8 = sub i32 %t9, 1
    store i32 %t8, i32* %t7
    ; line 746
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


; line 749
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
    ; line 923
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 923
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 923
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 924
    %t6 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 0
    %t5 = load i1, i1* %t6
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 924
    %t7 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 2
    store i32 0, i32* %t7
    br label %L_endif_1
L_else_1:
    ; line 925
    %t8 = getelementptr inbounds %Frame_printtables, %Frame_printtables* %.frame, i32 0, i32 2
    %t9 = load i32, i32* @top
    store i32 %t9, i32* %t8
    ; line 925
    %t10 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t10, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 6)
    br label %L_endif_1
L_endif_1:
    ; line 926
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t11)
    ; line 926
    %t12 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t12)
    ; line 927
    call void @P_printtables_marker(%Frame_printtables* %.frame)
    ; line 928
    ; line 930
    %t13 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t13)
    ; line 931
    %t14 = load i1, i1* @eol
    %t15 = icmp eq i1 0, %t14
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 931
    %t16 = load %T_text, %T_text* @output
    %t18 = load i32, i32* @chcnt
    %t17 = add i32 %t18, 16
    call void @_WriteChar(i8* %t16, i32 %t17, i32 0, i8 32)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 759
;================================================================================
; scope: printtables_stptoint (level : 3)

; types
%T_printtables_stptoint_record_33 = type [8 x i8]

; activation record
%Frame_printtables_stptoint = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i32,    ; 1: _fnvalue
    %T_printtables_stptoint_record_33,    ; 2: r

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
    ; line 761
    %t3 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %T_printtables_stptoint_record_33, %T_printtables_stptoint_record_33* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    store i8* %t6, i8** %t4
    ; line 761
    %t8 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %T_printtables_stptoint_record_33, %T_printtables_stptoint_record_33* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    store i32 %t12, i32* %t8

    ; epilogue
    %t13 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 1
    %t14 = load i32, i32* %t13
    ret i32 %t14
}


; line 763
;================================================================================
; scope: printtables_ctptoint (level : 3)

; types
%T_printtables_ctptoint_record_34 = type [8 x i8]

; activation record
%Frame_printtables_ctptoint = type
{
    ; parameters
    i8*,    ; 0: p

    ; variables
    i32,    ; 1: _fnvalue
    %T_printtables_ctptoint_record_34,    ; 2: r

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
    ; line 765
    %t3 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %T_printtables_ctptoint_record_34, %T_printtables_ctptoint_record_34* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    store i8* %t6, i8** %t4
    ; line 765
    %t8 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %T_printtables_ctptoint_record_34, %T_printtables_ctptoint_record_34* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    store i32 %t12, i32* %t8

    ; epilogue
    %t13 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 1
    %t14 = load i32, i32* %t13
    ret i32 %t14
}


; line 767
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
    ; line 804

    ; epilogue
    ret void
}


; line 773
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
    ; line 776
    %t5 = getelementptr inbounds %Frame_printtables_marker_markstp, %Frame_printtables_marker_markstp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 778
    %t7 = getelementptr inbounds %Frame_printtables_marker_markstp, %Frame_printtables_marker_markstp* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_structure*
    %t10 = getelementptr inbounds %T_structure, %T_structure* %t8, i32 0, i32 0
    %t9 = bitcast i8* %t10 to i1*
    store i1 1, i1* %t9
    ; line 779
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 794
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
    ; line 796
    %t5 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 798
    %t6 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 1
    %t7 = load %Frame_printtables_marker*, %Frame_printtables_marker** %t6
    %t9 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t8 = load i8*, i8** %t9
    %t10 = bitcast i8* %t8 to %T_identifier*
    %t12 = getelementptr inbounds %T_identifier, %T_identifier* %t10, i32 0, i32 8
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    call void @P_printtables_marker_markctp(%Frame_printtables_marker* %t7, i8* %t13)
    ; line 798
    %t14 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 1
    %t15 = load %Frame_printtables_marker*, %Frame_printtables_marker** %t14
    %t17 = getelementptr inbounds %Frame_printtables_marker_markctp, %Frame_printtables_marker_markctp* %.frame, i32 0, i32 0
    %t16 = load i8*, i8** %t17
    %t18 = bitcast i8* %t16 to %T_identifier*
    %t20 = getelementptr inbounds %T_identifier, %T_identifier* %t18, i32 0, i32 16
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    call void @P_printtables_marker_markctp(%Frame_printtables_marker* %t15, i8* %t21)
    ; line 799
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


; line 810
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
    ; line 812
    %t5 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 814
    %t7 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_structure*
    %t10 = getelementptr inbounds %T_structure, %T_structure* %t8, i32 0, i32 0
    %t9 = bitcast i8* %t10 to i1*
    %t11 = load i1, i1* %t9
    br i1 %t11, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 815
    %t13 = getelementptr inbounds %Frame_printtables_followstp, %Frame_printtables_followstp* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i1*
    store i1 0, i1* %t15
    ; line 815
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
    %t27 = getelementptr inbounds %T_structure, %T_structure* %t25, i32 0, i32 4
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* %t26
    call void @_WriteInteger(i8* %t17, i32 10, i32 0, i32 %t28)
    ; line 816
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 862
;================================================================================
; scope: printtables_followctp (level : 3)

; activation record
%Frame_printtables_followctp = type
{
    ; parameters
    i8*,    ; 0: fp

    ; variables
    i32,    ; 1: i

    ; slink
    %Frame_printtables*    ; 2
};

; procedure body
define void @P_printtables_followctp(%Frame_printtables* %.slink, i8* %fp)
{
    ; allocate frame
    %.frame = alloca %Frame_printtables_followctp, align 8
    %t1 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    store %Frame_printtables* %.slink, %Frame_printtables** %t1
    %t2 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    store i8* %fp, i8** %t2

    ; body
    ; line 865
    %t5 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 867
    %t6 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t6, i32 4, i32 0, i8 32)
    %t7 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t8 = load %Frame_printtables*, %Frame_printtables** %t7
    %t10 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t9 = load i8*, i8** %t10
    %t11 = call i32 @F_printtables_ctptoint(%Frame_printtables* %t8, i8* %t9)
    call void @_WriteInteger(i8* %t6, i32 11, i32 0, i32 %t11)
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 32)
    %t13 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to %T_alpha*
    call void @_WriteString(i8* %t6, i32 9, i32 0, i8* getelementptr inbounds (%T_alpha, %T_alpha* %t15, i32 0, i32 0), i32 8)
    call void @_WriteChar(i8* %t6, i32 4, i32 0, i8 32)
    %t17 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t18 = load %Frame_printtables*, %Frame_printtables** %t17
    %t20 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 8
    %t22 = bitcast i8* %t23 to i8**
    %t24 = load i8*, i8** %t22
    %t25 = call i32 @F_printtables_ctptoint(%Frame_printtables* %t18, i8* %t24)
    call void @_WriteInteger(i8* %t6, i32 11, i32 0, i32 %t25)
    call void @_WriteChar(i8* %t6, i32 4, i32 0, i8 32)
    %t26 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t27 = load %Frame_printtables*, %Frame_printtables** %t26
    %t29 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t28 = load i8*, i8** %t29
    %t30 = bitcast i8* %t28 to %T_identifier*
    %t32 = getelementptr inbounds %T_identifier, %T_identifier* %t30, i32 0, i32 16
    %t31 = bitcast i8* %t32 to i8**
    %t33 = load i8*, i8** %t31
    %t34 = call i32 @F_printtables_ctptoint(%Frame_printtables* %t27, i8* %t33)
    call void @_WriteInteger(i8* %t6, i32 11, i32 0, i32 %t34)
    call void @_WriteChar(i8* %t6, i32 4, i32 0, i8 32)
    %t35 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t36 = load %Frame_printtables*, %Frame_printtables** %t35
    %t38 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t37 = load i8*, i8** %t38
    %t39 = bitcast i8* %t37 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 24
    %t40 = bitcast i8* %t41 to i8**
    %t42 = load i8*, i8** %t40
    %t43 = call i32 @F_printtables_stptoint(%Frame_printtables* %t36, i8* %t42)
    call void @_WriteInteger(i8* %t6, i32 11, i32 0, i32 %t43)
    ; line 869
    ; line 916
    %t44 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t44)
    ; line 917
    %t45 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t46 = load %Frame_printtables*, %Frame_printtables** %t45
    %t48 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t47 = load i8*, i8** %t48
    %t49 = bitcast i8* %t47 to %T_identifier*
    %t51 = getelementptr inbounds %T_identifier, %T_identifier* %t49, i32 0, i32 8
    %t50 = bitcast i8* %t51 to i8**
    %t52 = load i8*, i8** %t50
    call void @P_printtables_followctp(%Frame_printtables* %t46, i8* %t52)
    ; line 917
    %t53 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t54 = load %Frame_printtables*, %Frame_printtables** %t53
    %t56 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t55 = load i8*, i8** %t56
    %t57 = bitcast i8* %t55 to %T_identifier*
    %t59 = getelementptr inbounds %T_identifier, %T_identifier* %t57, i32 0, i32 16
    %t58 = bitcast i8* %t59 to i8**
    %t60 = load i8*, i8** %t58
    call void @P_printtables_followctp(%Frame_printtables* %t54, i8* %t60)
    ; line 918
    %t61 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 2
    %t62 = load %Frame_printtables*, %Frame_printtables** %t61
    %t64 = getelementptr inbounds %Frame_printtables_followctp, %Frame_printtables_followctp* %.frame, i32 0, i32 0
    %t63 = load i8*, i8** %t64
    %t65 = bitcast i8* %t63 to %T_identifier*
    %t67 = getelementptr inbounds %T_identifier, %T_identifier* %t65, i32 0, i32 24
    %t66 = bitcast i8* %t67 to i8**
    %t68 = load i8*, i8** %t66
    call void @P_printtables_followstp(%Frame_printtables* %t62, i8* %t68)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 934
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
    ; line 935
    %t3 = load i32, i32* @intlabel
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @intlabel
    ; line 936
    %t4 = getelementptr inbounds %Frame_genlabel, %Frame_genlabel* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t6 = load i32, i32* @intlabel
    store i32 %t6, i32* %t5

    ; epilogue
    ret void
}


; line 939
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
    i1,    ; 4: test

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
    ; line 3654
    store i1 1, i1* @dp
    ; line 3655
    ; line 3669
    store i1 0, i1* @dp
    ; line 3670
    %t5 = load i32, i32* @sy
    %t4 = icmp eq i32 %t5, 31
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3670
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3670
    call void @P_error(i32 17)
    br label %L_endif_1
L_endif_1:
    ; line 3671
    ; nop

    ; epilogue
    ret void
}


; line 942
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
    ; line 945
    %t3 = icmp eq i1 0, %.dummy.intrin
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 946
    ; line 947
    %t5 = icmp eq i1 0, true
    br i1 %t5, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 947
    call void @P_insymbol()
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 951
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
    ; line 954
    %t5 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    store i8* null, i8** %t5
    ; line 954
    %t6 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t7 = load %T_valu*, %T_valu** %t6
    %t9 = getelementptr inbounds %T_valu, %T_valu* %t7, i32 0, i32 4
    %t8 = bitcast i8* %t9 to i32*
    store i32 0, i32* %t8
    ; line 955
    %t11 = icmp eq i1 0, true
    br i1 %t11, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 956
    call void @P_error(i32 50)
    ; line 956
    %t12 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    %t13 = load %Frame_block*, %Frame_block** %t12
    call void @P_block_skip(%Frame_block* %t13, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 957
    br i1 true, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 959
    %t17 = load i32, i32* @sy
    %t16 = icmp eq i32 %t17, 3
    br i1 %t16, label %L_then_3, label %L_else_3
L_then_3:
    ; line 961
    %t19 = load i32, i32* @lgth
    %t18 = icmp eq i32 %t19, 1
    br i1 %t18, label %L_then_4, label %L_else_4
L_then_4:
    ; line 961
    %t20 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t21 = load i8*, i8** @charptr
    store i8* %t21, i8** %t20
    br label %L_endif_4
L_else_4:
    ; line 964
    ; line 966
    %t23 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t22 = load i8*, i8** %t23
    %t24 = bitcast i8* %t22 to %T_structure*
    %t26 = getelementptr inbounds %T_structure, %T_structure* %t24, i32 0, i32 16
    %t25 = bitcast i8* %t26 to i8**
    %t27 = load i8*, i8** @charptr
    store i8* %t27, i8** %t25
    ; line 966
    %t29 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t28 = load i8*, i8** %t29
    %t30 = bitcast i8* %t28 to %T_structure*
    %t32 = getelementptr inbounds %T_structure, %T_structure* %t30, i32 0, i32 24
    %t31 = bitcast i8* %t32 to i8**
    store i8* null, i8** %t31
    ; line 967
    %t34 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t33 = load i8*, i8** %t34
    %t35 = bitcast i8* %t33 to %T_structure*
    %t37 = getelementptr inbounds %T_structure, %T_structure* %t35, i32 0, i32 4
    %t36 = bitcast i8* %t37 to i32*
    %t39 = load i32, i32* @lgth
    %t38 = mul i32 %t39, 1
    store i32 %t38, i32* %t36
    ; line 967
    %t41 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t40 = load i8*, i8** %t41
    %t42 = bitcast i8* %t40 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 8
    %t43 = bitcast i8* %t44 to i32*
    store i32 4, i32* %t43
    br label %L_endif_4
L_endif_4:
    ; line 970
    %t45 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t46 = load %T_valu*, %T_valu** %t45
    %t47 = load %T_valu, %T_valu* @val
    store %T_valu %t47, %T_valu* %t46
    ; line 970
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 974
    %t48 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    store i32 0, i32* %t48
    ; line 975
    br label %L_AND_expr_5
L_AND_expr_5:
    %t51 = load i32, i32* @sy
    %t50 = icmp eq i32 %t51, 6
    br i1 %t50, label %L_AND_eval_5, label %L_AND_shortcut_5
L_AND_eval_5:
    br label %L_AND_shortcut_5
L_AND_shortcut_5:
    %t49 = phi [true, %L_AND_eval_5], [false, %L_AND_expr_5]
    br i1 %t49, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 976
    %t54 = load i32, i32* @op
    %t53 = icmp eq i32 %t54, 5
    br i1 %t53, label %L_then_7, label %L_else_7
L_then_7:
    ; line 976
    %t55 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    store i32 1, i32* %t55
    br label %L_endif_7
L_else_7:
    ; line 976
    %t56 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    store i32 2, i32* %t56
    br label %L_endif_7
L_endif_7:
    ; line 977
    call void @P_insymbol()
    br label %L_endif_6
L_endif_6:
    ; line 979
    %t58 = load i32, i32* @sy
    %t57 = icmp eq i32 %t58, 0
    br i1 %t57, label %L_then_8, label %L_else_8
L_then_8:
    ; line 980
    %t59 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t59)
    ; line 982
    %t60 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t62 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t61 = load i8*, i8** %t62
    %t63 = bitcast i8* %t61 to %T_identifier*
    %t65 = getelementptr inbounds %T_identifier, %T_identifier* %t63, i32 0, i32 24
    %t64 = bitcast i8* %t65 to i8**
    %t66 = load i8*, i8** %t64
    store i8* %t66, i8** %t60
    ; line 982
    %t67 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t68 = load %T_valu*, %T_valu** %t67
    %t70 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t69 = load i8*, i8** %t70
    %t71 = bitcast i8* %t69 to %T_identifier*
    %t73 = getelementptr inbounds %T_identifier, %T_identifier* %t71, i32 0, i32 48
    %t72 = bitcast i8* %t73 to %T_valu*
    %t74 = load %T_valu, %T_valu* %t72
    store %T_valu %t74, %T_valu* %t68
    ; line 983
    %t77 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t76 = load i32, i32* %t77
    %t75 = icmp ne i32 %t76, 0
    br i1 %t75, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 984
    %t80 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t79 = load i8*, i8** %t80
    %t81 = load i8*, i8** @intptr
    %t78 = icmp eq i32 %t79, %t81
    br i1 %t78, label %L_then_10, label %L_else_10
L_then_10:
    ; line 985
    %t84 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t83 = load i32, i32* %t84
    %t82 = icmp eq i32 %t83, 2
    br i1 %t82, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 985
    %t85 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t86 = load %T_valu*, %T_valu** %t85
    %t88 = getelementptr inbounds %T_valu, %T_valu* %t86, i32 0, i32 4
    %t87 = bitcast i8* %t88 to i32*
    %t89 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t90 = load %T_valu*, %T_valu** %t89
    %t92 = getelementptr inbounds %T_valu, %T_valu* %t90, i32 0, i32 4
    %t91 = bitcast i8* %t92 to i32*
    %t93 = load i32, i32* %t91
    %t94 = sub i32 0, %t93
    store i32 %t94, i32* %t87
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_else_10:
    ; line 987
    %t97 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t96 = load i8*, i8** %t97
    %t98 = load i8*, i8** @realptr
    %t95 = icmp eq i32 %t96, %t98
    br i1 %t95, label %L_then_12, label %L_else_12
L_then_12:
    ; line 989
    %t101 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t100 = load i32, i32* %t101
    %t99 = icmp eq i32 %t100, 2
    br i1 %t99, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 990
    ; line 991
    %t103 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t104 = load %T_valu*, %T_valu** %t103
    %t106 = getelementptr inbounds %T_valu, %T_valu* %t104, i32 0, i32 8
    %t105 = bitcast i8* %t106 to i8**
    %t107 = load i8*, i8** %t105
    %t108 = bitcast i8* %t107 to %T_constant*
    %t110 = getelementptr inbounds %T_constant, %T_constant* %t108, i32 0, i32 4
    %t109 = bitcast i8* %t110 to %T_array_2*
    %t111 = getelementptr inbounds %T_array_2, %T_array_2* %t109, i32 0, i32 1
    %t112 = load i8, i8* %t111
    %t102 = icmp eq i32 %t112, 45
    br i1 %t102, label %L_then_14, label %L_else_14
L_then_14:
    ; line 992
    %t114 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t113 = load i8*, i8** %t114
    %t115 = bitcast i8* %t113 to %T_constant*
    %t117 = getelementptr inbounds %T_constant, %T_constant* %t115, i32 0, i32 4
    %t116 = bitcast i8* %t117 to %T_array_2*
    %t118 = getelementptr inbounds %T_array_2, %T_array_2* %t116, i32 0, i32 1
    store i8 43, i8* %t118
    br label %L_endif_14
L_else_14:
    ; line 993
    %t120 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t119 = load i8*, i8** %t120
    %t121 = bitcast i8* %t119 to %T_constant*
    %t123 = getelementptr inbounds %T_constant, %T_constant* %t121, i32 0, i32 4
    %t122 = bitcast i8* %t123 to %T_array_2*
    %t124 = getelementptr inbounds %T_array_2, %T_array_2* %t122, i32 0, i32 1
    store i8 45, i8* %t124
    br label %L_endif_14
L_endif_14:
    ; line 994
    ; line 996
    %t125 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t126 = load %T_valu*, %T_valu** %t125
    %t128 = getelementptr inbounds %T_valu, %T_valu* %t126, i32 0, i32 8
    %t127 = bitcast i8* %t128 to i8**
    %t130 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 6
    %t129 = load i8*, i8** %t130
    store i8* %t129, i8** %t127
    ; nop
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_else_12:
    ; line 999
    call void @P_error(i32 105)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; line 1000
    call void @P_insymbol()
    ; nop
    br label %L_endif_8
L_else_8:
    ; line 1003
    %t132 = load i32, i32* @sy
    %t131 = icmp eq i32 %t132, 1
    br i1 %t131, label %L_then_15, label %L_else_15
L_then_15:
    ; line 1004
    %t135 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t134 = load i32, i32* %t135
    %t133 = icmp eq i32 %t134, 2
    br i1 %t133, label %L_then_16, label %L_endif_16
L_then_16:
    ; line 1004
    %t137 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 4
    %t136 = bitcast i8* %t137 to i32*
    %t139 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 4
    %t138 = bitcast i8* %t139 to i32*
    %t140 = load i32, i32* %t138
    %t141 = sub i32 0, %t140
    store i32 %t141, i32* %t136
    br label %L_endif_16
L_endif_16:
    ; line 1005
    %t142 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t143 = load i8*, i8** @intptr
    store i8* %t143, i8** %t142
    ; line 1005
    %t144 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t145 = load %T_valu*, %T_valu** %t144
    %t146 = load %T_valu, %T_valu* @val
    store %T_valu %t146, %T_valu* %t145
    ; line 1005
    call void @P_insymbol()
    br label %L_endif_15
L_else_15:
    ; line 1008
    %t148 = load i32, i32* @sy
    %t147 = icmp eq i32 %t148, 2
    br i1 %t147, label %L_then_17, label %L_else_17
L_then_17:
    ; line 1009
    %t151 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 7
    %t150 = load i32, i32* %t151
    %t149 = icmp eq i32 %t150, 2
    br i1 %t149, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 1009
    %t153 = getelementptr inbounds %T_valu, %T_valu* @val, i32 0, i32 8
    %t152 = bitcast i8* %t153 to i8**
    %t154 = load i8*, i8** %t152
    %t155 = bitcast i8* %t154 to %T_constant*
    %t157 = getelementptr inbounds %T_constant, %T_constant* %t155, i32 0, i32 4
    %t156 = bitcast i8* %t157 to %T_array_2*
    %t158 = getelementptr inbounds %T_array_2, %T_array_2* %t156, i32 0, i32 1
    store i8 45, i8* %t158
    br label %L_endif_18
L_endif_18:
    ; line 1010
    %t159 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t160 = load i8*, i8** @realptr
    store i8* %t160, i8** %t159
    ; line 1010
    %t161 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t162 = load %T_valu*, %T_valu** %t161
    %t163 = load %T_valu, %T_valu* @val
    store %T_valu %t163, %T_valu* %t162
    ; line 1010
    call void @P_insymbol()
    br label %L_endif_17
L_else_17:
    ; line 1013
    call void @P_error(i32 106)
    ; line 1013
    %t164 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    %t165 = load %Frame_block*, %Frame_block** %t164
    %t167 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t166 = load %T_setofsys, %T_setofsys* %t167
    call void @P_block_skip(%Frame_block* %t165, %T_setofsys %t166)
    br label %L_endif_17
L_endif_17:
    br label %L_endif_15
L_endif_15:
    br label %L_endif_8
L_endif_8:
    br label %L_endif_3
L_endif_3:
    ; line 1015
    %t169 = icmp eq i1 0, true
    br i1 %t169, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 1016
    call void @P_error(i32 6)
    ; line 1016
    %t170 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 8
    %t171 = load %Frame_block*, %Frame_block** %t170
    %t173 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t172 = load %T_setofsys, %T_setofsys* %t173
    call void @P_block_skip(%Frame_block* %t171, %T_setofsys %t172)
    br label %L_endif_19
L_endif_19:
    br label %L_endif_2
L_endif_2:
    ; line 1018
    %t174 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t175 = load i8**, i8*** %t174
    %t177 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t176 = load i8*, i8** %t177
    store i8* %t176, i8** %t175

    ; epilogue
    ret void
}


; line 1021
;================================================================================
; scope: block_equalbounds (level : 3)

; activation record
%Frame_block_equalbounds = type
{
    ; parameters
    i8*,    ; 0: fsp1
    i8*,    ; 1: fsp2

    ; variables
    i1,    ; 2: _fnvalue
    i32,    ; 3: lmax1
    i32,    ; 4: lmax2
    i32,    ; 5: lmin1
    i32,    ; 6: lmin2

    ; slink
    %Frame_block*    ; 7
};

; function body
define i1 @F_block_equalbounds(%Frame_block* %.slink, i8* %fsp1, i8* %fsp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_equalbounds, align 8
    %t1 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 7
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 0
    store i8* %fsp1, i8** %t2
    %t3 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 1
    store i8* %fsp2, i8** %t3

    ; body
    ; line 1024
    br label %L_OR_expr_1
L_OR_expr_1:
    %t7 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t5 = icmp eq i32 %t6, null
    br i1 %t5, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t10 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 1
    %t9 = load i8*, i8** %t10
    %t8 = icmp eq i32 %t9, null
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t4 = phi [%t8, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t4, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1024
    %t11 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 2
    store i1 1, i1* %t11
    br label %L_endif_2
L_else_2:
    ; line 1027
    %t13 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 5
    %t15 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 3
    call void @P_getbounds(i8* %t12, i32* %t14, i32* %t15)
    ; line 1028
    %t17 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 1
    %t16 = load i8*, i8** %t17
    %t18 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 6
    %t19 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 4
    call void @P_getbounds(i8* %t16, i32* %t18, i32* %t19)
    ; line 1029
    %t20 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 2
    br label %L_AND_expr_3
L_AND_expr_3:
    %t24 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 5
    %t23 = load i32, i32* %t24
    %t26 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 6
    %t25 = load i32, i32* %t26
    %t22 = icmp eq i32 %t23, %t25
    br i1 %t22, label %L_AND_eval_3, label %L_AND_shortcut_3
L_AND_eval_3:
    %t29 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 3
    %t28 = load i32, i32* %t29
    %t31 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 4
    %t30 = load i32, i32* %t31
    %t27 = icmp eq i32 %t28, %t30
    br label %L_AND_shortcut_3
L_AND_shortcut_3:
    %t21 = phi [%t27, %L_AND_eval_3], [false, %L_AND_expr_3]
    store i1 %t21, i1* %t20
    br label %L_endif_2
L_endif_2:

    ; epilogue
    %t32 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 2
    %t33 = load i1, i1* %t32
    ret i1 %t33
}


; line 1033
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
    i1,    ; 3: comp
    i8*,    ; 4: ltestp1
    i8*,    ; 5: ltestp2
    i8*,    ; 6: nxt1
    i8*,    ; 7: nxt2

    ; slink
    %Frame_block*    ; 8
};

; function body
define i1 @F_block_comptypes(%Frame_block* %.slink, i8* %fsp1, i8* %fsp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_comptypes, align 8
    %t1 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 8
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    store i8* %fsp1, i8** %t2
    %t3 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    store i8* %fsp2, i8** %t3

    ; body
    ; line 1038
    %t6 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t8 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t7 = load i8*, i8** %t8
    %t4 = icmp eq i32 %t5, %t7
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1038
    %t9 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 1, i1* %t9
    br label %L_endif_1
L_else_1:
    ; line 1040
    br label %L_AND_expr_2
L_AND_expr_2:
    %t13 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t11 = icmp ne i32 %t12, null
    br i1 %t11, label %L_AND_eval_2, label %L_AND_shortcut_2
L_AND_eval_2:
    %t16 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t15 = load i8*, i8** %t16
    %t14 = icmp ne i32 %t15, null
    br label %L_AND_shortcut_2
L_AND_shortcut_2:
    %t10 = phi [%t14, %L_AND_eval_2], [false, %L_AND_expr_2]
    br i1 %t10, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1041
    %t19 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t18 = load i8*, i8** %t19
    %t20 = bitcast i8* %t18 to %T_structure*
    %t22 = getelementptr inbounds %T_structure, %T_structure* %t20, i32 0, i32 8
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t25 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 8
    %t27 = bitcast i8* %t28 to i32*
    %t29 = load i32, i32* %t27
    %t17 = icmp eq i32 %t23, %t29
    br i1 %t17, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1042
    br label %L_endif_4
L_else_4:
    ; line 1096
    %t32 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t31 = load i8*, i8** %t32
    %t33 = bitcast i8* %t31 to %T_structure*
    %t35 = getelementptr inbounds %T_structure, %T_structure* %t33, i32 0, i32 8
    %t34 = bitcast i8* %t35 to i32*
    %t36 = load i32, i32* %t34
    %t30 = icmp eq i32 %t36, 1
    br i1 %t30, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1097
    %t37 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t38 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 8
    %t39 = load %Frame_block*, %Frame_block** %t38
    %t41 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t40 = load i8*, i8** %t41
    %t42 = bitcast i8* %t40 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 16
    %t43 = bitcast i8* %t44 to i8**
    %t45 = load i8*, i8** %t43
    %t47 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t46 = load i8*, i8** %t47
    %t48 = call i1 @F_block_comptypes(%Frame_block* %t39, i8* %t45, i8* %t46)
    store i1 %t48, i1* %t37
    br label %L_endif_5
L_else_5:
    ; line 1099
    %t51 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t50 = load i8*, i8** %t51
    %t52 = bitcast i8* %t50 to %T_structure*
    %t54 = getelementptr inbounds %T_structure, %T_structure* %t52, i32 0, i32 8
    %t53 = bitcast i8* %t54 to i32*
    %t55 = load i32, i32* %t53
    %t49 = icmp eq i32 %t55, 1
    br i1 %t49, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1100
    %t56 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t57 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 8
    %t58 = load %Frame_block*, %Frame_block** %t57
    %t60 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 0
    %t59 = load i8*, i8** %t60
    %t62 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 1
    %t61 = load i8*, i8** %t62
    %t63 = bitcast i8* %t61 to %T_structure*
    %t65 = getelementptr inbounds %T_structure, %T_structure* %t63, i32 0, i32 16
    %t64 = bitcast i8* %t65 to i8**
    %t66 = load i8*, i8** %t64
    %t67 = call i1 @F_block_comptypes(%Frame_block* %t58, i8* %t59, i8* %t66)
    store i1 %t67, i1* %t56
    br label %L_endif_6
L_else_6:
    ; line 1101
    %t68 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 0, i1* %t68
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 1102
    %t69 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    store i1 1, i1* %t69
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t70 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t71 = load i1, i1* %t70
    ret i1 %t71
}


; line 1105
;================================================================================
; scope: block_string (level : 3)

; activation record
%Frame_block_string = type
{
    ; parameters
    i8*,    ; 0: fsp

    ; variables
    i1,    ; 1: _fnvalue

    ; slink
    %Frame_block*    ; 2
};

; function body
define i1 @F_block_string(%Frame_block* %.slink, i8* %fsp)
{
    ; allocate frame
    %.frame = alloca %Frame_block_string, align 8
    %t1 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 2
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    store i8* %fsp, i8** %t2

    ; body
    ; line 1106
    %t3 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    store i1 0, i1* %t3
    ; line 1107
    %t6 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t4 = icmp ne i32 %t5, null
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1108
    %t9 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t8 = load i8*, i8** %t9
    %t10 = bitcast i8* %t8 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 8
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t7 = icmp eq i32 %t13, 4
    br i1 %t7, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1109
    %t14 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 2
    %t15 = load %Frame_block*, %Frame_block** %t14
    %t17 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 0
    %t16 = load i8*, i8** %t17
    %t18 = bitcast i8* %t16 to %T_structure*
    %t20 = getelementptr inbounds %T_structure, %T_structure* %t18, i32 0, i32 16
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    %t22 = load i8*, i8** @charptr
    %t23 = call i1 @F_block_comptypes(%Frame_block* %t15, i8* %t21, i8* %t22)
    br i1 %t23, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1109
    %t24 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    store i1 1, i1* %t24
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t25 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    %t26 = load i1, i1* %t25
    ret i1 %t26
}


; line 1112
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
    i8*,    ; 4: lcp
    i32,    ; 5: lmax
    i32,    ; 6: lmin
    i32,    ; 7: lsize
    i8*,    ; 8: lsp
    i8*,    ; 9: lsp1
    i8*,    ; 10: lsp2
    i32,    ; 11: oldtop

    ; slink
    %Frame_block*    ; 12
};

; procedure body
define void @P_block_typ(%Frame_block* %.slink, %T_setofsys %fsys, i8** %fsp, i32* %fsize)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ, align 8
    %t1 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    store i32* %fsize, i32** %t2
    %t3 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    store i8** %fsp, i8*** %t3
    %t4 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    store %T_setofsys %fsys, %T_setofsys* %t4

    ; body
    ; line 1334
    %t6 = icmp eq i1 0, true
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1335
    call void @P_error(i32 10)
    ; line 1335
    %t7 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t8 = load %Frame_block*, %Frame_block** %t7
    call void @P_block_skip(%Frame_block* %t8, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 1336
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1338
    br i1 true, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1338
    %t13 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t12 = load %T_setofsys, %T_setofsys* %t13
    %t14 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t15 = load i8**, i8*** %t14
    %t16 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t17 = load i32*, i32** %t16
    call void @P_block_typ_simpletype(%Frame_block_typ* %.frame, %T_setofsys %t12, i8** %t15, i32* %t17)
    br label %L_endif_3
L_else_3:
    ; line 1340
    %t19 = load i32, i32* @sy
    %t18 = icmp eq i32 %t19, 15
    br i1 %t18, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1341
    ; line 1341
    %t20 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t21 = load i8**, i8*** %t20
    %t23 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t22 = load i8*, i8** %t23
    store i8* %t22, i8** %t21
    ; line 1343
    %t25 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 16
    %t27 = bitcast i8* %t28 to i8**
    store i8* null, i8** %t27
    ; line 1343
    %t30 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t29 = load i8*, i8** %t30
    %t31 = bitcast i8* %t29 to %T_structure*
    %t33 = getelementptr inbounds %T_structure, %T_structure* %t31, i32 0, i32 4
    %t32 = bitcast i8* %t33 to i32*
    store i32 1, i32* %t32
    ; line 1343
    %t35 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t34 = load i8*, i8** %t35
    %t36 = bitcast i8* %t34 to %T_structure*
    %t38 = getelementptr inbounds %T_structure, %T_structure* %t36, i32 0, i32 8
    %t37 = bitcast i8* %t38 to i32*
    store i32 2, i32* %t37
    ; line 1344
    call void @P_insymbol()
    ; line 1345
    %t40 = load i32, i32* @sy
    %t39 = icmp eq i32 %t40, 0
    br i1 %t39, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1346
    store i1 0, i1* @prterr
    ; line 1347
    %t41 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t41)
    ; line 1347
    store i1 1, i1* @prterr
    ; line 1348
    %t44 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t43 = load i8*, i8** %t44
    %t42 = icmp eq i32 %t43, null
    br i1 %t42, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1349
    ; line 1351
    %t46 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t45 = load i8*, i8** %t46
    %t47 = bitcast i8* %t45 to %T_identifier*
    %t49 = getelementptr inbounds %T_identifier, %T_identifier* %t47, i32 0, i32 0
    %t48 = bitcast i8* %t49 to %T_alpha*
    %t50 = load %T_alpha, %T_alpha* @id
    store %T_alpha %t50, %T_alpha* %t48
    ; line 1351
    %t52 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t51 = load i8*, i8** %t52
    %t53 = bitcast i8* %t51 to %T_identifier*
    %t55 = getelementptr inbounds %T_identifier, %T_identifier* %t53, i32 0, i32 24
    %t54 = bitcast i8* %t55 to i8**
    %t57 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t56 = load i8*, i8** %t57
    store i8* %t56, i8** %t54
    ; line 1352
    %t59 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t58 = load i8*, i8** %t59
    %t60 = bitcast i8* %t58 to %T_identifier*
    %t62 = getelementptr inbounds %T_identifier, %T_identifier* %t60, i32 0, i32 32
    %t61 = bitcast i8* %t62 to i8**
    %t63 = load i8*, i8** @fwptr
    store i8* %t63, i8** %t61
    ; line 1352
    %t65 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t64 = load i8*, i8** %t65
    %t66 = bitcast i8* %t64 to %T_identifier*
    %t68 = getelementptr inbounds %T_identifier, %T_identifier* %t66, i32 0, i32 40
    %t67 = bitcast i8* %t68 to i32*
    store i32 0, i32* %t67
    ; line 1354
    %t70 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t69 = load i8*, i8** %t70
    store i8* %t69, i8** @fwptr
    br label %L_endif_6
L_else_6:
    ; line 1358
    %t73 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t72 = load i8*, i8** %t73
    %t74 = bitcast i8* %t72 to %T_identifier*
    %t76 = getelementptr inbounds %T_identifier, %T_identifier* %t74, i32 0, i32 24
    %t75 = bitcast i8* %t76 to i8**
    %t77 = load i8*, i8** %t75
    %t71 = icmp ne i32 %t77, null
    br i1 %t71, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 1359
    %t80 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t79 = load i8*, i8** %t80
    %t81 = bitcast i8* %t79 to %T_identifier*
    %t83 = getelementptr inbounds %T_identifier, %T_identifier* %t81, i32 0, i32 24
    %t82 = bitcast i8* %t83 to i8**
    %t84 = load i8*, i8** %t82
    %t85 = bitcast i8* %t84 to %T_structure*
    %t87 = getelementptr inbounds %T_structure, %T_structure* %t85, i32 0, i32 8
    %t86 = bitcast i8* %t87 to i32*
    %t88 = load i32, i32* %t86
    %t78 = icmp eq i32 %t88, 6
    br i1 %t78, label %L_then_8, label %L_else_8
L_then_8:
    ; line 1359
    call void @P_error(i32 108)
    br label %L_endif_8
L_else_8:
    ; line 1360
    %t90 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t89 = load i8*, i8** %t90
    %t91 = bitcast i8* %t89 to %T_structure*
    %t93 = getelementptr inbounds %T_structure, %T_structure* %t91, i32 0, i32 16
    %t92 = bitcast i8* %t93 to i8**
    %t95 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 4
    %t94 = load i8*, i8** %t95
    %t96 = bitcast i8* %t94 to %T_identifier*
    %t98 = getelementptr inbounds %T_identifier, %T_identifier* %t96, i32 0, i32 24
    %t97 = bitcast i8* %t98 to i8**
    %t99 = load i8*, i8** %t97
    store i8* %t99, i8** %t92
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 1362
    call void @P_insymbol()
    ; nop
    br label %L_endif_5
L_else_5:
    ; line 1364
    call void @P_error(i32 2)
    br label %L_endif_5
L_endif_5:
    ; nop
    br label %L_endif_4
L_else_4:
    ; line 1368
    %t101 = load i32, i32* @sy
    %t100 = icmp eq i32 %t101, 26
    br i1 %t100, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 1369
    call void @P_insymbol()
    ; line 1370
    %t103 = icmp eq i1 0, true
    br i1 %t103, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 1372
    call void @P_error(i32 10)
    ; line 1372
    %t104 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t105 = load %Frame_block*, %Frame_block** %t104
    call void @P_block_skip(%Frame_block* %t105, %T_setofsys true)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; line 1375
    %t108 = load i32, i32* @sy
    %t107 = icmp eq i32 %t108, 27
    br i1 %t107, label %L_then_11, label %L_else_11
L_then_11:
    ; line 1376
    call void @P_insymbol()
    ; line 1377
    %t110 = load i32, i32* @sy
    %t109 = icmp eq i32 %t110, 10
    br i1 %t109, label %L_then_12, label %L_else_12
L_then_12:
    ; line 1377
    call void @P_insymbol()
    br label %L_endif_12
L_else_12:
    ; line 1377
    call void @P_error(i32 11)
    br label %L_endif_12
L_endif_12:
    ; line 1378
    %t111 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    store i8* null, i8** %t111
    ; line 1379
    ; line 1399
    %t113 = load i32, i32* @sy
    %t112 = icmp eq i32 %t113, 11
    br i1 %t112, label %L_then_13, label %L_else_13
L_then_13:
    ; line 1399
    call void @P_insymbol()
    br label %L_endif_13
L_else_13:
    ; line 1399
    call void @P_error(i32 12)
    br label %L_endif_13
L_endif_13:
    ; line 1400
    %t115 = load i32, i32* @sy
    %t114 = icmp eq i32 %t115, 42
    br i1 %t114, label %L_then_14, label %L_else_14
L_then_14:
    ; line 1400
    call void @P_insymbol()
    br label %L_endif_14
L_else_14:
    ; line 1400
    call void @P_error(i32 8)
    br label %L_endif_14
L_endif_14:
    ; line 1401
    %t116 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t117 = load %Frame_block*, %Frame_block** %t116
    %t119 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t118 = load %T_setofsys, %T_setofsys* %t119
    %t120 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t121 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    call void @P_block_typ(%Frame_block* %t117, %T_setofsys %t118, i8** %t120, i32* %t121)
    ; line 1402
    br label %L_endif_11
L_else_11:
    ; line 1416
    %t123 = load i32, i32* @sy
    %t122 = icmp eq i32 %t123, 28
    br i1 %t122, label %L_then_15, label %L_else_15
L_then_15:
    ; line 1417
    call void @P_insymbol()
    ; line 1418
    %t124 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t125 = load i32, i32* @top
    store i32 %t125, i32* %t124
    ; line 1419
    %t127 = load i32, i32* @top
    %t126 = icmp slt i32 %t127, 20
    br i1 %t126, label %L_then_16, label %L_else_16
L_then_16:
    ; line 1420
    %t129 = load i32, i32* @top
    %t128 = add i32 %t129, 1
    store i32 %t128, i32* @top
    ; line 1422
    %t130 = load i32, i32* @top
    %t131 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t130
    %t133 = getelementptr inbounds %T_record_10, %T_record_10* %t131, i32 0, i32 0
    %t132 = bitcast i8* %t133 to i8**
    store i8* null, i8** %t132
    ; line 1423
    %t134 = load i32, i32* @top
    %t135 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t134
    %t137 = getelementptr inbounds %T_record_10, %T_record_10* %t135, i32 0, i32 8
    %t136 = bitcast i8* %t137 to i8**
    store i8* null, i8** %t136
    ; line 1424
    %t138 = load i32, i32* @top
    %t139 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t138
    %t141 = getelementptr inbounds %T_record_10, %T_record_10* %t139, i32 0, i32 16
    %t140 = bitcast i8* %t141 to i32*
    store i32 3, i32* %t140
    br label %L_endif_16
L_else_16:
    ; line 1427
    call void @P_error(i32 250)
    br label %L_endif_16
L_endif_16:
    ; line 1428
    %t142 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    store i32 0, i32* %t142
    ; line 1429
    %t144 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    call void @P_block_typ_fieldlist(%Frame_block_typ* %.frame, %T_setofsys %.dummy_set, i8** %t144)
    ; line 1430
    ; line 1432
    %t146 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t145 = load i8*, i8** %t146
    %t147 = bitcast i8* %t145 to %T_structure*
    %t149 = getelementptr inbounds %T_structure, %T_structure* %t147, i32 0, i32 16
    %t148 = bitcast i8* %t149 to i8**
    %t150 = load i32, i32* @top
    %t151 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t150
    %t153 = getelementptr inbounds %T_record_10, %T_record_10* %t151, i32 0, i32 0
    %t152 = bitcast i8* %t153 to i8**
    %t154 = load i8*, i8** %t152
    store i8* %t154, i8** %t148
    ; line 1433
    %t156 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t155 = load i8*, i8** %t156
    %t157 = bitcast i8* %t155 to %T_structure*
    %t159 = getelementptr inbounds %T_structure, %T_structure* %t157, i32 0, i32 24
    %t158 = bitcast i8* %t159 to i8**
    %t161 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t160 = load i8*, i8** %t161
    store i8* %t160, i8** %t158
    ; line 1433
    %t163 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t162 = load i8*, i8** %t163
    %t164 = bitcast i8* %t162 to %T_structure*
    %t166 = getelementptr inbounds %T_structure, %T_structure* %t164, i32 0, i32 4
    %t165 = bitcast i8* %t166 to i32*
    %t168 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t167 = load i32, i32* %t168
    store i32 %t167, i32* %t165
    ; line 1433
    %t170 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t169 = load i8*, i8** %t170
    %t171 = bitcast i8* %t169 to %T_structure*
    %t173 = getelementptr inbounds %T_structure, %T_structure* %t171, i32 0, i32 8
    %t172 = bitcast i8* %t173 to i32*
    store i32 5, i32* %t172
    ; line 1435
    %t175 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t174 = load i32, i32* %t175
    store i32 %t174, i32* @top
    ; line 1436
    %t177 = load i32, i32* @sy
    %t176 = icmp eq i32 %t177, 39
    br i1 %t176, label %L_then_17, label %L_else_17
L_then_17:
    ; line 1436
    call void @P_insymbol()
    br label %L_endif_17
L_else_17:
    ; line 1436
    call void @P_error(i32 13)
    br label %L_endif_17
L_endif_17:
    br label %L_endif_15
L_else_15:
    ; line 1439
    %t179 = load i32, i32* @sy
    %t178 = icmp eq i32 %t179, 25
    br i1 %t178, label %L_then_18, label %L_else_18
L_then_18:
    ; line 1440
    call void @P_insymbol()
    ; line 1441
    %t181 = load i32, i32* @sy
    %t180 = icmp eq i32 %t181, 42
    br i1 %t180, label %L_then_19, label %L_else_19
L_then_19:
    ; line 1441
    call void @P_insymbol()
    br label %L_endif_19
L_else_19:
    ; line 1441
    call void @P_error(i32 8)
    br label %L_endif_19
L_endif_19:
    ; line 1442
    %t183 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t182 = load %T_setofsys, %T_setofsys* %t183
    %t184 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t185 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    call void @P_block_typ_simpletype(%Frame_block_typ* %.frame, %T_setofsys %t182, i8** %t184, i32* %t185)
    ; line 1443
    %t188 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t187 = load i8*, i8** %t188
    %t186 = icmp ne i32 %t187, null
    br i1 %t186, label %L_then_20, label %L_endif_20
L_then_20:
    ; line 1444
    %t191 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t190 = load i8*, i8** %t191
    %t192 = bitcast i8* %t190 to %T_structure*
    %t194 = getelementptr inbounds %T_structure, %T_structure* %t192, i32 0, i32 8
    %t193 = bitcast i8* %t194 to i32*
    %t195 = load i32, i32* %t193
    %t189 = icmp sgt i32 %t195, 1
    br i1 %t189, label %L_then_21, label %L_else_21
L_then_21:
    ; line 1445
    call void @P_error(i32 115)
    ; line 1445
    %t196 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    store i8* null, i8** %t196
    br label %L_endif_21
L_else_21:
    ; line 1447
    %t199 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t198 = load i8*, i8** %t199
    %t200 = load i8*, i8** @realptr
    %t197 = icmp eq i32 %t198, %t200
    br i1 %t197, label %L_then_22, label %L_else_22
L_then_22:
    ; line 1448
    call void @P_error(i32 114)
    ; line 1448
    %t201 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    store i8* null, i8** %t201
    br label %L_endif_22
L_else_22:
    ; line 1449
    %t204 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t203 = load i8*, i8** %t204
    %t205 = load i8*, i8** @intptr
    %t202 = icmp eq i32 %t203, %t205
    br i1 %t202, label %L_then_23, label %L_else_23
L_then_23:
    ; line 1450
    call void @P_error(i32 169)
    ; line 1450
    %t206 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    store i8* null, i8** %t206
    br label %L_endif_23
L_else_23:
    ; line 1452
    %t208 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t207 = load i8*, i8** %t208
    %t209 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 6
    %t210 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    call void @P_getbounds(i8* %t207, i32* %t209, i32* %t210)
    ; line 1453
    br label %L_OR_expr_24
L_OR_expr_24:
    %t214 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 6
    %t213 = load i32, i32* %t214
    %t212 = icmp slt i32 %t213, 0
    br i1 %t212, label %L_OR_shortcut_24, label %L_OR_eval_24
L_OR_eval_24:
    %t217 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 5
    %t216 = load i32, i32* %t217
    %t215 = icmp sgt i32 %t216, 47
    br label %L_OR_shortcut_24
L_OR_shortcut_24:
    %t211 = phi [%t215, %L_OR_eval_24], [true, %L_OR_expr_24]
    br i1 %t211, label %L_then_25, label %L_endif_25
L_then_25:
    ; line 1454
    call void @P_error(i32 169)
    br label %L_endif_25
L_endif_25:
    ; nop
    br label %L_endif_23
L_endif_23:
    br label %L_endif_22
L_endif_22:
    br label %L_endif_21
L_endif_21:
    br label %L_endif_20
L_endif_20:
    ; line 1456
    ; line 1458
    %t219 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t218 = load i8*, i8** %t219
    %t220 = bitcast i8* %t218 to %T_structure*
    %t222 = getelementptr inbounds %T_structure, %T_structure* %t220, i32 0, i32 16
    %t221 = bitcast i8* %t222 to i8**
    %t224 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 9
    %t223 = load i8*, i8** %t224
    store i8* %t223, i8** %t221
    ; line 1458
    %t226 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t225 = load i8*, i8** %t226
    %t227 = bitcast i8* %t225 to %T_structure*
    %t229 = getelementptr inbounds %T_structure, %T_structure* %t227, i32 0, i32 4
    %t228 = bitcast i8* %t229 to i32*
    store i32 1, i32* %t228
    ; line 1458
    %t231 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t230 = load i8*, i8** %t231
    %t232 = bitcast i8* %t230 to %T_structure*
    %t234 = getelementptr inbounds %T_structure, %T_structure* %t232, i32 0, i32 8
    %t233 = bitcast i8* %t234 to i32*
    store i32 3, i32* %t233
    ; nop
    br label %L_endif_18
L_else_18:
    ; line 1461
    %t236 = load i32, i32* @sy
    %t235 = icmp eq i32 %t236, 29
    br i1 %t235, label %L_then_26, label %L_endif_26
L_then_26:
    ; line 1462
    call void @P_insymbol()
    ; line 1463
    call void @P_error(i32 399)
    ; line 1463
    %t237 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t238 = load %Frame_block*, %Frame_block** %t237
    %t240 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t239 = load %T_setofsys, %T_setofsys* %t240
    call void @P_block_skip(%Frame_block* %t238, %T_setofsys %t239)
    ; line 1463
    %t241 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    store i8* null, i8** %t241
    br label %L_endif_26
L_endif_26:
    br label %L_endif_18
L_endif_18:
    br label %L_endif_15
L_endif_15:
    br label %L_endif_11
L_endif_11:
    ; line 1465
    %t242 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t243 = load i8**, i8*** %t242
    %t245 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 8
    %t244 = load i8*, i8** %t245
    store i8* %t244, i8** %t243
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 1467
    %t247 = icmp eq i1 0, true
    br i1 %t247, label %L_then_27, label %L_endif_27
L_then_27:
    ; line 1468
    call void @P_error(i32 6)
    ; line 1468
    %t248 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 12
    %t249 = load %Frame_block*, %Frame_block** %t248
    %t251 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t250 = load %T_setofsys, %T_setofsys* %t251
    call void @P_block_skip(%Frame_block* %t249, %T_setofsys %t250)
    br label %L_endif_27
L_endif_27:
    br label %L_endif_2
L_else_2:
    ; line 1470
    %t252 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t253 = load i8**, i8*** %t252
    store i8* null, i8** %t253
    br label %L_endif_2
L_endif_2:
    ; line 1471
    %t256 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t257 = load i8**, i8*** %t256
    %t255 = load i8*, i8** %t257
    %t254 = icmp eq i32 %t255, null
    br i1 %t254, label %L_then_28, label %L_else_28
L_then_28:
    ; line 1471
    %t258 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t259 = load i32*, i32** %t258
    store i32 1, i32* %t259
    br label %L_endif_28
L_else_28:
    ; line 1471
    %t260 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t261 = load i32*, i32** %t260
    %t263 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t264 = load i8**, i8*** %t263
    %t262 = load i8*, i8** %t264
    %t265 = bitcast i8* %t262 to %T_structure*
    %t267 = getelementptr inbounds %T_structure, %T_structure* %t265, i32 0, i32 4
    %t266 = bitcast i8* %t267 to i32*
    %t268 = load i32, i32* %t266
    store i32 %t268, i32* %t261
    br label %L_endif_28
L_endif_28:

    ; epilogue
    ret void
}


; line 1116
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
    ; line 1119
    %t5 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 0
    %t6 = load i32*, i32** %t5
    store i32 1, i32* %t6
    ; line 1120
    %t8 = icmp eq i1 0, true
    br i1 %t8, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1121
    call void @P_error(i32 1)
    ; line 1121
    %t9 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t10 = load %Frame_block_typ*, %Frame_block_typ** %t9
    %t11 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t10, i32 0, i32 12
    %t12 = load %Frame_block*, %Frame_block** %t11
    call void @P_block_skip(%Frame_block* %t12, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 1122
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1124
    %t16 = load i32, i32* @sy
    %t15 = icmp eq i32 %t16, 8
    br i1 %t15, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1125
    %t17 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 9
    %t18 = load i32, i32* @top
    store i32 %t18, i32* %t17
    ; line 1126
    ; line 1127
    ; line 1129
    %t20 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_structure*
    %t23 = getelementptr inbounds %T_structure, %T_structure* %t21, i32 0, i32 4
    %t22 = bitcast i8* %t23 to i32*
    store i32 1, i32* %t22
    ; line 1129
    %t25 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 8
    %t27 = bitcast i8* %t28 to i32*
    store i32 0, i32* %t27
    ; line 1130
    %t30 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t29 = load i8*, i8** %t30
    %t31 = bitcast i8* %t29 to %T_structure*
    %t33 = getelementptr inbounds %T_structure, %T_structure* %t31, i32 0, i32 12
    %t32 = bitcast i8* %t33 to i32*
    store i32 1, i32* %t32
    ; line 1132
    %t34 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 5
    store i8* null, i8** %t34
    ; line 1132
    %t35 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 3
    store i32 0, i32* %t35
    ; line 1133
    ; line 1148
    %t37 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t36 = load i8*, i8** %t37
    %t38 = bitcast i8* %t36 to %T_structure*
    %t40 = getelementptr inbounds %T_structure, %T_structure* %t38, i32 0, i32 16
    %t39 = bitcast i8* %t40 to i8**
    %t42 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 5
    %t41 = load i8*, i8** %t42
    store i8* %t41, i8** %t39
    ; line 1148
    %t44 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 9
    %t43 = load i32, i32* %t44
    store i32 %t43, i32* @top
    ; line 1149
    %t46 = load i32, i32* @sy
    %t45 = icmp eq i32 %t46, 9
    br i1 %t45, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1149
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 1149
    call void @P_error(i32 4)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 1153
    %t48 = load i32, i32* @sy
    %t47 = icmp eq i32 %t48, 0
    br i1 %t47, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1154
    %t49 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t49)
    ; line 1155
    call void @P_insymbol()
    ; line 1156
    %t52 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t51 = load i8*, i8** %t52
    %t53 = bitcast i8* %t51 to %T_identifier*
    %t55 = getelementptr inbounds %T_identifier, %T_identifier* %t53, i32 0, i32 40
    %t54 = bitcast i8* %t55 to i32*
    %t56 = load i32, i32* %t54
    %t50 = icmp eq i32 %t56, 1
    br i1 %t50, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1157
    ; line 1159
    %t58 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t57 = load i8*, i8** %t58
    %t59 = bitcast i8* %t57 to %T_structure*
    %t61 = getelementptr inbounds %T_structure, %T_structure* %t59, i32 0, i32 16
    %t60 = bitcast i8* %t61 to i8**
    %t63 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t62 = load i8*, i8** %t63
    %t64 = bitcast i8* %t62 to %T_identifier*
    %t66 = getelementptr inbounds %T_identifier, %T_identifier* %t64, i32 0, i32 24
    %t65 = bitcast i8* %t66 to i8**
    %t67 = load i8*, i8** %t65
    store i8* %t67, i8** %t60
    ; line 1159
    %t69 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t68 = load i8*, i8** %t69
    %t70 = bitcast i8* %t68 to %T_structure*
    %t72 = getelementptr inbounds %T_structure, %T_structure* %t70, i32 0, i32 8
    %t71 = bitcast i8* %t72 to i32*
    store i32 1, i32* %t71
    ; line 1160
    %t73 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t74 = load %Frame_block_typ*, %Frame_block_typ** %t73
    %t75 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t74, i32 0, i32 12
    %t76 = load %Frame_block*, %Frame_block** %t75
    %t78 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t77 = load i8*, i8** %t78
    %t79 = bitcast i8* %t77 to %T_structure*
    %t81 = getelementptr inbounds %T_structure, %T_structure* %t79, i32 0, i32 16
    %t80 = bitcast i8* %t81 to i8**
    %t82 = load i8*, i8** %t80
    %t83 = call i1 @F_block_string(%Frame_block* %t76, i8* %t82)
    br i1 %t83, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 1161
    call void @P_error(i32 148)
    ; line 1161
    %t85 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t84 = load i8*, i8** %t85
    %t86 = bitcast i8* %t84 to %T_structure*
    %t88 = getelementptr inbounds %T_structure, %T_structure* %t86, i32 0, i32 16
    %t87 = bitcast i8* %t88 to i8**
    store i8* null, i8** %t87
    br label %L_endif_7
L_endif_7:
    ; line 1162
    %t90 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t89 = load i8*, i8** %t90
    %t91 = bitcast i8* %t89 to %T_structure*
    %t93 = getelementptr inbounds %T_structure, %T_structure* %t91, i32 0, i32 24
    %t92 = bitcast i8* %t93 to %T_valu*
    %t95 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t94 = load i8*, i8** %t95
    %t96 = bitcast i8* %t94 to %T_identifier*
    %t98 = getelementptr inbounds %T_identifier, %T_identifier* %t96, i32 0, i32 48
    %t97 = bitcast i8* %t98 to %T_valu*
    %t99 = load %T_valu, %T_valu* %t97
    store %T_valu %t99, %T_valu* %t92
    ; line 1162
    %t101 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t100 = load i8*, i8** %t101
    %t102 = bitcast i8* %t100 to %T_structure*
    %t104 = getelementptr inbounds %T_structure, %T_structure* %t102, i32 0, i32 4
    %t103 = bitcast i8* %t104 to i32*
    store i32 1, i32* %t103
    ; line 1164
    %t106 = load i32, i32* @sy
    %t105 = icmp eq i32 %t106, 16
    br i1 %t105, label %L_then_8, label %L_else_8
L_then_8:
    ; line 1164
    call void @P_insymbol()
    br label %L_endif_8
L_else_8:
    ; line 1164
    call void @P_error(i32 5)
    br label %L_endif_8
L_endif_8:
    ; line 1165
    %t107 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t108 = load %Frame_block_typ*, %Frame_block_typ** %t107
    %t109 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t108, i32 0, i32 12
    %t110 = load %Frame_block*, %Frame_block** %t109
    %t112 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    %t111 = load %T_setofsys, %T_setofsys* %t112
    %t113 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t114 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    call void @P_block_constant(%Frame_block* %t110, %T_setofsys %t111, i8** %t113, %T_valu* %t114)
    ; line 1166
    %t116 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t115 = load i8*, i8** %t116
    %t117 = bitcast i8* %t115 to %T_structure*
    %t119 = getelementptr inbounds %T_structure, %T_structure* %t117, i32 0, i32 48
    %t118 = bitcast i8* %t119 to %T_valu*
    %t121 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    %t120 = load %T_valu, %T_valu* %t121
    store %T_valu %t120, %T_valu* %t118
    ; line 1167
    %t124 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t123 = load i8*, i8** %t124
    %t125 = bitcast i8* %t123 to %T_structure*
    %t127 = getelementptr inbounds %T_structure, %T_structure* %t125, i32 0, i32 16
    %t126 = bitcast i8* %t127 to i8**
    %t128 = load i8*, i8** %t126
    %t130 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t129 = load i8*, i8** %t130
    %t122 = icmp ne i32 %t128, %t129
    br i1 %t122, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 1167
    call void @P_error(i32 107)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_6
L_else_6:
    ; line 1170
    %t131 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t133 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 4
    %t132 = load i8*, i8** %t133
    %t134 = bitcast i8* %t132 to %T_identifier*
    %t136 = getelementptr inbounds %T_identifier, %T_identifier* %t134, i32 0, i32 24
    %t135 = bitcast i8* %t136 to i8**
    %t137 = load i8*, i8** %t135
    store i8* %t137, i8** %t131
    ; line 1171
    %t140 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t139 = load i8*, i8** %t140
    %t138 = icmp ne i32 %t139, null
    br i1 %t138, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 1171
    %t141 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 0
    %t142 = load i32*, i32** %t141
    %t144 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t143 = load i8*, i8** %t144
    %t145 = bitcast i8* %t143 to %T_structure*
    %t147 = getelementptr inbounds %T_structure, %T_structure* %t145, i32 0, i32 4
    %t146 = bitcast i8* %t147 to i32*
    %t148 = load i32, i32* %t146
    store i32 %t148, i32* %t142
    br label %L_endif_10
L_endif_10:
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 1175
    ; line 1175
    %t150 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t149 = load i8*, i8** %t150
    %t151 = bitcast i8* %t149 to %T_structure*
    %t153 = getelementptr inbounds %T_structure, %T_structure* %t151, i32 0, i32 8
    %t152 = bitcast i8* %t153 to i32*
    store i32 1, i32* %t152
    ; line 1176
    %t154 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t155 = load %Frame_block_typ*, %Frame_block_typ** %t154
    %t156 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t155, i32 0, i32 12
    %t157 = load %Frame_block*, %Frame_block** %t156
    %t159 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t160 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    call void @P_block_constant(%Frame_block* %t157, %T_setofsys %.dummy_set, i8** %t159, %T_valu* %t160)
    ; line 1177
    %t161 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t162 = load %Frame_block_typ*, %Frame_block_typ** %t161
    %t163 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t162, i32 0, i32 12
    %t164 = load %Frame_block*, %Frame_block** %t163
    %t166 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t165 = load i8*, i8** %t166
    %t167 = call i1 @F_block_string(%Frame_block* %t164, i8* %t165)
    br i1 %t167, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 1178
    call void @P_error(i32 148)
    ; line 1178
    %t168 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    store i8* null, i8** %t168
    br label %L_endif_11
L_endif_11:
    ; line 1180
    %t170 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t169 = load i8*, i8** %t170
    %t171 = bitcast i8* %t169 to %T_structure*
    %t173 = getelementptr inbounds %T_structure, %T_structure* %t171, i32 0, i32 16
    %t172 = bitcast i8* %t173 to i8**
    %t175 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t174 = load i8*, i8** %t175
    store i8* %t174, i8** %t172
    ; line 1180
    %t177 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t176 = load i8*, i8** %t177
    %t178 = bitcast i8* %t176 to %T_structure*
    %t180 = getelementptr inbounds %T_structure, %T_structure* %t178, i32 0, i32 24
    %t179 = bitcast i8* %t180 to %T_valu*
    %t182 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    %t181 = load %T_valu, %T_valu* %t182
    store %T_valu %t181, %T_valu* %t179
    ; line 1180
    %t184 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t183 = load i8*, i8** %t184
    %t185 = bitcast i8* %t183 to %T_structure*
    %t187 = getelementptr inbounds %T_structure, %T_structure* %t185, i32 0, i32 4
    %t186 = bitcast i8* %t187 to i32*
    store i32 1, i32* %t186
    ; line 1181
    %t189 = load i32, i32* @sy
    %t188 = icmp eq i32 %t189, 16
    br i1 %t188, label %L_then_12, label %L_else_12
L_then_12:
    ; line 1181
    call void @P_insymbol()
    br label %L_endif_12
L_else_12:
    ; line 1181
    call void @P_error(i32 5)
    br label %L_endif_12
L_endif_12:
    ; line 1182
    %t190 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t191 = load %Frame_block_typ*, %Frame_block_typ** %t190
    %t192 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t191, i32 0, i32 12
    %t193 = load %Frame_block*, %Frame_block** %t192
    %t195 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    %t194 = load %T_setofsys, %T_setofsys* %t195
    %t196 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t197 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    call void @P_block_constant(%Frame_block* %t193, %T_setofsys %t194, i8** %t196, %T_valu* %t197)
    ; line 1183
    %t199 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t198 = load i8*, i8** %t199
    %t200 = bitcast i8* %t198 to %T_structure*
    %t202 = getelementptr inbounds %T_structure, %T_structure* %t200, i32 0, i32 48
    %t201 = bitcast i8* %t202 to %T_valu*
    %t204 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 8
    %t203 = load %T_valu, %T_valu* %t204
    store %T_valu %t203, %T_valu* %t201
    ; line 1184
    %t207 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t206 = load i8*, i8** %t207
    %t208 = bitcast i8* %t206 to %T_structure*
    %t210 = getelementptr inbounds %T_structure, %T_structure* %t208, i32 0, i32 16
    %t209 = bitcast i8* %t210 to i8**
    %t211 = load i8*, i8** %t209
    %t213 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 7
    %t212 = load i8*, i8** %t213
    %t205 = icmp ne i32 %t211, %t212
    br i1 %t205, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 1184
    call void @P_error(i32 107)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_5
L_endif_5:
    ; line 1186
    %t216 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t215 = load i8*, i8** %t216
    %t214 = icmp ne i32 %t215, null
    br i1 %t214, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 1188
    %t219 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t218 = load i8*, i8** %t219
    %t220 = bitcast i8* %t218 to %T_structure*
    %t222 = getelementptr inbounds %T_structure, %T_structure* %t220, i32 0, i32 8
    %t221 = bitcast i8* %t222 to i32*
    %t223 = load i32, i32* %t221
    %t217 = icmp eq i32 %t223, 1
    br i1 %t217, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 1189
    %t226 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t225 = load i8*, i8** %t226
    %t227 = bitcast i8* %t225 to %T_structure*
    %t229 = getelementptr inbounds %T_structure, %T_structure* %t227, i32 0, i32 16
    %t228 = bitcast i8* %t229 to i8**
    %t230 = load i8*, i8** %t228
    %t224 = icmp ne i32 %t230, null
    br i1 %t224, label %L_then_16, label %L_endif_16
L_then_16:
    ; line 1190
    %t233 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t232 = load i8*, i8** %t233
    %t234 = bitcast i8* %t232 to %T_structure*
    %t236 = getelementptr inbounds %T_structure, %T_structure* %t234, i32 0, i32 16
    %t235 = bitcast i8* %t236 to i8**
    %t237 = load i8*, i8** %t235
    %t238 = load i8*, i8** @realptr
    %t231 = icmp eq i32 %t237, %t238
    br i1 %t231, label %L_then_17, label %L_else_17
L_then_17:
    ; line 1190
    call void @P_error(i32 399)
    br label %L_endif_17
L_else_17:
    ; line 1192
    %t241 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t240 = load i8*, i8** %t241
    %t242 = bitcast i8* %t240 to %T_structure*
    %t244 = getelementptr inbounds %T_structure, %T_structure* %t242, i32 0, i32 24
    %t243 = bitcast i8* %t244 to %T_valu*
    %t246 = getelementptr inbounds %T_valu, %T_valu* %t243, i32 0, i32 4
    %t245 = bitcast i8* %t246 to i32*
    %t247 = load i32, i32* %t245
    %t249 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t248 = load i8*, i8** %t249
    %t250 = bitcast i8* %t248 to %T_structure*
    %t252 = getelementptr inbounds %T_structure, %T_structure* %t250, i32 0, i32 48
    %t251 = bitcast i8* %t252 to %T_valu*
    %t254 = getelementptr inbounds %T_valu, %T_valu* %t251, i32 0, i32 4
    %t253 = bitcast i8* %t254 to i32*
    %t255 = load i32, i32* %t253
    %t239 = icmp sgt i32 %t247, %t255
    br i1 %t239, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 1192
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
    ; line 1194
    %t256 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 1
    %t257 = load i8**, i8*** %t256
    %t259 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 6
    %t258 = load i8*, i8** %t259
    store i8* %t258, i8** %t257
    ; line 1195
    %t261 = icmp eq i1 0, true
    br i1 %t261, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 1196
    call void @P_error(i32 6)
    ; line 1196
    %t262 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 10
    %t263 = load %Frame_block_typ*, %Frame_block_typ** %t262
    %t264 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t263, i32 0, i32 12
    %t265 = load %Frame_block*, %Frame_block** %t264
    %t267 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 2
    %t266 = load %T_setofsys, %T_setofsys* %t267
    call void @P_block_skip(%Frame_block* %t265, %T_setofsys %t266)
    br label %L_endif_19
L_endif_19:
    br label %L_endif_2
L_else_2:
    ; line 1198
    %t268 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 1
    %t269 = load i8**, i8*** %t268
    store i8* null, i8** %t269
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 1201
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
    i8*,    ; 13: nxt
    i8*,    ; 14: nxt1

    ; slink
    %Frame_block_typ*    ; 15
};

; procedure body
define void @P_block_typ_fieldlist(%Frame_block_typ* %.slink, %T_setofsys %fsys, i8** %frecvar)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ_fieldlist, align 8
    %t1 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    store %Frame_block_typ* %.slink, %Frame_block_typ** %t1
    %t2 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 0
    store i8** %frecvar, i8*** %t2
    %t3 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 1
    store %T_setofsys %fsys, %T_setofsys* %t3

    ; body
    ; line 1204
    %t4 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 14
    store i8* null, i8** %t4
    ; line 1204
    %t5 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    store i8* null, i8** %t5
    ; line 1205
    %t7 = icmp eq i1 0, true
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1206
    call void @P_error(i32 19)
    ; line 1206
    %t8 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t9 = load %Frame_block_typ*, %Frame_block_typ** %t8
    %t10 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t9, i32 0, i32 12
    %t11 = load %Frame_block*, %Frame_block** %t10
    call void @P_block_skip(%Frame_block* %t11, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 1207
    ; line 1242
    %t13 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 13
    store i8* null, i8** %t13
    ; line 1243
    ; line 1246
    %t15 = load i32, i32* @sy
    %t14 = icmp eq i32 %t15, 33
    br i1 %t14, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1247
    ; line 1249
    %t17 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t16 = load i8*, i8** %t17
    %t18 = bitcast i8* %t16 to %T_structure*
    %t20 = getelementptr inbounds %T_structure, %T_structure* %t18, i32 0, i32 16
    %t19 = bitcast i8* %t20 to i8**
    store i8* null, i8** %t19
    ; line 1249
    %t22 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t21 = load i8*, i8** %t22
    %t23 = bitcast i8* %t21 to %T_structure*
    %t25 = getelementptr inbounds %T_structure, %T_structure* %t23, i32 0, i32 24
    %t24 = bitcast i8* %t25 to i8**
    store i8* null, i8** %t24
    ; line 1249
    %t27 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t26 = load i8*, i8** %t27
    %t28 = bitcast i8* %t26 to %T_structure*
    %t30 = getelementptr inbounds %T_structure, %T_structure* %t28, i32 0, i32 8
    %t29 = bitcast i8* %t30 to i32*
    store i32 7, i32* %t29
    ; line 1250
    %t31 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 0
    %t32 = load i8**, i8*** %t31
    %t34 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t33 = load i8*, i8** %t34
    store i8* %t33, i8** %t32
    ; line 1251
    call void @P_insymbol()
    ; line 1252
    %t36 = load i32, i32* @sy
    %t35 = icmp eq i32 %t36, 0
    br i1 %t35, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1253
    ; line 1255
    %t38 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t37 = load i8*, i8** %t38
    %t39 = bitcast i8* %t37 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 0
    %t40 = bitcast i8* %t41 to %T_alpha*
    %t42 = load %T_alpha, %T_alpha* @id
    store %T_alpha %t42, %T_alpha* %t40
    ; line 1255
    %t44 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t43 = load i8*, i8** %t44
    %t45 = bitcast i8* %t43 to %T_identifier*
    %t47 = getelementptr inbounds %T_identifier, %T_identifier* %t45, i32 0, i32 24
    %t46 = bitcast i8* %t47 to i8**
    store i8* null, i8** %t46
    ; line 1255
    %t49 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t48 = load i8*, i8** %t49
    %t50 = bitcast i8* %t48 to %T_identifier*
    %t52 = getelementptr inbounds %T_identifier, %T_identifier* %t50, i32 0, i32 40
    %t51 = bitcast i8* %t52 to i32*
    store i32 3, i32* %t51
    ; line 1256
    %t54 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t53 = load i8*, i8** %t54
    %t55 = bitcast i8* %t53 to %T_identifier*
    %t57 = getelementptr inbounds %T_identifier, %T_identifier* %t55, i32 0, i32 32
    %t56 = bitcast i8* %t57 to i8**
    store i8* null, i8** %t56
    ; line 1256
    %t59 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t58 = load i8*, i8** %t59
    %t60 = bitcast i8* %t58 to %T_identifier*
    %t62 = getelementptr inbounds %T_identifier, %T_identifier* %t60, i32 0, i32 44
    %t61 = bitcast i8* %t62 to i32*
    %t65 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t66 = load %Frame_block_typ*, %Frame_block_typ** %t65
    %t64 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t66, i32 0, i32 3
    %t63 = load i32, i32* %t64
    store i32 %t63, i32* %t61
    ; line 1258
    %t68 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t67 = load i8*, i8** %t68
    call void @P_enterid(i8* %t67)
    ; line 1259
    call void @P_insymbol()
    ; line 1260
    %t70 = load i32, i32* @sy
    %t69 = icmp eq i32 %t70, 16
    br i1 %t69, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1260
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 1260
    call void @P_error(i32 5)
    br label %L_endif_4
L_endif_4:
    ; line 1261
    %t72 = load i32, i32* @sy
    %t71 = icmp eq i32 %t72, 0
    br i1 %t71, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1262
    %t73 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t73)
    ; line 1263
    %t74 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t76 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 3
    %t75 = load i8*, i8** %t76
    %t77 = bitcast i8* %t75 to %T_identifier*
    %t79 = getelementptr inbounds %T_identifier, %T_identifier* %t77, i32 0, i32 24
    %t78 = bitcast i8* %t79 to i8**
    %t80 = load i8*, i8** %t78
    store i8* %t80, i8** %t74
    ; line 1264
    %t83 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t82 = load i8*, i8** %t83
    %t81 = icmp ne i32 %t82, null
    br i1 %t81, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1265
    %t85 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t84 = load i8*, i8** %t85
    %t87 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t88 = load %Frame_block_typ*, %Frame_block_typ** %t87
    %t86 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t88, i32 0, i32 3
    call void @P_align(i8* %t84, i32* %t86)
    ; line 1266
    %t90 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t89 = load i8*, i8** %t90
    %t91 = bitcast i8* %t89 to %T_identifier*
    %t93 = getelementptr inbounds %T_identifier, %T_identifier* %t91, i32 0, i32 44
    %t92 = bitcast i8* %t93 to i32*
    %t96 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t97 = load %Frame_block_typ*, %Frame_block_typ** %t96
    %t95 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t97, i32 0, i32 3
    %t94 = load i32, i32* %t95
    store i32 %t94, i32* %t92
    ; line 1267
    %t99 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t100 = load %Frame_block_typ*, %Frame_block_typ** %t99
    %t98 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t100, i32 0, i32 3
    %t104 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t105 = load %Frame_block_typ*, %Frame_block_typ** %t104
    %t103 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t105, i32 0, i32 3
    %t102 = load i32, i32* %t103
    %t107 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t106 = load i8*, i8** %t107
    %t108 = bitcast i8* %t106 to %T_structure*
    %t110 = getelementptr inbounds %T_structure, %T_structure* %t108, i32 0, i32 4
    %t109 = bitcast i8* %t110 to i32*
    %t111 = load i32, i32* %t109
    %t101 = add i32 %t102, %t111
    store i32 %t101, i32* %t98
    ; line 1268
    br label %L_OR_expr_7
L_OR_expr_7:
    %t115 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t114 = load i8*, i8** %t115
    %t116 = bitcast i8* %t114 to %T_structure*
    %t118 = getelementptr inbounds %T_structure, %T_structure* %t116, i32 0, i32 8
    %t117 = bitcast i8* %t118 to i32*
    %t119 = load i32, i32* %t117
    %t113 = icmp sle i32 %t119, 1
    br i1 %t113, label %L_OR_shortcut_7, label %L_OR_eval_7
L_OR_eval_7:
    %t120 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t121 = load %Frame_block_typ*, %Frame_block_typ** %t120
    %t122 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t121, i32 0, i32 12
    %t123 = load %Frame_block*, %Frame_block** %t122
    %t125 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t124 = load i8*, i8** %t125
    %t126 = call i1 @F_block_string(%Frame_block* %t123, i8* %t124)
    br label %L_OR_shortcut_7
L_OR_shortcut_7:
    %t112 = phi [%t126, %L_OR_eval_7], [true, %L_OR_expr_7]
    br i1 %t112, label %L_then_8, label %L_else_8
L_then_8:
    ; line 1269
    %t127 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t128 = load %Frame_block_typ*, %Frame_block_typ** %t127
    %t129 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t128, i32 0, i32 12
    %t130 = load %Frame_block*, %Frame_block** %t129
    %t131 = load i8*, i8** @realptr
    %t133 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t132 = load i8*, i8** %t133
    %t134 = call i1 @F_block_comptypes(%Frame_block* %t130, i8* %t131, i8* %t132)
    br i1 %t134, label %L_then_9, label %L_else_9
L_then_9:
    ; line 1269
    call void @P_error(i32 109)
    br label %L_endif_9
L_else_9:
    ; line 1270
    %t135 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t136 = load %Frame_block_typ*, %Frame_block_typ** %t135
    %t137 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t136, i32 0, i32 12
    %t138 = load %Frame_block*, %Frame_block** %t137
    %t140 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t139 = load i8*, i8** %t140
    %t141 = call i1 @F_block_string(%Frame_block* %t138, i8* %t139)
    br i1 %t141, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 1270
    call void @P_error(i32 399)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; line 1271
    %t143 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t142 = load i8*, i8** %t143
    %t144 = bitcast i8* %t142 to %T_identifier*
    %t146 = getelementptr inbounds %T_identifier, %T_identifier* %t144, i32 0, i32 24
    %t145 = bitcast i8* %t146 to i8**
    %t148 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t147 = load i8*, i8** %t148
    store i8* %t147, i8** %t145
    ; line 1271
    %t150 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t149 = load i8*, i8** %t150
    %t151 = bitcast i8* %t149 to %T_structure*
    %t153 = getelementptr inbounds %T_structure, %T_structure* %t151, i32 0, i32 16
    %t152 = bitcast i8* %t153 to i8**
    %t155 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 2
    %t154 = load i8*, i8** %t155
    store i8* %t154, i8** %t152
    ; nop
    br label %L_endif_8
L_else_8:
    ; line 1273
    call void @P_error(i32 110)
    br label %L_endif_8
L_endif_8:
    ; nop
    br label %L_endif_6
L_endif_6:
    ; line 1275
    call void @P_insymbol()
    ; nop
    br label %L_endif_5
L_else_5:
    ; line 1277
    call void @P_error(i32 2)
    ; line 1277
    %t156 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t157 = load %Frame_block_typ*, %Frame_block_typ** %t156
    %t158 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t157, i32 0, i32 12
    %t159 = load %Frame_block*, %Frame_block** %t158
    call void @P_block_skip(%Frame_block* %t159, %T_setofsys %.dummy_set)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_3
L_else_3:
    ; line 1279
    call void @P_error(i32 2)
    ; line 1279
    %t161 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t162 = load %Frame_block_typ*, %Frame_block_typ** %t161
    %t163 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t162, i32 0, i32 12
    %t164 = load %Frame_block*, %Frame_block** %t163
    call void @P_block_skip(%Frame_block* %t164, %T_setofsys %.dummy_set)
    br label %L_endif_3
L_endif_3:
    ; line 1280
    %t167 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t166 = load i8*, i8** %t167
    %t168 = bitcast i8* %t166 to %T_structure*
    %t170 = getelementptr inbounds %T_structure, %T_structure* %t168, i32 0, i32 4
    %t169 = bitcast i8* %t170 to i32*
    %t173 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t174 = load %Frame_block_typ*, %Frame_block_typ** %t173
    %t172 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t174, i32 0, i32 3
    %t171 = load i32, i32* %t172
    store i32 %t171, i32* %t169
    ; line 1281
    %t176 = load i32, i32* @sy
    %t175 = icmp eq i32 %t176, 42
    br i1 %t175, label %L_then_11, label %L_else_11
L_then_11:
    ; line 1281
    call void @P_insymbol()
    br label %L_endif_11
L_else_11:
    ; line 1281
    call void @P_error(i32 8)
    br label %L_endif_11
L_endif_11:
    ; line 1282
    %t177 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    store i8* null, i8** %t177
    ; line 1282
    %t178 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 12
    %t181 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t182 = load %Frame_block_typ*, %Frame_block_typ** %t181
    %t180 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t182, i32 0, i32 3
    %t179 = load i32, i32* %t180
    store i32 %t179, i32* %t178
    ; line 1282
    %t183 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 11
    %t186 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t187 = load %Frame_block_typ*, %Frame_block_typ** %t186
    %t185 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t187, i32 0, i32 3
    %t184 = load i32, i32* %t185
    store i32 %t184, i32* %t183
    ; line 1283
    ; line 1327
    %t189 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 15
    %t190 = load %Frame_block_typ*, %Frame_block_typ** %t189
    %t188 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t190, i32 0, i32 3
    %t192 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 11
    %t191 = load i32, i32* %t192
    store i32 %t191, i32* %t188
    ; line 1328
    %t194 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    %t193 = load i8*, i8** %t194
    %t195 = bitcast i8* %t193 to %T_structure*
    %t197 = getelementptr inbounds %T_structure, %T_structure* %t195, i32 0, i32 24
    %t196 = bitcast i8* %t197 to i8**
    %t199 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 6
    %t198 = load i8*, i8** %t199
    store i8* %t198, i8** %t196
    ; nop
    br label %L_endif_2
L_else_2:
    ; line 1330
    %t200 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 0
    %t201 = load i8**, i8*** %t200
    store i8* null, i8** %t201
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 1474
;================================================================================
; scope: block_labeldeclaration (level : 3)

; activation record
%Frame_block_labeldeclaration = type
{
    ; variables
    i32,    ; 0: lbname
    i8*,    ; 1: llp
    i1,    ; 2: redef

    ; slink
    %Frame_block*    ; 3
};

; procedure body
define void @P_block_labeldeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_labeldeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_labeldeclaration, %Frame_block_labeldeclaration* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 1477
    ; line 1501
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 13
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1501
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 1501
    call void @P_error(i32 14)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1504
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
    ; line 1507
    %t3 = load i32, i32* @sy
    %t2 = icmp ne i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1508
    call void @P_error(i32 2)
    ; line 1508
    %t4 = getelementptr inbounds %Frame_block_constdeclaration, %Frame_block_constdeclaration* %.frame, i32 0, i32 3
    %t5 = load %Frame_block*, %Frame_block** %t4
    call void @P_block_skip(%Frame_block* %t5, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 1509

    ; epilogue
    ret void
}


; line 1527
;================================================================================
; scope: block_typedeclaration (level : 3)

; activation record
%Frame_block_typedeclaration = type
{
    ; variables
    i8*,    ; 0: lcp
    i8*,    ; 1: lcp1
    i8*,    ; 2: lcp2
    i32,    ; 3: lsize
    i8*,    ; 4: lsp

    ; slink
    %Frame_block*    ; 5
};

; procedure body
define void @P_block_typedeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typedeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 5
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 1530
    %t3 = load i32, i32* @sy
    %t2 = icmp ne i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1531
    call void @P_error(i32 2)
    ; line 1531
    %t4 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 5
    %t5 = load %Frame_block*, %Frame_block** %t4
    call void @P_block_skip(%Frame_block* %t5, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 1532
    ; line 1561
    %t8 = load i8*, i8** @fwptr
    %t7 = icmp ne i32 %t8, null
    br i1 %t7, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1562
    call void @P_error(i32 117)
    ; line 1562
    %t9 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t9)
    ; line 1563
    ; line 1566
    %t10 = load i1, i1* @eol
    %t11 = icmp eq i1 0, %t10
    br i1 %t11, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1566
    %t12 = load %T_text, %T_text* @output
    %t14 = load i32, i32* @chcnt
    %t13 = add i32 %t14, 16
    call void @_WriteChar(i8* %t12, i32 %t13, i32 0, i8 32)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 1570
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

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_vardeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_vardeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 1572
    %t2 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 3
    store i8* null, i8** %t2
    ; line 1573
    ; line 1606
    %t4 = load i8*, i8** @fwptr
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1607
    call void @P_error(i32 117)
    ; line 1607
    %t5 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t5)
    ; line 1608
    ; line 1611
    %t6 = load i1, i1* @eol
    %t7 = icmp eq i1 0, %t6
    br i1 %t7, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1611
    %t8 = load %T_text, %T_text* @output
    %t10 = load i32, i32* @chcnt
    %t9 = add i32 %t10, 16
    call void @_WriteChar(i8* %t8, i32 %t9, i32 0, i8 32)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1615
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
    i8*,    ; 8: markp
    i32,    ; 9: oldlev
    i32,    ; 10: oldtop

    ; slink
    %Frame_block*    ; 11
};

; procedure body
define void @P_block_procdeclaration(%Frame_block* %.slink, i32 %fsy)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 11
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    store i32 %fsy, i32* %t2

    ; body
    ; line 1790
    %t3 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 6
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    ; line 1790
    store i32 5, i32* @lc
    ; line 1790
    %t5 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store i1 0, i1* %t5
    ; line 1791
    %t7 = load i32, i32* @sy
    %t6 = icmp eq i32 %t7, 0
    br i1 %t6, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1792
    %t8 = load i32, i32* @top
    %t9 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t8
    %t11 = getelementptr inbounds %T_record_10, %T_record_10* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    %t13 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    call void @P_searchsection(i8* %t12, i8** %t13)
    ; line 1793
    %t16 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t15 = load i8*, i8** %t16
    %t14 = icmp ne i32 %t15, null
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1795
    %t19 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t18 = load i8*, i8** %t19
    %t20 = bitcast i8* %t18 to %T_identifier*
    %t22 = getelementptr inbounds %T_identifier, %T_identifier* %t20, i32 0, i32 40
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t17 = icmp eq i32 %t23, 4
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1796
    %t24 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    br label %L_AND_expr_5
L_AND_expr_5:
    br label %L_AND_expr_4
L_AND_expr_4:
    %t28 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t27 = load i8*, i8** %t28
    %t29 = bitcast i8* %t27 to %T_identifier*
    %t31 = getelementptr inbounds %T_identifier, %T_identifier* %t29, i32 0, i32 60
    %t30 = bitcast i8* %t31 to i1*
    %t32 = load i1, i1* %t30
    br i1 %t32, label %L_AND_eval_4, label %L_AND_shortcut_4
L_AND_eval_4:
    %t35 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t34 = load i32, i32* %t35
    %t33 = icmp eq i32 %t34, 24
    br label %L_AND_shortcut_4
L_AND_shortcut_4:
    %t26 = phi [%t33, %L_AND_eval_4], [false, %L_AND_expr_4]
    br i1 %t26, label %L_AND_eval_5, label %L_AND_shortcut_5
L_AND_eval_5:
    %t38 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t37 = load i8*, i8** %t38
    %t39 = bitcast i8* %t37 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 56
    %t40 = bitcast i8* %t41 to i32*
    %t42 = load i32, i32* %t40
    %t36 = icmp eq i32 %t42, 0
    br label %L_AND_shortcut_5
L_AND_shortcut_5:
    %t25 = phi [%t36, %L_AND_eval_5], [false, %L_AND_expr_5]
    store i1 %t25, i1* %t24
    br label %L_endif_3
L_else_3:
    ; line 1798
    %t45 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t44 = load i8*, i8** %t45
    %t46 = bitcast i8* %t44 to %T_identifier*
    %t48 = getelementptr inbounds %T_identifier, %T_identifier* %t46, i32 0, i32 40
    %t47 = bitcast i8* %t48 to i32*
    %t49 = load i32, i32* %t47
    %t43 = icmp eq i32 %t49, 5
    br i1 %t43, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1799
    %t50 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    br label %L_AND_expr_8
L_AND_expr_8:
    br label %L_AND_expr_7
L_AND_expr_7:
    %t54 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t53 = load i8*, i8** %t54
    %t55 = bitcast i8* %t53 to %T_identifier*
    %t57 = getelementptr inbounds %T_identifier, %T_identifier* %t55, i32 0, i32 60
    %t56 = bitcast i8* %t57 to i1*
    %t58 = load i1, i1* %t56
    br i1 %t58, label %L_AND_eval_7, label %L_AND_shortcut_7
L_AND_eval_7:
    %t61 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t60 = load i32, i32* %t61
    %t59 = icmp eq i32 %t60, 22
    br label %L_AND_shortcut_7
L_AND_shortcut_7:
    %t52 = phi [%t59, %L_AND_eval_7], [false, %L_AND_expr_7]
    br i1 %t52, label %L_AND_eval_8, label %L_AND_shortcut_8
L_AND_eval_8:
    %t64 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t63 = load i8*, i8** %t64
    %t65 = bitcast i8* %t63 to %T_identifier*
    %t67 = getelementptr inbounds %T_identifier, %T_identifier* %t65, i32 0, i32 56
    %t66 = bitcast i8* %t67 to i32*
    %t68 = load i32, i32* %t66
    %t62 = icmp eq i32 %t68, 0
    br label %L_AND_shortcut_8
L_AND_shortcut_8:
    %t51 = phi [%t62, %L_AND_eval_8], [false, %L_AND_expr_8]
    store i1 %t51, i1* %t50
    br label %L_endif_6
L_else_6:
    ; line 1800
    %t69 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store i1 0, i1* %t69
    br label %L_endif_6
L_endif_6:
    br label %L_endif_3
L_endif_3:
    ; line 1801
    %t71 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t70 = load i1, i1* %t71
    %t72 = icmp eq i1 0, %t70
    br i1 %t72, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 1801
    call void @P_error(i32 160)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_2
L_endif_2:
    ; line 1803
    %t74 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t73 = load i1, i1* %t74
    %t75 = icmp eq i1 0, %t73
    br i1 %t75, label %L_then_10, label %L_else_10
L_then_10:
    ; line 1805
    %t78 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t77 = load i32, i32* %t78
    %t76 = icmp eq i32 %t77, 24
    br i1 %t76, label %L_then_11, label %L_else_11
L_then_11:
    ; line 1805
    br label %L_endif_11
L_else_11:
    ; line 1806
    br label %L_endif_11
L_endif_11:
    ; line 1808
    %t80 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t79 = load i8*, i8** %t80
    %t81 = bitcast i8* %t79 to %T_identifier*
    %t83 = getelementptr inbounds %T_identifier, %T_identifier* %t81, i32 0, i32 0
    %t82 = bitcast i8* %t83 to %T_alpha*
    %t84 = load %T_alpha, %T_alpha* @id
    store %T_alpha %t84, %T_alpha* %t82
    ; line 1808
    %t86 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t85 = load i8*, i8** %t86
    %t87 = bitcast i8* %t85 to %T_identifier*
    %t89 = getelementptr inbounds %T_identifier, %T_identifier* %t87, i32 0, i32 24
    %t88 = bitcast i8* %t89 to i8**
    store i8* null, i8** %t88
    ; line 1809
    %t91 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t90 = load i8*, i8** %t91
    %t92 = bitcast i8* %t90 to %T_identifier*
    %t94 = getelementptr inbounds %T_identifier, %T_identifier* %t92, i32 0, i32 61
    %t93 = bitcast i8* %t94 to i1*
    store i1 0, i1* %t93
    ; line 1809
    %t96 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t95 = load i8*, i8** %t96
    %t97 = bitcast i8* %t95 to %T_identifier*
    %t99 = getelementptr inbounds %T_identifier, %T_identifier* %t97, i32 0, i32 48
    %t98 = bitcast i8* %t99 to i32*
    %t100 = load i32, i32* @level
    store i32 %t100, i32* %t98
    ; line 1809
    %t101 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t101)
    ; line 1810
    %t103 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t102 = load i8*, i8** %t103
    %t104 = bitcast i8* %t102 to %T_identifier*
    %t106 = getelementptr inbounds %T_identifier, %T_identifier* %t104, i32 0, i32 44
    %t105 = bitcast i8* %t106 to i32*
    store i32 1, i32* %t105
    ; line 1810
    %t108 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t107 = load i8*, i8** %t108
    %t109 = bitcast i8* %t107 to %T_identifier*
    %t111 = getelementptr inbounds %T_identifier, %T_identifier* %t109, i32 0, i32 56
    %t110 = bitcast i8* %t111 to i32*
    store i32 0, i32* %t110
    ; line 1810
    %t113 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t112 = load i8*, i8** %t113
    %t114 = bitcast i8* %t112 to %T_identifier*
    %t116 = getelementptr inbounds %T_identifier, %T_identifier* %t114, i32 0, i32 52
    %t115 = bitcast i8* %t116 to i32*
    %t118 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 2
    %t117 = load i32, i32* %t118
    store i32 %t117, i32* %t115
    ; line 1811
    %t121 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t120 = load i32, i32* %t121
    %t119 = icmp eq i32 %t120, 24
    br i1 %t119, label %L_then_12, label %L_else_12
L_then_12:
    ; line 1811
    %t123 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t122 = load i8*, i8** %t123
    %t124 = bitcast i8* %t122 to %T_identifier*
    %t126 = getelementptr inbounds %T_identifier, %T_identifier* %t124, i32 0, i32 40
    %t125 = bitcast i8* %t126 to i32*
    store i32 4, i32* %t125
    br label %L_endif_12
L_else_12:
    ; line 1812
    %t128 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t127 = load i8*, i8** %t128
    %t129 = bitcast i8* %t127 to %T_identifier*
    %t131 = getelementptr inbounds %T_identifier, %T_identifier* %t129, i32 0, i32 40
    %t130 = bitcast i8* %t131 to i32*
    store i32 5, i32* %t130
    br label %L_endif_12
L_endif_12:
    ; line 1814
    %t133 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t132 = load i8*, i8** %t133
    call void @P_enterid(i8* %t132)
    br label %L_endif_10
L_else_10:
    ; line 1817
    %t134 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t136 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t135 = load i8*, i8** %t136
    %t137 = bitcast i8* %t135 to %T_identifier*
    %t139 = getelementptr inbounds %T_identifier, %T_identifier* %t137, i32 0, i32 32
    %t138 = bitcast i8* %t139 to i8**
    %t140 = load i8*, i8** %t138
    store i8* %t140, i8** %t134
    ; line 1818
    br label %L_endif_10
L_endif_10:
    ; line 1829
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 1832
    call void @P_error(i32 2)
    ; line 1832
    %t141 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t142 = load i8*, i8** @ufctptr
    store i8* %t142, i8** %t141
    br label %L_endif_1
L_endif_1:
    ; line 1833
    %t143 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t144 = load i32, i32* @level
    store i32 %t144, i32* %t143
    ; line 1833
    %t145 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t146 = load i32, i32* @top
    store i32 %t146, i32* %t145
    ; line 1834
    %t148 = load i32, i32* @level
    %t147 = icmp slt i32 %t148, 10
    br i1 %t147, label %L_then_13, label %L_else_13
L_then_13:
    ; line 1834
    %t150 = load i32, i32* @level
    %t149 = add i32 %t150, 1
    store i32 %t149, i32* @level
    br label %L_endif_13
L_else_13:
    ; line 1834
    call void @P_error(i32 251)
    br label %L_endif_13
L_endif_13:
    ; line 1835
    %t152 = load i32, i32* @top
    %t151 = icmp slt i32 %t152, 20
    br i1 %t151, label %L_then_14, label %L_else_14
L_then_14:
    ; line 1836
    %t154 = load i32, i32* @top
    %t153 = add i32 %t154, 1
    store i32 %t153, i32* @top
    ; line 1839
    %t156 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t155 = load i1, i1* %t156
    br i1 %t155, label %L_then_15, label %L_else_15
L_then_15:
    ; line 1839
    %t157 = load i32, i32* @top
    %t158 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t157
    %t160 = getelementptr inbounds %T_record_10, %T_record_10* %t158, i32 0, i32 0
    %t159 = bitcast i8* %t160 to i8**
    %t162 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t161 = load i8*, i8** %t162
    %t163 = bitcast i8* %t161 to %T_identifier*
    %t165 = getelementptr inbounds %T_identifier, %T_identifier* %t163, i32 0, i32 32
    %t164 = bitcast i8* %t165 to i8**
    %t166 = load i8*, i8** %t164
    store i8* %t166, i8** %t159
    br label %L_endif_15
L_else_15:
    ; line 1840
    %t167 = load i32, i32* @top
    %t168 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t167
    %t170 = getelementptr inbounds %T_record_10, %T_record_10* %t168, i32 0, i32 0
    %t169 = bitcast i8* %t170 to i8**
    store i8* null, i8** %t169
    br label %L_endif_15
L_endif_15:
    ; line 1841
    %t171 = load i32, i32* @top
    %t172 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t171
    %t174 = getelementptr inbounds %T_record_10, %T_record_10* %t172, i32 0, i32 8
    %t173 = bitcast i8* %t174 to i8**
    store i8* null, i8** %t173
    ; line 1842
    %t175 = load i32, i32* @top
    %t176 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t175
    %t178 = getelementptr inbounds %T_record_10, %T_record_10* %t176, i32 0, i32 16
    %t177 = bitcast i8* %t178 to i32*
    store i32 0, i32* %t177
    br label %L_endif_14
L_else_14:
    ; line 1845
    call void @P_error(i32 250)
    br label %L_endif_14
L_endif_14:
    ; line 1846
    %t181 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t180 = load i32, i32* %t181
    %t179 = icmp eq i32 %t180, 24
    br i1 %t179, label %L_then_16, label %L_else_16
L_then_16:
    ; line 1847
    %t182 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    call void @P_block_procdeclaration_parameterlist(%Frame_block_procdeclaration* %.frame, %T_setofsys %.dummy_set, i8** %t182)
    ; line 1848
    %t184 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t183 = load i1, i1* %t184
    %t185 = icmp eq i1 0, %t183
    br i1 %t185, label %L_then_17, label %L_endif_17
L_then_17:
    ; line 1848
    %t187 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t186 = load i8*, i8** %t187
    %t188 = bitcast i8* %t186 to %T_identifier*
    %t190 = getelementptr inbounds %T_identifier, %T_identifier* %t188, i32 0, i32 32
    %t189 = bitcast i8* %t190 to i8**
    %t192 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t191 = load i8*, i8** %t192
    store i8* %t191, i8** %t189
    br label %L_endif_17
L_endif_17:
    br label %L_endif_16
L_else_16:
    ; line 1851
    %t193 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    call void @P_block_procdeclaration_parameterlist(%Frame_block_procdeclaration* %.frame, %T_setofsys %.dummy_set, i8** %t193)
    ; line 1852
    %t195 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t194 = load i1, i1* %t195
    %t196 = icmp eq i1 0, %t194
    br i1 %t196, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 1852
    %t198 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t197 = load i8*, i8** %t198
    %t199 = bitcast i8* %t197 to %T_identifier*
    %t201 = getelementptr inbounds %T_identifier, %T_identifier* %t199, i32 0, i32 32
    %t200 = bitcast i8* %t201 to i8**
    %t203 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t202 = load i8*, i8** %t203
    store i8* %t202, i8** %t200
    br label %L_endif_18
L_endif_18:
    ; line 1853
    %t205 = load i32, i32* @sy
    %t204 = icmp eq i32 %t205, 16
    br i1 %t204, label %L_then_19, label %L_else_19
L_then_19:
    ; line 1854
    call void @P_insymbol()
    ; line 1855
    %t207 = load i32, i32* @sy
    %t206 = icmp eq i32 %t207, 0
    br i1 %t206, label %L_then_20, label %L_else_20
L_then_20:
    ; line 1856
    %t209 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t208 = load i1, i1* %t209
    br i1 %t208, label %L_then_21, label %L_endif_21
L_then_21:
    ; line 1856
    call void @P_error(i32 122)
    br label %L_endif_21
L_endif_21:
    ; line 1857
    %t210 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t210)
    ; line 1858
    %t211 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 7
    %t213 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 5
    %t212 = load i8*, i8** %t213
    %t214 = bitcast i8* %t212 to %T_identifier*
    %t216 = getelementptr inbounds %T_identifier, %T_identifier* %t214, i32 0, i32 24
    %t215 = bitcast i8* %t216 to i8**
    %t217 = load i8*, i8** %t215
    store i8* %t217, i8** %t211
    ; line 1859
    %t219 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t218 = load i8*, i8** %t219
    %t220 = bitcast i8* %t218 to %T_identifier*
    %t222 = getelementptr inbounds %T_identifier, %T_identifier* %t220, i32 0, i32 24
    %t221 = bitcast i8* %t222 to i8**
    %t224 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 7
    %t223 = load i8*, i8** %t224
    store i8* %t223, i8** %t221
    ; line 1860
    %t227 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 7
    %t226 = load i8*, i8** %t227
    %t225 = icmp ne i32 %t226, null
    br i1 %t225, label %L_then_22, label %L_endif_22
L_then_22:
    ; line 1861
    %t229 = icmp eq i1 0, true
    br i1 %t229, label %L_then_23, label %L_endif_23
L_then_23:
    ; line 1862
    call void @P_error(i32 120)
    ; line 1862
    %t231 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t230 = load i8*, i8** %t231
    %t232 = bitcast i8* %t230 to %T_identifier*
    %t234 = getelementptr inbounds %T_identifier, %T_identifier* %t232, i32 0, i32 24
    %t233 = bitcast i8* %t234 to i8**
    store i8* null, i8** %t233
    br label %L_endif_23
L_endif_23:
    br label %L_endif_22
L_endif_22:
    ; line 1863
    call void @P_insymbol()
    br label %L_endif_20
L_else_20:
    ; line 1865
    call void @P_error(i32 2)
    ; line 1865
    %t235 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 11
    %t236 = load %Frame_block*, %Frame_block** %t235
    call void @P_block_skip(%Frame_block* %t236, %T_setofsys %.dummy_set)
    br label %L_endif_20
L_endif_20:
    br label %L_endif_19
L_else_19:
    ; line 1868
    %t239 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t238 = load i1, i1* %t239
    %t240 = icmp eq i1 0, %t238
    br i1 %t240, label %L_then_24, label %L_endif_24
L_then_24:
    ; line 1868
    call void @P_error(i32 123)
    br label %L_endif_24
L_endif_24:
    br label %L_endif_19
L_endif_19:
    br label %L_endif_16
L_endif_16:
    ; line 1870
    %t242 = load i32, i32* @sy
    %t241 = icmp eq i32 %t242, 13
    br i1 %t241, label %L_then_25, label %L_else_25
L_then_25:
    ; line 1870
    call void @P_insymbol()
    br label %L_endif_25
L_else_25:
    ; line 1870
    call void @P_error(i32 14)
    br label %L_endif_25
L_endif_25:
    ; line 1871
    %t244 = load i32, i32* @sy
    %t243 = icmp eq i32 %t244, 30
    br i1 %t243, label %L_then_26, label %L_else_26
L_then_26:
    ; line 1873
    %t246 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t245 = load i1, i1* %t246
    br i1 %t245, label %L_then_27, label %L_else_27
L_then_27:
    ; line 1873
    call void @P_error(i32 161)
    br label %L_endif_27
L_else_27:
    ; line 1874
    %t248 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t247 = load i8*, i8** %t248
    %t249 = bitcast i8* %t247 to %T_identifier*
    %t251 = getelementptr inbounds %T_identifier, %T_identifier* %t249, i32 0, i32 60
    %t250 = bitcast i8* %t251 to i1*
    store i1 1, i1* %t250
    br label %L_endif_27
L_endif_27:
    ; line 1875
    call void @P_insymbol()
    ; line 1876
    %t253 = load i32, i32* @sy
    %t252 = icmp eq i32 %t253, 13
    br i1 %t252, label %L_then_28, label %L_else_28
L_then_28:
    ; line 1876
    call void @P_insymbol()
    br label %L_endif_28
L_else_28:
    ; line 1876
    call void @P_error(i32 14)
    br label %L_endif_28
L_endif_28:
    ; line 1877
    %t255 = icmp eq i1 0, true
    br i1 %t255, label %L_then_29, label %L_endif_29
L_then_29:
    ; line 1878
    call void @P_error(i32 6)
    ; line 1878
    %t256 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 11
    %t257 = load %Frame_block*, %Frame_block** %t256
    %t260 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 11
    %t261 = load %Frame_block*, %Frame_block** %t260
    %t259 = getelementptr inbounds %Frame_block, %Frame_block* %t261, i32 0, i32 2
    %t258 = load %T_setofsys, %T_setofsys* %t259
    call void @P_block_skip(%Frame_block* %t257, %T_setofsys %t258)
    br label %L_endif_29
L_endif_29:
    br label %L_endif_26
L_else_26:
    ; line 1881
    %t263 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 4
    %t262 = load i8*, i8** %t263
    %t264 = bitcast i8* %t262 to %T_identifier*
    %t266 = getelementptr inbounds %T_identifier, %T_identifier* %t264, i32 0, i32 60
    %t265 = bitcast i8* %t266 to i1*
    store i1 0, i1* %t265
    ; line 1881
    %t267 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 8
    call void @P_mark(i8** %t267)
    ; line 1882
    ; line 1890
    %t269 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 8
    %t268 = load i8*, i8** %t269
    call void @P_release(i8* %t268)
    ; nop
    br label %L_endif_26
L_endif_26:
    ; line 1892
    %t271 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t270 = load i32, i32* %t271
    store i32 %t270, i32* @level
    ; line 1892
    %t273 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t272 = load i32, i32* %t273
    store i32 %t272, i32* @top
    ; line 1892
    %t275 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 6
    %t274 = load i32, i32* %t275
    store i32 %t274, i32* @lc
    ; nop

    ; epilogue
    ret void
}


; line 1620
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
    i32,    ; 7: lkind
    i32,    ; 8: llc
    i32,    ; 9: lsize
    i8*,    ; 10: lsp

    ; slink
    %Frame_block_procdeclaration*    ; 11
};

; procedure body
define void @P_block_procdeclaration_parameterlist(%Frame_block_procdeclaration* %.slink, %T_setofsys %fsy, i8** %fpar)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration_parameterlist, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 11
    store %Frame_block_procdeclaration* %.slink, %Frame_block_procdeclaration** %t1
    %t2 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 0
    store i8** %fpar, i8*** %t2
    %t3 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 1
    store %T_setofsys %fsy, %T_setofsys* %t3

    ; body
    ; line 1623
    %t4 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 4
    store i8* null, i8** %t4
    ; line 1624
    %t6 = icmp eq i1 0, true
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1625
    call void @P_error(i32 7)
    ; line 1625
    %t7 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 11
    %t8 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t7
    %t9 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t8, i32 0, i32 11
    %t10 = load %Frame_block*, %Frame_block** %t9
    call void @P_block_skip(%Frame_block* %t10, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 1626
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 8
    br i1 %t12, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1627
    %t16 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 11
    %t17 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t16
    %t15 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t17, i32 0, i32 1
    %t14 = load i1, i1* %t15
    br i1 %t14, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1627
    call void @P_error(i32 119)
    br label %L_endif_3
L_endif_3:
    ; line 1628
    call void @P_insymbol()
    ; line 1629
    %t19 = icmp eq i1 0, true
    br i1 %t19, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1630
    call void @P_error(i32 7)
    ; line 1630
    %t20 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 11
    %t21 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t20
    %t22 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t21, i32 0, i32 11
    %t23 = load %Frame_block*, %Frame_block** %t22
    call void @P_block_skip(%Frame_block* %t23, %T_setofsys %.dummy_set)
    br label %L_endif_4
L_endif_4:
    ; line 1631
    ; line 1763
    %t26 = load i32, i32* @sy
    %t25 = icmp eq i32 %t26, 9
    br i1 %t25, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1764
    call void @P_insymbol()
    ; line 1765
    %t28 = icmp eq i1 0, true
    br i1 %t28, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1766
    call void @P_error(i32 6)
    ; line 1766
    %t29 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 11
    %t30 = load %Frame_block_procdeclaration*, %Frame_block_procdeclaration** %t29
    %t31 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %t30, i32 0, i32 11
    %t32 = load %Frame_block*, %Frame_block** %t31
    call void @P_block_skip(%Frame_block* %t32, %T_setofsys true)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 1768
    call void @P_error(i32 4)
    br label %L_endif_5
L_endif_5:
    ; line 1769
    %t34 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 6
    store i8* null, i8** %t34
    ; line 1772
    ; line 1784
    %t35 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 0
    %t36 = load i8**, i8*** %t35
    %t38 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 6
    %t37 = load i8*, i8** %t38
    store i8* %t37, i8** %t36
    br label %L_endif_2
L_else_2:
    ; line 1786
    %t39 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 0
    %t40 = load i8**, i8*** %t39
    store i8* null, i8** %t40
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 1895
;================================================================================
; scope: block_body (level : 3)

; types
%T_block_body_array_38 = type [65 x i8*]

; activation record
%Frame_block_body = type
{
    ; parameters
    %T_setofsys,    ; 0: fsys

    ; variables
    %T_block_body_array_38,    ; 1: cstptr
    i32,    ; 2: cstptrix
    i32,    ; 3: entname
    i32,    ; 4: lcmax
    i8*,    ; 5: lcp
    i32,    ; 6: llc1
    i8*,    ; 7: llcp
    i8*,    ; 8: llp
    %T_alpha,    ; 9: saveid
    i32,    ; 10: segsize
    i32,    ; 11: stacktop
    i32,    ; 12: topmax
    i32,    ; 13: topnew

    ; slink
    %Frame_block*    ; 14
};

; procedure body
define void @P_block_body(%Frame_block* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body, align 8
    %t1 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 3557
    %t6 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t5 = getelementptr inbounds %Frame_block, %Frame_block* %t7, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3557
    %t8 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t11 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t12 = load %Frame_block*, %Frame_block** %t11
    %t10 = getelementptr inbounds %Frame_block, %Frame_block* %t12, i32 0, i32 0
    %t9 = load i8*, i8** %t10
    %t13 = bitcast i8* %t9 to %T_identifier*
    %t15 = getelementptr inbounds %T_identifier, %T_identifier* %t13, i32 0, i32 52
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    store i32 %t16, i32* %t8
    br label %L_endif_1
L_else_1:
    ; line 3558
    %t17 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    call void @P_genlabel(i32* %t17)
    br label %L_endif_1
L_endif_1:
    ; line 3559
    %t18 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 2
    store i32 0, i32* %t18
    ; line 3559
    %t19 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 13
    store i32 5, i32* %t19
    ; line 3559
    %t20 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    store i32 5, i32* %t20
    ; line 3560
    %t22 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t21 = load i32, i32* %t22
    call void @P_block_body_putlabel(%Frame_block_body* %.frame, i32 %t21)
    ; line 3560
    %t23 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    call void @P_genlabel(i32* %t23)
    ; line 3560
    %t24 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    call void @P_genlabel(i32* %t24)
    ; line 3561
    %t26 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    %t25 = load i32, i32* %t26
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 32, i32 1, i32 %t25)
    ; line 3561
    %t28 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t27 = load i32, i32* %t28
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 32, i32 2, i32 %t27)
    ; line 3562
    %t32 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t33 = load %Frame_block*, %Frame_block** %t32
    %t31 = getelementptr inbounds %Frame_block, %Frame_block* %t33, i32 0, i32 0
    %t30 = load i8*, i8** %t31
    %t29 = icmp ne i32 %t30, null
    br i1 %t29, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3563
    %t34 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 6
    store i32 5, i32* %t34
    ; line 3564
    %t35 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 5
    %t38 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t39 = load %Frame_block*, %Frame_block** %t38
    %t37 = getelementptr inbounds %Frame_block, %Frame_block* %t39, i32 0, i32 0
    %t36 = load i8*, i8** %t37
    %t40 = bitcast i8* %t36 to %T_identifier*
    %t42 = getelementptr inbounds %T_identifier, %T_identifier* %t40, i32 0, i32 32
    %t41 = bitcast i8* %t42 to i8**
    %t43 = load i8*, i8** %t41
    store i8* %t43, i8** %t35
    ; line 3565
    ; nop
    br label %L_endif_2
L_endif_2:
    ; line 3585
    %t44 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 4
    %t45 = load i32, i32* @lc
    store i32 %t45, i32* %t44
    ; line 3586
    ; line 3592
    %t47 = load i32, i32* @sy
    %t46 = icmp eq i32 %t47, 39
    br i1 %t46, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3592
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 3592
    call void @P_error(i32 13)
    br label %L_endif_3
L_endif_3:
    ; line 3593
    %t48 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 8
    %t49 = load i32, i32* @top
    %t50 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t49
    %t52 = getelementptr inbounds %T_record_10, %T_record_10* %t50, i32 0, i32 8
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** %t51
    store i8* %t53, i8** %t48
    ; line 3594
    ; line 3604
    %t57 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
    %t58 = load %Frame_block*, %Frame_block** %t57
    %t56 = getelementptr inbounds %Frame_block, %Frame_block* %t58, i32 0, i32 0
    %t55 = load i8*, i8** %t56
    %t54 = icmp ne i32 %t55, null
    br i1 %t54, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3606
    %t62 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
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
    ; line 3606
    call void @P_block_body_gen1(%Frame_block_body* %.frame, i32 42, i32 %.dummy.intrin)
    br label %L_endif_5
L_else_5:
    ; line 3607
    %t70 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 14
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
    ; line 3608
    %t76 = load i8*, i8** @parmptr
    %t77 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 4
    call void @P_align(i8* %t76, i32* %t77)
    ; line 3609
    %t78 = load i1, i1* @prcode
    br i1 %t78, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 3610
    %t79 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t79, i32 0, i32 0, i8 108)
    %t81 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    %t80 = load i32, i32* %t81
    call void @_WriteInteger(i8* %t79, i32 4, i32 0, i32 %t80)
    call void @_WriteChar(i8* %t79, i32 0, i32 0, i8 61)
    %t83 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 4
    %t82 = load i32, i32* %t83
    call void @_WriteInteger(i8* %t79, i32 0, i32 0, i32 %t82)
    call void @_WriteLn(i8* %t79)
    ; line 3611
    %t84 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t84, i32 0, i32 0, i8 108)
    %t86 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t85 = load i32, i32* %t86
    call void @_WriteInteger(i8* %t84, i32 4, i32 0, i32 %t85)
    call void @_WriteChar(i8* %t84, i32 0, i32 0, i8 61)
    %t88 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    %t87 = load i32, i32* %t88
    call void @_WriteInteger(i8* %t84, i32 0, i32 0, i32 %t87)
    call void @_WriteLn(i8* %t84)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_4
L_else_4:
    ; line 3615
    call void @P_block_body_gen1(%Frame_block_body* %.frame, i32 42, i32 %.dummy.intrin)
    ; line 3616
    %t89 = load i8*, i8** @parmptr
    %t90 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 4
    call void @P_align(i8* %t89, i32* %t90)
    ; line 3617
    %t91 = load i1, i1* @prcode
    br i1 %t91, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3618
    %t92 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t92, i32 0, i32 0, i8 108)
    %t94 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    %t93 = load i32, i32* %t94
    call void @_WriteInteger(i8* %t92, i32 4, i32 0, i32 %t93)
    call void @_WriteChar(i8* %t92, i32 0, i32 0, i8 61)
    %t96 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 4
    %t95 = load i32, i32* %t96
    call void @_WriteInteger(i8* %t92, i32 0, i32 0, i32 %t95)
    call void @_WriteLn(i8* %t92)
    ; line 3619
    %t97 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t97, i32 0, i32 0, i8 108)
    %t99 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t98 = load i32, i32* %t99
    call void @_WriteInteger(i8* %t97, i32 4, i32 0, i32 %t98)
    call void @_WriteChar(i8* %t97, i32 0, i32 0, i8 61)
    %t101 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    %t100 = load i32, i32* %t101
    call void @_WriteInteger(i8* %t97, i32 0, i32 0, i32 %t100)
    call void @_WriteLn(i8* %t97)
    ; line 3620
    %t102 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t102, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t102)
    br label %L_endif_7
L_endif_7:
    ; line 3622
    store i32 0, i32* @ic
    ; line 3625
    call void @P_block_body_gen1(%Frame_block_body* %.frame, i32 41, i32 0)
    ; line 3625
    %t104 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t103 = load i32, i32* %t104
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 46, i32 0, i32 %t103)
    ; line 3625
    call void @P_block_body_gen0(%Frame_block_body* %.frame, i32 29)
    ; line 3626
    %t105 = load i1, i1* @prcode
    br i1 %t105, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 3627
    %t106 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t106, i32 0, i32 0, i8 113)
    call void @_WriteLn(i8* %t106)
    br label %L_endif_8
L_endif_8:
    ; line 3628
    %t107 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 9
    %t108 = load %T_alpha, %T_alpha* @id
    store %T_alpha %t108, %T_alpha* %t107
    ; line 3629
    ; line 3646
    %t110 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 9
    %t109 = load %T_alpha, %T_alpha* %t110
    store %T_alpha %t109, %T_alpha* @id
    ; line 3647
    %t111 = load i1, i1* @prtables
    br i1 %t111, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 3648
    %t112 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t112)
    ; line 3648
    call void @P_printtables(i1 1)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_4
L_endif_4:
    ; nop

    ; epilogue
    ret void
}


; line 1912
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
    ; line 1913
    %t4 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t5 = load %Frame_block_body*, %Frame_block_body** %t4
    %t3 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t5, i32 0, i32 13
    %t9 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    %t8 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t10, i32 0, i32 13
    %t7 = load i32, i32* %t8
    %t13 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 0
    %t12 = load i32, i32* %t13
    %t14 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 %t12
    %t15 = load i32, i32* %t14
    %t11 = mul i32 %t15, 1
    %t6 = add i32 %t7, %t11
    store i32 %t6, i32* %t3
    ; line 1914
    %t19 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t20 = load %Frame_block_body*, %Frame_block_body** %t19
    %t18 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t20, i32 0, i32 13
    %t17 = load i32, i32* %t18
    %t23 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    %t22 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t24, i32 0, i32 12
    %t21 = load i32, i32* %t22
    %t16 = icmp sgt i32 %t17, %t21
    br i1 %t16, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1914
    %t26 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    %t25 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t27, i32 0, i32 12
    %t30 = getelementptr inbounds %Frame_block_body_mes, %Frame_block_body_mes* %.frame, i32 0, i32 1
    %t31 = load %Frame_block_body*, %Frame_block_body** %t30
    %t29 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t31, i32 0, i32 13
    %t28 = load i32, i32* %t29
    store i32 %t28, i32* %t25
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1917
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
    ; line 1918
    %t4 = load i32, i32* @ic
    %t3 = srem i32 %t4, 10
    %t2 = icmp eq i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1918
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


; line 1920
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
    ; line 1922
    %t3 = load i1, i1* @prcode
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1922
    %t4 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 1
    %t5 = load %Frame_block_body*, %Frame_block_body** %t4
    call void @P_block_body_putic(%Frame_block_body* %t5)
    ; line 1922
    %t6 = load %T_text, %T_text* @prr
    %t8 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t7
    call void @_WriteString(i8* %t6, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t9, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t6)
    br label %L_endif_1
L_endif_1:
    ; line 1923
    %t11 = load i32, i32* @ic
    %t10 = add i32 %t11, 1
    store i32 %t10, i32* @ic
    ; line 1923
    %t12 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 1
    %t13 = load %Frame_block_body*, %Frame_block_body** %t12
    %t15 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    call void @P_block_body_mes(%Frame_block_body* %t13, i32 %t14)

    ; epilogue
    ret void
}


; line 1926
;================================================================================
; scope: block_body_gen1 (level : 4)

; activation record
%Frame_block_body_gen1 = type
{
    ; parameters
    i32,    ; 0: fop
    i32,    ; 1: fp2

    ; variables
    i32,    ; 2: k

    ; slink
    %Frame_block_body*    ; 3
};

; procedure body
define void @P_block_body_gen1(%Frame_block_body* %.slink, i32 %fop, i32 %fp2)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_gen1, align 8
    %t1 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    store %Frame_block_body* %.slink, %Frame_block_body** %t1
    %t2 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    store i32 %fop, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    store i32 %fp2, i32* %t3

    ; body
    ; line 1929
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1930
    %t5 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 1930
    %t7 = load %T_text, %T_text* @prr
    %t9 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t8
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t10, i32 0, i32 0), i32 4)
    ; line 1931
    %t13 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t12 = load i32, i32* %t13
    %t11 = icmp eq i32 %t12, 30
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1932
    %t14 = load %T_text, %T_text* @prr
    %t16 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 %t15
    call void @_WriteString(i8* %t14, i32 12, i32 0, i8* getelementptr inbounds (%T_array_28, %T_array_28* %t17, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t14)
    ; line 1933
    %t19 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t20 = load %Frame_block_body*, %Frame_block_body** %t19
    %t18 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t20, i32 0, i32 13
    %t24 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    %t23 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t25, i32 0, i32 13
    %t22 = load i32, i32* %t23
    %t28 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t27 = load i32, i32* %t28
    %t29 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 %t27
    %t30 = load i32, i32* %t29
    %t26 = mul i32 %t30, 1
    %t21 = add i32 %t22, %t26
    store i32 %t21, i32* %t18
    ; line 1934
    %t34 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t35 = load %Frame_block_body*, %Frame_block_body** %t34
    %t33 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t35, i32 0, i32 13
    %t32 = load i32, i32* %t33
    %t38 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t39 = load %Frame_block_body*, %Frame_block_body** %t38
    %t37 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t39, i32 0, i32 12
    %t36 = load i32, i32* %t37
    %t31 = icmp sgt i32 %t32, %t36
    br i1 %t31, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1934
    %t41 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t42 = load %Frame_block_body*, %Frame_block_body** %t41
    %t40 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t42, i32 0, i32 12
    %t45 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t46 = load %Frame_block_body*, %Frame_block_body** %t45
    %t44 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t46, i32 0, i32 13
    %t43 = load i32, i32* %t44
    store i32 %t43, i32* %t40
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_else_2:
    ; line 1938
    %t49 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t48 = load i32, i32* %t49
    %t47 = icmp eq i32 %t48, 38
    br i1 %t47, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1939
    %t50 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t50, i32 0, i32 0, i8 39)
    ; line 1942
    ; line 1943
    ; nop
    ; line 1945
    %t51 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t51, i32 0, i32 0, i8 39)
    call void @_WriteLn(i8* %t51)
    br label %L_endif_4
L_else_4:
    ; line 1947
    %t54 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t53 = load i32, i32* %t54
    %t52 = icmp eq i32 %t53, 42
    br i1 %t52, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1947
    %t55 = load %T_text, %T_text* @prr
    call void @_WriteChar(i8* %t55, i32 0, i32 0, i8 %.dummy.intrin)
    call void @_WriteLn(i8* %t55)
    br label %L_endif_5
L_else_5:
    ; line 1948
    %t56 = load %T_text, %T_text* @prr
    %t58 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 1
    %t57 = load i32, i32* %t58
    call void @_WriteInteger(i8* %t56, i32 12, i32 0, i32 %t57)
    call void @_WriteLn(i8* %t56)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 1949
    %t59 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 3
    %t60 = load %Frame_block_body*, %Frame_block_body** %t59
    %t62 = getelementptr inbounds %Frame_block_body_gen1, %Frame_block_body_gen1* %.frame, i32 0, i32 0
    %t61 = load i32, i32* %t62
    call void @P_block_body_mes(%Frame_block_body* %t60, i32 %t61)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 1952
    %t64 = load i32, i32* @ic
    %t63 = add i32 %t64, 1
    store i32 %t63, i32* @ic

    ; epilogue
    ret void
}


; line 1955
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
    ; line 1958
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1959
    %t6 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 4
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 1959
    %t8 = load %T_text, %T_text* @prr
    %t10 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t9
    call void @_WriteString(i8* %t8, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t11, i32 0, i32 0), i32 4)
    ; line 1960
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 1988
    %t13 = load i32, i32* @ic
    %t12 = add i32 %t13, 1
    store i32 %t12, i32* @ic
    ; line 1988
    %t14 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 4
    %t15 = load %Frame_block_body*, %Frame_block_body** %t14
    %t17 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 0
    %t16 = load i32, i32* %t17
    call void @P_block_body_mes(%Frame_block_body* %t15, i32 %t16)

    ; epilogue
    ret void
}


; line 1991
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
    ; line 1993
    %t5 = getelementptr inbounds %Frame_block_body_gentypindicator, %Frame_block_body_gentypindicator* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1995
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2012
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
    ; line 2014
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2015
    %t5 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 2016
    %t7 = load %T_text, %T_text* @prr
    %t9 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t8
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t10, i32 0, i32 0), i32 4)
    ; line 2017
    %t11 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t12 = load %Frame_block_body*, %Frame_block_body** %t11
    %t14 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 1
    %t13 = load i8*, i8** %t14
    call void @P_block_body_gentypindicator(%Frame_block_body* %t12, i8* %t13)
    ; line 2018
    %t15 = load %T_text, %T_text* @prr
    call void @_WriteLn(i8* %t15)
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 2020
    %t17 = load i32, i32* @ic
    %t16 = add i32 %t17, 1
    store i32 %t16, i32* @ic
    ; line 2020
    %t18 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_block_body_mes(%Frame_block_body* %t19, i32 %t20)

    ; epilogue
    ret void
}


; line 2023
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
    ; line 2025
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2026
    %t6 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 2027
    %t8 = load %T_text, %T_text* @prr
    %t10 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t9
    call void @_WriteString(i8* %t8, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t11, i32 0, i32 0), i32 4)
    ; line 2028
    %t12 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t13 = load %Frame_block_body*, %Frame_block_body** %t12
    %t15 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 2
    %t14 = load i8*, i8** %t15
    call void @P_block_body_gentypindicator(%Frame_block_body* %t13, i8* %t14)
    ; line 2029
    %t16 = load %T_text, %T_text* @prr
    %t18 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    call void @_WriteInteger(i8* %t16, i32 11, i32 0, i32 %t17)
    call void @_WriteLn(i8* %t16)
    br label %L_endif_1
L_endif_1:
    ; line 2031
    %t20 = load i32, i32* @ic
    %t19 = add i32 %t20, 1
    store i32 %t19, i32* @ic
    ; line 2031
    %t21 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t22 = load %Frame_block_body*, %Frame_block_body** %t21
    %t24 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 0
    %t23 = load i32, i32* %t24
    call void @P_block_body_mes(%Frame_block_body* %t22, i32 %t23)

    ; epilogue
    ret void
}


; line 2034
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
    ; line 2036
    %t6 = load i1, i1* @prcode
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2037
    %t7 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    call void @P_block_body_putic(%Frame_block_body* %t8)
    ; line 2038
    %t9 = load %T_text, %T_text* @prr
    %t11 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t10
    call void @_WriteString(i8* %t9, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t12, i32 0, i32 0), i32 4)
    ; line 2039
    %t13 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t14 = load %Frame_block_body*, %Frame_block_body** %t13
    %t16 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 3
    %t15 = load i8*, i8** %t16
    call void @P_block_body_gentypindicator(%Frame_block_body* %t14, i8* %t15)
    ; line 2040
    %t17 = load %T_text, %T_text* @prr
    %t19 = mul i32 5, %.dummy.intrin
    %t18 = add i32 3, %t19
    %t21 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 1
    %t20 = load i32, i32* %t21
    call void @_WriteInteger(i8* %t17, i32 %t18, i32 0, i32 %t20)
    %t23 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 2
    %t22 = load i32, i32* %t23
    call void @_WriteInteger(i8* %t17, i32 8, i32 0, i32 %t22)
    call void @_WriteLn(i8* %t17)
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 2042
    %t25 = load i32, i32* @ic
    %t24 = add i32 %t25, 1
    store i32 %t24, i32* @ic
    ; line 2042
    %t26 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    %t29 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 0
    %t28 = load i32, i32* %t29
    call void @P_block_body_mes(%Frame_block_body* %t27, i32 %t28)

    ; epilogue
    ret void
}


; line 2045
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
    ; line 2048
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2050
    ; line 2078
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t6 = bitcast i8* %t7 to i32*
    store i32 2, i32* %t6
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2082
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
    ; line 2085
    %t4 = getelementptr inbounds %Frame_block_body_store, %Frame_block_body_store* %.frame, i32 0, i32 0
    %t5 = load %T_attr*, %T_attr** %t4
    %t7 = getelementptr inbounds %T_attr, %T_attr* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    %t8 = load i8*, i8** %t6
    %t3 = icmp ne i32 %t8, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2086
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2095
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
    ; line 2098
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2100
    ; line 2118
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t6 = bitcast i8* %t7 to i32*
    store i32 1, i32* %t6
    ; line 2118
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 12
    %t8 = bitcast i8* %t9 to i32*
    store i32 1, i32* %t8
    ; line 2118
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 16
    %t10 = bitcast i8* %t11 to i32*
    store i32 0, i32* %t10
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2123
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
    ; line 2124
    %t3 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body*, %Frame_block_body** %t3
    call void @P_block_body_load(%Frame_block_body* %t4)
    ; line 2125
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    %t8 = load i8*, i8** %t6
    %t5 = icmp ne i32 %t8, null
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2126
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    %t13 = load i8*, i8** @boolptr
    %t9 = icmp ne i32 %t12, %t13
    br i1 %t9, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2126
    call void @P_error(i32 144)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2127
    %t14 = load i1, i1* @prcode
    br i1 %t14, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2127
    %t15 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_putic(%Frame_block_body* %t16)
    ; line 2127
    %t17 = load %T_text, %T_text* @prr
    %t18 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 33
    call void @_WriteString(i8* %t17, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t18, i32 0, i32 0), i32 4)
    call void @_WriteString(i8* %t17, i32 8, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2)
    %t20 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    call void @_WriteInteger(i8* %t17, i32 4, i32 0, i32 %t19)
    call void @_WriteLn(i8* %t17)
    br label %L_endif_3
L_endif_3:
    ; line 2128
    %t22 = load i32, i32* @ic
    %t21 = add i32 %t22, 1
    store i32 %t21, i32* @ic
    ; line 2128
    %t23 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    call void @P_block_body_mes(%Frame_block_body* %t24, i32 33)

    ; epilogue
    ret void
}


; line 2131
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
    ; line 2133
    %t4 = load i1, i1* @prcode
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2134
    %t5 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 2
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    call void @P_block_body_putic(%Frame_block_body* %t6)
    ; line 2134
    %t7 = load %T_text, %T_text* @prr
    %t9 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t8
    call void @_WriteString(i8* %t7, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t10, i32 0, i32 0), i32 4)
    call void @_WriteString(i8* %t7, i32 8, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2)
    %t12 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 1
    %t11 = load i32, i32* %t12
    call void @_WriteInteger(i8* %t7, i32 4, i32 0, i32 %t11)
    call void @_WriteLn(i8* %t7)
    br label %L_endif_1
L_endif_1:
    ; line 2135
    %t14 = load i32, i32* @ic
    %t13 = add i32 %t14, 1
    store i32 %t13, i32* @ic
    ; line 2135
    %t15 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 2
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    %t18 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 0
    %t17 = load i32, i32* %t18
    call void @P_block_body_mes(%Frame_block_body* %t16, i32 %t17)

    ; epilogue
    ret void
}


; line 2139
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
    ; line 2141
    %t5 = load i1, i1* @prcode
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2142
    %t6 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_putic(%Frame_block_body* %t7)
    ; line 2143
    %t8 = load %T_text, %T_text* @prr
    %t10 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 %t9
    call void @_WriteString(i8* %t8, i32 4, i32 0, i8* getelementptr inbounds (%T_array_19, %T_array_19* %t11, i32 0, i32 0), i32 4)
    %t13 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t13
    call void @_WriteInteger(i8* %t8, i32 4, i32 0, i32 %t12)
    call void @_WriteChar(i8* %t8, i32 4, i32 0, i8 108)
    %t15 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 2
    %t14 = load i32, i32* %t15
    call void @_WriteInteger(i8* %t8, i32 4, i32 0, i32 %t14)
    call void @_WriteLn(i8* %t8)
    br label %L_endif_1
L_endif_1:
    ; line 2145
    %t17 = load i32, i32* @ic
    %t16 = add i32 %t17, 1
    store i32 %t16, i32* @ic
    ; line 2145
    %t18 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_block_body_mes(%Frame_block_body* %t19, i32 %t20)

    ; epilogue
    ret void
}


; line 2149
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
    ; line 2152
    %t5 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t3 = icmp ne i32 %t4, null
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2153
    %t8 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t7 = load i8*, i8** %t8
    %t9 = load i8*, i8** @intptr
    %t6 = icmp ne i32 %t7, %t9
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2154
    %t12 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t11 = load i8*, i8** %t12
    %t13 = load i8*, i8** @realptr
    %t10 = icmp ne i32 %t11, %t13
    br i1 %t10, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2155
    %t16 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t15 = load i8*, i8** %t16
    %t17 = bitcast i8* %t15 to %T_structure*
    %t19 = getelementptr inbounds %T_structure, %T_structure* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i32, i32* %t18
    %t14 = icmp sle i32 %t20, 1
    br i1 %t14, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2157
    %t22 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 0
    %t21 = load i8*, i8** %t22
    %t23 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 2
    %t24 = getelementptr inbounds %Frame_block_body_checkbnds, %Frame_block_body_checkbnds* %.frame, i32 0, i32 1
    call void @P_getbounds(i8* %t21, i32* %t23, i32* %t24)
    ; line 2158
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


; line 2163
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
    ; line 2164
    %t3 = load i1, i1* @prcode
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2164
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


; line 2167
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
    ; line 3519
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 1
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3520
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 2
    %t6 = load i32, i32* @level
    %t7 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t6
    %t9 = getelementptr inbounds %T_record_10, %T_record_10* %t7, i32 0, i32 8
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** %t8
    store i8* %t10, i8** %t5
    ; line 3521
    ; line 3529
    call void @P_error(i32 167)
    ; line 3530
    br label %L_1
L_1:
    call void @P_insymbol()
    ; line 3531
    %t12 = load i32, i32* @sy
    %t11 = icmp eq i32 %t12, 16
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3531
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 3531
    call void @P_error(i32 5)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 3533
    %t14 = icmp eq i1 0, true
    br i1 %t14, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3534
    call void @P_error(i32 6)
    ; line 3534
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    %t17 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t16, i32 0, i32 14
    %t18 = load %Frame_block*, %Frame_block** %t17
    %t20 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 0
    %t19 = load %T_setofsys, %T_setofsys* %t20
    call void @P_block_skip(%Frame_block* %t18, %T_setofsys %t19)
    br label %L_endif_3
L_endif_3:
    ; line 3535
    br i1 true, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3537
    ; line 3551
    %t23 = icmp eq i1 0, true
    br i1 %t23, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3552
    call void @P_error(i32 6)
    ; line 3552
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    %t26 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t25, i32 0, i32 14
    %t27 = load %Frame_block*, %Frame_block** %t26
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %.frame, i32 0, i32 0
    %t28 = load %T_setofsys, %T_setofsys* %t29
    call void @P_block_skip(%Frame_block* %t27, %T_setofsys %t28)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:

    ; epilogue
    ret void
}


; line 2173
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
    ; line 2177
    %t5 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 24
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t4
    ; line 2177
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t12 = bitcast i8* %t13 to i32*
    store i32 1, i32* %t12
    ; line 2178
    ; line 2214
    %t15 = icmp eq i1 0, true
    br i1 %t15, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2215
    call void @P_error(i32 59)
    ; line 2215
    %t16 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 7
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t20 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t19, i32 0, i32 14
    %t21 = load %Frame_block*, %Frame_block** %t20
    call void @P_block_skip(%Frame_block* %t21, %T_setofsys true)
    br label %L_endif_1
L_endif_1:
    ; line 2216

    ; epilogue
    ret void
}


; line 2314
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
    ; line 2782
    %t6 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t7 = bitcast i8* %t5 to %T_identifier*
    %t9 = getelementptr inbounds %T_identifier, %T_identifier* %t7, i32 0, i32 44
    %t8 = bitcast i8* %t9 to i32*
    %t10 = load i32, i32* %t8
    %t4 = icmp eq i32 %t10, 0
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2783
    %t11 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 48
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    store i32 %t17, i32* %t11
    ; line 2784
    %t20 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 40
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t18 = icmp eq i32 %t24, 4
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2786
    %t26 = icmp eq i1 0, true
    br i1 %t26, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2787
    %t28 = load i32, i32* @sy
    %t27 = icmp eq i32 %t28, 8
    br i1 %t27, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2787
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 2787
    call void @P_error(i32 9)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 2788
    ; line 2799
    %t30 = icmp eq i1 0, true
    br i1 %t30, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 2800
    %t32 = load i32, i32* @sy
    %t31 = icmp eq i32 %t32, 9
    br i1 %t31, label %L_then_6, label %L_else_6
L_then_6:
    ; line 2800
    call void @P_insymbol()
    br label %L_endif_6
L_else_6:
    ; line 2800
    call void @P_error(i32 4)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_2
L_else_2:
    ; line 2804
    %t35 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t34 = load i32, i32* %t35
    %t33 = icmp sle i32 %t34, 8
    br i1 %t33, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2806
    %t37 = load i32, i32* @sy
    %t36 = icmp eq i32 %t37, 8
    br i1 %t36, label %L_then_8, label %L_else_8
L_then_8:
    ; line 2806
    call void @P_insymbol()
    br label %L_endif_8
L_else_8:
    ; line 2806
    call void @P_error(i32 9)
    br label %L_endif_8
L_endif_8:
    ; line 2807
    %t38 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 3
    %t39 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t38
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t39, %T_setofsys %.dummy_set)
    ; line 2807
    %t41 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 3
    %t42 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t41
    %t43 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t42, i32 0, i32 3
    %t44 = load %Frame_block_body*, %Frame_block_body** %t43
    call void @P_block_body_load(%Frame_block_body* %t44)
    br label %L_endif_7
L_endif_7:
    ; line 2809
    ; line 2819
    %t47 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %.frame, i32 0, i32 2
    %t46 = load i32, i32* %t47
    %t45 = icmp sle i32 %t46, 8
    br i1 %t45, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2820
    %t49 = load i32, i32* @sy
    %t48 = icmp eq i32 %t49, 9
    br i1 %t48, label %L_then_10, label %L_else_10
L_then_10:
    ; line 2820
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 2820
    call void @P_error(i32 4)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    br label %L_endif_2
L_endif_2:
    ; nop
    br label %L_endif_1
L_else_1:
    ; line 2823
    call void @P_block_body_statement_call_callnonstandard(%Frame_block_body_statement_call* %.frame)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2317
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
    ; line 2320
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 0
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2321
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 1
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t5)
    ; line 2321
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 2322
    call void @P_error(i32 2)
    ; line 2322
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 1
    %t7 = load i8*, i8** @uvarptr
    store i8* %t7, i8** %t6
    br label %L_endif_1
L_endif_1:
    ; line 2323
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


; line 2326
;================================================================================
; scope: block_body_statement_call_getputresetrewrite (level : 6)

; activation record
%Frame_block_body_statement_call_getputresetrewrite = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_getputresetrewrite(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_getputresetrewrite, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2327
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 2327
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    ; line 2328
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    %t11 = icmp ne i32 %t14, null
    br i1 %t11, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2329
    %t17 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i8**
    %t18 = load i8*, i8** %t16
    %t19 = bitcast i8* %t18 to %T_structure*
    %t21 = getelementptr inbounds %T_structure, %T_structure* %t19, i32 0, i32 8
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t15 = icmp ne i32 %t22, 6
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2329
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2330
    %t26 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t27 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t26
    %t25 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t27, i32 0, i32 2
    %t24 = load i32, i32* %t25
    %t23 = icmp sle i32 %t24, 2
    br i1 %t23, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2330
    %t28 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t29 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t28
    %t30 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t29, i32 0, i32 3
    %t31 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t30
    %t32 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t31, i32 0, i32 3
    %t33 = load %Frame_block_body*, %Frame_block_body** %t32
    %t36 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t37 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t36
    %t35 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t37, i32 0, i32 2
    %t34 = load i32, i32* %t35
    call void @P_block_body_gen1(%Frame_block_body* %t33, i32 30, i32 %t34)
    br label %L_endif_3
L_else_3:
    ; line 2331
    call void @P_error(i32 399)
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 2334
;================================================================================
; scope: block_body_statement_call_read (level : 6)

; activation record
%Frame_block_body_statement_call_read = type
{
    ; variables
    i32,    ; 0: laddr
    i32,    ; 1: llev
    i8*,    ; 2: lsp

    ; slink
    %Frame_block_body_statement_call*    ; 3
};

; procedure body
define void @P_block_body_statement_call_read(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_read, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2338
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    ; line 2338
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 0
    store i32 5, i32* %t3
    ; line 2339
    %t5 = load i32, i32* @sy
    %t4 = icmp eq i32 %t5, 8
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2340
    call void @P_insymbol()
    ; line 2341
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t7 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t6
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t7, %T_setofsys %.dummy_set)
    ; line 2342
    %t9 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    store i8* %t12, i8** %t9
    ; line 2342
    %t14 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t15 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t20 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t19, i32 0, i32 14
    %t21 = load %Frame_block*, %Frame_block** %t20
    %t13 = getelementptr inbounds %Frame_block, %Frame_block* %t21, i32 0, i32 4
    store i1 0, i1* %t13
    ; line 2343
    %t24 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 2
    %t23 = load i8*, i8** %t24
    %t22 = icmp ne i32 %t23, null
    br i1 %t22, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2344
    %t27 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 2
    %t26 = load i8*, i8** %t27
    %t28 = bitcast i8* %t26 to %T_structure*
    %t30 = getelementptr inbounds %T_structure, %T_structure* %t28, i32 0, i32 8
    %t29 = bitcast i8* %t30 to i32*
    %t31 = load i32, i32* %t29
    %t25 = icmp eq i32 %t31, 6
    br i1 %t25, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2347
    %t34 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 2
    %t33 = load i8*, i8** %t34
    %t35 = bitcast i8* %t33 to %T_structure*
    %t37 = getelementptr inbounds %T_structure, %T_structure* %t35, i32 0, i32 16
    %t36 = bitcast i8* %t37 to i8**
    %t38 = load i8*, i8** %t36
    %t39 = load i8*, i8** @charptr
    %t32 = icmp eq i32 %t38, %t39
    br i1 %t32, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2348
    %t40 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 1
    %t42 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 16
    %t41 = bitcast i8* %t42 to i32*
    %t43 = load i32, i32* %t41
    store i32 %t43, i32* %t40
    ; line 2348
    %t44 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 0
    %t46 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 20
    %t45 = bitcast i8* %t46 to i32*
    %t47 = load i32, i32* %t45
    store i32 %t47, i32* %t44
    br label %L_endif_4
L_else_4:
    ; line 2349
    call void @P_error(i32 399)
    br label %L_endif_4
L_endif_4:
    ; line 2350
    %t49 = load i32, i32* @sy
    %t48 = icmp eq i32 %t49, 9
    br i1 %t48, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2351
    %t53 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t54 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t53
    %t52 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t54, i32 0, i32 2
    %t51 = load i32, i32* %t52
    %t50 = icmp eq i32 %t51, 5
    br i1 %t50, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2351
    call void @P_error(i32 116)
    br label %L_endif_6
L_endif_6:
    ; line 2352
    %t56 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t57 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t56
    %t58 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t57, i32 0, i32 3
    %t59 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t58
    %t60 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t59, i32 0, i32 3
    %t61 = load %Frame_block_body*, %Frame_block_body** %t60
    %t62 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t61, i32 0, i32 14
    %t63 = load %Frame_block*, %Frame_block** %t62
    %t55 = getelementptr inbounds %Frame_block, %Frame_block* %t63, i32 0, i32 4
    store i1 1, i1* %t55
    br label %L_endif_5
L_else_5:
    ; line 2355
    %t65 = load i32, i32* @sy
    %t64 = icmp ne i32 %t65, 12
    br i1 %t64, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2356
    call void @P_error(i32 116)
    ; line 2356
    %t66 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t67 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t66
    %t68 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t67, i32 0, i32 3
    %t69 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t68
    %t70 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t69, i32 0, i32 3
    %t71 = load %Frame_block_body*, %Frame_block_body** %t70
    %t72 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t71, i32 0, i32 14
    %t73 = load %Frame_block*, %Frame_block** %t72
    call void @P_block_skip(%Frame_block* %t73, %T_setofsys %.dummy_set)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_5
L_endif_5:
    ; line 2357
    %t76 = load i32, i32* @sy
    %t75 = icmp eq i32 %t76, 12
    br i1 %t75, label %L_then_8, label %L_else_8
L_then_8:
    ; line 2358
    call void @P_insymbol()
    ; line 2358
    %t77 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t78 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t77
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t78, %T_setofsys %.dummy_set)
    br label %L_endif_8
L_else_8:
    ; line 2360
    %t81 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t82 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t81
    %t83 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t82, i32 0, i32 3
    %t84 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t83
    %t85 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t84, i32 0, i32 3
    %t86 = load %Frame_block_body*, %Frame_block_body** %t85
    %t87 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t86, i32 0, i32 14
    %t88 = load %Frame_block*, %Frame_block** %t87
    %t80 = getelementptr inbounds %Frame_block, %Frame_block* %t88, i32 0, i32 4
    store i1 1, i1* %t80
    br label %L_endif_8
L_endif_8:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 2362
    %t91 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t92 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t91
    %t93 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t92, i32 0, i32 3
    %t94 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t93
    %t95 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t94, i32 0, i32 3
    %t96 = load %Frame_block_body*, %Frame_block_body** %t95
    %t97 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t96, i32 0, i32 14
    %t98 = load %Frame_block*, %Frame_block** %t97
    %t90 = getelementptr inbounds %Frame_block, %Frame_block* %t98, i32 0, i32 4
    %t89 = load i1, i1* %t90
    %t99 = icmp eq i1 0, %t89
    br i1 %t99, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2363
    br label %L_endif_9
L_endif_9:
    ; line 2382
    %t101 = load i32, i32* @sy
    %t100 = icmp eq i32 %t101, 9
    br i1 %t100, label %L_then_10, label %L_else_10
L_then_10:
    ; line 2382
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 2382
    call void @P_error(i32 4)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_1
L_else_1:
    ; line 2384
    %t105 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t106 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t105
    %t104 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t106, i32 0, i32 2
    %t103 = load i32, i32* %t104
    %t102 = icmp eq i32 %t103, 5
    br i1 %t102, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 2384
    call void @P_error(i32 116)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_1
L_endif_1:
    ; line 2385
    %t110 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t111 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t110
    %t109 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t111, i32 0, i32 2
    %t108 = load i32, i32* %t109
    %t107 = icmp eq i32 %t108, 11
    br i1 %t107, label %L_then_12, label %L_endif_12
L_then_12:
    ; line 2386
    %t112 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t113 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t112
    %t114 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t113, i32 0, i32 3
    %t115 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t114
    %t116 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t115, i32 0, i32 3
    %t117 = load %Frame_block_body*, %Frame_block_body** %t116
    %t119 = load i32, i32* @level
    %t121 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 1
    %t120 = load i32, i32* %t121
    %t118 = sub i32 %t119, %t120
    %t123 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 0
    %t122 = load i32, i32* %t123
    call void @P_block_body_gen2(%Frame_block_body* %t117, i32 50, i32 %t118, i32 %t122)
    ; line 2387
    %t124 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 3
    %t125 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t124
    %t126 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t125, i32 0, i32 3
    %t127 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t126
    %t128 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t127, i32 0, i32 3
    %t129 = load %Frame_block_body*, %Frame_block_body** %t128
    call void @P_block_body_gen1(%Frame_block_body* %t129, i32 30, i32 21)
    br label %L_endif_12
L_endif_12:

    ; epilogue
    ret void
}


; line 2391
;================================================================================
; scope: block_body_statement_call_write (level : 6)

; activation record
%Frame_block_body_statement_call_write = type
{
    ; variables
    i1,    ; 0: default
    i32,    ; 1: laddr
    i32,    ; 2: len
    i32,    ; 3: llev
    i32,    ; 4: llkey
    i8*,    ; 5: lsp

    ; slink
    %Frame_block_body_statement_call*    ; 6
};

; procedure body
define void @P_block_body_statement_call_write(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_write, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2394
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 4
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 2
    %t3 = load i32, i32* %t4
    store i32 %t3, i32* %t2
    ; line 2395
    %t7 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 3
    store i32 1, i32* %t7
    ; line 2395
    %t8 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 1
    %t9 = add i32 5, 1
    store i32 %t9, i32* %t8
    ; line 2396
    %t11 = load i32, i32* @sy
    %t10 = icmp eq i32 %t11, 8
    br i1 %t10, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2397
    call void @P_insymbol()
    ; line 2398
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t13 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t12
    %t14 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t13, i32 0, i32 3
    %t15 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t14
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t15, %T_setofsys %.dummy_set)
    ; line 2399
    %t17 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 5
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    store i8* %t20, i8** %t17
    ; line 2399
    %t22 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t23 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 3
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    %t28 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t27, i32 0, i32 14
    %t29 = load %Frame_block*, %Frame_block** %t28
    %t21 = getelementptr inbounds %Frame_block, %Frame_block* %t29, i32 0, i32 4
    store i1 0, i1* %t21
    ; line 2400
    %t32 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 5
    %t31 = load i8*, i8** %t32
    %t30 = icmp ne i32 %t31, null
    br i1 %t30, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2401
    %t35 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 5
    %t34 = load i8*, i8** %t35
    %t36 = bitcast i8* %t34 to %T_structure*
    %t38 = getelementptr inbounds %T_structure, %T_structure* %t36, i32 0, i32 8
    %t37 = bitcast i8* %t38 to i32*
    %t39 = load i32, i32* %t37
    %t33 = icmp eq i32 %t39, 6
    br i1 %t33, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2404
    %t42 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 5
    %t41 = load i8*, i8** %t42
    %t43 = bitcast i8* %t41 to %T_structure*
    %t45 = getelementptr inbounds %T_structure, %T_structure* %t43, i32 0, i32 16
    %t44 = bitcast i8* %t45 to i8**
    %t46 = load i8*, i8** %t44
    %t47 = load i8*, i8** @charptr
    %t40 = icmp eq i32 %t46, %t47
    br i1 %t40, label %L_then_4, label %L_else_4
L_then_4:
    ; line 2405
    %t48 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 3
    %t50 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 16
    %t49 = bitcast i8* %t50 to i32*
    %t51 = load i32, i32* %t49
    store i32 %t51, i32* %t48
    ; line 2405
    %t52 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 1
    %t54 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 20
    %t53 = bitcast i8* %t54 to i32*
    %t55 = load i32, i32* %t53
    store i32 %t55, i32* %t52
    br label %L_endif_4
L_else_4:
    ; line 2406
    call void @P_error(i32 399)
    br label %L_endif_4
L_endif_4:
    ; line 2407
    %t57 = load i32, i32* @sy
    %t56 = icmp eq i32 %t57, 9
    br i1 %t56, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2408
    %t60 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 4
    %t59 = load i32, i32* %t60
    %t58 = icmp eq i32 %t59, 6
    br i1 %t58, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2408
    call void @P_error(i32 116)
    br label %L_endif_6
L_endif_6:
    ; line 2409
    %t62 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t63 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t62
    %t64 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t63, i32 0, i32 3
    %t65 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t64
    %t66 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t65, i32 0, i32 3
    %t67 = load %Frame_block_body*, %Frame_block_body** %t66
    %t68 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t67, i32 0, i32 14
    %t69 = load %Frame_block*, %Frame_block** %t68
    %t61 = getelementptr inbounds %Frame_block, %Frame_block* %t69, i32 0, i32 4
    store i1 1, i1* %t61
    br label %L_endif_5
L_else_5:
    ; line 2412
    %t71 = load i32, i32* @sy
    %t70 = icmp ne i32 %t71, 12
    br i1 %t70, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2413
    call void @P_error(i32 116)
    ; line 2413
    %t72 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t73 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t72
    %t74 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t73, i32 0, i32 3
    %t75 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t74
    %t76 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t75, i32 0, i32 3
    %t77 = load %Frame_block_body*, %Frame_block_body** %t76
    %t78 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t77, i32 0, i32 14
    %t79 = load %Frame_block*, %Frame_block** %t78
    call void @P_block_skip(%Frame_block* %t79, %T_setofsys %.dummy_set)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_5
L_endif_5:
    ; line 2414
    %t82 = load i32, i32* @sy
    %t81 = icmp eq i32 %t82, 12
    br i1 %t81, label %L_then_8, label %L_else_8
L_then_8:
    ; line 2415
    call void @P_insymbol()
    ; line 2415
    %t83 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t84 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t83
    %t85 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t84, i32 0, i32 3
    %t86 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t85
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t86, %T_setofsys %.dummy_set)
    br label %L_endif_8
L_else_8:
    ; line 2417
    %t89 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t90 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t89
    %t91 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t90, i32 0, i32 3
    %t92 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t91
    %t93 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t92, i32 0, i32 3
    %t94 = load %Frame_block_body*, %Frame_block_body** %t93
    %t95 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t94, i32 0, i32 14
    %t96 = load %Frame_block*, %Frame_block** %t95
    %t88 = getelementptr inbounds %Frame_block, %Frame_block* %t96, i32 0, i32 4
    store i1 1, i1* %t88
    br label %L_endif_8
L_endif_8:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 2419
    %t99 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t100 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t99
    %t101 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t100, i32 0, i32 3
    %t102 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t101
    %t103 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t102, i32 0, i32 3
    %t104 = load %Frame_block_body*, %Frame_block_body** %t103
    %t105 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t104, i32 0, i32 14
    %t106 = load %Frame_block*, %Frame_block** %t105
    %t98 = getelementptr inbounds %Frame_block, %Frame_block* %t106, i32 0, i32 4
    %t97 = load i1, i1* %t98
    %t107 = icmp eq i1 0, %t97
    br i1 %t107, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2420
    br label %L_endif_9
L_endif_9:
    ; line 2476
    %t109 = load i32, i32* @sy
    %t108 = icmp eq i32 %t109, 9
    br i1 %t108, label %L_then_10, label %L_else_10
L_then_10:
    ; line 2476
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 2476
    call void @P_error(i32 4)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_1
L_else_1:
    ; line 2478
    %t113 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t114 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t113
    %t112 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t114, i32 0, i32 2
    %t111 = load i32, i32* %t112
    %t110 = icmp eq i32 %t111, 6
    br i1 %t110, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 2478
    call void @P_error(i32 116)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_1
L_endif_1:
    ; line 2479
    %t117 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 4
    %t116 = load i32, i32* %t117
    %t115 = icmp eq i32 %t116, 12
    br i1 %t115, label %L_then_12, label %L_endif_12
L_then_12:
    ; line 2480
    %t118 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t119 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t118
    %t120 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t119, i32 0, i32 3
    %t121 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t120
    %t122 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t121, i32 0, i32 3
    %t123 = load %Frame_block_body*, %Frame_block_body** %t122
    %t125 = load i32, i32* @level
    %t127 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 3
    %t126 = load i32, i32* %t127
    %t124 = sub i32 %t125, %t126
    %t129 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 1
    %t128 = load i32, i32* %t129
    call void @P_block_body_gen2(%Frame_block_body* %t123, i32 50, i32 %t124, i32 %t128)
    ; line 2481
    %t130 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t131 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t130
    %t132 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t131, i32 0, i32 3
    %t133 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t132
    %t134 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t133, i32 0, i32 3
    %t135 = load %Frame_block_body*, %Frame_block_body** %t134
    call void @P_block_body_gen1(%Frame_block_body* %t135, i32 30, i32 22)
    br label %L_endif_12
L_endif_12:

    ; epilogue
    ret void
}


; line 2485
;================================================================================
; scope: block_body_statement_call_pack (level : 6)

; activation record
%Frame_block_body_statement_call_pack = type
{
    ; variables
    i8*,    ; 0: lsp
    i8*,    ; 1: lsp1

    ; slink
    %Frame_block_body_statement_call*    ; 2
};

; procedure body
define void @P_block_body_statement_call_pack(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_pack, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2487
    call void @P_error(i32 399)
    ; line 2487
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 2488
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 0
    store i8* null, i8** %t5
    ; line 2488
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 1
    store i8* null, i8** %t6
    ; line 2489
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** %t8
    %t7 = icmp ne i32 %t10, null
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2491
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    %t15 = bitcast i8* %t14 to %T_structure*
    %t17 = getelementptr inbounds %T_structure, %T_structure* %t15, i32 0, i32 8
    %t16 = bitcast i8* %t17 to i32*
    %t18 = load i32, i32* %t16
    %t11 = icmp eq i32 %t18, 4
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2492
    %t19 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 0
    %t21 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t22 = load i8*, i8** %t20
    %t23 = bitcast i8* %t22 to %T_structure*
    %t25 = getelementptr inbounds %T_structure, %T_structure* %t23, i32 0, i32 24
    %t24 = bitcast i8* %t25 to i8**
    %t26 = load i8*, i8** %t24
    store i8* %t26, i8** %t19
    ; line 2492
    %t27 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 1
    %t29 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i8**
    %t30 = load i8*, i8** %t28
    %t31 = bitcast i8* %t30 to %T_structure*
    %t33 = getelementptr inbounds %T_structure, %T_structure* %t31, i32 0, i32 16
    %t32 = bitcast i8* %t33 to i8**
    %t34 = load i8*, i8** %t32
    store i8* %t34, i8** %t27
    br label %L_endif_2
L_else_2:
    ; line 2493
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2494
    %t36 = load i32, i32* @sy
    %t35 = icmp eq i32 %t36, 12
    br i1 %t35, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2494
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 2494
    call void @P_error(i32 20)
    br label %L_endif_3
L_endif_3:
    ; line 2495
    %t37 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t38 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t37
    %t39 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t38, i32 0, i32 3
    %t40 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t39
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t40, %T_setofsys %.dummy_set)
    ; line 2496
    %t44 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t43 = bitcast i8* %t44 to i8**
    %t45 = load i8*, i8** %t43
    %t42 = icmp ne i32 %t45, null
    br i1 %t42, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2497
    %t48 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t47 = bitcast i8* %t48 to i8**
    %t49 = load i8*, i8** %t47
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 8
    %t51 = bitcast i8* %t52 to i32*
    %t53 = load i32, i32* %t51
    %t46 = icmp ne i32 %t53, 0
    br i1 %t46, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2497
    call void @P_error(i32 116)
    br label %L_endif_5
L_else_5:
    ; line 2499
    %t54 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t55 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t54
    %t56 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t55, i32 0, i32 3
    %t57 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t56
    %t58 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t57, i32 0, i32 3
    %t59 = load %Frame_block_body*, %Frame_block_body** %t58
    %t60 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t59, i32 0, i32 14
    %t61 = load %Frame_block*, %Frame_block** %t60
    %t63 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 0
    %t62 = load i8*, i8** %t63
    %t65 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t64 = bitcast i8* %t65 to i8**
    %t66 = load i8*, i8** %t64
    %t67 = call i1 @F_block_comptypes(%Frame_block* %t61, i8* %t62, i8* %t66)
    %t68 = icmp eq i1 0, %t67
    br i1 %t68, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 2499
    call void @P_error(i32 116)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 2500
    %t70 = load i32, i32* @sy
    %t69 = icmp eq i32 %t70, 12
    br i1 %t69, label %L_then_7, label %L_else_7
L_then_7:
    ; line 2500
    call void @P_insymbol()
    br label %L_endif_7
L_else_7:
    ; line 2500
    call void @P_error(i32 20)
    br label %L_endif_7
L_endif_7:
    ; line 2501
    %t71 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t72 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t71
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t72, %T_setofsys %.dummy_set)
    ; line 2502
    %t76 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t75 = bitcast i8* %t76 to i8**
    %t77 = load i8*, i8** %t75
    %t74 = icmp ne i32 %t77, null
    br i1 %t74, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 2504
    %t80 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t79 = bitcast i8* %t80 to i8**
    %t81 = load i8*, i8** %t79
    %t82 = bitcast i8* %t81 to %T_structure*
    %t84 = getelementptr inbounds %T_structure, %T_structure* %t82, i32 0, i32 8
    %t83 = bitcast i8* %t84 to i32*
    %t85 = load i32, i32* %t83
    %t78 = icmp eq i32 %t85, 4
    br i1 %t78, label %L_then_9, label %L_else_9
L_then_9:
    ; line 2506
    br label %L_OR_expr_10
L_OR_expr_10:
    %t87 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t88 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t87
    %t89 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t88, i32 0, i32 3
    %t90 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t89
    %t91 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t90, i32 0, i32 3
    %t92 = load %Frame_block_body*, %Frame_block_body** %t91
    %t93 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t92, i32 0, i32 14
    %t94 = load %Frame_block*, %Frame_block** %t93
    %t96 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t95 = bitcast i8* %t96 to i8**
    %t97 = load i8*, i8** %t95
    %t98 = bitcast i8* %t97 to %T_structure*
    %t100 = getelementptr inbounds %T_structure, %T_structure* %t98, i32 0, i32 16
    %t99 = bitcast i8* %t100 to i8**
    %t101 = load i8*, i8** %t99
    %t103 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 1
    %t102 = load i8*, i8** %t103
    %t104 = call i1 @F_block_comptypes(%Frame_block* %t94, i8* %t101, i8* %t102)
    %t105 = icmp eq i1 0, %t104
    br i1 %t105, label %L_OR_shortcut_10, label %L_OR_eval_10
L_OR_eval_10:
    %t106 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t107 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t106
    %t108 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t107, i32 0, i32 3
    %t109 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t108
    %t110 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t109, i32 0, i32 3
    %t111 = load %Frame_block_body*, %Frame_block_body** %t110
    %t112 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t111, i32 0, i32 14
    %t113 = load %Frame_block*, %Frame_block** %t112
    %t115 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t114 = bitcast i8* %t115 to i8**
    %t116 = load i8*, i8** %t114
    %t117 = bitcast i8* %t116 to %T_structure*
    %t119 = getelementptr inbounds %T_structure, %T_structure* %t117, i32 0, i32 24
    %t118 = bitcast i8* %t119 to i8**
    %t120 = load i8*, i8** %t118
    %t122 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 0
    %t121 = load i8*, i8** %t122
    %t123 = call i1 @F_block_comptypes(%Frame_block* %t113, i8* %t120, i8* %t121)
    %t124 = icmp eq i1 0, %t123
    br label %L_OR_shortcut_10
L_OR_shortcut_10:
    %t86 = phi [%t124, %L_OR_eval_10], [true, %L_OR_expr_10]
    br i1 %t86, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 2508
    call void @P_error(i32 116)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_9
L_else_9:
    ; line 2510
    call void @P_error(i32 116)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_8
L_endif_8:

    ; epilogue
    ret void
}


; line 2513
;================================================================================
; scope: block_body_statement_call_unpack (level : 6)

; activation record
%Frame_block_body_statement_call_unpack = type
{
    ; variables
    i8*,    ; 0: lsp
    i8*,    ; 1: lsp1

    ; slink
    %Frame_block_body_statement_call*    ; 2
};

; procedure body
define void @P_block_body_statement_call_unpack(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_unpack, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2515
    call void @P_error(i32 399)
    ; line 2515
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 2516
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 0
    store i8* null, i8** %t5
    ; line 2516
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 1
    store i8* null, i8** %t6
    ; line 2517
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** %t8
    %t7 = icmp ne i32 %t10, null
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2519
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    %t15 = bitcast i8* %t14 to %T_structure*
    %t17 = getelementptr inbounds %T_structure, %T_structure* %t15, i32 0, i32 8
    %t16 = bitcast i8* %t17 to i32*
    %t18 = load i32, i32* %t16
    %t11 = icmp eq i32 %t18, 4
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2520
    %t19 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 0
    %t21 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t22 = load i8*, i8** %t20
    %t23 = bitcast i8* %t22 to %T_structure*
    %t25 = getelementptr inbounds %T_structure, %T_structure* %t23, i32 0, i32 24
    %t24 = bitcast i8* %t25 to i8**
    %t26 = load i8*, i8** %t24
    store i8* %t26, i8** %t19
    ; line 2520
    %t27 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 1
    %t29 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i8**
    %t30 = load i8*, i8** %t28
    %t31 = bitcast i8* %t30 to %T_structure*
    %t33 = getelementptr inbounds %T_structure, %T_structure* %t31, i32 0, i32 16
    %t32 = bitcast i8* %t33 to i8**
    %t34 = load i8*, i8** %t32
    store i8* %t34, i8** %t27
    br label %L_endif_2
L_else_2:
    ; line 2521
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2522
    %t36 = load i32, i32* @sy
    %t35 = icmp eq i32 %t36, 12
    br i1 %t35, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2522
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 2522
    call void @P_error(i32 20)
    br label %L_endif_3
L_endif_3:
    ; line 2523
    %t37 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t38 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t37
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t38, %T_setofsys %.dummy_set)
    ; line 2524
    %t42 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t41 = bitcast i8* %t42 to i8**
    %t43 = load i8*, i8** %t41
    %t40 = icmp ne i32 %t43, null
    br i1 %t40, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2526
    %t46 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t45 = bitcast i8* %t46 to i8**
    %t47 = load i8*, i8** %t45
    %t48 = bitcast i8* %t47 to %T_structure*
    %t50 = getelementptr inbounds %T_structure, %T_structure* %t48, i32 0, i32 8
    %t49 = bitcast i8* %t50 to i32*
    %t51 = load i32, i32* %t49
    %t44 = icmp eq i32 %t51, 4
    br i1 %t44, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2528
    br label %L_OR_expr_6
L_OR_expr_6:
    %t53 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t54 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t53
    %t55 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t54, i32 0, i32 3
    %t56 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t55
    %t57 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t56, i32 0, i32 3
    %t58 = load %Frame_block_body*, %Frame_block_body** %t57
    %t59 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t58, i32 0, i32 14
    %t60 = load %Frame_block*, %Frame_block** %t59
    %t62 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t61 = bitcast i8* %t62 to i8**
    %t63 = load i8*, i8** %t61
    %t64 = bitcast i8* %t63 to %T_structure*
    %t66 = getelementptr inbounds %T_structure, %T_structure* %t64, i32 0, i32 16
    %t65 = bitcast i8* %t66 to i8**
    %t67 = load i8*, i8** %t65
    %t69 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 1
    %t68 = load i8*, i8** %t69
    %t70 = call i1 @F_block_comptypes(%Frame_block* %t60, i8* %t67, i8* %t68)
    %t71 = icmp eq i1 0, %t70
    br i1 %t71, label %L_OR_shortcut_6, label %L_OR_eval_6
L_OR_eval_6:
    %t72 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t73 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t72
    %t74 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t73, i32 0, i32 3
    %t75 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t74
    %t76 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t75, i32 0, i32 3
    %t77 = load %Frame_block_body*, %Frame_block_body** %t76
    %t78 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t77, i32 0, i32 14
    %t79 = load %Frame_block*, %Frame_block** %t78
    %t81 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t80 = bitcast i8* %t81 to i8**
    %t82 = load i8*, i8** %t80
    %t83 = bitcast i8* %t82 to %T_structure*
    %t85 = getelementptr inbounds %T_structure, %T_structure* %t83, i32 0, i32 24
    %t84 = bitcast i8* %t85 to i8**
    %t86 = load i8*, i8** %t84
    %t88 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 0
    %t87 = load i8*, i8** %t88
    %t89 = call i1 @F_block_comptypes(%Frame_block* %t79, i8* %t86, i8* %t87)
    %t90 = icmp eq i1 0, %t89
    br label %L_OR_shortcut_6
L_OR_shortcut_6:
    %t52 = phi [%t90, %L_OR_eval_6], [true, %L_OR_expr_6]
    br i1 %t52, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 2530
    call void @P_error(i32 116)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_5
L_else_5:
    ; line 2532
    call void @P_error(i32 116)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 2533
    %t92 = load i32, i32* @sy
    %t91 = icmp eq i32 %t92, 12
    br i1 %t91, label %L_then_8, label %L_else_8
L_then_8:
    ; line 2533
    call void @P_insymbol()
    br label %L_endif_8
L_else_8:
    ; line 2533
    call void @P_error(i32 20)
    br label %L_endif_8
L_endif_8:
    ; line 2534
    %t93 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t94 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t93
    %t95 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t94, i32 0, i32 3
    %t96 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t95
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t96, %T_setofsys %.dummy_set)
    ; line 2535
    %t100 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t99 = bitcast i8* %t100 to i8**
    %t101 = load i8*, i8** %t99
    %t98 = icmp ne i32 %t101, null
    br i1 %t98, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 2536
    %t104 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t103 = bitcast i8* %t104 to i8**
    %t105 = load i8*, i8** %t103
    %t106 = bitcast i8* %t105 to %T_structure*
    %t108 = getelementptr inbounds %T_structure, %T_structure* %t106, i32 0, i32 8
    %t107 = bitcast i8* %t108 to i32*
    %t109 = load i32, i32* %t107
    %t102 = icmp ne i32 %t109, 0
    br i1 %t102, label %L_then_10, label %L_else_10
L_then_10:
    ; line 2536
    call void @P_error(i32 116)
    br label %L_endif_10
L_else_10:
    ; line 2538
    %t110 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t111 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t110
    %t112 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t111, i32 0, i32 3
    %t113 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t112
    %t114 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t113, i32 0, i32 3
    %t115 = load %Frame_block_body*, %Frame_block_body** %t114
    %t116 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t115, i32 0, i32 14
    %t117 = load %Frame_block*, %Frame_block** %t116
    %t119 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 0
    %t118 = load i8*, i8** %t119
    %t121 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t120 = bitcast i8* %t121 to i8**
    %t122 = load i8*, i8** %t120
    %t123 = call i1 @F_block_comptypes(%Frame_block* %t117, i8* %t118, i8* %t122)
    %t124 = icmp eq i1 0, %t123
    br i1 %t124, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 2538
    call void @P_error(i32 116)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; nop

    ; epilogue
    ret void
}


; line 2541
;================================================================================
; scope: block_body_statement_call_new (level : 6)

; activation record
%Frame_block_body_statement_call_new = type
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
define void @P_block_body_statement_call_new(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_new, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2545
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 2545
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    ; line 2546
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 1
    store i8* null, i8** %t11
    ; line 2546
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 4
    store i32 0, i32* %t12
    ; line 2546
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 0
    store i32 0, i32* %t13
    ; line 2547
    %t16 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8**
    %t17 = load i8*, i8** %t15
    %t14 = icmp ne i32 %t17, null
    br i1 %t14, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2549
    %t20 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    %t22 = bitcast i8* %t21 to %T_structure*
    %t24 = getelementptr inbounds %T_structure, %T_structure* %t22, i32 0, i32 8
    %t23 = bitcast i8* %t24 to i32*
    %t25 = load i32, i32* %t23
    %t18 = icmp eq i32 %t25, 2
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2551
    %t28 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** %t27
    %t30 = bitcast i8* %t29 to %T_structure*
    %t32 = getelementptr inbounds %T_structure, %T_structure* %t30, i32 0, i32 16
    %t31 = bitcast i8* %t32 to i8**
    %t33 = load i8*, i8** %t31
    %t26 = icmp ne i32 %t33, null
    br i1 %t26, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2552
    %t34 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 0
    %t36 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t35 = bitcast i8* %t36 to i8**
    %t37 = load i8*, i8** %t35
    %t38 = bitcast i8* %t37 to %T_structure*
    %t40 = getelementptr inbounds %T_structure, %T_structure* %t38, i32 0, i32 16
    %t39 = bitcast i8* %t40 to i8**
    %t41 = load i8*, i8** %t39
    %t42 = bitcast i8* %t41 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 4
    %t43 = bitcast i8* %t44 to i32*
    %t45 = load i32, i32* %t43
    store i32 %t45, i32* %t34
    ; line 2553
    %t48 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t47 = bitcast i8* %t48 to i8**
    %t49 = load i8*, i8** %t47
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 16
    %t51 = bitcast i8* %t52 to i8**
    %t53 = load i8*, i8** %t51
    %t54 = bitcast i8* %t53 to %T_structure*
    %t56 = getelementptr inbounds %T_structure, %T_structure* %t54, i32 0, i32 8
    %t55 = bitcast i8* %t56 to i32*
    %t57 = load i32, i32* %t55
    %t46 = icmp eq i32 %t57, 5
    br i1 %t46, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2553
    %t58 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 1
    %t60 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t59 = bitcast i8* %t60 to i8**
    %t61 = load i8*, i8** %t59
    %t62 = bitcast i8* %t61 to %T_structure*
    %t64 = getelementptr inbounds %T_structure, %T_structure* %t62, i32 0, i32 16
    %t63 = bitcast i8* %t64 to i8**
    %t65 = load i8*, i8** %t63
    %t66 = bitcast i8* %t65 to %T_structure*
    %t68 = getelementptr inbounds %T_structure, %T_structure* %t66, i32 0, i32 24
    %t67 = bitcast i8* %t68 to i8**
    %t69 = load i8*, i8** %t67
    store i8* %t69, i8** %t58
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_else_2:
    ; line 2556
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2557
    ; line 2582
    %t70 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t71 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t72
    %t74 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t73, i32 0, i32 3
    %t75 = load %Frame_block_body*, %Frame_block_body** %t74
    %t77 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 0
    %t76 = load i32, i32* %t77
    call void @P_block_body_gen2(%Frame_block_body* %t75, i32 51, i32 1, i32 %t76)
    ; line 2583
    %t78 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t79 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t78
    %t80 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t79, i32 0, i32 3
    %t81 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t80
    %t82 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t81, i32 0, i32 3
    %t83 = load %Frame_block_body*, %Frame_block_body** %t82
    call void @P_block_body_gen1(%Frame_block_body* %t83, i32 30, i32 12)
    ; nop

    ; epilogue
    ret void
}


; line 2586
;================================================================================
; scope: block_body_statement_call_mark (level : 6)

; activation record
%Frame_block_body_statement_call_mark = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_mark(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_mark, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_mark, %Frame_block_body_statement_call_mark* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2587
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_mark, %Frame_block_body_statement_call_mark* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 2588
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    %t8 = load i8*, i8** %t6
    %t5 = icmp ne i32 %t8, null
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2589
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    %t13 = bitcast i8* %t12 to %T_structure*
    %t15 = getelementptr inbounds %T_structure, %T_structure* %t13, i32 0, i32 8
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    %t9 = icmp eq i32 %t16, 2
    br i1 %t9, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2590
    %t17 = getelementptr inbounds %Frame_block_body_statement_call_mark, %Frame_block_body_statement_call_mark* %.frame, i32 0, i32 0
    %t18 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t17
    %t19 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t18, i32 0, i32 3
    %t20 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t19
    %t21 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t20, i32 0, i32 3
    %t22 = load %Frame_block_body*, %Frame_block_body** %t21
    call void @P_block_body_loadaddress(%Frame_block_body* %t22)
    ; line 2590
    %t23 = getelementptr inbounds %Frame_block_body_statement_call_mark, %Frame_block_body_statement_call_mark* %.frame, i32 0, i32 0
    %t24 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t23
    %t25 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t24, i32 0, i32 3
    %t26 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t25
    %t27 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t26, i32 0, i32 3
    %t28 = load %Frame_block_body*, %Frame_block_body** %t27
    call void @P_block_body_gen1(%Frame_block_body* %t28, i32 30, i32 23)
    br label %L_endif_2
L_else_2:
    ; line 2591
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2594
;================================================================================
; scope: block_body_statement_call_release (level : 6)

; activation record
%Frame_block_body_statement_call_release = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_release(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_release, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_release, %Frame_block_body_statement_call_release* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2595
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_release, %Frame_block_body_statement_call_release* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    ; line 2596
    %t7 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    %t8 = load i8*, i8** %t6
    %t5 = icmp ne i32 %t8, null
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2597
    %t11 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i8**
    %t12 = load i8*, i8** %t10
    %t13 = bitcast i8* %t12 to %T_structure*
    %t15 = getelementptr inbounds %T_structure, %T_structure* %t13, i32 0, i32 8
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    %t9 = icmp eq i32 %t16, 2
    br i1 %t9, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2598
    %t17 = getelementptr inbounds %Frame_block_body_statement_call_release, %Frame_block_body_statement_call_release* %.frame, i32 0, i32 0
    %t18 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t17
    %t19 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t18, i32 0, i32 3
    %t20 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t19
    %t21 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t20, i32 0, i32 3
    %t22 = load %Frame_block_body*, %Frame_block_body** %t21
    call void @P_block_body_load(%Frame_block_body* %t22)
    ; line 2598
    %t23 = getelementptr inbounds %Frame_block_body_statement_call_release, %Frame_block_body_statement_call_release* %.frame, i32 0, i32 0
    %t24 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t23
    %t25 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t24, i32 0, i32 3
    %t26 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t25
    %t27 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t26, i32 0, i32 3
    %t28 = load %Frame_block_body*, %Frame_block_body** %t27
    call void @P_block_body_gen1(%Frame_block_body* %t28, i32 30, i32 13)
    br label %L_endif_2
L_else_2:
    ; line 2599
    call void @P_error(i32 116)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2604
;================================================================================
; scope: block_body_statement_call_abs (level : 6)

; activation record
%Frame_block_body_statement_call_abs = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_abs(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_abs, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_abs, %Frame_block_body_statement_call_abs* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2606
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2607
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp eq i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2607
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_abs, %Frame_block_body_statement_call_abs* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 0)
    br label %L_endif_2
L_else_2:
    ; line 2609
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t21 = load i8*, i8** @realptr
    %t17 = icmp eq i32 %t20, %t21
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2609
    %t22 = getelementptr inbounds %Frame_block_body_statement_call_abs, %Frame_block_body_statement_call_abs* %.frame, i32 0, i32 0
    %t23 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 3
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    call void @P_block_body_gen0(%Frame_block_body* %t27, i32 1)
    br label %L_endif_3
L_else_3:
    ; line 2610
    call void @P_error(i32 125)
    ; line 2610
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


; line 2613
;================================================================================
; scope: block_body_statement_call_sqr (level : 6)

; activation record
%Frame_block_body_statement_call_sqr = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_sqr(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_sqr, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_sqr, %Frame_block_body_statement_call_sqr* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2615
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2616
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp eq i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2616
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_sqr, %Frame_block_body_statement_call_sqr* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 24)
    br label %L_endif_2
L_else_2:
    ; line 2618
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    %t20 = load i8*, i8** %t18
    %t21 = load i8*, i8** @realptr
    %t17 = icmp eq i32 %t20, %t21
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2618
    %t22 = getelementptr inbounds %Frame_block_body_statement_call_sqr, %Frame_block_body_statement_call_sqr* %.frame, i32 0, i32 0
    %t23 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 3
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    call void @P_block_body_gen0(%Frame_block_body* %t27, i32 25)
    br label %L_endif_3
L_else_3:
    ; line 2619
    call void @P_error(i32 125)
    ; line 2619
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


; line 2622
;================================================================================
; scope: block_body_statement_call_trunc (level : 6)

; activation record
%Frame_block_body_statement_call_trunc = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_trunc(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_trunc, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_trunc, %Frame_block_body_statement_call_trunc* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2624
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2625
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @realptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2625
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2626
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_trunc, %Frame_block_body_statement_call_trunc* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 27)
    ; line 2627
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @intptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 2630
;================================================================================
; scope: block_body_statement_call_odd (level : 6)

; activation record
%Frame_block_body_statement_call_odd = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_odd(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_odd, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_odd, %Frame_block_body_statement_call_odd* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2632
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2633
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2633
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2634
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_odd, %Frame_block_body_statement_call_odd* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 20)
    ; line 2635
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @boolptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 2638
;================================================================================
; scope: block_body_statement_call_ord (level : 6)

; activation record
%Frame_block_body_statement_call_ord = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_ord(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_ord, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_ord, %Frame_block_body_statement_call_ord* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2640
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2641
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = bitcast i8* %t9 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 8
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t6 = icmp sge i32 %t13, 3
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2641
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2642
    %t14 = getelementptr inbounds %Frame_block_body_statement_call_ord, %Frame_block_body_statement_call_ord* %.frame, i32 0, i32 0
    %t15 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i8**
    %t22 = load i8*, i8** %t20
    call void @P_block_body_gen0t(%Frame_block_body* %t19, i32 58, i8* %t22)
    ; line 2643
    %t24 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t23 = bitcast i8* %t24 to i8**
    %t25 = load i8*, i8** @intptr
    store i8* %t25, i8** %t23

    ; epilogue
    ret void
}


; line 2646
;================================================================================
; scope: block_body_statement_call_chr (level : 6)

; activation record
%Frame_block_body_statement_call_chr = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_chr(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_chr, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_chr, %Frame_block_body_statement_call_chr* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2648
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2649
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = load i8*, i8** @intptr
    %t6 = icmp ne i32 %t9, %t10
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2649
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2650
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_chr, %Frame_block_body_statement_call_chr* %.frame, i32 0, i32 0
    %t12 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    call void @P_block_body_gen0(%Frame_block_body* %t16, i32 59)
    ; line 2651
    %t18 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i8**
    %t19 = load i8*, i8** @charptr
    store i8* %t19, i8** %t17

    ; epilogue
    ret void
}


; line 2654
;================================================================================
; scope: block_body_statement_call_predsucc (level : 6)

; activation record
%Frame_block_body_statement_call_predsucc = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_predsucc(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_predsucc, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_predsucc, %Frame_block_body_statement_call_predsucc* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2656
    %t4 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i8**
    %t5 = load i8*, i8** %t3
    %t2 = icmp ne i32 %t5, null
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2657
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t10 = bitcast i8* %t9 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 8
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t6 = icmp ne i32 %t13, 0
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2657
    call void @P_error(i32 125)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 2658
    %t17 = getelementptr inbounds %Frame_block_body_statement_call_predsucc, %Frame_block_body_statement_call_predsucc* %.frame, i32 0, i32 0
    %t18 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t17
    %t16 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t18, i32 0, i32 2
    %t15 = load i32, i32* %t16
    %t14 = icmp eq i32 %t15, 7
    br i1 %t14, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2658
    %t19 = getelementptr inbounds %Frame_block_body_statement_call_predsucc, %Frame_block_body_statement_call_predsucc* %.frame, i32 0, i32 0
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
    ; line 2659
    %t28 = getelementptr inbounds %Frame_block_body_statement_call_predsucc, %Frame_block_body_statement_call_predsucc* %.frame, i32 0, i32 0
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


; line 2662
;================================================================================
; scope: block_body_statement_call_eof (level : 6)

; activation record
%Frame_block_body_statement_call_eof = type
{
    ; slink
    %Frame_block_body_statement_call*    ; 0
};

; procedure body
define void @P_block_body_statement_call_eof(%Frame_block_body_statement_call* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_call_eof, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    store %Frame_block_body_statement_call* %.slink, %Frame_block_body_statement_call** %t1

    ; body
    ; line 2664
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 8
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 2665
    call void @P_insymbol()
    ; line 2665
    %t4 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    %t5 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t4
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t5, %T_setofsys %.dummy_set)
    ; line 2666
    %t8 = load i32, i32* @sy
    %t7 = icmp eq i32 %t8, 9
    br i1 %t7, label %L_then_2, label %L_else_2
L_then_2:
    ; line 2666
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 2666
    call void @P_error(i32 4)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 2670
    %t10 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** @textptr
    store i8* %t11, i8** %t9
    ; line 2670
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t12 = bitcast i8* %t13 to i32*
    store i32 1, i32* %t12
    ; line 2670
    %t15 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 12
    %t14 = bitcast i8* %t15 to i32*
    store i32 0, i32* %t14
    ; line 2671
    %t17 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 16
    %t16 = bitcast i8* %t17 to i32*
    store i32 1, i32* %t16
    ; line 2671
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 20
    %t18 = bitcast i8* %t19 to i32*
    store i32 5, i32* %t18
    br label %L_endif_1
L_endif_1:
    ; line 2673
    %t20 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    %t21 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t20
    %t22 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t21, i32 0, i32 3
    %t23 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    call void @P_block_body_loadaddress(%Frame_block_body* %t25)
    ; line 2674
    %t28 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** %t27
    %t26 = icmp ne i32 %t29, null
    br i1 %t26, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 2675
    %t32 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t31 = bitcast i8* %t32 to i8**
    %t33 = load i8*, i8** %t31
    %t34 = bitcast i8* %t33 to %T_structure*
    %t36 = getelementptr inbounds %T_structure, %T_structure* %t34, i32 0, i32 8
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* %t35
    %t30 = icmp ne i32 %t37, 6
    br i1 %t30, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2675
    call void @P_error(i32 125)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 2676
    %t41 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    %t42 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t41
    %t40 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t42, i32 0, i32 2
    %t39 = load i32, i32* %t40
    %t38 = icmp eq i32 %t39, 9
    br i1 %t38, label %L_then_5, label %L_else_5
L_then_5:
    ; line 2676
    %t43 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    %t44 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t43
    %t45 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t44, i32 0, i32 3
    %t46 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t45
    %t47 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t46, i32 0, i32 3
    %t48 = load %Frame_block_body*, %Frame_block_body** %t47
    call void @P_block_body_gen0(%Frame_block_body* %t48, i32 8)
    br label %L_endif_5
L_else_5:
    ; line 2676
    %t49 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    %t50 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t49
    %t51 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t50, i32 0, i32 3
    %t52 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t51
    %t53 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t52, i32 0, i32 3
    %t54 = load %Frame_block_body*, %Frame_block_body** %t53
    call void @P_block_body_gen1(%Frame_block_body* %t54, i32 30, i32 14)
    br label %L_endif_5
L_endif_5:
    ; line 2677
    %t56 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t55 = bitcast i8* %t56 to i8**
    %t57 = load i8*, i8** @boolptr
    store i8* %t57, i8** %t55

    ; epilogue
    ret void
}


; line 2682
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
    ; line 2685
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
    ; line 2687
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 6
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t7 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t6
    %t5 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t7, i32 0, i32 0
    %t4 = load i8*, i8** %t5
    %t8 = bitcast i8* %t4 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 32
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t3
    ; line 2687
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 2
    %t15 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t16 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t15
    %t14 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t16, i32 0, i32 0
    %t13 = load i8*, i8** %t14
    %t17 = bitcast i8* %t13 to %T_identifier*
    %t19 = getelementptr inbounds %T_identifier, %T_identifier* %t17, i32 0, i32 56
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i32, i32* %t18
    store i32 %t20, i32* %t12
    ; line 2688
    %t23 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t24 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t23
    %t22 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t24, i32 0, i32 0
    %t21 = load i8*, i8** %t22
    %t25 = bitcast i8* %t21 to %T_identifier*
    %t27 = getelementptr inbounds %T_identifier, %T_identifier* %t25, i32 0, i32 61
    %t26 = bitcast i8* %t27 to i1*
    %t28 = load i1, i1* %t26
    %t29 = icmp eq i1 0, %t28
    br i1 %t29, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2688
    %t30 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t31 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t30
    %t32 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t31, i32 0, i32 3
    %t33 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t32
    %t34 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t33, i32 0, i32 3
    %t35 = load %Frame_block_body*, %Frame_block_body** %t34
    %t37 = load i32, i32* @level
    %t40 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t41 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t40
    %t39 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t41, i32 0, i32 0
    %t38 = load i8*, i8** %t39
    %t42 = bitcast i8* %t38 to %T_identifier*
    %t44 = getelementptr inbounds %T_identifier, %T_identifier* %t42, i32 0, i32 48
    %t43 = bitcast i8* %t44 to i32*
    %t45 = load i32, i32* %t43
    %t36 = sub i32 %t37, %t45
    call void @P_block_body_gen1(%Frame_block_body* %t35, i32 41, i32 %t36)
    br label %L_endif_1
L_endif_1:
    ; line 2690
    %t47 = load i32, i32* @sy
    %t46 = icmp eq i32 %t47, 8
    br i1 %t46, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 2691
    %t48 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 3
    %t49 = load i32, i32* @lc
    store i32 %t49, i32* %t48
    ; line 2692
    ; line 2767
    %t51 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 3
    %t50 = load i32, i32* %t51
    store i32 %t50, i32* @lc
    ; line 2768
    %t53 = load i32, i32* @sy
    %t52 = icmp eq i32 %t53, 9
    br i1 %t52, label %L_then_3, label %L_else_3
L_then_3:
    ; line 2768
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 2768
    call void @P_error(i32 4)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 2770
    %t56 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 2
    %t55 = load i32, i32* %t56
    %t54 = icmp eq i32 %t55, 0
    br i1 %t54, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 2771
    %t59 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 6
    %t58 = load i8*, i8** %t59
    %t57 = icmp ne i32 %t58, null
    br i1 %t57, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 2771
    call void @P_error(i32 126)
    br label %L_endif_5
L_endif_5:
    ; line 2774
    %t62 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t63 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t62
    %t61 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t63, i32 0, i32 0
    %t60 = load i8*, i8** %t61
    %t64 = bitcast i8* %t60 to %T_identifier*
    %t66 = getelementptr inbounds %T_identifier, %T_identifier* %t64, i32 0, i32 61
    %t65 = bitcast i8* %t66 to i1*
    %t67 = load i1, i1* %t65
    br i1 %t67, label %L_then_6, label %L_else_6
L_then_6:
    ; line 2774
    %t68 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t69 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t68
    %t70 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t69, i32 0, i32 3
    %t71 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body*, %Frame_block_body** %t72
    %t76 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t77 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t76
    %t75 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t77, i32 0, i32 0
    %t74 = load i8*, i8** %t75
    %t78 = bitcast i8* %t74 to %T_identifier*
    %t80 = getelementptr inbounds %T_identifier, %T_identifier* %t78, i32 0, i32 52
    %t79 = bitcast i8* %t80 to i32*
    %t81 = load i32, i32* %t79
    call void @P_block_body_gen1(%Frame_block_body* %t73, i32 30, i32 %t81)
    br label %L_endif_6
L_else_6:
    ; line 2775
    %t82 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t83 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t82
    %t84 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t83, i32 0, i32 3
    %t85 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t84
    %t86 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t85, i32 0, i32 3
    %t87 = load %Frame_block_body*, %Frame_block_body** %t86
    %t89 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 4
    %t88 = load i32, i32* %t89
    %t92 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t93 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t92
    %t91 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t93, i32 0, i32 0
    %t90 = load i8*, i8** %t91
    %t94 = bitcast i8* %t90 to %T_identifier*
    %t96 = getelementptr inbounds %T_identifier, %T_identifier* %t94, i32 0, i32 52
    %t95 = bitcast i8* %t96 to i32*
    %t97 = load i32, i32* %t95
    call void @P_block_body_gencupent(%Frame_block_body* %t87, i32 46, i32 %t88, i32 %t97)
    br label %L_endif_6
L_endif_6:
    ; nop
    br label %L_endif_4
L_endif_4:
    ; line 2778
    %t99 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t98 = bitcast i8* %t99 to i8**
    %t102 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t103 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t102
    %t101 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t103, i32 0, i32 0
    %t100 = load i8*, i8** %t101
    %t104 = bitcast i8* %t100 to %T_identifier*
    %t106 = getelementptr inbounds %T_identifier, %T_identifier* %t104, i32 0, i32 24
    %t105 = bitcast i8* %t106 to i8**
    %t107 = load i8*, i8** %t105
    store i8* %t107, i8** %t98

    ; epilogue
    ret void
}


; line 2826
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
    ; line 3110
    call void @P_block_body_statement_expression_simpleexpression(%Frame_block_body_statement_expression* %.frame, %T_setofsys %.dummy_set)
    ; line 3111
    %t5 = load i32, i32* @sy
    %t4 = icmp eq i32 %t5, 7
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3113
    %t8 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i8**
    %t9 = load i8*, i8** %t7
    %t6 = icmp ne i32 %t9, null
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3114
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    %t14 = bitcast i8* %t13 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 8
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t10 = icmp sle i32 %t17, 3
    br i1 %t10, label %L_then_3, label %L_else_3
L_then_3:
    ; line 3114
    %t18 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t19 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t18
    %t20 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t19, i32 0, i32 3
    %t21 = load %Frame_block_body*, %Frame_block_body** %t20
    call void @P_block_body_load(%Frame_block_body* %t21)
    br label %L_endif_3
L_else_3:
    ; line 3115
    %t22 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t23 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    call void @P_block_body_loadaddress(%Frame_block_body* %t25)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 3116
    %t26 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t27 = load %T_attr, %T_attr* @gattr
    store %T_attr %t27, %T_attr* %t26
    ; line 3116
    %t28 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 2
    %t29 = load i32, i32* @op
    store i32 %t29, i32* %t28
    ; line 3117
    %t32 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 2
    %t31 = load i32, i32* %t32
    %t30 = icmp eq i32 %t31, 14
    br i1 %t30, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3118
    %t33 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t35 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t34, i32 0, i32 3
    %t36 = load %Frame_block_body*, %Frame_block_body** %t35
    %t37 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t36, i32 0, i32 14
    %t38 = load %Frame_block*, %Frame_block** %t37
    %t40 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t39 = bitcast i8* %t40 to i8**
    %t41 = load i8*, i8** %t39
    %t42 = load i8*, i8** @intptr
    %t43 = call i1 @F_block_comptypes(%Frame_block* %t38, i8* %t41, i8* %t42)
    %t44 = icmp eq i1 0, %t43
    br i1 %t44, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3119
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
    ; line 3120
    call void @P_insymbol()
    ; line 3120
    %t53 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 0
    %t52 = load %T_setofsys, %T_setofsys* %t53
    call void @P_block_body_statement_expression_simpleexpression(%Frame_block_body_statement_expression* %.frame, %T_setofsys %t52)
    ; line 3121
    %t56 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t55 = bitcast i8* %t56 to i8**
    %t57 = load i8*, i8** %t55
    %t54 = icmp ne i32 %t57, null
    br i1 %t54, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 3122
    %t60 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t59 = bitcast i8* %t60 to i8**
    %t61 = load i8*, i8** %t59
    %t62 = bitcast i8* %t61 to %T_structure*
    %t64 = getelementptr inbounds %T_structure, %T_structure* %t62, i32 0, i32 8
    %t63 = bitcast i8* %t64 to i32*
    %t65 = load i32, i32* %t63
    %t58 = icmp sle i32 %t65, 3
    br i1 %t58, label %L_then_7, label %L_else_7
L_then_7:
    ; line 3122
    %t66 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t67 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t66
    %t68 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t67, i32 0, i32 3
    %t69 = load %Frame_block_body*, %Frame_block_body** %t68
    call void @P_block_body_load(%Frame_block_body* %t69)
    br label %L_endif_7
L_else_7:
    ; line 3123
    %t70 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t71 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body*, %Frame_block_body** %t72
    call void @P_block_body_loadaddress(%Frame_block_body* %t73)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 3124
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
    ; line 3125
    %t86 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 2
    %t85 = load i32, i32* %t86
    %t84 = icmp eq i32 %t85, 14
    br i1 %t84, label %L_then_10, label %L_else_10
L_then_10:
    ; line 3126
    %t89 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t88 = bitcast i8* %t89 to i8**
    %t90 = load i8*, i8** %t88
    %t91 = bitcast i8* %t90 to %T_structure*
    %t93 = getelementptr inbounds %T_structure, %T_structure* %t91, i32 0, i32 8
    %t92 = bitcast i8* %t93 to i32*
    %t94 = load i32, i32* %t92
    %t87 = icmp eq i32 %t94, 3
    br i1 %t87, label %L_then_11, label %L_else_11
L_then_11:
    ; line 3127
    %t95 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t96 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t95
    %t97 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t96, i32 0, i32 3
    %t98 = load %Frame_block_body*, %Frame_block_body** %t97
    %t99 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t98, i32 0, i32 14
    %t100 = load %Frame_block*, %Frame_block** %t99
    %t101 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t103 = getelementptr inbounds %T_attr, %T_attr* %t101, i32 0, i32 0
    %t102 = bitcast i8* %t103 to i8**
    %t104 = load i8*, i8** %t102
    %t106 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t105 = bitcast i8* %t106 to i8**
    %t107 = load i8*, i8** %t105
    %t108 = bitcast i8* %t107 to %T_structure*
    %t110 = getelementptr inbounds %T_structure, %T_structure* %t108, i32 0, i32 16
    %t109 = bitcast i8* %t110 to i8**
    %t111 = load i8*, i8** %t109
    %t112 = call i1 @F_block_comptypes(%Frame_block* %t100, i8* %t104, i8* %t111)
    br i1 %t112, label %L_then_12, label %L_else_12
L_then_12:
    ; line 3128
    %t113 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t114 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t113
    %t115 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t114, i32 0, i32 3
    %t116 = load %Frame_block_body*, %Frame_block_body** %t115
    call void @P_block_body_gen0(%Frame_block_body* %t116, i32 11)
    br label %L_endif_12
L_else_12:
    ; line 3129
    call void @P_error(i32 129)
    ; line 3129
    %t118 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t117 = bitcast i8* %t118 to i8**
    store i8* null, i8** %t117
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_else_11:
    ; line 3130
    call void @P_error(i32 130)
    ; line 3130
    %t120 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t119 = bitcast i8* %t120 to i8**
    store i8* null, i8** %t119
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_else_10:
    ; line 3133
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
    ; line 3134
    %t130 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t132 = getelementptr inbounds %T_attr, %T_attr* %t130, i32 0, i32 0
    %t131 = bitcast i8* %t132 to i8**
    %t133 = load i8*, i8** %t131
    %t134 = load i8*, i8** @intptr
    %t129 = icmp eq i32 %t133, %t134
    br i1 %t129, label %L_then_14, label %L_else_14
L_then_14:
    ; line 3135
    %t135 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t136 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t135
    %t137 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t136, i32 0, i32 3
    %t138 = load %Frame_block_body*, %Frame_block_body** %t137
    call void @P_block_body_gen0(%Frame_block_body* %t138, i32 9)
    ; line 3136
    %t139 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t141 = getelementptr inbounds %T_attr, %T_attr* %t139, i32 0, i32 0
    %t140 = bitcast i8* %t141 to i8**
    %t142 = load i8*, i8** @realptr
    store i8* %t142, i8** %t140
    br label %L_endif_14
L_else_14:
    ; line 3139
    %t145 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t144 = bitcast i8* %t145 to i8**
    %t146 = load i8*, i8** %t144
    %t147 = load i8*, i8** @intptr
    %t143 = icmp eq i32 %t146, %t147
    br i1 %t143, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 3140
    %t148 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t149 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t148
    %t150 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t149, i32 0, i32 3
    %t151 = load %Frame_block_body*, %Frame_block_body** %t150
    call void @P_block_body_gen0(%Frame_block_body* %t151, i32 10)
    ; line 3141
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
    ; line 3143
    %t155 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 5
    %t156 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t155
    %t157 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t156, i32 0, i32 3
    %t158 = load %Frame_block_body*, %Frame_block_body** %t157
    %t159 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t158, i32 0, i32 14
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
    ; line 3144
    %t169 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 3
    %t170 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %.frame, i32 0, i32 1
    %t172 = getelementptr inbounds %T_attr, %T_attr* %t170, i32 0, i32 0
    %t171 = bitcast i8* %t172 to i8**
    %t173 = load i8*, i8** %t171
    %t174 = bitcast i8* %t173 to %T_structure*
    %t176 = getelementptr inbounds %T_structure, %T_structure* %t174, i32 0, i32 4
    %t175 = bitcast i8* %t176 to i32*
    %t177 = load i32, i32* %t175
    store i32 %t177, i32* %t169
    ; line 3145
    ; line 3176
    br label %L_endif_16
L_else_16:
    ; line 3185
    call void @P_error(i32 129)
    br label %L_endif_16
L_endif_16:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    ; line 3187
    %t179 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t178 = bitcast i8* %t179 to i8**
    %t180 = load i8*, i8** @boolptr
    store i8* %t180, i8** %t178
    ; line 3187
    %t182 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t181 = bitcast i8* %t182 to i32*
    store i32 2, i32* %t181
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 2829
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
    ; line 3041
    %t3 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    store i1 0, i1* %t3
    ; line 3042
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
    ; line 3043
    %t8 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    %t10 = load i32, i32* @op
    %t9 = icmp eq i32 %t10, 6
    store i1 %t9, i1* %t8
    ; line 3043
    call void @P_insymbol()
    br label %L_endif_2
L_endif_2:
    ; line 3044
    call void @P_block_body_statement_expression_simpleexpression_term(%Frame_block_body_statement_expression_simpleexpression* %.frame, %T_setofsys %.dummy_set)
    ; line 3045
    %t13 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    %t12 = load i1, i1* %t13
    br i1 %t12, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3046
    %t14 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    %t15 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t15, i32 0, i32 5
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    call void @P_block_body_load(%Frame_block_body* %t19)
    ; line 3047
    %t22 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t21 = bitcast i8* %t22 to i8**
    %t23 = load i8*, i8** %t21
    %t24 = load i8*, i8** @intptr
    %t20 = icmp eq i32 %t23, %t24
    br i1 %t20, label %L_then_4, label %L_else_4
L_then_4:
    ; line 3047
    %t25 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    %t26 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t25
    %t27 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t26, i32 0, i32 5
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body*, %Frame_block_body** %t29
    call void @P_block_body_gen0(%Frame_block_body* %t30, i32 17)
    br label %L_endif_4
L_else_4:
    ; line 3049
    %t33 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t32 = bitcast i8* %t33 to i8**
    %t34 = load i8*, i8** %t32
    %t35 = load i8*, i8** @realptr
    %t31 = icmp eq i32 %t34, %t35
    br i1 %t31, label %L_then_5, label %L_else_5
L_then_5:
    ; line 3049
    %t36 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    %t37 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t36
    %t38 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t37, i32 0, i32 5
    %t39 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t38
    %t40 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t39, i32 0, i32 3
    %t41 = load %Frame_block_body*, %Frame_block_body** %t40
    call void @P_block_body_gen0(%Frame_block_body* %t41, i32 18)
    br label %L_endif_5
L_else_5:
    ; line 3050
    call void @P_error(i32 134)
    ; line 3050
    %t43 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t42 = bitcast i8* %t43 to i8**
    store i8* null, i8** %t42
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 3052

    ; epilogue
    ret void
}


; line 2832
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
    ; line 2986
    call void @P_block_body_statement_expression_simpleexpression_term_factor(%Frame_block_body_statement_expression_simpleexpression_term* %.frame, %T_setofsys %.dummy_set)
    ; line 2987

    ; epilogue
    ret void
}


; line 2835
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
    i1,    ; 5: varpart

    ; slink
    %Frame_block_body_statement_expression_simpleexpression_term*    ; 6
};

; procedure body
define void @P_block_body_statement_expression_simpleexpression_term_factor(%Frame_block_body_statement_expression_simpleexpression_term* %.slink, %T_setofsys %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_expression_simpleexpression_term_factor, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term_factor, %Frame_block_body_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 6
    store %Frame_block_body_statement_expression_simpleexpression_term* %.slink, %Frame_block_body_statement_expression_simpleexpression_term** %t1
    %t2 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term_factor, %Frame_block_body_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 0
    store %T_setofsys %fsys, %T_setofsys* %t2

    ; body
    ; line 2839
    %t4 = icmp eq i1 0, true
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2840
    call void @P_error(i32 58)
    ; line 2840
    %t5 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term_factor, %Frame_block_body_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 6
    %t6 = load %Frame_block_body_statement_expression_simpleexpression_term*, %Frame_block_body_statement_expression_simpleexpression_term** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression_term, %Frame_block_body_statement_expression_simpleexpression_term* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement_expression_simpleexpression*, %Frame_block_body_statement_expression_simpleexpression** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %t8, i32 0, i32 4
    %t10 = load %Frame_block_body_statement_expression*, %Frame_block_body_statement_expression** %t9
    %t11 = getelementptr inbounds %Frame_block_body_statement_expression, %Frame_block_body_statement_expression* %t10, i32 0, i32 5
    %t12 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t12, i32 0, i32 3
    %t14 = load %Frame_block_body*, %Frame_block_body** %t13
    %t15 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t14, i32 0, i32 14
    %t16 = load %Frame_block*, %Frame_block** %t15
    call void @P_block_skip(%Frame_block* %t16, %T_setofsys true)
    ; line 2841
    %t19 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i8**
    store i8* null, i8** %t18
    br label %L_endif_1
L_endif_1:
    ; line 2843

    ; epilogue
    ret void
}


; line 3191
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
    ; line 3193
    %t3 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t7 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    call void @P_block_body_statement_selector(%Frame_block_body_statement* %t4, %T_setofsys %.dummy_set, i8* %t6)
    ; line 3194
    %t9 = load i32, i32* @sy
    %t8 = icmp eq i32 %t9, 17
    br i1 %t8, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3196
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    %t10 = icmp ne i32 %t13, null
    br i1 %t10, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3197
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
    %t25 = getelementptr inbounds %T_structure, %T_structure* %t23, i32 0, i32 8
    %t24 = bitcast i8* %t25 to i32*
    %t26 = load i32, i32* %t24
    %t19 = icmp sgt i32 %t26, 3
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t14 = phi [%t19, %L_OR_eval_3], [true, %L_OR_expr_3]
    br i1 %t14, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3198
    %t27 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body*, %Frame_block_body** %t29
    call void @P_block_body_loadaddress(%Frame_block_body* %t30)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_2
L_endif_2:
    ; line 3199
    %t31 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 1
    %t32 = load %T_attr, %T_attr* @gattr
    store %T_attr %t32, %T_attr* %t31
    ; line 3200
    call void @P_insymbol()
    ; line 3200
    %t33 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t37 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t38 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t37
    %t36 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t38, i32 0, i32 0
    %t35 = load %T_setofsys, %T_setofsys* %t36
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t34, %T_setofsys %t35)
    ; line 3201
    %t41 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t40 = bitcast i8* %t41 to i8**
    %t42 = load i8*, i8** %t40
    %t39 = icmp ne i32 %t42, null
    br i1 %t39, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3202
    %t45 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t44 = bitcast i8* %t45 to i8**
    %t46 = load i8*, i8** %t44
    %t47 = bitcast i8* %t46 to %T_structure*
    %t49 = getelementptr inbounds %T_structure, %T_structure* %t47, i32 0, i32 8
    %t48 = bitcast i8* %t49 to i32*
    %t50 = load i32, i32* %t48
    %t43 = icmp sle i32 %t50, 3
    br i1 %t43, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3202
    %t51 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t52 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t51
    %t53 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t52, i32 0, i32 3
    %t54 = load %Frame_block_body*, %Frame_block_body** %t53
    call void @P_block_body_load(%Frame_block_body* %t54)
    br label %L_endif_6
L_else_6:
    ; line 3203
    %t55 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t56 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t55
    %t57 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t56, i32 0, i32 3
    %t58 = load %Frame_block_body*, %Frame_block_body** %t57
    call void @P_block_body_loadaddress(%Frame_block_body* %t58)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    ; line 3204
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
    ; line 3206
    br label %L_AND_expr_9
L_AND_expr_9:
    %t70 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t71 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t70
    %t72 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t71, i32 0, i32 3
    %t73 = load %Frame_block_body*, %Frame_block_body** %t72
    %t74 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t73, i32 0, i32 14
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
    ; line 3207
    %t87 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t88 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t87
    %t89 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t88, i32 0, i32 3
    %t90 = load %Frame_block_body*, %Frame_block_body** %t89
    call void @P_block_body_gen0(%Frame_block_body* %t90, i32 10)
    ; line 3208
    %t92 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t91 = bitcast i8* %t92 to i8**
    %t93 = load i8*, i8** @realptr
    store i8* %t93, i8** %t91
    br label %L_endif_10
L_endif_10:
    ; line 3210
    %t94 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t95 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t94
    %t96 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t95, i32 0, i32 3
    %t97 = load %Frame_block_body*, %Frame_block_body** %t96
    %t98 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t97, i32 0, i32 14
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
    ; line 3211
    br label %L_endif_11
L_else_11:
    ; line 3227
    call void @P_error(i32 129)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_8
L_endif_8:
    br label %L_endif_1
L_else_1:
    ; line 3230
    call void @P_error(i32 51)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3233
;================================================================================
; scope: block_body_statement_gotostatement (level : 5)

; activation record
%Frame_block_body_statement_gotostatement = type
{
    ; variables
    i1,    ; 0: found
    i8*,    ; 1: llp
    i32,    ; 2: ttop
    i32,    ; 3: ttop1

    ; slink
    %Frame_block_body_statement*    ; 4
};

; procedure body
define void @P_block_body_statement_gotostatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_gotostatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 4
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 3236
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 1
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3238
    %t4 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 0
    store i1 0, i1* %t4
    ; line 3239
    %t5 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 2
    %t6 = load i32, i32* @top
    store i32 %t6, i32* %t5
    ; line 3240
    ; line 3241
    %t7 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 3
    %t9 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    store i32 %t8, i32* %t7
    ; line 3242
    ; line 3255
    %t11 = getelementptr inbounds %Frame_block_body_statement_gotostatement, %Frame_block_body_statement_gotostatement* %.frame, i32 0, i32 0
    %t10 = load i1, i1* %t11
    %t12 = icmp eq i1 0, %t10
    br i1 %t12, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3255
    call void @P_error(i32 167)
    br label %L_endif_2
L_endif_2:
    ; line 3256
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3258
    call void @P_error(i32 15)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3261
;================================================================================
; scope: block_body_statement_compoundstatement (level : 5)

; activation record
%Frame_block_body_statement_compoundstatement = type
{
    ; slink
    %Frame_block_body_statement*    ; 0
};

; procedure body
define void @P_block_body_statement_compoundstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_compoundstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_compoundstatement, %Frame_block_body_statement_compoundstatement* %.frame, i32 0, i32 0
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 3263
    ; line 3269
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 39
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3269
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3269
    call void @P_error(i32 13)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3272
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
    ; line 3274
    %t2 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t3, %T_setofsys %.dummy_set)
    ; line 3275
    %t5 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t5)
    ; line 3275
    %t6 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t7 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t6
    %t8 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t7, i32 0, i32 3
    %t9 = load %Frame_block_body*, %Frame_block_body** %t8
    %t11 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    call void @P_block_body_genfjp(%Frame_block_body* %t9, i32 %t10)
    ; line 3276
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 46
    br i1 %t12, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3276
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3276
    call void @P_error(i32 52)
    br label %L_endif_1
L_endif_1:
    ; line 3277
    %t14 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t15 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body*, %Frame_block_body** %t16
    call void @P_block_body_statement(%Frame_block_body* %t17, %T_setofsys %.dummy_set)
    ; line 3278
    %t20 = load i32, i32* @sy
    %t19 = icmp eq i32 %t20, 40
    br i1 %t19, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3279
    %t21 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t21)
    ; line 3279
    %t22 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t23 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    %t27 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 1
    %t26 = load i32, i32* %t27
    call void @P_block_body_genujpxjp(%Frame_block_body* %t25, i32 57, i32 %t26)
    ; line 3280
    %t28 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t29 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t28
    %t30 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t29, i32 0, i32 3
    %t31 = load %Frame_block_body*, %Frame_block_body** %t30
    %t33 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t32 = load i32, i32* %t33
    call void @P_block_body_putlabel(%Frame_block_body* %t31, i32 %t32)
    ; line 3281
    call void @P_insymbol()
    ; line 3281
    %t34 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t35 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t34
    %t36 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t35, i32 0, i32 3
    %t37 = load %Frame_block_body*, %Frame_block_body** %t36
    %t40 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t41 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t40
    %t39 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t41, i32 0, i32 0
    %t38 = load %T_setofsys, %T_setofsys* %t39
    call void @P_block_body_statement(%Frame_block_body* %t37, %T_setofsys %t38)
    ; line 3282
    %t42 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t43 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t42
    %t44 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t43, i32 0, i32 3
    %t45 = load %Frame_block_body*, %Frame_block_body** %t44
    %t47 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 1
    %t46 = load i32, i32* %t47
    call void @P_block_body_putlabel(%Frame_block_body* %t45, i32 %t46)
    br label %L_endif_2
L_else_2:
    ; line 3284
    %t48 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t49 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t48
    %t50 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t49, i32 0, i32 3
    %t51 = load %Frame_block_body*, %Frame_block_body** %t50
    %t53 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t52 = load i32, i32* %t53
    call void @P_block_body_putlabel(%Frame_block_body* %t51, i32 %t52)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 3287
;================================================================================
; scope: block_body_statement_casestatement (level : 5)

; types
%T_block_body_statement_casestatement_caseinfo = type [16 x i8]

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

    ; slink
    %Frame_block_body_statement*    ; 12
};

; procedure body
define void @P_block_body_statement_casestatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_casestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 3297
    %t2 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t3, %T_setofsys %.dummy_set)
    ; line 3298
    %t5 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t6 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    call void @P_block_body_load(%Frame_block_body* %t8)
    ; line 3298
    %t9 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t9)
    ; line 3299
    %t10 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    store i8* %t13, i8** %t10
    ; line 3300
    %t16 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t15 = load i8*, i8** %t16
    %t14 = icmp ne i32 %t15, null
    br i1 %t14, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3301
    br label %L_OR_expr_2
L_OR_expr_2:
    %t20 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_structure*
    %t23 = getelementptr inbounds %T_structure, %T_structure* %t21, i32 0, i32 8
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
    ; line 3302
    call void @P_error(i32 144)
    ; line 3302
    %t29 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    store i8* null, i8** %t29
    br label %L_endif_3
L_else_3:
    ; line 3303
    %t30 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t31 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t30
    %t32 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t31, i32 0, i32 3
    %t33 = load %Frame_block_body*, %Frame_block_body** %t32
    %t34 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t33, i32 0, i32 14
    %t35 = load %Frame_block*, %Frame_block** %t34
    %t37 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t36 = load i8*, i8** %t37
    %t38 = load i8*, i8** @intptr
    %t39 = call i1 @F_block_comptypes(%Frame_block* %t35, i8* %t36, i8* %t38)
    %t40 = icmp eq i1 0, %t39
    br i1 %t40, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3303
    %t41 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
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
    ; line 3304
    %t47 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t48 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t47
    %t49 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t48, i32 0, i32 3
    %t50 = load %Frame_block_body*, %Frame_block_body** %t49
    %t52 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t51 = load i32, i32* %t52
    call void @P_block_body_genujpxjp(%Frame_block_body* %t50, i32 57, i32 %t51)
    ; line 3305
    %t54 = load i32, i32* @sy
    %t53 = icmp eq i32 %t54, 42
    br i1 %t53, label %L_then_5, label %L_else_5
L_then_5:
    ; line 3305
    call void @P_insymbol()
    br label %L_endif_5
L_else_5:
    ; line 3305
    call void @P_error(i32 8)
    br label %L_endif_5
L_endif_5:
    ; line 3306
    %t55 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    store i8* null, i8** %t55
    ; line 3306
    %t56 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t56)
    ; line 3307
    ; line 3346
    %t57 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t58 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t57
    %t59 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t58, i32 0, i32 3
    %t60 = load %Frame_block_body*, %Frame_block_body** %t59
    %t62 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t61 = load i32, i32* %t62
    call void @P_block_body_putlabel(%Frame_block_body* %t60, i32 %t61)
    ; line 3347
    %t65 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t64 = load i8*, i8** %t65
    %t63 = icmp ne i32 %t64, null
    br i1 %t63, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 3348
    %t66 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 4
    %t68 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t67 = load i8*, i8** %t68
    %t69 = bitcast i8* %t67 to %T_block_body_statement_casestatement_caseinfo*
    %t71 = getelementptr inbounds %T_block_body_statement_casestatement_caseinfo, %T_block_body_statement_casestatement_caseinfo* %t69, i32 0, i32 12
    %t70 = bitcast i8* %t71 to i32*
    %t72 = load i32, i32* %t70
    store i32 %t72, i32* %t66
    ; line 3350
    %t73 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 6
    %t75 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t74 = load i8*, i8** %t75
    store i8* %t74, i8** %t73
    ; line 3350
    %t76 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    store i8* null, i8** %t76
    ; line 3351
    ; line 3354
    %t77 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t79 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    %t78 = load i8*, i8** %t79
    %t80 = bitcast i8* %t78 to %T_block_body_statement_casestatement_caseinfo*
    %t82 = getelementptr inbounds %T_block_body_statement_casestatement_caseinfo, %T_block_body_statement_casestatement_caseinfo* %t80, i32 0, i32 12
    %t81 = bitcast i8* %t82 to i32*
    %t83 = load i32, i32* %t81
    store i32 %t83, i32* %t77
    ; line 3355
    %t87 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 4
    %t86 = load i32, i32* %t87
    %t89 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t88 = load i32, i32* %t89
    %t85 = sub i32 %t86, %t88
    %t84 = icmp slt i32 %t85, 1000
    br i1 %t84, label %L_then_7, label %L_else_7
L_then_7:
    ; line 3357
    %t90 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t91 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t90
    %t92 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t91, i32 0, i32 3
    %t93 = load %Frame_block_body*, %Frame_block_body** %t92
    %t95 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t94 = load i32, i32* %t95
    %t97 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 4
    %t96 = load i32, i32* %t97
    %t98 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t93, i32 45, i32 %t94, i32 %t96, i8* %t98)
    ; line 3358
    %t99 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t100 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t99
    %t101 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t100, i32 0, i32 3
    %t102 = load %Frame_block_body*, %Frame_block_body** %t101
    %t104 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 5
    %t103 = load i32, i32* %t104
    call void @P_block_body_gen2(%Frame_block_body* %t102, i32 51, i32 1, i32 %t103)
    ; line 3358
    %t105 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t106 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t105
    %t107 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t106, i32 0, i32 3
    %t108 = load %Frame_block_body*, %Frame_block_body** %t107
    call void @P_block_body_gen0(%Frame_block_body* %t108, i32 21)
    ; line 3358
    %t109 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t109)
    ; line 3359
    %t110 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t111 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t110
    %t112 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t111, i32 0, i32 3
    %t113 = load %Frame_block_body*, %Frame_block_body** %t112
    %t115 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t114 = load i32, i32* %t115
    call void @P_block_body_genujpxjp(%Frame_block_body* %t113, i32 44, i32 %t114)
    ; line 3359
    %t116 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t117 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t116
    %t118 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t117, i32 0, i32 3
    %t119 = load %Frame_block_body*, %Frame_block_body** %t118
    %t121 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t120 = load i32, i32* %t121
    call void @P_block_body_putlabel(%Frame_block_body* %t119, i32 %t120)
    ; line 3360
    ; line 3371
    %t122 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t123 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t122
    %t124 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t123, i32 0, i32 3
    %t125 = load %Frame_block_body*, %Frame_block_body** %t124
    %t127 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 1
    %t126 = load i32, i32* %t127
    call void @P_block_body_putlabel(%Frame_block_body* %t125, i32 %t126)
    br label %L_endif_7
L_else_7:
    ; line 3373
    call void @P_error(i32 157)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 3375
    %t129 = load i32, i32* @sy
    %t128 = icmp eq i32 %t129, 39
    br i1 %t128, label %L_then_8, label %L_else_8
L_then_8:
    ; line 3375
    call void @P_insymbol()
    br label %L_endif_8
L_else_8:
    ; line 3375
    call void @P_error(i32 13)
    br label %L_endif_8
L_endif_8:

    ; epilogue
    ret void
}


; line 3378
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
    ; line 3380
    %t2 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t2)
    ; line 3380
    %t3 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_putlabel(%Frame_block_body* %t6, i32 %t7)
    ; line 3381
    ; line 3384
    ; line 3390
    %t10 = load i32, i32* @sy
    %t9 = icmp eq i32 %t10, 41
    br i1 %t9, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3391
    call void @P_insymbol()
    ; line 3391
    %t11 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t12 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t11
    %t15 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t16 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t15
    %t14 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t16, i32 0, i32 0
    %t13 = load %T_setofsys, %T_setofsys* %t14
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t12, %T_setofsys %t13)
    ; line 3391
    %t17 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t18 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t17
    %t19 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t18, i32 0, i32 3
    %t20 = load %Frame_block_body*, %Frame_block_body** %t19
    %t22 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    call void @P_block_body_genfjp(%Frame_block_body* %t20, i32 %t21)
    br label %L_endif_1
L_else_1:
    ; line 3393
    call void @P_error(i32 53)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 3396
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
    ; line 3398
    %t2 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t2)
    ; line 3398
    %t3 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_putlabel(%Frame_block_body* %t6, i32 %t7)
    ; line 3399
    %t9 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t10 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t9
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t10, %T_setofsys %.dummy_set)
    ; line 3399
    %t12 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t12)
    ; line 3399
    %t13 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    %t18 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    call void @P_block_body_genfjp(%Frame_block_body* %t16, i32 %t17)
    ; line 3400
    %t20 = load i32, i32* @sy
    %t19 = icmp eq i32 %t20, 43
    br i1 %t19, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3400
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3400
    call void @P_error(i32 54)
    br label %L_endif_1
L_endif_1:
    ; line 3401
    %t21 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t22 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t21
    %t23 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t22, i32 0, i32 3
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    %t27 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 0
    %t25 = load %T_setofsys, %T_setofsys* %t26
    call void @P_block_body_statement(%Frame_block_body* %t24, %T_setofsys %t25)
    ; line 3401
    %t29 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t30 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t29
    %t31 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t30, i32 0, i32 3
    %t32 = load %Frame_block_body*, %Frame_block_body** %t31
    %t34 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    %t33 = load i32, i32* %t34
    call void @P_block_body_genujpxjp(%Frame_block_body* %t32, i32 57, i32 %t33)
    ; line 3401
    %t35 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t36 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t35
    %t37 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t36, i32 0, i32 3
    %t38 = load %Frame_block_body*, %Frame_block_body** %t37
    %t40 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    %t39 = load i32, i32* %t40
    call void @P_block_body_putlabel(%Frame_block_body* %t38, i32 %t39)

    ; epilogue
    ret void
}


; line 3404
;================================================================================
; scope: block_body_statement_forstatement (level : 5)

; activation record
%Frame_block_body_statement_forstatement = type
{
    ; variables
    i32,    ; 0: laddr
    %T_attr,    ; 1: lattr
    i32,    ; 2: lcix
    i32,    ; 3: llc
    i32,    ; 4: lsy

    ; slink
    %Frame_block_body_statement*    ; 5
};

; procedure body
define void @P_block_body_statement_forstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_forstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 3408
    %t2 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 3
    %t3 = load i32, i32* @lc
    store i32 %t3, i32* %t2
    ; line 3410
    %t4 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_attr, %T_attr* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    store i8* null, i8** %t5
    ; line 3410
    %t7 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %T_attr, %T_attr* %t7, i32 0, i32 8
    %t8 = bitcast i8* %t9 to i32*
    store i32 1, i32* %t8
    ; line 3411
    %t10 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_attr, %T_attr* %t10, i32 0, i32 12
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    ; line 3411
    %t13 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t15 = getelementptr inbounds %T_attr, %T_attr* %t13, i32 0, i32 16
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* @level
    store i32 %t16, i32* %t14
    ; line 3411
    %t17 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t19 = getelementptr inbounds %T_attr, %T_attr* %t17, i32 0, i32 20
    %t18 = bitcast i8* %t19 to i32*
    store i32 0, i32* %t18
    ; line 3413
    %t21 = load i32, i32* @sy
    %t20 = icmp eq i32 %t21, 0
    br i1 %t20, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3414
    %t23 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t24 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t23
    %t22 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t24, i32 0, i32 1
    call void @P_searchid(%T_setofids %.dummy_set, i8** %t22)
    ; line 3416
    %t25 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t27 = getelementptr inbounds %T_attr, %T_attr* %t25, i32 0, i32 0
    %t26 = bitcast i8* %t27 to i8**
    %t30 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t31 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t30
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t31, i32 0, i32 1
    %t28 = load i8*, i8** %t29
    %t32 = bitcast i8* %t28 to %T_identifier*
    %t34 = getelementptr inbounds %T_identifier, %T_identifier* %t32, i32 0, i32 24
    %t33 = bitcast i8* %t34 to i8**
    %t35 = load i8*, i8** %t33
    store i8* %t35, i8** %t26
    ; line 3416
    %t36 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t38 = getelementptr inbounds %T_attr, %T_attr* %t36, i32 0, i32 8
    %t37 = bitcast i8* %t38 to i32*
    store i32 1, i32* %t37
    ; line 3417
    %t42 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t43 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t42
    %t41 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t43, i32 0, i32 1
    %t40 = load i8*, i8** %t41
    %t44 = bitcast i8* %t40 to %T_identifier*
    %t46 = getelementptr inbounds %T_identifier, %T_identifier* %t44, i32 0, i32 44
    %t45 = bitcast i8* %t46 to i32*
    %t47 = load i32, i32* %t45
    %t39 = icmp eq i32 %t47, 0
    br i1 %t39, label %L_then_2, label %L_else_2
L_then_2:
    ; line 3418
    %t48 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t50 = getelementptr inbounds %T_attr, %T_attr* %t48, i32 0, i32 12
    %t49 = bitcast i8* %t50 to i32*
    store i32 0, i32* %t49
    ; line 3418
    %t51 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t53 = getelementptr inbounds %T_attr, %T_attr* %t51, i32 0, i32 16
    %t52 = bitcast i8* %t53 to i32*
    %t56 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t57 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t56
    %t55 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t57, i32 0, i32 1
    %t54 = load i8*, i8** %t55
    %t58 = bitcast i8* %t54 to %T_identifier*
    %t60 = getelementptr inbounds %T_identifier, %T_identifier* %t58, i32 0, i32 48
    %t59 = bitcast i8* %t60 to i32*
    %t61 = load i32, i32* %t59
    store i32 %t61, i32* %t52
    ; line 3419
    %t62 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t64 = getelementptr inbounds %T_attr, %T_attr* %t62, i32 0, i32 20
    %t63 = bitcast i8* %t64 to i32*
    %t67 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t68 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t67
    %t66 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t68, i32 0, i32 1
    %t65 = load i8*, i8** %t66
    %t69 = bitcast i8* %t65 to %T_identifier*
    %t71 = getelementptr inbounds %T_identifier, %T_identifier* %t69, i32 0, i32 52
    %t70 = bitcast i8* %t71 to i32*
    %t72 = load i32, i32* %t70
    store i32 %t72, i32* %t63
    br label %L_endif_2
L_else_2:
    ; line 3421
    call void @P_error(i32 155)
    ; line 3421
    %t73 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t75 = getelementptr inbounds %T_attr, %T_attr* %t73, i32 0, i32 0
    %t74 = bitcast i8* %t75 to i8**
    store i8* null, i8** %t74
    br label %L_endif_2
L_endif_2:
    ; line 3423
    %t77 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t79 = getelementptr inbounds %T_attr, %T_attr* %t77, i32 0, i32 0
    %t78 = bitcast i8* %t79 to i8**
    %t80 = load i8*, i8** %t78
    %t76 = icmp ne i32 %t80, null
    br i1 %t76, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3424
    br label %L_OR_expr_4
L_OR_expr_4:
    %t83 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t85 = getelementptr inbounds %T_attr, %T_attr* %t83, i32 0, i32 0
    %t84 = bitcast i8* %t85 to i8**
    %t86 = load i8*, i8** %t84
    %t87 = bitcast i8* %t86 to %T_structure*
    %t89 = getelementptr inbounds %T_structure, %T_structure* %t87, i32 0, i32 8
    %t88 = bitcast i8* %t89 to i32*
    %t90 = load i32, i32* %t88
    %t82 = icmp sgt i32 %t90, 1
    br i1 %t82, label %L_OR_shortcut_4, label %L_OR_eval_4
L_OR_eval_4:
    %t91 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t92 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t91
    %t93 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t92, i32 0, i32 3
    %t94 = load %Frame_block_body*, %Frame_block_body** %t93
    %t95 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t94, i32 0, i32 14
    %t96 = load %Frame_block*, %Frame_block** %t95
    %t97 = load i8*, i8** @realptr
    %t98 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t100 = getelementptr inbounds %T_attr, %T_attr* %t98, i32 0, i32 0
    %t99 = bitcast i8* %t100 to i8**
    %t101 = load i8*, i8** %t99
    %t102 = call i1 @F_block_comptypes(%Frame_block* %t96, i8* %t97, i8* %t101)
    br label %L_OR_shortcut_4
L_OR_shortcut_4:
    %t81 = phi [%t102, %L_OR_eval_4], [true, %L_OR_expr_4]
    br i1 %t81, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3426
    call void @P_error(i32 143)
    ; line 3426
    %t103 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t105 = getelementptr inbounds %T_attr, %T_attr* %t103, i32 0, i32 0
    %t104 = bitcast i8* %t105 to i8**
    store i8* null, i8** %t104
    br label %L_endif_5
L_endif_5:
    br label %L_endif_3
L_endif_3:
    ; line 3427
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3430
    call void @P_error(i32 2)
    ; line 3430
    %t106 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t107 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t106
    %t108 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t107, i32 0, i32 3
    %t109 = load %Frame_block_body*, %Frame_block_body** %t108
    %t110 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t109, i32 0, i32 14
    %t111 = load %Frame_block*, %Frame_block** %t110
    call void @P_block_skip(%Frame_block* %t111, %T_setofsys %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 3431
    %t114 = load i32, i32* @sy
    %t113 = icmp eq i32 %t114, 17
    br i1 %t113, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3432
    call void @P_insymbol()
    ; line 3432
    %t115 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t116 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t115
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t116, %T_setofsys %.dummy_set)
    ; line 3433
    %t120 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t119 = bitcast i8* %t120 to i8**
    %t121 = load i8*, i8** %t119
    %t118 = icmp ne i32 %t121, null
    br i1 %t118, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3434
    %t124 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t123 = bitcast i8* %t124 to i8**
    %t125 = load i8*, i8** %t123
    %t126 = bitcast i8* %t125 to %T_structure*
    %t128 = getelementptr inbounds %T_structure, %T_structure* %t126, i32 0, i32 8
    %t127 = bitcast i8* %t128 to i32*
    %t129 = load i32, i32* %t127
    %t122 = icmp ne i32 %t129, 0
    br i1 %t122, label %L_then_8, label %L_else_8
L_then_8:
    ; line 3434
    call void @P_error(i32 144)
    br label %L_endif_8
L_else_8:
    ; line 3436
    %t130 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t131 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t130
    %t132 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t131, i32 0, i32 3
    %t133 = load %Frame_block_body*, %Frame_block_body** %t132
    %t134 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t133, i32 0, i32 14
    %t135 = load %Frame_block*, %Frame_block** %t134
    %t136 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t138 = getelementptr inbounds %T_attr, %T_attr* %t136, i32 0, i32 0
    %t137 = bitcast i8* %t138 to i8**
    %t139 = load i8*, i8** %t137
    %t141 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t140 = bitcast i8* %t141 to i8**
    %t142 = load i8*, i8** %t140
    %t143 = call i1 @F_block_comptypes(%Frame_block* %t135, i8* %t139, i8* %t142)
    br i1 %t143, label %L_then_9, label %L_else_9
L_then_9:
    ; line 3437
    %t144 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t145 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t144
    %t146 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t145, i32 0, i32 3
    %t147 = load %Frame_block_body*, %Frame_block_body** %t146
    call void @P_block_body_load(%Frame_block_body* %t147)
    ; line 3437
    %t148 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t149 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t148
    %t150 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t149, i32 0, i32 3
    %t151 = load %Frame_block_body*, %Frame_block_body** %t150
    %t152 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    call void @P_block_body_store(%Frame_block_body* %t151, %T_attr* %t152)
    br label %L_endif_9
L_else_9:
    ; line 3438
    call void @P_error(i32 145)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_else_6:
    ; line 3441
    call void @P_error(i32 51)
    ; line 3441
    %t153 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t154 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t153
    %t155 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t154, i32 0, i32 3
    %t156 = load %Frame_block_body*, %Frame_block_body** %t155
    %t157 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t156, i32 0, i32 14
    %t158 = load %Frame_block*, %Frame_block** %t157
    call void @P_block_skip(%Frame_block* %t158, %T_setofsys %.dummy_set)
    br label %L_endif_6
L_endif_6:
    ; line 3442
    br i1 true, label %L_then_10, label %L_else_10
L_then_10:
    ; line 3443
    %t161 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 4
    %t162 = load i32, i32* @sy
    store i32 %t162, i32* %t161
    ; line 3443
    call void @P_insymbol()
    ; line 3443
    %t163 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t164 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t163
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t164, %T_setofsys %.dummy_set)
    ; line 3444
    %t168 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t167 = bitcast i8* %t168 to i8**
    %t169 = load i8*, i8** %t167
    %t166 = icmp ne i32 %t169, null
    br i1 %t166, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 3445
    %t172 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t171 = bitcast i8* %t172 to i8**
    %t173 = load i8*, i8** %t171
    %t174 = bitcast i8* %t173 to %T_structure*
    %t176 = getelementptr inbounds %T_structure, %T_structure* %t174, i32 0, i32 8
    %t175 = bitcast i8* %t176 to i32*
    %t177 = load i32, i32* %t175
    %t170 = icmp ne i32 %t177, 0
    br i1 %t170, label %L_then_12, label %L_else_12
L_then_12:
    ; line 3445
    call void @P_error(i32 144)
    br label %L_endif_12
L_else_12:
    ; line 3447
    %t178 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t179 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t178
    %t180 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t179, i32 0, i32 3
    %t181 = load %Frame_block_body*, %Frame_block_body** %t180
    %t182 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t181, i32 0, i32 14
    %t183 = load %Frame_block*, %Frame_block** %t182
    %t184 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t186 = getelementptr inbounds %T_attr, %T_attr* %t184, i32 0, i32 0
    %t185 = bitcast i8* %t186 to i8**
    %t187 = load i8*, i8** %t185
    %t189 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t188 = bitcast i8* %t189 to i8**
    %t190 = load i8*, i8** %t188
    %t191 = call i1 @F_block_comptypes(%Frame_block* %t183, i8* %t187, i8* %t190)
    br i1 %t191, label %L_then_13, label %L_else_13
L_then_13:
    ; line 3448
    %t192 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t193 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t192
    %t194 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t193, i32 0, i32 3
    %t195 = load %Frame_block_body*, %Frame_block_body** %t194
    call void @P_block_body_load(%Frame_block_body* %t195)
    ; line 3449
    %t196 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t197 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t196
    %t198 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t197, i32 0, i32 3
    %t199 = load %Frame_block_body*, %Frame_block_body** %t198
    %t200 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t199, i32 0, i32 14
    %t201 = load %Frame_block*, %Frame_block** %t200
    %t202 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t204 = getelementptr inbounds %T_attr, %T_attr* %t202, i32 0, i32 0
    %t203 = bitcast i8* %t204 to i8**
    %t205 = load i8*, i8** %t203
    %t206 = load i8*, i8** @intptr
    %t207 = call i1 @F_block_comptypes(%Frame_block* %t201, i8* %t205, i8* %t206)
    %t208 = icmp eq i1 0, %t207
    br i1 %t208, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 3450
    %t209 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t210 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t209
    %t211 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t210, i32 0, i32 3
    %t212 = load %Frame_block_body*, %Frame_block_body** %t211
    %t214 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t213 = bitcast i8* %t214 to i8**
    %t215 = load i8*, i8** %t213
    call void @P_block_body_gen0t(%Frame_block_body* %t212, i32 58, i8* %t215)
    br label %L_endif_14
L_endif_14:
    ; line 3451
    %t216 = load i8*, i8** @intptr
    call void @P_align(i8* %t216, i32* @lc)
    ; line 3452
    %t217 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t218 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t217
    %t219 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t218, i32 0, i32 3
    %t220 = load %Frame_block_body*, %Frame_block_body** %t219
    %t221 = load i32, i32* @lc
    %t222 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t220, i32 56, i32 0, i32 %t221, i8* %t222)
    ; line 3453
    %t223 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t223)
    ; line 3453
    %t224 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t225 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t224
    %t226 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t225, i32 0, i32 3
    %t227 = load %Frame_block_body*, %Frame_block_body** %t226
    %t229 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    %t228 = load i32, i32* %t229
    call void @P_block_body_putlabel(%Frame_block_body* %t227, i32 %t228)
    ; line 3454
    %t231 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t230 = load %T_attr, %T_attr* %t231
    store %T_attr %t230, %T_attr* @gattr
    ; line 3454
    %t232 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t233 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t232
    %t234 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t233, i32 0, i32 3
    %t235 = load %Frame_block_body*, %Frame_block_body** %t234
    call void @P_block_body_load(%Frame_block_body* %t235)
    ; line 3455
    %t236 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t237 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t236
    %t238 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t237, i32 0, i32 3
    %t239 = load %Frame_block_body*, %Frame_block_body** %t238
    %t240 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t239, i32 0, i32 14
    %t241 = load %Frame_block*, %Frame_block** %t240
    %t243 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t242 = bitcast i8* %t243 to i8**
    %t244 = load i8*, i8** %t242
    %t245 = load i8*, i8** @intptr
    %t246 = call i1 @F_block_comptypes(%Frame_block* %t241, i8* %t244, i8* %t245)
    %t247 = icmp eq i1 0, %t246
    br i1 %t247, label %L_then_15, label %L_endif_15
L_then_15:
    ; line 3456
    %t248 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t249 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t248
    %t250 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t249, i32 0, i32 3
    %t251 = load %Frame_block_body*, %Frame_block_body** %t250
    %t253 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t252 = bitcast i8* %t253 to i8**
    %t254 = load i8*, i8** %t252
    call void @P_block_body_gen0t(%Frame_block_body* %t251, i32 58, i8* %t254)
    br label %L_endif_15
L_endif_15:
    ; line 3457
    %t255 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t256 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t255
    %t257 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t256, i32 0, i32 3
    %t258 = load %Frame_block_body*, %Frame_block_body** %t257
    %t259 = load i32, i32* @lc
    %t260 = load i8*, i8** @intptr
    call void @P_block_body_gen2t(%Frame_block_body* %t258, i32 54, i32 0, i32 %t259, i8* %t260)
    ; line 3458
    %t262 = load i32, i32* @lc
    %t261 = add i32 %t262, 1
    store i32 %t261, i32* @lc
    ; line 3459
    %t264 = load i32, i32* @lc
    %t267 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t268 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t267
    %t269 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t268, i32 0, i32 3
    %t270 = load %Frame_block_body*, %Frame_block_body** %t269
    %t266 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t270, i32 0, i32 4
    %t265 = load i32, i32* %t266
    %t263 = icmp sgt i32 %t264, %t265
    br i1 %t263, label %L_then_16, label %L_endif_16
L_then_16:
    ; line 3459
    %t272 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t273 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t272
    %t274 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t273, i32 0, i32 3
    %t275 = load %Frame_block_body*, %Frame_block_body** %t274
    %t271 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t275, i32 0, i32 4
    %t276 = load i32, i32* @lc
    store i32 %t276, i32* %t271
    br label %L_endif_16
L_endif_16:
    ; line 3460
    %t279 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 4
    %t278 = load i32, i32* %t279
    %t277 = icmp eq i32 %t278, 44
    br i1 %t277, label %L_then_17, label %L_else_17
L_then_17:
    ; line 3460
    %t280 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t281 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t280
    %t282 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t281, i32 0, i32 3
    %t283 = load %Frame_block_body*, %Frame_block_body** %t282
    call void @P_block_body_gen2(%Frame_block_body* %t283, i32 52, i32 %.dummy.intrin, i32 1)
    br label %L_endif_17
L_else_17:
    ; line 3461
    %t284 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t285 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t284
    %t286 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t285, i32 0, i32 3
    %t287 = load %Frame_block_body*, %Frame_block_body** %t286
    call void @P_block_body_gen2(%Frame_block_body* %t287, i32 48, i32 %.dummy.intrin, i32 1)
    br label %L_endif_17
L_endif_17:
    ; nop
    br label %L_endif_13
L_else_13:
    ; line 3463
    call void @P_error(i32 145)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_endif_12:
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_else_10:
    ; line 3465
    call void @P_error(i32 55)
    ; line 3465
    %t288 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t289 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t288
    %t290 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t289, i32 0, i32 3
    %t291 = load %Frame_block_body*, %Frame_block_body** %t290
    %t292 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %t291, i32 0, i32 14
    %t293 = load %Frame_block*, %Frame_block** %t292
    call void @P_block_skip(%Frame_block* %t293, %T_setofsys %.dummy_set)
    br label %L_endif_10
L_endif_10:
    ; line 3466
    %t295 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t295)
    ; line 3466
    %t296 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t297 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t296
    %t298 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t297, i32 0, i32 3
    %t299 = load %Frame_block_body*, %Frame_block_body** %t298
    %t301 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t300 = load i32, i32* %t301
    call void @P_block_body_genujpxjp(%Frame_block_body* %t299, i32 33, i32 %t300)
    ; line 3467
    %t303 = load i32, i32* @sy
    %t302 = icmp eq i32 %t303, 43
    br i1 %t302, label %L_then_18, label %L_else_18
L_then_18:
    ; line 3467
    call void @P_insymbol()
    br label %L_endif_18
L_else_18:
    ; line 3467
    call void @P_error(i32 54)
    br label %L_endif_18
L_endif_18:
    ; line 3468
    %t304 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t305 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t304
    %t306 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t305, i32 0, i32 3
    %t307 = load %Frame_block_body*, %Frame_block_body** %t306
    %t310 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t311 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t310
    %t309 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t311, i32 0, i32 0
    %t308 = load %T_setofsys, %T_setofsys* %t309
    call void @P_block_body_statement(%Frame_block_body* %t307, %T_setofsys %t308)
    ; line 3469
    %t313 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t312 = load %T_attr, %T_attr* %t313
    store %T_attr %t312, %T_attr* @gattr
    ; line 3469
    %t314 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t315 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t314
    %t316 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t315, i32 0, i32 3
    %t317 = load %Frame_block_body*, %Frame_block_body** %t316
    call void @P_block_body_load(%Frame_block_body* %t317)
    ; line 3470
    %t320 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 4
    %t319 = load i32, i32* %t320
    %t318 = icmp eq i32 %t319, 44
    br i1 %t318, label %L_then_19, label %L_else_19
L_then_19:
    ; line 3470
    %t321 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t322 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t321
    %t323 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t322, i32 0, i32 3
    %t324 = load %Frame_block_body*, %Frame_block_body** %t323
    %t326 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t325 = bitcast i8* %t326 to i8**
    %t327 = load i8*, i8** %t325
    call void @P_block_body_gen1t(%Frame_block_body* %t324, i32 34, i32 1, i8* %t327)
    br label %L_endif_19
L_else_19:
    ; line 3471
    %t328 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t329 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t328
    %t330 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t329, i32 0, i32 3
    %t331 = load %Frame_block_body*, %Frame_block_body** %t330
    %t333 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t332 = bitcast i8* %t333 to i8**
    %t334 = load i8*, i8** %t332
    call void @P_block_body_gen1t(%Frame_block_body* %t331, i32 31, i32 1, i8* %t334)
    br label %L_endif_19
L_endif_19:
    ; line 3472
    %t335 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t336 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t335
    %t337 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t336, i32 0, i32 3
    %t338 = load %Frame_block_body*, %Frame_block_body** %t337
    %t339 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    call void @P_block_body_store(%Frame_block_body* %t338, %T_attr* %t339)
    ; line 3472
    %t340 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t341 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t340
    %t342 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t341, i32 0, i32 3
    %t343 = load %Frame_block_body*, %Frame_block_body** %t342
    %t345 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    %t344 = load i32, i32* %t345
    call void @P_block_body_genujpxjp(%Frame_block_body* %t343, i32 57, i32 %t344)
    ; line 3472
    %t346 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t347 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t346
    %t348 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t347, i32 0, i32 3
    %t349 = load %Frame_block_body*, %Frame_block_body** %t348
    %t351 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t350 = load i32, i32* %t351
    call void @P_block_body_putlabel(%Frame_block_body* %t349, i32 %t350)
    ; line 3473
    %t353 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 3
    %t352 = load i32, i32* %t353
    store i32 %t352, i32* @lc
    ; nop

    ; epilogue
    ret void
}


; line 3477
;================================================================================
; scope: block_body_statement_withstatement (level : 5)

; activation record
%Frame_block_body_statement_withstatement = type
{
    ; variables
    i32,    ; 0: lcnt1
    i8*,    ; 1: lcp
    i32,    ; 2: llc

    ; slink
    %Frame_block_body_statement*    ; 3
};

; procedure body
define void @P_block_body_statement_withstatement(%Frame_block_body_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_body_statement_withstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 3
    store %Frame_block_body_statement* %.slink, %Frame_block_body_statement** %t1

    ; body
    ; line 3479
    %t2 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 0
    store i32 0, i32* %t2
    ; line 3479
    %t3 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 2
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    ; line 3480
    ; line 3513
    %t6 = load i32, i32* @sy
    %t5 = icmp eq i32 %t6, 43
    br i1 %t5, label %L_then_1, label %L_else_1
L_then_1:
    ; line 3513
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 3513
    call void @P_error(i32 54)
    br label %L_endif_1
L_endif_1:
    ; line 3514
    %t7 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    %t13 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 3
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t12 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 0
    %t11 = load %T_setofsys, %T_setofsys* %t12
    call void @P_block_body_statement(%Frame_block_body* %t10, %T_setofsys %t11)
    ; line 3515
    %t16 = load i32, i32* @top
    %t18 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 0
    %t17 = load i32, i32* %t18
    %t15 = sub i32 %t16, %t17
    store i32 %t15, i32* @top
    ; line 3515
    %t20 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 2
    %t19 = load i32, i32* %t20
    store i32 %t19, i32* @lc
    ; nop

    ; epilogue
    ret void
}


; line 3677
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
    ; line 3680
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 23
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 3681
    call void @P_insymbol()
    ; line 3681
    %t5 = load i32, i32* @sy
    %t4 = icmp ne i32 %t5, 0
    br i1 %t4, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 3681
    call void @P_error(i32 2)
    br label %L_endif_2
L_endif_2:
    ; line 3681
    call void @P_insymbol()
    ; line 3682
    %t7 = icmp eq i1 0, true
    br i1 %t7, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 3682
    call void @P_error(i32 14)
    br label %L_endif_3
L_endif_3:
    ; line 3683
    %t9 = load i32, i32* @sy
    %t8 = icmp eq i32 %t9, 8
    br i1 %t8, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 3685
    ; line 3696
    %t11 = load i32, i32* @sy
    %t10 = icmp ne i32 %t11, 9
    br i1 %t10, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 3696
    call void @P_error(i32 4)
    br label %L_endif_5
L_endif_5:
    ; line 3697
    call void @P_insymbol()
    br label %L_endif_4
L_endif_4:
    ; line 3699
    %t13 = load i32, i32* @sy
    %t12 = icmp ne i32 %t13, 13
    br i1 %t12, label %L_then_6, label %L_else_6
L_then_6:
    ; line 3699
    call void @P_error(i32 14)
    br label %L_endif_6
L_else_6:
    ; line 3700
    call void @P_insymbol()
    br label %L_endif_6
L_endif_6:
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 3702
    ; line 3705
    %t14 = load i1, i1* @list
    br i1 %t14, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 3705
    %t15 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t15)
    br label %L_endif_7
L_endif_7:
    ; line 3706
    %t17 = load i32, i32* @errinx
    %t16 = icmp ne i32 %t17, 0
    br i1 %t16, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 3707
    store i1 0, i1* @list
    ; line 3707
    call void @P_endofline()
    br label %L_endif_8
L_endif_8:

    ; epilogue
    ret void
}


; line 3711
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
    ; line 3713
    %t1 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 1
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %T_alpha* %t1
    ; line 3713
    %t2 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 2
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %T_alpha* %t2
    ; line 3713
    %t3 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 3
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %T_alpha* %t3
    ; line 3714
    %t4 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 4
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %T_alpha* %t4
    ; line 3714
    %t5 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 5
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %T_alpha* %t5
    ; line 3714
    %t6 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 6
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %T_alpha* %t6
    ; line 3715
    %t7 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 7
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %T_alpha* %t7
    ; line 3715
    %t8 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 8
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %T_alpha* %t8
    ; line 3715
    %t9 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 9
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %T_alpha* %t9
    ; line 3716
    %t10 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 10
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %T_alpha* %t10
    ; line 3716
    %t11 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 11
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %T_alpha* %t11
    ; line 3716
    %t12 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 12
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %T_alpha* %t12
    ; line 3717
    %t13 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 13
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %T_alpha* %t13
    ; line 3717
    %t14 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 14
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %T_alpha* %t14
    ; line 3717
    %t15 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 15
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %T_alpha* %t15
    ; line 3718
    %t16 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 16
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %T_alpha* %t16
    ; line 3719
    %t17 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 17
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), %T_alpha* %t17
    ; line 3719
    %t18 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 18
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %T_alpha* %t18
    ; line 3719
    %t19 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 19
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %T_alpha* %t19
    ; line 3720
    %t20 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 20
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %T_alpha* %t20
    ; line 3720
    %t21 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 21
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %T_alpha* %t21
    ; line 3720
    %t22 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 22
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %T_alpha* %t22
    ; line 3721
    %t23 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 23
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %T_alpha* %t23
    ; line 3721
    %t24 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 24
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %T_alpha* %t24
    ; line 3721
    %t25 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 25
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %T_alpha* %t25
    ; line 3722
    %t26 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 26
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %T_alpha* %t26
    ; line 3723
    %t27 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 27
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %T_alpha* %t27
    ; line 3723
    %t28 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 28
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %T_alpha* %t28
    ; line 3723
    %t29 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 29
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %T_alpha* %t29
    ; line 3724
    %t30 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 30
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), %T_alpha* %t30
    ; line 3724
    %t31 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 31
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %T_alpha* %t31
    ; line 3724
    %t32 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 32
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), %T_alpha* %t32
    ; line 3725
    %t33 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 33
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %T_alpha* %t33
    ; line 3725
    %t34 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 34
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), %T_alpha* %t34
    ; line 3725
    %t35 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 35
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t35
    ; nop

    ; epilogue
    ret void
}


; line 3728
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
    ; line 3733
    ; line 3735
    %t1 = load i8*, i8** @intptr
    %t2 = bitcast i8* %t1 to %T_structure*
    %t4 = getelementptr inbounds %T_structure, %T_structure* %t2, i32 0, i32 4
    %t3 = bitcast i8* %t4 to i32*
    store i32 1, i32* %t3
    ; line 3735
    %t5 = load i8*, i8** @intptr
    %t6 = bitcast i8* %t5 to %T_structure*
    %t8 = getelementptr inbounds %T_structure, %T_structure* %t6, i32 0, i32 8
    %t7 = bitcast i8* %t8 to i32*
    store i32 0, i32* %t7
    ; line 3735
    %t9 = load i8*, i8** @intptr
    %t10 = bitcast i8* %t9 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 12
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    ; line 3736
    ; line 3738
    %t13 = load i8*, i8** @realptr
    %t14 = bitcast i8* %t13 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 4
    %t15 = bitcast i8* %t16 to i32*
    store i32 1, i32* %t15
    ; line 3738
    %t17 = load i8*, i8** @realptr
    %t18 = bitcast i8* %t17 to %T_structure*
    %t20 = getelementptr inbounds %T_structure, %T_structure* %t18, i32 0, i32 8
    %t19 = bitcast i8* %t20 to i32*
    store i32 0, i32* %t19
    ; line 3738
    %t21 = load i8*, i8** @realptr
    %t22 = bitcast i8* %t21 to %T_structure*
    %t24 = getelementptr inbounds %T_structure, %T_structure* %t22, i32 0, i32 12
    %t23 = bitcast i8* %t24 to i32*
    store i32 0, i32* %t23
    ; line 3739
    ; line 3741
    %t25 = load i8*, i8** @charptr
    %t26 = bitcast i8* %t25 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 4
    %t27 = bitcast i8* %t28 to i32*
    store i32 1, i32* %t27
    ; line 3741
    %t29 = load i8*, i8** @charptr
    %t30 = bitcast i8* %t29 to %T_structure*
    %t32 = getelementptr inbounds %T_structure, %T_structure* %t30, i32 0, i32 8
    %t31 = bitcast i8* %t32 to i32*
    store i32 0, i32* %t31
    ; line 3741
    %t33 = load i8*, i8** @charptr
    %t34 = bitcast i8* %t33 to %T_structure*
    %t36 = getelementptr inbounds %T_structure, %T_structure* %t34, i32 0, i32 12
    %t35 = bitcast i8* %t36 to i32*
    store i32 0, i32* %t35
    ; line 3742
    ; line 3744
    %t37 = load i8*, i8** @boolptr
    %t38 = bitcast i8* %t37 to %T_structure*
    %t40 = getelementptr inbounds %T_structure, %T_structure* %t38, i32 0, i32 4
    %t39 = bitcast i8* %t40 to i32*
    store i32 1, i32* %t39
    ; line 3744
    %t41 = load i8*, i8** @boolptr
    %t42 = bitcast i8* %t41 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 8
    %t43 = bitcast i8* %t44 to i32*
    store i32 0, i32* %t43
    ; line 3744
    %t45 = load i8*, i8** @boolptr
    %t46 = bitcast i8* %t45 to %T_structure*
    %t48 = getelementptr inbounds %T_structure, %T_structure* %t46, i32 0, i32 12
    %t47 = bitcast i8* %t48 to i32*
    store i32 1, i32* %t47
    ; line 3745
    ; line 3747
    %t49 = load i8*, i8** @nilptr
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 16
    %t51 = bitcast i8* %t52 to i8**
    store i8* null, i8** %t51
    ; line 3747
    %t53 = load i8*, i8** @nilptr
    %t54 = bitcast i8* %t53 to %T_structure*
    %t56 = getelementptr inbounds %T_structure, %T_structure* %t54, i32 0, i32 4
    %t55 = bitcast i8* %t56 to i32*
    store i32 1, i32* %t55
    ; line 3747
    %t57 = load i8*, i8** @nilptr
    %t58 = bitcast i8* %t57 to %T_structure*
    %t60 = getelementptr inbounds %T_structure, %T_structure* %t58, i32 0, i32 8
    %t59 = bitcast i8* %t60 to i32*
    store i32 2, i32* %t59
    ; line 3748
    ; line 3750
    %t61 = load i8*, i8** @parmptr
    %t62 = bitcast i8* %t61 to %T_structure*
    %t64 = getelementptr inbounds %T_structure, %T_structure* %t62, i32 0, i32 4
    %t63 = bitcast i8* %t64 to i32*
    store i32 1, i32* %t63
    ; line 3750
    %t65 = load i8*, i8** @parmptr
    %t66 = bitcast i8* %t65 to %T_structure*
    %t68 = getelementptr inbounds %T_structure, %T_structure* %t66, i32 0, i32 8
    %t67 = bitcast i8* %t68 to i32*
    store i32 0, i32* %t67
    ; line 3750
    %t69 = load i8*, i8** @parmptr
    %t70 = bitcast i8* %t69 to %T_structure*
    %t72 = getelementptr inbounds %T_structure, %T_structure* %t70, i32 0, i32 12
    %t71 = bitcast i8* %t72 to i32*
    store i32 0, i32* %t71
    ; line 3751
    ; line 3753
    %t73 = load i8*, i8** @textptr
    %t74 = bitcast i8* %t73 to %T_structure*
    %t76 = getelementptr inbounds %T_structure, %T_structure* %t74, i32 0, i32 16
    %t75 = bitcast i8* %t76 to i8**
    %t77 = load i8*, i8** @charptr
    store i8* %t77, i8** %t75
    ; line 3753
    %t78 = load i8*, i8** @textptr
    %t79 = bitcast i8* %t78 to %T_structure*
    %t81 = getelementptr inbounds %T_structure, %T_structure* %t79, i32 0, i32 4
    %t80 = bitcast i8* %t81 to i32*
    store i32 1, i32* %t80
    ; line 3753
    %t82 = load i8*, i8** @textptr
    %t83 = bitcast i8* %t82 to %T_structure*
    %t85 = getelementptr inbounds %T_structure, %T_structure* %t83, i32 0, i32 8
    %t84 = bitcast i8* %t85 to i32*
    store i32 6, i32* %t84

    ; epilogue
    ret void
}


; line 3756
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
    ; line 3761
    ; line 3763
    %t2 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t1 = load i8*, i8** %t2
    %t3 = bitcast i8* %t1 to %T_identifier*
    %t5 = getelementptr inbounds %T_identifier, %T_identifier* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), %T_alpha* %t4
    ; line 3763
    %t7 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 24
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** @intptr
    store i8* %t11, i8** %t9
    ; line 3763
    %t13 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 40
    %t15 = bitcast i8* %t16 to i32*
    store i32 0, i32* %t15
    ; line 3764
    %t18 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t17 = load i8*, i8** %t18
    call void @P_enterid(i8* %t17)
    ; line 3765
    ; line 3767
    %t20 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 0
    %t22 = bitcast i8* %t23 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), %T_alpha* %t22
    ; line 3767
    %t25 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_identifier*
    %t28 = getelementptr inbounds %T_identifier, %T_identifier* %t26, i32 0, i32 24
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** @realptr
    store i8* %t29, i8** %t27
    ; line 3767
    %t31 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t30 = load i8*, i8** %t31
    %t32 = bitcast i8* %t30 to %T_identifier*
    %t34 = getelementptr inbounds %T_identifier, %T_identifier* %t32, i32 0, i32 40
    %t33 = bitcast i8* %t34 to i32*
    store i32 0, i32* %t33
    ; line 3768
    %t36 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t35 = load i8*, i8** %t36
    call void @P_enterid(i8* %t35)
    ; line 3769
    ; line 3771
    %t38 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t37 = load i8*, i8** %t38
    %t39 = bitcast i8* %t37 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 0
    %t40 = bitcast i8* %t41 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), %T_alpha* %t40
    ; line 3771
    %t43 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t42 = load i8*, i8** %t43
    %t44 = bitcast i8* %t42 to %T_identifier*
    %t46 = getelementptr inbounds %T_identifier, %T_identifier* %t44, i32 0, i32 24
    %t45 = bitcast i8* %t46 to i8**
    %t47 = load i8*, i8** @charptr
    store i8* %t47, i8** %t45
    ; line 3771
    %t49 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t48 = load i8*, i8** %t49
    %t50 = bitcast i8* %t48 to %T_identifier*
    %t52 = getelementptr inbounds %T_identifier, %T_identifier* %t50, i32 0, i32 40
    %t51 = bitcast i8* %t52 to i32*
    store i32 0, i32* %t51
    ; line 3772
    %t54 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t53 = load i8*, i8** %t54
    call void @P_enterid(i8* %t53)
    ; line 3773
    ; line 3775
    %t56 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t55 = load i8*, i8** %t56
    %t57 = bitcast i8* %t55 to %T_identifier*
    %t59 = getelementptr inbounds %T_identifier, %T_identifier* %t57, i32 0, i32 0
    %t58 = bitcast i8* %t59 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), %T_alpha* %t58
    ; line 3775
    %t61 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t60 = load i8*, i8** %t61
    %t62 = bitcast i8* %t60 to %T_identifier*
    %t64 = getelementptr inbounds %T_identifier, %T_identifier* %t62, i32 0, i32 24
    %t63 = bitcast i8* %t64 to i8**
    %t65 = load i8*, i8** @boolptr
    store i8* %t65, i8** %t63
    ; line 3775
    %t67 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t66 = load i8*, i8** %t67
    %t68 = bitcast i8* %t66 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 40
    %t69 = bitcast i8* %t70 to i32*
    store i32 0, i32* %t69
    ; line 3776
    %t72 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t71 = load i8*, i8** %t72
    call void @P_enterid(i8* %t71)
    ; line 3777
    %t73 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 1
    store i8* null, i8** %t73
    ; line 3778
    ; line 3786
    %t74 = load i8*, i8** @boolptr
    %t75 = bitcast i8* %t74 to %T_structure*
    %t77 = getelementptr inbounds %T_structure, %T_structure* %t75, i32 0, i32 16
    %t76 = bitcast i8* %t77 to i8**
    %t79 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t78 = load i8*, i8** %t79
    store i8* %t78, i8** %t76
    ; line 3787
    ; line 3789
    %t81 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t80 = load i8*, i8** %t81
    %t82 = bitcast i8* %t80 to %T_identifier*
    %t84 = getelementptr inbounds %T_identifier, %T_identifier* %t82, i32 0, i32 0
    %t83 = bitcast i8* %t84 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), %T_alpha* %t83
    ; line 3789
    %t86 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t85 = load i8*, i8** %t86
    %t87 = bitcast i8* %t85 to %T_identifier*
    %t89 = getelementptr inbounds %T_identifier, %T_identifier* %t87, i32 0, i32 24
    %t88 = bitcast i8* %t89 to i8**
    %t90 = load i8*, i8** @nilptr
    store i8* %t90, i8** %t88
    ; line 3790
    %t92 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t91 = load i8*, i8** %t92
    %t93 = bitcast i8* %t91 to %T_identifier*
    %t95 = getelementptr inbounds %T_identifier, %T_identifier* %t93, i32 0, i32 32
    %t94 = bitcast i8* %t95 to i8**
    store i8* null, i8** %t94
    ; line 3790
    %t97 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t96 = load i8*, i8** %t97
    %t98 = bitcast i8* %t96 to %T_identifier*
    %t100 = getelementptr inbounds %T_identifier, %T_identifier* %t98, i32 0, i32 48
    %t99 = bitcast i8* %t100 to %T_valu*
    %t102 = getelementptr inbounds %T_valu, %T_valu* %t99, i32 0, i32 4
    %t101 = bitcast i8* %t102 to i32*
    store i32 0, i32* %t101
    ; line 3790
    %t104 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t103 = load i8*, i8** %t104
    %t105 = bitcast i8* %t103 to %T_identifier*
    %t107 = getelementptr inbounds %T_identifier, %T_identifier* %t105, i32 0, i32 40
    %t106 = bitcast i8* %t107 to i32*
    store i32 1, i32* %t106
    ; line 3792
    %t109 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t108 = load i8*, i8** %t109
    call void @P_enterid(i8* %t108)
    ; line 3793
    ; line 3802
    ; line 3811
    ; line 3820
    ; line 3822
    %t111 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t110 = load i8*, i8** %t111
    %t112 = bitcast i8* %t110 to %T_identifier*
    %t114 = getelementptr inbounds %T_identifier, %T_identifier* %t112, i32 0, i32 0
    %t113 = bitcast i8* %t114 to %T_alpha*
    %t115 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 35
    %t116 = load %T_alpha, %T_alpha* %t115
    store %T_alpha %t116, %T_alpha* %t113
    ; line 3822
    %t118 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t117 = load i8*, i8** %t118
    %t119 = bitcast i8* %t117 to %T_identifier*
    %t121 = getelementptr inbounds %T_identifier, %T_identifier* %t119, i32 0, i32 24
    %t120 = bitcast i8* %t121 to i8**
    store i8* null, i8** %t120
    ; line 3823
    %t123 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t122 = load i8*, i8** %t123
    %t124 = bitcast i8* %t122 to %T_identifier*
    %t126 = getelementptr inbounds %T_identifier, %T_identifier* %t124, i32 0, i32 32
    %t125 = bitcast i8* %t126 to i8**
    store i8* null, i8** %t125
    ; line 3823
    %t128 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t127 = load i8*, i8** %t128
    %t129 = bitcast i8* %t127 to %T_identifier*
    %t131 = getelementptr inbounds %T_identifier, %T_identifier* %t129, i32 0, i32 48
    %t130 = bitcast i8* %t131 to i32*
    store i32 13, i32* %t130
    ; line 3824
    %t133 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t132 = load i8*, i8** %t133
    %t134 = bitcast i8* %t132 to %T_identifier*
    %t136 = getelementptr inbounds %T_identifier, %T_identifier* %t134, i32 0, i32 40
    %t135 = bitcast i8* %t136 to i32*
    store i32 4, i32* %t135
    ; line 3824
    %t138 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t137 = load i8*, i8** %t138
    %t139 = bitcast i8* %t137 to %T_identifier*
    %t141 = getelementptr inbounds %T_identifier, %T_identifier* %t139, i32 0, i32 44
    %t140 = bitcast i8* %t141 to i32*
    store i32 0, i32* %t140
    ; line 3825
    %t143 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t142 = load i8*, i8** %t143
    call void @P_enterid(i8* %t142)
    ; line 3826
    ; line 3835
    ; line 3837
    %t145 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t144 = load i8*, i8** %t145
    %t146 = bitcast i8* %t144 to %T_identifier*
    %t148 = getelementptr inbounds %T_identifier, %T_identifier* %t146, i32 0, i32 0
    %t147 = bitcast i8* %t148 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t147
    ; line 3837
    %t150 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t149 = load i8*, i8** %t150
    %t151 = bitcast i8* %t149 to %T_identifier*
    %t153 = getelementptr inbounds %T_identifier, %T_identifier* %t151, i32 0, i32 24
    %t152 = bitcast i8* %t153 to i8**
    %t154 = load i8*, i8** @realptr
    store i8* %t154, i8** %t152
    ; line 3837
    %t156 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t155 = load i8*, i8** %t156
    %t157 = bitcast i8* %t155 to %T_identifier*
    %t159 = getelementptr inbounds %T_identifier, %T_identifier* %t157, i32 0, i32 40
    %t158 = bitcast i8* %t159 to i32*
    store i32 2, i32* %t158
    ; line 3838
    %t161 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t160 = load i8*, i8** %t161
    %t162 = bitcast i8* %t160 to %T_identifier*
    %t164 = getelementptr inbounds %T_identifier, %T_identifier* %t162, i32 0, i32 44
    %t163 = bitcast i8* %t164 to i32*
    store i32 0, i32* %t163
    ; line 3838
    %t166 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t165 = load i8*, i8** %t166
    %t167 = bitcast i8* %t165 to %T_identifier*
    %t169 = getelementptr inbounds %T_identifier, %T_identifier* %t167, i32 0, i32 32
    %t168 = bitcast i8* %t169 to i8**
    store i8* null, i8** %t168
    ; line 3838
    %t171 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t170 = load i8*, i8** %t171
    %t172 = bitcast i8* %t170 to %T_identifier*
    %t174 = getelementptr inbounds %T_identifier, %T_identifier* %t172, i32 0, i32 48
    %t173 = bitcast i8* %t174 to i32*
    store i32 1, i32* %t173
    ; line 3838
    %t176 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t175 = load i8*, i8** %t176
    %t177 = bitcast i8* %t175 to %T_identifier*
    %t179 = getelementptr inbounds %T_identifier, %T_identifier* %t177, i32 0, i32 52
    %t178 = bitcast i8* %t179 to i32*
    store i32 0, i32* %t178
    ; line 3840

    ; epilogue
    ret void
}


; line 3851
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
    ; line 3853
    ; line 3855
    %t1 = load i8*, i8** @utypptr
    %t2 = bitcast i8* %t1 to %T_identifier*
    %t4 = getelementptr inbounds %T_identifier, %T_identifier* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t3
    ; line 3855
    %t5 = load i8*, i8** @utypptr
    %t6 = bitcast i8* %t5 to %T_identifier*
    %t8 = getelementptr inbounds %T_identifier, %T_identifier* %t6, i32 0, i32 24
    %t7 = bitcast i8* %t8 to i8**
    store i8* null, i8** %t7
    ; line 3855
    %t9 = load i8*, i8** @utypptr
    %t10 = bitcast i8* %t9 to %T_identifier*
    %t12 = getelementptr inbounds %T_identifier, %T_identifier* %t10, i32 0, i32 40
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    ; line 3856
    ; line 3858
    %t13 = load i8*, i8** @ucstptr
    %t14 = bitcast i8* %t13 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t15
    ; line 3858
    %t17 = load i8*, i8** @ucstptr
    %t18 = bitcast i8* %t17 to %T_identifier*
    %t20 = getelementptr inbounds %T_identifier, %T_identifier* %t18, i32 0, i32 24
    %t19 = bitcast i8* %t20 to i8**
    store i8* null, i8** %t19
    ; line 3858
    %t21 = load i8*, i8** @ucstptr
    %t22 = bitcast i8* %t21 to %T_identifier*
    %t24 = getelementptr inbounds %T_identifier, %T_identifier* %t22, i32 0, i32 32
    %t23 = bitcast i8* %t24 to i8**
    store i8* null, i8** %t23
    ; line 3859
    %t25 = load i8*, i8** @ucstptr
    %t26 = bitcast i8* %t25 to %T_identifier*
    %t28 = getelementptr inbounds %T_identifier, %T_identifier* %t26, i32 0, i32 48
    %t27 = bitcast i8* %t28 to %T_valu*
    %t30 = getelementptr inbounds %T_valu, %T_valu* %t27, i32 0, i32 4
    %t29 = bitcast i8* %t30 to i32*
    store i32 0, i32* %t29
    ; line 3859
    %t31 = load i8*, i8** @ucstptr
    %t32 = bitcast i8* %t31 to %T_identifier*
    %t34 = getelementptr inbounds %T_identifier, %T_identifier* %t32, i32 0, i32 40
    %t33 = bitcast i8* %t34 to i32*
    store i32 1, i32* %t33
    ; line 3861
    ; line 3863
    %t35 = load i8*, i8** @uvarptr
    %t36 = bitcast i8* %t35 to %T_identifier*
    %t38 = getelementptr inbounds %T_identifier, %T_identifier* %t36, i32 0, i32 0
    %t37 = bitcast i8* %t38 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t37
    ; line 3863
    %t39 = load i8*, i8** @uvarptr
    %t40 = bitcast i8* %t39 to %T_identifier*
    %t42 = getelementptr inbounds %T_identifier, %T_identifier* %t40, i32 0, i32 24
    %t41 = bitcast i8* %t42 to i8**
    store i8* null, i8** %t41
    ; line 3863
    %t43 = load i8*, i8** @uvarptr
    %t44 = bitcast i8* %t43 to %T_identifier*
    %t46 = getelementptr inbounds %T_identifier, %T_identifier* %t44, i32 0, i32 44
    %t45 = bitcast i8* %t46 to i32*
    store i32 0, i32* %t45
    ; line 3864
    %t47 = load i8*, i8** @uvarptr
    %t48 = bitcast i8* %t47 to %T_identifier*
    %t50 = getelementptr inbounds %T_identifier, %T_identifier* %t48, i32 0, i32 32
    %t49 = bitcast i8* %t50 to i8**
    store i8* null, i8** %t49
    ; line 3864
    %t51 = load i8*, i8** @uvarptr
    %t52 = bitcast i8* %t51 to %T_identifier*
    %t54 = getelementptr inbounds %T_identifier, %T_identifier* %t52, i32 0, i32 48
    %t53 = bitcast i8* %t54 to i32*
    store i32 0, i32* %t53
    ; line 3864
    %t55 = load i8*, i8** @uvarptr
    %t56 = bitcast i8* %t55 to %T_identifier*
    %t58 = getelementptr inbounds %T_identifier, %T_identifier* %t56, i32 0, i32 52
    %t57 = bitcast i8* %t58 to i32*
    store i32 0, i32* %t57
    ; line 3864
    %t59 = load i8*, i8** @uvarptr
    %t60 = bitcast i8* %t59 to %T_identifier*
    %t62 = getelementptr inbounds %T_identifier, %T_identifier* %t60, i32 0, i32 40
    %t61 = bitcast i8* %t62 to i32*
    store i32 2, i32* %t61
    ; line 3866
    ; line 3868
    %t63 = load i8*, i8** @ufldptr
    %t64 = bitcast i8* %t63 to %T_identifier*
    %t66 = getelementptr inbounds %T_identifier, %T_identifier* %t64, i32 0, i32 0
    %t65 = bitcast i8* %t66 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t65
    ; line 3868
    %t67 = load i8*, i8** @ufldptr
    %t68 = bitcast i8* %t67 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 24
    %t69 = bitcast i8* %t70 to i8**
    store i8* null, i8** %t69
    ; line 3868
    %t71 = load i8*, i8** @ufldptr
    %t72 = bitcast i8* %t71 to %T_identifier*
    %t74 = getelementptr inbounds %T_identifier, %T_identifier* %t72, i32 0, i32 32
    %t73 = bitcast i8* %t74 to i8**
    store i8* null, i8** %t73
    ; line 3868
    %t75 = load i8*, i8** @ufldptr
    %t76 = bitcast i8* %t75 to %T_identifier*
    %t78 = getelementptr inbounds %T_identifier, %T_identifier* %t76, i32 0, i32 44
    %t77 = bitcast i8* %t78 to i32*
    store i32 0, i32* %t77
    ; line 3869
    %t79 = load i8*, i8** @ufldptr
    %t80 = bitcast i8* %t79 to %T_identifier*
    %t82 = getelementptr inbounds %T_identifier, %T_identifier* %t80, i32 0, i32 40
    %t81 = bitcast i8* %t82 to i32*
    store i32 3, i32* %t81
    ; line 3871
    ; line 3873
    %t83 = load i8*, i8** @uprcptr
    %t84 = bitcast i8* %t83 to %T_identifier*
    %t86 = getelementptr inbounds %T_identifier, %T_identifier* %t84, i32 0, i32 0
    %t85 = bitcast i8* %t86 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t85
    ; line 3873
    %t87 = load i8*, i8** @uprcptr
    %t88 = bitcast i8* %t87 to %T_identifier*
    %t90 = getelementptr inbounds %T_identifier, %T_identifier* %t88, i32 0, i32 24
    %t89 = bitcast i8* %t90 to i8**
    store i8* null, i8** %t89
    ; line 3873
    %t91 = load i8*, i8** @uprcptr
    %t92 = bitcast i8* %t91 to %T_identifier*
    %t94 = getelementptr inbounds %T_identifier, %T_identifier* %t92, i32 0, i32 60
    %t93 = bitcast i8* %t94 to i1*
    store i1 0, i1* %t93
    ; line 3874
    %t95 = load i8*, i8** @uprcptr
    %t96 = bitcast i8* %t95 to %T_identifier*
    %t98 = getelementptr inbounds %T_identifier, %T_identifier* %t96, i32 0, i32 32
    %t97 = bitcast i8* %t98 to i8**
    store i8* null, i8** %t97
    ; line 3874
    %t99 = load i8*, i8** @uprcptr
    %t100 = bitcast i8* %t99 to %T_identifier*
    %t102 = getelementptr inbounds %T_identifier, %T_identifier* %t100, i32 0, i32 61
    %t101 = bitcast i8* %t102 to i1*
    store i1 0, i1* %t101
    ; line 3874
    %t103 = load i8*, i8** @uprcptr
    %t104 = bitcast i8* %t103 to %T_identifier*
    %t106 = getelementptr inbounds %T_identifier, %T_identifier* %t104, i32 0, i32 48
    %t105 = bitcast i8* %t106 to i32*
    store i32 0, i32* %t105
    ; line 3874
    %t107 = load i8*, i8** @uprcptr
    %t108 = bitcast i8* %t107 to %T_identifier*
    %t110 = getelementptr inbounds %T_identifier, %T_identifier* %t108, i32 0, i32 52
    %t109 = bitcast i8* %t110 to i32*
    call void @P_genlabel(i32* %t109)
    ; line 3875
    %t111 = load i8*, i8** @uprcptr
    %t112 = bitcast i8* %t111 to %T_identifier*
    %t114 = getelementptr inbounds %T_identifier, %T_identifier* %t112, i32 0, i32 40
    %t113 = bitcast i8* %t114 to i32*
    store i32 4, i32* %t113
    ; line 3875
    %t115 = load i8*, i8** @uprcptr
    %t116 = bitcast i8* %t115 to %T_identifier*
    %t118 = getelementptr inbounds %T_identifier, %T_identifier* %t116, i32 0, i32 44
    %t117 = bitcast i8* %t118 to i32*
    store i32 1, i32* %t117
    ; line 3875
    %t119 = load i8*, i8** @uprcptr
    %t120 = bitcast i8* %t119 to %T_identifier*
    %t122 = getelementptr inbounds %T_identifier, %T_identifier* %t120, i32 0, i32 56
    %t121 = bitcast i8* %t122 to i32*
    store i32 0, i32* %t121
    ; line 3877
    ; line 3879
    %t123 = load i8*, i8** @ufctptr
    %t124 = bitcast i8* %t123 to %T_identifier*
    %t126 = getelementptr inbounds %T_identifier, %T_identifier* %t124, i32 0, i32 0
    %t125 = bitcast i8* %t126 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t125
    ; line 3879
    %t127 = load i8*, i8** @ufctptr
    %t128 = bitcast i8* %t127 to %T_identifier*
    %t130 = getelementptr inbounds %T_identifier, %T_identifier* %t128, i32 0, i32 24
    %t129 = bitcast i8* %t130 to i8**
    store i8* null, i8** %t129
    ; line 3879
    %t131 = load i8*, i8** @ufctptr
    %t132 = bitcast i8* %t131 to %T_identifier*
    %t134 = getelementptr inbounds %T_identifier, %T_identifier* %t132, i32 0, i32 32
    %t133 = bitcast i8* %t134 to i8**
    store i8* null, i8** %t133
    ; line 3880
    %t135 = load i8*, i8** @ufctptr
    %t136 = bitcast i8* %t135 to %T_identifier*
    %t138 = getelementptr inbounds %T_identifier, %T_identifier* %t136, i32 0, i32 60
    %t137 = bitcast i8* %t138 to i1*
    store i1 0, i1* %t137
    ; line 3880
    %t139 = load i8*, i8** @ufctptr
    %t140 = bitcast i8* %t139 to %T_identifier*
    %t142 = getelementptr inbounds %T_identifier, %T_identifier* %t140, i32 0, i32 61
    %t141 = bitcast i8* %t142 to i1*
    store i1 0, i1* %t141
    ; line 3880
    %t143 = load i8*, i8** @ufctptr
    %t144 = bitcast i8* %t143 to %T_identifier*
    %t146 = getelementptr inbounds %T_identifier, %T_identifier* %t144, i32 0, i32 48
    %t145 = bitcast i8* %t146 to i32*
    store i32 0, i32* %t145
    ; line 3880
    %t147 = load i8*, i8** @ufctptr
    %t148 = bitcast i8* %t147 to %T_identifier*
    %t150 = getelementptr inbounds %T_identifier, %T_identifier* %t148, i32 0, i32 52
    %t149 = bitcast i8* %t150 to i32*
    call void @P_genlabel(i32* %t149)
    ; line 3881
    %t151 = load i8*, i8** @ufctptr
    %t152 = bitcast i8* %t151 to %T_identifier*
    %t154 = getelementptr inbounds %T_identifier, %T_identifier* %t152, i32 0, i32 40
    %t153 = bitcast i8* %t154 to i32*
    store i32 5, i32* %t153
    ; line 3881
    %t155 = load i8*, i8** @ufctptr
    %t156 = bitcast i8* %t155 to %T_identifier*
    %t158 = getelementptr inbounds %T_identifier, %T_identifier* %t156, i32 0, i32 44
    %t157 = bitcast i8* %t158 to i32*
    store i32 1, i32* %t157
    ; line 3881
    %t159 = load i8*, i8** @ufctptr
    %t160 = bitcast i8* %t159 to %T_identifier*
    %t162 = getelementptr inbounds %T_identifier, %T_identifier* %t160, i32 0, i32 56
    %t161 = bitcast i8* %t162 to i32*
    store i32 0, i32* %t161

    ; epilogue
    ret void
}


; line 3885
;================================================================================
; scope: initscalars (level : 2)

; activation record
%Frame_initscalars = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_initscalars()
{
    ; allocate frame
    %.frame = alloca %Frame_initscalars, align 8

    ; body
    ; line 3886
    store i8* null, i8** @fwptr
    ; line 3887
    store i1 0, i1* @prtables
    ; line 3887
    store i1 1, i1* @list
    ; line 3887
    store i1 1, i1* @prcode
    ; line 3887
    store i1 1, i1* @debug
    ; line 3888
    store i1 1, i1* @dp
    ; line 3888
    store i1 1, i1* @prterr
    ; line 3888
    store i32 0, i32* @errinx
    ; line 3889
    store i32 0, i32* @intlabel
    ; line 3889
    store i32 8, i32* @kk
    ; line 3889
    store i8* null, i8** @fextfilep
    ; line 3890
    %t2 = mul i32 4, 1
    %t1 = add i32 5, %t2
    store i32 %t1, i32* @lc
    ; line 3892
    store i32 3, i32* @ic
    ; line 3892
    store i1 1, i1* @eol
    ; line 3892
    store i32 0, i32* @linecount
    ; line 3893
    store i8 32, i8* @ch
    ; line 3893
    store i32 0, i32* @chcnt
    ; line 3894
    store i8* null, i8** @globtestp
    ; line 3895
    %t3 = sdiv i32 2147483647, 10
    store i32 %t3, i32* @mxint10
    ; line 3895
    %t4 = sub i32 100, 1
    store i32 %t4, i32* @digmax
    ; nop

    ; epilogue
    ret void
}


; line 3898
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
    ; line 3900
    store %T_setofsys %.dummy_set, %T_setofsys* @constbegsys
    ; line 3901
    store %T_setofsys %.dummy_set, %T_setofsys* @simptypebegsys
    ; line 3902
    store %T_setofsys %.dummy_set, %T_setofsys* @typebegsys
    ; line 3903
    store %T_setofsys %.dummy_set, %T_setofsys* @typedels
    ; line 3904
    store %T_setofsys %.dummy_set, %T_setofsys* @blockbegsys
    ; line 3905
    store %T_setofsys %.dummy_set, %T_setofsys* @selectsys
    ; line 3906
    store %T_setofsys %.dummy_set, %T_setofsys* @facbegsys
    ; line 3907
    store %T_setofsys %.dummy_set, %T_setofsys* @statbegsys
    ; nop

    ; epilogue
    ret void
}


; line 3910
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
    ; line 4060
    call void @P_inittables_reswords(%Frame_inittables* %.frame)
    ; line 4060
    call void @P_inittables_symbols(%Frame_inittables* %.frame)
    ; line 4060
    call void @P_inittables_rators(%Frame_inittables* %.frame)
    ; line 4061
    call void @P_inittables_instrmnemonics(%Frame_inittables* %.frame)
    ; line 4061
    call void @P_inittables_procmnemonics(%Frame_inittables* %.frame)
    ; line 4062
    call void @P_inittables_chartypes(%Frame_inittables* %.frame)
    ; line 4062
    call void @P_inittables_initdx(%Frame_inittables* %.frame)
    ; nop

    ; epilogue
    ret void
}


; line 3911
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
    ; line 3913
    %t2 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 1
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), %T_alpha* %t2
    ; line 3913
    %t3 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 2
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), %T_alpha* %t3
    ; line 3913
    %t4 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 3
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %T_alpha* %t4
    ; line 3914
    %t5 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 4
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), %T_alpha* %t5
    ; line 3914
    %t6 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 5
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), %T_alpha* %t6
    ; line 3914
    %t7 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 6
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), %T_alpha* %t7
    ; line 3915
    %t8 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 7
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), %T_alpha* %t8
    ; line 3915
    %t9 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 8
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), %T_alpha* %t9
    ; line 3915
    %t10 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 9
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), %T_alpha* %t10
    ; line 3916
    %t11 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 10
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), %T_alpha* %t11
    ; line 3916
    %t12 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 11
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), %T_alpha* %t12
    ; line 3916
    %t13 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 12
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), %T_alpha* %t13
    ; line 3917
    %t14 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 13
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), %T_alpha* %t14
    ; line 3917
    %t15 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 14
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), %T_alpha* %t15
    ; line 3917
    %t16 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 15
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %T_alpha* %t16
    ; line 3918
    %t17 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 16
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), %T_alpha* %t17
    ; line 3918
    %t18 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 17
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), %T_alpha* %t18
    ; line 3918
    %t19 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 18
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), %T_alpha* %t19
    ; line 3919
    %t20 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 19
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), %T_alpha* %t20
    ; line 3919
    %t21 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 20
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), %T_alpha* %t21
    ; line 3920
    %t22 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 21
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), %T_alpha* %t22
    ; line 3920
    %t23 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 22
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), %T_alpha* %t23
    ; line 3921
    %t24 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 23
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), %T_alpha* %t24
    ; line 3921
    %t25 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 24
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), %T_alpha* %t25
    ; line 3921
    %t26 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 25
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), %T_alpha* %t26
    ; line 3922
    %t27 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 26
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), %T_alpha* %t27
    ; line 3922
    %t28 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 27
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), %T_alpha* %t28
    ; line 3923
    %t29 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 28
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), %T_alpha* %t29
    ; line 3923
    %t30 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 29
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), %T_alpha* %t30
    ; line 3923
    %t31 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 30
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), %T_alpha* %t31
    ; line 3924
    %t32 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 31
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), %T_alpha* %t32
    ; line 3924
    %t33 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 32
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), %T_alpha* %t33
    ; line 3924
    %t34 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 33
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), %T_alpha* %t34
    ; line 3925
    %t35 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 34
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), %T_alpha* %t35
    ; line 3925
    %t36 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 35
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), %T_alpha* %t36
    ; line 3926
    %t37 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 1
    store i32 1, i32* %t37
    ; line 3926
    %t38 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 2
    store i32 1, i32* %t38
    ; line 3926
    %t39 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 3
    store i32 7, i32* %t39
    ; line 3926
    %t40 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 4
    store i32 15, i32* %t40
    ; line 3926
    %t41 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 5
    store i32 22, i32* %t41
    ; line 3927
    %t42 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 6
    store i32 28, i32* %t42
    ; line 3927
    %t43 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 7
    store i32 32, i32* %t43
    ; line 3927
    %t44 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 8
    store i32 34, i32* %t44
    ; line 3927
    %t45 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 9
    store i32 36, i32* %t45
    ; nop

    ; epilogue
    ret void
}


; line 3930
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
    ; line 3932
    %t2 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 1
    store i32 32, i32* %t2
    ; line 3932
    %t3 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 2
    store i32 43, i32* %t3
    ; line 3932
    %t4 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 3
    store i32 42, i32* %t4
    ; line 3933
    %t5 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 4
    store i32 44, i32* %t5
    ; line 3933
    %t6 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 5
    store i32 7, i32* %t6
    ; line 3933
    %t7 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 6
    store i32 6, i32* %t7
    ; line 3934
    %t8 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 7
    store i32 39, i32* %t8
    ; line 3934
    %t9 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 8
    store i32 36, i32* %t9
    ; line 3934
    %t10 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 9
    store i32 21, i32* %t10
    ; line 3935
    %t11 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 10
    store i32 5, i32* %t11
    ; line 3935
    %t12 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 11
    store i32 5, i32* %t12
    ; line 3935
    %t13 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 12
    store i32 25, i32* %t13
    ; line 3936
    %t14 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 13
    store i32 5, i32* %t14
    ; line 3936
    %t15 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 14
    store i32 4, i32* %t15
    ; line 3936
    %t16 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 15
    store i32 46, i32* %t16
    ; line 3937
    %t17 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 16
    store i32 40, i32* %t17
    ; line 3937
    %t18 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 17
    store i32 37, i32* %t18
    ; line 3937
    %t19 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 18
    store i32 38, i32* %t19
    ; line 3938
    %t20 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 19
    store i32 33, i32* %t20
    ; line 3938
    %t21 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 20
    store i32 20, i32* %t21
    ; line 3939
    %t22 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 21
    store i32 29, i32* %t22
    ; line 3939
    %t23 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 22
    store i32 31, i32* %t23
    ; line 3940
    %t24 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 23
    store i32 41, i32* %t24
    ; line 3940
    %t25 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 24
    store i32 35, i32* %t25
    ; line 3940
    %t26 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 25
    store i32 27, i32* %t26
    ; line 3941
    %t27 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 26
    store i32 19, i32* %t27
    ; line 3941
    %t28 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 27
    store i32 18, i32* %t28
    ; line 3942
    %t29 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 28
    store i32 34, i32* %t29
    ; line 3942
    %t30 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 29
    store i32 28, i32* %t30
    ; line 3942
    %t31 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 30
    store i32 45, i32* %t31
    ; line 3943
    %t32 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 31
    store i32 26, i32* %t32
    ; line 3943
    %t33 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 32
    store i32 30, i32* %t33
    ; line 3943
    %t34 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 33
    store i32 23, i32* %t34
    ; line 3944
    %t35 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 34
    store i32 22, i32* %t35
    ; line 3944
    %t36 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 35
    store i32 24, i32* %t36
    ; line 3945
    %t37 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 43
    store i32 6, i32* %t37
    ; line 3945
    %t38 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 45
    store i32 6, i32* %t38
    ; line 3945
    %t39 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 42
    store i32 5, i32* %t39
    ; line 3946
    %t40 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 47
    store i32 5, i32* %t40
    ; line 3946
    %t41 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 40
    store i32 8, i32* %t41
    ; line 3946
    %t42 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 41
    store i32 9, i32* %t42
    ; line 3947
    %t43 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 36
    store i32 47, i32* %t43
    ; line 3947
    %t44 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 61
    store i32 7, i32* %t44
    ; line 3947
    %t45 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 32
    store i32 47, i32* %t45
    ; line 3948
    %t46 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 44
    store i32 12, i32* %t46
    ; line 3948
    %t47 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 46
    store i32 14, i32* %t47
    ; line 3948
    %t48 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 39
    store i32 47, i32* %t48
    ; line 3949
    %t49 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 91
    store i32 10, i32* %t49
    ; line 3949
    %t50 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 93
    store i32 11, i32* %t50
    ; line 3949
    %t51 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 58
    store i32 16, i32* %t51
    ; line 3950
    %t52 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 94
    store i32 15, i32* %t52
    ; line 3950
    %t53 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 60
    store i32 7, i32* %t53
    ; line 3950
    %t54 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 62
    store i32 7, i32* %t54
    ; line 3951
    %t55 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 59
    store i32 13, i32* %t55
    ; nop

    ; epilogue
    ret void
}


; line 3954
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
    ; line 3957
    ; line 3958
    %t2 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 5
    store i32 14, i32* %t2
    ; line 3958
    %t3 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 10
    store i32 3, i32* %t3
    ; line 3958
    %t4 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 11
    store i32 4, i32* %t4
    ; line 3959
    %t5 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 6
    store i32 7, i32* %t5
    ; line 3959
    %t6 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 13
    store i32 2, i32* %t6
    ; line 3960
    ; line 3961
    %t7 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 43
    store i32 5, i32* %t7
    ; line 3961
    %t8 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 45
    store i32 6, i32* %t8
    ; line 3961
    %t9 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 42
    store i32 0, i32* %t9
    ; line 3961
    %t10 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 47
    store i32 1, i32* %t10
    ; line 3962
    %t11 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 61
    store i32 13, i32* %t11
    ; line 3962
    %t12 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 60
    store i32 8, i32* %t12
    ; line 3962
    %t13 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 62
    store i32 11, i32* %t13
    ; nop

    ; epilogue
    ret void
}


; line 3965
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
    ; line 3967
    %t2 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 1
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), %T_array_28* %t2
    ; line 3967
    %t3 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 2
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), %T_array_28* %t3
    ; line 3967
    %t4 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 3
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), %T_array_28* %t4
    ; line 3967
    %t5 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 4
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), %T_array_28* %t5
    ; line 3968
    %t6 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 5
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), %T_array_28* %t6
    ; line 3968
    %t7 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 6
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), %T_array_28* %t7
    ; line 3968
    %t8 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 7
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), %T_array_28* %t8
    ; line 3968
    %t9 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 8
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), %T_array_28* %t9
    ; line 3969
    %t10 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 9
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), %T_array_28* %t10
    ; line 3969
    %t11 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 10
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), %T_array_28* %t11
    ; line 3969
    %t12 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 11
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), %T_array_28* %t12
    ; line 3969
    %t13 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 12
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), %T_array_28* %t13
    ; line 3970
    %t14 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 13
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), %T_array_28* %t14
    ; line 3970
    %t15 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 14
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), %T_array_28* %t15
    ; line 3970
    %t16 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 15
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), %T_array_28* %t16
    ; line 3970
    %t17 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 16
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), %T_array_28* %t17
    ; line 3971
    %t18 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 17
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), %T_array_28* %t18
    ; line 3971
    %t19 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 18
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), %T_array_28* %t19
    ; line 3971
    %t20 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 19
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), %T_array_28* %t20
    ; line 3971
    %t21 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 20
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), %T_array_28* %t21
    ; line 3972
    %t22 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 21
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), %T_array_28* %t22
    ; line 3972
    %t23 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 22
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), %T_array_28* %t23
    ; line 3972
    %t24 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 23
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), %T_array_28* %t24
    ; nop

    ; epilogue
    ret void
}


; line 3975
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
    ; line 3977
    %t2 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 0
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), %T_array_19* %t2
    ; line 3977
    %t3 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 1
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), %T_array_19* %t3
    ; line 3977
    %t4 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 2
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), %T_array_19* %t4
    ; line 3977
    %t5 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 3
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), %T_array_19* %t5
    ; line 3978
    %t6 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 4
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), %T_array_19* %t6
    ; line 3978
    %t7 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 5
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), %T_array_19* %t7
    ; line 3978
    %t8 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 6
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), %T_array_19* %t8
    ; line 3978
    %t9 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 7
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), %T_array_19* %t9
    ; line 3979
    %t10 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 8
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), %T_array_19* %t10
    ; line 3979
    %t11 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 9
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), %T_array_19* %t11
    ; line 3979
    %t12 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 10
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), %T_array_19* %t12
    ; line 3979
    %t13 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 11
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), %T_array_19* %t13
    ; line 3980
    %t14 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 12
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), %T_array_19* %t14
    ; line 3980
    %t15 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 13
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), %T_array_19* %t15
    ; line 3980
    %t16 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 14
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), %T_array_19* %t16
    ; line 3980
    %t17 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 15
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), %T_array_19* %t17
    ; line 3981
    %t18 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 16
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), %T_array_19* %t18
    ; line 3981
    %t19 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 17
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), %T_array_19* %t19
    ; line 3981
    %t20 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 18
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), %T_array_19* %t20
    ; line 3981
    %t21 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 19
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), %T_array_19* %t21
    ; line 3982
    %t22 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 20
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), %T_array_19* %t22
    ; line 3982
    %t23 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 21
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), %T_array_19* %t23
    ; line 3982
    %t24 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 22
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), %T_array_19* %t24
    ; line 3982
    %t25 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 23
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), %T_array_19* %t25
    ; line 3983
    %t26 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 24
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), %T_array_19* %t26
    ; line 3983
    %t27 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 25
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), %T_array_19* %t27
    ; line 3983
    %t28 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 26
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), %T_array_19* %t28
    ; line 3983
    %t29 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 27
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), %T_array_19* %t29
    ; line 3984
    %t30 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 28
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), %T_array_19* %t30
    ; line 3984
    %t31 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 29
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i32 0, i32 0), %T_array_19* %t31
    ; line 3984
    %t32 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 30
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), %T_array_19* %t32
    ; line 3984
    %t33 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 31
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), %T_array_19* %t33
    ; line 3985
    %t34 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 32
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), %T_array_19* %t34
    ; line 3985
    %t35 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 33
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), %T_array_19* %t35
    ; line 3985
    %t36 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 34
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), %T_array_19* %t36
    ; line 3985
    %t37 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 35
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), %T_array_19* %t37
    ; line 3986
    %t38 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 36
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), %T_array_19* %t38
    ; line 3986
    %t39 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 37
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), %T_array_19* %t39
    ; line 3986
    %t40 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 38
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), %T_array_19* %t40
    ; line 3986
    %t41 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 39
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), %T_array_19* %t41
    ; line 3987
    %t42 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 40
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), %T_array_19* %t42
    ; line 3987
    %t43 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 41
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), %T_array_19* %t43
    ; line 3987
    %t44 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 42
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), %T_array_19* %t44
    ; line 3987
    %t45 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 43
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), %T_array_19* %t45
    ; line 3988
    %t46 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 44
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), %T_array_19* %t46
    ; line 3988
    %t47 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 45
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), %T_array_19* %t47
    ; line 3988
    %t48 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 46
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), %T_array_19* %t48
    ; line 3988
    %t49 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 47
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), %T_array_19* %t49
    ; line 3989
    %t50 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 48
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), %T_array_19* %t50
    ; line 3989
    %t51 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 49
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), %T_array_19* %t51
    ; line 3989
    %t52 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 50
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), %T_array_19* %t52
    ; line 3989
    %t53 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 51
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), %T_array_19* %t53
    ; line 3990
    %t54 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 52
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), %T_array_19* %t54
    ; line 3990
    %t55 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 53
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), %T_array_19* %t55
    ; line 3990
    %t56 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 54
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), %T_array_19* %t56
    ; line 3990
    %t57 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 55
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), %T_array_19* %t57
    ; line 3991
    %t58 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 56
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.167, i32 0, i32 0), %T_array_19* %t58
    ; line 3991
    %t59 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 57
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), %T_array_19* %t59
    ; line 3991
    %t60 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 58
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.169, i32 0, i32 0), %T_array_19* %t60
    ; line 3991
    %t61 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 59
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.170, i32 0, i32 0), %T_array_19* %t61
    ; line 3992
    %t62 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 60
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.171, i32 0, i32 0), %T_array_19* %t62
    ; nop

    ; epilogue
    ret void
}


; line 3995
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
    ; line 3998
    ; line 3999
    %t2 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 97
    store i32 0, i32* %t2
    ; line 4000
    %t3 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 98
    store i32 0, i32* %t3
    ; line 4000
    %t4 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 99
    store i32 0, i32* %t4
    ; line 4001
    %t5 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 100
    store i32 0, i32* %t5
    ; line 4001
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 101
    store i32 0, i32* %t6
    ; line 4002
    %t7 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 102
    store i32 0, i32* %t7
    ; line 4002
    %t8 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 103
    store i32 0, i32* %t8
    ; line 4003
    %t9 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 104
    store i32 0, i32* %t9
    ; line 4003
    %t10 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 105
    store i32 0, i32* %t10
    ; line 4004
    %t11 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 106
    store i32 0, i32* %t11
    ; line 4004
    %t12 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 107
    store i32 0, i32* %t12
    ; line 4005
    %t13 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 108
    store i32 0, i32* %t13
    ; line 4005
    %t14 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 109
    store i32 0, i32* %t14
    ; line 4006
    %t15 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 110
    store i32 0, i32* %t15
    ; line 4006
    %t16 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 111
    store i32 0, i32* %t16
    ; line 4007
    %t17 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 112
    store i32 0, i32* %t17
    ; line 4007
    %t18 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 113
    store i32 0, i32* %t18
    ; line 4008
    %t19 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 114
    store i32 0, i32* %t19
    ; line 4008
    %t20 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 115
    store i32 0, i32* %t20
    ; line 4009
    %t21 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 116
    store i32 0, i32* %t21
    ; line 4009
    %t22 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 117
    store i32 0, i32* %t22
    ; line 4010
    %t23 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 118
    store i32 0, i32* %t23
    ; line 4010
    %t24 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 119
    store i32 0, i32* %t24
    ; line 4011
    %t25 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 120
    store i32 0, i32* %t25
    ; line 4011
    %t26 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 121
    store i32 0, i32* %t26
    ; line 4012
    %t27 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 122
    store i32 0, i32* %t27
    ; line 4012
    %t28 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 48
    store i32 1, i32* %t28
    ; line 4013
    %t29 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 49
    store i32 1, i32* %t29
    ; line 4013
    %t30 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 50
    store i32 1, i32* %t30
    ; line 4014
    %t31 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 51
    store i32 1, i32* %t31
    ; line 4014
    %t32 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 52
    store i32 1, i32* %t32
    ; line 4015
    %t33 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 53
    store i32 1, i32* %t33
    ; line 4015
    %t34 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 54
    store i32 1, i32* %t34
    ; line 4016
    %t35 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 55
    store i32 1, i32* %t35
    ; line 4016
    %t36 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 56
    store i32 1, i32* %t36
    ; line 4017
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 57
    store i32 1, i32* %t37
    ; line 4017
    %t38 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 43
    store i32 2, i32* %t38
    ; line 4018
    %t39 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 45
    store i32 2, i32* %t39
    ; line 4018
    %t40 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 42
    store i32 2, i32* %t40
    ; line 4019
    %t41 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 47
    store i32 2, i32* %t41
    ; line 4019
    %t42 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 40
    store i32 9, i32* %t42
    ; line 4020
    %t43 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 41
    store i32 2, i32* %t43
    ; line 4020
    %t44 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 36
    store i32 2, i32* %t44
    ; line 4021
    %t45 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 61
    store i32 2, i32* %t45
    ; line 4021
    %t46 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 32
    store i32 10, i32* %t46
    ; line 4022
    %t47 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 44
    store i32 2, i32* %t47
    ; line 4022
    %t48 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 46
    store i32 6, i32* %t48
    ; line 4023
    %t49 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 39
    store i32 4, i32* %t49
    ; line 4023
    %t50 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 91
    store i32 2, i32* %t50
    ; line 4024
    %t51 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 93
    store i32 2, i32* %t51
    ; line 4024
    %t52 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 58
    store i32 5, i32* %t52
    ; line 4025
    %t53 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 94
    store i32 2, i32* %t53
    ; line 4025
    %t54 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 59
    store i32 2, i32* %t54
    ; line 4026
    %t55 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 60
    store i32 7, i32* %t55
    ; line 4026
    %t56 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 62
    store i32 8, i32* %t56
    ; line 4027
    %t57 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 48
    store i32 0, i32* %t57
    ; line 4027
    %t58 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 49
    store i32 1, i32* %t58
    ; line 4027
    %t59 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 50
    store i32 2, i32* %t59
    ; line 4028
    %t60 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 51
    store i32 3, i32* %t60
    ; line 4028
    %t61 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 52
    store i32 4, i32* %t61
    ; line 4028
    %t62 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 53
    store i32 5, i32* %t62
    ; line 4029
    %t63 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 54
    store i32 6, i32* %t63
    ; line 4029
    %t64 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 55
    store i32 7, i32* %t64
    ; line 4029
    %t65 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 56
    store i32 8, i32* %t65
    ; line 4030
    %t66 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 57
    store i32 9, i32* %t66
    ; nop

    ; epilogue
    ret void
}


; line 4033
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
    ; line 4035
    %t2 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 0
    store i32 0, i32* %t2
    ; line 4035
    %t3 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 1
    store i32 0, i32* %t3
    ; line 4035
    %t4 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 2
    %t5 = sub i32 0, 1
    store i32 %t5, i32* %t4
    ; line 4035
    %t6 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 3
    %t7 = sub i32 0, 1
    store i32 %t7, i32* %t6
    ; line 4036
    %t8 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 4
    %t9 = sub i32 0, 1
    store i32 %t9, i32* %t8
    ; line 4036
    %t10 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 5
    %t11 = sub i32 0, 1
    store i32 %t11, i32* %t10
    ; line 4036
    %t12 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 6
    %t13 = sub i32 0, 1
    store i32 %t13, i32* %t12
    ; line 4036
    %t14 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 7
    %t15 = sub i32 0, 1
    store i32 %t15, i32* %t14
    ; line 4037
    %t16 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 8
    store i32 0, i32* %t16
    ; line 4037
    %t17 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 9
    store i32 0, i32* %t17
    ; line 4037
    %t18 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 10
    store i32 0, i32* %t18
    ; line 4037
    %t19 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 11
    %t20 = sub i32 0, 1
    store i32 %t20, i32* %t19
    ; line 4038
    %t21 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 12
    %t22 = sub i32 0, 1
    store i32 %t22, i32* %t21
    ; line 4038
    %t23 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 13
    %t24 = sub i32 0, 1
    store i32 %t24, i32* %t23
    ; line 4038
    %t25 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 14
    %t26 = sub i32 0, 1
    store i32 %t26, i32* %t25
    ; line 4038
    %t27 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 15
    %t28 = sub i32 0, 1
    store i32 %t28, i32* %t27
    ; line 4039
    %t29 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 16
    %t30 = sub i32 0, 1
    store i32 %t30, i32* %t29
    ; line 4039
    %t31 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 17
    store i32 0, i32* %t31
    ; line 4039
    %t32 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 18
    store i32 0, i32* %t32
    ; line 4039
    %t33 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 19
    store i32 0, i32* %t33
    ; line 4040
    %t34 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 20
    store i32 0, i32* %t34
    ; line 4040
    %t35 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 21
    %t36 = sub i32 0, 1
    store i32 %t36, i32* %t35
    ; line 4040
    %t37 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 22
    %t38 = sub i32 0, 1
    store i32 %t38, i32* %t37
    ; line 4040
    %t39 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 23
    store i32 0, i32* %t39
    ; line 4041
    %t40 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 24
    store i32 0, i32* %t40
    ; line 4041
    %t41 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 25
    store i32 0, i32* %t41
    ; line 4041
    %t42 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 26
    %t43 = sub i32 0, 2
    store i32 %t43, i32* %t42
    ; line 4041
    %t44 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 27
    store i32 0, i32* %t44
    ; line 4042
    %t45 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 28
    %t46 = sub i32 0, 1
    store i32 %t46, i32* %t45
    ; line 4042
    %t47 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 29
    store i32 0, i32* %t47
    ; line 4042
    %t48 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 30
    store i32 0, i32* %t48
    ; line 4042
    %t49 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 31
    store i32 0, i32* %t49
    ; line 4043
    %t50 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 32
    store i32 0, i32* %t50
    ; line 4043
    %t51 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 33
    %t52 = sub i32 0, 1
    store i32 %t52, i32* %t51
    ; line 4043
    %t53 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 34
    store i32 0, i32* %t53
    ; line 4043
    %t54 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 35
    store i32 0, i32* %t54
    ; line 4044
    %t55 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 36
    %t56 = sub i32 0, 1
    store i32 %t56, i32* %t55
    ; line 4044
    %t57 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 37
    store i32 1, i32* %t57
    ; line 4044
    %t58 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 38
    store i32 1, i32* %t58
    ; line 4044
    %t59 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 39
    store i32 1, i32* %t59
    ; line 4045
    %t60 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 40
    %t61 = sub i32 0, 2
    store i32 %t61, i32* %t60
    ; line 4045
    %t62 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 41
    store i32 0, i32* %t62
    ; line 4045
    %t63 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 42
    store i32 0, i32* %t63
    ; line 4045
    %t64 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 43
    %t65 = sub i32 0, 1
    store i32 %t65, i32* %t64
    ; line 4046
    %t66 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 44
    %t67 = sub i32 0, 1
    store i32 %t67, i32* %t66
    ; line 4046
    %t68 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 45
    store i32 0, i32* %t68
    ; line 4046
    %t69 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 46
    store i32 0, i32* %t69
    ; line 4046
    %t70 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 47
    %t71 = sub i32 0, 1
    store i32 %t71, i32* %t70
    ; line 4047
    %t72 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 48
    %t73 = sub i32 0, 1
    store i32 %t73, i32* %t72
    ; line 4047
    %t74 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 49
    %t75 = sub i32 0, 1
    store i32 %t75, i32* %t74
    ; line 4047
    %t76 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 50
    store i32 1, i32* %t76
    ; line 4047
    %t77 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 51
    store i32 1, i32* %t77
    ; line 4048
    %t78 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 52
    %t79 = sub i32 0, 1
    store i32 %t79, i32* %t78
    ; line 4048
    %t80 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 53
    %t81 = sub i32 0, 1
    store i32 %t81, i32* %t80
    ; line 4048
    %t82 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 54
    store i32 1, i32* %t82
    ; line 4048
    %t83 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 55
    %t84 = sub i32 0, 1
    store i32 %t84, i32* %t83
    ; line 4049
    %t85 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 56
    %t86 = sub i32 0, 1
    store i32 %t86, i32* %t85
    ; line 4049
    %t87 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 57
    store i32 0, i32* %t87
    ; line 4049
    %t88 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 58
    store i32 0, i32* %t88
    ; line 4049
    %t89 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 59
    store i32 0, i32* %t89
    ; line 4050
    %t90 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 60
    store i32 0, i32* %t90
    ; line 4051
    %t91 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 1
    %t92 = sub i32 0, 1
    store i32 %t92, i32* %t91
    ; line 4051
    %t93 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 2
    %t94 = sub i32 0, 1
    store i32 %t94, i32* %t93
    ; line 4051
    %t95 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 3
    %t96 = sub i32 0, 2
    store i32 %t96, i32* %t95
    ; line 4051
    %t97 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 4
    %t98 = sub i32 0, 2
    store i32 %t98, i32* %t97
    ; line 4052
    %t99 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 5
    %t100 = sub i32 0, 2
    store i32 %t100, i32* %t99
    ; line 4052
    %t101 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 6
    %t102 = sub i32 0, 3
    store i32 %t102, i32* %t101
    ; line 4052
    %t103 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 7
    %t104 = sub i32 0, 3
    store i32 %t104, i32* %t103
    ; line 4052
    %t105 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 8
    %t106 = sub i32 0, 3
    store i32 %t106, i32* %t105
    ; line 4053
    %t107 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 9
    %t108 = sub i32 0, 3
    store i32 %t108, i32* %t107
    ; line 4053
    %t109 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 10
    %t110 = sub i32 0, 4
    store i32 %t110, i32* %t109
    ; line 4053
    %t111 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 11
    store i32 0, i32* %t111
    ; line 4053
    %t112 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 12
    %t113 = sub i32 0, 2
    store i32 %t113, i32* %t112
    ; line 4054
    %t114 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 13
    %t115 = sub i32 0, 1
    store i32 %t115, i32* %t114
    ; line 4054
    %t116 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 14
    store i32 0, i32* %t116
    ; line 4054
    %t117 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 15
    store i32 0, i32* %t117
    ; line 4054
    %t118 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 16
    store i32 0, i32* %t118
    ; line 4055
    %t119 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 17
    store i32 0, i32* %t119
    ; line 4055
    %t120 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 18
    store i32 0, i32* %t120
    ; line 4055
    %t121 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 19
    store i32 0, i32* %t121
    ; line 4055
    %t122 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 20
    store i32 0, i32* %t122
    ; line 4056
    %t123 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 21
    %t124 = sub i32 0, 1
    store i32 %t124, i32* %t123
    ; line 4056
    %t125 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 22
    %t126 = sub i32 0, 1
    store i32 %t126, i32* %t125
    ; line 4056
    %t127 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 23
    %t128 = sub i32 0, 1
    store i32 %t128, i32* %t127
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"   *** eof \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" ****  \00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c" abi\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c" abr\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c" adi\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c" adr\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c" atn\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c" chk\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c" chr\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c" cos\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c" csp\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c" cup\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c" dec\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c" dif\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c" dvi\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c" dvr\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c" eln\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c" ent\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c" eof\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c" equ\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c" exp\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c" fjp\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c" flo\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c" flt\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c" geq\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c" get\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c" grt\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c" inc\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c" ind\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c" inn\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c" int\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c" ior\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c" ixa\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" l\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c" lao\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c" lca\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c" lda\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c" ldc\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c" ldo\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c" leq\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c" les\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" local\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c" lod\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" log\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c" mod\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c" mov\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c" mpi\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c" mpr\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" mst\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c" neq\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c" ngi\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c" ngr\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c" odd\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c" ord\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c" pak\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c" put\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c" rdc\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c" rdi\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c" rdr\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c" ret\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c" rln\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c" rst\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c" sav\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c" sbi\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c" sbr\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c" sgs\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c" sin\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" sqi\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c" sqr\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c" sqt\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c" sro\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c" sto\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c" stp\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c" str\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" tables \00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c" trc\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c" ujc\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c" ujp\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c" uni\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c" wln\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c" wrc\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c" wri\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c" wro\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c" wrr\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" wrs\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c" xjp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"abs     \00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"and     \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"arctan  \00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"array   \00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"begin   \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"boolean \00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"case    \00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"char    \00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"chr     \00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"const   \00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"cos     \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"div     \00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"do      \00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"downto  \00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"else    \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"encountered\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"end     \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"eof     \00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"eoln    \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"exp     \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"false   \00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"file    \00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"for     \00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"forward \00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"get     \00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"goto    \00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"if      \00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"in      \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"input   \00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"integer \00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"label   \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"ln      \00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"mark    \00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"mod     \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"new     \00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"nil     \00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"not     \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"odd     \00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"of      \00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"or      \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"ord     \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"output  \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"pack    \00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"packed  \00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"prd     \00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"pred    \00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"procedur\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"program \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"prr\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"prr     \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"put     \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"read    \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"readln  \00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"real    \00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"record  \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"release \00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"repeat  \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"reset   \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"rewrite \00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"set     \00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"sin     \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"sqr     \00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"sqrt    \00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"succ    \00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"then    \00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"to      \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"true    \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"trunc   \00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"type    \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"unpack  \00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"until   \00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"var     \00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"while   \00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"with    \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"write   \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"writeln \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!233}
!llvm.module.flags = !{!234, !235}
!llvm.ident = !{!232}

!0 = !DIFile(filename: "pcom.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
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
!11 = !DICompositeType(tag: DW_TAG_array_type, name: "alpha", file: !0, line: 202, baseType: !2, size: 64, elements: !13)
!12 = !DISubrange(count: 8)
!13 = !{!12}
!14 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attr", file: !0, line: 229, size: 448, flags: DIFlagTypePassByValue, elements: !99)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "stp", file: !0, line: 178, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "structure", file: !0, line: 180, size: 704, flags: DIFlagTypePassByValue, elements: !89)
!19 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ctp", file: !0, line: 178, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "identifier", file: !0, line: 204, size: 1728, flags: DIFlagTypePassByValue, elements: !68)
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valu", file: !0, line: 167, size: 192, flags: DIFlagTypePassByValue, elements: !47)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "csp", file: !0, line: 159, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constant", file: !0, line: 160, size: 896, flags: DIFlagTypePassByValue, elements: !43)
!26 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 161, baseType: !2, size: 800, elements: !29)
!28 = !DISubrange(count: 100)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, name: "setty", file: !0, line: 157, baseType: !33, size: 64, elements: !32)
!31 = !DISubrange(count: 48)
!32 = !{!31}
!33 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!34 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!35 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 164, baseType: !2, size: 800, elements: !37)
!36 = !DISubrange(count: 100)
!37 = !{!36}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cclass", scope: !25, file: !0, line: 160, baseType: !26, size: 32, offset: 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rval", scope: !25, file: !0, line: 161, baseType: !27, size: 800, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pval", scope: !25, file: !0, line: 162, baseType: !30, size: 64, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "slgth", scope: !25, file: !0, line: 163, baseType: !34, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sval", scope: !25, file: !0, line: 164, baseType: !35, size: 800, offset: 64)
!43 = !{!38,!39,!40,!41,!42}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !23, file: !0, line: 167, baseType: !1, size: 8, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !23, file: !0, line: 168, baseType: !3, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "valp", scope: !23, file: !0, line: 169, baseType: !24, size: 64, offset: 64)
!47 = !{!44,!45,!46}
!48 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !0, line: 205, baseType: !11, size: 64, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !21, file: !0, line: 205, baseType: !20, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !21, file: !0, line: 205, baseType: !20, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "idtype", scope: !21, file: !0, line: 206, baseType: !17, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !0, line: 206, baseType: !20, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "klass", scope: !21, file: !0, line: 207, baseType: !22, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !21, file: !0, line: 209, baseType: !23, size: 192, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "vkind", scope: !21, file: !0, line: 210, baseType: !8, size: 32, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "vlev", scope: !21, file: !0, line: 210, baseType: !48, size: 32, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !21, file: !0, line: 210, baseType: !10, size: 32, offset: 416)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fldaddr", scope: !21, file: !0, line: 211, baseType: !10, size: 32, offset: 352)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pfdeckind", scope: !21, file: !0, line: 212, baseType: !19, size: 32, offset: 352)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !21, file: !0, line: 213, baseType: !49, size: 32, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pflev", scope: !21, file: !0, line: 214, baseType: !48, size: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pfname", scope: !21, file: !0, line: 214, baseType: !3, size: 32, offset: 416)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pfkind", scope: !21, file: !0, line: 215, baseType: !8, size: 32, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "forwdecl", scope: !21, file: !0, line: 216, baseType: !1, size: 8, offset: 480)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "externl", scope: !21, file: !0, line: 216, baseType: !1, size: 8, offset: 488)
!68 = !{!50,!51,!52,!53,!54,!55,!56,!57,!58,!59,!60,!61,!62,!63,!64,!65,!66,!67}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !18, file: !0, line: 181, baseType: !1, size: 8, offset: 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !18, file: !0, line: 182, baseType: !10, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "form", scope: !18, file: !0, line: 183, baseType: !15, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "scalkind", scope: !18, file: !0, line: 184, baseType: !19, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fconst", scope: !18, file: !0, line: 185, baseType: !20, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rangetype", scope: !18, file: !0, line: 186, baseType: !17, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !18, file: !0, line: 186, baseType: !23, size: 192, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !18, file: !0, line: 186, baseType: !23, size: 192, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "eltype", scope: !18, file: !0, line: 187, baseType: !17, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "elset", scope: !18, file: !0, line: 188, baseType: !17, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aeltype", scope: !18, file: !0, line: 189, baseType: !17, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "inxtype", scope: !18, file: !0, line: 189, baseType: !17, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fstfld", scope: !18, file: !0, line: 190, baseType: !20, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "recvar", scope: !18, file: !0, line: 190, baseType: !17, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "filtype", scope: !18, file: !0, line: 191, baseType: !17, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tagfieldp", scope: !18, file: !0, line: 192, baseType: !20, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "fstvar", scope: !18, file: !0, line: 192, baseType: !17, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "nxtvar", scope: !18, file: !0, line: 193, baseType: !17, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "subvar", scope: !18, file: !0, line: 193, baseType: !17, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "varval", scope: !18, file: !0, line: 193, baseType: !23, size: 192, offset: 256)
!89 = !{!69,!70,!71,!72,!73,!74,!75,!76,!77,!78,!79,!80,!81,!82,!83,!84,!85,!86,!87,!88}
!90 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!91 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "typtr", scope: !16, file: !0, line: 229, baseType: !17, size: 64, offset: 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !16, file: !0, line: 230, baseType: !90, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cval", scope: !16, file: !0, line: 231, baseType: !23, size: 192, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !16, file: !0, line: 232, baseType: !91, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "vlevel", scope: !16, file: !0, line: 233, baseType: !48, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dplmt", scope: !16, file: !0, line: 233, baseType: !10, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "idplmt", scope: !16, file: !0, line: 234, baseType: !10, size: 32, offset: 128)
!99 = !{!92,!93,!94,!95,!96,!97,!98}
!100 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!101 = !DICompositeType(tag: DW_TAG_array_type, name: "setofsys", file: !0, line: 151, baseType: !104, size: 64, elements: !103)
!102 = !DISubrange(count: 48)
!103 = !{!102}
!104 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!105 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 360, baseType: !106, size: 1952, elements: !108)
!106 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!107 = !DISubrange(count: 61)
!108 = !{!107}
!109 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 350, baseType: !110, size: 8192, elements: !112)
!110 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!111 = !DISubrange(count: 256)
!112 = !{!111}
!113 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 315, baseType: !114, size: 8064, elements: !130)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 316, size: 384, flags: DIFlagTypePassByValue, elements: !128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "lbp", file: !0, line: 247, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labl", file: !0, line: 248, size: 192, flags: DIFlagTypePassByValue, elements: !121)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nextlab", scope: !116, file: !0, line: 248, baseType: !115, size: 64, offset: 0)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !116, file: !0, line: 248, baseType: !1, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "labval", scope: !116, file: !0, line: 249, baseType: !3, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "labname", scope: !116, file: !0, line: 249, baseType: !3, size: 32, offset: 128)
!121 = !{!117,!118,!119,!120}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !114, file: !0, line: 317, baseType: !20, size: 64, offset: 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flabel", scope: !114, file: !0, line: 317, baseType: !115, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "occur", scope: !114, file: !0, line: 318, baseType: !100, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "clev", scope: !114, file: !0, line: 319, baseType: !48, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cdspl", scope: !114, file: !0, line: 320, baseType: !10, size: 32, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "vdspl", scope: !114, file: !0, line: 321, baseType: !10, size: 32, offset: 160)
!128 = !{!122,!123,!124,!125,!126,!127}
!129 = !DISubrange(count: 21)
!130 = !{!129}
!131 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!132 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!133 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 332, baseType: !134, size: 640, elements: !140)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 333, size: 64, flags: DIFlagTypePassByValue, elements: !138)
!135 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !134, file: !0, line: 333, baseType: !3, size: 32, offset: 0)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nmr", scope: !134, file: !0, line: 334, baseType: !135, size: 32, offset: 32)
!138 = !{!136,!137}
!139 = !DISubrange(count: 10)
!140 = !{!139}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "extfilep", file: !0, line: 252, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filerec", file: !0, line: 253, size: 128, flags: DIFlagTypePassByValue, elements: !145)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !142, file: !0, line: 253, baseType: !11, size: 64, offset: 0)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nextfile", scope: !142, file: !0, line: 253, baseType: !141, size: 64, offset: 64)
!145 = !{!143,!144}
!146 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 352, baseType: !147, size: 288, elements: !149)
!147 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!148 = !DISubrange(count: 9)
!149 = !{!148}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "testp", file: !0, line: 239, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "testpointer", file: !0, line: 240, size: 192, flags: DIFlagTypePassByValue, elements: !155)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !151, file: !0, line: 241, baseType: !17, size: 64, offset: 0)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !151, file: !0, line: 241, baseType: !17, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "lasttestp", scope: !151, file: !0, line: 242, baseType: !150, size: 64, offset: 128)
!155 = !{!152,!153,!154}
!156 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "marktype", file: !0, line: 138, baseType: !3, size: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 358, baseType: !159, size: 1952, elements: !163)
!159 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 358, baseType: !2, size: 32, elements: !161)
!160 = !DISubrange(count: 4)
!161 = !{!160}
!162 = !DISubrange(count: 61)
!163 = !{!162}
!164 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 357, baseType: !11, size: 2240, elements: !166)
!165 = !DISubrange(count: 35)
!166 = !{!165}
!167 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 362, baseType: !3, size: 8192, elements: !169)
!168 = !DISubrange(count: 256)
!169 = !{!168}
!170 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 361, baseType: !171, size: 736, elements: !173)
!171 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!172 = !DISubrange(count: 23)
!173 = !{!172}
!174 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 355, baseType: !14, size: 1120, elements: !176)
!175 = !DISubrange(count: 35)
!176 = !{!175}
!177 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 353, baseType: !9, size: 1120, elements: !179)
!178 = !DISubrange(count: 35)
!179 = !{!178}
!180 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 351, baseType: !11, size: 2240, elements: !182)
!181 = !DISubrange(count: 35)
!182 = !{!181}
!183 = !DICompositeType(tag: DW_TAG_array_type, name: "setofids", file: !0, line: 200, baseType: !186, size: 32, elements: !185)
!184 = !DISubrange(count: 6)
!185 = !{!184}
!186 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!187 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 359, baseType: !188, size: 736, elements: !192)
!188 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 359, baseType: !2, size: 32, elements: !190)
!189 = !DISubrange(count: 4)
!190 = !{!189}
!191 = !DISubrange(count: 23)
!192 = !{!191}
!193 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 356, baseType: !14, size: 8192, elements: !195)
!194 = !DISubrange(count: 256)
!195 = !{!194}
!196 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 354, baseType: !9, size: 8192, elements: !198)
!197 = !DISubrange(count: 256)
!198 = !{!197}
!199 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 420, baseType: !2, size: 800, elements: !201)
!200 = !DISubrange(count: 100)
!201 = !{!200}
!202 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 421, baseType: !2, size: 800, elements: !204)
!203 = !DISubrange(count: 100)
!204 = !{!203}
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 760, size: 64, flags: DIFlagTypePassByValue, elements: !208)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !205, file: !0, line: 760, baseType: !17, size: 64, offset: 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !205, file: !0, line: 760, baseType: !3, size: 32, offset: 0)
!208 = !{!206,!207}
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 764, size: 64, flags: DIFlagTypePassByValue, elements: !212)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !209, file: !0, line: 764, baseType: !20, size: 64, offset: 0)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !209, file: !0, line: 764, baseType: !3, size: 32, offset: 0)
!212 = !{!210,!211}
!213 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!214 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!215 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!216 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1900, baseType: !24, size: 4160, elements: !218)
!217 = !DISubrange(count: 65)
!218 = !{!217}
!219 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!220 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!221 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!222 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "caseinfo", file: !0, line: 3291, size: 128, flags: DIFlagTypePassByValue, elements: !228)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "cip", file: !0, line: 3289, baseType: !223, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !0, line: 3291, baseType: !224, size: 64, offset: 0)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "csstart", scope: !223, file: !0, line: 3292, baseType: !3, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "cslab", scope: !223, file: !0, line: 3293, baseType: !3, size: 32, offset: 96)
!228 = !{!225,!226,!227}
!229 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!14,!15,!16,!17,!18,!19,!20,!21,!22,!23,!24,!25,!26,!27,!30,!34,!35,!48,!49,!90,!91,!100,!101,!105,!106,!109,!110,!113,!114,!115,!116,!131,!132,!133,!134,!135,!141,!142,!146,!147,!150,!151,!156,!157,!158,!159,!164,!167,!170,!171,!174,!177,!180,!183,!187,!188,!193,!196,!199,!202,!205,!209,!213,!214,!215,!216,!219,!220,!221,!222,!223,!224}
!230 = !{}
!231 = !{}
!232 = !{!"LPC 1.1"}
!233 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230, retainedTypes: !229, globals: !231, nameTableKind: None)
!234 = !{i32 2, !"CodeView", i32 1}
!235 = !{i32 2, !"Debug Info Version", i32 3}

