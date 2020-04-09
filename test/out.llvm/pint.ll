; ModuleID = 'pint.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pint.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)

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

; line 6
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_beta = type [25 x i8]
%T_record_3 = type [24 x i8]
%T_array_2 = type [8651 x %T_record_3]
%T_array_4 = type [128 x i32]
%T_array_5 = type [128 x %T_alfa]
%T_settype = type [2 x i32]
%T_array_7 = type [21 x %T_alfa]
%T_record_9 = type [8 x i8]
%T_array_8 = type [18001 x %T_record_9]

; program variables
@ad = dso_local global i32 zeroinitializer
@ad1 = dso_local global i32 zeroinitializer
@b = dso_local global i1 zeroinitializer
@c = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cop = dso_local global %T_array_4 zeroinitializer
@ep = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@i1 = dso_local global i32 zeroinitializer
@i2 = dso_local global i32 zeroinitializer
@i3 = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@instr = dso_local global %T_array_5 zeroinitializer
@interpreting = dso_local global i1 zeroinitializer
@j = dso_local global i32 zeroinitializer
@mp = dso_local global i32 zeroinitializer
@np = dso_local global i32 zeroinitializer
@op = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global i32 zeroinitializer
@pc = dso_local global i32 zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global i32 zeroinitializer
@sp = dso_local global i32 zeroinitializer
@sptable = dso_local global %T_array_7 zeroinitializer
@store = dso_local global %T_array_8 zeroinitializer

; procedure body
define void @P_()
{
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @prd
    %t4 = call i8* @_OpenFile(i32 3)
    store i8* %t4, i8** @prr
    %t5 = load %T_text, %T_text* @prr
    call void @_CloseFile(i8* %t5)
    %t6 = load %T_text, %T_text* @prd
    call void @_CloseFile(i8* %t6)
    %t7 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t7)
    %t8 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t8)
    ret void
}


; line 124
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type [8 x i8]
%T_load_array_10 = type [1851 x %T_load_labelrec]
%T_load_array_11 = type [10 x i8]

; activation record
%Frame_load = type
{
    ; variables
    i32,    ; 0: bcp
    i8,    ; 1: ch
    i32,    ; 2: icp
    %T_load_array_10,    ; 3: labeltab
    i32,    ; 4: labelvalue
    i32,    ; 5: mcp
    i32,    ; 6: rcp
    i32,    ; 7: scp
    %T_load_array_11,    ; 8: word

    ; dummy
    i8*
};

; procedure body
define void @P_load()
{
    %frame = alloca %Frame_load, align 8
    ret void
}


; line 138
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
define void @P_load_init()
{
    %frame = alloca %Frame_load_init, align 8
    ret void
}


; line 202
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
define void @P_load_errorl()
{
    %frame = alloca %Frame_load_errorl, align 8
    ret void
}


; line 208
;================================================================================
; scope: load_update (level : 3)

; activation record
%Frame_load_update = type
{
    ; parameters
    i32,    ; 0: x

    ; variables
    i32,    ; 1: curr
    i1,    ; 2: endlist
    i32,    ; 3: succ

    ; slink
    %Frame_load*    ; 4
};

; procedure body
define void @P_load_update()
{
    %frame = alloca %Frame_load_update, align 8
    ret void
}


; line 237
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
define void @P_load_generate()
{
    %frame = alloca %Frame_load_generate, align 8
    ret void
}


; line 259
;================================================================================
; scope: load_assemble (level : 3)

; activation record
%Frame_load_assemble = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: lb
    %T_alfa,    ; 2: name
    double,    ; 3: r
    %T_settype,    ; 4: s
    i32,    ; 5: s1
    i32,    ; 6: ub

    ; slink
    %Frame_load*    ; 7
};

; procedure body
define void @P_load_assemble()
{
    %frame = alloca %Frame_load_assemble, align 8
    ret void
}


; line 264
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
define void @P_load_assemble_lookup()
{
    %frame = alloca %Frame_load_assemble_lookup, align 8
    ret void
}


; line 273
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
define void @P_load_assemble_labelsearch()
{
    %frame = alloca %Frame_load_assemble_labelsearch, align 8
    ret void
}


; line 279
;================================================================================
; scope: load_assemble_getname (level : 4)

; activation record
%Frame_load_assemble_getname = type
{
    ; slink
    %Frame_load_assemble*    ; 0
};

; procedure body
define void @P_load_assemble_getname()
{
    %frame = alloca %Frame_load_assemble_getname, align 8
    ret void
}


; line 286
;================================================================================
; scope: load_assemble_typesymbol (level : 4)

; activation record
%Frame_load_assemble_typesymbol = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_typesymbol()
{
    %frame = alloca %Frame_load_assemble_typesymbol, align 8
    ret void
}


; line 476
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
    %frame = alloca %Frame_pmd, align 8
    ret void
}


; line 479
;================================================================================
; scope: pmd_pt (level : 3)

; activation record
%Frame_pmd_pt = type
{
    ; slink
    %Frame_pmd*    ; 0
};

; procedure body
define void @P_pmd_pt()
{
    %frame = alloca %Frame_pmd_pt, align 8
    ret void
}


; line 500
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
define void @P_errori()
{
    %frame = alloca %Frame_errori, align 8
    ret void
}


; line 505
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
define i32 @F_base()
{
    %frame = alloca %Frame_base, align 8
    %t1 = getelementptr inbounds %Frame_base, %Frame_base* %frame, i32 0, i32 1
    %t2 = load i32, i32* %t1
    ret i32 %t2
}


; line 514
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
    %frame = alloca %Frame_compare, align 8
    ret void
}


; line 526
;================================================================================
; scope: callsp (level : 2)

