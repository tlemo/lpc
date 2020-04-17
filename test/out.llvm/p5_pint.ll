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

    ; cleanup
    %t5 = load %T_text, %T_text* @prr
    call void @_CloseFile(i8* %t5)
    %t6 = load %T_text, %T_text* @prd
    call void @_CloseFile(i8* %t6)
    %t7 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t7)
    %t8 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t8)

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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t2
    ret i32 %t3
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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_getrel, %Frame_getrel* %.frame, i32 0, i32 1
    %t3 = load double, double* %t2
    ret double %t3
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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_getbol, %Frame_getbol* %.frame, i32 0, i32 1
    %t3 = load i1, i1* %t2
    ret i1 %t3
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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 1
    %t3 = load i8, i8* %t2
    ret i8 %t3
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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_getadr, %Frame_getadr* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t2
    ret i32 %t3
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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t2
    ret i32 %t3
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

    ; epilogue
    %t2 = getelementptr inbounds %Frame_isfree, %Frame_isfree* %.frame, i32 0, i32 1
    %t3 = load i1, i1* %t2
    ret i1 %t3
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

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"prd\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"prr\00", align 1


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

