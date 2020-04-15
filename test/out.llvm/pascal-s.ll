; ModuleID = 'pascal-s.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pascal-s.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)

; program arguments (command line mapping)
%struct._Filename = type { i8*, i8* }
@_FilenameMapEntries = internal global [4 x %struct._Filename]
    [
    %struct._Filename { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([4 x %struct._Filename], [4 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 3, align 4

; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_record_3 = type [28 x i8]
%T_array_2 = type [100 x %T_record_3]
%T_symset = type [2 x i32]
%T_record_5 = type [16 x i8]
%T_array_4 = type [100 x %T_record_5]
%T_order = type [12 x i8]
%T_array_6 = type [10001 x %T_order]
%T_array_10 = type [101 x i32]
%T_set_11 = type [2 x i32]
%T_item = type [8 x i8]
%T_array_12 = type [27 x %T_alfa]
%T_array_13 = type [27 x i32]
%T_array_14 = type [250 x i8]
%T_array_15 = type [100 x double]
%T_array_16 = type [256 x i32]
%T_array_17 = type [10001 x i8]
%T_typset = type [1 x i32]
%T_record_19 = type [40 x i8]
%T_array_18 = type [1001 x %T_record_19]

; program variables
@a = dso_local global i32 zeroinitializer
@atab = dso_local global %T_array_2 zeroinitializer
@b = dso_local global i32 zeroinitializer
@blockbegsys = dso_local global %T_symset zeroinitializer
@btab = dso_local global %T_array_4 zeroinitializer
@c1 = dso_local global i32 zeroinitializer
@c2 = dso_local global i32 zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_6 zeroinitializer
@constbegsys = dso_local global %T_symset zeroinitializer
@display = dso_local global %T_array_10 zeroinitializer
@errpos = dso_local global i32 zeroinitializer
@errs = dso_local global %T_set_11 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@iflag = dso_local global i1 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inum = dso_local global i32 zeroinitializer
@key = dso_local global %T_array_12 zeroinitializer
@ksy = dso_local global %T_array_13 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_14 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@oflag = dso_local global i1 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@progname = dso_local global %T_alfa zeroinitializer
@rconst = dso_local global %T_array_15 zeroinitializer
@rnum = dso_local global double zeroinitializer
@sleng = dso_local global i32 zeroinitializer
@sps = dso_local global %T_array_16 zeroinitializer
@srcfil = dso_local global %T_text zeroinitializer
@stab = dso_local global %T_array_17 zeroinitializer
@stantyps = dso_local global %T_typset zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sx = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@tab = dso_local global %T_array_18 zeroinitializer
@typebegsys = dso_local global %T_symset zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @srcfil

    ; cleanup
    %t4 = load %T_text, %T_text* @srcfil
    call void @_CloseFile(i8* %t4)
    %t5 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t5)
    %t6 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t6)

    ; epilogue
    ret void
}


; line 268
;================================================================================
; scope: errormsg (level : 2)

; types
%T_errormsg_array_21 = type [59 x %T_alfa]

; activation record
%Frame_errormsg = type
{
    ; variables
    i32,    ; 0: k
    %T_errormsg_array_21,    ; 1: msg

    ; dummy
    i8*
};

; procedure body
define void @P_errormsg()
{
    ; allocate frame
    %.frame = alloca %Frame_errormsg, align 8

    ; epilogue
    ret void
}


; line 310
;================================================================================
; scope: nextch (level : 2)

; activation record
%Frame_nextch = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_nextch()
{
    ; allocate frame
    %.frame = alloca %Frame_nextch, align 8

    ; epilogue
    ret void
}


; line 330
;================================================================================
; scope: error (level : 2)

; activation record
%Frame_error = type
{
    ; parameters
    i32,    ; 0: n

    ; dummy
    i8*
};

; procedure body
define void @P_error(i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_error, align 8
    %t1 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1

    ; epilogue
    ret void
}


; line 338
;================================================================================
; scope: fatal (level : 2)

; types
%T_fatal_array_22 = type [7 x %T_alfa]

; activation record
%Frame_fatal = type
{
    ; parameters
    i32,    ; 0: n

    ; variables
    %T_fatal_array_22,    ; 1: msg

    ; dummy
    i8*
};

; procedure body
define void @P_fatal(i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_fatal, align 8
    %t1 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1

    ; epilogue
    ret void
}


; line 349
;================================================================================
; scope: insymbol (level : 2)

; activation record
%Frame_insymbol = type
{
    ; variables
    i32,    ; 0: e
    i32,    ; 1: i
    i32,    ; 2: j
    i32,    ; 3: k

    ; dummy
    i8*
};

; procedure body
define void @P_insymbol()
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol, align 8

    ; epilogue
    ret void
}


