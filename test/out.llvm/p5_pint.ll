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
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 26)
    call void @_WriteInteger(i8* %t5, i32 1, i32 0, i32 1)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 46)
    call void @_WriteInteger(i8* %t5, i32 1, i32 0, i32 0)
    call void @_WriteLn(i8* %t5)
    %t6 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t6)
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t7)
    call void @P_load()
    store i32 0, i32* @pc
    %t8 = load i32, i32* @pctop
    store i32 %t8, i32* @sp
    %t9 = load i32, i32* @pctop
    store i32 %t9, i32* @mp
    %t10 = load i32, i32* @cp
    store i32 %t10, i32* @np
    store i32 5, i32* @ep
    store i32 0, i32* @srclin
    store i1 1, i1* @interpreting
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t11)
    %t12 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t12)
    %t13 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t13)
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
    %t3 = getelementptr inbounds %Frame_putint, %Frame_putint* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putint_record_17, %T_putint_record_17* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t7 = getelementptr inbounds %Frame_putint, %Frame_putint* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t4

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
    %t3 = getelementptr inbounds %Frame_putrel, %Frame_putrel* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putrel_record_23, %T_putrel_record_23* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to double*
    %t7 = getelementptr inbounds %Frame_putrel, %Frame_putrel* %.frame, i32 0, i32 1
    %t6 = load double, double* %t7
    store double %t6, double* %t4

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
    %t2 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 2
    %t3 = load i1, i1* %t4
    store i1 %t3, i1* %t2

    ; epilogue
    %t5 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 1
    %t6 = load i1, i1* %t5
    ret i1 %t6
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
    %t4 = getelementptr inbounds %Frame_putbol, %Frame_putbol* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t3
0271D4B0    store i32 , i32* %t5

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
    %t3 = getelementptr inbounds %Frame_putset, %Frame_putset* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putset_record_29, %T_putset_record_29* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to %T_settype*
    %t7 = getelementptr inbounds %Frame_putset, %Frame_putset* %.frame, i32 0, i32 1
    %t6 = load %T_settype, %T_settype* %t7
    store %T_settype %t6, %T_settype* %t4

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
    %t2 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 1
0271E0E0    store i8 , i8* %t2

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 1
    %t8 = load i8, i8* %t7
    ret i8 %t8
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
    %t4 = getelementptr inbounds %Frame_putchr, %Frame_putchr* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_array_12, %T_array_12* @store, i32 0, i32 %t3
0271DB30    store i32 , i32* %t5

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
    %t3 = getelementptr inbounds %Frame_putadr, %Frame_putadr* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %T_putadr_record_35, %T_putadr_record_35* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t7 = getelementptr inbounds %Frame_putadr, %Frame_putadr* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t4

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
    %t2 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 2
    %t4 = load i32, i32* @sp
    %t3 = sub i32 %t4, 4
    %t5 = call i32 @F_getadr(i32 %t3)
    store i32 %t5, i32* %t2
    %t8 = load i32, i32* @sp
    %t7 = sub i32 %t8, 4
    %t10 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t6 = sub i32 %t7, %t9
    %t12 = getelementptr inbounds %Frame_swpstk, %Frame_swpstk* %.frame, i32 0, i32 2
    %t11 = load i32, i32* %t12
    call void @P_putadr(i32 %t6, i32 %t11)

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
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 4
    store i32 %t2, i32* @sp
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
    %t2 = load i32, i32* @sp
    %t4 = getelementptr inbounds %Frame_pshint, %Frame_pshint* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    call void @P_putint(i32 %t2, i32 %t3)
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
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 8
    store i32 %t2, i32* @sp
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
    %t2 = load i32, i32* @sp
    %t4 = getelementptr inbounds %Frame_pshrel, %Frame_pshrel* %.frame, i32 0, i32 0
    %t3 = load double, double* %t4
    call void @P_putrel(i32 %t2, double %t3)
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
    %t3 = load i32, i32* @sp
    %t2 = sub i32 %t3, 32
    store i32 %t2, i32* @sp
    %t4 = load i32, i32* @sp
    %t5 = getelementptr inbounds %Frame_popset, %Frame_popset* %.f