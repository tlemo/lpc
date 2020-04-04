; ModuleID = 'startrek.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\startrek.pas"
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

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_3 = type [10 x i8]
%T_array_2 = type [5 x %T_array_3]
%T_quadxy = type [8 x i8]
%T_sectxy = type [8 x i8]
%T_array_5 = type [20 x i8]
%T_devicerec = type [24 x i8]
%T_array_4 = type [8 x %T_devicerec]
%T_quadrec = type [20 x i8]
%T_array_7 = type [8 x %T_quadrec]
%T_array_6 = type [8 x %T_array_7]
%T_klingonrec = type [12 x i8]
%T_array_8 = type [12 x %T_klingonrec]
%T_array_10 = type [8 x i32]
%T_array_9 = type [8 x %T_array_10]
%T_array_11 = type [7 x i8]

; program variables
@badpoints = dso_local global i32 zeroinitializer
@bell = dso_local global i8 zeroinitializer
@condition = dso_local global i32 zeroinitializer
@condnames = dso_local global %T_array_2 zeroinitializer
@curenergy = dso_local global i32 zeroinitializer
@curquad = dso_local global %T_quadxy zeroinitializer
@cursect = dso_local global %T_sectxy zeroinitializer
@curtorps = dso_local global i32 zeroinitializer
@curyear = dso_local global i32 zeroinitializer
@device = dso_local global %T_array_4 zeroinitializer
@endyear = dso_local global i32 zeroinitializer
@galaxy = dso_local global %T_array_6 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@klingons = dso_local global %T_array_8 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@quadrant = dso_local global %T_array_9 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@startklingons = dso_local global i32 zeroinitializer
@startyear = dso_local global i32 zeroinitializer
@symbols = dso_local global %T_array_11 zeroinitializer
@totalkbases = dso_local global i32 zeroinitializer
@totalklingons = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ret void
}


; line 65
;================================================================================
; scope: expp (level : 2)

; activation record
%Frame_expp = type
{
    ; parameters
    double,    ; 0: r

    ; variables
    double,    ; 1: _fnvalue
    i32,    ; 2: i
    double,    ; 3: m
    double,    ; 4: t

    ; dummy
    i8*
};

; function body
define double @F_expp()
{
    %frame = alloca %Frame_expp, align 8
    %t1 = getelementptr inbounds %Frame_expp, %Frame_expp* %frame, i32 0, i32 1
    %t2 = load double, double* %t1
    ret double %t2
}


; line 84
;================================================================================
; scope: random (level : 2)

; activation record
%Frame_random = type
{
    ; parameters
    i32,    ; 0: hi
    i32,    ; 1: low

    ; variables
    i32,    ; 2: _fnvalue
    i32,    ; 3: gamma

    ; dummy
    i8*
};

; function body
define i32 @F_random()
{
    %frame = alloca %Frame_random, align 8
    %t1 = getelementptr inbounds %Frame_random, %Frame_random* %frame, i32 0, i32 2
    %t2 = load i32, i32* %t1
    ret i32 %t2
}


; line 95
;================================================================================
; scope: distance (level : 2)