; line 353
;================================================================================
; scope: insymbol_readscale (level : 3)

; activation record
%Frame_insymbol_readscale = type
{
    ; variables
    i32,    ; 0: s
    i32,    ; 1: sign

    ; slink
    %Frame_insymbol*    ; 2
};

; procedure body
define void @P_insymbol_readscale(%Frame_insymbol* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol_readscale, align 8
    %t1 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 2
    store %Frame_insymbol* %.slink, %Frame_insymbol** %t1

    ; epilogue
    ret void
}


; line 364
;================================================================================
; scope: insymbol_adjustscale (level : 3)

; activation record
%Frame_insymbol_adjustscale = type
{
    ; variables
    double,    ; 0: d
    i32,    ; 1: s
    double,    ; 2: t

    ; slink
    %Frame_insymbol*    ; 3
};

; procedure body
define void @P_insymbol_adjustscale(%Frame_insymbol* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol_adjustscale, align 8
    %t1 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    store %Frame_insymbol* %.slink, %Frame_insymbol** %t1

    ; epilogue
    ret void
}


; line 477
;================================================================================
; scope: enter (level : 2)

; activation record
%Frame_enter = type
{
    ; parameters
    %T_alfa,    ; 0: x0
    i32,    ; 1: x1
    i32,    ; 2: x2
    i32,    ; 3: x3

    ; dummy
    i8*
};

; procedure body
define void @P_enter(%T_alfa %x0, i32 %x1, i32 %x2, i32 %x3)
{
    ; allocate frame
    %.frame = alloca %Frame_enter, align 8
    %t1 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    store %T_alfa %x0, %T_alfa* %t1
    %t2 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 1
    store i32 %x1, i32* %t2
    %t3 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    store i32 %x2, i32* %t3
    %t4 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 3
    store i32 %x3, i32* %t4

    ; epilogue
    ret void
}


; line 487
;================================================================================
; scope: enterarray (level : 2)

; activation record
%Frame_enterarray = type
{
    ; parameters
    i32,    ; 0: h
    i32,    ; 1: l
    i32,    ; 2: tp

    ; dummy
    i8*
};

; procedure body
define void @P_enterarray(i32 %tp, i32 %l, i32 %h)
{
    ; allocate frame
    %.frame = alloca %Frame_enterarray, align 8
    %t1 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 0
    store i32 %h, i32* %t1
    %t2 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 1
    store i32 %l, i32* %t2
    %t3 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 2
    store i32 %tp, i32* %t3

    ; epilogue
    ret void
}


; line 500
;================================================================================
; scope: enterblock (level : 2)

; activation record
%Frame_enterblock = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_enterblock()
{
    ; allocate frame
    %.frame = alloca %Frame_enterblock, align 8

    ; epilogue
    ret void
}


; line 506
;================================================================================
; scope: enterreal (level : 2)

; activation record
%Frame_enterreal = type
{
    ; parameters
    double,    ; 0: x

    ; dummy
    i8*
};

; procedure body
define void @P_enterreal(double %x)
{
    ; allocate frame
    %.frame = alloca %Frame_enterreal, align 8
    %t1 = getelementptr inbounds %Frame_enterreal, %Frame_enterreal* %.frame, i32 0, i32 0
    store double %x, double* %t1

    ; epilogue
    ret void
}


; line 514
;================================================================================
; scope: emit (level : 2)

; activation record
%Frame_emit = type
{
    ; parameters
    i32,    ; 0: fct

    ; dummy
    i8*
};

; procedure body
define void @P_emit(i32 %fct)
{
    ; allocate frame
    %.frame = alloca %Frame_emit, align 8
    %t1 = getelementptr inbounds %Frame_emit, %Frame_emit* %.frame, i32 0, i32 0
    store i32 %fct, i32* %t1

    ; epilogue
    ret void
}


; line 519
;================================================================================
; scope: emit1 (level : 2)

; activation record
%Frame_emit1 = type
{
    ; parameters
    i32,    ; 0: b
    i32,    ; 1: fct

    ; dummy
    i8*
};

; procedure body
define void @P_emit1(i32 %fct, i32 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_emit1, align 8
    %t1 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 0
    store i32 %b, i32* %t1
    %t2 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 1
    store i32 %fct, i32* %t2

    ; epilogue
    ret void
}


