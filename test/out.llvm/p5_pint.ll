; ModuleID = 'p5_pint.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\p5_pint.pas"
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
    %struct._Filename { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null },
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

; line 262
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_beta = type [25 x i8]
%T_bytfil = type i8*
%T_array_2 = type [100 x %T_bytfil]
%T_array_4 = type [100 x i1]
%T_array_5 = type [100 x i32]
%T_array_6 = type [100 x %T_text]
%T_array_7 = type [256 x i1]
%T_array_8 = type [256 x i32]
%T_array_10 = type [256 x %T_alfa]
%T_settype = type [8 x i32]
%T_array_11 = type [37 x %T_alfa]
%T_array_12 = type [200001 x i32]

; program variables
@a1 = dso_local global i32 zeroinitializer
@a2 = dso_local global i32 zeroinitializer
@a3 = dso_local global i32 zeroinitializer
@ad = dso_local global i32 zeroinitializer
@ad1 = dso_local global i32 zeroinitializer
@b = dso_local global i1 zeroinitializer
@b1 = dso_local global i1 zeroinitializer
@b2 = dso_local global i1 zeroinitializer
@bfiltable = dso_local global %T_array_2 zeroinitializer
@c = dso_local global i8 zeroinitializer
@c1 = dso_local global i8 zeroinitializer
@c2 = dso_local global i8 zeroinitializer
@cp = dso_local global i32 zeroinitializer
@ep = dso_local global i32 zeroinitializer
@filbuff = dso_local global %T_array_4 zeroinitializer
@filstate = dso_local global %T_array_5 zeroinitializer
@filtable = dso_local global %T_array_6 zeroinitializer
@fn = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@i1 = dso_local global i32 zeroinitializer
@i2 = dso_local global i32 zeroinitializer
@i3 = dso_local global i32 zeroinitializer
@i4 = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@insp = dso_local global %T_array_7 zeroinitializer
@insq = dso_local global %T_array_8 zeroinitializer
@instr = dso_local global %T_array_10 zeroinitializer
@interpreting = dso_local global i1 zeroinitializer
@j = dso_local global i32 zeroinitializer
@mp = dso_local global i32 zeroinitializer
@np = dso_local global i32 zeroinitializer
@op = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global i32 zeroinitializer
@pa = dso_local global i32 zeroinitializer
@pc = dso_local global i32 zeroinitializer
@pcs = dso_local global i32 zeroinitializer
@pctop = dso_local global i32 zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global i32 zeroinitializer
@q1 = dso_local global i32 zeroinitializer
@r1 = dso_local global double zeroinitializer
@r2 = dso_local global double zeroinitializer
@s1 = dso_local global %T_settype zeroinitializer
@s2 = dso_local global %T_settype zeroinitializer
@sp = dso_local global i32 zeroinitializer
@sptable = dso_local global %T_array_11 zeroinitializer
@srclin = dso_local global i32 zeroinitializer
@store = dso_local global %T_array_12 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @prd
    %t4 = call i8* @_OpenFile(i32 3)
    store i8* %t4, i8** @prr

    ; body
    ; line 2065
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 26)
    call void @_WriteInteger(i8* %t5, i32 1, i32 0, i32 1)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 46)
    call void @_WriteInteger(i8* %t5, i32 1, i32 0, i32 0)
    call void @_WriteLn(i8* %t5)
    ; line 2066
    %t6 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t6)
    ; line 2069
    ; line 2071
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t7)
    ; line 2072
    call void @P_load()
    ; line 2073
    store i32 0, i32* @pc
    ; line 2073
    %t8 = load i32, i32* @pctop
    store i32 %t8, i32* @sp
    ; line 2073
    %t9 = load i32, i32* @pctop
    store i32 %t9, i32* @mp
    ; line 2073
    %t10 = load i32, i32* @cp
    store i32 %t10, i32* @np
    ; line 2073
    store i32 5, i32* @ep
    ; line 2073
    store i32 0, i32* @srclin
    ; line 2075
    store i1 1, i1* @interpreting
    ; line 2077
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t11)
    ; line 2078
    %t12 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t12)
    ; line 2079
    ; line 2492
    br i1 0, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 2492
    call void @P_repspc()
    br label %L_endif_1
L_endif_1:
    ; line 2496
    br label %L_1
L_1:
    %t13 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t13)
    ; line 2497
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t14)
    ; nop

    ; cleanup
    %t15 = load %T_text, %T_text* @prr
    call void @_CloseFile(i8* %t15)
    %t16 = load %T_text, %T_text* @prd
    call void @_CloseFile(i8* %t16)
    %t17 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t17)
    %t18 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t18)

    ; epilogue
    ret void
}


; line 499
;================================================================================
; scope: getint (level : 2)

; types
%T_getint_array_15 = type [4 x i32]
%T_getint_record_14 = type [16 x i8]

; activation record
%Frame_getint = type
{
    ; parameters
    i32,    ; 0: a

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    %T_getint_record_14,    ; 3: r

    ; dummy
    i8*
};

; function body
define i32 @F_getint(i32 %a)
{
    ; allocate frame
    %.frame = alloca %Frame_getint, align 8
    %t1 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1

    ; body
    ; line 511
    ; line 513
    %t2 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 1
    %t3 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_getint_record_14, %T_getint_record_14* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t6 = load i32, i32* %t4
    store i32 %t6, i32* %t2

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
}


; line 517
;================================================================================
; scope: putint (level : 2)

; types
%T_putint_array_18 = type [4 x i32]
%T_putint_record_17 = type [16 x i8]

; activation record
%Frame_putint = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: x

    ; variables
    i32,    ; 2: i
    %T_putint_record_17,    ; 3: r

    ; dummy
    i8*
};

; procedure body
define void @P_putint(i32 %a, i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_putint, align 8
    %t1 = getelementptr inbounds %Frame_putint, %Frame_putint* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_putint, %Frame_putint* %.frame, i32 0, i32 1
    store i32 %x, i32* %t2

    ; body
    ; line 529
    %t3 = getelementptr inbounds %Frame_putint, %Frame_putint* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putint_record_17, %T_putint_record_17* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t7 = getelementptr inbounds %Frame_putint, %Frame_putint* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t4
    ; line 530

    ; epilogue
    ret void
}


; line 534
;================================================================================
; scope: getrel (level : 2)

; types
%T_getrel_array_21 = type [8 x i32]
%T_getrel_record_20 = type [32 x i8]

; activation record
%Frame_getrel = type
{
    ; parameters
    i32,    ; 0: a

    ; variables
    double,    ; 1: _fnvalue
    i32,    ; 2: i
    %T_getrel_record_20,    ; 3: r

    ; dummy
    i8*
};

; function body
define double @F_getrel(i32 %a)
{
    ; allocate frame
    %.frame = alloca %Frame_getrel, align 8
    %t1 = getelementptr inbounds %Frame_getrel, %Frame_getrel* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1

    ; body
    ; line 546
    ; line 547
    %t2 = getelementptr inbounds %Frame_getrel, %Frame_getrel* %.frame, i32 0, i32 1
    %t3 = getelementptr inbounds %Frame_getrel, %Frame_getrel* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_getrel_record_20, %T_getrel_record_20* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to double*
    %t6 = load double, double* %t4
    store double %t6, double* %t2

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getrel, %Frame_getrel* %.frame, i32 0, i32 1
    %t8 = load double, double* %t7
    ret double %t8
}


; line 551
;================================================================================
; scope: putrel (level : 2)

; types
%T_putrel_array_24 = type [8 x i32]
%T_putrel_record_23 = type [32 x i8]

; activation record
%Frame_putrel = type
{
    ; parameters
    i32,    ; 0: a
    double,    ; 1: f

    ; variables
    i32,    ; 2: i
    %T_putrel_record_23,    ; 3: r

    ; dummy
    i8*
};

; procedure body
define void @P_putrel(i32 %a, double %f)
{
    ; allocate frame
    %.frame = alloca %Frame_putrel, align 8
    %t1 = getelementptr inbounds %Frame_putrel, %Frame_putrel* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_putrel, %Frame_putrel* %.frame, i32 0, i32 1
    store double %f, double* %t2

    ; body
    ; line 563
    %t3 = getelementptr inbounds %Frame_putrel, %Frame_putrel* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putrel_record_23, %T_putrel_record_23* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to double*
    %t7 = getelementptr inbounds %Frame_putrel, %Frame_putrel* %.frame, i32 0, i32 1
    %t6 = load double, double* %t7
    store double %t6, double* %t4
    ; line 564

    ; epilogue
    ret void
}


; line 568
;================================================================================
; scope: getbol (level : 2)

; activation record
%Frame_getbol = type
{
    ; parameters
    i32,    ; 0: a

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: b

    ; dummy
    i8*
};

; function body
define i1 @F_getbol(i32 %a)
{
    ; allocate frame
    %.frame = alloca %Frame_getbol, align 8
    %t1 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1

    ; body
    ; line 574
    %t4 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t3
    %t6 = load i32, i32* %t5
    %t2 = icmp eq i32 %t6, 0
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 574
    %t7 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 2
    store i1 0, i1* %t7
    br label %L_endif_1
L_else_1:
    ; line 574
    %t8 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 2
    store i1 1, i1* %t8
    br label %L_endif_1
L_endif_1:
    ; line 575
    %t9 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 1
    %t11 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 2
    %t10 = load i1, i1* %t11
    store i1 %t10, i1* %t9

    ; epilogue
    %t12 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 1
    %t13 = load i1, i1* %t12
    ret i1 %t13
}


; line 579
;================================================================================
; scope: putbol (level : 2)

; activation record
%Frame_putbol = type
{
    ; parameters
    i32,    ; 0: a
    i1,    ; 1: b

    ; dummy
    i8*
};

; procedure body
define void @P_putbol(i32 %a, i1 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_putbol, align 8
    %t1 = getelementptr inbounds %Frame_putbol, %Frame_putbol* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_putbol, %Frame_putbol* %.frame, i32 0, i32 1
    store i1 %b, i1* %t2

    ; body
    ; line 583
    %t4 = getelementptr inbounds %Frame_putbol, %Frame_putbol* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t3
    store i32 %.dummy.intrin, i32* %t5

    ; epilogue
    ret void
}


; line 587
;================================================================================
; scope: getset (level : 2)

; types
%T_getset_array_27 = type [32 x i32]
%T_getset_record_26 = type [128 x i8]

; activation record
%Frame_getset = type
{
    ; parameters
    i32,    ; 0: a
    %T_settype*,    ; 1: s

    ; variables
    i32,    ; 2: i
    %T_getset_record_26,    ; 3: r

    ; dummy
    i8*
};

; procedure body
define void @P_getset(i32 %a, %T_settype* %s)
{
    ; allocate frame
    %.frame = alloca %Frame_getset, align 8
    %t1 = getelementptr inbounds %Frame_getset, %Frame_getset* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_getset, %Frame_getset* %.frame, i32 0, i32 1
    store %T_settype* %s, %T_settype** %t2

    ; body
    ; line 599
    ; line 600
    %t3 = getelementptr inbounds %Frame_getset, %Frame_getset* %.frame, i32 0, i32 1
    %t4 = load %T_settype*, %T_settype** %t3
    %t5 = getelementptr inbounds %Frame_getset, %Frame_getset* %.frame, i32 0, i32 3
    %t7 = getelementptr inbounds %T_getset_record_26, %T_getset_record_26* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to %T_settype*
    %t8 = load %T_settype, %T_settype* %t6
    store %T_settype %t8, %T_settype* %t4

    ; epilogue
    ret void
}


; line 604
;================================================================================
; scope: putset (level : 2)

; types
%T_putset_array_30 = type [32 x i32]
%T_putset_record_29 = type [128 x i8]

; activation record
%Frame_putset = type
{
    ; parameters
    i32,    ; 0: a
    %T_settype,    ; 1: s

    ; variables
    i32,    ; 2: i
    %T_putset_record_29,    ; 3: r

    ; dummy
    i8*
};

; procedure body
define void @P_putset(i32 %a, %T_settype %s)
{
    ; allocate frame
    %.frame = alloca %Frame_putset, align 8
    %t1 = getelementptr inbounds %Frame_putset, %Frame_putset* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_putset, %Frame_putset* %.frame, i32 0, i32 1
    store %T_settype %s, %T_settype* %t2

    ; body
    ; line 616
    %t3 = getelementptr inbounds %Frame_putset, %Frame_putset* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putset_record_29, %T_putset_record_29* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to %T_settype*
    %t7 = getelementptr inbounds %Frame_putset, %Frame_putset* %.frame, i32 0, i32 1
    %t6 = load %T_settype, %T_settype* %t7
    store %T_settype %t6, %T_settype* %t4
    ; line 617

    ; epilogue
    ret void
}


; line 621
;================================================================================
; scope: getchr (level : 2)

; activation record
%Frame_getchr = type
{
    ; parameters
    i32,    ; 0: a

    ; variables
    i8,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i8 @F_getchr(i32 %a)
{
    ; allocate frame
    %.frame = alloca %Frame_getchr, align 8
    %t1 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1

    ; body
    ; line 625
    %t2 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 1
    store i8 %.dummy.intrin, i8* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 1
    %t4 = load i8, i8* %t3
    ret i8 %t4
}


; line 629
;================================================================================
; scope: putchr (level : 2)

; activation record
%Frame_putchr = type
{
    ; parameters
    i32,    ; 0: a
    i8,    ; 1: c

    ; dummy
    i8*
};

; procedure body
define void @P_putchr(i32 %a, i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_putchr, align 8
    %t1 = getelementptr inbounds %Frame_putchr, %Frame_putchr* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_putchr, %Frame_putchr* %.frame, i32 0, i32 1
    store i8 %c, i8* %t2

    ; body
    ; line 633
    %t4 = getelementptr inbounds %Frame_putchr, %Frame_putchr* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t3
    store i32 %.dummy.intrin, i32* %t5

    ; epilogue
    ret void
}


; line 637
;================================================================================
; scope: getadr (level : 2)

; types
%T_getadr_array_33 = type [4 x i32]
%T_getadr_record_32 = type [16 x i8]

; activation record
%Frame_getadr = type
{
    ; parameters
    i32,    ; 0: a

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    %T_getadr_record_32,    ; 3: r

    ; dummy
    i8*
};

; function body
define i32 @F_getadr(i32 %a)
{
    ; allocate frame
    %.frame = alloca %Frame_getadr, align 8
    %t1 = getelementptr inbounds %Frame_getadr, %Frame_getadr* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1

    ; body
    ; line 649
    ; line 650
    %t2 = getelementptr inbounds %Frame_getadr, %Frame_getadr* %.frame, i32 0, i32 1
    %t3 = getelementptr inbounds %Frame_getadr, %Frame_getadr* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_getadr_record_32, %T_getadr_record_32* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t6 = load i32, i32* %t4
    store i32 %t6, i32* %t2

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getadr, %Frame_getadr* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
}


; line 654
;================================================================================
; scope: putadr (level : 2)

; types
%T_putadr_array_36 = type [4 x i32]
%T_putadr_record_35 = type [16 x i8]

; activation record
%Frame_putadr = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: ad

    ; variables
    i32,    ; 2: i
    %T_putadr_record_35,    ; 3: r

    ; dummy
    i8*
};

; procedure body
define void @P_putadr(i32 %a, i32 %ad)
{
    ; allocate frame
    %.frame = alloca %Frame_putadr, align 8
    %t1 = getelementptr inbounds %Frame_putadr, %Frame_putadr* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_putadr, %Frame_putadr* %.frame, i32 0, i32 1
    store i32 %ad, i32* %t2

    ; body
    ; line 666
    %t3 = getelementptr inbounds %Frame_putadr, %Frame_putadr* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putadr_record_35, %T_putadr_record_35* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t7 = getelementptr inbounds %Frame_putadr, %Frame_putadr* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t4
    ; line 667

    ; epilogue
    ret void
}


; line 673
;================================================================================
; scope: swpstk (level : 2)

; types
%T_swpstk_array_38 = type [32 x i32]

; activation record
%Frame_swpstk = type
{
    ; parameters
    i32,    ; 0: l

    ; variables
    i32,    ; 1: i
    i32,    ; 2: p
    %T_swpstk_array_38,    ; 3: sb

    ; dummy
    i8*
};

; procedure body
define void @P_swpstk(i32 %l)
{
    ; allocate frame
    %.frame = alloca %Frame_swpstk, align 8
    %t1 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 0
    store i32 %l, i32* %t1

    ; body
    ; line 682
    %t2 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 2
    %t4 = load i32, i32* @sp
    %t3 = sub i32 %t4, 4
    %t5 = call i32 @F_getadr(i32 %t3)
    store i32 %t5, i32* %t2
    ; line 684
    ; line 685
    %t8 = load i32, i32* @sp
    %t7 = sub i32 %t8, 4
    %t10 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t6 = sub i32 %t7, %t9
    %t12 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 2
    %t11 = load i32, i32* %t12
    call void @P_putadr(i32 %t6, i32 %t11)
    ; line 686

    ; epilogue
    ret void
}


; line 700
;================================================================================
; scope: popint (level : 2)

; activation record
%Frame_popint = type
{
    ; parameters
    i32*,    ; 0: i

    ; dummy
    i8*
};

; procedure body
define void @P_popint(i32* %i)
{
    ; allocate frame
    %.frame = alloca %Frame_popint, align 8
    %t1 = getelementptr inbounds %Frame_popint, %Frame_popint* %.frame, i32 0, i32 0
    store i32* %i, i32** %t1

    ; body
    ; line 700
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 4
    store i32 %t2, i32* @sp
    ; line 700
    %t4 = getelementptr inbounds %Frame_popint, %Frame_popint* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t6 = load i32, i32* @sp
    %t7 = call i32 @F_getint(i32 %t6)
    store i32 %t7, i32* %t5

    ; epilogue
    ret void
}


