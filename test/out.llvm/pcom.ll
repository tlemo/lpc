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
    call void @P_initscalars()
    call void @P_initsets()
    call void @P_inittables()
    store i32 0, i32* @level
    store i32 0, i32* @top
    %t5 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 0
    %t7 = getelementptr inbounds %T_record_10, %T_record_10* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i8**
    store i8* null, i8** %t6
    %t8 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 0
    %t10 = getelementptr inbounds %T_record_10, %T_record_10* %t8, i32 0, i32 8
    %t9 = bitcast i8* %t10 to i8**
    store i8* null, i8** %t9
    %t11 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 0
    %t13 = getelementptr inbounds %T_record_10, %T_record_10* %t11, i32 0, i32 16
    %t12 = bitcast i8* %t13 to i32*
    store i32 0, i32* %t12
    call void @P_enterstdtypes()
    call void @P_stdnames()
    call void @P_entstdnames()
    call void @P_enterundecl()
    store i32 1, i32* @top
    store i32 1, i32* @level
    %t14 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 1
    %t16 = getelementptr inbounds %T_record_10, %T_record_10* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8**
    store i8* null, i8** %t15
    %t17 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 1
    %t19 = getelementptr inbounds %T_record_10, %T_record_10* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i8**
    store i8* null, i8** %t18
    %t20 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 1
    %t22 = getelementptr inbounds %T_record_10, %T_record_10* %t20, i32 0, i32 16
    %t21 = bitcast i8* %t22 to i32*
    store i32 0, i32* %t21
    call void @P_insymbol()
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
    %t2 = load i32, i32* @linecount
    %t1 = add i32 %t2, 1
    store i32 %t1, i32* @linecount
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
    %t2 = load i32, i32* @errinx
    %t3 = getelementptr inbounds %T_array_12, %T_array_12* @errlist, i32 0, i32 %t2
    %t5 = getelementptr inbounds %T_record_13, %T_record_13* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t6 = load i32, i32* @chcnt
    store i32 %t6, i32* %t4

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
    br label %L_1
L_1:

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
    %t2 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 4
    %t4 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    %t5 = bitcast i8* %t3 to %T_identifier*
    %t7 = getelementptr inbounds %T_identifier, %T_identifier* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to %T_alpha*
    %t8 = load %T_alpha, %T_alpha* %t6
    store %T_alpha %t8, %T_alpha* %t2
    %t9 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 1
    %t10 = load i32, i32* @top
    %t11 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t10
    %t13 = getelementptr inbounds %T_record_10, %T_record_10* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8**
    %t14 = load i8*, i8** %t12
    store i8* %t14, i8** %t9
    %t16 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t15 = load i8*, i8** %t16
    %t17 = bitcast i8* %t15 to %T_identifier*
    %t19 = getelementptr inbounds %T_identifier, %T_identifier* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i8**
    store i8* null, i8** %t18
    %t21 = getelementptr inbounds %Frame_enterid, %Frame_enterid* %.frame, i32 0, i32 0
    %t20 = load i8*, i8** %t21
    %t22 = bitcast i8* %t20 to %T_identifier*
    %t24 = getelementptr inbounds %T_identifier, %T_identifier* %t22, i32 0, i32 16
    %t23 = bitcast i8* %t24 to i8**
    store i8* null, i8** %t23

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
    store i32 0, i32* @disx
    br label %L_1
