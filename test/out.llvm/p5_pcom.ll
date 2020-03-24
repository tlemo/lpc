; ModuleID = 'p5_pcom.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\p5_pcom.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


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
    ret void
}

; line 628
;================================================================================
; scope: getstr (level : 2)

; activation record
%Frame_getstr = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getstr()
{
    %1 = alloca %Frame_getstr, align 8
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
define void @P_putstrs()
{
    %1 = alloca %Frame_putstrs, align 8
    ret void
}

; line 644
;================================================================================
; scope: getlab (level : 2)

; activation record
%Frame_getlab = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getlab()
{
    %1 = alloca %Frame_getlab, align 8
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
define void @P_putlab()
{
    %1 = alloca %Frame_putlab, align 8
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
define void @P_pshcst()
{
    %1 = alloca %Frame_pshcst, align 8
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
define void @P_putcst()
{
    %1 = alloca %Frame_putcst, align 8
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
define void @P_pshstc()
{
    %1 = alloca %Frame_pshstc, align 8
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
define void @P_putstc()
{
    %1 = alloca %Frame_putstc, align 8
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
define void @P_ininam()
{
    %1 = alloca %Frame_ininam, align 8
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
define void @P_putnam()
{
    %1 = alloca %Frame_putnam, align 8
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
define void @P_putnams()
{
    %1 = alloca %Frame_putnams, align 8
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
define void @P_putdsp()
{
    %1 = alloca %Frame_putdsp, align 8
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
define void @P_putdsp_putsub()
{
    %1 = alloca %Frame_putdsp_putsub, align 8
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
define void @P_putdsps()
{
    %1 = alloca %Frame_putdsps, align 8
    ret void
}

; line 779
;================================================================================
; scope: getfil (level : 2)

; activation record
%Frame_getfil = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getfil()
{
    %1 = alloca %Frame_getfil, align 8
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
define void @P_putfil()
{
    %1 = alloca %Frame_putfil, align 8
    ret void
}

; line 793
;================================================================================
; scope: getcas (level : 2)

; activation record
%Frame_getcas = type
{
    ; parameters
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_getcas()
{
    %1 = alloca %Frame_getcas, align 8
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
define void @P_putcas()
{
    %1 = alloca %Frame_putcas, align 8
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
define i8 @F_lcase()
{
    %1 = alloca %Frame_lcase, align 8
    %2 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %1, i32 0, i32 1
    %3 = load i8, i8* %2
    ret i8 %3
}

; line 820
;================================================================================
; scope: lcases (level : 2)

; activation record
%Frame_lcases = type
{
    ; parameters
    %T_idstr,    ; 0: s

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_lcases()
{
    %1 = alloca %Frame_lcases, align 8
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
    %T_idstr,    ; 1: b

    ; variables
    i1,    ; 2: _fnvalue
    i32,    ; 3: i
    i1,    ; 4: m

    ; dummy
    i8*
};

; function body
define i1 @F_strequri()
{
    %1 = alloca %Frame_strequri, align 8
    %2 = getelementptr inbounds %Frame_strequri, %Frame_strequri* %1, i32 0, i32 2
    %3 = load i1, i1* %2
    ret i1 %3
}

; line 837
;================================================================================
; scope: writev (level : 2)

; activation record
%Frame_writev = type
{
    ; parameters
    %T_text,    ; 0: f
    i32,    ; 1: fl
    i8*,    ; 2: s

    ; variables
    i8,    ; 3: c
    i32,    ; 4: i

    ; dummy
    i8*
};

; procedure body
define void @P_writev()
{
    %1 = alloca %Frame_writev, align 8
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
define i32 @F_lenpv()
{
    %1 = alloca %Frame_lenpv, align 8
    %2 = getelementptr inbounds %Frame_lenpv, %Frame_lenpv* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}

; line 862
;================================================================================
; scope: strassvf (level : 2)

; activation record
%Frame_strassvf = type
{
    ; parameters
    i8*,    ; 0: a
    %T_idstr,    ; 1: b

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
define void @P_strassvf()
{
    %1 = alloca %Frame_strassvf, align 8
    ret void
}

; line 879
;================================================================================
; scope: strassvr (level : 2)

; activation record
%Frame_strassvr = type
{
    ; parameters
    i8*,    ; 0: a
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
define void @P_strassvr()
{
    %1 = alloca %Frame_strassvr, align 8
    ret void
}

; line 896
;================================================================================
; scope: strassvd (level : 2)

; activation record
%Frame_strassvd = type
{
    ; parameters
    i8*,    ; 0: a
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
define void @P_strassvd()
{
    %1 = alloca %Frame_strassvd, align 8
    ret void
}

; line 913
;================================================================================
; scope: strassvc (level : 2)

; activation record
%Frame_strassvc = type
{
    ; parameters
    i8*,    ; 0: a
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
define void @P_strassvc()
{
    %1 = alloca %Frame_strassvc, align 8
    ret void
}

; line 928
;================================================================================
; scope: strassfv (level : 2)

; activation record
%Frame_strassfv = type
{
    ; parameters
    %T_idstr,    ; 0: a
    i8*,    ; 1: b

    ; variables
    i32,    ; 2: i
    i32,    ; 3: j

    ; dummy
    i8*
};

; procedure body
define void @P_strassfv()
{
    %1 = alloca %Frame_strassfv, align 8
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
define i1 @F_strequvv()
{
    %1 = alloca %Frame_strequvv, align 8
    %2 = getelementptr inbounds %Frame_strequvv, %Frame_strequvv* %1, i32 0, i32 2
    %3 = load i1, i1* %2
    ret i1 %3
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
define i1 @F_strltnvv()
{
    %1 = alloca %Frame_strltnvv, align 8
    %2 = getelementptr inbounds %Frame_strltnvv, %Frame_strltnvv* %1, i32 0, i32 2
    %3 = load i1, i1* %2
    ret i1 %3
}

; line 968
;================================================================================
; scope: strequvf (level : 2)

; activation record
%Frame_strequvf = type
{
    ; parameters
    i8*,    ; 0: a
    %T_idstr,    ; 1: b

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
define i1 @F_strequvf()
{
    %1 = alloca %Frame_strequvf, align 8
    %2 = getelementptr inbounds %Frame_strequvf, %Frame_strequvf* %1, i32 0, i32 2
    %3 = load i1, i1* %2
    ret i1 %3
}

; line 981
;================================================================================
; scope: strltnvf (level : 2)

; activation record
%Frame_strltnvf = type
{
    ; parameters
    i8*,    ; 0: a
    %T_idstr,    ; 1: b

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
define i1 @F_strltnvf()
{
    %1 = alloca %Frame_strltnvf, align 8
    %2 = getelementptr inbounds %Frame_strltnvf, %Frame_strltnvf* %1, i32 0, i32 2
    %3 = load i1, i1* %2
    ret i1 %3
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
define i8 @F_strchr()
{
    %1 = alloca %Frame_strchr, align 8
    %2 = getelementptr inbounds %Frame_strchr, %Frame_strchr* %1, i32 0, i32 2
    %3 = load i8, i8* %2
    ret i8 %3
}

; line 1010
;================================================================================
; scope: strchrass (level : 2)

; activation record
%Frame_strchrass = type
{
    ; parameters
    i8*,    ; 0: a
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
define void @P_strchrass()
{
    %1 = alloca %Frame_strchrass, align 8
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
define void @P_strchrass_getsqt()
{
    %1 = alloca %Frame_strchrass_getsqt, align 8
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
    %1 = alloca %Frame_prtdsp, align 8
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
define void @P_prtdsp_prtlnk()
{
    %1 = alloca %Frame_prtdsp_prtlnk, align 8
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
    %1 = alloca %Frame_endofline, align 8
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
define void @P_errmsg()
{
    %1 = alloca %Frame_errmsg, align 8
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
define void @P_error()
{
    %1 = alloca %Frame_error, align 8
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
    %1 = alloca %Frame_insymbol, align 8
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
define void @P_insymbol_nextch()
{
    %1 = alloca %Frame_insymbol_nextch, align 8
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
define void @P_insymbol_options()
{
    %1 = alloca %Frame_insymbol_options, align 8
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
define void @P_enterid()
{
    %1 = alloca %Frame_enterid, align 8
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
    i8*,    ; 1: fcp1

    ; dummy
    i8*
};

; procedure body
define void @P_searchsection()
{
    %1 = alloca %Frame_searchsection, align 8
    ret void
}

; line 1577
;================================================================================
; scope: searchidnenm (level : 2)

; activation record
%Frame_searchidnenm = type
{
    ; parameters
    i8*,    ; 0: fcp
    %T_setofids,    ; 1: fidcls
    i1,    ; 2: mm

    ; variables
    i32,    ; 3: disxl
    i8*,    ; 4: lcp

    ; dummy
    i8*
};

; procedure body
define void @P_searchidnenm()
{
    %1 = alloca %Frame_searchidnenm, align 8
    ret void
}

; line 1603
;================================================================================
; scope: searchidne (level : 2)

; activation record
%Frame_searchidne = type
{
    ; parameters
    i8*,    ; 0: fcp
    %T_setofids,    ; 1: fidcls

    ; variables
    i1,    ; 2: mm

    ; dummy
    i8*
};

; procedure body
define void @P_searchidne()
{
    %1 = alloca %Frame_searchidne, align 8
    ret void
}

; line 1610
;================================================================================
; scope: searchid (level : 2)

; activation record
%Frame_searchid = type
{
    ; parameters
    i8*,    ; 0: fcp
    %T_setofids,    ; 1: fidcls

    ; variables
    i8*,    ; 2: lcp

    ; dummy
    i8*
};

; procedure body
define void @P_searchid()
{
    %1 = alloca %Frame_searchid, align 8
    ret void
}

; line 1635
;================================================================================
; scope: getbounds (level : 2)

; activation record
%Frame_getbounds = type
{
    ; parameters
    i32,    ; 0: fmax
    i32,    ; 1: fmin
    i8*,    ; 2: fsp

    ; dummy
    i8*
};

; procedure body
define void @P_getbounds()
{
    %1 = alloca %Frame_getbounds, align 8
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
define i32 @F_alignquot()
{
    %1 = alloca %Frame_alignquot, align 8
    %2 = getelementptr inbounds %Frame_alignquot, %Frame_alignquot* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}

; line 1676
;================================================================================
; scope: align (level : 2)

; activation record
%Frame_align = type
{
    ; parameters
    i32,    ; 0: flc
    i8*,    ; 1: fsp

    ; variables
    i32,    ; 2: k
    i32,    ; 3: l

    ; dummy
    i8*
};

; procedure body
define void @P_align()
{
    %1 = alloca %Frame_align, align 8
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
define void @P_printtables()
{
    %1 = alloca %Frame_printtables, align 8
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
define i32 @F_printtables_stptoint()
{
    %1 = alloca %Frame_printtables_stptoint, align 8
    %2 = getelementptr inbounds %Frame_printtables_stptoint, %Frame_printtables_stptoint* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
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
define i32 @F_printtables_ctptoint()
{
    %1 = alloca %Frame_printtables_ctptoint, align 8
    %2 = getelementptr inbounds %Frame_printtables_ctptoint, %Frame_printtables_ctptoint* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
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
define void @P_printtables_marker()
{
    %1 = alloca %Frame_printtables_marker, align 8
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
define void @P_printtables_marker_markstp()
{
    %1 = alloca %Frame_printtables_marker_markstp, align 8
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
define void @P_printtables_marker_markctp()
{
    %1 = alloca %Frame_printtables_marker_markctp, align 8
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
define void @P_printtables_followstp()
{
    %1 = alloca %Frame_printtables_followstp, align 8
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
define void @P_printtables_followctp()
{
    %1 = alloca %Frame_printtables_followctp, align 8
    ret void
}

; line 1870
;================================================================================
; scope: genlabel (level : 2)

; activation record
%Frame_genlabel = type
{
    ; parameters
    i32,    ; 0: nxtlab

    ; dummy
    i8*
};

; procedure body
define void @P_genlabel()
{
    %1 = alloca %Frame_genlabel, align 8
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
    i8*,    ; 1: llp

    ; variables
    i8*,    ; 2: fllp

    ; dummy
    i8*
};

; procedure body
define void @P_searchlabel()
{
    %1 = alloca %Frame_searchlabel, align 8
    ret void
}

; line 1889
;================================================================================
; scope: newlabel (level : 2)

; activation record
%Frame_newlabel = type
{
    ; parameters
    i8*,    ; 0: llp

    ; variables
    i32,    ; 1: lbname

    ; dummy
    i8*
};

; procedure body
define void @P_newlabel()
{
    %1 = alloca %Frame_newlabel, align 8
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
    %1 = alloca %Frame_prtlabels, align 8
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
define void @P_block()
{
    %1 = alloca %Frame_block, align 8
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
define void @P_block_skip()
{
    %1 = alloca %Frame_block_skip, align 8
    ret void
}

; line 1934
;================================================================================
; scope: block_constant (level : 3)

; activation record
%Frame_block_constant = type
{
    ; parameters
    i8*,    ; 0: fsp
    %T_setofsys,    ; 1: fsys
    %T_valu,    ; 2: fvalu

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
define void @P_block_constant()
{
    %1 = alloca %Frame_block_constant, align 8
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
define i1 @F_block_comptypes()
{
    %1 = alloca %Frame_block_comptypes, align 8
    %2 = getelementptr inbounds %Frame_block_comptypes, %Frame_block_comptypes* %1, i32 0, i32 2
    %3 = load i1, i1* %2
    ret i1 %3
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
define i1 @F_block_filecomponent()
{
    %1 = alloca %Frame_block_filecomponent, align 8
    %2 = getelementptr inbounds %Frame_block_filecomponent, %Frame_block_filecomponent* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
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
define i1 @F_block_filecomponent_filecomponentre()
{
    %1 = alloca %Frame_block_filecomponent_filecomponentre, align 8
    %2 = getelementptr inbounds %Frame_block_filecomponent_filecomponentre, %Frame_block_filecomponent_filecomponentre* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
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
define i1 @F_block_string()
{
    %1 = alloca %Frame_block_string, align 8
    %2 = getelementptr inbounds %Frame_block_string, %Frame_block_string* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
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
define void @P_block_resolvep()
{
    %1 = alloca %Frame_block_resolvep, align 8
    ret void
}

; line 2127
;================================================================================
; scope: block_typ (level : 3)

; activation record
%Frame_block_typ = type
{
    ; parameters
    i32,    ; 0: fsize
    i8*,    ; 1: fsp
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
define void @P_block_typ()
{
    %1 = alloca %Frame_block_typ, align 8
    ret void
}

; line 2132
;================================================================================
; scope: block_typ_simpletype (level : 4)

; activation record
%Frame_block_typ_simpletype = type
{
    ; parameters
    i32,    ; 0: fsize
    i8*,    ; 1: fsp
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
define void @P_block_typ_simpletype()
{
    %1 = alloca %Frame_block_typ_simpletype, align 8
    ret void
}

; line 2218
;================================================================================
; scope: block_typ_fieldlist (level : 4)

; activation record
%Frame_block_typ_fieldlist = type
{
    ; parameters
    i8*,    ; 0: frecvar
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
define void @P_block_typ_fieldlist()
{
    %1 = alloca %Frame_block_typ_fieldlist, align 8
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
define void @P_block_labeldeclaration()
{
    %1 = alloca %Frame_block_labeldeclaration, align 8
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
define void @P_block_constdeclaration()
{
    %1 = alloca %Frame_block_constdeclaration, align 8
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
define void @P_block_typedeclaration()
{
    %1 = alloca %Frame_block_typedeclaration, align 8
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
define void @P_block_vardeclaration()
{
    %1 = alloca %Frame_block_vardeclaration, align 8
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
define void @P_block_procdeclaration()
{
    %1 = alloca %Frame_block_procdeclaration, align 8
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
define void @P_block_procdeclaration_pushlvl()
{
    %1 = alloca %Frame_block_procdeclaration_pushlvl, align 8
    ret void
}

; line 2639
;================================================================================
; scope: block_procdeclaration_parameterlist (level : 4)

; activation record
%Frame_block_procdeclaration_parameterlist = type
{
    ; parameters
    i8*,    ; 0: fpar
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
define void @P_block_procdeclaration_parameterlist()
{
    %1 = alloca %Frame_block_procdeclaration_parameterlist, align 8
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
define void @P_block_body()
{
    %1 = alloca %Frame_block_body, align 8
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
define void @P_block_body_addlvl()
{
    %1 = alloca %Frame_block_body_addlvl, align 8
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
define void @P_block_body_sublvl()
{
    %1 = alloca %Frame_block_body_sublvl, align 8
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
define void @P_block_body_mes()
{
    %1 = alloca %Frame_block_body_mes, align 8
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
define void @P_block_body_putic()
{
    %1 = alloca %Frame_block_body_putic, align 8
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
define void @P_block_body_gen0()
{
    %1 = alloca %Frame_block_body_gen0, align 8
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
define void @P_block_body_gen1()
{
    %1 = alloca %Frame_block_body_gen1, align 8
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
define void @P_block_body_gen2()
{
    %1 = alloca %Frame_block_body_gen2, align 8
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
define void @P_block_body_gentypindicator()
{
    %1 = alloca %Frame_block_body_gentypindicator, align 8
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
define void @P_block_body_gen0t()
{
    %1 = alloca %Frame_block_body_gen0t, align 8
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
define void @P_block_body_gen1t()
{
    %1 = alloca %Frame_block_body_gen1t, align 8
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
define void @P_block_body_gen2t()
{
    %1 = alloca %Frame_block_body_gen2t, align 8
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
define void @P_block_body_load()
{
    %1 = alloca %Frame_block_body_load, align 8
    ret void
}

; line 3123
;================================================================================
; scope: block_body_store (level : 4)

; activation record
%Frame_block_body_store = type
{
    ; parameters
    %T_attr,    ; 0: fattr

    ; slink
    %Frame_block_body*    ; 1
};

; procedure body
define void @P_block_body_store()
{
    %1 = alloca %Frame_block_body_store, align 8
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
define void @P_block_body_loadaddress()
{
    %1 = alloca %Frame_block_body_loadaddress, align 8
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
define void @P_block_body_genfjp()
{
    %1 = alloca %Frame_block_body_genfjp, align 8
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
define void @P_block_body_genujpxjp()
{
    %1 = alloca %Frame_block_body_genujpxjp, align 8
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
define void @P_block_body_genipj()
{
    %1 = alloca %Frame_block_body_genipj, align 8
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
define void @P_block_body_gencupent()
{
    %1 = alloca %Frame_block_body_gencupent, align 8
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
define void @P_block_body_genlpa()
{
    %1 = alloca %Frame_block_body_genlpa, align 8
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
define void @P_block_body_checkbnds()
{
    %1 = alloca %Frame_block_body_checkbnds, align 8
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
define void @P_block_body_putlabel()
{
    %1 = alloca %Frame_block_body_putlabel, align 8
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
define void @P_block_body_statement()
{
    %1 = alloca %Frame_block_body_statement, align 8
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
define void @P_block_body_statement_selector()
{
    %1 = alloca %Frame_block_body_statement_selector, align 8
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
define i1 @F_block_body_statement_selector_schblk()
{
    %1 = alloca %Frame_block_body_statement_selector_schblk, align 8
    %2 = getelementptr inbounds %Frame_block_body_statement_selector_schblk, %Frame_block_body_statement_selector_schblk* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
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
define void @P_block_body_statement_call()
{
    %1 = alloca %Frame_block_body_statement_call, align 8
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
define void @P_block_body_statement_call_variable()
{
    %1 = alloca %Frame_block_body_statement_call_variable, align 8
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
define void @P_block_body_statement_call_getputresetrewriteprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_getputresetrewriteprocedure, align 8
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
define void @P_block_body_statement_call_pageprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_pageprocedure, align 8
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
define void @P_block_body_statement_call_readprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_readprocedure, align 8
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
define void @P_block_body_statement_call_writeprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_writeprocedure, align 8
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
define void @P_block_body_statement_call_packprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_packprocedure, align 8
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
define void @P_block_body_statement_call_unpackprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_unpackprocedure, align 8
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
define void @P_block_body_statement_call_newdisposeprocedure()
{
    %1 = alloca %Frame_block_body_statement_call_newdisposeprocedure, align 8
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
define void @P_block_body_statement_call_absfunction()
{
    %1 = alloca %Frame_block_body_statement_call_absfunction, align 8
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
define void @P_block_body_statement_call_sqrfunction()
{
    %1 = alloca %Frame_block_body_statement_call_sqrfunction, align 8
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
define void @P_block_body_statement_call_truncfunction()
{
    %1 = alloca %Frame_block_body_statement_call_truncfunction, align 8
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
define void @P_block_body_statement_call_roundfunction()
{
    %1 = alloca %Frame_block_body_statement_call_roundfunction, align 8
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
define void @P_block_body_statement_call_oddfunction()
{
    %1 = alloca %Frame_block_body_statement_call_oddfunction, align 8
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
define void @P_block_body_statement_call_ordfunction()
{
    %1 = alloca %Frame_block_body_statement_call_ordfunction, align 8
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
define void @P_block_body_statement_call_chrfunction()
{
    %1 = alloca %Frame_block_body_statement_call_chrfunction, align 8
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
define void @P_block_body_statement_call_predsuccfunction()
{
    %1 = alloca %Frame_block_body_statement_call_predsuccfunction, align 8
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
define void @P_block_body_statement_call_eofeolnfunction()
{
    %1 = alloca %Frame_block_body_statement_call_eofeolnfunction, align 8
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
define void @P_block_body_statement_call_callnonstandard()
{
    %1 = alloca %Frame_block_body_statement_call_callnonstandard, align 8
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
define void @P_block_body_statement_call_callnonstandard_compparam()
{
    %1 = alloca %Frame_block_body_statement_call_callnonstandard_compparam, align 8
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
define void @P_block_body_statement_expression()
{
    %1 = alloca %Frame_block_body_statement_expression, align 8
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
define void @P_block_body_statement_expression_simpleexpression()
{
    %1 = alloca %Frame_block_body_statement_expression_simpleexpression, align 8
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
define void @P_block_body_statement_expression_simpleexpression_term()
{
    %1 = alloca %Frame_block_body_statement_expression_simpleexpression_term, align 8
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
define void @P_block_body_statement_expression_simpleexpression_term_factor()
{
    %1 = alloca %Frame_block_body_statement_expression_simpleexpression_term_factor, align 8
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
define void @P_block_body_statement_assignment()
{
    %1 = alloca %Frame_block_body_statement_assignment, align 8
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
define void @P_block_body_statement_gotostatement()
{
    %1 = alloca %Frame_block_body_statement_gotostatement, align 8
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
define void @P_block_body_statement_compoundstatement()
{
    %1 = alloca %Frame_block_body_statement_compoundstatement, align 8
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
define void @P_block_body_statement_ifstatement()
{
    %1 = alloca %Frame_block_body_statement_ifstatement, align 8
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
define void @P_block_body_statement_casestatement()
{
    %1 = alloca %Frame_block_body_statement_casestatement, align 8
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
define void @P_block_body_statement_repeatstatement()
{
    %1 = alloca %Frame_block_body_statement_repeatstatement, align 8
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
define void @P_block_body_statement_whilestatement()
{
    %1 = alloca %Frame_block_body_statement_whilestatement, align 8
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
define void @P_block_body_statement_forstatement()
{
    %1 = alloca %Frame_block_body_statement_forstatement, align 8
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
define void @P_block_body_statement_withstatement()
{
    %1 = alloca %Frame_block_body_statement_withstatement, align 8
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
define void @P_programme()
{
    %1 = alloca %Frame_programme, align 8
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
    %1 = alloca %Frame_stdnames, align 8
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
    %1 = alloca %Frame_enterstdtypes, align 8
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
    %1 = alloca %Frame_entstdnames, align 8
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
    %1 = alloca %Frame_enterundecl, align 8
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
    %1 = alloca %Frame_exitundecl, align 8
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
    %1 = alloca %Frame_initscalars, align 8
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
    %1 = alloca %Frame_initsets, align 8
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
    %1 = alloca %Frame_inittables, align 8
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
define void @P_inittables_reswords()
{
    %1 = alloca %Frame_inittables_reswords, align 8
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
define void @P_inittables_symbols()
{
    %1 = alloca %Frame_inittables_symbols, align 8
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
define void @P_inittables_rators()
{
    %1 = alloca %Frame_inittables_rators, align 8
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
define void @P_inittables_procmnemonics()
{
    %1 = alloca %Frame_inittables_procmnemonics, align 8
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
define void @P_inittables_instrmnemonics()
{
    %1 = alloca %Frame_inittables_instrmnemonics, align 8
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
define void @P_inittables_chartypes()
{
    %1 = alloca %Frame_inittables_chartypes, align 8
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
define void @P_inittables_initdx()
{
    %1 = alloca %Frame_inittables_initdx, align 8
    ret void
}

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