; line 701
;================================================================================
; scope: pshint (level : 2)

; activation record
%Frame_pshint = type
{
    ; parameters
    i32,    ; 0: i

    ; dummy
    i8*
};

; procedure body
define void @P_pshint(i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_pshint, align 8
    %t1 = getelementptr inbounds %Frame_pshint, %Frame_pshint* %.frame, i32 0, i32 0
    store i32 %i, i32* %t1

    ; body
    ; line 701
    %t2 = load i32, i32* @sp
    %t4 = getelementptr inbounds %Frame_pshint, %Frame_pshint* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    call void @P_putint(i32 %t2, i32 %t3)
    ; line 701
    %t6 = load i32, i32* @sp
    %t5 = add i32 %t6, 4
    store i32 %t5, i32* @sp

    ; epilogue
    ret void
}


; line 702
;================================================================================
; scope: poprel (level : 2)

; activation record
%Frame_poprel = type
{
    ; parameters
    double*,    ; 0: r

    ; dummy
    i8*
};

; procedure body
define void @P_poprel(double* %r)
{
    ; allocate frame
    %.frame = alloca %Frame_poprel, align 8
    %t1 = getelementptr inbounds %Frame_poprel, %Frame_poprel* %.frame, i32 0, i32 0
    store double* %r, double** %t1

    ; body
    ; line 702
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 8
    store i32 %t2, i32* @sp
    ; line 702
    %t4 = getelementptr inbounds %Frame_poprel, %Frame_poprel* %.frame, i32 0, i32 0
    %t5 = load double*, double** %t4
    %t6 = load i32, i32* @sp
    %t7 = call double @F_getrel(i32 %t6)
    store double %t7, double* %t5

    ; epilogue
    ret void
}


; line 703
;================================================================================
; scope: pshrel (level : 2)

; activation record
%Frame_pshrel = type
{
    ; parameters
    double,    ; 0: r

    ; dummy
    i8*
};

; procedure body
define void @P_pshrel(double %r)
{
    ; allocate frame
    %.frame = alloca %Frame_pshrel, align 8
    %t1 = getelementptr inbounds %Frame_pshrel, %Frame_pshrel* %.frame, i32 0, i32 0
    store double %r, double* %t1

    ; body
    ; line 703
    %t2 = load i32, i32* @sp
    %t4 = getelementptr inbounds %Frame_pshrel, %Frame_pshrel* %.frame, i32 0, i32 0
    %t3 = load double, double* %t4
    call void @P_putrel(i32 %t2, double %t3)
    ; line 703
    %t6 = load i32, i32* @sp
    %t5 = add i32 %t6, 8
    store i32 %t5, i32* @sp
    ; nop

    ; epilogue
    ret void
}


; line 704
;================================================================================
; scope: popset (level : 2)

; activation record
%Frame_popset = type
{
    ; parameters
    %T_settype*,    ; 0: s

    ; dummy
    i8*
};

; procedure body
define void @P_popset(%T_settype* %s)
{
    ; allocate frame
    %.frame = alloca %Frame_popset, align 8
    %t1 = getelementptr inbounds %Frame_popset, %Frame_popset* %.frame, i32 0, i32 0
    store %T_settype* %s, %T_settype** %t1

    ; body
    ; line 704
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 32
    store i32 %t2, i32* @sp
    ; line 704
    %t4 = load i32, i32* @sp
    %t5 = getelementptr inbounds %Frame_popset, %Frame_popset* %.frame, i32 0, i32 0
    %t6 = load %T_settype*, %T_settype** %t5
    call void @P_getset(i32 %t4, %T_settype* %t6)

    ; epilogue
    ret void
}


; line 705
;================================================================================
; scope: pshset (level : 2)

; activation record
%Frame_pshset = type
{
    ; parameters
    %T_settype,    ; 0: s

    ; dummy
    i8*
};

; procedure body
define void @P_pshset(%T_settype %s)
{
    ; allocate frame
    %.frame = alloca %Frame_pshset, align 8
    %t1 = getelementptr inbounds %Frame_pshset, %Frame_pshset* %.frame, i32 0, i32 0
    store %T_settype %s, %T_settype* %t1

    ; body
    ; line 705
    %t2 = load i32, i32* @sp
    %t4 = getelementptr inbounds %Frame_pshset, %Frame_pshset* %.frame, i32 0, i32 0
    %t3 = load %T_settype, %T_settype* %t4
    call void @P_putset(i32 %t2, %T_settype %t3)
    ; line 705
    %t6 = load i32, i32* @sp
    %t5 = add i32 %t6, 32
    store i32 %t5, i32* @sp

    ; epilogue
    ret void
}


; line 706
;================================================================================
; scope: popadr (level : 2)

; activation record
%Frame_popadr = type
{
    ; parameters
    i32*,    ; 0: a

    ; dummy
    i8*
};

; procedure body
define void @P_popadr(i32* %a)
{
    ; allocate frame
    %.frame = alloca %Frame_popadr, align 8
    %t1 = getelementptr inbounds %Frame_popadr, %Frame_popadr* %.frame, i32 0, i32 0
    store i32* %a, i32** %t1

    ; body
    ; line 706
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 4
    store i32 %t2, i32* @sp
    ; line 706
    %t4 = getelementptr inbounds %Frame_popadr, %Frame_popadr* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t6 = load i32, i32* @sp
    %t7 = call i32 @F_getadr(i32 %t6)
    store i32 %t7, i32* %t5

    ; epilogue
    ret void
}


; line 707
;================================================================================
; scope: pshadr (level : 2)

; activation record
%Frame_pshadr = type
{
    ; parameters
    i32,    ; 0: a

    ; dummy
    i8*
};

; procedure body
define void @P_pshadr(i32 %a)
{
    ; allocate frame
    %.frame = alloca %Frame_pshadr, align 8
    %t1 = getelementptr inbounds %Frame_pshadr, %Frame_pshadr* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1

    ; body
    ; line 707
    %t2 = load i32, i32* @sp
    %t4 = getelementptr inbounds %Frame_pshadr, %Frame_pshadr* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    call void @P_putadr(i32 %t2, i32 %t3)
    ; line 707
    %t6 = load i32, i32* @sp
    %t5 = add i32 %t6, 4
    store i32 %t5, i32* @sp

    ; epilogue
    ret void
}


; line 711
;================================================================================
; scope: wrthex (level : 2)

; activation record
%Frame_wrthex = type
{
    ; parameters
    i32,    ; 0: f
    i32,    ; 1: v

    ; variables
    i32,    ; 2: d
    i32,    ; 3: i
    i32,    ; 4: p

    ; dummy
    i8*
};

; procedure body
define void @P_wrthex(i32 %v, i32 %f)
{
    ; allocate frame
    %.frame = alloca %Frame_wrthex, align 8
    %t1 = getelementptr inbounds %Frame_wrthex, %Frame_wrthex* %.frame, i32 0, i32 0
    store i32 %f, i32* %t1
    %t2 = getelementptr inbounds %Frame_wrthex, %Frame_wrthex* %.frame, i32 0, i32 1
    store i32 %v, i32* %t2

    ; body
    ; line 714
    %t3 = getelementptr inbounds %Frame_wrthex, %Frame_wrthex* %.frame, i32 0, i32 4
    store i32 1, i32* %t3
    ; line 715
    ; line 716

    ; epilogue
    ret void
}


; line 726
;================================================================================
; scope: lstins (level : 2)

; activation record
%Frame_lstins = type
{
    ; parameters
    i32*,    ; 0: ad

    ; variables
    i32,    ; 1: ads
    i32,    ; 2: op
    i32,    ; 3: p
    i32,    ; 4: q

    ; dummy
    i8*
};

; procedure body
define void @P_lstins(i32* %ad)
{
    ; allocate frame
    %.frame = alloca %Frame_lstins, align 8
    %t1 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    store i32* %ad, i32** %t1

    ; body
    ; line 734
    %t2 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t3 = load i32, i32* %t5
    store i32 %t3, i32* %t2
    ; line 735
    %t6 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t8 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t9 = load i32*, i32** %t8
    %t7 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t7
    %t11 = load i32, i32* %t10
    store i32 %t11, i32* %t6
    ; line 735
    %t12 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t13 = load i32*, i32** %t12
    %t16 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t17 = load i32*, i32** %t16
    %t15 = load i32, i32* %t17
    %t14 = add i32 %t15, 1
    store i32 %t14, i32* %t13
    ; line 736
    %t19 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    %t20 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 %t18
    %t21 = load i1, i1* %t20
    br i1 %t21, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 736
    %t22 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 3
    %t24 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t25 = load i32*, i32** %t24
    %t23 = load i32, i32* %t25
    %t26 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t23
    %t27 = load i32, i32* %t26
    store i32 %t27, i32* %t22
    ; line 736
    %t28 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t29 = load i32*, i32** %t28
    %t32 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t33 = load i32*, i32** %t32
    %t31 = load i32, i32* %t33
    %t30 = add i32 %t31, 1
    store i32 %t30, i32* %t29
    br label %L_endif_1
L_endif_1:
    ; line 737
    %t36 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t35 = load i32, i32* %t36
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 %t35
    %t38 = load i32, i32* %t37
    %t34 = icmp sgt i32 %t38, 0
    br i1 %t34, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 739
    ; line 745
    %t39 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t40 = load i32*, i32** %t39
    %t43 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 0
    %t44 = load i32*, i32** %t43
    %t42 = load i32, i32* %t44
    %t46 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t45 = load i32, i32* %t46
    %t47 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 %t45
    %t48 = load i32, i32* %t47
    %t41 = add i32 %t42, %t48
    store i32 %t41, i32* %t40
    br label %L_endif_2
L_endif_2:
    ; line 748
    %t49 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t49, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2)
    ; line 749
    %t51 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t50 = load i32, i32* %t51
    call void @P_wrthex(i32 %t50, i32 2)
    ; line 750
    %t52 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t52, i32 0, i32 0, i8 32)
    %t54 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t53 = load i32, i32* %t54
    %t55 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 %t53
    call void @_WriteString(i8* %t52, i32 10, i32 0, i8* getelementptr inbounds (%T_alfa, %T_alfa* %t55, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t52, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2)
    ; line 751
    %t57 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t56 = load i32, i32* %t57
    %t58 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 %t56
    %t59 = load i1, i1* %t58
    br i1 %t59, label %L_then_3, label %L_else_3
L_then_3:
    ; line 753
    %t61 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 3
    %t60 = load i32, i32* %t61
    call void @P_wrthex(i32 %t60, i32 2)
    ; line 754
    %t64 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t63 = load i32, i32* %t64
    %t65 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 %t63
    %t66 = load i32, i32* %t65
    %t62 = icmp sgt i32 %t66, 0
    br i1 %t62, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 754
    %t67 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t67, i32 0, i32 0, i8 44)
    ; line 754
    %t69 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 4
    %t68 = load i32, i32* %t69
    call void @P_wrthex(i32 %t68, i32 6)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 756
    %t72 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 2
    %t71 = load i32, i32* %t72
    %t73 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 %t71
    %t74 = load i32, i32* %t73
    %t70 = icmp sgt i32 %t74, 0
    br i1 %t70, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 756
    %t75 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t75, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 3)
    ; line 756
    %t77 = getelementptr inbounds %Frame_lstins, %Frame_lstins* %.frame, i32 0, i32 4
    %t76 = load i32, i32* %t77
    call void @P_wrthex(i32 %t76, i32 6)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 762
;================================================================================
; scope: dmpins (level : 2)

; activation record
%Frame_dmpins = type
{
    ; variables
    i32,    ; 0: i

    ; dummy
    i8*
};

; procedure body
define void @P_dmpins()
{
    ; allocate frame
    %.frame = alloca %Frame_dmpins, align 8

    ; body
    ; line 768
    %t1 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1)
    ; line 769
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i32 30)
    call void @_WriteLn(i8* %t2)
    ; line 770
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 771
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t4)
    ; line 772
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t5)
    ; line 773
    %t6 = getelementptr inbounds %Frame_dmpins, %Frame_dmpins* %.frame, i32 0, i32 0
    store i32 0, i32* %t6
    ; line 774
    ; line 781
    %t7 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t7)

    ; epilogue
    ret void
}


; line 787
;================================================================================
; scope: alignu (level : 2)

; activation record
%Frame_alignu = type
{
    ; parameters
    i32,    ; 0: algn
    i32*,    ; 1: flc

    ; variables
    i32,    ; 2: l

    ; dummy
    i8*
};

; procedure body
define void @P_alignu(i32 %algn, i32* %flc)
{
    ; allocate frame
    %.frame = alloca %Frame_alignu, align 8
    %t1 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 0
    store i32 %algn, i32* %t1
    %t2 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 1
    store i32* %flc, i32** %t2

    ; body
    ; line 790
    %t3 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 1
    %t7 = load i32*, i32** %t6
    %t5 = load i32, i32* %t7
    %t4 = sub i32 %t5, 1
    store i32 %t4, i32* %t3
    ; line 791
    %t8 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 1
    %t9 = load i32*, i32** %t8
    %t13 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 2
    %t12 = load i32, i32* %t13
    %t15 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    %t11 = add i32 %t12, %t14
    %t19 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 0
    %t18 = load i32, i32* %t19
    %t21 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 2
    %t20 = load i32, i32* %t21
    %t17 = add i32 %t18, %t20
    %t23 = getelementptr inbounds %Frame_alignu, %Frame_alignu* %.frame, i32 0, i32 0
    %t22 = load i32, i32* %t23
    %t16 = srem i32 %t17, %t22
    %t10 = sub i32 %t11, %t16
    store i32 %t10, i32* %t9

    ; epilogue
    ret void
}


; line 796
;================================================================================
; scope: alignd (level : 2)

; activation record
%Frame_alignd = type
{
    ; parameters
    i32,    ; 0: algn
    i32*,    ; 1: flc

    ; variables
    i32,    ; 2: l

    ; dummy
    i8*
};

; procedure body
define void @P_alignd(i32 %algn, i32* %flc)
{
    ; allocate frame
    %.frame = alloca %Frame_alignd, align 8
    %t1 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 0
    store i32 %algn, i32* %t1
    %t2 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 1
    store i32* %flc, i32** %t2

    ; body
    ; line 799
    %t3 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 1
    %t7 = load i32*, i32** %t6
    %t5 = load i32, i32* %t7
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* %t3
    ; line 800
    %t8 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 1
    %t9 = load i32*, i32** %t8
    %t13 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 2
    %t12 = load i32, i32* %t13
    %t15 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    %t11 = sub i32 %t12, %t14
    %t19 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 0
    %t18 = load i32, i32* %t19
    %t21 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 2
    %t20 = load i32, i32* %t21
    %t17 = sub i32 %t18, %t20
    %t23 = getelementptr inbounds %Frame_alignd, %Frame_alignd* %.frame, i32 0, i32 0
    %t22 = load i32, i32* %t23
    %t16 = srem i32 %t17, %t22
    %t10 = add i32 %t11, %t16
    store i32 %t10, i32* %t9

    ; epilogue
    ret void
}


; line 807
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type [8 x i8]
%T_load_array_39 = type [5001 x %T_load_labelrec]
%T_load_array_40 = type [10 x i8]

; activation record
%Frame_load = type
{
    ; variables
    i8,    ; 0: ch
    i32,    ; 1: iline
    %T_load_array_39,    ; 2: labeltab
    i32,    ; 3: labelvalue
    %T_load_array_40,    ; 4: word

    ; dummy
    i8*
};

; procedure body
define void @P_load()
{
    ; allocate frame
    %.frame = alloca %Frame_load, align 8

    ; body
    ; line 1407
    call void @P_load_init(%Frame_load* %.frame)
    ; line 1408
    call void @P_load_generate(%Frame_load* %.frame)
    ; line 1409
    %t1 = load i32, i32* @pc
    store i32 %t1, i32* @pctop
    ; line 1410
    store i32 0, i32* @pc
    ; line 1411
    call void @P_load_generate(%Frame_load* %.frame)
    ; line 1412
    call void @P_alignu(i32 4, i32* @pctop)
    ; line 1413
    call void @P_alignd(i32 4, i32* @cp)
    ; line 1415
    br i1 0, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1417
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 1418
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t3)
    ; line 1419
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 1420
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 12)
    ; line 1420
    call void @P_wrthex(i32 0, i32 6)
    ; line 1420
    %t6 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 45)
    ; line 1420
    %t8 = load i32, i32* @pctop
    %t7 = sub i32 %t8, 1
    call void @P_wrthex(i32 %t7, i32 6)
    ; line 1421
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 2)
    %t10 = load i32, i32* @pctop
    call void @_WriteInteger(i8* %t9, i32 8, i32 0, i32 %t10)
    call void @_WriteChar(i8* %t9, i32 0, i32 0, i8 41)
    call void @_WriteLn(i8* %t9)
    ; line 1422
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 12)
    ; line 1422
    %t12 = load i32, i32* @pctop
    call void @P_wrthex(i32 %t12, i32 6)
    ; line 1422
    %t13 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t13, i32 0, i32 0, i8 45)
    ; line 1422
    %t15 = load i32, i32* @cp
    %t14 = sub i32 %t15, 1
    call void @P_wrthex(i32 %t14, i32 6)
    ; line 1423
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 2)
    %t19 = load i32, i32* @cp
    %t20 = load i32, i32* @pctop
    %t18 = sub i32 %t19, %t20
    %t17 = add i32 %t18, 1
    call void @_WriteInteger(i8* %t16, i32 8, i32 0, i32 %t17)
    call void @_WriteChar(i8* %t16, i32 0, i32 0, i8 41)
    call void @_WriteLn(i8* %t16)
    ; line 1424
    %t21 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 12)
    ; line 1424
    %t22 = load i32, i32* @cp
    call void @P_wrthex(i32 %t22, i32 6)
    ; line 1424
    %t23 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t23, i32 0, i32 0, i8 45)
    ; line 1424
    call void @P_wrthex(i32 200000, i32 6)
    ; line 1425
    %t24 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t24, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 2)
    %t26 = load i32, i32* @cp
    %t25 = sub i32 200000, %t26
    call void @_WriteInteger(i8* %t24, i32 8, i32 0, i32 %t25)
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 41)
    call void @_WriteLn(i8* %t24)
    ; line 1426
    %t27 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t27)
    br label %L_endif_1
