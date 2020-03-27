; ModuleID = 'basics.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\basics.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; program arguments (command line mapping)
%struct._Filename = type { i8*, i8* }
@_FilenameMapEntries = internal global [3 x %struct._Filename]
    [
    %struct._Filename { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null },
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

; line 80
;================================================================================
; scope: program scope (level : 1)

; types
%T_string80 = type [80 x i8]
%T_bstring80 = type [84 x i8]
%T_array_2 = type [26 x i32]
%T_string10 = type [10 x i8]
%T_array_3 = type [29 x %T_string10]
%T_array_4 = type [101 x %T_string80]
%T_array_5 = type [26 x %T_bstring80]
%T_record_7 = type [92 x i8]
%T_array_6 = type [10 x %T_record_7]

; program variables
@input = dso_local global %T_text zeroinitializer
@ints = dso_local global %T_array_2 zeroinitializer
@keywd = dso_local global %T_array_3 zeroinitializer
@linec = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@prgm = dso_local global %T_array_4 zeroinitializer
@prgmc = dso_local global i32 zeroinitializer
@strs = dso_local global %T_array_5 zeroinitializer
@temp = dso_local global %T_array_6 zeroinitializer
@top = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ret void
}


; line 128
;================================================================================
; scope: prtlin (level : 2)

; activation record
%Frame_prtlin = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i32,    ; 1: i
    i32,    ; 2: j

    ; dummy
    i8*
};

; procedure body
define void @P_prtlin()
{
    %1 = alloca %Frame_prtlin, align 8
    ret void
}


; line 132
;================================================================================
; scope: prtlin_prtkey (level : 3)

; activation record
%Frame_prtlin_prtkey = type
{
    ; parameters
    %T_string10,    ; 0: str

    ; variables
    i32,    ; 1: i
    i32,    ; 2: j

    ; slink
    %Frame_prtlin*    ; 3
};

; procedure body
define void @P_prtlin_prtkey()
{
    %1 = alloca %Frame_prtlin_prtkey, align 8
    ret void
}


; line 165
;================================================================================
; scope: prterr (level : 2)

; activation record
%Frame_prterr = type
{
    ; parameters
    i32,    ; 0: err

    ; dummy
    i8*
};

; procedure body
define void @P_prterr()
{
    %1 = alloca %Frame_prterr, align 8
    ret void
}


; line 205
;================================================================================
; scope: chkchr (level : 2)

; activation record
%Frame_chkchr = type
{
    ; variables
    i8,    ; 0: _fnvalue
    i8,    ; 1: c

    ; dummy
    i8*
};

; function body
define i8 @F_chkchr()
{
    %1 = alloca %Frame_chkchr, align 8
    %2 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %1, i32 0, i32 0
    %3 = load i8, i8* %2
    ret i8 %3
}


; line 219
;================================================================================
; scope: chkend (level : 2)