; activation record
%Frame_distance = type
{
    ; parameters
    i32,    ; 0: pos1x
    i32,    ; 1: pos1y
    %T_sectxy,    ; 2: pos2

    ; variables
    i32,    ; 3: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_distance()
{
    %frame = alloca %Frame_distance, align 8
    %t1 = getelementptr inbounds %Frame_distance, %Frame_distance* %frame, i32 0, i32 3
    %t2 = load i32, i32* %t1
    ret i32 %t2
}


; line 100
;================================================================================
; scope: radians (level : 2)

; activation record
%Frame_radians = type
{
    ; parameters
    i32,    ; 0: degrees

    ; variables
    double,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define double @F_radians()
{
    %frame = alloca %Frame_radians, align 8
    %t1 = getelementptr inbounds %Frame_radians, %Frame_radians* %frame, i32 0, i32 1
    %t2 = load double, double* %t1
    ret double %t2
}


; line 105
;================================================================================
; scope: interval (level : 2)

; activation record
%Frame_interval = type
{
    ; parameters
    i32,    ; 0: maxvalue
    i32,    ; 1: minvalue
    i32,    ; 2: number

    ; variables
    i32,    ; 3: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_interval()
{
    %frame = alloca %Frame_interval, align 8
    %t1 = getelementptr inbounds %Frame_interval, %Frame_interval* %frame, i32 0, i32 3
    %t2 = load i32, i32* %t1
    ret i32 %t2
}


; line 116
;================================================================================
; scope: reinitialize (level : 2)

; activation record
%Frame_reinitialize = type
{
    ; variables
    i8,    ; 0: ch

    ; dummy
    i8*
};

; procedure body
define void @P_reinitialize()
{
    %frame = alloca %Frame_reinitialize, align 8
    ret void
}


; line 125
;================================================================================
; scope: initialize (level : 2)

; activation record
%Frame_initialize = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: j
    i32,    ; 2: rnum
    i32,    ; 3: totalfedbase

    ; dummy
    i8*
};

; procedure body
define void @P_initialize()
{
    %frame = alloca %Frame_initialize, align 8
    ret void
}


; line 191
;================================================================================
; scope: setcondition (level : 2)

; activation record
%Frame_setcondition = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: j

    ; dummy
    i8*
};

; procedure body
define void @P_setcondition()
{
    %frame = alloca %Frame_setcondition, align 8
    ret void
}


; line 211
;================================================================================
; scope: klingonattack (level : 2)

; types
%T_klingonattack_array_12 = type [8 x i8]

; activation record
%Frame_klingonattack = type
{
    ; variables
    i32,    ; 0: hit
    i32,    ; 1: i
    %T_klingonattack_array_12,    ; 2: shiptype

    ; dummy
    i8*
};

; procedure body
define void @P_klingonattack()
{
    %frame = alloca %Frame_klingonattack, align 8
    ret void
}


; line 241
;================================================================================
; scope: printdigit (level : 2)

; activation record
%Frame_printdigit = type
{
    ; parameters
    i1,    ; 0: mustprint
    i32,    ; 1: number

    ; dummy
    i8*
};

; procedure body
define void @P_printdigit()
{
    %frame = alloca %Frame_printdigit, align 8
    ret void
}


; line 250
;================================================================================
; scope: setupquad (level : 2)

; activation record
%Frame_setupquad = type
{
    ; parameters
    %T_sectxy,    ; 0: entsect
    %T_quadxy,    ; 1: quad

    ; variables
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: klingindex
    i32,    ; 5: novacount

    ; dummy
    i8*
};

; procedure body
define void @P_setupquad()
{
    %frame = alloca %Frame_setupquad, align 8
    ret void
}


; line 253
;================================================================================
; scope: setupquad_setupstuff (level : 3)

; activation record
%Frame_setupquad_setupstuff = type
{
    ; parameters
    i32,    ; 0: count
    i32,    ; 1: object

    ; variables
    i32,    ; 2: x
    i32,    ; 3: y

    ; slink
    %Frame_setupquad*    ; 4
};

; procedure body
define void @P_setupquad_setupstuff()
{
    %frame = alloca %Frame_setupquad_setupstuff, align 8
    ret void
}


; line 301
;================================================================================
; scope: printquadrant (level : 2)

; activation record
%Frame_printquadrant = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: j

    ; dummy
    i8*
};

; procedure body
define void @P_printquadrant()
{
    %frame = alloca %Frame_printquadrant, align 8
    ret void
}


; line 330
;================================================================================
; scope: printgalaxy (level : 2)

; activation record
%Frame_printgalaxy = type
{
    ; parameters
    i32,    ; 0: lefty
    i1,    ; 1: markhistory
    i32,    ; 2: size
    i32,    ; 3: topx

    ; variables
    i32,    ; 4: i
    i32,    ; 5: j
    i1,    ; 6: mustprint

    ; dummy
    i8*
};

; procedure body
define void @P_printgalaxy()
{
    %frame = alloca %Frame_printgalaxy, align 8
    ret void
}


; line 335
;================================================================================
; scope: printgalaxy_printseparator (level : 3)

; activation record
%Frame_printgalaxy_printseparator = type
{
    ; parameters
    i32,    ; 0: entries

    ; variables
    i32,    ; 1: count

    ; slink
    %Frame_printgalaxy*    ; 2
};

; procedure body
define void @P_printgalaxy_printseparator()
{
    %frame = alloca %Frame_printgalaxy_printseparator, align 8
    ret void
}


; line 380
;================================================================================
; scope: printdamage (level : 2)

; activation record
%Frame_printdamage = type
{
    ; variables
    i8,    ; 0: ch

    ; dummy
    i8*
};

; procedure body
define void @P_printdamage()
{
    %frame = alloca %Frame_printdamage, align 8
    ret void
}


; line 388
;================================================================================
; scope: moveenterprise (level : 2)

; activation record
%Frame_moveenterprise = type
{
    ; variables
    i32,    ; 0: course
    double,    ; 1: warp
    double,    ; 2: xinc
    double,    ; 3: xpos
    double,    ; 4: yinc
    double,    ; 5: ypos

    ; dummy
    i8*
};

; procedure body
define void @P_moveenterprise()
{
    %frame = alloca %Frame_moveenterprise, align 8
    ret void
}


; line 392
;================================================================================
; scope: moveenterprise_handledamage (level : 3)