; line 526
;================================================================================
; scope: emit2 (level : 2)

; activation record
%Frame_emit2 = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: b
    i32,    ; 2: fct

    ; dummy
    i8*
};

; procedure body
define void @P_emit2(i32 %fct, i32 %a, i32 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_emit2, align 8
    %t1 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 1
    store i32 %b, i32* %t2
    %t3 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 2
    store i32 %fct, i32* %t3

    ; epilogue
    ret void
}


; line 533
;================================================================================
; scope: printtables (level : 2)

; activation record
%Frame_printtables = type
{
    ; variables
    i32,    ; 0: i
    %T_order,    ; 1: o

    ; dummy
    i8*
};

; procedure body
define void @P_printtables()
{
    ; allocate frame
    %.frame = alloca %Frame_printtables, align 8

    ; epilogue
    ret void
}


; line 574
;================================================================================
; scope: block (level : 2)

; types
%T_block_conrec = type [20 x i8]

; activation record
%Frame_block = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i1,    ; 1: isfun
    i32,    ; 2: level

    ; variables
    i32,    ; 3: dx
    i32,    ; 4: prb
    i32,    ; 5: prt
    i32,    ; 6: x

    ; dummy
    i8*
};

; procedure body
define void @P_block(%T_symset %fsys, i1 %isfun, i32 %level)
{
    ; allocate frame
    %.frame = alloca %Frame_block, align 8
    %t1 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t1
    %t2 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 1
    store i1 %isfun, i1* %t2
    %t3 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    store i32 %level, i32* %t3

    ; epilogue
    ret void
}


; line 587
;================================================================================
; scope: block_skip (level : 3)

; activation record
%Frame_block_skip = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32,    ; 1: n

    ; slink
    %Frame_block*    ; 2
};

; procedure body
define void @P_block_skip(%Frame_block* %.slink, %T_symset %fsys, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_skip, align 8
    %t1 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 2
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 1
    store i32 %n, i32* %t3

    ; epilogue
    ret void
}


; line 592
;================================================================================
; scope: block_test (level : 3)

; activation record
%Frame_block_test = type
{
    ; parameters
    i32,    ; 0: n
    %T_symset,    ; 1: s1
    %T_symset,    ; 2: s2

    ; slink
    %Frame_block*    ; 3
};

; procedure body
define void @P_block_test(%Frame_block* %.slink, %T_symset %s1, %T_symset %s2, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_test, align 8
    %t1 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 0
    store i32 %n, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 1
    store %T_symset %s1, %T_symset* %t3
    %t4 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 2
    store %T_symset %s2, %T_symset* %t4

    ; epilogue
    ret void
}


; line 597
;================================================================================
; scope: block_testsemicolon (level : 3)

; activation record
%Frame_block_testsemicolon = type
{
    ; slink
    %Frame_block*    ; 0
};