; activation record
%Frame_chkend = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_chkend()
{
    %1 = alloca %Frame_chkend, align 8
    %2 = getelementptr inbounds %Frame_chkend, %Frame_chkend* %1, i32 0, i32 0
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 229
;================================================================================
; scope: getchr (level : 2)

; activation record
%Frame_getchr = type
{
    ; variables
    i8,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i8 @F_getchr()
{
    %1 = alloca %Frame_getchr, align 8
    %2 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %1, i32 0, i32 0
    %3 = load i8, i8* %2
    ret i8 %3
}


; line 240
;================================================================================
; scope: chknxt (level : 2)

; activation record
%Frame_chknxt = type
{
    ; parameters
    i8,    ; 0: c

    ; variables
    i1,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_chknxt()
{
    %1 = alloca %Frame_chknxt, align 8
    %2 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 251
;================================================================================
; scope: skpspc (level : 2)

; activation record
%Frame_skpspc = type
{
    ; variables
    i8,    ; 0: c

    ; dummy
    i8*
};

; procedure body
define void @P_skpspc()
{
    %1 = alloca %Frame_skpspc, align 8
    ret void
}


; line 263
;================================================================================
; scope: chksend (level : 2)

; activation record
%Frame_chksend = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_chksend()
{
    %1 = alloca %Frame_chksend, align 8
    %2 = getelementptr inbounds %Frame_chksend, %Frame_chksend* %1, i32 0, i32 0
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 274
;================================================================================
; scope: null (level : 2)

; activation record
%Frame_null = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: f
    i32,    ; 3: i

    ; dummy
    i8*
};

; function body
define i1 @F_null()
{
    %1 = alloca %Frame_null, align 8
    %2 = getelementptr inbounds %Frame_null, %Frame_null* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 289
;================================================================================
; scope: digit (level : 2)

; activation record
%Frame_digit = type
{
    ; parameters
    i8,    ; 0: c

    ; variables
    i1,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_digit()
{
    %1 = alloca %Frame_digit, align 8
    %2 = getelementptr inbounds %Frame_digit, %Frame_digit* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 299
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


; line 311
;================================================================================
; scope: alpha (level : 2)

; activation record
%Frame_alpha = type
{
    ; parameters
    i8,    ; 0: c

    ; variables
    i1,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_alpha()
{
    %1 = alloca %Frame_alpha, align 8
    %2 = getelementptr inbounds %Frame_alpha, %Frame_alpha* %1, i32 0, i32 1
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 322
;================================================================================
; scope: lint (level : 2)

; activation record
%Frame_lint = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i32,    ; 1: _fnvalue
    i1,    ; 2: b
    i32,    ; 3: i
    i32,    ; 4: v

    ; dummy
    i8*
};

; function body
define i32 @F_lint()
{
    %1 = alloca %Frame_lint, align 8
    %2 = getelementptr inbounds %Frame_lint, %Frame_lint* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}


; line 353
;================================================================================
; scope: schlab (level : 2)

; activation record
%Frame_schlab = type
{
    ; parameters
    i32,    ; 0: lab

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i

    ; dummy
    i8*
};

; function body
define i32 @F_schlab()
{
    %1 = alloca %Frame_schlab, align 8
    %2 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}


; line 368
;================================================================================
; scope: inpstr (level : 2)

; activation record
%Frame_inpstr = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_inpstr()
{
    %1 = alloca %Frame_inpstr, align 8
    ret void
}


; line 389
;================================================================================
; scope: getvar (level : 2)

; activation record
%Frame_getvar = type
{
    ; variables
    i8,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i8 @F_getvar()
{
    %1 = alloca %Frame_getvar, align 8
    %2 = getelementptr inbounds %Frame_getvar, %Frame_getvar* %1, i32 0, i32 0
    %3 = load i8, i8* %2
    ret i8 %3
}


; line 400
;================================================================================
; scope: enter (level : 2)

; activation record
%Frame_enter = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i1,    ; 1: f
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: k
    i32,    ; 5: line

    ; dummy
    i8*
};

; procedure body
define void @P_enter()
{
    %1 = alloca %Frame_enter, align 8
    ret void
}


; line 449
;================================================================================
; scope: keycom (level : 2)

; activation record
%Frame_keycom = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i8,    ; 1: c
    i1,    ; 2: f
    i32,    ; 3: i1
    i32,    ; 4: i2
    i32,    ; 5: k
    %T_string80,    ; 6: ts

    ; dummy
    i8*
};

; procedure body
define void @P_keycom()
{
    %1 = alloca %Frame_keycom, align 8
    ret void
}


; line 456
;================================================================================
; scope: keycom_matstr (level : 3)

; activation record
%Frame_keycom_matstr = type
{
    ; parameters
    i32,    ; 0: i
    %T_string80,    ; 1: stra
    %T_string10,    ; 2: strb

    ; variables
    i1,    ; 3: _fnvalue
    i1,    ; 4: f
    i32,    ; 5: i1
    i32,    ; 6: i2

    ; slink
    %Frame_keycom*    ; 7
};

; function body
define i1 @F_keycom_matstr()
{
    %1 = alloca %Frame_keycom_matstr, align 8
    %2 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %1, i32 0, i32 3
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 540
;================================================================================
; scope: getint (level : 2)

; activation record
%Frame_getint = type
{
    ; variables
    i32,    ; 0: _fnvalue
    i32,    ; 1: v

    ; dummy
    i8*
};

; function body
define i32 @F_getint()
{
    %1 = alloca %Frame_getint, align 8
    %2 = getelementptr inbounds %Frame_getint, %Frame_getint* %1, i32 0, i32 0
    %3 = load i32, i32* %2
    ret i32 %3
}


; line 557
;================================================================================
; scope: getval (level : 2)

; activation record
%Frame_getval = type
{
    ; parameters
    %T_string80,    ; 0: str

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i

    ; dummy
    i8*
};

; function body
define i32 @F_getval()
{
    %1 = alloca %Frame_getval, align 8
    %2 = getelementptr inbounds %Frame_getval, %Frame_getval* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}


; line 575
;================================================================================
; scope: getbval (level : 2)

; activation record
%Frame_getbval = type
{
    ; parameters
    %T_bstring80,    ; 0: str

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    i32,    ; 3: v

    ; dummy
    i8*
};

; function body
define i32 @F_getbval()
{
    %1 = alloca %Frame_getbval, align 8
    %2 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}


; line 599
;================================================================================
; scope: putbval (level : 2)

; activation record
%Frame_putbval = type
{
    ; parameters
    %T_bstring80,    ; 0: str
    i32,    ; 1: v

    ; variables
    i32,    ; 2: i
    i32,    ; 3: p

    ; dummy
    i8*
};

; procedure body
define void @P_putbval()
{
    %1 = alloca %Frame_putbval, align 8
    ret void
}


; line 635
;================================================================================
; scope: prtbstr (level : 2)

; activation record
%Frame_prtbstr = type
{
    ; parameters
    %T_bstring80,    ; 0: bstr

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_prtbstr()
{
    %1 = alloca %Frame_prtbstr, align 8
    ret void
}


; line 647
;================================================================================
; scope: inpbstr (level : 2)

; activation record
%Frame_inpbstr = type
{
    ; parameters
    %T_bstring80,    ; 0: bstr

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_inpbstr()
{
    %1 = alloca %Frame_inpbstr, align 8
    ret void
}


; line 669
;================================================================================
; scope: cat (level : 2)

; activation record
%Frame_cat = type
{
    ; parameters
    %T_bstring80,    ; 0: bstra
    %T_bstring80,    ; 1: bstrb

    ; variables
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_cat()
{
    %1 = alloca %Frame_cat, align 8
    ret void
}


; line 684
;================================================================================
; scope: chkequ (level : 2)

; activation record
%Frame_chkequ = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_chkequ()
{
    %1 = alloca %Frame_chkequ, align 8
    %2 = getelementptr inbounds %Frame_chkequ, %Frame_chkequ* %1, i32 0, i32 0
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 696
;================================================================================
; scope: chkltn (level : 2)

; activation record
%Frame_chkltn = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_chkltn()
{
    %1 = alloca %Frame_chkltn, align 8
    %2 = getelementptr inbounds %Frame_chkltn, %Frame_chkltn* %1, i32 0, i32 0
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 708
;================================================================================
; scope: chkgtn (level : 2)

; activation record
%Frame_chkgtn = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_chkgtn()
{
    %1 = alloca %Frame_chkgtn, align 8
    %2 = getelementptr inbounds %Frame_chkgtn, %Frame_chkgtn* %1, i32 0, i32 0
    %3 = load i1, i1* %2
    ret i1 %3
}


; line 720
;================================================================================
; scope: settrue (level : 2)

; activation record
%Frame_settrue = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_settrue()
{
    %1 = alloca %Frame_settrue, align 8
    ret void
}


; line 731
;================================================================================
; scope: setfalse (level : 2)

; activation record
%Frame_setfalse = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_setfalse()
{
    %1 = alloca %Frame_setfalse, align 8
    ret void
}


; line 742
;================================================================================
; scope: clear (level : 2)

; activation record
%Frame_clear = type
{
    ; variables
    i8,    ; 0: c
    i32,    ; 1: x
    i32,    ; 2: y

    ; dummy
    i8*
};

; procedure body
define void @P_clear()
{
    %1 = alloca %Frame_clear, align 8
    ret void
}


; line 761
;================================================================================
; scope: clrvar (level : 2)

; activation record
%Frame_clrvar = type
{
    ; variables
    i8,    ; 0: c

    ; dummy
    i8*
};

; procedure body
define void @P_clrvar()
{
    %1 = alloca %Frame_clrvar, align 8
    ret void
}


; line 777
;================================================================================
; scope: exec (level : 2)

; activation record
%Frame_exec = type
{
    ; variables
    i8,    ; 0: c

    ; dummy
    i8*
};

; procedure body
define void @P_exec()
{
    %1 = alloca %Frame_exec, align 8
    ret void
}


; line 785
;================================================================================
; scope: exec_stat (level : 3)

; activation record
%Frame_exec_stat = type
{
    ; variables
    i1,    ; 0: b
    i8,    ; 1: c
    %T_string80,    ; 2: s
    i32,    ; 3: x
    i32,    ; 4: y

    ; slink
    %Frame_exec*    ; 5
};

; procedure body
define void @P_exec_stat()
{
    %1 = alloca %Frame_exec_stat, align 8
    ret void
}


; line 794
;================================================================================
; scope: exec_stat_expr (level : 4)

; activation record
%Frame_exec_stat_expr = type
{
    ; slink
    %Frame_exec_stat*    ; 0
};

; procedure body
define void @P_exec_stat_expr()
{
    %1 = alloca %Frame_exec_stat_expr, align 8
    ret void
}


; line 798
;================================================================================
; scope: exec_stat_expr_sexpr (level : 5)

; activation record
%Frame_exec_stat_expr_sexpr = type
{
    ; slink
    %Frame_exec_stat_expr*    ; 0
};

; procedure body
define void @P_exec_stat_expr_sexpr()
{
    %1 = alloca %Frame_exec_stat_expr_sexpr, align 8
    ret void
}


; line 802
;================================================================================
; scope: exec_stat_expr_sexpr_term (level : 6)

; activation record
%Frame_exec_stat_expr_sexpr_term = type
{
    ; slink
    %Frame_exec_stat_expr_sexpr*    ; 0
};

; procedure body
define void @P_exec_stat_expr_sexpr_term()
{
    %1 = alloca %Frame_exec_stat_expr_sexpr_term, align 8
    ret void
}


; line 806
;================================================================================
; scope: exec_stat_expr_sexpr_term_factor (level : 7)

; activation record
%Frame_exec_stat_expr_sexpr_term_factor = type
{
    ; variables
    i8,    ; 0: c
    i32,    ; 1: i

    ; slink
    %Frame_exec_stat_expr_sexpr_term*    ; 2
};

; procedure body
define void @P_exec_stat_expr_sexpr_term_factor()
{
    %1 = alloca %Frame_exec_stat_expr_sexpr_term_factor, align 8
    ret void
}


; line 1105
;================================================================================
; scope: exec_stat_let (level : 4)

; activation record
%Frame_exec_stat_let = type
{
    ; slink
    %Frame_exec_stat*    ; 0
};

; procedure body
define void @P_exec_stat_let()
{
    %1 = alloca %Frame_exec_stat_let, align 8
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!43}

!0 = !DIFile(filename: "basics.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bstring80", file: !0, line: 102, size: 672, flags: DIFlagTypePassByValue, elements: !14)
!9 = !DICompositeType(tag: DW_TAG_array_type, name: "string80", file: !0, line: 101, baseType: !2, size: 640, elements: !11)
!10 = !DISubrange(count: 80)
!11 = !{!10}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !8, file: !0, line: 103, baseType: !3, size: 32, offset: 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !8, file: !0, line: 104, baseType: !9, size: 640, offset: 32)
!14 = !{!12,!13}
!15 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!16 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 115, baseType: !3, size: 832, elements: !18)
!17 = !DISubrange(count: 26)
!18 = !{!17}
!19 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 116, baseType: !20, size: 2320, elements: !24)
!20 = !DICompositeType(tag: DW_TAG_array_type, name: "string10", file: !0, line: 100, baseType: !2, size: 80, elements: !22)
!21 = !DISubrange(count: 10)
!22 = !{!21}
!23 = !DISubrange(count: 29)
!24 = !{!23}
!25 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 113, baseType: !9, size: 64640, elements: !27)
!26 = !DISubrange(count: 101)
!27 = !{!26}
!28 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 114, baseType: !8, size: 17472, elements: !30)
!29 = !DISubrange(count: 26)
!30 = !{!29}
!31 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 117, baseType: !32, size: 7360, elements: !39)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 117, size: 736, flags: DIFlagTypePassByValue, elements: !37)
!33 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !32, file: !0, line: 118, baseType: !33, size: 32, offset: 0)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "int", scope: !32, file: !0, line: 119, baseType: !3, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "bstr", scope: !32, file: !0, line: 120, baseType: !8, size: 672, offset: 64)
!37 = !{!34,!35,!36}
!38 = !DISubrange(count: 10)
!39 = !{!38}
!40 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!15,!16,!19,!20,!25,!28,!31,!32,!33}
!41 = !{}
!42 = !{}
!43 = !{!"LPC 1.1"}
!44 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !40, globals: !42, nameTableKind: None)
!45 = !{i32 2, !"CodeView", i32 1}
!46 = !{i32 2, !"Debug Info Version", i32 3}