L_endif_1:
    ; line 1429
    br i1 0, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1429
    call void @P_dmpins()
    br label %L_endif_2
L_endif_2:
    ; line 1430
    br i1 0, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1430
    call void @P_load_dmplabs(%Frame_load* %.frame)
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 819
;================================================================================
; scope: load_init (level : 3)

; activation record
%Frame_load_init = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_load*    ; 1
};

; procedure body
define void @P_load_init(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_init, align 8
    %t1 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 821
    ; line 836
    %t2 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t2
    ; line 836
    %t3 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 0
    store i1 1, i1* %t3
    ; line 836
    %t4 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 0
    store i32 4, i32* %t4
    ; line 837
    %t5 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %T_alfa* %t5
    ; line 837
    %t6 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 1
    store i1 0, i1* %t6
    ; line 837
    %t7 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 1
    store i32 4, i32* %t7
    ; line 838
    %t8 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %T_alfa* %t8
    ; line 838
    %t9 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 2
    store i1 1, i1* %t9
    ; line 838
    %t10 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 2
    store i32 4, i32* %t10
    ; line 839
    %t11 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t11
    ; line 839
    %t12 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 3
    store i1 0, i1* %t12
    ; line 839
    %t13 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 3
    store i32 4, i32* %t13
    ; line 840
    %t14 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %T_alfa* %t14
    ; line 840
    %t15 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 4
    store i1 1, i1* %t15
    ; line 840
    %t16 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 4
    store i32 4, i32* %t16
    ; line 841
    %t17 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %T_alfa* %t17
    ; line 841
    %t18 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 5
    store i1 0, i1* %t18
    ; line 841
    %t19 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 5
    store i32 4, i32* %t19
    ; line 842
    %t20 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_alfa* %t20
    ; line 842
    %t21 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 6
    store i1 0, i1* %t21
    ; line 842
    %t22 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 6
    store i32 0, i32* %t22
    ; line 843
    %t23 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %T_alfa* %t23
    ; line 843
    %t24 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 7
    store i1 0, i1* %t24
    ; line 843
    %t25 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 7
    store i32 4, i32* %t25
    ; line 844
    %t26 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t26
    ; line 844
    %t27 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 8
    store i1 0, i1* %t27
    ; line 844
    %t28 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 8
    store i32 0, i32* %t28
    ; line 845
    %t29 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_alfa* %t29
    ; line 845
    %t30 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 9
    store i1 0, i1* %t30
    ; line 845
    %t31 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 9
    store i32 4, i32* %t31
    ; line 846
    %t32 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %T_alfa* %t32
    ; line 846
    %t33 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 10
    store i1 0, i1* %t33
    ; line 846
    %t34 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 10
    store i32 4, i32* %t34
    ; line 847
    %t35 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), %T_alfa* %t35
    ; line 847
    %t36 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 11
    store i1 1, i1* %t36
    ; line 847
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 11
    store i32 0, i32* %t37
    ; line 848
    %t38 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %T_alfa* %t38
    ; line 848
    %t39 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 12
    store i1 1, i1* %t39
    ; line 848
    %t40 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 12
    store i32 4, i32* %t40
    ; line 849
    %t41 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), %T_alfa* %t41
    ; line 849
    %t42 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 13
    store i1 0, i1* %t42
    ; line 849
    %t43 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 13
    store i32 4, i32* %t43
    ; line 850
    %t44 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), %T_alfa* %t44
    ; line 850
    %t45 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 14
    store i1 0, i1* %t45
    ; line 850
    %t46 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 14
    store i32 0, i32* %t46
    ; line 851
    %t47 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %T_alfa* %t47
    ; line 851
    %t48 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 15
    store i1 0, i1* %t48
    ; line 851
    %t49 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 15
    store i32 4, i32* %t49
    ; line 852
    %t50 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %T_alfa* %t50
    ; line 852
    %t51 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 16
    store i1 0, i1* %t51
    ; line 852
    %t52 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 16
    store i32 4, i32* %t52
    ; line 853
    %t53 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %T_alfa* %t53
    ; line 853
    %t54 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 17
    store i1 0, i1* %t54
    ; line 853
    %t55 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 17
    store i32 0, i32* %t55
    ; line 854
    %t56 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t56
    ; line 854
    %t57 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 18
    store i1 0, i1* %t57
    ; line 854
    %t58 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 18
    store i32 0, i32* %t58
    ; line 855
    %t59 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), %T_alfa* %t59
    ; line 855
    %t60 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 19
    store i1 0, i1* %t60
    ; line 855
    %t61 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 19
    store i32 0, i32* %t61
    ; line 856
    %t62 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %T_alfa* %t62
    ; line 856
    %t63 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 20
    store i1 0, i1* %t63
    ; line 856
    %t64 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 20
    store i32 0, i32* %t64
    ; line 857
    %t65 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %T_alfa* %t65
    ; line 857
    %t66 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 21
    store i1 0, i1* %t66
    ; line 857
    %t67 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 21
    store i32 0, i32* %t67
    ; line 858
    %t68 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), %T_alfa* %t68
    ; line 858
    %t69 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 22
    store i1 0, i1* %t69
    ; line 858
    %t70 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 22
    store i32 0, i32* %t70
    ; line 859
    %t71 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %T_alfa* %t71
    ; line 859
    %t72 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 23
    store i1 0, i1* %t72
    ; line 859
    %t73 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 23
    store i32 4, i32* %t73
    ; line 860
    %t74 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), %T_alfa* %t74
    ; line 860
    %t75 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 24
    store i1 0, i1* %t75
    ; line 860
    %t76 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 24
    store i32 4, i32* %t76
    ; line 861
    %t77 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %T_alfa* %t77
    ; line 861
    %t78 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 25
    store i1 0, i1* %t78
    ; line 861
    %t79 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 25
    store i32 4, i32* %t79
    ; line 862
    %t80 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), %T_alfa* %t80
    ; line 862
    %t81 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 26
    store i1 0, i1* %t81
    ; line 862
    %t82 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 26
    store i32 4, i32* %t82
    ; line 863
    %t83 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), %T_alfa* %t83
    ; line 863
    %t84 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 27
    store i1 0, i1* %t84
    ; line 863
    %t85 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 27
    store i32 0, i32* %t85
    ; line 864
    %t86 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 28
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), %T_alfa* %t86
    ; line 864
    %t87 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 28
    store i1 0, i1* %t87
    ; line 864
    %t88 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 28
    store i32 0, i32* %t88
    ; line 865
    %t89 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 29
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), %T_alfa* %t89
    ; line 865
    %t90 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 29
    store i1 0, i1* %t90
    ; line 865
    %t91 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 29
    store i32 0, i32* %t91
    ; line 866
    %t92 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 30
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), %T_alfa* %t92
    ; line 866
    %t93 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 30
    store i1 0, i1* %t93
    ; line 866
    %t94 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 30
    store i32 0, i32* %t94
    ; line 867
    %t95 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 31
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), %T_alfa* %t95
    ; line 867
    %t96 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 31
    store i1 0, i1* %t96
    ; line 867
    %t97 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 31
    store i32 0, i32* %t97
    ; line 868
    %t98 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 32
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), %T_alfa* %t98
    ; line 868
    %t99 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 32
    store i1 0, i1* %t99
    ; line 868
    %t100 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 32
    store i32 0, i32* %t100
    ; line 869
    %t101 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 33
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), %T_alfa* %t101
    ; line 869
    %t102 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 33
    store i1 0, i1* %t102
    ; line 869
    %t103 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 33
    store i32 0, i32* %t103
    ; line 870
    %t104 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 34
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), %T_alfa* %t104
    ; line 870
    %t105 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 34
    store i1 0, i1* %t105
    ; line 870
    %t106 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 34
    store i32 0, i32* %t106
    ; line 871
    %t107 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 35
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), %T_alfa* %t107
    ; line 871
    %t108 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 35
    store i1 0, i1* %t108
    ; line 871
    %t109 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 35
    store i32 0, i32* %t109
    ; line 872
    %t110 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 36
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), %T_alfa* %t110
    ; line 872
    %t111 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 36
    store i1 0, i1* %t111
    ; line 872
    %t112 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 36
    store i32 0, i32* %t112
    ; line 873
    %t113 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 37
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), %T_alfa* %t113
    ; line 873
    %t114 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 37
    store i1 0, i1* %t114
    ; line 873
    %t115 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 37
    store i32 0, i32* %t115
    ; line 874
    %t116 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 38
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), %T_alfa* %t116
    ; line 874
    %t117 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 38
    store i1 0, i1* %t117
    ; line 874
    %t118 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 38
    store i32 0, i32* %t118
    ; line 875
    %t119 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 39
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), %T_alfa* %t119
    ; line 875
    %t120 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 39
    store i1 0, i1* %t120
    ; line 875
    %t121 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 39
    store i32 0, i32* %t121
    ; line 876
    %t122 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 40
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %T_alfa* %t122
    ; line 876
    %t123 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 40
    store i1 0, i1* %t123
    ; line 876
    %t124 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 40
    store i32 0, i32* %t124
    ; line 877
    %t125 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 41
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %T_alfa* %t125
    ; line 877
    %t126 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 41
    store i1 0, i1* %t126
    ; line 877
    %t127 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 41
    store i32 0, i32* %t127
    ; line 878
    %t128 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 42
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), %T_alfa* %t128
    ; line 878
    %t129 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 42
    store i1 0, i1* %t129
    ; line 878
    %t130 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 42
    store i32 0, i32* %t130
    ; line 879
    %t131 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 43
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), %T_alfa* %t131
    ; line 879
    %t132 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 43
    store i1 0, i1* %t132
    ; line 879
    %t133 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 43
    store i32 0, i32* %t133
    ; line 880
    %t134 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 44
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %T_alfa* %t134
    ; line 880
    %t135 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 44
    store i1 0, i1* %t135
    ; line 880
    %t136 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 44
    store i32 0, i32* %t136
    ; line 881
    %t137 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 45
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %T_alfa* %t137
    ; line 881
    %t138 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 45
    store i1 0, i1* %t138
    ; line 881
    %t139 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 45
    store i32 0, i32* %t139
    ; line 882
    %t140 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 46
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %T_alfa* %t140
    ; line 882
    %t141 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 46
    store i1 0, i1* %t141
    ; line 882
    %t142 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 46
    store i32 0, i32* %t142
    ; line 883
    %t143 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 47
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), %T_alfa* %t143
    ; line 883
    %t144 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 47
    store i1 0, i1* %t144
    ; line 883
    %t145 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 47
    store i32 0, i32* %t145
    ; line 884
    %t146 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 48
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), %T_alfa* %t146
    ; line 884
    %t147 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 48
    store i1 0, i1* %t147
    ; line 884
    %t148 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 48
    store i32 0, i32* %t148
    ; line 885
    %t149 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 49
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), %T_alfa* %t149
    ; line 885
    %t150 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 49
    store i1 0, i1* %t150
    ; line 885
    %t151 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 49
    store i32 0, i32* %t151
    ; line 886
    %t152 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 50
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %T_alfa* %t152
    ; line 886
    %t153 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 50
    store i1 0, i1* %t153
    ; line 886
    %t154 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 50
    store i32 0, i32* %t154
    ; line 887
    %t155 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 51
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), %T_alfa* %t155
    ; line 887
    %t156 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 51
    store i1 0, i1* %t156
    ; line 887
    %t157 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 51
    store i32 0, i32* %t157
    ; line 888
    %t158 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 52
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), %T_alfa* %t158
    ; line 888
    %t159 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 52
    store i1 0, i1* %t159
    ; line 888
    %t160 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 52
    store i32 0, i32* %t160
    ; line 889
    %t161 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 53
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), %T_alfa* %t161
    ; line 889
    %t162 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 53
    store i1 0, i1* %t162
    ; line 889
    %t163 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 53
    store i32 0, i32* %t163
    ; line 890
    %t164 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 54
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), %T_alfa* %t164
    ; line 890
    %t165 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 54
    store i1 0, i1* %t165
    ; line 890
    %t166 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 54
    store i32 0, i32* %t166
    ; line 891
    %t167 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 55
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %T_alfa* %t167
    ; line 891
    %t168 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 55
    store i1 0, i1* %t168
    ; line 891
    %t169 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 55
    store i32 4, i32* %t169
    ; line 892
    %t170 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 56
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %T_alfa* %t170
    ; line 892
    %t171 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 56
    store i1 0, i1* %t171
    ; line 892
    %t172 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 56
    store i32 4, i32* %t172
    ; line 893
    %t173 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 57
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), %T_alfa* %t173
    ; line 893
    %t174 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 57
    store i1 0, i1* %t174
    ; line 893
    %t175 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 57
    store i32 4, i32* %t175
    ; line 894
    %t176 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 58
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %T_alfa* %t176
    ; line 894
    %t177 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 58
    store i1 0, i1* %t177
    ; line 894
    %t178 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 58
    store i32 0, i32* %t178
    ; line 895
    %t179 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 59
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t179
    ; line 895
    %t180 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 59
    store i1 0, i1* %t180
    ; line 895
    %t181 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 59
    store i32 0, i32* %t181
    ; line 896
    %t182 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 60
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %T_alfa* %t182
    ; line 896
    %t183 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 60
    store i1 0, i1* %t183
    ; line 896
    %t184 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 60
    store i32 0, i32* %t184
    ; line 897
    %t185 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 61
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), %T_alfa* %t185
    ; line 897
    %t186 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 61
    store i1 0, i1* %t186
    ; line 897
    %t187 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 61
    store i32 4, i32* %t187
    ; line 898
    %t188 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 62
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), %T_alfa* %t188
    ; line 898
    %t189 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 62
    store i1 0, i1* %t189
    ; line 898
    %t190 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 62
    store i32 0, i32* %t190
    ; line 899
    %t191 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 63
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %T_alfa* %t191
    ; line 899
    %t192 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 63
    store i1 0, i1* %t192
    ; line 899
    %t193 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 63
    store i32 4, i32* %t193
    ; line 900
    %t194 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 64
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), %T_alfa* %t194
    ; line 900
    %t195 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 64
    store i1 0, i1* %t195
    ; line 900
    %t196 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 64
    store i32 4, i32* %t196
    ; line 901
    %t197 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 65
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %T_alfa* %t197
    ; line 901
    %t198 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 65
    store i1 0, i1* %t198
    ; line 901
    %t199 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 65
    store i32 4, i32* %t199
    ; line 902
    %t200 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 66
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), %T_alfa* %t200
    ; line 902
    %t201 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 66
    store i1 0, i1* %t201
    ; line 902
    %t202 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 66
    store i32 4, i32* %t202
    ; line 903
    %t203 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 67
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %T_alfa* %t203
    ; line 903
    %t204 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 67
    store i1 0, i1* %t204
    ; line 903
    %t205 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 67
    store i32 4, i32* %t205
    ; line 904
    %t206 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 68
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), %T_alfa* %t206
    ; line 904
    %t207 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 68
    store i1 0, i1* %t207
    ; line 904
    %t208 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 68
    store i32 4, i32* %t208
    ; line 905
    %t209 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 69
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), %T_alfa* %t209
    ; line 905
    %t210 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 69
    store i1 0, i1* %t210
    ; line 905
    %t211 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 69
    store i32 4, i32* %t211
    ; line 906
    %t212 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 70
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), %T_alfa* %t212
    ; line 906
    %t213 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 70
    store i1 1, i1* %t213
    ; line 906
    %t214 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 70
    store i32 4, i32* %t214
    ; line 907
    %t215 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 71
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %T_alfa* %t215
    ; line 907
    %t216 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 71
    store i1 1, i1* %t216
    ; line 907
    %t217 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 71
    store i32 4, i32* %t217
    ; line 908
    %t218 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 72
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), %T_alfa* %t218
    ; line 908
    %t219 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 72
    store i1 1, i1* %t219
    ; line 908
    %t220 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 72
    store i32 4, i32* %t220
    ; line 909
    %t221 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 73
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), %T_alfa* %t221
    ; line 909
    %t222 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 73
    store i1 1, i1* %t222
    ; line 909
    %t223 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 73
    store i32 4, i32* %t223
    ; line 910
    %t224 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 74
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), %T_alfa* %t224
    ; line 910
    %t225 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 74
    store i1 1, i1* %t225
    ; line 910
    %t226 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 74
    store i32 4, i32* %t226
    ; line 911
    %t227 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 75
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), %T_alfa* %t227
    ; line 911
    %t228 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 75
    store i1 0, i1* %t228
    ; line 911
    %t229 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 75
    store i32 4, i32* %t229
    ; line 912
    %t230 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 76
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %T_alfa* %t230
    ; line 912
    %t231 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 76
    store i1 0, i1* %t231
    ; line 912
    %t232 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 76
    store i32 4, i32* %t232
    ; line 913
    %t233 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 77
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), %T_alfa* %t233
    ; line 913
    %t234 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 77
    store i1 0, i1* %t234
    ; line 913
    %t235 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 77
    store i32 4, i32* %t235
    ; line 914
    %t236 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 78
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), %T_alfa* %t236
    ; line 914
    %t237 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 78
    store i1 0, i1* %t237
    ; line 914
    %t238 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 78
    store i32 4, i32* %t238
    ; line 915
    %t239 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 79
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), %T_alfa* %t239
    ; line 915
    %t240 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 79
    store i1 0, i1* %t240
    ; line 915
    %t241 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 79
    store i32 4, i32* %t241
    ; line 916
    %t242 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 80
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), %T_alfa* %t242
    ; line 916
    %t243 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 80
    store i1 0, i1* %t243
    ; line 916
    %t244 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 80
    store i32 0, i32* %t244
    ; line 917
    %t245 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 81
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), %T_alfa* %t245
    ; line 917
    %t246 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 81
    store i1 0, i1* %t246
    ; line 917
    %t247 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 81
    store i32 0, i32* %t247
    ; line 918
    %t248 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 82
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), %T_alfa* %t248
    ; line 918
    %t249 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 82
    store i1 0, i1* %t249
    ; line 918
    %t250 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 82
    store i32 0, i32* %t250
    ; line 919
    %t251 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 83
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), %T_alfa* %t251
    ; line 919
    %t252 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 83
    store i1 0, i1* %t252
    ; line 919
    %t253 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 83
    store i32 0, i32* %t253
    ; line 920
    %t254 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 84
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), %T_alfa* %t254
    ; line 920
    %t255 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 84
    store i1 0, i1* %t255
    ; line 920
    %t256 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 84
    store i32 0, i32* %t256
    ; line 921
    %t257 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 85
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), %T_alfa* %t257
    ; line 921
    %t258 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 85
    store i1 0, i1* %t258
    ; line 921
    %t259 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 85
    store i32 4, i32* %t259
    ; line 922
    %t260 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 86
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), %T_alfa* %t260
    ; line 922
    %t261 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 86
    store i1 0, i1* %t261
    ; line 922
    %t262 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 86
    store i32 4, i32* %t262
    ; line 923
    %t263 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 87
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), %T_alfa* %t263
    ; line 923
    %t264 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 87
    store i1 0, i1* %t264
    ; line 923
    %t265 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 87
    store i32 4, i32* %t265
    ; line 924
    %t266 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 88
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), %T_alfa* %t266
    ; line 924
    %t267 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 88
    store i1 0, i1* %t267
    ; line 924
    %t268 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 88
    store i32 4, i32* %t268
    ; line 925
    %t269 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 89
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), %T_alfa* %t269
    ; line 925
    %t270 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 89
    store i1 0, i1* %t270
    ; line 925
    %t271 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 89
    store i32 4, i32* %t271
    ; line 926
    %t272 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 90
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), %T_alfa* %t272
    ; line 926
    %t273 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 90
    store i1 0, i1* %t273
    ; line 926
    %t274 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 90
    store i32 4, i32* %t274
    ; line 927
    %t275 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 91
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), %T_alfa* %t275
    ; line 927
    %t276 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 91
    store i1 0, i1* %t276
    ; line 927
    %t277 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 91
    store i32 4, i32* %t277
    ; line 928
    %t278 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 92
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), %T_alfa* %t278
    ; line 928
    %t279 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 92
    store i1 0, i1* %t279
    ; line 928
    %t280 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 92
    store i32 4, i32* %t280
    ; line 929
    %t281 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 93
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), %T_alfa* %t281
    ; line 929
    %t282 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 93
    store i1 0, i1* %t282
    ; line 929
    %t283 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 93
    store i32 4, i32* %t283
    ; line 930
    %t284 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 94
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), %T_alfa* %t284
    ; line 930
    %t285 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 94
    store i1 0, i1* %t285
    ; line 930
    %t286 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 94
    store i32 4, i32* %t286
    ; line 931
    %t287 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 95
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), %T_alfa* %t287
    ; line 931
    %t288 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 95
    store i1 0, i1* %t288
    ; line 931
    %t289 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 95
    store i32 4, i32* %t289
    ; line 932
    %t290 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 96
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), %T_alfa* %t290
    ; line 932
    %t291 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 96
    store i1 0, i1* %t291
    ; line 932
    %t292 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 96
    store i32 4, i32* %t292
    ; line 933
    %t293 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 97
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), %T_alfa* %t293
    ; line 933
    %t294 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 97
    store i1 0, i1* %t294
    ; line 933
    %t295 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 97
    store i32 4, i32* %t295
    ; line 934
    %t296 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 98
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), %T_alfa* %t296
    ; line 934
    %t297 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 98
    store i1 0, i1* %t297
    ; line 934
    %t298 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 98
    store i32 4, i32* %t298
    ; line 935
    %t299 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 99
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0), %T_alfa* %t299
    ; line 935
    %t300 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 99
    store i1 0, i1* %t300
    ; line 935
    %t301 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 99
    store i32 4, i32* %t301
    ; line 936
    %t302 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 100
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), %T_alfa* %t302
    ; line 936
    %t303 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 100
    store i1 0, i1* %t303
    ; line 936
    %t304 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 100
    store i32 4, i32* %t304
    ; line 937
    %t305 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 101
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), %T_alfa* %t305
    ; line 937
    %t306 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 101
    store i1 0, i1* %t306
    ; line 937
    %t307 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 101
    store i32 4, i32* %t307
    ; line 938
    %t308 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 102
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), %T_alfa* %t308
    ; line 938
    %t309 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 102
    store i1 0, i1* %t309
    ; line 938
    %t310 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 102
    store i32 4, i32* %t310
    ; line 939
    %t311 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 103
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), %T_alfa* %t311
    ; line 939
    %t312 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 103
    store i1 0, i1* %t312
    ; line 939
    %t313 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 103
    store i32 4, i32* %t313
    ; line 940
    %t314 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 104
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), %T_alfa* %t314
    ; line 940
    %t315 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 104
    store i1 0, i1* %t315
    ; line 940
    %t316 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 104
    store i32 4, i32* %t316
    ; line 941
    %t317 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 105
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), %T_alfa* %t317
    ; line 941
    %t318 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 105
    store i1 1, i1* %t318
    ; line 941
    %t319 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 105
    store i32 4, i32* %t319
    ; line 942
    %t320 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 106
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), %T_alfa* %t320
    ; line 942
    %t321 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 106
    store i1 1, i1* %t321
    ; line 942
    %t322 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 106
    store i32 4, i32* %t322
    ; line 943
    %t323 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 107
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), %T_alfa* %t323
    ; line 943
    %t324 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 107
    store i1 1, i1* %t324
    ; line 943
    %t325 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 107
    store i32 4, i32* %t325
    ; line 944
    %t326 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 108
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), %T_alfa* %t326
    ; line 944
    %t327 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 108
    store i1 1, i1* %t327
    ; line 944
    %t328 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 108
    store i32 4, i32* %t328
    ; line 945
    %t329 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 109
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), %T_alfa* %t329
    ; line 945
    %t330 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 109
    store i1 1, i1* %t330
    ; line 945
    %t331 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 109
    store i32 4, i32* %t331
    ; line 946
    %t332 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 110
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), %T_alfa* %t332
    ; line 946
    %t333 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 110
    store i1 0, i1* %t333
    ; line 946
    %t334 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 110
    store i32 0, i32* %t334
    ; line 947
    %t335 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 111
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0), %T_alfa* %t335
    ; line 947
    %t336 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 111
    store i1 0, i1* %t336
    ; line 947
    %t337 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 111
    store i32 0, i32* %t337
    ; line 948
    %t338 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 112
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.132, i32 0, i32 0), %T_alfa* %t338
    ; line 948
    %t339 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 112
    store i1 1, i1* %t339
    ; line 948
    %t340 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 112
    store i32 4, i32* %t340
    ; line 949
    %t341 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 113
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0), %T_alfa* %t341
    ; line 949
    %t342 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 113
    store i1 1, i1* %t342
    ; line 949
    %t343 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 113
    store i32 0, i32* %t343
    ; line 950
    %t344 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 114
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), %T_alfa* %t344
    ; line 950
    %t345 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 114
    store i1 1, i1* %t345
    ; line 950
    %t346 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 114
    store i32 4, i32* %t346
    ; line 951
    %t347 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 115
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0), %T_alfa* %t347
    ; line 951
    %t348 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 115
    store i1 0, i1* %t348
    ; line 951
    %t349 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 115
    store i32 0, i32* %t349
    ; line 952
    %t350 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 116
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), %T_alfa* %t350
    ; line 952
    %t351 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 116
    store i1 0, i1* %t351
    ; line 952
    %t352 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 116
    store i32 0, i32* %t352
    ; line 953
    %t353 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 117
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), %T_alfa* %t353
    ; line 953
    %t354 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 117
    store i1 0, i1* %t354
    ; line 953
    %t355 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 117
    store i32 4, i32* %t355
    ; line 954
    %t356 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 118
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0), %T_alfa* %t356
    ; line 954
    %t357 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 118
    store i1 0, i1* %t357
    ; line 954
    %t358 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 118
    store i32 4, i32* %t358
    ; line 955
    %t359 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 119
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i32 0, i32 0), %T_alfa* %t359
    ; line 955
    %t360 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 119
    store i1 0, i1* %t360
    ; line 955
    %t361 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 119
    store i32 4, i32* %t361
    ; line 956
    %t362 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 120
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), %T_alfa* %t362
    ; line 956
    %t363 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 120
    store i1 1, i1* %t363
    ; line 956
    %t364 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 120
    store i32 4, i32* %t364
    ; line 957
    %t365 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 121
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t365
    ; line 957
    %t366 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 121
    store i1 0, i1* %t366
    ; line 957
    %t367 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 121
    store i32 0, i32* %t367
    ; line 958
    %t368 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 122
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t368
    ; line 958
    %t369 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 122
    store i1 0, i1* %t369
    ; line 958
    %t370 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 122
    store i32 0, i32* %t370
    ; line 959
    %t371 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 123
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0), %T_alfa* %t371
    ; line 959
    %t372 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 123
    store i1 0, i1* %t372
    ; line 959
    %t373 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 123
    store i32 4, i32* %t373
    ; line 960
    %t374 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 124
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.142, i32 0, i32 0), %T_alfa* %t374
    ; line 960
    %t375 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 124
    store i1 0, i1* %t375
    ; line 960
    %t376 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 124
    store i32 4, i32* %t376
    ; line 961
    %t377 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 125
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), %T_alfa* %t377
    ; line 961
    %t378 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 125
    store i1 0, i1* %t378
    ; line 961
    %t379 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 125
    store i32 0, i32* %t379
    ; line 962
    %t380 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 126
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), %T_alfa* %t380
    ; line 962
    %t381 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 126
    store i1 0, i1* %t381
    ; line 962
    %t382 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 126
    store i32 1, i32* %t382
    ; line 963
    %t383 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 127
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i32 0, i32 0), %T_alfa* %t383
    ; line 963
    %t384 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 127
    store i1 0, i1* %t384
    ; line 963
    %t385 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 127
    store i32 1, i32* %t385
    ; line 964
    %t386 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 128
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0), %T_alfa* %t386
    ; line 964
    %t387 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 128
    store i1 0, i1* %t387
    ; line 964
    %t388 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 128
    store i32 0, i32* %t388
    ; line 965
    %t389 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 129
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.147, i32 0, i32 0), %T_alfa* %t389
    ; line 965
    %t390 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 129
    store i1 0, i1* %t390
    ; line 965
    %t391 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 129
    store i32 0, i32* %t391
    ; line 966
    %t392 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 130
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0), %T_alfa* %t392
    ; line 966
    %t393 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 130
    store i1 0, i1* %t393
    ; line 966
    %t394 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 130
    store i32 0, i32* %t394
    ; line 967
    %t395 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 131
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i32 0, i32 0), %T_alfa* %t395
    ; line 967
    %t396 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 131
    store i1 0, i1* %t396
    ; line 967
    %t397 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 131
    store i32 0, i32* %t397
    ; line 968
    %t398 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 132
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), %T_alfa* %t398
    ; line 968
    %t399 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 132
    store i1 0, i1* %t399
    ; line 968
    %t400 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 132
    store i32 0, i32* %t400
    ; line 969
    %t401 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 133
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), %T_alfa* %t401
    ; line 969
    %t402 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 133
    store i1 0, i1* %t402
    ; line 969
    %t403 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 133
    store i32 0, i32* %t403
    ; line 970
    %t404 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 134
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), %T_alfa* %t404
    ; line 970
    %t405 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 134
    store i1 0, i1* %t405
    ; line 970
    %t406 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 134
    store i32 0, i32* %t406
    ; line 971
    %t407 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 135
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.153, i32 0, i32 0), %T_alfa* %t407
    ; line 971
    %t408 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 135
    store i1 0, i1* %t408
    ; line 971
    %t409 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 135
    store i32 0, i32* %t409
    ; line 972
    %t410 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 136
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.154, i32 0, i32 0), %T_alfa* %t410
    ; line 972
    %t411 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 136
    store i1 0, i1* %t411
    ; line 972
    %t412 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 136
    store i32 0, i32* %t412
    ; line 973
    %t413 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 137
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), %T_alfa* %t413
    ; line 973
    %t414 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 137
    store i1 0, i1* %t414
    ; line 973
    %t415 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 137
    store i32 0, i32* %t415
    ; line 974
    %t416 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 138
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i32 0, i32 0), %T_alfa* %t416
    ; line 974
    %t417 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 138
    store i1 0, i1* %t417
    ; line 974
    %t418 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 138
    store i32 0, i32* %t418
    ; line 975
    %t419 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 139
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.157, i32 0, i32 0), %T_alfa* %t419
    ; line 975
    %t420 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 139
    store i1 0, i1* %t420
    ; line 975
    %t421 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 139
    store i32 0, i32* %t421
    ; line 976
    %t422 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 140
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0), %T_alfa* %t422
    ; line 976
    %t423 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 140
    store i1 0, i1* %t423
    ; line 976
    %t424 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 140
    store i32 0, i32* %t424
    ; line 977
    %t425 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 141
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.159, i32 0, i32 0), %T_alfa* %t425
    ; line 977
    %t426 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 141
    store i1 0, i1* %t426
    ; line 977
    %t427 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 141
    store i32 0, i32* %t427
    ; line 978
    %t428 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 142
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), %T_alfa* %t428
    ; line 978
    %t429 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 142
    store i1 0, i1* %t429
    ; line 978
    %t430 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 142
    store i32 4, i32* %t430
    ; line 979
    %t431 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 143
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.161, i32 0, i32 0), %T_alfa* %t431
    ; line 979
    %t432 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 143
    store i1 0, i1* %t432
    ; line 979
    %t433 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 143
    store i32 0, i32* %t433
    ; line 980
    %t434 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 144
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.162, i32 0, i32 0), %T_alfa* %t434
    ; line 980
    %t435 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 144
    store i1 0, i1* %t435
    ; line 980
    %t436 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 144
    store i32 0, i32* %t436
    ; line 981
    %t437 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 145
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i32 0, i32 0), %T_alfa* %t437
    ; line 981
    %t438 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 145
    store i1 0, i1* %t438
    ; line 981
    %t439 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 145
    store i32 0, i32* %t439
    ; line 982
    %t440 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 146
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0), %T_alfa* %t440
    ; line 982
    %t441 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 146
    store i1 0, i1* %t441
    ; line 982
    %t442 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 146
    store i32 0, i32* %t442
    ; line 983
    %t443 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 147
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i32 0, i32 0), %T_alfa* %t443
    ; line 983
    %t444 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 147
    store i1 0, i1* %t444
    ; line 983
    %t445 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 147
    store i32 0, i32* %t445
    ; line 984
    %t446 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 148
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), %T_alfa* %t446
    ; line 984
    %t447 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 148
    store i1 0, i1* %t447
    ; line 984
    %t448 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 148
    store i32 4, i32* %t448
    ; line 985
    %t449 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 149
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.167, i32 0, i32 0), %T_alfa* %t449
    ; line 985
    %t450 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 149
    store i1 0, i1* %t450
    ; line 985
    %t451 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 149
    store i32 0, i32* %t451
    ; line 986
    %t452 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 150
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i32 0, i32 0), %T_alfa* %t452
    ; line 986
    %t453 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 150
    store i1 0, i1* %t453
    ; line 986
    %t454 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 150
    store i32 0, i32* %t454
    ; line 987
    %t455 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 151
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), %T_alfa* %t455
    ; line 987
    %t456 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 151
    store i1 0, i1* %t456
    ; line 987
    %t457 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 151
    store i32 0, i32* %t457
    ; line 988
    %t458 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 152
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i32 0, i32 0), %T_alfa* %t458
    ; line 988
    %t459 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 152
    store i1 0, i1* %t459
    ; line 988
    %t460 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 152
    store i32 0, i32* %t460
    ; line 989
    %t461 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 153
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i32 0, i32 0), %T_alfa* %t461
    ; line 989
    %t462 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 153
    store i1 0, i1* %t462
    ; line 989
    %t463 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 153
    store i32 0, i32* %t463
    ; line 990
    %t464 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 154
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.172, i32 0, i32 0), %T_alfa* %t464
    ; line 990
    %t465 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 154
    store i1 0, i1* %t465
    ; line 990
    %t466 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 154
    store i32 4, i32* %t466
    ; line 991
    %t467 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 155
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i32 0, i32 0), %T_alfa* %t467
    ; line 991
    %t468 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 155
    store i1 0, i1* %t468
    ; line 991
    %t469 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 155
    store i32 0, i32* %t469
    ; line 992
    %t470 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 156
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.174, i32 0, i32 0), %T_alfa* %t470
    ; line 992
    %t471 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 156
    store i1 0, i1* %t471
    ; line 992
    %t472 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 156
    store i32 0, i32* %t472
    ; line 993
    %t473 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 157
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i32 0, i32 0), %T_alfa* %t473
    ; line 993
    %t474 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 157
    store i1 0, i1* %t474
    ; line 993
    %t475 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 157
    store i32 0, i32* %t475
    ; line 994
    %t476 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 158
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), %T_alfa* %t476
    ; line 994
    %t477 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 158
    store i1 0, i1* %t477
    ; line 994
    %t478 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 158
    store i32 0, i32* %t478
    ; line 995
    %t479 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 159
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i32 0, i32 0), %T_alfa* %t479
    ; line 995
    %t480 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 159
    store i1 0, i1* %t480
    ; line 995
    %t481 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 159
    store i32 0, i32* %t481
    ; line 996
    %t482 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 160
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i32 0, i32 0), %T_alfa* %t482
    ; line 996
    %t483 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 160
    store i1 0, i1* %t483
    ; line 996
    %t484 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 160
    store i32 4, i32* %t484
    ; line 997
    %t485 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 161
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0), %T_alfa* %t485
    ; line 997
    %t486 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 161
    store i1 0, i1* %t486
    ; line 997
    %t487 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 161
    store i32 0, i32* %t487
    ; line 998
    %t488 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 162
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.180, i32 0, i32 0), %T_alfa* %t488
    ; line 998
    %t489 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 162
    store i1 0, i1* %t489
    ; line 998
    %t490 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 162
    store i32 0, i32* %t490
    ; line 999
    %t491 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 163
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.181, i32 0, i32 0), %T_alfa* %t491
    ; line 999
    %t492 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 163
    store i1 0, i1* %t492
    ; line 999
    %t493 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 163
    store i32 0, i32* %t493
    ; line 1000
    %t494 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 164
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i32 0, i32 0), %T_alfa* %t494
    ; line 1000
    %t495 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 164
    store i1 0, i1* %t495
    ; line 1000
    %t496 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 164
    store i32 0, i32* %t496
    ; line 1001
    %t497 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 165
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.183, i32 0, i32 0), %T_alfa* %t497
    ; line 1001
    %t498 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 165
    store i1 0, i1* %t498
    ; line 1001
    %t499 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 165
    store i32 0, i32* %t499
    ; line 1002
    %t500 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 166
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.184, i32 0, i32 0), %T_alfa* %t500
    ; line 1002
    %t501 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 166
    store i1 0, i1* %t501
    ; line 1002
    %t502 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 166
    store i32 4, i32* %t502
    ; line 1003
    %t503 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 167
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i32 0, i32 0), %T_alfa* %t503
    ; line 1003
    %t504 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 167
    store i1 0, i1* %t504
    ; line 1003
    %t505 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 167
    store i32 0, i32* %t505
    ; line 1004
    %t506 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 168
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.186, i32 0, i32 0), %T_alfa* %t506
    ; line 1004
    %t507 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 168
    store i1 0, i1* %t507
    ; line 1004
    %t508 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 168
    store i32 0, i32* %t508
    ; line 1005
    %t509 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 169
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), %T_alfa* %t509
    ; line 1005
    %t510 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 169
    store i1 0, i1* %t510
    ; line 1005
    %t511 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 169
    store i32 0, i32* %t511
    ; line 1006
    %t512 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 170
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.188, i32 0, i32 0), %T_alfa* %t512
    ; line 1006
    %t513 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 170
    store i1 0, i1* %t513
    ; line 1006
    %t514 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 170
    store i32 0, i32* %t514
    ; line 1007
    %t515 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 171
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.189, i32 0, i32 0), %T_alfa* %t515
    ; line 1007
    %t516 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 171
    store i1 0, i1* %t516
    ; line 1007
    %t517 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 171
    store i32 0, i32* %t517
    ; line 1008
    %t518 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 172
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0), %T_alfa* %t518
    ; line 1008
    %t519 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 172
    store i1 0, i1* %t519
    ; line 1008
    %t520 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 172
    store i32 4, i32* %t520
    ; line 1009
    %t521 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 173
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.191, i32 0, i32 0), %T_alfa* %t521
    ; line 1009
    %t522 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 173
    store i1 0, i1* %t522
    ; line 1009
    %t523 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 173
    store i32 4, i32* %t523
    ; line 1010
    %t524 = getelementptr inbounds %T_array_10, %T_array_10* @instr, i32 0, i32 174
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i32 0, i32 0), %T_alfa* %t524
    ; line 1010
    %t525 = getelementptr inbounds %T_array_7, %T_array_7* @insp, i32 0, i32 174
    store i1 0, i1* %t525
    ; line 1010
    %t526 = getelementptr inbounds %T_array_8, %T_array_8* @insq, i32 0, i32 174
    store i32 4, i32* %t526
    ; line 1013
    %t527 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i32 0, i32 0), %T_alfa* %t527
    ; line 1013
    %t528 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.194, i32 0, i32 0), %T_alfa* %t528
    ; line 1014
    %t529 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t529
    ; line 1014
    %t530 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.195, i32 0, i32 0), %T_alfa* %t530
    ; line 1015
    %t531 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.196, i32 0, i32 0), %T_alfa* %t531
    ; line 1015
    %t532 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i32 0, i32 0), %T_alfa* %t532
    ; line 1016
    %t533 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.198, i32 0, i32 0), %T_alfa* %t533
    ; line 1016
    %t534 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.199, i32 0, i32 0), %T_alfa* %t534
    ; line 1017
    %t535 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i32 0, i32 0), %T_alfa* %t535
    ; line 1017
    %t536 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i32 0, i32 0), %T_alfa* %t536
    ; line 1018
    %t537 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.202, i32 0, i32 0), %T_alfa* %t537
    ; line 1018
    %t538 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.203, i32 0, i32 0), %T_alfa* %t538
    ; line 1019
    %t539 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.204, i32 0, i32 0), %T_alfa* %t539
    ; line 1019
    %t540 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i32 0, i32 0), %T_alfa* %t540
    ; line 1020
    %t541 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i32 0, i32 0), %T_alfa* %t541
    ; line 1020
    %t542 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.207, i32 0, i32 0), %T_alfa* %t542
    ; line 1021
    %t543 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.208, i32 0, i32 0), %T_alfa* %t543
    ; line 1021
    %t544 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.209, i32 0, i32 0), %T_alfa* %t544
    ; line 1022
    %t545 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.210, i32 0, i32 0), %T_alfa* %t545
    ; line 1022
    %t546 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.211, i32 0, i32 0), %T_alfa* %t546
    ; line 1023
    %t547 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t547
    ; line 1023
    %t548 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.212, i32 0, i32 0), %T_alfa* %t548
    ; line 1024
    %t549 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.213, i32 0, i32 0), %T_alfa* %t549
    ; line 1024
    %t550 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.214, i32 0, i32 0), %T_alfa* %t550
    ; line 1025
    %t551 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.215, i32 0, i32 0), %T_alfa* %t551
    ; line 1025
    %t552 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.216, i32 0, i32 0), %T_alfa* %t552
    ; line 1026
    %t553 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i32 0, i32 0), %T_alfa* %t553
    ; line 1026
    %t554 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.218, i32 0, i32 0), %T_alfa* %t554
    ; line 1027
    %t555 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 28
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.219, i32 0, i32 0), %T_alfa* %t555
    ; line 1027
    %t556 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 29
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.220, i32 0, i32 0), %T_alfa* %t556
    ; line 1028
    %t557 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 30
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.221, i32 0, i32 0), %T_alfa* %t557
    ; line 1028
    %t558 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 31
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.222, i32 0, i32 0), %T_alfa* %t558
    ; line 1029
    %t559 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 32
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.223, i32 0, i32 0), %T_alfa* %t559
    ; line 1029
    %t560 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 33
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.224, i32 0, i32 0), %T_alfa* %t560
    ; line 1030
    %t561 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 34
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.225, i32 0, i32 0), %T_alfa* %t561
    ; line 1030
    %t562 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 35
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.226, i32 0, i32 0), %T_alfa* %t562
    ; line 1031
    %t563 = getelementptr inbounds %T_array_11, %T_array_11* @sptable, i32 0, i32 36
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.227, i32 0, i32 0), %T_alfa* %t563
    ; line 1033
    store i32 9, i32* @pc
    ; line 1034
    store i32 200000, i32* @cp
    ; line 1035
    ; line 1036
    ; line 1039
    ; line 1042
    ; line 1044
    %t565 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    %t566 = load %Frame_load*, %Frame_load** %t565
    %t564 = getelementptr inbounds %Frame_load, %Frame_load* %t566, i32 0, i32 1
    store i32 1, i32* %t564

    ; epilogue
    ret void
}