; procedure body
define void @P_block_testsemicolon(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_testsemicolon, align 8
    %t1 = getelementptr inbounds %Frame_block_testsemicolon, %Frame_block_testsemicolon* %.frame, i32 0, i32 0
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 606
;================================================================================
; scope: block_enter (level : 3)

; activation record
%Frame_block_enter = type
{
    ; parameters
    %T_alfa,    ; 0: id
    i32,    ; 1: k

    ; variables
    i32,    ; 2: j
    i32,    ; 3: l

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_enter(%Frame_block* %.slink, %T_alfa %id, i32 %k)
{
    ; allocate frame
    %.frame = alloca %Frame_block_enter, align 8
    %t1 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 0
    store %T_alfa %id, %T_alfa* %t2
    %t3 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    store i32 %k, i32* %t3

    ; epilogue
    ret void
}


; line 624
;================================================================================
; scope: block_loc (level : 3)

; activation record
%Frame_block_loc = type
{
    ; parameters
    %T_alfa,    ; 0: id

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    i32,    ; 3: j

    ; slink
    %Frame_block*    ; 4
};

; function body
define i32 @F_block_loc(%Frame_block* %.slink, %T_alfa %id)
{
    ; allocate frame
    %.frame = alloca %Frame_block_loc, align 8
    %t1 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 0
    store %T_alfa %id, %T_alfa* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


; line 634
;================================================================================
; scope: block_entervariable (level : 3)

; activation record
%Frame_block_entervariable = type
{
    ; slink
    %Frame_block*    ; 0
};

; procedure body
define void @P_block_entervariable(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_entervariable, align 8
    %t1 = getelementptr inbounds %Frame_block_entervariable, %Frame_block_entervariable* %.frame, i32 0, i32 0
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 641
;================================================================================
; scope: block_constant (level : 3)

; activation record
%Frame_block_constant = type
{
    ; parameters
    %T_block_conrec*,    ; 0: c
    %T_symset,    ; 1: fsys

    ; variables
    i32,    ; 2: sign
    i32,    ; 3: x

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_constant(%Frame_block* %.slink, %T_symset %fsys, %T_block_conrec* %c)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constant, align 8
    %t1 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    store %T_block_conrec* %c, %T_block_conrec** %t2
    %t3 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    store %T_symset %fsys, %T_symset* %t3

    ; epilogue
    ret void
}


; line 679
;================================================================================
; scope: block_typ (level : 3)

; activation record
%Frame_block_typ = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32*,    ; 1: rf
    i32*,    ; 2: sz
    i32*,    ; 3: tp

    ; variables
    i32,    ; 4: elrf
    i32,    ; 5: elsz
    i32,    ; 6: eltp
    i32,    ; 7: offset
    i32,    ; 8: t0
    i32,    ; 9: t1
    i32,    ; 10: x

    ; slink
    %Frame_block*    ; 11
};

; procedure body
define void @P_block_typ(%Frame_block* %.slink, %T_symset %fsys, i32* %tp, i32* %rf, i32* %sz)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ, align 8
    %t1 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    store i32* %rf, i32** %t3
    %t4 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    store i32* %sz, i32** %t4
    %t5 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    store i32* %tp, i32** %t5

    ; epilogue
    ret void
}


; line 684
;================================================================================
; scope: block_typ_arraytyp (level : 4)

; activation record
%Frame_block_typ_arraytyp = type
{
    ; parameters
    i32*,    ; 0: aref
    i32*,    ; 1: arsz

    ; variables
    i32,    ; 2: elrf
    i32,    ; 3: elsz
    i32,    ; 4: eltp
    %T_block_conrec,    ; 5: high
    %T_block_conrec,    ; 6: low

    ; slink
    %Frame_block_typ*    ; 7
};

; procedure body
define void @P_block_typ_arraytyp(%Frame_block_typ* %.slink, i32* %aref, i32* %arsz)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ_arraytyp, align 8
    %t1 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    store %Frame_block_typ* %.slink, %Frame_block_typ** %t1
    %t2 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    store i32* %aref, i32** %t2
    %t3 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 1
    store i32* %arsz, i32** %t3

    ; epilogue
    ret void
}


; line 775
;================================================================================
; scope: block_parameterlist (level : 3)

; activation record
%Frame_block_parameterlist = type
{
    ; variables
    i32,    ; 0: rf
    i32,    ; 1: sz
    i32,    ; 2: t0
    i32,    ; 3: tp
    i1,    ; 4: valpar
    i32,    ; 5: x

    ; slink
    %Frame_block*    ; 6
};

; procedure body
define void @P_block_parameterlist(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_parameterlist, align 8
    %t1 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 6
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 826
;================================================================================
; scope: block_constantdeclaration (level : 3)

; activation record
%Frame_block_constantdeclaration = type
{
    ; variables
    %T_block_conrec,    ; 0: c

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_constantdeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constantdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_constantdeclaration, %Frame_block_constantdeclaration* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 845
;================================================================================
; scope: block_typedeclaration (level : 3)

; activation record
%Frame_block_typedeclaration = type
{
    ; variables
    i32,    ; 0: rf
    i32,    ; 1: sz
    i32,    ; 2: t1
    i32,    ; 3: tp

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_typedeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typedeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 863
;================================================================================
; scope: block_variabledeclaration (level : 3)

; activation record
%Frame_block_variabledeclaration = type
{
    ; variables
    i32,    ; 0: rf
    i32,    ; 1: sz
    i32,    ; 2: t0
    i32,    ; 3: t1
    i32,    ; 4: tp

    ; slink
    %Frame_block*    ; 5
};

; procedure body
define void @P_block_variabledeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_variabledeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_variabledeclaration, %Frame_block_variabledeclaration* %.frame, i32 0, i32 5
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 887
;================================================================================
; scope: block_procdeclaration (level : 3)

; activation record
%Frame_block_procdeclaration = type
{
    ; variables
    i1,    ; 0: isfun

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_procdeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1

    ; epilogue
    ret void
}


; line 900
;================================================================================
; scope: block_statement (level : 3)

; activation record
%Frame_block_statement = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: i

    ; slink
    %Frame_block*    ; 2
};

; procedure body
define void @P_block_statement(%Frame_block* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 2
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; epilogue
    ret void
}


; line 904
;================================================================================
; scope: block_statement_selector (level : 4)

; activation record
%Frame_block_statement_selector = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: v

    ; variables
    i32,    ; 2: a
    i32,    ; 3: j
    %T_item,    ; 4: x

    ; slink
    %Frame_block_statement*    ; 5
};

; procedure body
define void @P_block_statement_selector(%Frame_block_statement* %.slink, %T_symset %fsys, %T_item* %v)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_selector, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 5
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 1
    store %T_item* %v, %T_item** %t3

    ; epilogue
    ret void
}


; line 942
;================================================================================
; scope: block_statement_call (level : 4)

; activation record
%Frame_block_statement_call = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32,    ; 1: i

    ; variables
    i32,    ; 2: cp
    i32,    ; 3: k
    i32,    ; 4: lastp
    %T_item,    ; 5: x

    ; slink
    %Frame_block_statement*    ; 6
};