; activation record
%Frame_moveenterprise_handledamage = type
{
    ; variables
    i8,    ; 0: ch
    i8,    ; 1: startch

    ; slink
    %Frame_moveenterprise*    ; 2
};

; procedure body
define void @P_moveenterprise_handledamage()
{
    %frame = alloca %Frame_moveenterprise_handledamage, align 8
    ret void
}


; line 425
;================================================================================
; scope: moveenterprise_moveintra (level : 3)

; activation record
%Frame_moveenterprise_moveintra = type
{
    ; parameters
    i32,    ; 0: course
    double,    ; 1: warp
    double,    ; 2: xinc
    double,    ; 3: xpos
    double,    ; 4: yinc
    double,    ; 5: ypos

    ; slink
    %Frame_moveenterprise*    ; 6
};

; procedure body
define void @P_moveenterprise_moveintra()
{
    %frame = alloca %Frame_moveenterprise_moveintra, align 8
    ret void
}


; line 496
;================================================================================
; scope: firephasers (level : 2)

; activation record
%Frame_firephasers = type
{
    ; variables
    i32,    ; 0: fireamount
    i32,    ; 1: hit
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_firephasers()
{
    %frame = alloca %Frame_firephasers, align 8
    ret void
}


; line 533
;================================================================================
; scope: firetorpedoes (level : 2)

; activation record
%Frame_firetorpedoes = type
{
    ; variables
    i32,    ; 0: course
    i1,    ; 1: hitsomething
    i32,    ; 2: i
    double,    ; 3: xinc
    double,    ; 4: xpos
    double,    ; 5: yinc
    double,    ; 6: ypos

    ; dummy
    i8*
};

; procedure body
define void @P_firetorpedoes()
{
    %frame = alloca %Frame_firetorpedoes, align 8
    ret void
}


; line 538
;================================================================================
; scope: firetorpedoes_hitnova (level : 3)

; activation record
%Frame_firetorpedoes_hitnova = type
{
    ; parameters
    i32,    ; 0: klingnum
    i32,    ; 1: novax
    i32,    ; 2: novay

    ; variables
    i32,    ; 3: hit
    i32,    ; 4: i

    ; slink
    %Frame_firetorpedoes*    ; 5
};

; procedure body
define void @P_firetorpedoes_hitnova()
{
    %frame = alloca %Frame_firetorpedoes_hitnova, align 8
    ret void
}


; line 564
;================================================================================
; scope: firetorpedoes_hitklingbase (level : 3)

; activation record
%Frame_firetorpedoes_hitklingbase = type
{
    ; parameters
    i32,    ; 0: klingbasenum

    ; variables
    i32,    ; 1: i
    i32,    ; 2: kdocked
    i32,    ; 3: quadx
    i32,    ; 4: quady

    ; slink
    %Frame_firetorpedoes*    ; 5
};

; procedure body
define void @P_firetorpedoes_hitklingbase()
{
    %frame = alloca %Frame_firetorpedoes_hitklingbase, align 8
    ret void
}


; line 656
;================================================================================
; scope: selfdestruct (level : 2)

; activation record
%Frame_selfdestruct = type
{
    ; variables
    i8,    ; 0: ch

    ; dummy
    i8*
};

; procedure body
define void @P_selfdestruct()
{
    %frame = alloca %Frame_selfdestruct, align 8
    ret void
}


; line 668
;================================================================================
; scope: command (level : 2)

; activation record
%Frame_command = type
{
    ; variables
    i8,    ; 0: ch
    i1,    ; 1: validcommand

    ; dummy
    i8*
};

; procedure body
define void @P_command()
{
    %frame = alloca %Frame_command, align 8
    ret void
}


; line 712
;================================================================================
; scope: instructions (level : 2)

; activation record
%Frame_instructions = type
{
    ; variables
    i8,    ; 0: ch

    ; dummy
    i8*
};

; procedure body
define void @P_instructions()
{
    %frame = alloca %Frame_instructions, align 8
    ret void
}


; line 715
;================================================================================
; scope: instructions_spacewait (level : 3)

; activation record
%Frame_instructions_spacewait = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_spacewait()
{
    %frame = alloca %Frame_instructions_spacewait, align 8
    ret void
}


; line 723
;================================================================================
; scope: instructions_page1 (level : 3)

; activation record
%Frame_instructions_page1 = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_page1()
{
    %frame = alloca %Frame_instructions_page1, align 8
    ret void
}


; line 750
;================================================================================
; scope: instructions_page2 (level : 3)

; activation record
%Frame_instructions_page2 = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_page2()
{
    %frame = alloca %Frame_instructions_page2, align 8
    ret void
}


; line 778
;================================================================================
; scope: instructions_page3 (level : 3)

; activation record
%Frame_instructions_page3 = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_page3()
{
    %frame = alloca %Frame_instructions_page3, align 8
    ret void
}


; line 805
;================================================================================
; scope: instructions_page4 (level : 3)

; activation record
%Frame_instructions_page4 = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_page4()
{
    %frame = alloca %Frame_instructions_page4, align 8
    ret void
}


; line 832
;================================================================================
; scope: instructions_page5 (level : 3)

; activation record
%Frame_instructions_page5 = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_page5()
{
    %frame = alloca %Frame_instructions_page5, align 8
    ret void
}


; line 859
;================================================================================
; scope: instructions_page6 (level : 3)

; activation record
%Frame_instructions_page6 = type
{
    ; slink
    %Frame_instructions*    ; 0
};

; procedure body
define void @P_instructions_page6()
{
    %frame = alloca %Frame_instructions_page6, align 8
    ret void
}


; line 913
;================================================================================
; scope: finishgame (level : 2)

; activation record
%Frame_finishgame = type
{
    ; variables
    i32,    ; 0: rating

    ; dummy
    i8*
};

; procedure body
define void @P_finishgame()
{
    %frame = alloca %Frame_finishgame, align 8
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!74, !75}
!llvm.ident = !{!72}

!0 = !DIFile(filename: "startrek.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 62, baseType: !10, size: 400, elements: !14)
!10 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 62, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10)
!12 = !{!11}
!13 = !DISubrange(count: 5)
!14 = !{!13}
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quadxy", file: !0, line: 39, size: 64, flags: DIFlagTypePassByValue, elements: !19)
!16 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !15, file: !0, line: 40, baseType: !16, size: 32, offset: 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !15, file: !0, line: 40, baseType: !16, size: 32, offset: 32)
!19 = !{!17,!18}
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sectxy", file: !0, line: 36, size: 64, flags: DIFlagTypePassByValue, elements: !24)
!21 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !20, file: !0, line: 37, baseType: !21, size: 32, offset: 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !20, file: !0, line: 37, baseType: !21, size: 32, offset: 32)
!24 = !{!22,!23}
!25 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 57, baseType: !26, size: 1536, elements: !34)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devicerec", file: !0, line: 46, size: 192, flags: DIFlagTypePassByValue, elements: !32)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 47, baseType: !2, size: 160, elements: !29)
!28 = !DISubrange(count: 20)
!29 = !{!28}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !0, line: 47, baseType: !27, size: 160, offset: 0)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "downtime", scope: !26, file: !0, line: 48, baseType: !3, size: 32, offset: 160)
!32 = !{!30,!31}
!33 = !DISubrange(count: 8)
!34 = !{!33}
!35 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!36 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 59, baseType: !37, size: 10240, elements: !48)
!37 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 59, baseType: !38, size: 1280, elements: !46)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quadrec", file: !0, line: 26, size: 160, flags: DIFlagTypePassByValue, elements: !44)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ishistory", scope: !38, file: !0, line: 27, baseType: !1, size: 8, offset: 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "klingbasenum", scope: !38, file: !0, line: 28, baseType: !35, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "klingnum", scope: !38, file: !0, line: 29, baseType: !35, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fedbasenum", scope: !38, file: !0, line: 30, baseType: !35, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "starnum", scope: !38, file: !0, line: 31, baseType: !35, size: 32, offset: 128)
!44 = !{!39,!40,!41,!42,!43}
!45 = !DISubrange(count: 8)
!46 = !{!45}
!47 = !DISubrange(count: 8)
!48 = !{!47}
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klingonrec", file: !0, line: 42, size: 96, flags: DIFlagTypePassByValue, elements: !52)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !49, file: !0, line: 43, baseType: !20, size: 64, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "energyleft", scope: !49, file: !0, line: 44, baseType: !3, size: 32, offset: 64)
!52 = !{!50,!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 60, baseType: !49, size: 1152, elements: !55)
!54 = !DISubrange(count: 12)
!55 = !{!54}
!56 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!57 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 58, baseType: !58, size: 2048, elements: !62)
!58 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 58, baseType: !56, size: 256, elements: !60)
!59 = !DISubrange(count: 8)
!60 = !{!59}
!61 = !DISubrange(count: 8)
!62 = !{!61}
!63 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 61, baseType: !2, size: 56, elements: !65)
!64 = !DISubrange(count: 7)
!65 = !{!64}
!66 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 213, baseType: !2, size: 64, elements: !68)
!67 = !DISubrange(count: 8)
!68 = !{!67}
!69 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!15,!16,!20,!21,!25,!26,!27,!35,!36,!37,!38,!49,!53,!56,!57,!58,!63,!66}
!70 = !{}
!71 = !{}
!72 = !{!"LPC 1.1"}
!73 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !69, globals: !71, nameTableKind: None)
!74 = !{i32 2, !"CodeView", i32 1}
!75 = !{i32 2, !"Debug Info Version", i32 3}