; line 1047
;================================================================================
; scope: load_errorl (level : 3)

; activation record
%Frame_load_errorl = type
{
    ; parameters
    %T_beta,    ; 0: string

    ; slink
    %Frame_load*    ; 1
};

; procedure body
define void @P_load_errorl(%Frame_load* %.slink, %T_beta %string)
{
    ; allocate frame
    %.frame = alloca %Frame_load_errorl, align 8
    %t1 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 1
    store %Frame_load* %.slink, %Frame_load** %t1
    %t2 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 0
    store %T_beta %string, %T_beta* %t2

    ; body
    ; line 1048
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 1049
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.228, i32 0, i32 0), i32 25)
    %t7 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 1
    %t8 = load %Frame_load*, %Frame_load** %t7
    %t6 = getelementptr inbounds %Frame_load, %Frame_load* %t8, i32 0, i32 1
    %t5 = load i32, i32* %t6
    call void @_WriteInteger(i8* %t4, i32 1, i32 0, i32 %t5)
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.229, i32 0, i32 0), i32 2)
    %t9 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 0
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds (%T_beta, %T_beta* %t9, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t4)
    ; line 1050

    ; epilogue
    ret void
}


; line 1053
;================================================================================
; scope: load_dmplabs (level : 3)

; activation record
%Frame_load_dmplabs = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_load*    ; 1
};