; procedure body
define void @P_block_statement_call(%Frame_block_statement* %.slink, %T_symset %fsys, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_call, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 6
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    store i32 %i, i32* %t3

    ; epilogue
    ret void
}


; line 992
;================================================================================
; scope: block_statement_resulttype (level : 4)

; activation record
%Frame_block_statement_resulttype = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: b

    ; variables
    i32,    ; 2: _fnvalue

    ; slink
    %Frame_block_statement*    ; 3
};

; function body
define i32 @F_block_statement_resulttype(%Frame_block_statement* %.slink, i32 %a, i32 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_resulttype, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 3
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 0
    store i32 %a, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 1
    store i32 %b, i32* %t3

    ; epilogue
    %t4 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t4
    ret i32 %t5
}


; line 1008
;================================================================================
; scope: block_statement_expression (level : 4)

; activation record
%Frame_block_statement_expression = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: op
    %T_item,    ; 3: y

    ; slink
    %Frame_block_statement*    ; 4
};

; procedure body
define void @P_block_statement_expression(%Frame_block_statement* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 4
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; epilogue
    ret void
}


; line 1011
;================================================================================
; scope: block_statement_expression_simpleexpression (level : 5)

; activation record
%Frame_block_statement_expression_simpleexpression = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: op
    %T_item,    ; 3: y

    ; slink
    %Frame_block_statement_expression*    ; 4
};

; procedure body
define void @P_block_statement_expression_simpleexpression(%Frame_block_statement_expression* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    store %Frame_block_statement_expression* %.slink, %Frame_block_statement_expression** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; epilogue
    ret void
}


; line 1014
;================================================================================
; scope: block_statement_expression_simpleexpression_term (level : 6)

; activation record
%Frame_block_statement_expression_simpleexpression_term = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: op
    %T_item,    ; 3: y

    ; slink
    %Frame_block_statement_expression_simpleexpression*    ; 4
};

; procedure body
define void @P_block_statement_expression_simpleexpression_term(%Frame_block_statement_expression_simpleexpression* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression_term, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 4
    store %Frame_block_statement_expression_simpleexpression* %.slink, %Frame_block_statement_expression_simpleexpression** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; epilogue
    ret void
}


; line 1017
;================================================================================
; scope: block_statement_expression_simpleexpression_term_factor (level : 7)

; activation record
%Frame_block_statement_expression_simpleexpression_term_factor = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: f
    i32,    ; 3: i

    ; slink
    %Frame_block_statement_expression_simpleexpression_term*    ; 4
};

; procedure body
define void @P_block_statement_expression_simpleexpression_term_factor(%Frame_block_statement_expression_simpleexpression_term* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression_term_factor, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 4
    store %Frame_block_statement_expression_simpleexpression_term* %.slink, %Frame_block_statement_expression_simpleexpression_term** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; epilogue
    ret void
}


; line 1020
;================================================================================
; scope: block_statement_expression_simpleexpression_term_factor_standfct (level : 8)

; activation record
%Frame_block_statement_expression_simpleexpression_term_factor_standfct = type
{
    ; parameters
    i32,    ; 0: n

    ; variables
    %T_typset,    ; 1: ts

    ; slink
    %Frame_block_statement_expression_simpleexpression_term_factor*    ; 2
};

; procedure body
define void @P_block_statement_expression_simpleexpression_term_factor_standfct(%Frame_block_statement_expression_simpleexpression_term_factor* %.slink, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression_term_factor_standfct, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    store %Frame_block_statement_expression_simpleexpression_term_factor* %.slink, %Frame_block_statement_expression_simpleexpression_term_factor** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 0
    store i32 %n, i32* %t2

    ; epilogue
    ret void
}