L_1:
    %t3 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 0
    %t4 = load i8**, i8*** %t3
    %t6 = getelementptr inbounds %Frame_searchid, %Frame_searchid* %.frame, i32 0, i32 3
    %t5 = load i8*, i8** %t6
    store i8* %t5, i8** %t4

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
    %t4 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 1
    %t5 = load i32*, i32** %t4
    store i32 0, i32* %t5
    %t6 = getelementptr inbounds %Frame_getbounds, %Frame_getbounds* %.frame, i32 0, i32 0
    %t7 = load i32*, i32** %t6
    store i32 0, i32* %t7

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
    %t2 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 1
    store i32 1, i32* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t3
    ret i32 %t4
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
    %t3 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 1
    %t4 = load i8*, i8** %t5
    %t6 = call i32 @F_alignquot(i8* %t4)
    store i32 %t6, i32* %t3
    %t7 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %Frame_align, %Frame_align* %.frame, i32 0, i32 0
    %t11 = load i32*, i32** %t10
    %t9 = load i32, i32* %t11
    %t8 = sub i32 %t9, 1
    store i32 %t8, i32* %t7
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
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t5)
    %t6 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t6)
    call void @P_printtables_marker(%Frame_printtables* %.frame)
    %t7 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t7)

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
    %t3 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %T_printtables_stptoint_record_33, %T_printtables_stptoint_record_33* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    store i8* %t6, i8** %t4
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
    %t3 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %T_printtables_ctptoint_record_34, %T_printtables_ctptoint_record_34* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    store i8* %t6, i8** %t4
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
    %t3 = load i32, i32* @intlabel
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @intlabel
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
    store i1 1, i1* @dp
    store i1 0, i1* @dp
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
    %t5 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    store i8* null, i8** %t5
    %t6 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t7 = load %T_valu*, %T_valu** %t6
    %t9 = getelementptr inbounds %T_valu, %T_valu* %t7, i32 0, i32 4
    %t8 = bitcast i8* %t9 to i32*
    store i32 0, i32* %t8
    %t10 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t11 = load i8**, i8*** %t10
    %t13 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 5
    %t12 = load i8*, i8** %t13
    store i8* %t12, i8** %t11

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

    ; epilogue
    %t4 = getelementptr inbounds %Frame_block_equalbounds, %Frame_block_equalbounds* %.frame, i32 0, i32 2
    %t5 = load i1, i1* %t4
    ret i1 %t5
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

    ; epilogue
    %t4 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %.frame, i32 0, i32 2
    %t5 = load i1, i1* %t4
    ret i1 %t5
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
    %t3 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    store i1 0, i1* %t3

    ; epilogue
    %t4 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %.frame, i32 0, i32 1
    %t5 = load i1, i1* %t4
    ret i1 %t5
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
    %t5 = getelementptr inbounds %Frame_block_typ_simpletype, %Frame_block_typ_simpletype* %.frame, i32 0, i32 0
    %t6 = load i32*, i32** %t5
    store i32 1, i32* %t6

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
    %t4 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 14
    store i8* null, i8** %t4
    %t5 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 5
    store i8* null, i8** %t5
    %t6 = getelementptr inbounds %Frame_block_typ_fieldlist, %Frame_block_typ_fieldlist* %.frame, i32 0, i32 13
    store i8* null, i8** %t6

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
    %t2 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 3
    store i8* null, i8** %t2

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
    %t3 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 6
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    store i32 5, i32* @lc
    %t5 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store i1 0, i1* %t5
    %t6 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t7 = load i32, i32* @level
    store i32 %t7, i32* %t6
    %t8 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t9 = load i32, i32* @top
    store i32 %t9, i32* %t8
    %t11 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 9
    %t10 = load i32, i32* %t11
    store i32 %t10, i32* @level
    %t13 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 10
    %t12 = load i32, i32* %t13
    store i32 %t12, i32* @top
    %t15 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 6
    %t14 = load i32, i32* %t15
    store i32 %t14, i32* @lc
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
    %t4 = getelementptr inbounds %Frame_block_procdeclaration_parameterlist, %Frame_block_procdeclaration_parameterlist* %.frame, i32 0, i32 4
    store i8* null, i8** %t4

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
    %t3 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 2
    store i32 0, i32* %t3
    %t4 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 13
    store i32 5, i32* %t4
    %t5 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 12
    store i32 5, i32* %t5
    %t7 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 3
    %t6 = load i32, i32* %t7
    call void @P_block_body_putlabel(%Frame_block_body* %.frame, i32 %t6)
    %t8 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    call void @P_genlabel(i32* %t8)
    %t9 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    call void @P_genlabel(i32* %t9)
    %t11 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 10
    %t10 = load i32, i32* %t11
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 32, i32 1, i32 %t10)
    %t13 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 11
    %t12 = load i32, i32* %t13
    call void @P_block_body_gencupent(%Frame_block_body* %.frame, i32 32, i32 2, i32 %t12)
    %t14 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 4
    %t15 = load i32, i32* @lc
    store i32 %t15, i32* %t14
    %t16 = getelementptr inbounds %Frame_block_body, %Frame_block_body* %.frame, i32 0, i32 8
    %t17 = load i32, i32* @top
    %t18 = getelementptr inbounds %T_array_9, %T_array_9* @display, i32 0, i32 %t17
    %t20 = getelementptr inbounds %T_record_10, %T_record_10* %t18, i32 0, i32 8
    %t19 = bitcast i8* %t20 to i8**
    %t21 = load i8*, i8** %t19
    store i8* %t21, i8** %t16
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
    %t4 = load i32, i32* @ic
    %t3 = add i32 %t4, 1
    store i32 %t3, i32* @ic
    %t5 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 1
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_gen0, %Frame_block_body_gen0* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_mes(%Frame_block_body* %t6, i32 %t7)

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
    %t5 = load i32, i32* @ic
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* @ic

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
    %t6 = load i32, i32* @ic
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @ic
    %t7 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 4
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    %t10 = getelementptr inbounds %Frame_block_body_gen2, %Frame_block_body_gen2* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    call void @P_block_body_mes(%Frame_block_body* %t8, i32 %t9)

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
    %t5 = load i32, i32* @ic
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* @ic
    %t6 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 2
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    %t9 = getelementptr inbounds %Frame_block_body_gen0t, %Frame_block_body_gen0t* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    call void @P_block_body_mes(%Frame_block_body* %t7, i32 %t8)

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
    %t6 = load i32, i32* @ic
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @ic
    %t7 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 3
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    %t10 = getelementptr inbounds %Frame_block_body_gen1t, %Frame_block_body_gen1t* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    call void @P_block_body_mes(%Frame_block_body* %t8, i32 %t9)

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
    %t7 = load i32, i32* @ic
    %t6 = add i32 %t7, 1
    store i32 %t6, i32* @ic
    %t8 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 4
    %t9 = load %Frame_block_body*, %Frame_block_body** %t8
    %t11 = getelementptr inbounds %Frame_block_body_gen2t, %Frame_block_body_gen2t* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    call void @P_block_body_mes(%Frame_block_body* %t9, i32 %t10)

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
    %t3 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body*, %Frame_block_body** %t3
    call void @P_block_body_load(%Frame_block_body* %t4)
    %t6 = load i32, i32* @ic
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @ic
    %t7 = getelementptr inbounds %Frame_block_body_genfjp, %Frame_block_body_genfjp* %.frame, i32 0, i32 1
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    call void @P_block_body_mes(%Frame_block_body* %t8, i32 33)

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
    %t5 = load i32, i32* @ic
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* @ic
    %t6 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 2
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    %t9 = getelementptr inbounds %Frame_block_body_genujpxjp, %Frame_block_body_genujpxjp* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    call void @P_block_body_mes(%Frame_block_body* %t7, i32 %t8)

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
    %t6 = load i32, i32* @ic
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @ic
    %t7 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 3
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    %t10 = getelementptr inbounds %Frame_block_body_gencupent, %Frame_block_body_gencupent* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    call void @P_block_body_mes(%Frame_block_body* %t8, i32 %t9)

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
    %t5 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i8**
    %t7 = getelementptr inbounds %Frame_block_body_statement_selector, %Frame_block_body_statement_selector* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 24
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** %t9
    store i8* %t11, i8** %t4
    %t13 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 8
    %t12 = bitcast i8* %t13 to i32*
    store i32 1, i32* %t12

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
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 0
    %t7 = load %T_setofsys, %T_setofsys* %t8
    %t10 = getelementptr inbounds %Frame_block_body_statement_call_variable, %Frame_block_body_statement_call_variable* %.frame, i32 0, i32 1
    %t9 = load i8*, i8** %t10
    call void @P_block_body_statement_selector(%Frame_block_body_statement* %t6, %T_setofsys %t7, i8* %t9)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_getputresetrewrite, %Frame_block_body_statement_call_getputresetrewrite* %.frame, i32 0, i32 0
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_statement_call_read, %Frame_block_body_statement_call_read* %.frame, i32 0, i32 0
    store i32 5, i32* %t3

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 4
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 6
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 2
    %t3 = load i32, i32* %t4
    store i32 %t3, i32* %t2
    %t7 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 3
    store i32 1, i32* %t7
    %t8 = getelementptr inbounds %Frame_block_body_statement_call_write, %Frame_block_body_statement_call_write* %.frame, i32 0, i32 1
    %t9 = add i32 5, 1
    store i32 %t9, i32* %t8

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
    call void @P_error(i32 399)
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 0
    store i8* null, i8** %t5
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 1
    store i8* null, i8** %t6
    %t7 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t8 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t9
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t10, %T_setofsys %.dummy_set)
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_pack, %Frame_block_body_statement_call_pack* %.frame, i32 0, i32 2
    %t13 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t12
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t13, %T_setofsys %.dummy_set)

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
    call void @P_error(i32 399)
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 0
    store i8* null, i8** %t5
    %t6 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 1
    store i8* null, i8** %t6
    %t7 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t8 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t7
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t8, %T_setofsys %.dummy_set)
    %t10 = getelementptr inbounds %Frame_block_body_statement_call_unpack, %Frame_block_body_statement_call_unpack* %.frame, i32 0, i32 2
    %t11 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t10
    %t12 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t11, i32 0, i32 3
    %t13 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t12
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t13, %T_setofsys %.dummy_set)
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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)
    %t5 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t6 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t7
    %t9 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t8, i32 0, i32 3
    %t10 = load %Frame_block_body*, %Frame_block_body** %t9
    call void @P_block_body_loadaddress(%Frame_block_body* %t10)
    %t11 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 1
    store i8* null, i8** %t11
    %t12 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 4
    store i32 0, i32* %t12
    %t13 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 0
    store i32 0, i32* %t13
    %t14 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t15 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t16
    %t18 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t17, i32 0, i32 3
    %t19 = load %Frame_block_body*, %Frame_block_body** %t18
    %t21 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_block_body_gen2(%Frame_block_body* %t19, i32 51, i32 1, i32 %t20)
    %t22 = getelementptr inbounds %Frame_block_body_statement_call_new, %Frame_block_body_statement_call_new* %.frame, i32 0, i32 5
    %t23 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t24
    %t26 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t25, i32 0, i32 3
    %t27 = load %Frame_block_body*, %Frame_block_body** %t26
    call void @P_block_body_gen1(%Frame_block_body* %t27, i32 30, i32 12)
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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_mark, %Frame_block_body_statement_call_mark* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_release, %Frame_block_body_statement_call_release* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    call void @P_block_body_statement_call_variable(%Frame_block_body_statement_call* %t3, %T_setofsys %.dummy_set)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_trunc, %Frame_block_body_statement_call_trunc* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t3, i32 0, i32 3
    %t5 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t5, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_gen0(%Frame_block_body* %t7, i32 27)
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** @intptr
    store i8* %t10, i8** %t8

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_odd, %Frame_block_body_statement_call_odd* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t3, i32 0, i32 3
    %t5 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t5, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_gen0(%Frame_block_body* %t7, i32 20)
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** @boolptr
    store i8* %t10, i8** %t8

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_ord, %Frame_block_body_statement_call_ord* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t3, i32 0, i32 3
    %t5 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t5, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** %t8
    call void @P_block_body_gen0t(%Frame_block_body* %t7, i32 58, i8* %t10)
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** @intptr
    store i8* %t13, i8** %t11

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_chr, %Frame_block_body_statement_call_chr* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t3, i32 0, i32 3
    %t5 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t5, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_gen0(%Frame_block_body* %t7, i32 59)
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** @charptr
    store i8* %t10, i8** %t8

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_eof, %Frame_block_body_statement_call_eof* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t3, i32 0, i32 3
    %t5 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t5, i32 0, i32 3
    %t7 = load %Frame_block_body*, %Frame_block_body** %t6
    call void @P_block_body_loadaddress(%Frame_block_body* %t7)
    %t9 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8**
    %t10 = load i8*, i8** @boolptr
    store i8* %t10, i8** %t8

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
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
    %t22 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t21 = bitcast i8* %t22 to i8**
    %t25 = getelementptr inbounds %Frame_block_body_statement_call_callnonstandard, %Frame_block_body_statement_call_callnonstandard* %.frame, i32 0, i32 7
    %t26 = load %Frame_block_body_statement_call*, %Frame_block_body_statement_call** %t25
    %t24 = getelementptr inbounds %Frame_block_body_statement_call, %Frame_block_body_statement_call* %t26, i32 0, i32 0
    %t23 = load i8*, i8** %t24
    %t27 = bitcast i8* %t23 to %T_identifier*
    %t29 = getelementptr inbounds %T_identifier, %T_identifier* %t27, i32 0, i32 24
    %t28 = bitcast i8* %t29 to i8**
    %t30 = load i8*, i8** %t28
    store i8* %t30, i8** %t21

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
    call void @P_block_body_statement_expression_simpleexpression(%Frame_block_body_statement_expression* %.frame, %T_setofsys %.dummy_set)

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
    %t3 = getelementptr inbounds %Frame_block_body_statement_expression_simpleexpression, %Frame_block_body_statement_expression_simpleexpression* %.frame, i32 0, i32 3
    store i1 0, i1* %t3
    call void @P_block_body_statement_expression_simpleexpression_term(%Frame_block_body_statement_expression_simpleexpression* %.frame, %T_setofsys %.dummy_set)

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
    call void @P_block_body_statement_expression_simpleexpression_term_factor(%Frame_block_body_statement_expression_simpleexpression_term* %.frame, %T_setofsys %.dummy_set)

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
    %t3 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t7 = getelementptr inbounds %Frame_block_body_statement_assignment, %Frame_block_body_statement_assignment* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    call void @P_block_body_statement_selector(%Frame_block_body_statement* %t4, %T_setofsys %.dummy_set, i8* %t6)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t3, %T_setofsys %.dummy_set)
    %t5 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t5)
    %t6 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t7 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t6
    %t8 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t7, i32 0, i32 3
    %t9 = load %Frame_block_body*, %Frame_block_body** %t8
    %t11 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    call void @P_block_body_genfjp(%Frame_block_body* %t9, i32 %t10)
    %t12 = getelementptr inbounds %Frame_block_body_statement_ifstatement, %Frame_block_body_statement_ifstatement* %.frame, i32 0, i32 2
    %t13 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t12
    %t14 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t13, i32 0, i32 3
    %t15 = load %Frame_block_body*, %Frame_block_body** %t14
    call void @P_block_body_statement(%Frame_block_body* %t15, %T_setofsys %.dummy_set)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t3 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t2
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t3, %T_setofsys %.dummy_set)
    %t5 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t6 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    call void @P_block_body_load(%Frame_block_body* %t8)
    %t9 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t9)
    %t10 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 9
    %t12 = getelementptr inbounds %T_attr, %T_attr* @gattr, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i8**
    %t13 = load i8*, i8** %t11
    store i8* %t13, i8** %t10
    %t14 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t15 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t14
    %t16 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t15, i32 0, i32 3
    %t17 = load %Frame_block_body*, %Frame_block_body** %t16
    %t19 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    call void @P_block_body_genujpxjp(%Frame_block_body* %t17, i32 57, i32 %t18)
    %t20 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 0
    store i8* null, i8** %t20
    %t21 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t21)
    %t22 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 12
    %t23 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t22
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t23, i32 0, i32 3
    %t25 = load %Frame_block_body*, %Frame_block_body** %t24
    %t27 = getelementptr inbounds %Frame_block_body_statement_casestatement, %Frame_block_body_statement_casestatement* %.frame, i32 0, i32 2
    %t26 = load i32, i32* %t27
    call void @P_block_body_putlabel(%Frame_block_body* %t25, i32 %t26)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t2)
    %t3 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 1
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_repeatstatement, %Frame_block_body_statement_repeatstatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_putlabel(%Frame_block_body* %t6, i32 %t7)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    call void @P_genlabel(i32* %t2)
    %t3 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t4 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t4, i32 0, i32 3
    %t6 = load %Frame_block_body*, %Frame_block_body** %t5
    %t8 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    call void @P_block_body_putlabel(%Frame_block_body* %t6, i32 %t7)
    %t9 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t10 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t9
    call void @P_block_body_statement_expression(%Frame_block_body_statement* %t10, %T_setofsys %.dummy_set)
    %t12 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    call void @P_genlabel(i32* %t12)
    %t13 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t14 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t13
    %t15 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t14, i32 0, i32 3
    %t16 = load %Frame_block_body*, %Frame_block_body** %t15
    %t18 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    call void @P_block_body_genfjp(%Frame_block_body* %t16, i32 %t17)
    %t19 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t20 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t19
    %t21 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t20, i32 0, i32 3
    %t22 = load %Frame_block_body*, %Frame_block_body** %t21
    %t25 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t26 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t25
    %t24 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t26, i32 0, i32 0
    %t23 = load %T_setofsys, %T_setofsys* %t24
    call void @P_block_body_statement(%Frame_block_body* %t22, %T_setofsys %t23)
    %t27 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body*, %Frame_block_body** %t29
    %t32 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 0
    %t31 = load i32, i32* %t32
    call void @P_block_body_genujpxjp(%Frame_block_body* %t30, i32 57, i32 %t31)
    %t33 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 2
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t35 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t34, i32 0, i32 3
    %t36 = load %Frame_block_body*, %Frame_block_body** %t35
    %t38 = getelementptr inbounds %Frame_block_body_statement_whilestatement, %Frame_block_body_statement_whilestatement* %.frame, i32 0, i32 1
    %t37 = load i32, i32* %t38
    call void @P_block_body_putlabel(%Frame_block_body* %t36, i32 %t37)

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
    %t2 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 3
    %t3 = load i32, i32* @lc
    store i32 %t3, i32* %t2
    %t4 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_attr, %T_attr* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i8**
    store i8* null, i8** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %T_attr, %T_attr* %t7, i32 0, i32 8
    %t8 = bitcast i8* %t9 to i32*
    store i32 1, i32* %t8
    %t10 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_attr, %T_attr* %t10, i32 0, i32 12
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    %t13 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t15 = getelementptr inbounds %T_attr, %T_attr* %t13, i32 0, i32 16
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* @level
    store i32 %t16, i32* %t14
    %t17 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t19 = getelementptr inbounds %T_attr, %T_attr* %t17, i32 0, i32 20
    %t18 = bitcast i8* %t19 to i32*
    store i32 0, i32* %t18
    %t20 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    call void @P_genlabel(i32* %t20)
    %t21 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t22 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t21
    %t23 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t22, i32 0, i32 3
    %t24 = load %Frame_block_body*, %Frame_block_body** %t23
    %t26 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t25 = load i32, i32* %t26
    call void @P_block_body_genujpxjp(%Frame_block_body* %t24, i32 33, i32 %t25)
    %t27 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t28 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t27
    %t29 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t28, i32 0, i32 3
    %t30 = load %Frame_block_body*, %Frame_block_body** %t29
    %t33 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t34 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t33
    %t32 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t34, i32 0, i32 0
    %t31 = load %T_setofsys, %T_setofsys* %t32
    call void @P_block_body_statement(%Frame_block_body* %t30, %T_setofsys %t31)
    %t36 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    %t35 = load %T_attr, %T_attr* %t36
    store %T_attr %t35, %T_attr* @gattr
    %t37 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t38 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t37
    %t39 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t38, i32 0, i32 3
    %t40 = load %Frame_block_body*, %Frame_block_body** %t39
    call void @P_block_body_load(%Frame_block_body* %t40)
    %t41 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t42 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t41
    %t43 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t42, i32 0, i32 3
    %t44 = load %Frame_block_body*, %Frame_block_body** %t43
    %t45 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 1
    call void @P_block_body_store(%Frame_block_body* %t44, %T_attr* %t45)
    %t46 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t47 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t46
    %t48 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t47, i32 0, i32 3
    %t49 = load %Frame_block_body*, %Frame_block_body** %t48
    %t51 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 0
    %t50 = load i32, i32* %t51
    call void @P_block_body_genujpxjp(%Frame_block_body* %t49, i32 57, i32 %t50)
    %t52 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 5
    %t53 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t52
    %t54 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t53, i32 0, i32 3
    %t55 = load %Frame_block_body*, %Frame_block_body** %t54
    %t57 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 2
    %t56 = load i32, i32* %t57
    call void @P_block_body_putlabel(%Frame_block_body* %t55, i32 %t56)
    %t59 = getelementptr inbounds %Frame_block_body_statement_forstatement, %Frame_block_body_statement_forstatement* %.frame, i32 0, i32 3
    %t58 = load i32, i32* %t59
    store i32 %t58, i32* @lc
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
    %t2 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 0
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 2
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    %t5 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 3
    %t6 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t5
    %t7 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t6, i32 0, i32 3
    %t8 = load %Frame_block_body*, %Frame_block_body** %t7
    %t11 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 3
    %t12 = load %Frame_block_body_statement*, %Frame_block_body_statement** %t11
    %t10 = getelementptr inbounds %Frame_block_body_statement, %Frame_block_body_statement* %t12, i32 0, i32 0
    %t9 = load %T_setofsys, %T_setofsys* %t10
    call void @P_block_body_statement(%Frame_block_body* %t8, %T_setofsys %t9)
    %t14 = load i32, i32* @top
    %t16 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    %t13 = sub i32 %t14, %t15
    store i32 %t13, i32* @top
    %t18 = getelementptr inbounds %Frame_block_body_statement_withstatement, %Frame_block_body_statement_withstatement* %.frame, i32 0, i32 2
    %t17 = load i32, i32* %t18
    store i32 %t17, i32* @lc
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
    %t1 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 1
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %T_alpha* %t1
    %t2 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 2
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %T_alpha* %t2
    %t3 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 3
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %T_alpha* %t3
    %t4 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 4
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %T_alpha* %t4
    %t5 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 5
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %T_alpha* %t5
    %t6 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 6
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %T_alpha* %t6
    %t7 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 7
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %T_alpha* %t7
    %t8 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 8
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %T_alpha* %t8
    %t9 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 9
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %T_alpha* %t9
    %t10 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 10
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %T_alpha* %t10
    %t11 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 11
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %T_alpha* %t11
    %t12 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 12
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %T_alpha* %t12
    %t13 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 13
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %T_alpha* %t13
    %t14 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 14
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %T_alpha* %t14
    %t15 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 15
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %T_alpha* %t15
    %t16 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 16
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %T_alpha* %t16
    %t17 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 17
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %T_alpha* %t17
    %t18 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 18
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %T_alpha* %t18
    %t19 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 19
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %T_alpha* %t19
    %t20 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 20
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %T_alpha* %t20
    %t21 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 21
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %T_alpha* %t21
    %t22 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 22
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %T_alpha* %t22
    %t23 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 23
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), %T_alpha* %t23
    %t24 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 24
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %T_alpha* %t24
    %t25 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 25
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), %T_alpha* %t25
    %t26 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 26
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %T_alpha* %t26
    %t27 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 27
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %T_alpha* %t27
    %t28 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 28
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %T_alpha* %t28
    %t29 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 29
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %T_alpha* %t29
    %t30 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 30
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), %T_alpha* %t30
    %t31 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 31
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), %T_alpha* %t31
    %t32 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 32
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %T_alpha* %t32
    %t33 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 33
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), %T_alpha* %t33
    %t34 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 34
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %T_alpha* %t34
    %t35 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 35
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %T_alpha* %t35
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
    %t1 = load i8*, i8** @intptr
    %t2 = bitcast i8* %t1 to %T_structure*
    %t4 = getelementptr inbounds %T_structure, %T_structure* %t2, i32 0, i32 4
    %t3 = bitcast i8* %t4 to i32*
    store i32 1, i32* %t3
    %t5 = load i8*, i8** @intptr
    %t6 = bitcast i8* %t5 to %T_structure*
    %t8 = getelementptr inbounds %T_structure, %T_structure* %t6, i32 0, i32 8
    %t7 = bitcast i8* %t8 to i32*
    store i32 0, i32* %t7
    %t9 = load i8*, i8** @intptr
    %t10 = bitcast i8* %t9 to %T_structure*
    %t12 = getelementptr inbounds %T_structure, %T_structure* %t10, i32 0, i32 12
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    %t13 = load i8*, i8** @realptr
    %t14 = bitcast i8* %t13 to %T_structure*
    %t16 = getelementptr inbounds %T_structure, %T_structure* %t14, i32 0, i32 4
    %t15 = bitcast i8* %t16 to i32*
    store i32 1, i32* %t15
    %t17 = load i8*, i8** @realptr
    %t18 = bitcast i8* %t17 to %T_structure*
    %t20 = getelementptr inbounds %T_structure, %T_structure* %t18, i32 0, i32 8
    %t19 = bitcast i8* %t20 to i32*
    store i32 0, i32* %t19
    %t21 = load i8*, i8** @realptr
    %t22 = bitcast i8* %t21 to %T_structure*
    %t24 = getelementptr inbounds %T_structure, %T_structure* %t22, i32 0, i32 12
    %t23 = bitcast i8* %t24 to i32*
    store i32 0, i32* %t23
    %t25 = load i8*, i8** @charptr
    %t26 = bitcast i8* %t25 to %T_structure*
    %t28 = getelementptr inbounds %T_structure, %T_structure* %t26, i32 0, i32 4
    %t27 = bitcast i8* %t28 to i32*
    store i32 1, i32* %t27
    %t29 = load i8*, i8** @charptr
    %t30 = bitcast i8* %t29 to %T_structure*
    %t32 = getelementptr inbounds %T_structure, %T_structure* %t30, i32 0, i32 8
    %t31 = bitcast i8* %t32 to i32*
    store i32 0, i32* %t31
    %t33 = load i8*, i8** @charptr
    %t34 = bitcast i8* %t33 to %T_structure*
    %t36 = getelementptr inbounds %T_structure, %T_structure* %t34, i32 0, i32 12
    %t35 = bitcast i8* %t36 to i32*
    store i32 0, i32* %t35
    %t37 = load i8*, i8** @boolptr
    %t38 = bitcast i8* %t37 to %T_structure*
    %t40 = getelementptr inbounds %T_structure, %T_structure* %t38, i32 0, i32 4
    %t39 = bitcast i8* %t40 to i32*
    store i32 1, i32* %t39
    %t41 = load i8*, i8** @boolptr
    %t42 = bitcast i8* %t41 to %T_structure*
    %t44 = getelementptr inbounds %T_structure, %T_structure* %t42, i32 0, i32 8
    %t43 = bitcast i8* %t44 to i32*
    store i32 0, i32* %t43
    %t45 = load i8*, i8** @boolptr
    %t46 = bitcast i8* %t45 to %T_structure*
    %t48 = getelementptr inbounds %T_structure, %T_structure* %t46, i32 0, i32 12
    %t47 = bitcast i8* %t48 to i32*
    store i32 1, i32* %t47
    %t49 = load i8*, i8** @nilptr
    %t50 = bitcast i8* %t49 to %T_structure*
    %t52 = getelementptr inbounds %T_structure, %T_structure* %t50, i32 0, i32 16
    %t51 = bitcast i8* %t52 to i8**
    store i8* null, i8** %t51
    %t53 = load i8*, i8** @nilptr
    %t54 = bitcast i8* %t53 to %T_structure*
    %t56 = getelementptr inbounds %T_structure, %T_structure* %t54, i32 0, i32 4
    %t55 = bitcast i8* %t56 to i32*
    store i32 1, i32* %t55
    %t57 = load i8*, i8** @nilptr
    %t58 = bitcast i8* %t57 to %T_structure*
    %t60 = getelementptr inbounds %T_structure, %T_structure* %t58, i32 0, i32 8
    %t59 = bitcast i8* %t60 to i32*
    store i32 2, i32* %t59
    %t61 = load i8*, i8** @parmptr
    %t62 = bitcast i8* %t61 to %T_structure*
    %t64 = getelementptr inbounds %T_structure, %T_structure* %t62, i32 0, i32 4
    %t63 = bitcast i8* %t64 to i32*
    store i32 1, i32* %t63
    %t65 = load i8*, i8** @parmptr
    %t66 = bitcast i8* %t65 to %T_structure*
    %t68 = getelementptr inbounds %T_structure, %T_structure* %t66, i32 0, i32 8
    %t67 = bitcast i8* %t68 to i32*
    store i32 0, i32* %t67
    %t69 = load i8*, i8** @parmptr
    %t70 = bitcast i8* %t69 to %T_structure*
    %t72 = getelementptr inbounds %T_structure, %T_structure* %t70, i32 0, i32 12
    %t71 = bitcast i8* %t72 to i32*
    store i32 0, i32* %t71
    %t73 = load i8*, i8** @textptr
    %t74 = bitcast i8* %t73 to %T_structure*
    %t76 = getelementptr inbounds %T_structure, %T_structure* %t74, i32 0, i32 16
    %t75 = bitcast i8* %t76 to i8**
    %t77 = load i8*, i8** @charptr
    store i8* %t77, i8** %t75
    %t78 = load i8*, i8** @textptr
    %t79 = bitcast i8* %t78 to %T_structure*
    %t81 = getelementptr inbounds %T_structure, %T_structure* %t79, i32 0, i32 4
    %t80 = bitcast i8* %t81 to i32*
    store i32 1, i32* %t80
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
    %t2 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t1 = load i8*, i8** %t2
    %t3 = bitcast i8* %t1 to %T_identifier*
    %t5 = getelementptr inbounds %T_identifier, %T_identifier* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), %T_alpha* %t4
    %t7 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t6 = load i8*, i8** %t7
    %t8 = bitcast i8* %t6 to %T_identifier*
    %t10 = getelementptr inbounds %T_identifier, %T_identifier* %t8, i32 0, i32 24
    %t9 = bitcast i8* %t10 to i8**
    %t11 = load i8*, i8** @intptr
    store i8* %t11, i8** %t9
    %t13 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t12 = load i8*, i8** %t13
    %t14 = bitcast i8* %t12 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 40
    %t15 = bitcast i8* %t16 to i32*
    store i32 0, i32* %t15
    %t18 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t17 = load i8*, i8** %t18
    call void @P_enterid(i8* %t17)
    %t20 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t19 = load i8*, i8** %t20
    %t21 = bitcast i8* %t19 to %T_identifier*
    %t23 = getelementptr inbounds %T_identifier, %T_identifier* %t21, i32 0, i32 0
    %t22 = bitcast i8* %t23 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), %T_alpha* %t22
    %t25 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t24 = load i8*, i8** %t25
    %t26 = bitcast i8* %t24 to %T_identifier*
    %t28 = getelementptr inbounds %T_identifier, %T_identifier* %t26, i32 0, i32 24
    %t27 = bitcast i8* %t28 to i8**
    %t29 = load i8*, i8** @realptr
    store i8* %t29, i8** %t27
    %t31 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t30 = load i8*, i8** %t31
    %t32 = bitcast i8* %t30 to %T_identifier*
    %t34 = getelementptr inbounds %T_identifier, %T_identifier* %t32, i32 0, i32 40
    %t33 = bitcast i8* %t34 to i32*
    store i32 0, i32* %t33
    %t36 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t35 = load i8*, i8** %t36
    call void @P_enterid(i8* %t35)
    %t38 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t37 = load i8*, i8** %t38
    %t39 = bitcast i8* %t37 to %T_identifier*
    %t41 = getelementptr inbounds %T_identifier, %T_identifier* %t39, i32 0, i32 0
    %t40 = bitcast i8* %t41 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), %T_alpha* %t40
    %t43 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t42 = load i8*, i8** %t43
    %t44 = bitcast i8* %t42 to %T_identifier*
    %t46 = getelementptr inbounds %T_identifier, %T_identifier* %t44, i32 0, i32 24
    %t45 = bitcast i8* %t46 to i8**
    %t47 = load i8*, i8** @charptr
    store i8* %t47, i8** %t45
    %t49 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t48 = load i8*, i8** %t49
    %t50 = bitcast i8* %t48 to %T_identifier*
    %t52 = getelementptr inbounds %T_identifier, %T_identifier* %t50, i32 0, i32 40
    %t51 = bitcast i8* %t52 to i32*
    store i32 0, i32* %t51
    %t54 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t53 = load i8*, i8** %t54
    call void @P_enterid(i8* %t53)
    %t56 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t55 = load i8*, i8** %t56
    %t57 = bitcast i8* %t55 to %T_identifier*
    %t59 = getelementptr inbounds %T_identifier, %T_identifier* %t57, i32 0, i32 0
    %t58 = bitcast i8* %t59 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %T_alpha* %t58
    %t61 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t60 = load i8*, i8** %t61
    %t62 = bitcast i8* %t60 to %T_identifier*
    %t64 = getelementptr inbounds %T_identifier, %T_identifier* %t62, i32 0, i32 24
    %t63 = bitcast i8* %t64 to i8**
    %t65 = load i8*, i8** @boolptr
    store i8* %t65, i8** %t63
    %t67 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t66 = load i8*, i8** %t67
    %t68 = bitcast i8* %t66 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 40
    %t69 = bitcast i8* %t70 to i32*
    store i32 0, i32* %t69
    %t72 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t71 = load i8*, i8** %t72
    call void @P_enterid(i8* %t71)
    %t73 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 1
    store i8* null, i8** %t73
    %t74 = load i8*, i8** @boolptr
    %t75 = bitcast i8* %t74 to %T_structure*
    %t77 = getelementptr inbounds %T_structure, %T_structure* %t75, i32 0, i32 16
    %t76 = bitcast i8* %t77 to i8**
    %t79 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t78 = load i8*, i8** %t79
    store i8* %t78, i8** %t76
    %t81 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t80 = load i8*, i8** %t81
    %t82 = bitcast i8* %t80 to %T_identifier*
    %t84 = getelementptr inbounds %T_identifier, %T_identifier* %t82, i32 0, i32 0
    %t83 = bitcast i8* %t84 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), %T_alpha* %t83
    %t86 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t85 = load i8*, i8** %t86
    %t87 = bitcast i8* %t85 to %T_identifier*
    %t89 = getelementptr inbounds %T_identifier, %T_identifier* %t87, i32 0, i32 24
    %t88 = bitcast i8* %t89 to i8**
    %t90 = load i8*, i8** @nilptr
    store i8* %t90, i8** %t88
    %t92 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t91 = load i8*, i8** %t92
    %t93 = bitcast i8* %t91 to %T_identifier*
    %t95 = getelementptr inbounds %T_identifier, %T_identifier* %t93, i32 0, i32 32
    %t94 = bitcast i8* %t95 to i8**
    store i8* null, i8** %t94
    %t97 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t96 = load i8*, i8** %t97
    %t98 = bitcast i8* %t96 to %T_identifier*
    %t100 = getelementptr inbounds %T_identifier, %T_identifier* %t98, i32 0, i32 48
    %t99 = bitcast i8* %t100 to %T_valu*
    %t102 = getelementptr inbounds %T_valu, %T_valu* %t99, i32 0, i32 4
    %t101 = bitcast i8* %t102 to i32*
    store i32 0, i32* %t101
    %t104 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t103 = load i8*, i8** %t104
    %t105 = bitcast i8* %t103 to %T_identifier*
    %t107 = getelementptr inbounds %T_identifier, %T_identifier* %t105, i32 0, i32 40
    %t106 = bitcast i8* %t107 to i32*
    store i32 1, i32* %t106
    %t109 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t108 = load i8*, i8** %t109
    call void @P_enterid(i8* %t108)
    %t111 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t110 = load i8*, i8** %t111
    %t112 = bitcast i8* %t110 to %T_identifier*
    %t114 = getelementptr inbounds %T_identifier, %T_identifier* %t112, i32 0, i32 0
    %t113 = bitcast i8* %t114 to %T_alpha*
    %t115 = getelementptr inbounds %T_array_20, %T_array_20* @na, i32 0, i32 35
    %t116 = load %T_alpha, %T_alpha* %t115
    store %T_alpha %t116, %T_alpha* %t113
    %t118 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t117 = load i8*, i8** %t118
    %t119 = bitcast i8* %t117 to %T_identifier*
    %t121 = getelementptr inbounds %T_identifier, %T_identifier* %t119, i32 0, i32 24
    %t120 = bitcast i8* %t121 to i8**
    store i8* null, i8** %t120
    %t123 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t122 = load i8*, i8** %t123
    %t124 = bitcast i8* %t122 to %T_identifier*
    %t126 = getelementptr inbounds %T_identifier, %T_identifier* %t124, i32 0, i32 32
    %t125 = bitcast i8* %t126 to i8**
    store i8* null, i8** %t125
    %t128 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t127 = load i8*, i8** %t128
    %t129 = bitcast i8* %t127 to %T_identifier*
    %t131 = getelementptr inbounds %T_identifier, %T_identifier* %t129, i32 0, i32 48
    %t130 = bitcast i8* %t131 to i32*
    store i32 13, i32* %t130
    %t133 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t132 = load i8*, i8** %t133
    %t134 = bitcast i8* %t132 to %T_identifier*
    %t136 = getelementptr inbounds %T_identifier, %T_identifier* %t134, i32 0, i32 40
    %t135 = bitcast i8* %t136 to i32*
    store i32 4, i32* %t135
    %t138 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t137 = load i8*, i8** %t138
    %t139 = bitcast i8* %t137 to %T_identifier*
    %t141 = getelementptr inbounds %T_identifier, %T_identifier* %t139, i32 0, i32 44
    %t140 = bitcast i8* %t141 to i32*
    store i32 0, i32* %t140
    %t143 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t142 = load i8*, i8** %t143
    call void @P_enterid(i8* %t142)
    %t145 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t144 = load i8*, i8** %t145
    %t146 = bitcast i8* %t144 to %T_identifier*
    %t148 = getelementptr inbounds %T_identifier, %T_identifier* %t146, i32 0, i32 0
    %t147 = bitcast i8* %t148 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t147
    %t150 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t149 = load i8*, i8** %t150
    %t151 = bitcast i8* %t149 to %T_identifier*
    %t153 = getelementptr inbounds %T_identifier, %T_identifier* %t151, i32 0, i32 24
    %t152 = bitcast i8* %t153 to i8**
    %t154 = load i8*, i8** @realptr
    store i8* %t154, i8** %t152
    %t156 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t155 = load i8*, i8** %t156
    %t157 = bitcast i8* %t155 to %T_identifier*
    %t159 = getelementptr inbounds %T_identifier, %T_identifier* %t157, i32 0, i32 40
    %t158 = bitcast i8* %t159 to i32*
    store i32 2, i32* %t158
    %t161 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t160 = load i8*, i8** %t161
    %t162 = bitcast i8* %t160 to %T_identifier*
    %t164 = getelementptr inbounds %T_identifier, %T_identifier* %t162, i32 0, i32 44
    %t163 = bitcast i8* %t164 to i32*
    store i32 0, i32* %t163
    %t166 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t165 = load i8*, i8** %t166
    %t167 = bitcast i8* %t165 to %T_identifier*
    %t169 = getelementptr inbounds %T_identifier, %T_identifier* %t167, i32 0, i32 32
    %t168 = bitcast i8* %t169 to i8**
    store i8* null, i8** %t168
    %t171 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t170 = load i8*, i8** %t171
    %t172 = bitcast i8* %t170 to %T_identifier*
    %t174 = getelementptr inbounds %T_identifier, %T_identifier* %t172, i32 0, i32 48
    %t173 = bitcast i8* %t174 to i32*
    store i32 1, i32* %t173
    %t176 = getelementptr inbounds %Frame_entstdnames, %Frame_entstdnames* %.frame, i32 0, i32 0
    %t175 = load i8*, i8** %t176
    %t177 = bitcast i8* %t175 to %T_identifier*
    %t179 = getelementptr inbounds %T_identifier, %T_identifier* %t177, i32 0, i32 52
    %t178 = bitcast i8* %t179 to i32*
    store i32 0, i32* %t178

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
    %t1 = load i8*, i8** @utypptr
    %t2 = bitcast i8* %t1 to %T_identifier*
    %t4 = getelementptr inbounds %T_identifier, %T_identifier* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t3
    %t5 = load i8*, i8** @utypptr
    %t6 = bitcast i8* %t5 to %T_identifier*
    %t8 = getelementptr inbounds %T_identifier, %T_identifier* %t6, i32 0, i32 24
    %t7 = bitcast i8* %t8 to i8**
    store i8* null, i8** %t7
    %t9 = load i8*, i8** @utypptr
    %t10 = bitcast i8* %t9 to %T_identifier*
    %t12 = getelementptr inbounds %T_identifier, %T_identifier* %t10, i32 0, i32 40
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    %t13 = load i8*, i8** @ucstptr
    %t14 = bitcast i8* %t13 to %T_identifier*
    %t16 = getelementptr inbounds %T_identifier, %T_identifier* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t15
    %t17 = load i8*, i8** @ucstptr
    %t18 = bitcast i8* %t17 to %T_identifier*
    %t20 = getelementptr inbounds %T_identifier, %T_identifier* %t18, i32 0, i32 24
    %t19 = bitcast i8* %t20 to i8**
    store i8* null, i8** %t19
    %t21 = load i8*, i8** @ucstptr
    %t22 = bitcast i8* %t21 to %T_identifier*
    %t24 = getelementptr inbounds %T_identifier, %T_identifier* %t22, i32 0, i32 32
    %t23 = bitcast i8* %t24 to i8**
    store i8* null, i8** %t23
    %t25 = load i8*, i8** @ucstptr
    %t26 = bitcast i8* %t25 to %T_identifier*
    %t28 = getelementptr inbounds %T_identifier, %T_identifier* %t26, i32 0, i32 48
    %t27 = bitcast i8* %t28 to %T_valu*
    %t30 = getelementptr inbounds %T_valu, %T_valu* %t27, i32 0, i32 4
    %t29 = bitcast i8* %t30 to i32*
    store i32 0, i32* %t29
    %t31 = load i8*, i8** @ucstptr
    %t32 = bitcast i8* %t31 to %T_identifier*
    %t34 = getelementptr inbounds %T_identifier, %T_identifier* %t32, i32 0, i32 40
    %t33 = bitcast i8* %t34 to i32*
    store i32 1, i32* %t33
    %t35 = load i8*, i8** @uvarptr
    %t36 = bitcast i8* %t35 to %T_identifier*
    %t38 = getelementptr inbounds %T_identifier, %T_identifier* %t36, i32 0, i32 0
    %t37 = bitcast i8* %t38 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t37
    %t39 = load i8*, i8** @uvarptr
    %t40 = bitcast i8* %t39 to %T_identifier*
    %t42 = getelementptr inbounds %T_identifier, %T_identifier* %t40, i32 0, i32 24
    %t41 = bitcast i8* %t42 to i8**
    store i8* null, i8** %t41
    %t43 = load i8*, i8** @uvarptr
    %t44 = bitcast i8* %t43 to %T_identifier*
    %t46 = getelementptr inbounds %T_identifier, %T_identifier* %t44, i32 0, i32 44
    %t45 = bitcast i8* %t46 to i32*
    store i32 0, i32* %t45
    %t47 = load i8*, i8** @uvarptr
    %t48 = bitcast i8* %t47 to %T_identifier*
    %t50 = getelementptr inbounds %T_identifier, %T_identifier* %t48, i32 0, i32 32
    %t49 = bitcast i8* %t50 to i8**
    store i8* null, i8** %t49
    %t51 = load i8*, i8** @uvarptr
    %t52 = bitcast i8* %t51 to %T_identifier*
    %t54 = getelementptr inbounds %T_identifier, %T_identifier* %t52, i32 0, i32 48
    %t53 = bitcast i8* %t54 to i32*
    store i32 0, i32* %t53
    %t55 = load i8*, i8** @uvarptr
    %t56 = bitcast i8* %t55 to %T_identifier*
    %t58 = getelementptr inbounds %T_identifier, %T_identifier* %t56, i32 0, i32 52
    %t57 = bitcast i8* %t58 to i32*
    store i32 0, i32* %t57
    %t59 = load i8*, i8** @uvarptr
    %t60 = bitcast i8* %t59 to %T_identifier*
    %t62 = getelementptr inbounds %T_identifier, %T_identifier* %t60, i32 0, i32 40
    %t61 = bitcast i8* %t62 to i32*
    store i32 2, i32* %t61
    %t63 = load i8*, i8** @ufldptr
    %t64 = bitcast i8* %t63 to %T_identifier*
    %t66 = getelementptr inbounds %T_identifier, %T_identifier* %t64, i32 0, i32 0
    %t65 = bitcast i8* %t66 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t65
    %t67 = load i8*, i8** @ufldptr
    %t68 = bitcast i8* %t67 to %T_identifier*
    %t70 = getelementptr inbounds %T_identifier, %T_identifier* %t68, i32 0, i32 24
    %t69 = bitcast i8* %t70 to i8**
    store i8* null, i8** %t69
    %t71 = load i8*, i8** @ufldptr
    %t72 = bitcast i8* %t71 to %T_identifier*
    %t74 = getelementptr inbounds %T_identifier, %T_identifier* %t72, i32 0, i32 32
    %t73 = bitcast i8* %t74 to i8**
    store i8* null, i8** %t73
    %t75 = load i8*, i8** @ufldptr
    %t76 = bitcast i8* %t75 to %T_identifier*
    %t78 = getelementptr inbounds %T_identifier, %T_identifier* %t76, i32 0, i32 44
    %t77 = bitcast i8* %t78 to i32*
    store i32 0, i32* %t77
    %t79 = load i8*, i8** @ufldptr
    %t80 = bitcast i8* %t79 to %T_identifier*
    %t82 = getelementptr inbounds %T_identifier, %T_identifier* %t80, i32 0, i32 40
    %t81 = bitcast i8* %t82 to i32*
    store i32 3, i32* %t81
    %t83 = load i8*, i8** @uprcptr
    %t84 = bitcast i8* %t83 to %T_identifier*
    %t86 = getelementptr inbounds %T_identifier, %T_identifier* %t84, i32 0, i32 0
    %t85 = bitcast i8* %t86 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t85
    %t87 = load i8*, i8** @uprcptr
    %t88 = bitcast i8* %t87 to %T_identifier*
    %t90 = getelementptr inbounds %T_identifier, %T_identifier* %t88, i32 0, i32 24
    %t89 = bitcast i8* %t90 to i8**
    store i8* null, i8** %t89
    %t91 = load i8*, i8** @uprcptr
    %t92 = bitcast i8* %t91 to %T_identifier*
    %t94 = getelementptr inbounds %T_identifier, %T_identifier* %t92, i32 0, i32 60
    %t93 = bitcast i8* %t94 to i1*
    store i1 0, i1* %t93
    %t95 = load i8*, i8** @uprcptr
    %t96 = bitcast i8* %t95 to %T_identifier*
    %t98 = getelementptr inbounds %T_identifier, %T_identifier* %t96, i32 0, i32 32
    %t97 = bitcast i8* %t98 to i8**
    store i8* null, i8** %t97
    %t99 = load i8*, i8** @uprcptr
    %t100 = bitcast i8* %t99 to %T_identifier*
    %t102 = getelementptr inbounds %T_identifier, %T_identifier* %t100, i32 0, i32 61
    %t101 = bitcast i8* %t102 to i1*
    store i1 0, i1* %t101
    %t103 = load i8*, i8** @uprcptr
    %t104 = bitcast i8* %t103 to %T_identifier*
    %t106 = getelementptr inbounds %T_identifier, %T_identifier* %t104, i32 0, i32 48
    %t105 = bitcast i8* %t106 to i32*
    store i32 0, i32* %t105
    %t107 = load i8*, i8** @uprcptr
    %t108 = bitcast i8* %t107 to %T_identifier*
    %t110 = getelementptr inbounds %T_identifier, %T_identifier* %t108, i32 0, i32 52
    %t109 = bitcast i8* %t110 to i32*
    call void @P_genlabel(i32* %t109)
    %t111 = load i8*, i8** @uprcptr
    %t112 = bitcast i8* %t111 to %T_identifier*
    %t114 = getelementptr inbounds %T_identifier, %T_identifier* %t112, i32 0, i32 40
    %t113 = bitcast i8* %t114 to i32*
    store i32 4, i32* %t113
    %t115 = load i8*, i8** @uprcptr
    %t116 = bitcast i8* %t115 to %T_identifier*
    %t118 = getelementptr inbounds %T_identifier, %T_identifier* %t116, i32 0, i32 44
    %t117 = bitcast i8* %t118 to i32*
    store i32 1, i32* %t117
    %t119 = load i8*, i8** @uprcptr
    %t120 = bitcast i8* %t119 to %T_identifier*
    %t122 = getelementptr inbounds %T_identifier, %T_identifier* %t120, i32 0, i32 56
    %t121 = bitcast i8* %t122 to i32*
    store i32 0, i32* %t121
    %t123 = load i8*, i8** @ufctptr
    %t124 = bitcast i8* %t123 to %T_identifier*
    %t126 = getelementptr inbounds %T_identifier, %T_identifier* %t124, i32 0, i32 0
    %t125 = bitcast i8* %t126 to %T_alpha*
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %T_alpha* %t125
    %t127 = load i8*, i8** @ufctptr
    %t128 = bitcast i8* %t127 to %T_identifier*
    %t130 = getelementptr inbounds %T_identifier, %T_identifier* %t128, i32 0, i32 24
    %t129 = bitcast i8* %t130 to i8**
    store i8* null, i8** %t129
    %t131 = load i8*, i8** @ufctptr
    %t132 = bitcast i8* %t131 to %T_identifier*
    %t134 = getelementptr inbounds %T_identifier, %T_identifier* %t132, i32 0, i32 32
    %t133 = bitcast i8* %t134 to i8**
    store i8* null, i8** %t133
    %t135 = load i8*, i8** @ufctptr
    %t136 = bitcast i8* %t135 to %T_identifier*
    %t138 = getelementptr inbounds %T_identifier, %T_identifier* %t136, i32 0, i32 60
    %t137 = bitcast i8* %t138 to i1*
    store i1 0, i1* %t137
    %t139 = load i8*, i8** @ufctptr
    %t140 = bitcast i8* %t139 to %T_identifier*
    %t142 = getelementptr inbounds %T_identifier, %T_identifier* %t140, i32 0, i32 61
    %t141 = bitcast i8* %t142 to i1*
    store i1 0, i1* %t141
    %t143 = load i8*, i8** @ufctptr
    %t144 = bitcast i8* %t143 to %T_identifier*
    %t146 = getelementptr inbounds %T_identifier, %T_identifier* %t144, i32 0, i32 48
    %t145 = bitcast i8* %t146 to i32*
    store i32 0, i32* %t145
    %t147 = load i8*, i8** @ufctptr
    %t148 = bitcast i8* %t147 to %T_identifier*
    %t150 = getelementptr inbounds %T_identifier, %T_identifier* %t148, i32 0, i32 52
    %t149 = bitcast i8* %t150 to i32*
    call void @P_genlabel(i32* %t149)
    %t151 = load i8*, i8** @ufctptr
    %t152 = bitcast i8* %t151 to %T_identifier*
    %t154 = getelementptr inbounds %T_identifier, %T_identifier* %t152, i32 0, i32 40
    %t153 = bitcast i8* %t154 to i32*
    store i32 5, i32* %t153
    %t155 = load i8*, i8** @ufctptr
    %t156 = bitcast i8* %t155 to %T_identifier*
    %t158 = getelementptr inbounds %T_identifier, %T_identifier* %t156, i32 0, i32 44
    %t157 = bitcast i8* %t158 to i32*
    store i32 1, i32* %t157
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
    store i8* null, i8** @fwptr
    store i1 0, i1* @prtables
    store i1 1, i1* @list
    store i1 1, i1* @prcode
    store i1 1, i1* @debug
    store i1 1, i1* @dp
    store i1 1, i1* @prterr
    store i32 0, i32* @errinx
    store i32 0, i32* @intlabel
    store i32 8, i32* @kk
    store i8* null, i8** @fextfilep
    %t2 = mul i32 4, 1
    %t1 = add i32 5, %t2
    store i32 %t1, i32* @lc
    store i32 3, i32* @ic
    store i1 1, i1* @eol
    store i32 0, i32* @linecount
    store i8 32, i8* @ch
    store i32 0, i32* @chcnt
    store i8* null, i8** @globtestp
    %t3 = sdiv i32 2147483647, 10
    store i32 %t3, i32* @mxint10
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
    store %T_setofsys %.dummy_set, %T_setofsys* @constbegsys
    store %T_setofsys %.dummy_set, %T_setofsys* @simptypebegsys
    store %T_setofsys %.dummy_set, %T_setofsys* @typebegsys
    store %T_setofsys %.dummy_set, %T_setofsys* @typedels
    store %T_setofsys %.dummy_set, %T_setofsys* @blockbegsys
    store %T_setofsys %.dummy_set, %T_setofsys* @selectsys
    store %T_setofsys %.dummy_set, %T_setofsys* @facbegsys
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
    call void @P_inittables_reswords(%Frame_inittables* %.frame)
    call void @P_inittables_symbols(%Frame_inittables* %.frame)
    call void @P_inittables_rators(%Frame_inittables* %.frame)
    call void @P_inittables_instrmnemonics(%Frame_inittables* %.frame)
    call void @P_inittables_procmnemonics(%Frame_inittables* %.frame)
    call void @P_inittables_chartypes(%Frame_inittables* %.frame)
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
    %t2 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 1
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), %T_alpha* %t2
    %t3 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 2
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), %T_alpha* %t3
    %t4 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 3
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), %T_alpha* %t4
    %t5 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 4
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), %T_alpha* %t5
    %t6 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 5
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), %T_alpha* %t6
    %t7 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 6
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), %T_alpha* %t7
    %t8 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 7
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), %T_alpha* %t8
    %t9 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 8
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), %T_alpha* %t9
    %t10 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 9
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %T_alpha* %t10
    %t11 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 10
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), %T_alpha* %t11
    %t12 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 11
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), %T_alpha* %t12
    %t13 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 12
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), %T_alpha* %t13
    %t14 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 13
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), %T_alpha* %t14
    %t15 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 14
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), %T_alpha* %t15
    %t16 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 15
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), %T_alpha* %t16
    %t17 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 16
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), %T_alpha* %t17
    %t18 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 17
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), %T_alpha* %t18
    %t19 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 18
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), %T_alpha* %t19
    %t20 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 19
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), %T_alpha* %t20
    %t21 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 20
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), %T_alpha* %t21
    %t22 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 21
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %T_alpha* %t22
    %t23 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 22
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), %T_alpha* %t23
    %t24 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 23
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), %T_alpha* %t24
    %t25 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 24
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), %T_alpha* %t25
    %t26 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 25
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), %T_alpha* %t26
    %t27 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 26
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), %T_alpha* %t27
    %t28 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 27
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), %T_alpha* %t28
    %t29 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 28
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), %T_alpha* %t29
    %t30 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 29
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), %T_alpha* %t30
    %t31 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 30
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), %T_alpha* %t31
    %t32 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 31
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), %T_alpha* %t32
    %t33 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 32
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), %T_alpha* %t33
    %t34 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 33
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), %T_alpha* %t34
    %t35 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 34
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), %T_alpha* %t35
    %t36 = getelementptr inbounds %T_array_26, %T_array_26* @rw, i32 0, i32 35
    store %T_alpha getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), %T_alpha* %t36
    %t37 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 1
    store i32 1, i32* %t37
    %t38 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 2
    store i32 1, i32* %t38
    %t39 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 3
    store i32 7, i32* %t39
    %t40 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 4
    store i32 15, i32* %t40
    %t41 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 5
    store i32 22, i32* %t41
    %t42 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 6
    store i32 28, i32* %t42
    %t43 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 7
    store i32 32, i32* %t43
    %t44 = getelementptr inbounds %T_array_15, %T_array_15* @frw, i32 0, i32 8
    store i32 34, i32* %t44
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
    %t2 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 1
    store i32 32, i32* %t2
    %t3 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 2
    store i32 43, i32* %t3
    %t4 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 3
    store i32 42, i32* %t4
    %t5 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 4
    store i32 44, i32* %t5
    %t6 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 5
    store i32 7, i32* %t6
    %t7 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 6
    store i32 6, i32* %t7
    %t8 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 7
    store i32 39, i32* %t8
    %t9 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 8
    store i32 36, i32* %t9
    %t10 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 9
    store i32 21, i32* %t10
    %t11 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 10
    store i32 5, i32* %t11
    %t12 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 11
    store i32 5, i32* %t12
    %t13 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 12
    store i32 25, i32* %t13
    %t14 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 13
    store i32 5, i32* %t14
    %t15 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 14
    store i32 4, i32* %t15
    %t16 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 15
    store i32 46, i32* %t16
    %t17 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 16
    store i32 40, i32* %t17
    %t18 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 17
    store i32 37, i32* %t18
    %t19 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 18
    store i32 38, i32* %t19
    %t20 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 19
    store i32 33, i32* %t20
    %t21 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 20
    store i32 20, i32* %t21
    %t22 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 21
    store i32 29, i32* %t22
    %t23 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 22
    store i32 31, i32* %t23
    %t24 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 23
    store i32 41, i32* %t24
    %t25 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 24
    store i32 35, i32* %t25
    %t26 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 25
    store i32 27, i32* %t26
    %t27 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 26
    store i32 19, i32* %t27
    %t28 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 27
    store i32 18, i32* %t28
    %t29 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 28
    store i32 34, i32* %t29
    %t30 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 29
    store i32 28, i32* %t30
    %t31 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 30
    store i32 45, i32* %t31
    %t32 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 31
    store i32 26, i32* %t32
    %t33 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 32
    store i32 30, i32* %t33
    %t34 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 33
    store i32 23, i32* %t34
    %t35 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 34
    store i32 22, i32* %t35
    %t36 = getelementptr inbounds %T_array_25, %T_array_25* @rsy, i32 0, i32 35
    store i32 24, i32* %t36
    %t37 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 43
    store i32 6, i32* %t37
    %t38 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 45
    store i32 6, i32* %t38
    %t39 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 42
    store i32 5, i32* %t39
    %t40 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 47
    store i32 5, i32* %t40
    %t41 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 40
    store i32 8, i32* %t41
    %t42 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 41
    store i32 9, i32* %t42
    %t43 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 36
    store i32 47, i32* %t43
    %t44 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 61
    store i32 7, i32* %t44
    %t45 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 32
    store i32 47, i32* %t45
    %t46 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 44
    store i32 12, i32* %t46
    %t47 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 46
    store i32 14, i32* %t47
    %t48 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 39
    store i32 47, i32* %t48
    %t49 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 91
    store i32 10, i32* %t49
    %t50 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 93
    store i32 11, i32* %t50
    %t51 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 58
    store i32 16, i32* %t51
    %t52 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 94
    store i32 15, i32* %t52
    %t53 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 60
    store i32 7, i32* %t53
    %t54 = getelementptr inbounds %T_array_30, %T_array_30* @ssy, i32 0, i32 62
    store i32 7, i32* %t54
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
    %t2 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 5
    store i32 14, i32* %t2
    %t3 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 10
    store i32 3, i32* %t3
    %t4 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 11
    store i32 4, i32* %t4
    %t5 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 6
    store i32 7, i32* %t5
    %t6 = getelementptr inbounds %T_array_24, %T_array_24* @rop, i32 0, i32 13
    store i32 2, i32* %t6
    %t7 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 43
    store i32 5, i32* %t7
    %t8 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 45
    store i32 6, i32* %t8
    %t9 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 42
    store i32 0, i32* %t9
    %t10 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 47
    store i32 1, i32* %t10
    %t11 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 61
    store i32 13, i32* %t11
    %t12 = getelementptr inbounds %T_array_29, %T_array_29* @sop, i32 0, i32 60
    store i32 8, i32* %t12
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
    %t2 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 1
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), %T_array_28* %t2
    %t3 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 2
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), %T_array_28* %t3
    %t4 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 3
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), %T_array_28* %t4
    %t5 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 4
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), %T_array_28* %t5
    %t6 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 5
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), %T_array_28* %t6
    %t7 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 6
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), %T_array_28* %t7
    %t8 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 7
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), %T_array_28* %t8
    %t9 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 8
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), %T_array_28* %t9
    %t10 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 9
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), %T_array_28* %t10
    %t11 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 10
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), %T_array_28* %t11
    %t12 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 11
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), %T_array_28* %t12
    %t13 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 12
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), %T_array_28* %t13
    %t14 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 13
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), %T_array_28* %t14
    %t15 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 14
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), %T_array_28* %t15
    %t16 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 15
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), %T_array_28* %t16
    %t17 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 16
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), %T_array_28* %t17
    %t18 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 17
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), %T_array_28* %t18
    %t19 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 18
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), %T_array_28* %t19
    %t20 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 19
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), %T_array_28* %t20
    %t21 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 20
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), %T_array_28* %t21
    %t22 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 21
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), %T_array_28* %t22
    %t23 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 22
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), %T_array_28* %t23
    %t24 = getelementptr inbounds %T_array_27, %T_array_27* @sna, i32 0, i32 23
    store %T_array_28 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), %T_array_28* %t24
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
    %t2 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 0
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), %T_array_19* %t2
    %t3 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 1
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), %T_array_19* %t3
    %t4 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 2
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), %T_array_19* %t4
    %t5 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 3
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), %T_array_19* %t5
    %t6 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 4
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), %T_array_19* %t6
    %t7 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 5
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0), %T_array_19* %t7
    %t8 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 6
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), %T_array_19* %t8
    %t9 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 7
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), %T_array_19* %t9
    %t10 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 8
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), %T_array_19* %t10
    %t11 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 9
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), %T_array_19* %t11
    %t12 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 10
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), %T_array_19* %t12
    %t13 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 11
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i32 0, i32 0), %T_array_19* %t13
    %t14 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 12
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), %T_array_19* %t14
    %t15 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 13
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), %T_array_19* %t15
    %t16 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 14
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), %T_array_19* %t16
    %t17 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 15
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), %T_array_19* %t17
    %t18 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 16
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), %T_array_19* %t18
    %t19 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 17
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), %T_array_19* %t19
    %t20 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 18
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), %T_array_19* %t20
    %t21 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 19
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i32 0, i32 0), %T_array_19* %t21
    %t22 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 20
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i32 0, i32 0), %T_array_19* %t22
    %t23 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 21
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), %T_array_19* %t23
    %t24 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 22
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), %T_array_19* %t24
    %t25 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 23
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), %T_array_19* %t25
    %t26 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 24
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), %T_array_19* %t26
    %t27 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 25
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i32 0, i32 0), %T_array_19* %t27
    %t28 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 26
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), %T_array_19* %t28
    %t29 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 27
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), %T_array_19* %t29
    %t30 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 28
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), %T_array_19* %t30
    %t31 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 29
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), %T_array_19* %t31
    %t32 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 30
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), %T_array_19* %t32
    %t33 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 31
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0), %T_array_19* %t33
    %t34 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 32
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), %T_array_19* %t34
    %t35 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 33
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), %T_array_19* %t35
    %t36 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 34
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), %T_array_19* %t36
    %t37 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 35
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i32 0, i32 0), %T_array_19* %t37
    %t38 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 36
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0), %T_array_19* %t38
    %t39 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 37
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), %T_array_19* %t39
    %t40 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 38
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), %T_array_19* %t40
    %t41 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 39
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), %T_array_19* %t41
    %t42 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 40
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i32 0, i32 0), %T_array_19* %t42
    %t43 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 41
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), %T_array_19* %t43
    %t44 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 42
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), %T_array_19* %t44
    %t45 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 43
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), %T_array_19* %t45
    %t46 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 44
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), %T_array_19* %t46
    %t47 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 45
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), %T_array_19* %t47
    %t48 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 46
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i32 0, i32 0), %T_array_19* %t48
    %t49 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 47
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i32 0, i32 0), %T_array_19* %t49
    %t50 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 48
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0), %T_array_19* %t50
    %t51 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 49
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0), %T_array_19* %t51
    %t52 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 50
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i32 0, i32 0), %T_array_19* %t52
    %t53 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 51
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), %T_array_19* %t53
    %t54 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 52
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), %T_array_19* %t54
    %t55 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 53
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), %T_array_19* %t55
    %t56 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 54
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0), %T_array_19* %t56
    %t57 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 55
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0), %T_array_19* %t57
    %t58 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 56
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), %T_array_19* %t58
    %t59 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 57
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), %T_array_19* %t59
    %t60 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 58
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), %T_array_19* %t60
    %t61 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 59
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), %T_array_19* %t61
    %t62 = getelementptr inbounds %T_array_18, %T_array_18* @mn, i32 0, i32 60
    store %T_array_19 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), %T_array_19* %t62
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
    %t2 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 97
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 98
    store i32 0, i32* %t3
    %t4 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 99
    store i32 0, i32* %t4
    %t5 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 100
    store i32 0, i32* %t5
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 101
    store i32 0, i32* %t6
    %t7 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 102
    store i32 0, i32* %t7
    %t8 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 103
    store i32 0, i32* %t8
    %t9 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 104
    store i32 0, i32* %t9
    %t10 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 105
    store i32 0, i32* %t10
    %t11 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 106
    store i32 0, i32* %t11
    %t12 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 107
    store i32 0, i32* %t12
    %t13 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 108
    store i32 0, i32* %t13
    %t14 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 109
    store i32 0, i32* %t14
    %t15 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 110
    store i32 0, i32* %t15
    %t16 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 111
    store i32 0, i32* %t16
    %t17 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 112
    store i32 0, i32* %t17
    %t18 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 113
    store i32 0, i32* %t18
    %t19 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 114
    store i32 0, i32* %t19
    %t20 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 115
    store i32 0, i32* %t20
    %t21 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 116
    store i32 0, i32* %t21
    %t22 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 117
    store i32 0, i32* %t22
    %t23 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 118
    store i32 0, i32* %t23
    %t24 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 119
    store i32 0, i32* %t24
    %t25 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 120
    store i32 0, i32* %t25
    %t26 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 121
    store i32 0, i32* %t26
    %t27 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 122
    store i32 0, i32* %t27
    %t28 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 48
    store i32 1, i32* %t28
    %t29 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 49
    store i32 1, i32* %t29
    %t30 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 50
    store i32 1, i32* %t30
    %t31 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 51
    store i32 1, i32* %t31
    %t32 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 52
    store i32 1, i32* %t32
    %t33 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 53
    store i32 1, i32* %t33
    %t34 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 54
    store i32 1, i32* %t34
    %t35 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 55
    store i32 1, i32* %t35
    %t36 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 56
    store i32 1, i32* %t36
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 57
    store i32 1, i32* %t37
    %t38 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 43
    store i32 2, i32* %t38
    %t39 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 45
    store i32 2, i32* %t39
    %t40 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 42
    store i32 2, i32* %t40
    %t41 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 47
    store i32 2, i32* %t41
    %t42 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 40
    store i32 9, i32* %t42
    %t43 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 41
    store i32 2, i32* %t43
    %t44 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 36
    store i32 2, i32* %t44
    %t45 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 61
    store i32 2, i32* %t45
    %t46 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 32
    store i32 10, i32* %t46
    %t47 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 44
    store i32 2, i32* %t47
    %t48 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 46
    store i32 6, i32* %t48
    %t49 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 39
    store i32 4, i32* %t49
    %t50 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 91
    store i32 2, i32* %t50
    %t51 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 93
    store i32 2, i32* %t51
    %t52 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 58
    store i32 5, i32* %t52
    %t53 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 94
    store i32 2, i32* %t53
    %t54 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 59
    store i32 2, i32* %t54
    %t55 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 60
    store i32 7, i32* %t55
    %t56 = getelementptr inbounds %T_array_8, %T_array_8* @chartp, i32 0, i32 62
    store i32 8, i32* %t56
    %t57 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 48
    store i32 0, i32* %t57
    %t58 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 49
    store i32 1, i32* %t58
    %t59 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 50
    store i32 2, i32* %t59
    %t60 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 51
    store i32 3, i32* %t60
    %t61 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 52
    store i32 4, i32* %t61
    %t62 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 53
    store i32 5, i32* %t62
    %t63 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 54
    store i32 6, i32* %t63
    %t64 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 55
    store i32 7, i32* %t64
    %t65 = getelementptr inbounds %T_array_21, %T_array_21* @ordint, i32 0, i32 56
    store i32 8, i32* %t65
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
    %t2 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 0
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 1
    store i32 0, i32* %t3
    %t4 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 2
    %t5 = sub i32 0, 1
    store i32 %t5, i32* %t4
    %t6 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 3
    %t7 = sub i32 0, 1
    store i32 %t7, i32* %t6
    %t8 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 4
    %t9 = sub i32 0, 1
    store i32 %t9, i32* %t8
    %t10 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 5
    %t11 = sub i32 0, 1
    store i32 %t11, i32* %t10
    %t12 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 6
    %t13 = sub i32 0, 1
    store i32 %t13, i32* %t12
    %t14 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 7
    %t15 = sub i32 0, 1
    store i32 %t15, i32* %t14
    %t16 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 8
    store i32 0, i32* %t16
    %t17 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 9
    store i32 0, i32* %t17
    %t18 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 10
    store i32 0, i32* %t18
    %t19 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 11
    %t20 = sub i32 0, 1
    store i32 %t20, i32* %t19
    %t21 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 12
    %t22 = sub i32 0, 1
    store i32 %t22, i32* %t21
    %t23 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 13
    %t24 = sub i32 0, 1
    store i32 %t24, i32* %t23
    %t25 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 14
    %t26 = sub i32 0, 1
    store i32 %t26, i32* %t25
    %t27 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 15
    %t28 = sub i32 0, 1
    store i32 %t28, i32* %t27
    %t29 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 16
    %t30 = sub i32 0, 1
    store i32 %t30, i32* %t29
    %t31 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 17
    store i32 0, i32* %t31
    %t32 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 18
    store i32 0, i32* %t32
    %t33 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 19
    store i32 0, i32* %t33
    %t34 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 20
    store i32 0, i32* %t34
    %t35 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 21
    %t36 = sub i32 0, 1
    store i32 %t36, i32* %t35
    %t37 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 22
    %t38 = sub i32 0, 1
    store i32 %t38, i32* %t37
    %t39 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 23
    store i32 0, i32* %t39
    %t40 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 24
    store i32 0, i32* %t40
    %t41 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 25
    store i32 0, i32* %t41
    %t42 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 26
    %t43 = sub i32 0, 2
    store i32 %t43, i32* %t42
    %t44 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 27
    store i32 0, i32* %t44
    %t45 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 28
    %t46 = sub i32 0, 1
    store i32 %t46, i32* %t45
    %t47 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 29
    store i32 0, i32* %t47
    %t48 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 30
    store i32 0, i32* %t48
    %t49 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 31
    store i32 0, i32* %t49
    %t50 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 32
    store i32 0, i32* %t50
    %t51 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 33
    %t52 = sub i32 0, 1
    store i32 %t52, i32* %t51
    %t53 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 34
    store i32 0, i32* %t53
    %t54 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 35
    store i32 0, i32* %t54
    %t55 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 36
    %t56 = sub i32 0, 1
    store i32 %t56, i32* %t55
    %t57 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 37
    store i32 1, i32* %t57
    %t58 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 38
    store i32 1, i32* %t58
    %t59 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 39
    store i32 1, i32* %t59
    %t60 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 40
    %t61 = sub i32 0, 2
    store i32 %t61, i32* %t60
    %t62 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 41
    store i32 0, i32* %t62
    %t63 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 42
    store i32 0, i32* %t63
    %t64 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 43
    %t65 = sub i32 0, 1
    store i32 %t65, i32* %t64
    %t66 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 44
    %t67 = sub i32 0, 1
    store i32 %t67, i32* %t66
    %t68 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 45
    store i32 0, i32* %t68
    %t69 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 46
    store i32 0, i32* %t69
    %t70 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 47
    %t71 = sub i32 0, 1
    store i32 %t71, i32* %t70
    %t72 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 48
    %t73 = sub i32 0, 1
    store i32 %t73, i32* %t72
    %t74 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 49
    %t75 = sub i32 0, 1
    store i32 %t75, i32* %t74
    %t76 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 50
    store i32 1, i32* %t76
    %t77 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 51
    store i32 1, i32* %t77
    %t78 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 52
    %t79 = sub i32 0, 1
    store i32 %t79, i32* %t78
    %t80 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 53
    %t81 = sub i32 0, 1
    store i32 %t81, i32* %t80
    %t82 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 54
    store i32 1, i32* %t82
    %t83 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 55
    %t84 = sub i32 0, 1
    store i32 %t84, i32* %t83
    %t85 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 56
    %t86 = sub i32 0, 1
    store i32 %t86, i32* %t85
    %t87 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 57
    store i32 0, i32* %t87
    %t88 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 58
    store i32 0, i32* %t88
    %t89 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 59
    store i32 0, i32* %t89
    %t90 = getelementptr inbounds %T_array_6, %T_array_6* @cdx, i32 0, i32 60
    store i32 0, i32* %t90
    %t91 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 1
    %t92 = sub i32 0, 1
    store i32 %t92, i32* %t91
    %t93 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 2
    %t94 = sub i32 0, 1
    store i32 %t94, i32* %t93
    %t95 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 3
    %t96 = sub i32 0, 2
    store i32 %t96, i32* %t95
    %t97 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 4
    %t98 = sub i32 0, 2
    store i32 %t98, i32* %t97
    %t99 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 5
    %t100 = sub i32 0, 2
    store i32 %t100, i32* %t99
    %t101 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 6
    %t102 = sub i32 0, 3
    store i32 %t102, i32* %t101
    %t103 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 7
    %t104 = sub i32 0, 3
    store i32 %t104, i32* %t103
    %t105 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 8
    %t106 = sub i32 0, 3
    store i32 %t106, i32* %t105
    %t107 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 9
    %t108 = sub i32 0, 3
    store i32 %t108, i32* %t107
    %t109 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 10
    %t110 = sub i32 0, 4
    store i32 %t110, i32* %t109
    %t111 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 11
    store i32 0, i32* %t111
    %t112 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 12
    %t113 = sub i32 0, 2
    store i32 %t113, i32* %t112
    %t114 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 13
    %t115 = sub i32 0, 1
    store i32 %t115, i32* %t114
    %t116 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 14
    store i32 0, i32* %t116
    %t117 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 15
    store i32 0, i32* %t117
    %t118 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 16
    store i32 0, i32* %t118
    %t119 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 17
    store i32 0, i32* %t119
    %t120 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 18
    store i32 0, i32* %t120
    %t121 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 19
    store i32 0, i32* %t121
    %t122 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 20
    store i32 0, i32* %t122
    %t123 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 21
    %t124 = sub i32 0, 1
    store i32 %t124, i32* %t123
    %t125 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 22
    %t126 = sub i32 0, 1
    store i32 %t126, i32* %t125
    %t127 = getelementptr inbounds %T_array_22, %T_array_22* @pdx, i32 0, i32 23
    %t128 = sub i32 0, 1
    store i32 %t128, i32* %t127
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.46 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c" abi\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" abr\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c" adi\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c" adr\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c" atn\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c" chk\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c" chr\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c" cos\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" csp\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c" cup\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c" dec\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c" dif\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c" dvi\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c" dvr\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c" eln\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c" ent\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c" eof\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" equ\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c" exp\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c" fjp\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c" flo\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c" flt\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c" geq\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c" get\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c" grt\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c" inc\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c" ind\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c" inn\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c" int\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c" ior\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c" ixa\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c" lao\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c" lca\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c" lda\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c" ldc\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c" ldo\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c" leq\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c" les\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c" lod\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c" log\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c" mod\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c" mov\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c" mpi\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c" mpr\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c" mst\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c" neq\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c" ngi\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c" ngr\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c" odd\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c" ord\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c" pak\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c" put\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c" rdc\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c" rdi\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c" rdr\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c" ret\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c" rln\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c" rst\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c" sav\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c" sbi\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c" sbr\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c" sgs\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c" sin\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c" sqi\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c" sqr\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c" sqt\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c" sro\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c" sto\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c" stp\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c" str\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" tables \00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c" trc\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c" ujc\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c" ujp\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c" uni\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c" wln\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c" wrc\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c" wri\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c" wro\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c" wrr\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c" wrs\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c" xjp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"abs     \00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"and     \00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"arctan  \00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"array   \00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"begin   \00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"boolean \00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"case    \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"char    \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"chr     \00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"const   \00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"cos     \00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"div     \00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"do      \00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"downto  \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"else    \00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"end     \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"eof     \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"eoln    \00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"exp     \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"false   \00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"file    \00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"for     \00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"forward \00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"get     \00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"goto    \00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"if      \00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"in      \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"input   \00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"integer \00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"label   \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"ln      \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"mark    \00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"mod     \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"new     \00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"nil     \00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"not     \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"odd     \00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"of      \00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"or      \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"ord     \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"output  \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pack    \00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"packed  \00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"prd     \00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"pred    \00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"procedur\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"program \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"prr\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"prr     \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"put     \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"read    \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"readln  \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"real    \00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"record  \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"release \00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"repeat  \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"reset   \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"rewrite \00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"set     \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"sin     \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"sqr     \00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"sqrt    \00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"succ    \00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"then    \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"to      \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"true    \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"trunc   \00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"type    \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"unpack  \00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"until   \00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"var     \00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"while   \00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"with    \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"write   \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"writeln \00", align 1


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