; procedure body
define void @P_load_dmplabs(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_dmplabs, align 8
    %t1 = getelementptr inbounds %Frame_load_dmplabs, %Frame_load_dmplabs* %.frame, i32 0, i32 1
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 1059
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 1060
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.230, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t3)
    ; line 1061
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 1062
    ; line 1069
    %t5 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t5)

    ; epilogue
    ret void
}


; line 1073
;================================================================================
; scope: load_update (level : 3)

; activation record
%Frame_load_update = type
{
    ; parameters
    i32,    ; 0: x

    ; variables
    i32,    ; 1: ad
    i32,    ; 2: curr
    i1,    ; 3: endlist
    i32,    ; 4: op
    i32,    ; 5: q
    i32,    ; 6: succ

    ; slink
    %Frame_load*    ; 7
};

; procedure body
define void @P_load_update(%Frame_load* %.slink, i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_load_update, align 8
    %t1 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    store %Frame_load* %.slink, %Frame_load** %t1
    %t2 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    store i32 %x, i32* %t2

    ; body
    ; line 1079
    %t5 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t6 = load %Frame_load*, %Frame_load** %t5
    %t4 = getelementptr inbounds %Frame_load, %Frame_load* %t6, i32 0, i32 2
    %t8 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_load_array_39, %T_load_array_39* %t4, i32 0, i32 %t7
    %t11 = getelementptr inbounds %T_load_labelrec, %T_load_labelrec* %t9, i32 0, i32 4
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    %t3 = icmp eq i32 %t12, 1
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1079
    %t13 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t14 = load %Frame_load*, %Frame_load** %t13
    call void @P_load_errorl(%Frame_load* %t14, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.231, i32 0, i32 0))
    br label %L_endif_1
L_else_1:
    ; line 1081
    %t17 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t18 = load %Frame_load*, %Frame_load** %t17
    %t16 = getelementptr inbounds %Frame_load, %Frame_load* %t18, i32 0, i32 2
    %t20 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t21 = getelementptr inbounds %T_load_array_39, %T_load_array_39* %t16, i32 0, i32 %t19
    %t23 = getelementptr inbounds %T_load_labelrec, %T_load_labelrec* %t21, i32 0, i32 0
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t25 = sub i32 0, 1
    %t15 = icmp ne i32 %t24, %t25
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1082
    %t26 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 2
    %t28 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t29 = load %Frame_load*, %Frame_load** %t28
    %t27 = getelementptr inbounds %Frame_load, %Frame_load* %t29, i32 0, i32 2
    %t31 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    %t30 = load i32, i32* %t31
    %t32 = getelementptr inbounds %T_load_array_39, %T_load_array_39* %t27, i32 0, i32 %t30
    %t34 = getelementptr inbounds %T_load_labelrec, %T_load_labelrec* %t32, i32 0, i32 0
    %t33 = bitcast i8* %t34 to i32*
    %t35 = load i32, i32* %t33
    store i32 %t35, i32* %t26
    ; line 1082
    %t36 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 3
    store i1 0, i1* %t36
    ; line 1083
    br label %L_endif_2
L_endif_2:
    ; line 1095
    %t38 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t39 = load %Frame_load*, %Frame_load** %t38
    %t37 = getelementptr inbounds %Frame_load, %Frame_load* %t39, i32 0, i32 2
    %t41 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    %t40 = load i32, i32* %t41
    %t42 = getelementptr inbounds %T_load_array_39, %T_load_array_39* %t37, i32 0, i32 %t40
    %t44 = getelementptr inbounds %T_load_labelrec, %T_load_labelrec* %t42, i32 0, i32 4
    %t43 = bitcast i8* %t44 to i32*
    store i32 1, i32* %t43
    ; line 1096
    %t46 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t47 = load %Frame_load*, %Frame_load** %t46
    %t45 = getelementptr inbounds %Frame_load, %Frame_load* %t47, i32 0, i32 2
    %t49 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    %t48 = load i32, i32* %t49
    %t50 = getelementptr inbounds %T_load_array_39, %T_load_array_39* %t45, i32 0, i32 %t48
    %t52 = getelementptr inbounds %T_load_labelrec, %T_load_labelrec* %t50, i32 0, i32 0
    %t51 = bitcast i8* %t52 to i32*
    %t55 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 7
    %t56 = load %Frame_load*, %Frame_load** %t55
    %t54 = getelementptr inbounds %Frame_load, %Frame_load* %t56, i32 0, i32 3
    %t53 = load i32, i32* %t54
    store i32 %t53, i32* %t51
    ; nop
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1100
;================================================================================
; scope: load_getnxt (level : 3)

; activation record
%Frame_load_getnxt = type
{
    ; slink
    %Frame_load*    ; 0
};