; line 1229
;================================================================================
; scope: block_statement_assignment (level : 4)

; activation record
%Frame_block_statement_assignment = type
{
    ; parameters
    i32,    ; 0: ad
    i32,    ; 1: lv

    ; variables
    i32,    ; 2: f
    %T_item,    ; 3: x
    %T_item,    ; 4: y

    ; slink
    %Frame_block_statement*    ; 5
};

; procedure body
define void @P_block_statement_assignment(%Frame_block_statement* %.slink, i32 %lv, i32 %ad)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_assignment, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 0
    store i32 %ad, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 1
    store i32 %lv, i32* %t3

    ; epilogue
    ret void
}


; line 1253
;================================================================================
; scope: block_statement_compoundstatement (level : 4)

; activation record
%Frame_block_statement_compoundstatement = type
{
    ; slink
    %Frame_block_statement*    ; 0
};

; procedure body
define void @P_block_statement_compoundstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_compoundstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_compoundstatement, %Frame_block_statement_compoundstatement* %.frame, i32 0, i32 0
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; epilogue
    ret void
}


; line 1263
;================================================================================
; scope: block_statement_ifstatement (level : 4)

; activation record
%Frame_block_statement_ifstatement = type
{
    ; variables
    i32,    ; 0: lc1
    i32,    ; 1: lc2
    %T_item,    ; 2: x

    ; slink
    %Frame_block_statement*    ; 3
};

; procedure body
define void @P_block_statement_ifstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_ifstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; epilogue
    ret void
}


; line 1280
;================================================================================
; scope: block_statement_casestatement (level : 4)

; types
%T_block_statement_casestatement_record_24 = type [8 x i8]
%T_block_statement_casestatement_array_23 = type [100 x %T_block_statement_casestatement_record_24]
%T_block_statement_casestatement_array_25 = type [100 x i32]

; activation record
%Frame_block_statement_casestatement = type
{
    ; variables
    %T_block_statement_casestatement_array_23,    ; 0: casetab
    %T_block_statement_casestatement_array_25,    ; 1: exittab
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: k
    i32,    ; 5: lc1
    %T_item,    ; 6: x

    ; slink
    %Frame_block_statement*    ; 7
};

; procedure body
define void @P_block_statement_casestatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_casestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 7
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; epilogue
    ret void
}


; line 1287
;================================================================================
; scope: block_statement_casestatement_caselabel (level : 5)

; activation record
%Frame_block_statement_casestatement_caselabel = type
{
    ; variables
    i32,    ; 0: k
    %T_block_conrec,    ; 1: lab

    ; slink
    %Frame_block_statement_casestatement*    ; 2
};

; procedure body
define void @P_block_statement_casestatement_caselabel(%Frame_block_statement_casestatement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_casestatement_caselabel, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    store %Frame_block_statement_casestatement* %.slink, %Frame_block_statement_casestatement** %t1

    ; epilogue
    ret void
}


; line 1299
;================================================================================
; scope: block_statement_casestatement_onecase (level : 5)

; activation record
%Frame_block_statement_casestatement_onecase = type
{
    ; slink
    %Frame_block_statement_casestatement*    ; 0
};

; procedure body
define void @P_block_statement_casestatement_onecase(%Frame_block_statement_casestatement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_casestatement_onecase, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    store %Frame_block_statement_casestatement* %.slink, %Frame_block_statement_casestatement** %t1

    ; epilogue
    ret void
}


; line 1329
;================================================================================
; scope: block_statement_repeatstatement (level : 4)

; activation record
%Frame_block_statement_repeatstatement = type
{
    ; variables
    i32,    ; 0: lc1
    %T_item,    ; 1: x

    ; slink
    %Frame_block_statement*    ; 2
};

; procedure body
define void @P_block_statement_repeatstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_repeatstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 2
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; epilogue
    ret void
}


; line 1345
;================================================================================
; scope: block_statement_whilestatement (level : 4)

; activation record
%Frame_block_statement_whilestatement = type
{
    ; variables
    i32,    ; 0: lc1
    i32,    ; 1: lc2
    %T_item,    ; 2: x

    ; slink
    %Frame_block_statement*    ; 3
};

; procedure body
define void @P_block_statement_whilestatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_whilestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; epilogue
    ret void
}


; line 1355
;================================================================================
; scope: block_statement_forstatement (level : 4)