; activation record
%Frame_callsp = type
{
    ; variables
    i1,    ; 0: line

    ; dummy
    i8*
};

; procedure body
define void @P_callsp()
{
    %frame = alloca %Frame_callsp, align 8
    ret void
}


; line 530
;================================================================================
; scope: callsp_readi (level : 3)

; activation record
%Frame_callsp_readi = type
{
    ; parameters
    %T_text,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readi()
{
    %frame = alloca %Frame_callsp_readi, align 8
    ret void
}


; line 538
;================================================================================
; scope: callsp_readr (level : 3)

; activation record
%Frame_callsp_readr = type
{
    ; parameters
    %T_text,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readr()
{
    %frame = alloca %Frame_callsp_readr, align 8
    ret void
}


; line 546
;================================================================================
; scope: callsp_readc (level : 3)

; activation record
%Frame_callsp_readc = type
{
    ; parameters
    %T_text,    ; 0: f

    ; variables
    i32,    ; 1: ad
    i8,    ; 2: c

    ; slink
    %Frame_callsp*    ; 3
};

; procedure body
define void @P_callsp_readc()
{
    %frame = alloca %Frame_callsp_readc, align 8
    ret void
}


; line 556
;================================================================================
; scope: callsp_writestr (level : 3)

; activation record
%Frame_callsp_writestr = type
{
    ; parameters
    %T_text,    ; 0: f

    ; variables
    i32,    ; 1: ad
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: k

    ; slink
    %Frame_callsp*    ; 5
};

; procedure body
define void @P_callsp_writestr()
{
    %frame = alloca %Frame_callsp_writestr, align 8
    ret void
}


; line 568
;================================================================================
; scope: callsp_getfile (level : 3)

; activation record
%Frame_callsp_getfile = type
{
    ; parameters
    %T_text,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_getfile()
{
    %frame = alloca %Frame_callsp_getfile, align 8
    ret void
}


; line 575
;================================================================================
; scope: callsp_putfile (level : 3)

; activation record
%Frame_callsp_putfile = type
{
    ; parameters
    %T_text,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_putfile()
{
    %frame = alloca %Frame_callsp_putfile, align 8
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

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!74, !75}
!llvm.ident = !{!72}

!0 = !DIFile(filename: "pint.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 76, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10)
!12 = !{!11}
!13 = !DICompositeType(tag: DW_TAG_array_type, name: "beta", file: !0, line: 74, baseType: !2, size: 200, elements: !15)
!14 = !DISubrange(count: 25)
!15 = !{!14}
!16 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!19 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 78, baseType: !20, size: 1660992, elements: !29)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 79, size: 192, flags: DIFlagTypePassByValue, elements: !27)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "op1", scope: !20, file: !0, line: 79, baseType: !18, size: 32, offset: 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !20, file: !0, line: 80, baseType: !17, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "q1", scope: !20, file: !0, line: 81, baseType: !16, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "op2", scope: !20, file: !0, line: 82, baseType: !18, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !20, file: !0, line: 83, baseType: !17, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "q2", scope: !20, file: !0, line: 84, baseType: !16, size: 32, offset: 160)
!27 = !{!21,!22,!23,!24,!25,!26}
!28 = !DISubrange(count: 8651)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 112, baseType: !3, size: 4096, elements: !32)
!31 = !DISubrange(count: 128)
!32 = !{!31}
!33 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 111, baseType: !10, size: 10240, elements: !35)
!34 = !DISubrange(count: 128)
!35 = !{!34}
!36 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!37 = !DICompositeType(tag: DW_TAG_array_type, name: "settype", file: !0, line: 75, baseType: !40, size: 64, elements: !39)
!38 = !DISubrange(count: 59)
!39 = !{!38}
!40 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!41 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 113, baseType: !10, size: 1680, elements: !43)
!42 = !DISubrange(count: 21)
!43 = !{!42}
!44 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 89, baseType: !45, size: 1152064, elements: !55)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 90, size: 64, flags: DIFlagTypePassByValue, elements: !53)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !45, file: !0, line: 93, baseType: !3, size: 32, offset: 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "vr", scope: !45, file: !0, line: 94, baseType: !6, size: 64, offset: 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !45, file: !0, line: 95, baseType: !1, size: 8, offset: 0)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !45, file: !0, line: 96, baseType: !37, size: 64, offset: 0)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !45, file: !0, line: 97, baseType: !2, size: 8, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !45, file: !0, line: 98, baseType: !8, size: 32, offset: 0)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !45, file: !0, line: 100, baseType: !3, size: 32, offset: 0)
!53 = !{!46,!47,!48,!49,!50,!51,!52}
!54 = !DISubrange(count: 18001)
!55 = !{!54}
!56 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 128, size: 64, flags: DIFlagTypePassByValue, elements: !60)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !57, file: !0, line: 129, baseType: !8, size: 32, offset: 0)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !57, file: !0, line: 130, baseType: !56, size: 32, offset: 32)
!60 = !{!58,!59}
!61 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 135, baseType: !57, size: 118464, elements: !64)
!63 = !DISubrange(count: 1851)
!64 = !{!63}
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 134, baseType: !2, size: 80, elements: !67)
!66 = !DISubrange(count: 10)
!67 = !{!66}
!68 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!69 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!13,!16,!17,!18,!19,!20,!30,!33,!36,!37,!41,!44,!45,!56,!57,!61,!62,!65,!68}
!70 = !{}
!71 = !{}
!72 = !{!"LPC 1.1"}
!73 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !69, globals: !71, nameTableKind: None)
!74 = !{i32 2, !"CodeView", i32 1}
!75 = !{i32 2, !"Debug Info Version", i32 3}