; procedure body
define void @P_load_getnxt(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_getnxt, align 8
    %t1 = getelementptr inbounds %Frame_load_getnxt, %Frame_load_getnxt* %.frame, i32 0, i32 0
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 1102
    %t3 = getelementptr inbounds %Frame_load_getnxt, %Frame_load_getnxt* %.frame, i32 0, i32 0
    %t4 = load %Frame_load*, %Frame_load** %t3
    %t2 = getelementptr inbounds %Frame_load, %Frame_load* %t4, i32 0, i32 0
    store i8 32, i8* %t2
    ; line 1103
    %t5 = icmp eq i1 0, %.dummy.intrin
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1103
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1106
;================================================================================
; scope: load_skpspc (level : 3)

; activation record
%Frame_load_skpspc = type
{
    ; slink
    %Frame_load*    ; 0
};

; procedure body
define void @P_load_skpspc(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_skpspc, align 8
    %t1 = getelementptr inbounds %Frame_load_skpspc, %Frame_load_skpspc* %.frame, i32 0, i32 0
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 1108

    ; epilogue
    ret void
}


; line 1111
;================================================================================
; scope: load_getlin (level : 3)

; activation record
%Frame_load_getlin = type
{
    ; slink
    %Frame_load*    ; 0
};

; procedure body
define void @P_load_getlin(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_getlin, align 8
    %t1 = getelementptr inbounds %Frame_load_getlin, %Frame_load_getlin* %.frame, i32 0, i32 0
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 1113
    ; line 1114
    %t3 = getelementptr inbounds %Frame_load_getlin, %Frame_load_getlin* %.frame, i32 0, i32 0
    %t4 = load %Frame_load*, %Frame_load** %t3
    %t2 = getelementptr inbounds %Frame_load, %Frame_load* %t4, i32 0, i32 1
    %t8 = getelementptr inbounds %Frame_load_getlin, %Frame_load_getlin* %.frame, i32 0, i32 0
    %t9 = load %Frame_load*, %Frame_load** %t8
    %t7 = getelementptr inbounds %Frame_load, %Frame_load* %t9, i32 0, i32 1
    %t6 = load i32, i32* %t7
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* %t2

    ; epilogue
    ret void
}


; line 1119
;================================================================================
; scope: load_generate (level : 3)

; activation record
%Frame_load_generate = type
{
    ; variables
    i1,    ; 0: again
    i32,    ; 1: x

    ; slink
    %Frame_load*    ; 2
};

; procedure body
define void @P_load_generate(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_generate, align 8
    %t1 = getelementptr inbounds %Frame_load_generate, %Frame_load_generate* %.frame, i32 0, i32 2
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 1123
    %t2 = getelementptr inbounds %Frame_load_generate, %Frame_load_generate* %.frame, i32 0, i32 0
    store i1 1, i1* %t2
    ; line 1124

    ; epilogue
    ret void
}


; line 1160
;================================================================================
; scope: load_assemble (level : 3)

; types
%T_load_assemble_array_41 = type [1000 x i8]

; activation record
%Frame_load_assemble = type
{
    ; variables
    i8,    ; 0: c
    i32,    ; 1: i
    i32,    ; 2: l
    i32,    ; 3: lb
    %T_alfa,    ; 4: name
    double,    ; 5: r
    %T_settype,    ; 6: s
    i32,    ; 7: s1
    %T_load_assemble_array_41,    ; 8: str
    i32,    ; 9: t
    i32,    ; 10: ub
    i32,    ; 11: x

    ; slink
    %Frame_load*    ; 12
};

; procedure body
define void @P_load_assemble(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %.frame, i32 0, i32 12
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    ; line 1220
    store i32 0, i32* @p
    ; line 1220
    store i32 0, i32* @q
    ; line 1220
    store i32 0, i32* @op
    ; line 1221
    call void @P_load_assemble_getname(%Frame_load_assemble* %.frame)
    ; line 1223
    ; line 1224
    %t3 = load i32, i32* @op
    %t2 = icmp eq i32 %t3, 255
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1224
    %t4 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %.frame, i32 0, i32 12
    %t5 = load %Frame_load*, %Frame_load** %t4
    call void @P_load_errorl(%Frame_load* %t5, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.232, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1226
    ; line 1401
    %t6 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %.frame, i32 0, i32 12
    %t7 = load %Frame_load*, %Frame_load** %t6
    call void @P_load_getlin(%Frame_load* %t7)

    ; epilogue
    ret void
}


; line 1166
;================================================================================
; scope: load_assemble_lookup (level : 4)

; activation record
%Frame_load_assemble_lookup = type
{
    ; parameters
    i32,    ; 0: x

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_lookup(%Frame_load_assemble* %.slink, i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_lookup, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_lookup, %Frame_load_assemble_lookup* %.frame, i32 0, i32 1
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1
    %t2 = getelementptr inbounds %Frame_load_assemble_lookup, %Frame_load_assemble_lookup* %.frame, i32 0, i32 0
    store i32 %x, i32* %t2

    ; body
    ; line 1167

    ; epilogue
    ret void
}


; line 1175
;================================================================================
; scope: load_assemble_labelsearch (level : 4)

; activation record
%Frame_load_assemble_labelsearch = type
{
    ; variables
    i32,    ; 0: x

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_labelsearch(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_labelsearch, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_labelsearch, %Frame_load_assemble_labelsearch* %.frame, i32 0, i32 1
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; line 1177
    ; line 1178
    ; line 1178
    %t2 = getelementptr inbounds %Frame_load_assemble_labelsearch, %Frame_load_assemble_labelsearch* %.frame, i32 0, i32 1
    %t3 = load %Frame_load_assemble*, %Frame_load_assemble** %t2
    %t5 = getelementptr inbounds %Frame_load_assemble_labelsearch, %Frame_load_assemble_labelsearch* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    call void @P_load_assemble_lookup(%Frame_load_assemble* %t3, i32 %t4)

    ; epilogue
    ret void
}


; line 1181
;================================================================================
; scope: load_assemble_getname (level : 4)

; activation record
%Frame_load_assemble_getname = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_getname(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_getname, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_getname, %Frame_load_assemble_getname* %.frame, i32 0, i32 1
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; line 1184
    br i1 %.dummy.intrin, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1184
    %t2 = getelementptr inbounds %Frame_load_assemble_getname, %Frame_load_assemble_getname* %.frame, i32 0, i32 1
    %t3 = load %Frame_load_assemble*, %Frame_load_assemble** %t2
    %t4 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t3, i32 0, i32 12
    %t5 = load %Frame_load*, %Frame_load** %t4
    call void @P_load_errorl(%Frame_load* %t5, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.233, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1185
    ; line 1186
    %t6 = getelementptr inbounds %Frame_load_assemble_getname, %Frame_load_assemble_getname* %.frame, i32 0, i32 0
    store i32 1, i32* %t6
    ; line 1187
    ; line 1193

    ; epilogue
    ret void
}


; line 1196
;================================================================================
; scope: load_assemble_storeop (level : 4)

; activation record
%Frame_load_assemble_storeop = type
{
    ; slink
    %Frame_load_assemble*    ; 0
};

; procedure body
define void @P_load_assemble_storeop(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_storeop, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_storeop, %Frame_load_assemble_storeop* %.frame, i32 0, i32 0
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; line 1198
    %t4 = load i32, i32* @pc
    %t3 = add i32 %t4, 1
    %t5 = load i32, i32* @cp
    %t2 = icmp sgt i32 %t3, %t5
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1198
    %t6 = getelementptr inbounds %Frame_load_assemble_storeop, %Frame_load_assemble_storeop* %.frame, i32 0, i32 0
    %t7 = load %Frame_load_assemble*, %Frame_load_assemble** %t6
    %t8 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t7, i32 0, i32 12
    %t9 = load %Frame_load*, %Frame_load** %t8
    call void @P_load_errorl(%Frame_load* %t9, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1199
    %t10 = load i32, i32* @pc
    %t11 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t10
    %t12 = load i32, i32* @op
    store i32 %t12, i32* %t11
    ; line 1199
    %t14 = load i32, i32* @pc
    %t13 = add i32 %t14, 1
    store i32 %t13, i32* @pc

    ; epilogue
    ret void
}


; line 1202
;================================================================================
; scope: load_assemble_storep (level : 4)

; activation record
%Frame_load_assemble_storep = type
{
    ; slink
    %Frame_load_assemble*    ; 0
};

; procedure body
define void @P_load_assemble_storep(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_storep, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_storep, %Frame_load_assemble_storep* %.frame, i32 0, i32 0
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; line 1204
    %t4 = load i32, i32* @pc
    %t3 = add i32 %t4, 1
    %t5 = load i32, i32* @cp
    %t2 = icmp sgt i32 %t3, %t5
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1204
    %t6 = getelementptr inbounds %Frame_load_assemble_storep, %Frame_load_assemble_storep* %.frame, i32 0, i32 0
    %t7 = load %Frame_load_assemble*, %Frame_load_assemble** %t6
    %t8 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t7, i32 0, i32 12
    %t9 = load %Frame_load*, %Frame_load** %t8
    call void @P_load_errorl(%Frame_load* %t9, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1205
    %t10 = load i32, i32* @pc
    %t11 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t10
    %t12 = load i32, i32* @p
    store i32 %t12, i32* %t11
    ; line 1205
    %t14 = load i32, i32* @pc
    %t13 = add i32 %t14, 1
    store i32 %t13, i32* @pc

    ; epilogue
    ret void
}


; line 1208
;================================================================================
; scope: load_assemble_storeq (level : 4)

; activation record
%Frame_load_assemble_storeq = type
{
    ; slink
    %Frame_load_assemble*    ; 0
};

; procedure body
define void @P_load_assemble_storeq(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_storeq, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_storeq, %Frame_load_assemble_storeq* %.frame, i32 0, i32 0
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; line 1210
    %t4 = load i32, i32* @pc
    %t3 = add i32 %t4, 4
    %t5 = load i32, i32* @cp
    %t2 = icmp sgt i32 %t3, %t5
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1210
    %t6 = getelementptr inbounds %Frame_load_assemble_storeq, %Frame_load_assemble_storeq* %.frame, i32 0, i32 0
    %t7 = load %Frame_load_assemble*, %Frame_load_assemble** %t6
    %t8 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t7, i32 0, i32 12
    %t9 = load %Frame_load*, %Frame_load** %t8
    call void @P_load_errorl(%Frame_load* %t9, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1211
    %t10 = load i32, i32* @pc
    %t11 = load i32, i32* @q
    call void @P_putadr(i32 %t10, i32 %t11)
    ; line 1211
    %t13 = load i32, i32* @pc
    %t12 = add i32 %t13, 4
    store i32 %t12, i32* @pc

    ; epilogue
    ret void
}


; line 1214
;================================================================================
; scope: load_assemble_storeq1 (level : 4)

; activation record
%Frame_load_assemble_storeq1 = type
{
    ; slink
    %Frame_load_assemble*    ; 0
};

; procedure body
define void @P_load_assemble_storeq1(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_storeq1, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_storeq1, %Frame_load_assemble_storeq1* %.frame, i32 0, i32 0
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; line 1216
    %t4 = load i32, i32* @pc
    %t3 = add i32 %t4, 4
    %t5 = load i32, i32* @cp
    %t2 = icmp sgt i32 %t3, %t5
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1216
    %t6 = getelementptr inbounds %Frame_load_assemble_storeq1, %Frame_load_assemble_storeq1* %.frame, i32 0, i32 0
    %t7 = load %Frame_load_assemble*, %Frame_load_assemble** %t6
    %t8 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t7, i32 0, i32 12
    %t9 = load %Frame_load*, %Frame_load** %t8
    call void @P_load_errorl(%Frame_load* %t9, %T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.234, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1217
    %t10 = load i32, i32* @pc
    %t11 = load i32, i32* @q1
    call void @P_putadr(i32 %t10, i32 %t11)
    ; line 1217
    %t13 = load i32, i32* @pc
    %t12 = add i32 %t13, 4
    store i32 %t12, i32* @pc

    ; epilogue
    ret void
}


; line 1436
;================================================================================
; scope: pmd (level : 2)

; activation record
%Frame_pmd = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: s

    ; dummy
    i8*
};

; procedure body
define void @P_pmd()
{
    ; allocate frame
    %.frame = alloca %Frame_pmd, align 8

    ; body
    ; line 1449
    br i1 0, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1450
    %t1 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1)
    ; line 1451
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.235, i32 0, i32 0), i32 5)
    ; line 1451
    %t4 = load i32, i32* @pc
    %t3 = sub i32 %t4, 1
    call void @P_wrthex(i32 %t3, i32 6)
    ; line 1452
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.236, i32 0, i32 0), i32 6)
    %t6 = load i32, i32* @op
    call void @_WriteInteger(i8* %t5, i32 3, i32 0, i32 %t6)
    ; line 1453
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.237, i32 0, i32 0), i32 6)
    ; line 1453
    %t8 = load i32, i32* @sp
    call void @P_wrthex(i32 %t8, i32 6)
    ; line 1454
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), i32 6)
    ; line 1454
    %t10 = load i32, i32* @mp
    call void @P_wrthex(i32 %t10, i32 6)
    ; line 1455
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.239, i32 0, i32 0), i32 6)
    ; line 1455
    %t12 = load i32, i32* @np
    call void @P_wrthex(i32 %t12, i32 6)
    ; line 1456
    %t13 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.240, i32 0, i32 0), i32 6)
    ; line 1456
    %t14 = load i32, i32* @cp
    call void @P_wrthex(i32 %t14, i32 6)
    ; line 1457
    %t15 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t15)
    ; line 1458
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.241, i32 0, i32 0), i32 60)
    ; line 1459
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.242, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t17)
    ; line 1461
    %t18 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t18)
    ; line 1462
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.243, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t19)
    ; line 1463
    %t20 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t20)
    ; line 1464
    %t21 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 1
    %t22 = load i32, i32* @sp
    store i32 %t22, i32* %t21
    ; line 1464
    %t23 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 0
    store i32 0, i32* %t23
    ; line 1465
    ; line 1466
    %t24 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t24)
    ; line 1467
    %t25 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t25)
    ; line 1468
    %t26 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t26, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.244, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t26)
    ; line 1469
    %t27 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t27)
    ; line 1470
    %t28 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 1
    store i32 200000, i32* %t28
    ; line 1470
    %t29 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 0
    store i32 0, i32* %t29
    ; line 1471
    ; line 1472
    %t30 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t30)
    ; line 1473
    %t31 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t31)
    ; line 1474
    %t32 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t32, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.245, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t32)
    ; line 1475
    %t33 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t33)
    ; line 1476
    %t34 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 1
    %t36 = load i32, i32* @cp
    %t35 = sub i32 %t36, 1
    store i32 %t35, i32* %t34
    ; line 1476
    %t37 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 0
    store i32 0, i32* %t37
    ; line 1477
    ; line 1478
    %t38 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t38)
    ; nop
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1439
;================================================================================
; scope: pmd_pt (level : 3)

; activation record
%Frame_pmd_pt = type
{
    ; slink
    %Frame_pmd*    ; 0
};

; procedure body
define void @P_pmd_pt(%Frame_pmd* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_pmd_pt, align 8
    %t1 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    store %Frame_pmd* %.slink, %Frame_pmd** %t1

    ; body
    ; line 1440
    %t5 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t6 = load %Frame_pmd*, %Frame_pmd** %t5
    %t4 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t6, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t2 = icmp eq i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1440
    %t9 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t10 = load %Frame_pmd*, %Frame_pmd** %t9
    %t8 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t10, i32 0, i32 1
    %t7 = load i32, i32* %t8
    call void @P_wrthex(i32 %t7, i32 6)
    ; line 1440
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2)
    br label %L_endif_1
L_endif_1:
    ; line 1441
    %t14 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t15 = load %Frame_pmd*, %Frame_pmd** %t14
    %t13 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t15, i32 0, i32 1
    %t12 = load i32, i32* %t13
    %t16 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t12
    %t17 = load i32, i32* %t16
    call void @P_wrthex(i32 %t17, i32 2)
    ; line 1441
    %t18 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t18, i32 0, i32 0, i8 32)
    ; line 1442
    %t20 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t21 = load %Frame_pmd*, %Frame_pmd** %t20
    %t19 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t21, i32 0, i32 1
    %t25 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t26 = load %Frame_pmd*, %Frame_pmd** %t25
    %t24 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t26, i32 0, i32 1
    %t23 = load i32, i32* %t24
    %t22 = sub i32 %t23, 1
    store i32 %t22, i32* %t19
    ; line 1443
    %t28 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t29 = load %Frame_pmd*, %Frame_pmd** %t28
    %t27 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t29, i32 0, i32 0
    %t33 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t34 = load %Frame_pmd*, %Frame_pmd** %t33
    %t32 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t34, i32 0, i32 0
    %t31 = load i32, i32* %t32
    %t30 = add i32 %t31, 1
    store i32 %t30, i32* %t27
    ; line 1444
    %t38 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t39 = load %Frame_pmd*, %Frame_pmd** %t38
    %t37 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t39, i32 0, i32 0
    %t36 = load i32, i32* %t37
    %t35 = icmp eq i32 %t36, 16
    br i1 %t35, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1445
    %t40 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t40)
    ; line 1445
    %t42 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t43 = load %Frame_pmd*, %Frame_pmd** %t42
    %t41 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t43, i32 0, i32 0
    store i32 0, i32* %t41
    br label %L_endif_2
L_endif_2:
    ; nop

    ; epilogue
    ret void
}


; line 1482
;================================================================================
; scope: errori (level : 2)

; activation record
%Frame_errori = type
{
    ; parameters
    %T_beta,    ; 0: string

    ; dummy
    i8*
};

; procedure body
define void @P_errori(%T_beta %string)
{
    ; allocate frame
    %.frame = alloca %Frame_errori, align 8
    %t1 = getelementptr inbounds %Frame_errori, %Frame_errori* %.frame, i32 0, i32 0
    store %T_beta %string, %T_beta* %t1

    ; body
    ; line 1483
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 1483
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.246, i32 0, i32 0), i32 17)
    ; line 1484
    %t5 = load i32, i32* @srclin
    %t4 = icmp sgt i32 %t5, 0
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1484
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.247, i32 0, i32 0), i32 2)
    %t7 = load i32, i32* @srclin
    call void @_WriteInteger(i8* %t6, i32 1, i32 0, i32 %t7)
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 93)
    br label %L_endif_1
L_endif_1:
    ; line 1485
    %t8 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2)
    %t9 = getelementptr inbounds %Frame_errori, %Frame_errori* %.frame, i32 0, i32 0
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds (%T_beta, %T_beta* %t9, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t8)
    ; line 1486
    call void @P_pmd()
    ; line 1486

    ; epilogue
    ret void
}


; line 1489
;================================================================================
; scope: base (level : 2)

; activation record
%Frame_base = type
{
    ; parameters
    i32,    ; 0: ld

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: ad

    ; dummy
    i8*
};

; function body
define i32 @F_base(i32 %ld)
{
    ; allocate frame
    %.frame = alloca %Frame_base, align 8
    %t1 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 0
    store i32 %ld, i32* %t1

    ; body
    ; line 1491
    %t2 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 2
    %t3 = load i32, i32* @mp
    store i32 %t3, i32* %t2
    ; line 1492
    ; line 1493
    %t4 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
}


; line 1496
;================================================================================
; scope: compare (level : 2)

; activation record
%Frame_compare = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_compare()
{
    ; allocate frame
    %.frame = alloca %Frame_compare, align 8

    ; body
    ; line 1499
    call void @P_popadr(i32* @a2)
    ; line 1500
    call void @P_popadr(i32* @a1)
    ; line 1501
    store i32 0, i32* @i
    ; line 1501
    store i1 1, i1* @b
    ; line 1502

    ; epilogue
    ret void
}


; line 1507
;================================================================================
; scope: valfil (level : 2)