; activation record
%Frame_block_statement_forstatement = type
{
    ; variables
    i32,    ; 0: cvt
    i32,    ; 1: f
    i32,    ; 2: i
    i32,    ; 3: lc1
    i32,    ; 4: lc2
    %T_item,    ; 5: x

    ; slink
    %Frame_block_statement*    ; 6
};

; procedure body
define void @P_block_statement_forstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_forstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; epilogue
    ret void
}


; line 1387
;================================================================================
; scope: block_statement_standproc (level : 4)

; activation record
%Frame_block_statement_standproc = type
{
    ; parameters
    i32,    ; 0: n

    ; variables
    i32,    ; 1: f
    i32,    ; 2: i
    %T_item,    ; 3: x
    %T_item,    ; 4: y

    ; slink
    %Frame_block_statement*    ; 5
};

; procedure body
define void @P_block_statement_standproc(%Frame_block_statement* %.slink, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_standproc, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_standproc, %Frame_block_statement_standproc* %.frame, i32 0, i32 5
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_standproc, %Frame_block_statement_standproc* %.frame, i32 0, i32 0
    store i32 %n, i32* %t2

    ; epilogue
    ret void
}


; line 1515
;================================================================================
; scope: interpret (level : 2)

; types
%T_interpret_array_27 = type [100 x i32]
%T_interpret_array_28 = type [4 x i32]
%T_interpret_record_30 = type [8 x i8]
%T_interpret_array_29 = type [10000 x %T_interpret_record_30]

; activation record
%Frame_interpret = type
{
    ; variables
    i32,    ; 0: b
    i32,    ; 1: blkcnt
    i32,    ; 2: chrcnt
    %T_interpret_array_27,    ; 3: display
    %T_interpret_array_28,    ; 4: fld
    i32,    ; 5: h1
    i32,    ; 6: h2
    i32,    ; 7: h3
    i32,    ; 8: h4
    %T_order,    ; 9: ir
    i32,    ; 10: lncnt
    i32,    ; 11: ocnt
    i32,    ; 12: pc
    i32,    ; 13: ps
    %T_interpret_array_29,    ; 14: s
    i32,    ; 15: t

    ; dummy
    i8*
};

; procedure body
define void @P_interpret()
{
    ; allocate frame
    %.frame = alloca %Frame_interpret, align 8

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"srcfil\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!139}
!llvm.module.flags = !{!140, !141}
!llvm.ident = !{!138}

!0 = !DIFile(filename: "pascal-s.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 209, baseType: !2, size: 80, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 253, baseType: !14, size: 22400, elements: !25)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 254, size: 224, flags: DIFlagTypePassByValue, elements: !23)
!15 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "inxtyp", scope: !14, file: !0, line: 255, baseType: !12, size: 32, offset: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "eltyp", scope: !14, file: !0, line: 255, baseType: !12, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "elref", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "elsize", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 192)
!23 = !{!16,!17,!18,!19,!20,!21,!22}
!24 = !DISubrange(count: 100)
!25 = !{!24}
!26 = !DICompositeType(tag: DW_TAG_array_type, name: "symset", file: !0, line: 212, baseType: !29, size: 64, elements: !28)
!27 = !DISubrange(count: 51)
!28 = !{!27}
!29 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 258, baseType: !31, size: 12800, elements: !38)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 259, size: 128, flags: DIFlagTypePassByValue, elements: !36)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lastpar", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "psize", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vsize", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 96)
!36 = !{!32,!33,!34,!35}
!37 = !DISubrange(count: 100)
!38 = !{!37}
!39 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 264, baseType: !40, size: 960096, elements: !49)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "order", file: !0, line: 217, size: 96, flags: DIFlagTypePassByValue, elements: !47)
!41 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!42 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !40, file: !0, line: 218, baseType: !41, size: 32, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !40, file: !0, line: 219, baseType: !42, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !40, file: !0, line: 220, baseType: !43, size: 32, offset: 64)
!47 = !{!44,!45,!46}
!48 = !DISubrange(count: 10001)
!49 = !{!48}
!50 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 244, baseType: !3, size: 3232, elements: !52)
!51 = !DISubrange(count: 101)
!52 = !{!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 233, baseType: !56, size: 64, elements: !55)
!54 = !DISubrange(count: 59)
!55 = !{!54}
!56 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!57 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !0, line: 214, size: 64, flags: DIFlagTypePassByValue, elements: !61)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !58, file: !0, line: 215, baseType: !12, size: 32, offset: 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !58, file: !0, line: 215, baseType: !15, size: 32, offset: 32)
!61 = !{!59,!60}
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 238, baseType: !8, size: 2160, elements: !64)
!63 = !DISubrange(count: 27)
!64 = !{!63}
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 239, baseType: !11, size: 864, elements: !67)
!66 = !DISubrange(count: 27)
!67 = !{!66}
!68 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 229, baseType: !2, size: 2000, elements: !70)
!69 = !DISubrange(count: 250)
!70 = !{!69}
!71 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 263, baseType: !6, size: 6400, elements: !73)
!72 = !DISubrange(count: 100)
!73 = !{!72}
!74 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 240, baseType: !11, size: 8192, elements: !76)
!75 = !DISubrange(count: 256)
!76 = !{!75}
!77 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 262, baseType: !2, size: 80008, elements: !79)
!78 = !DISubrange(count: 10001)
!79 = !{!78}
!80 = !DICompositeType(tag: DW_TAG_array_type, name: "typset", file: !0, line: 213, baseType: !83, size: 32, elements: !82)
!81 = !DISubrange(count: 7)
!82 = !{!81}
!83 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!84 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 246, baseType: !85, size: 320320, elements: !97)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 247, size: 320, flags: DIFlagTypePassByValue, elements: !95)
!86 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !0, line: 248, baseType: !8, size: 80, offset: 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !85, file: !0, line: 248, baseType: !15, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !85, file: !0, line: 249, baseType: !57, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !85, file: !0, line: 249, baseType: !12, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !85, file: !0, line: 250, baseType: !15, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !85, file: !0, line: 250, baseType: !1, size: 8, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lev", scope: !85, file: !0, line: 251, baseType: !86, size: 32, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !85, file: !0, line: 251, baseType: !3, size: 32, offset: 288)
!95 = !{!87,!88,!89,!90,!91,!92,!93,!94}
!96 = !DISubrange(count: 1001)
!97 = !{!96}
!98 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 270, baseType: !8, size: 4720, elements: !100)
!99 = !DISubrange(count: 59)
!100 = !{!99}
!101 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 339, baseType: !8, size: 560, elements: !103)
!102 = !DISubrange(count: 7)
!103 = !{!102}
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conrec", file: !0, line: 576, size: 192, flags: DIFlagTypePassByValue, elements: !108)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !104, file: !0, line: 576, baseType: !12, size: 32, offset: 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !104, file: !0, line: 577, baseType: !3, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !104, file: !0, line: 578, baseType: !6, size: 64, offset: 64)
!108 = !{!105,!106,!107}
!109 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1283, baseType: !110, size: 6400, elements: !115)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1284, size: 64, flags: DIFlagTypePassByValue, elements: !113)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !0, line: 1284, baseType: !15, size: 32, offset: 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !110, file: !0, line: 1284, baseType: !15, size: 32, offset: 32)
!113 = !{!111,!112}
!114 = !DISubrange(count: 100)
!115 = !{!114}
!116 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1285, baseType: !3, size: 3200, elements: !118)
!117 = !DISubrange(count: 100)
!118 = !{!117}
!119 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!120 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1527, baseType: !3, size: 3200, elements: !122)
!121 = !DISubrange(count: 100)
!122 = !{!121}
!123 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1525, baseType: !3, size: 128, elements: !125)
!124 = !DISubrange(count: 4)
!125 = !{!124}
!126 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1528, baseType: !127, size: 640000, elements: !134)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1529, size: 64, flags: DIFlagTypePassByValue, elements: !132)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !127, file: !0, line: 1530, baseType: !3, size: 32, offset: 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !127, file: !0, line: 1531, baseType: !6, size: 64, offset: 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !127, file: !0, line: 1532, baseType: !1, size: 8, offset: 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !127, file: !0, line: 1533, baseType: !2, size: 8, offset: 0)
!132 = !{!128,!129,!130,!131}
!133 = !DISubrange(count: 10000)
!134 = !{!133}
!135 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!12,!13,!14,!15,!26,!30,!31,!39,!40,!41,!42,!43,!50,!53,!57,!58,!62,!65,!68,!71,!74,!77,!80,!84,!85,!86,!98,!101,!104,!109,!110,!116,!119,!120,!123,!126,!127}
!136 = !{}
!137 = !{}
!138 = !{!"LPC 1.1"}
!139 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !135, globals: !137, nameTableKind: None)
!140 = !{i32 2, !"CodeView", i32 1}
!141 = !{i32 2, !"Debug Info Version", i32 3}