; activation record
%Frame_valfil = type
{
    ; parameters
    i32,    ; 0: fa

    ; variables
    i32,    ; 1: ff
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_valfil(i32 %fa)
{
    ; allocate frame
    %.frame = alloca %Frame_valfil, align 8
    %t1 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    store i32 %fa, i32* %t1

    ; body
    ; line 1510
    %t4 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t3
    %t6 = load i32, i32* %t5
    %t2 = icmp eq i32 %t6, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1511
    %t9 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t11 = load i32, i32* @pctop
    %t10 = add i32 %t11, 32
    %t7 = icmp eq i32 %t8, %t10
    br i1 %t7, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1511
    %t12 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    store i32 1, i32* %t12
    br label %L_endif_2
L_else_2:
    ; line 1512
    %t15 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    %t17 = load i32, i32* @pctop
    %t16 = add i32 %t17, 34
    %t13 = icmp eq i32 %t14, %t16
    br i1 %t13, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1512
    %t18 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    store i32 2, i32* %t18
    br label %L_endif_3
L_else_3:
    ; line 1513
    %t21 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    %t23 = load i32, i32* @pctop
    %t22 = add i32 %t23, 36
    %t19 = icmp eq i32 %t20, %t22
    br i1 %t19, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1513
    %t24 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    store i32 3, i32* %t24
    br label %L_endif_4
L_else_4:
    ; line 1514
    %t27 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    %t26 = load i32, i32* %t27
    %t29 = load i32, i32* @pctop
    %t28 = add i32 %t29, 38
    %t25 = icmp eq i32 %t26, %t28
    br i1 %t25, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1514
    %t30 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    store i32 4, i32* %t30
    br label %L_endif_5
L_else_5:
    ; line 1516
    %t31 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 2
    store i32 5, i32* %t31
    ; line 1517
    %t32 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    store i32 0, i32* %t32
    ; line 1518
    ; line 1522
    %t35 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    %t34 = load i32, i32* %t35
    %t33 = icmp eq i32 %t34, 0
    br i1 %t33, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1522
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.248, i32 0, i32 0))
    br label %L_endif_6
L_endif_6:
    ; nop
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 1524
    %t37 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 0
    %t36 = load i32, i32* %t37
    %t38 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t36
    %t40 = getelementptr inbounds %Frame_valfil, %Frame_valfil* %.frame, i32 0, i32 1
    %t39 = load i32, i32* %t40
    store i32 %t39, i32* %t38
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1528
;================================================================================
; scope: valfilwm (level : 2)

; activation record
%Frame_valfilwm = type
{
    ; parameters
    i32,    ; 0: fa

    ; dummy
    i8*
};

; procedure body
define void @P_valfilwm(i32 %fa)
{
    ; allocate frame
    %.frame = alloca %Frame_valfilwm, align 8
    %t1 = getelementptr inbounds %Frame_valfilwm, %Frame_valfilwm* %.frame, i32 0, i32 0
    store i32 %fa, i32* %t1

    ; body
    ; line 1530
    %t3 = getelementptr inbounds %Frame_valfilwm, %Frame_valfilwm* %.frame, i32 0, i32 0
    %t2 = load i32, i32* %t3
    call void @P_valfil(i32 %t2)
    ; line 1531
    %t6 = getelementptr inbounds %Frame_valfilwm, %Frame_valfilwm* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    %t7 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t5
    %t8 = load i32, i32* %t7
    %t9 = getelementptr inbounds %T_array_5, %T_array_5* @filstate, i32 0, i32 %t8
    %t10 = load i32, i32* %t9
    %t4 = icmp ne i32 %t10, 2
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1531
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.249, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1534
;================================================================================
; scope: valfilrm (level : 2)

; activation record
%Frame_valfilrm = type
{
    ; parameters
    i32,    ; 0: fa

    ; dummy
    i8*
};

; procedure body
define void @P_valfilrm(i32 %fa)
{
    ; allocate frame
    %.frame = alloca %Frame_valfilrm, align 8
    %t1 = getelementptr inbounds %Frame_valfilrm, %Frame_valfilrm* %.frame, i32 0, i32 0
    store i32 %fa, i32* %t1

    ; body
    ; line 1536
    %t3 = getelementptr inbounds %Frame_valfilrm, %Frame_valfilrm* %.frame, i32 0, i32 0
    %t2 = load i32, i32* %t3
    call void @P_valfil(i32 %t2)
    ; line 1537
    %t6 = getelementptr inbounds %Frame_valfilrm, %Frame_valfilrm* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    %t7 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t5
    %t8 = load i32, i32* %t7
    %t9 = getelementptr inbounds %T_array_5, %T_array_5* @filstate, i32 0, i32 %t8
    %t10 = load i32, i32* %t9
    %t4 = icmp ne i32 %t10, 1
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1537
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.250, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1540
;================================================================================
; scope: getop (level : 2)

; activation record
%Frame_getop = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_getop()
{
    ; allocate frame
    %.frame = alloca %Frame_getop, align 8

    ; body
    ; line 1544
    %t1 = load i32, i32* @pc
    %t2 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t1
    %t3 = load i32, i32* %t2
    store i32 %t3, i32* @op
    ; line 1544
    %t5 = load i32, i32* @pc
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* @pc

    ; epilogue
    ret void
}


; line 1548
;================================================================================
; scope: getp (level : 2)

; activation record
%Frame_getp = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_getp()
{
    ; allocate frame
    %.frame = alloca %Frame_getp, align 8

    ; body
    ; line 1552
    %t1 = load i32, i32* @pc
    %t2 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t1
    %t3 = load i32, i32* %t2
    store i32 %t3, i32* @p
    ; line 1552
    %t5 = load i32, i32* @pc
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* @pc

    ; epilogue
    ret void
}


; line 1556
;================================================================================
; scope: getq (level : 2)

; activation record
%Frame_getq = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_getq()
{
    ; allocate frame
    %.frame = alloca %Frame_getq, align 8

    ; body
    ; line 1560
    %t1 = load i32, i32* @pc
    %t2 = call i32 @F_getadr(i32 %t1)
    store i32 %t2, i32* @q
    ; line 1560
    %t4 = load i32, i32* @pc
    %t3 = add i32 %t4, 4
    store i32 %t3, i32* @pc

    ; epilogue
    ret void
}


; line 1564
;================================================================================
; scope: getq1 (level : 2)

; activation record
%Frame_getq1 = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_getq1()
{
    ; allocate frame
    %.frame = alloca %Frame_getq1, align 8

    ; body
    ; line 1568
    %t1 = load i32, i32* @pc
    %t2 = call i32 @F_getadr(i32 %t1)
    store i32 %t2, i32* @q1
    ; line 1568
    %t4 = load i32, i32* @pc
    %t3 = add i32 %t4, 4
    store i32 %t3, i32* @pc

    ; epilogue
    ret void
}


; line 1585
;================================================================================
; scope: repspc (level : 2)

; activation record
%Frame_repspc = type
{
    ; variables
    i32,    ; 0: ad
    i32,    ; 1: l

    ; dummy
    i8*
};

; procedure body
define void @P_repspc()
{
    ; allocate frame
    %.frame = alloca %Frame_repspc, align 8

    ; body
    ; line 1588
    %t1 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1)
    ; line 1589
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.251, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2)
    ; line 1590
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 1591
    %t4 = getelementptr inbounds %Frame_repspc, %Frame_repspc* %.frame, i32 0, i32 0
    %t5 = load i32, i32* @np
    store i32 %t5, i32* %t4
    ; line 1592

    ; epilogue
    ret void
}


; line 1602
;================================================================================
; scope: fndfre (level : 2)

; activation record
%Frame_fndfre = type
{
    ; parameters
    i32*,    ; 0: blk
    i32,    ; 1: len

    ; variables
    i32,    ; 2: b
    i32,    ; 3: l

    ; dummy
    i8*
};

; procedure body
define void @P_fndfre(i32 %len, i32* %blk)
{
    ; allocate frame
    %.frame = alloca %Frame_fndfre, align 8
    %t1 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 0
    store i32* %blk, i32** %t1
    %t2 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 1
    store i32 %len, i32* %t2

    ; body
    ; line 1605
    %t3 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    store i32 0, i32* %t3
    ; line 1606
    %t4 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t6 = load i32, i32* @np
    store i32 %t6, i32* %t5
    ; line 1607
    ; line 1612
    %t9 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    %t7 = icmp sgt i32 %t8, 0
    br i1 %t7, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1613
    %t11 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    %t10 = load i32, i32* %t11
    %t14 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 1
    %t13 = load i32, i32* %t14
    %t12 = add i32 %t13, 4
    %t15 = sub i32 0, %t12
    call void @P_putadr(i32 %t10, i32 %t15)
    ; line 1614
    %t16 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 0
    %t17 = load i32*, i32** %t16
    %t20 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    %t19 = load i32, i32* %t20
    %t18 = add i32 %t19, 4
    store i32 %t18, i32* %t17
    ; line 1615
    %t23 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 3
    %t22 = load i32, i32* %t23
    %t28 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 1
    %t27 = load i32, i32* %t28
    %t26 = add i32 %t27, 4
    %t25 = add i32 %t26, 4
    %t24 = add i32 %t25, 0
    %t21 = icmp sgt i32 %t22, %t24
    br i1 %t21, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1618
    %t29 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    %t33 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    %t32 = load i32, i32* %t33
    %t35 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 1
    %t34 = load i32, i32* %t35
    %t31 = add i32 %t32, %t34
    %t30 = add i32 %t31, 4
    store i32 %t30, i32* %t29
    ; line 1619
    %t37 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 2
    %t36 = load i32, i32* %t37
    %t40 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 3
    %t39 = load i32, i32* %t40
    %t43 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 1
    %t42 = load i32, i32* %t43
    %t41 = add i32 %t42, 4
    %t38 = sub i32 %t39, %t41
    call void @P_putadr(i32 %t36, i32 %t38)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 1621
    %t44 = getelementptr inbounds %Frame_fndfre, %Frame_fndfre* %.frame, i32 0, i32 0
    %t45 = load i32*, i32** %t44
    store i32 0, i32* %t45
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1626
;================================================================================
; scope: cscspc (level : 2)

; activation record
%Frame_cscspc = type
{
    ; variables
    i32,    ; 0: ad
    i32,    ; 1: ad1
    i1,    ; 2: done
    i32,    ; 3: l
    i32,    ; 4: l1

    ; dummy
    i8*
};

; procedure body
define void @P_cscspc()
{
    ; allocate frame
    %.frame = alloca %Frame_cscspc, align 8

    ; body
    ; line 1631
    %t1 = getelementptr inbounds %Frame_cscspc, %Frame_cscspc* %.frame, i32 0, i32 2
    store i1 0, i1* %t1
    ; line 1632
    ; line 1638
    %t2 = getelementptr inbounds %Frame_cscspc, %Frame_cscspc* %.frame, i32 0, i32 0
    %t3 = load i32, i32* @np
    store i32 %t3, i32* %t2
    ; line 1639

    ; epilogue
    ret void
}


; line 1655
;================================================================================
; scope: newspc (level : 2)

; activation record
%Frame_newspc = type
{
    ; parameters
    i32*,    ; 0: blk
    i32,    ; 1: len

    ; variables
    i32,    ; 2: ad
    i32,    ; 3: ad1

    ; dummy
    i8*
};

; procedure body
define void @P_newspc(i32 %len, i32* %blk)
{
    ; allocate frame
    %.frame = alloca %Frame_newspc, align 8
    %t1 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 0
    store i32* %blk, i32** %t1
    %t2 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 1
    store i32 %len, i32* %t2

    ; body
    ; line 1658
    %t4 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 0
    %t6 = load i32*, i32** %t5
    call void @P_fndfre(i32 %t3, i32* %t6)
    ; line 1659
    %t9 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 0
    %t10 = load i32*, i32** %t9
    %t8 = load i32, i32* %t10
    %t7 = icmp eq i32 %t8, 0
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1660
    %t11 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t13 = load i32, i32* @np
    %t16 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 1
    %t15 = load i32, i32* %t16
    %t14 = add i32 %t15, 4
    %t12 = sub i32 %t13, %t14
    store i32 %t12, i32* %t11
    ; line 1661
    %t17 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 3
    %t19 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    store i32 %t18, i32* %t17
    ; line 1662
    %t20 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    call void @P_alignd(i32 4, i32* %t20)
    ; line 1663
    %t21 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 1
    %t24 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 1
    %t23 = load i32, i32* %t24
    %t27 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 3
    %t26 = load i32, i32* %t27
    %t29 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t28 = load i32, i32* %t29
    %t25 = sub i32 %t26, %t28
    %t22 = add i32 %t23, %t25
    store i32 %t22, i32* %t21
    ; line 1664
    %t32 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t31 = load i32, i32* %t32
    %t33 = load i32, i32* @ep
    %t30 = icmp sle i32 %t31, %t33
    br i1 %t30, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1664
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.252, i32 0, i32 0))
    br label %L_endif_2
L_endif_2:
    ; line 1665
    %t35 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t34 = load i32, i32* %t35
    store i32 %t34, i32* @np
    ; line 1666
    %t37 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t36 = load i32, i32* %t37
    %t40 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 1
    %t39 = load i32, i32* %t40
    %t38 = add i32 %t39, 4
    %t41 = sub i32 0, %t38
    call void @P_putadr(i32 %t36, i32 %t41)
    ; line 1667
    %t42 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 0
    %t43 = load i32*, i32** %t42
    %t46 = getelementptr inbounds %Frame_newspc, %Frame_newspc* %.frame, i32 0, i32 2
    %t45 = load i32, i32* %t46
    %t44 = add i32 %t45, 4
    store i32 %t44, i32* %t43
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1673
;================================================================================
; scope: dspspc (level : 2)

; activation record
%Frame_dspspc = type
{
    ; parameters
    i32,    ; 0: blk
    i32,    ; 1: len

    ; variables
    i32,    ; 2: ad

    ; dummy
    i8*
};

; procedure body
define void @P_dspspc(i32 %len, i32 %blk)
{
    ; allocate frame
    %.frame = alloca %Frame_dspspc, align 8
    %t1 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 0
    store i32 %blk, i32* %t1
    %t2 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 1
    store i32 %len, i32* %t2

    ; body
    ; line 1676
    %t3 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
    ; line 1677
    %t8 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t6 = icmp eq i32 %t7, 0
    br i1 %t6, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1677
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.253, i32 0, i32 0))
    br label %L_endif_1
L_else_1:
    ; line 1678
    %t11 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t9 = icmp eq i32 %t10, 1
    br i1 %t9, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1678
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
    br label %L_endif_2
L_else_2:
    ; line 1679
    br label %L_OR_expr_3
L_OR_expr_3:
    %t15 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    %t16 = load i32, i32* @np
    %t13 = icmp slt i32 %t14, %t16
    br i1 %t13, label %L_OR_shortcut_3, label %L_OR_eval_3
L_OR_eval_3:
    %t19 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 0
    %t18 = load i32, i32* %t19
    %t20 = load i32, i32* @cp
    %t17 = icmp sge i32 %t18, %t20
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t12 = phi [%t17, %L_OR_eval_3], [true, %L_OR_expr_3]
    br i1 %t12, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1679
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.255, i32 0, i32 0))
    br label %L_endif_4
L_endif_4:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 1680
    %t21 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 2
    %t24 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 0
    %t23 = load i32, i32* %t24
    %t22 = sub i32 %t23, 4
    store i32 %t22, i32* %t21
    ; line 1681
    %t27 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 2
    %t26 = load i32, i32* %t27
    %t28 = call i32 @F_getadr(i32 %t26)
    %t25 = icmp sge i32 %t28, 0
    br i1 %t25, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 1681
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.256, i32 0, i32 0))
    br label %L_endif_5
L_endif_5:
    ; line 1682
    br label %L_AND_expr_6
L_AND_expr_6:
    br i1 1, label %L_AND_eval_6, label %L_AND_shortcut_6
L_AND_eval_6:
    %t30 = icmp eq i1 0, 0
    br label %L_AND_shortcut_6
L_AND_shortcut_6:
    %t29 = phi [%t30, %L_AND_eval_6], [false, %L_AND_expr_6]
    br i1 %t29, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 1683
    %t32 = getelementptr inbounds %Frame_dspspc, %Frame_dspspc* %.frame, i32 0, i32 2
    %t31 = load i32, i32* %t32
    call void @P_putadr(i32 %t31, i32 %.dummy.intrin)
    ; line 1684
    call void @P_cscspc()
    br label %L_endif_7
L_endif_7:

    ; epilogue
    ret void
}


; line 1690
;================================================================================
; scope: isfree (level : 2)

; activation record
%Frame_isfree = type
{
    ; parameters
    i32,    ; 0: blk

    ; variables
    i1,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_isfree(i32 %blk)
{
    ; allocate frame
    %.frame = alloca %Frame_isfree, align 8
    %t1 = getelementptr inbounds %Frame_isfree, %Frame_isfree* %.frame, i32 0, i32 0
    store i32 %blk, i32* %t1

    ; body
    ; line 1692
    %t2 = getelementptr inbounds %Frame_isfree, %Frame_isfree* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_isfree, %Frame_isfree* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    %t4 = sub i32 %t5, 4
    %t7 = call i32 @F_getadr(i32 %t4)
    %t3 = icmp sge i32 %t7, 0
    store i1 %t3, i1* %t2

    ; epilogue
    %t8 = getelementptr inbounds %Frame_isfree, %Frame_isfree* %.frame, i32 0, i32 1
    %t9 = load i1, i1* %t8
    ret i1 %t9
}


; line 1697
;================================================================================
; scope: callsp (level : 2)

; activation record
%Frame_callsp = type
{
    ; variables
    i32,    ; 0: ad
    i32,    ; 1: ad1
    i1,    ; 2: b
    i8,    ; 3: c
    i32,    ; 4: f
    i32,    ; 5: fn
    i32,    ; 6: i
    i32,    ; 7: j
    i32,    ; 8: l
    i1,    ; 9: line
    double,    ; 10: r
    i32,    ; 11: w

    ; dummy
    i8*
};

; procedure body
define void @P_callsp()
{
    ; allocate frame
    %.frame = alloca %Frame_callsp, align 8

    ; body
    ; line 1739
    %t2 = load i32, i32* @q
    %t1 = icmp sgt i32 %t2, 36
    br i1 %t1, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1739
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.257, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1742
    br i1 0, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1742
    %t3 = load %T_text, %T_text* @output
    %t4 = load i32, i32* @pc
    call void @_WriteInteger(i8* %t3, i32 6, i32 0, i32 %t4)
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 47)
    %t5 = load i32, i32* @sp
    call void @_WriteInteger(i8* %t3, i32 6, i32 0, i32 %t5)
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.258, i32 0, i32 0), i32 3)
    %t6 = load i32, i32* @q
    call void @_WriteInteger(i8* %t3, i32 2, i32 0, i32 %t6)
    call void @_WriteLn(i8* %t3)
    br label %L_endif_2
L_endif_2:
    ; line 1744
    ; nop

    ; epilogue
    ret void
}


; line 1706
;================================================================================
; scope: callsp_readi (level : 3)

; activation record
%Frame_callsp_readi = type
{
    ; parameters
    %T_text*,    ; 0: f
    i32*,    ; 1: i

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readi(%Frame_callsp* %.slink, %T_text* %f, i32* %i)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_readi, align 8
    %t1 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 1
    store i32* %i, i32** %t3

    ; body
    ; line 1707
    br i1 %.dummy.intrin, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1707
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.259, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1708
    ; nop

    ; epilogue
    ret void
}


; line 1711
;================================================================================
; scope: callsp_readr (level : 3)

; activation record
%Frame_callsp_readr = type
{
    ; parameters
    %T_text*,    ; 0: f
    double*,    ; 1: r

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readr(%Frame_callsp* %.slink, %T_text* %f, double* %r)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_readr, align 8
    %t1 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 1
    store double* %r, double** %t3

    ; body
    ; line 1712
    br i1 %.dummy.intrin, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1712
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.259, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1713
    ; nop

    ; epilogue
    ret void
}


; line 1716
;================================================================================
; scope: callsp_readc (level : 3)

; activation record
%Frame_callsp_readc = type
{
    ; parameters
    i8*,    ; 0: c
    %T_text*,    ; 1: f

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readc(%Frame_callsp* %.slink, %T_text* %f, i8* %c)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_readc, align 8
    %t1 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 0
    store i8* %c, i8** %t2
    %t3 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 1
    store %T_text* %f, %T_text** %t3

    ; body
    ; line 1717
    br i1 %.dummy.intrin, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1717
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.259, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1718
    ; nop

    ; epilogue
    ret void
}


; line 1721
;================================================================================
; scope: callsp_writestr (level : 3)

; activation record
%Frame_callsp_writestr = type
{
    ; parameters
    i32,    ; 0: ad
    %T_text*,    ; 1: f
    i32,    ; 2: l
    i32,    ; 3: w

    ; variables
    i32,    ; 4: i

    ; slink
    %Frame_callsp*    ; 5
};

; procedure body
define void @P_callsp_writestr(%Frame_callsp* %.slink, %T_text* %f, i32 %ad, i32 %w, i32 %l)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_writestr, align 8
    %t1 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 5
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 0
    store i32 %ad, i32* %t2
    %t3 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 1
    store %T_text* %f, %T_text** %t3
    %t4 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 2
    store i32 %l, i32* %t4
    %t5 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 3
    store i32 %w, i32* %t5

    ; body
    ; line 1724
    %t8 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 3
    %t7 = load i32, i32* %t8
    %t10 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 2
    %t9 = load i32, i32* %t10
    %t6 = icmp sgt i32 %t7, %t9
    br i1 %t6, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1724
    br label %L_endif_1
L_else_1:
    ; line 1725
    %t11 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 2
    %t13 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 3
    %t12 = load i32, i32* %t13
    store i32 %t12, i32* %t11
    br label %L_endif_1
L_endif_1:
    ; line 1726

    ; epilogue
    ret void
}


; line 1729
;================================================================================
; scope: callsp_getfile (level : 3)

; activation record
%Frame_callsp_getfile = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; slink
    %Frame_callsp*    ; 1
};

; procedure body
define void @P_callsp_getfile(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_getfile, align 8
    %t1 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 1
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    ; line 1730
    br i1 %.dummy.intrin, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1730
    call void @P_errori(%T_beta getelementptr inbounds ([26 x i8], [26 x i8]* @.str.259, i32 0, i32 0))
    br label %L_endif_1
L_endif_1:
    ; line 1731
    ; nop

    ; epilogue
    ret void
}


; line 1734
;================================================================================
; scope: callsp_putfile (level : 3)

; activation record
%Frame_callsp_putfile = type
{
    ; parameters
    i32*,    ; 0: ad
    %T_text*,    ; 1: f

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_putfile(%Frame_callsp* %.slink, %T_text* %f, i32* %ad)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_putfile, align 8
    %t1 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 0
    store i32* %ad, i32** %t2
    %t3 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 1
    store %T_text* %f, %T_text** %t3

    ; body
    ; line 1735
    %t5 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 1
    %t6 = load %T_text*, %T_text** %t5
    %t4 = load %T_text, %T_text* %t6
    %t9 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 0
    %t10 = load i32*, i32** %t9
    %t8 = load i32, i32* %t10
    %t7 = add i32 %t8, 1
    %t11 = call i8 @F_getchr(i32 %t7)
    store i8 %t11, i8* %t4
    ; line 1735

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"  Addr  Opc Ins          P       Q\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c" cp = \00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c" mp = \00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c" np = \00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c" op = \00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c" sp = \00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"*** Program load error: [\00", align 1
@.str.246 = private unnamed_addr constant [18 x i8] c"*** Runtime error\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"---       \00", align 1
@.str.242 = private unnamed_addr constant [14 x i8] c"-------------\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"----------------------------------\00", align 1
@.str.241 = private unnamed_addr constant [61 x i8] c"------------------------------------------------------------\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Assembling/loading program\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"Constants\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Constants   \00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Contents of instruction memory\00", align 1
@.str.254 = private unnamed_addr constant [26 x i8] c"Dispose nil pointer      \00", align 1
@.str.259 = private unnamed_addr constant [26 x i8] c"End of file              \00", align 1
@.str.250 = private unnamed_addr constant [26 x i8] c"File not in read mode    \00", align 1
@.str.249 = private unnamed_addr constant [26 x i8] c"File not in write mode   \00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"Heap\00", align 1
@.str.251 = private unnamed_addr constant [21 x i8] c"Heap space breakdown\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"Label table\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"P5 Pascal interpreter vs. \00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Program     \00", align 1
@.str.234 = private unnamed_addr constant [26 x i8] c"Program code overflow    \00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Running program\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"Stack\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Stack/Heap  \00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Storage areas occupied\00", align 1
@.str.248 = private unnamed_addr constant [26 x i8] c"To many files            \00", align 1
@.str.229 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"abi       \00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"abr       \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"adi       \00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"adr       \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"and       \00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"atn       \00", align 1
@.str.255 = private unnamed_addr constant [26 x i8] c"bad pointer value        \00", align 1
@.str.256 = private unnamed_addr constant [26 x i8] c"block already freed      \00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"chka      \00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"chkb      \00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"chkc      \00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"chki      \00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"chkr      \00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"chks      \00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"chr       \00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"cip       \00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"cos       \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"csp       \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"cup       \00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"deca      \00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"decb      \00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"decc      \00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"deci      \00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"decr      \00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"decs      \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"dif       \00", align 1
@.str.253 = private unnamed_addr constant [26 x i8] c"dispose uninit pointer   \00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"dmp       \00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"dsp       \00", align 1
@.str.231 = private unnamed_addr constant [26 x i8] c"duplicated label         \00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"dvi       \00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"dvr       \00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"efb       \00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"eln       \00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"ente      \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ents      \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"eof       \00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"equa      \00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"equb      \00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"equc      \00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"equi      \00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"equm      \00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"equr      \00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"equs      \00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"exp       \00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"fbv       \00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"fjp       \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"flo       \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"flt       \00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"fvb       \00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"gbf       \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"geqa      \00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"geqb      \00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"geqc      \00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"geqi      \00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"geqm      \00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"geqr      \00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"geqs      \00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"get       \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"grta      \00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"grtb      \00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"grtc      \00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"grti      \00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"grtm      \00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"grtr      \00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"grts      \00", align 1
@.str.232 = private unnamed_addr constant [26 x i8] c"illegal instruction      \00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"inca      \00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"incb      \00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"incc      \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"inci      \00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"incr      \00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"incs      \00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"inda      \00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"indb      \00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"indc      \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"indi      \00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"indr      \00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"inds      \00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"inn       \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"int       \00", align 1
@.str.257 = private unnamed_addr constant [26 x i8] c"invalid std proc/func    \00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ior       \00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"ipj       \00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"ixa       \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"lao       \00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"lca       \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"lda       \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"ldc       \00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"ldcb      \00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"ldcc      \00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"ldci      \00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"ldcn      \00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"ldcr      \00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"ldoa      \00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"ldob      \00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"ldoc      \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ldoi      \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"ldor      \00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"ldos      \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"leqa      \00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"leqb      \00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"leqc      \00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"leqi      \00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"leqm      \00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"leqr      \00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"leqs      \00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"lesa      \00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"lesb      \00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"lesc      \00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"lesi      \00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"lesm      \00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"lesr      \00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"less      \00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"lip       \00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"loda      \00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"lodb      \00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"lodc      \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"lodi      \00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"lodr      \00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"lods      \00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"log       \00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"lpa       \00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"mod       \00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"mov       \00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"mpi       \00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"mpr       \00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"mrkl*     \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"mst       \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"neqa      \00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"neqb      \00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"neqc      \00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"neqi      \00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"neqm      \00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"neqr      \00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"neqs      \00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"new       \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"ngi       \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"ngr       \00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"not       \00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"odd       \00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"ordb      \00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"ordc      \00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"ordi      \00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"ordr      \00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"ords      \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"pag       \00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"pbf       \00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"pc = \00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"pck       \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"prd\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"program complete\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"prr\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"put       \00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"rbf       \00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"rdc       \00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"rdi       \00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"rdr       \00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"reta      \00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"retb      \00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"retc      \00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"reti      \00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"retp      \00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"retr      \00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"rgs       \00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"rln       \00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"rnd       \00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"rsb       \00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"rsf       \00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"rwb       \00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"rwf       \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"sbi       \00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"sbr       \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"sgs       \00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"sin       \00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"sqi       \00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"sqr       \00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"sqt       \00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"sroa      \00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"srob      \00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"sroc      \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"sroi      \00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"sror      \00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"sros      \00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"stoa      \00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"stob      \00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"stoc      \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"stoi      \00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"stor      \00", align 1
@.str.252 = private unnamed_addr constant [26 x i8] c"store overflow           \00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"stos      \00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"stp       \00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"stra      \00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"strb      \00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"strc      \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"stri      \00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"strr      \00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"strs      \00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"swp       \00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"tjp       \00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"trc       \00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"ujc       \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ujp       \00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"unexpected eof on input  \00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"uni       \00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"upk       \00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"wbb       \00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"wbc       \00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"wbf       \00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"wbi       \00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"wbr       \00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"wln       \00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"wrb       \00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"wrc       \00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"wrf       \00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"wri       \00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"wrr       \00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"wrs       \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"xjp       \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!142}
!llvm.module.flags = !{!143, !144}
!llvm.ident = !{!141}

!0 = !DIFile(filename: "p5_pint.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 433, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10)
!12 = !{!11}
!13 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!14 = !DICompositeType(tag: DW_TAG_array_type, name: "beta", file: !0, line: 430, baseType: !2, size: 200, elements: !16)
!15 = !DISubrange(count: 25)
!16 = !{!15}
!17 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 463, baseType: !18, size: 6400, elements: !21)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "bytfil", file: !0, line: 435, baseType: null, size: 64)
!19 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!20 = !DISubrange(count: 100)
!21 = !{!20}
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 467, baseType: !1, size: 800, elements: !25)
!24 = !DISubrange(count: 100)
!25 = !{!24}
!26 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 465, baseType: !22, size: 3200, elements: !29)
!28 = !DISubrange(count: 100)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 461, baseType: !7, size: 6400, elements: !32)
!31 = !DISubrange(count: 100)
!32 = !{!31}
!33 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 457, baseType: !1, size: 2048, elements: !35)
!34 = !DISubrange(count: 256)
!35 = !{!34}
!36 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 458, baseType: !37, size: 8192, elements: !39)
!37 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!38 = !DISubrange(count: 256)
!39 = !{!38}
!40 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 455, baseType: !10, size: 20480, elements: !42)
!41 = !DISubrange(count: 256)
!42 = !{!41}
!43 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!45 = !DICompositeType(tag: DW_TAG_array_type, name: "settype", file: !0, line: 431, baseType: !48, size: 256, elements: !47)
!46 = !DISubrange(count: 256)
!47 = !{!46}
!48 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!49 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 456, baseType: !10, size: 2960, elements: !51)
!50 = !DISubrange(count: 37)
!51 = !{!50}
!52 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 442, baseType: !19, size: 6400032, elements: !54)
!53 = !DISubrange(count: 200001)
!54 = !{!53}
!55 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 501, size: 128, flags: DIFlagTypePassByValue, elements: !62)
!57 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 504, baseType: !19, size: 128, elements: !59)
!58 = !DISubrange(count: 4)
!59 = !{!58}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !56, file: !0, line: 503, baseType: !3, size: 32, offset: 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !56, file: !0, line: 504, baseType: !57, size: 128, offset: 0)
!62 = !{!60,!61}
!63 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 519, size: 128, flags: DIFlagTypePassByValue, elements: !70)
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 522, baseType: !19, size: 128, elements: !67)
!66 = !DISubrange(count: 4)
!67 = !{!66}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !64, file: !0, line: 521, baseType: !3, size: 32, offset: 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !64, file: !0, line: 522, baseType: !65, size: 128, offset: 0)
!70 = !{!68,!69}
!71 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 536, size: 256, flags: DIFlagTypePassByValue, elements: !78)
!73 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 539, baseType: !19, size: 256, elements: !75)
!74 = !DISubrange(count: 8)
!75 = !{!74}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !72, file: !0, line: 538, baseType: !6, size: 64, offset: 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !72, file: !0, line: 539, baseType: !73, size: 256, offset: 0)
!78 = !{!76,!77}
!79 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 553, size: 256, flags: DIFlagTypePassByValue, elements: !86)
!81 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 556, baseType: !19, size: 256, elements: !83)
!82 = !DISubrange(count: 8)
!83 = !{!82}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !80, file: !0, line: 555, baseType: !6, size: 64, offset: 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !80, file: !0, line: 556, baseType: !81, size: 256, offset: 0)
!86 = !{!84,!85}
!87 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 589, size: 1024, flags: DIFlagTypePassByValue, elements: !94)
!89 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 592, baseType: !19, size: 1024, elements: !91)
!90 = !DISubrange(count: 32)
!91 = !{!90}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !88, file: !0, line: 591, baseType: !45, size: 256, offset: 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !88, file: !0, line: 592, baseType: !89, size: 1024, offset: 0)
!94 = !{!92,!93}
!95 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 606, size: 1024, flags: DIFlagTypePassByValue, elements: !102)
!97 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 609, baseType: !19, size: 1024, elements: !99)
!98 = !DISubrange(count: 32)
!99 = !{!98}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !96, file: !0, line: 608, baseType: !45, size: 256, offset: 0)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !96, file: !0, line: 609, baseType: !97, size: 1024, offset: 0)
!102 = !{!100,!101}
!103 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 639, size: 128, flags: DIFlagTypePassByValue, elements: !110)
!105 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 642, baseType: !19, size: 128, elements: !107)
!106 = !DISubrange(count: 4)
!107 = !{!106}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !0, line: 641, baseType: !8, size: 32, offset: 0)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !104, file: !0, line: 642, baseType: !105, size: 128, offset: 0)
!110 = !{!108,!109}
!111 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 656, size: 128, flags: DIFlagTypePassByValue, elements: !118)
!113 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 659, baseType: !19, size: 128, elements: !115)
!114 = !DISubrange(count: 4)
!115 = !{!114}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !112, file: !0, line: 658, baseType: !8, size: 32, offset: 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !112, file: !0, line: 659, baseType: !113, size: 128, offset: 0)
!118 = !{!116,!117}
!119 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!120 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 675, baseType: !19, size: 1024, elements: !122)
!121 = !DISubrange(count: 32)
!122 = !{!121}
!123 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 810, size: 64, flags: DIFlagTypePassByValue, elements: !127)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !0, line: 811, baseType: !8, size: 32, offset: 0)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !124, file: !0, line: 812, baseType: !123, size: 32, offset: 32)
!127 = !{!125,!126}
!128 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!129 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 815, baseType: !124, size: 320064, elements: !131)
!130 = !DISubrange(count: 5001)
!131 = !{!130}
!132 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 814, baseType: !2, size: 80, elements: !134)
!133 = !DISubrange(count: 10)
!134 = !{!133}
!135 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1163, baseType: !2, size: 8000, elements: !137)
!136 = !DISubrange(count: 1000)
!137 = !{!136}
!138 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!13,!14,!17,!18,!19,!22,!23,!26,!27,!30,!33,!36,!37,!40,!43,!44,!45,!49,!52,!55,!56,!57,!63,!64,!65,!71,!72,!73,!79,!80,!81,!87,!88,!89,!95,!96,!97,!103,!104,!105,!111,!112,!113,!119,!120,!123,!124,!128,!129,!132,!135}
!139 = !{}
!140 = !{}
!141 = !{!"LPC 1.1"}
!142 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !139, retainedTypes: !138, globals: !140, nameTableKind: None)
!143 = !{i32 2, !"CodeView", i32 1}
!144 = !{i32 2, !"Debug Info Version", i32 3}

