; ModuleID = 'startrek.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\startrek.pas"
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
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output

    ; body
    ; line 946
    store i32 1, i32* @rndseq
    ; line 947
    call void @P_initialize()
    ; line 948
    %t3 = load %T_quadxy, %T_quadxy* @curquad
    call void @P_setupquad(%T_quadxy %t3, %T_sectxy* @cursect)
    ; line 949
    call void @P_setcondition()
    ; line 950
    call void @P_instructions()
    ; line 951
    call void @P_klingonattack()
    ; line 952
    call void @P_printquadrant()
    ; line 953
    ; line 956
    call void @P_finishgame()
    br label %L_99
L_99:
    ; nop

    ; cleanup
    %t4 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t4)
    %t5 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t5)

    ; epilogue
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
define double @F_expp(double %r)
{
    ; allocate frame
    %.frame = alloca %Frame_expp, align 8
    %t1 = getelementptr inbounds %Frame_expp, %Frame_expp* %.frame, i32 0, i32 0
    store double %r, double* %t1

    ; body
    ; line 72
    %t2 = getelementptr inbounds %Frame_expp, %Frame_expp* %.frame, i32 0, i32 4
    store double 0.000000, double* %t2
    ; line 73
    %t3 = getelementptr inbounds %Frame_expp, %Frame_expp* %.frame, i32 0, i32 3
    store double 1.00000, double* %t3
    ; line 74
    ; line 80
    %t4 = getelementptr inbounds %Frame_expp, %Frame_expp* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_expp, %Frame_expp* %.frame, i32 0, i32 4
    %t5 = load double, double* %t6
    store double %t5, double* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_expp, %Frame_expp* %.frame, i32 0, i32 1
    %t8 = load double, double* %t7
    ret double %t8
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
define i32 @F_random(i32 %low, i32 %hi)
{
    ; allocate frame
    %.frame = alloca %Frame_random, align 8
    %t1 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 0
    store i32 %hi, i32* %t1
    %t2 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    store i32 %low, i32* %t2

    ; body
    ; line 90
    %t3 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 3
    %t7 = load i32, i32* @rndseq
    %t8 = sdiv i32 2147483647, 16807
    %t6 = srem i32 %t7, %t8
    %t5 = mul i32 16807, %t6
    %t10 = srem i32 2147483647, 16807
    %t12 = load i32, i32* @rndseq
    %t13 = sdiv i32 2147483647, 16807
    %t11 = sdiv i32 %t12, %t13
    %t9 = mul i32 %t10, %t11
    %t4 = sub i32 %t5, %t9
    store i32 %t4, i32* %t3
    ; line 91
    ; line 92
    %t14 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t17 = load i32, i32* @rndseq
    %t22 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    %t24 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    %t23 = load i32, i32* %t24
    %t20 = sub i32 %t21, %t23
    %t19 = add i32 %t20, 1
    %t18 = sdiv i32 2147483647, %t19
    %t16 = sdiv i32 %t17, %t18
    %t26 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    %t25 = load i32, i32* %t26
    %t15 = add i32 %t16, %t25
    store i32 %t15, i32* %t14

    ; epilogue
    %t27 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t28 = load i32, i32* %t27
    ret i32 %t28
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
define i32 @F_distance(i32 %pos1x, i32 %pos1y, %T_sectxy %pos2)
{
    ; allocate frame
    %.frame = alloca %Frame_distance, align 8
    %t1 = getelementptr inbounds %Frame_distance, %Frame_distance* %.frame, i32 0, i32 0
    store i32 %pos1x, i32* %t1
    %t2 = getelementptr inbounds %Frame_distance, %Frame_distance* %.frame, i32 0, i32 1
    store i32 %pos1y, i32* %t2
    %t3 = getelementptr inbounds %Frame_distance, %Frame_distance* %.frame, i32 0, i32 2
    store %T_sectxy %pos2, %T_sectxy* %t3

    ; body
    ; line 97
    %t4 = getelementptr inbounds %Frame_distance, %Frame_distance* %.frame, i32 0, i32 3
    store i32 , i32* %t4
    ; nop

    ; epilogue
    %t5 = getelementptr inbounds %Frame_distance, %Frame_distance* %.frame, i32 0, i32 3
    %t6 = load i32, i32* %t5
    ret i32 %t6
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
define double @F_radians(i32 %degrees)
{
    ; allocate frame
    %.frame = alloca %Frame_radians, align 8
    %t1 = getelementptr inbounds %Frame_radians, %Frame_radians* %.frame, i32 0, i32 0
    store i32 %degrees, i32* %t1

    ; body
    ; line 102
    %t2 = getelementptr inbounds %Frame_radians, %Frame_radians* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_radians, %Frame_radians* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    %t6 = sitofp i32 %t4 to double
    %t3 = fmul double %t6, 0.0174533
    store double %t3, double* %t2
    ; nop

    ; epilogue
    %t7 = getelementptr inbounds %Frame_radians, %Frame_radians* %.frame, i32 0, i32 1
    %t8 = load double, double* %t7
    ret double %t8
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
define i32 @F_interval(i32 %number, i32 %minvalue, i32 %maxvalue)
{
    ; allocate frame
    %.frame = alloca %Frame_interval, align 8
    %t1 = getelementptr inbounds %Frame_interval, %Frame_interval* %.frame, i32 0, i32 0
    store i32 %maxvalue, i32* %t1
    %t2 = getelementptr inbounds %Frame_interval, %Frame_interval* %.frame, i32 0, i32 1
    store i32 %minvalue, i32* %t2
    %t3 = getelementptr inbounds %Frame_interval, %Frame_interval* %.frame, i32 0, i32 2
    store i32 %number, i32* %t3

    ; body
    ; line 107
    ; nop

    ; epilogue
    %t4 = getelementptr inbounds %Frame_interval, %Frame_interval* %.frame, i32 0, i32 3
    %t5 = load i32, i32* %t4
    ret i32 %t5
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
    ; allocate frame
    %.frame = alloca %Frame_reinitialize, align 8

    ; body
    ; line 119
    store i32 5000, i32* @curenergy
    ; line 120
    store i32 10, i32* @curtorps
    ; line 121
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_initialize, align 8

    ; body
    ; line 128
    %t1 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 48
    %t3 = getelementptr inbounds %T_devicerec, %T_devicerec* %t1, i32 0, i32 0
    %t2 = bitcast i8* %t3 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %T_array_5* %t2
    ; line 129
    %t4 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 49
    %t6 = getelementptr inbounds %T_devicerec, %T_devicerec* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), %T_array_5* %t5
    ; line 130
    %t7 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 50
    %t9 = getelementptr inbounds %T_devicerec, %T_devicerec* %t7, i32 0, i32 0
    %t8 = bitcast i8* %t9 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %T_array_5* %t8
    ; line 131
    %t10 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 51
    %t12 = getelementptr inbounds %T_devicerec, %T_devicerec* %t10, i32 0, i32 0
    %t11 = bitcast i8* %t12 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), %T_array_5* %t11
    ; line 132
    %t13 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 52
    %t15 = getelementptr inbounds %T_devicerec, %T_devicerec* %t13, i32 0, i32 0
    %t14 = bitcast i8* %t15 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %T_array_5* %t14
    ; line 133
    %t16 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 53
    %t18 = getelementptr inbounds %T_devicerec, %T_devicerec* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %T_array_5* %t17
    ; line 134
    %t19 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 54
    %t21 = getelementptr inbounds %T_devicerec, %T_devicerec* %t19, i32 0, i32 0
    %t20 = bitcast i8* %t21 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), %T_array_5* %t20
    ; line 135
    %t22 = getelementptr inbounds %T_array_4, %T_array_4* @device, i32 0, i32 55
    %t24 = getelementptr inbounds %T_devicerec, %T_devicerec* %t22, i32 0, i32 0
    %t23 = bitcast i8* %t24 to %T_array_5*
    store %T_array_5 getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), %T_array_5* %t23
    ; line 136
    %t25 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 0
    store i8 46, i8* %t25
    ; line 137
    %t26 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 1
    store i8 42, i8* %t26
    ; line 138
    %t27 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 2
    store i8 69, i8* %t27
    ; line 139
    %t28 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 3
    store i8 43, i8* %t28
    ; line 140
    %t29 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 4
    store i8 75, i8* %t29
    ; line 141
    %t30 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 5
    store i8 66, i8* %t30
    ; line 142
    %t31 = getelementptr inbounds %T_array_11, %T_array_11* @symbols, i32 0, i32 6
    store i8 64, i8* %t31
    ; line 143
    %t32 = getelementptr inbounds %T_array_2, %T_array_2* @condnames, i32 0, i32 1
    store %T_array_3 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_array_3* %t32
    ; line 144
    %t33 = getelementptr inbounds %T_array_2, %T_array_2* @condnames, i32 0, i32 0
    store %T_array_3 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_array_3* %t33
    ; line 145
    %t34 = getelementptr inbounds %T_array_2, %T_array_2* @condnames, i32 0, i32 2
    store %T_array_3 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_array_3* %t34
    ; line 146
    %t35 = getelementptr inbounds %T_array_2, %T_array_2* @condnames, i32 0, i32 3
    store %T_array_3 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_array_3* %t35
    ; line 147
    %t36 = getelementptr inbounds %T_array_2, %T_array_2* @condnames, i32 0, i32 4
    store %T_array_3 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_array_3* %t36
    ; line 148
    %t38 = getelementptr inbounds %T_sectxy, %T_sectxy* @cursect, i32 0, i32 0
    %t37 = bitcast i8* %t38 to i32*
    %t39 = call i32 @F_random(i32 0, i32 7)
    store i32 %t39, i32* %t37
    ; line 149
    %t41 = getelementptr inbounds %T_sectxy, %T_sectxy* @cursect, i32 0, i32 4
    %t40 = bitcast i8* %t41 to i32*
    %t42 = call i32 @F_random(i32 0, i32 7)
    store i32 %t42, i32* %t40
    ; line 150
    %t44 = getelementptr inbounds %T_quadxy, %T_quadxy* @curquad, i32 0, i32 0
    %t43 = bitcast i8* %t44 to i32*
    %t45 = call i32 @F_random(i32 0, i32 7)
    store i32 %t45, i32* %t43
    ; line 151
    %t47 = getelementptr inbounds %T_quadxy, %T_quadxy* @curquad, i32 0, i32 4
    %t46 = bitcast i8* %t47 to i32*
    %t48 = call i32 @F_random(i32 0, i32 7)
    store i32 %t48, i32* %t46
    ; line 152
    store i32 0, i32* @totalklingons
    ; line 153
    store i32 0, i32* @totalkbases
    ; line 154
    ; line 174
    %t49 = load i32, i32* @totalklingons
    store i32 %t49, i32* @startklingons
    ; line 175
    ; line 177
    ; line 183
    %t50 = call i32 @F_random(i32 3000, i32 4000)
    store i32 %t50, i32* @curyear
    ; line 184
    %t51 = load i32, i32* @curyear
    store i32 %t51, i32* @startyear
    ; line 185
    %t53 = load i32, i32* @startyear
    %t54 = call i32 @F_random(i32 10, i32 40)
    %t52 = add i32 %t53, %t54
    store i32 %t52, i32* @endyear
    ; line 186
    store i32 0, i32* @badpoints
    ; line 187
    store i8 , i8* @bell
    ; line 188
    call void @P_reinitialize()
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_setcondition, align 8

    ; body
    ; line 194
    ; line 204
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_klingonattack, align 8

    ; body
    ; line 216
    ; nop

    ; epilogue
    ret void
}


; line 241
;================================================================================
; scope: printdigit (level : 2)

; activation record
%Frame_printdigit = type
{
    ; parameters
    i1*,    ; 0: mustprint
    i32,    ; 1: number

    ; dummy
    i8*
};

; procedure body
define void @P_printdigit(i32 %number, i1* %mustprint)
{
    ; allocate frame
    %.frame = alloca %Frame_printdigit, align 8
    %t1 = getelementptr inbounds %Frame_printdigit, %Frame_printdigit* %.frame, i32 0, i32 0
    store i1* %mustprint, i1** %t1
    %t2 = getelementptr inbounds %Frame_printdigit, %Frame_printdigit* %.frame, i32 0, i32 1
    store i32 %number, i32* %t2

    ; body
    ; line 243
    %t3 = getelementptr inbounds %Frame_printdigit, %Frame_printdigit* %.frame, i32 0, i32 0
    %t4 = load i1*, i1** %t3
L_expr_1:
    %t7 = getelementptr inbounds %Frame_printdigit, %Frame_printdigit* %.frame, i32 0, i32 0
    %t8 = load i1*, i1** %t7
    %t6 = load i1, i1* %t8
    br i1 %t6, label %L_OR_shortcut_3, label %L_OR_eval_2
L_OR_eval_2:
    %t11 = getelementptr inbounds %Frame_printdigit, %Frame_printdigit* %.frame, i32 0, i32 1
    %t10 = load i32, i32* %t11
    %t9 = icmp ne i32 %t10, 0
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t5 = phi [%t9, %L_OR_eval_2], [true, %L_expr_1]
    store i1 %t5, i1* %t4
    ; line 244
    ; nop

    ; epilogue
    ret void
}


; line 250
;================================================================================
; scope: setupquad (level : 2)

; activation record
%Frame_setupquad = type
{
    ; parameters
    %T_sectxy*,    ; 0: entsect
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
define void @P_setupquad(%T_quadxy %quad, %T_sectxy* %entsect)
{
    ; allocate frame
    %.frame = alloca %Frame_setupquad, align 8
    %t1 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 0
    store %T_sectxy* %entsect, %T_sectxy** %t1
    %t2 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    store %T_quadxy %quad, %T_quadxy* %t2

    ; body
    ; line 268
    ; line 271
    %t3 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 0
    %t4 = load %T_sectxy*, %T_sectxy** %t3
    %t6 = getelementptr inbounds %T_sectxy, %T_sectxy* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t7 = call i32 @F_random(i32 0, i32 7)
    store i32 %t7, i32* %t5
    ; line 272
    %t8 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 0
    %t9 = load %T_sectxy*, %T_sectxy** %t8
    %t11 = getelementptr inbounds %T_sectxy, %T_sectxy* %t9, i32 0, i32 4
    %t10 = bitcast i8* %t11 to i32*
    %t12 = call i32 @F_random(i32 0, i32 7)
    store i32 %t12, i32* %t10
    ; line 273
    %t13 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 0
    %t14 = load %T_sectxy*, %T_sectxy** %t13
    %t16 = getelementptr inbounds %T_sectxy, %T_sectxy* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t18 = getelementptr inbounds %T_array_9, %T_array_9* @quadrant, i32 0, i32 %t17
    %t19 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 0
    %t20 = load %T_sectxy*, %T_sectxy** %t19
    %t22 = getelementptr inbounds %T_sectxy, %T_sectxy* %t20, i32 0, i32 4
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t24 = getelementptr inbounds %T_array_10, %T_array_10* %t18, i32 0, i32 %t23
    store i32 2, i32* %t24
    ; line 276
    %t25 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 5
    %t27 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t29 = getelementptr inbounds %T_quadxy, %T_quadxy* %t27, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i32*
    %t30 = load i32, i32* %t28
    %t31 = getelementptr inbounds %T_array_6, %T_array_6* @galaxy, i32 0, i32 %t30
    %t32 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t34 = getelementptr inbounds %T_quadxy, %T_quadxy* %t32, i32 0, i32 4
    %t33 = bitcast i8* %t34 to i32*
    %t35 = load i32, i32* %t33
    %t36 = getelementptr inbounds %T_array_7, %T_array_7* %t31, i32 0, i32 %t35
    %t38 = getelementptr inbounds %T_quadrec, %T_quadrec* %t36, i32 0, i32 16
    %t37 = bitcast i8* %t38 to i32*
    %t39 = load i32, i32* %t37
    %t26 = sdiv i32 %t39, 2
    %t40 = call i32 @F_random(i32 0, i32 %t26)
    store i32 %t40, i32* %t25
    ; line 277
    %t42 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t44 = getelementptr inbounds %T_quadxy, %T_quadxy* %t42, i32 0, i32 0
    %t43 = bitcast i8* %t44 to i32*
    %t45 = load i32, i32* %t43
    %t46 = getelementptr inbounds %T_array_6, %T_array_6* @galaxy, i32 0, i32 %t45
    %t47 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t49 = getelementptr inbounds %T_quadxy, %T_quadxy* %t47, i32 0, i32 4
    %t48 = bitcast i8* %t49 to i32*
    %t50 = load i32, i32* %t48
    %t51 = getelementptr inbounds %T_array_7, %T_array_7* %t46, i32 0, i32 %t50
    %t53 = getelementptr inbounds %T_quadrec, %T_quadrec* %t51, i32 0, i32 16
    %t52 = bitcast i8* %t53 to i32*
    %t54 = load i32, i32* %t52
    %t56 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 5
    %t55 = load i32, i32* %t56
    %t41 = sub i32 %t54, %t55
    call void @P_setupquad_setupstuff(%Frame_setupquad* %.frame, i32 1, i32 %t41)
    ; line 278
    %t58 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 5
    %t57 = load i32, i32* %t58
    call void @P_setupquad_setupstuff(%Frame_setupquad* %.frame, i32 3, i32 %t57)
    ; line 279
    %t59 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t61 = getelementptr inbounds %T_quadxy, %T_quadxy* %t59, i32 0, i32 0
    %t60 = bitcast i8* %t61 to i32*
    %t62 = load i32, i32* %t60
    %t63 = getelementptr inbounds %T_array_6, %T_array_6* @galaxy, i32 0, i32 %t62
    %t64 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t66 = getelementptr inbounds %T_quadxy, %T_quadxy* %t64, i32 0, i32 4
    %t65 = bitcast i8* %t66 to i32*
    %t67 = load i32, i32* %t65
    %t68 = getelementptr inbounds %T_array_7, %T_array_7* %t63, i32 0, i32 %t67
    %t70 = getelementptr inbounds %T_quadrec, %T_quadrec* %t68, i32 0, i32 8
    %t69 = bitcast i8* %t70 to i32*
    %t71 = load i32, i32* %t69
    call void @P_setupquad_setupstuff(%Frame_setupquad* %.frame, i32 4, i32 %t71)
    ; line 280
    %t72 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t74 = getelementptr inbounds %T_quadxy, %T_quadxy* %t72, i32 0, i32 0
    %t73 = bitcast i8* %t74 to i32*
    %t75 = load i32, i32* %t73
    %t76 = getelementptr inbounds %T_array_6, %T_array_6* @galaxy, i32 0, i32 %t75
    %t77 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t79 = getelementptr inbounds %T_quadxy, %T_quadxy* %t77, i32 0, i32 4
    %t78 = bitcast i8* %t79 to i32*
    %t80 = load i32, i32* %t78
    %t81 = getelementptr inbounds %T_array_7, %T_array_7* %t76, i32 0, i32 %t80
    %t83 = getelementptr inbounds %T_quadrec, %T_quadrec* %t81, i32 0, i32 12
    %t82 = bitcast i8* %t83 to i32*
    %t84 = load i32, i32* %t82
    call void @P_setupquad_setupstuff(%Frame_setupquad* %.frame, i32 5, i32 %t84)
    ; line 281
    %t85 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t87 = getelementptr inbounds %T_quadxy, %T_quadxy* %t85, i32 0, i32 0
    %t86 = bitcast i8* %t87 to i32*
    %t88 = load i32, i32* %t86
    %t89 = getelementptr inbounds %T_array_6, %T_array_6* @galaxy, i32 0, i32 %t88
    %t90 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 1
    %t92 = getelementptr inbounds %T_quadxy, %T_quadxy* %t90, i32 0, i32 4
    %t91 = bitcast i8* %t92 to i32*
    %t93 = load i32, i32* %t91
    %t94 = getelementptr inbounds %T_array_7, %T_array_7* %t89, i32 0, i32 %t93
    %t96 = getelementptr inbounds %T_quadrec, %T_quadrec* %t94, i32 0, i32 4
    %t95 = bitcast i8* %t96 to i32*
    %t97 = load i32, i32* %t95
    call void @P_setupquad_setupstuff(%Frame_setupquad* %.frame, i32 6, i32 %t97)
    ; nop
    ; line 283
    %t98 = getelementptr inbounds %Frame_setupquad, %Frame_setupquad* %.frame, i32 0, i32 4
    store i32 0, i32* %t98
    ; line 284
    ; line 297
    ; nop

    ; epilogue
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
define void @P_setupquad_setupstuff(%Frame_setupquad* %.slink, i32 %object, i32 %count)
{
    ; allocate frame
    %.frame = alloca %Frame_setupquad_setupstuff, align 8
    %t1 = getelementptr inbounds %Frame_setupquad_setupstuff, %Frame_setupquad_setupstuff* %.frame, i32 0, i32 4
    store %Frame_setupquad* %.slink, %Frame_setupquad** %t1
    %t2 = getelementptr inbounds %Frame_setupquad_setupstuff, %Frame_setupquad_setupstuff* %.frame, i32 0, i32 0
    store i32 %count, i32* %t2
    %t3 = getelementptr inbounds %Frame_setupquad_setupstuff, %Frame_setupquad_setupstuff* %.frame, i32 0, i32 1
    store i32 %object, i32* %t3

    ; body
    ; line 256
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_printquadrant, align 8

    ; body
    ; line 304
    call void @P_setcondition()
    ; line 305
    ; nop

    ; epilogue
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
define void @P_printgalaxy(i32 %topx, i32 %lefty, i32 %size, i1 %markhistory)
{
    ; allocate frame
    %.frame = alloca %Frame_printgalaxy, align 8
    %t1 = getelementptr inbounds %Frame_printgalaxy, %Frame_printgalaxy* %.frame, i32 0, i32 0
    store i32 %lefty, i32* %t1
    %t2 = getelementptr inbounds %Frame_printgalaxy, %Frame_printgalaxy* %.frame, i32 0, i32 1
    store i1 %markhistory, i1* %t2
    %t3 = getelementptr inbounds %Frame_printgalaxy, %Frame_printgalaxy* %.frame, i32 0, i32 2
    store i32 %size, i32* %t3
    %t4 = getelementptr inbounds %Frame_printgalaxy, %Frame_printgalaxy* %.frame, i32 0, i32 3
    store i32 %topx, i32* %t4

    ; body
    ; line 344
    ; line 353
    %t6 = getelementptr inbounds %Frame_printgalaxy, %Frame_printgalaxy* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t6
    call void @P_printgalaxy_printseparator(%Frame_printgalaxy* %.frame, i32 %t5)
    ; line 354
    ; nop

    ; epilogue
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
define void @P_printgalaxy_printseparator(%Frame_printgalaxy* %.slink, i32 %entries)
{
    ; allocate frame
    %.frame = alloca %Frame_printgalaxy_printseparator, align 8
    %t1 = getelementptr inbounds %Frame_printgalaxy_printseparator, %Frame_printgalaxy_printseparator* %.frame, i32 0, i32 2
    store %Frame_printgalaxy* %.slink, %Frame_printgalaxy** %t1
    %t2 = getelementptr inbounds %Frame_printgalaxy_printseparator, %Frame_printgalaxy_printseparator* %.frame, i32 0, i32 0
    store i32 %entries, i32* %t2

    ; body
    ; line 338
    ; line 340
    %t3 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 124)
    call void @_WriteLn(i8* %t3)
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_printdamage, align 8

    ; body
    ; line 383
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i32 30)
    call void @_WriteLn(i8* %t1)
    ; line 384
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_moveenterprise, align 8

    ; body
    ; line 445
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 8)
    ; line 446
    ; line 447
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 20)
    ; line 448
    ; line 449
    ; line 491
    call void @P_setcondition()
    ; line 492
    ; nop

    ; epilogue
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
define void @P_moveenterprise_handledamage(%Frame_moveenterprise* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_moveenterprise_handledamage, align 8
    %t1 = getelementptr inbounds %Frame_moveenterprise_handledamage, %Frame_moveenterprise_handledamage* %.frame, i32 0, i32 2
    store %Frame_moveenterprise* %.slink, %Frame_moveenterprise** %t1

    ; body
    ; line 395
    ; line 398
    ; nop

    ; epilogue
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
    double*,    ; 2: xinc
    double*,    ; 3: xpos
    double*,    ; 4: yinc
    double*,    ; 5: ypos

    ; slink
    %Frame_moveenterprise*    ; 6
};

; procedure body
define void @P_moveenterprise_moveintra(%Frame_moveenterprise* %.slink, double* %xpos, double* %ypos, double* %xinc, double* %yinc, i32 %course, double %warp)
{
    ; allocate frame
    %.frame = alloca %Frame_moveenterprise_moveintra, align 8
    %t1 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 6
    store %Frame_moveenterprise* %.slink, %Frame_moveenterprise** %t1
    %t2 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 0
    store i32 %course, i32* %t2
    %t3 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 1
    store double %warp, double* %t3
    %t4 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 2
    store double* %xinc, double** %t4
    %t5 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 3
    store double* %xpos, double** %t5
    %t6 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 4
    store double* %yinc, double** %t6
    %t7 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 5
    store double* %ypos, double** %t7

    ; body
    ; line 428
    %t8 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 2
    %t9 = load double*, double** %t8
    %t10 = fneg double 
    store double %t10, double* %t9
    ; line 429
    %t11 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 4
    %t12 = load double*, double** %t11
    store double , double* %t12
    ; line 430
    %t13 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 3
    %t14 = load double*, double** %t13
    %t16 = getelementptr inbounds %T_sectxy, %T_sectxy* @cursect, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t18 = sitofp i32 %t17 to double
    store double %t18, double* %t14
    ; line 431
    %t19 = getelementptr inbounds %Frame_moveenterprise_moveintra, %Frame_moveenterprise_moveintra* %.frame, i32 0, i32 5
    %t20 = load double*, double** %t19
    %t22 = getelementptr inbounds %T_sectxy, %T_sectxy* @cursect, i32 0, i32 4
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t24 = sitofp i32 %t23 to double
    store double %t24, double* %t20
    ; line 432
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_firephasers, align 8

    ; body
    ; line 499
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 46)
    %t2 = load i32, i32* @curenergy
    call void @_WriteInteger(i8* %t1, i32 1, i32 0, i32 %t2)
    call void @_WriteLn(i8* %t1)
    ; line 500
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i32 25)
    ; line 501
    ; line 502
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_firetorpedoes, align 8

    ; body
    ; line 585
    ; nop

    ; epilogue
    ret void
}


; line 538
;================================================================================
; scope: firetorpedoes_hitnova (level : 3)

; activation record
%Frame_firetorpedoes_hitnova = type
{
    ; parameters
    i32*,    ; 0: klingnum
    i32,    ; 1: novax
    i32,    ; 2: novay

    ; variables
    i32,    ; 3: hit
    i32,    ; 4: i

    ; slink
    %Frame_firetorpedoes*    ; 5
};

; procedure body
define void @P_firetorpedoes_hitnova(%Frame_firetorpedoes* %.slink, i32 %novax, i32 %novay, i32* %klingnum)
{
    ; allocate frame
    %.frame = alloca %Frame_firetorpedoes_hitnova, align 8
    %t1 = getelementptr inbounds %Frame_firetorpedoes_hitnova, %Frame_firetorpedoes_hitnova* %.frame, i32 0, i32 5
    store %Frame_firetorpedoes* %.slink, %Frame_firetorpedoes** %t1
    %t2 = getelementptr inbounds %Frame_firetorpedoes_hitnova, %Frame_firetorpedoes_hitnova* %.frame, i32 0, i32 0
    store i32* %klingnum, i32** %t2
    %t3 = getelementptr inbounds %Frame_firetorpedoes_hitnova, %Frame_firetorpedoes_hitnova* %.frame, i32 0, i32 1
    store i32 %novax, i32* %t3
    %t4 = getelementptr inbounds %Frame_firetorpedoes_hitnova, %Frame_firetorpedoes_hitnova* %.frame, i32 0, i32 2
    store i32 %novay, i32* %t4

    ; body
    ; line 541
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t5)
    ; line 542
    ; line 549
    ; nop

    ; epilogue
    ret void
}


; line 564
;================================================================================
; scope: firetorpedoes_hitklingbase (level : 3)

; activation record
%Frame_firetorpedoes_hitklingbase = type
{
    ; parameters
    i32*,    ; 0: klingbasenum

    ; variables
    i32,    ; 1: i
    i32,    ; 2: kdocked
    i32,    ; 3: quadx
    i32,    ; 4: quady

    ; slink
    %Frame_firetorpedoes*    ; 5
};

; procedure body
define void @P_firetorpedoes_hitklingbase(%Frame_firetorpedoes* %.slink, i32* %klingbasenum)
{
    ; allocate frame
    %.frame = alloca %Frame_firetorpedoes_hitklingbase, align 8
    %t1 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 5
    store %Frame_firetorpedoes* %.slink, %Frame_firetorpedoes** %t1
    %t2 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 0
    store i32* %klingbasenum, i32** %t2

    ; body
    ; line 568
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i32 34)
    %t4 = load i8, i8* @bell
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 %t4)
    call void @_WriteLn(i8* %t3)
    ; line 569
    %t5 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 0
    %t6 = load i32*, i32** %t5
    %t9 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 0
    %t10 = load i32*, i32** %t9
    %t8 = load i32, i32* %t10
    %t7 = sub i32 %t8, 1
    store i32 %t7, i32* %t6
    ; line 570
    %t11 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 2
    store i32 0, i32* %t11
    ; line 571
    ; line 580
    %t12 = load %T_text, %T_text* @output
    %t14 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 2
    %t13 = load i32, i32* %t14
    call void @_WriteInteger(i8* %t12, i32 1, i32 0, i32 %t13)
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t12)
    ; line 581
    %t16 = load i32, i32* @totalklingons
    %t18 = getelementptr inbounds %Frame_firetorpedoes_hitklingbase, %Frame_firetorpedoes_hitklingbase* %.frame, i32 0, i32 2
    %t17 = load i32, i32* %t18
    %t15 = sub i32 %t16, %t17
    store i32 %t15, i32* @totalklingons
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_selfdestruct, align 8

    ; body
    ; line 659
    ; line 664

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_command, align 8

    ; body
    ; line 672
    ; line 705
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_instructions, align 8

    ; body
    ; line 885
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 18)
    %t2 = load i32, i32* @curyear
    call void @_WriteInteger(i8* %t1, i32 1, i32 0, i32 %t2)
    call void @_WriteLn(i8* %t1)
    ; line 886
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    ; line 887
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i32 0, i32 0), i32 47)
    call void @_WriteLn(i8* %t4)
    ; line 888
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i32 0, i32 0), i32 47)
    call void @_WriteLn(i8* %t5)
    ; line 889
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t6)
    ; line 890
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i32 26)
    %t8 = load i32, i32* @totalklingons
    call void @_WriteInteger(i8* %t7, i32 1, i32 0, i32 %t8)
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t7)
    ; line 891
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 9)
    %t12 = load i32, i32* @endyear
    %t13 = load i32, i32* @curyear
    %t11 = sub i32 %t12, %t13
    %t10 = add i32 %t11, 1
    call void @_WriteInteger(i8* %t9, i32 1, i32 0, i32 %t10)
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t9)
    ; line 892
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i32 0, i32 0), i32 34)
    %t15 = load i32, i32* @endyear
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 %t15)
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t14)
    ; line 893
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0), i32 36)
    %t18 = getelementptr inbounds %T_quadxy, %T_quadxy* @curquad, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    call void @_WriteInteger(i8* %t16, i32 1, i32 0, i32 %t19)
    call void @_WriteChar(i8* %t16, i32 0, i32 0, i8 45)
    %t21 = getelementptr inbounds %T_quadxy, %T_quadxy* @curquad, i32 0, i32 4
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    call void @_WriteInteger(i8* %t16, i32 1, i32 0, i32 %t22)
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 9)
    %t24 = getelementptr inbounds %T_sectxy, %T_sectxy* @cursect, i32 0, i32 0
    %t23 = bitcast i8* %t24 to i32*
    %t25 = load i32, i32* %t23
    call void @_WriteInteger(i8* %t16, i32 1, i32 0, i32 %t25)
    call void @_WriteChar(i8* %t16, i32 0, i32 0, i8 45)
    %t27 = getelementptr inbounds %T_sectxy, %T_sectxy* @cursect, i32 0, i32 4
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* %t26
    call void @_WriteInteger(i8* %t16, i32 1, i32 0, i32 %t28)
    call void @_WriteChar(i8* %t16, i32 0, i32 0, i8 46)
    call void @_WriteLn(i8* %t16)
    ; line 895
    %t29 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t29)
    ; line 896
    %t30 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t30, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0), i32 41)
    ; line 897
    ; line 898
    %t31 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t31)
    ; line 899
    %t32 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t32)
    ; line 900
    ; nop

    ; epilogue
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
define void @P_instructions_spacewait(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_spacewait, align 8
    %t1 = getelementptr inbounds %Frame_instructions_spacewait, %Frame_instructions_spacewait* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 717
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 718
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i32 24)
    ; line 719
    ; line 720
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; nop

    ; epilogue
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
define void @P_instructions_page1(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_page1, align 8
    %t1 = getelementptr inbounds %Frame_instructions_page1, %Frame_instructions_page1* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 725
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i32 0, i32 0), i32 48)
    call void @_WriteLn(i8* %t2)
    ; line 726
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t3)
    ; line 727
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 728
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t5)
    ; line 729
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t6)
    ; line 730
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t7)
    ; line 731
    %t8 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t8)
    ; line 732
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t9)
    ; line 733
    %t10 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t10, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t10)
    ; line 734
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.44, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t11)
    ; line 735
    %t12 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t12)
    ; line 736
    %t13 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t13)
    ; line 737
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t14)
    ; line 738
    %t15 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t15, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t15)
    ; line 739
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t16)
    ; line 740
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t17)
    ; line 741
    %t18 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t18, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t18)
    ; line 742
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t19)
    ; line 743
    %t20 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t20, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t20)
    ; line 744
    %t21 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i32 36)
    call void @_WriteLn(i8* %t21)
    ; line 745
    %t22 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t22)
    ; line 746
    %t23 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0), i32 51)
    call void @_WriteLn(i8* %t23)
    ; line 747
    %t24 = getelementptr inbounds %Frame_instructions_page1, %Frame_instructions_page1* %.frame, i32 0, i32 0
    %t25 = load %Frame_instructions*, %Frame_instructions** %t24
    call void @P_instructions_spacewait(%Frame_instructions* %t25)
    ; nop

    ; epilogue
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
define void @P_instructions_page2(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_page2, align 8
    %t1 = getelementptr inbounds %Frame_instructions_page2, %Frame_instructions_page2* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 752
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 753
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3)
    ; line 754
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 755
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t5)
    ; line 756
    %t6 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t6)
    ; line 757
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i32 0, i32 0), i32 30)
    call void @_WriteLn(i8* %t7)
    ; line 758
    %t8 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.54, i32 0, i32 0), i32 53)
    call void @_WriteLn(i8* %t8)
    ; line 759
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i32 0, i32 0), i32 27)
    call void @_WriteLn(i8* %t9)
    ; line 760
    %t10 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t10)
    ; line 761
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t11)
    ; line 762
    %t12 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.57, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t12)
    ; line 763
    %t13 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t13)
    ; line 764
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0), i32 27)
    call void @_WriteLn(i8* %t14)
    ; line 765
    %t15 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t15, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t15)
    ; line 766
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t16)
    ; line 767
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t17)
    ; line 768
    %t18 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t18)
    ; line 769
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i32 0, i32 0), i32 42)
    call void @_WriteLn(i8* %t19)
    ; line 770
    %t20 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t20, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.64, i32 0, i32 0), i32 47)
    call void @_WriteLn(i8* %t20)
    ; line 771
    %t21 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t21)
    ; line 772
    %t22 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t22, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.66, i32 0, i32 0), i32 51)
    call void @_WriteLn(i8* %t22)
    ; line 773
    %t23 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.67, i32 0, i32 0), i32 52)
    call void @_WriteLn(i8* %t23)
    ; line 774
    %t24 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t24, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.68, i32 0, i32 0), i32 53)
    call void @_WriteLn(i8* %t24)
    ; line 775
    %t25 = getelementptr inbounds %Frame_instructions_page2, %Frame_instructions_page2* %.frame, i32 0, i32 0
    %t26 = load %Frame_instructions*, %Frame_instructions** %t25
    call void @P_instructions_spacewait(%Frame_instructions* %t26)
    ; nop

    ; epilogue
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
define void @P_instructions_page3(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_page3, align 8
    %t1 = getelementptr inbounds %Frame_instructions_page3, %Frame_instructions_page3* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 780
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 781
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i32 0, i32 0), i32 54)
    call void @_WriteLn(i8* %t3)
    ; line 782
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.70, i32 0, i32 0), i32 55)
    call void @_WriteLn(i8* %t4)
    ; line 783
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t5)
    ; line 784
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.72, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t6)
    ; line 785
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.73, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t7)
    ; line 786
    %t8 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i32 0, i32 0), i32 54)
    call void @_WriteLn(i8* %t8)
    ; line 787
    %t9 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t9)
    ; line 788
    %t10 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t10, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t10)
    ; line 789
    %t11 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t11)
    ; line 790
    %t12 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.76, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t12)
    ; line 791
    %t13 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.77, i32 0, i32 0), i32 54)
    call void @_WriteLn(i8* %t13)
    ; line 792
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t14)
    ; line 793
    %t15 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t15)
    ; line 794
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t16)
    ; line 795
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 46)
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t17)
    ; line 796
    %t18 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t18, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t18, i32 0, i32 0, i8 42)
    call void @_WriteString(i8* %t18, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.82, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t18)
    ; line 797
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t19, i32 0, i32 0, i8 43)
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t19)
    ; line 798
    %t20 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t20, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t20, i32 0, i32 0, i8 69)
    call void @_WriteString(i8* %t20, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t20)
    ; line 799
    %t21 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t21, i32 0, i32 0, i8 66)
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.85, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t21)
    ; line 800
    %t22 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t22, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t22, i32 0, i32 0, i8 75)
    call void @_WriteString(i8* %t22, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t22)
    ; line 801
    %t23 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t23, i32 0, i32 0, i8 64)
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t23)
    ; line 802
    %t24 = getelementptr inbounds %Frame_instructions_page3, %Frame_instructions_page3* %.frame, i32 0, i32 0
    %t25 = load %Frame_instructions*, %Frame_instructions** %t24
    call void @P_instructions_spacewait(%Frame_instructions* %t25)
    ; nop

    ; epilogue
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
define void @P_instructions_page4(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_page4, align 8
    %t1 = getelementptr inbounds %Frame_instructions_page4, %Frame_instructions_page4* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 807
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 808
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t3)
    ; line 809
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 810
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t5)
    ; line 811
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.90, i32 0, i32 0), i32 51)
    call void @_WriteLn(i8* %t6)
    ; line 812
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t7)
    ; line 813
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)
    ; line 814
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.92, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t9)
    ; line 815
    %t10 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t10, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.93, i32 0, i32 0), i32 61)
    call void @_WriteLn(i8* %t10)
    ; line 816
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t11)
    ; line 817
    %t12 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.95, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t12)
    ; line 818
    %t13 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t13)
    ; line 819
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t14)
    ; line 820
    %t15 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t15, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t15)
    ; line 821
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.98, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t16)
    ; line 822
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i32 0, i32 0), i32 41)
    call void @_WriteLn(i8* %t17)
    ; line 823
    %t18 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t18)
    ; line 824
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t19)
    ; line 825
    %t20 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t20)
    ; line 826
    %t21 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.101, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t21)
    ; line 827
    %t22 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t22, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.102, i32 0, i32 0), i32 55)
    call void @_WriteLn(i8* %t22)
    ; line 828
    %t23 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.103, i32 0, i32 0), i32 61)
    call void @_WriteLn(i8* %t23)
    ; line 829
    %t24 = getelementptr inbounds %Frame_instructions_page4, %Frame_instructions_page4* %.frame, i32 0, i32 0
    %t25 = load %Frame_instructions*, %Frame_instructions** %t24
    call void @P_instructions_spacewait(%Frame_instructions* %t25)
    ; nop

    ; epilogue
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
define void @P_instructions_page5(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_page5, align 8
    %t1 = getelementptr inbounds %Frame_instructions_page5, %Frame_instructions_page5* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 834
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 835
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.104, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t3)
    ; line 836
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.105, i32 0, i32 0), i32 63)
    call void @_WriteLn(i8* %t4)
    ; line 837
    %t5 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t5, i32 5, i32 0, i32 300)
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.106, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t5)
    ; line 838
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.107, i32 0, i32 0), i32 62)
    call void @_WriteLn(i8* %t6)
    ; line 839
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.108, i32 0, i32 0), i32 53)
    call void @_WriteLn(i8* %t7)
    ; line 840
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)
    ; line 841
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t9)
    ; line 842
    %t10 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t10)
    ; line 843
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.110, i32 0, i32 0), i32 31)
    call void @_WriteInteger(i8* %t11, i32 0, i32 0, i32 10)
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.111, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t11)
    ; line 844
    %t12 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.112, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t12)
    ; line 845
    %t13 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.113, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t13)
    ; line 846
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.114, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t14)
    ; line 847
    %t15 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t15, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.115, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t15)
    ; line 848
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.116, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t16)
    ; line 849
    %t17 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t17)
    ; line 850
    %t18 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t18, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.117, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t18)
    ; line 851
    %t19 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t19)
    ; line 852
    %t20 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t20, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.118, i32 0, i32 0), i32 61)
    call void @_WriteLn(i8* %t20)
    ; line 853
    %t21 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t21, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.119, i32 0, i32 0), i32 61)
    call void @_WriteLn(i8* %t21)
    ; line 854
    %t22 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t22, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.120, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t22)
    ; line 855
    %t23 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.121, i32 0, i32 0), i32 52)
    call void @_WriteLn(i8* %t23)
    ; line 856
    %t24 = getelementptr inbounds %Frame_instructions_page5, %Frame_instructions_page5* %.frame, i32 0, i32 0
    %t25 = load %Frame_instructions*, %Frame_instructions** %t24
    call void @P_instructions_spacewait(%Frame_instructions* %t25)
    ; nop

    ; epilogue
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
define void @P_instructions_page6(%Frame_instructions* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_instructions_page6, align 8
    %t1 = getelementptr inbounds %Frame_instructions_page6, %Frame_instructions_page6* %.frame, i32 0, i32 0
    store %Frame_instructions* %.slink, %Frame_instructions** %t1

    ; body
    ; line 861
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 862
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t3)
    ; line 863
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 864
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.123, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t5)
    ; line 865
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.124, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t6)
    ; line 866
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.125, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t7)
    ; line 867
    %t8 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.126, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t8)
    ; line 868
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.127, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t9)
    ; line 869
    %t10 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t10)
    ; line 870
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t11)
    ; line 871
    %t12 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t12)
    ; line 872
    %t13 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.129, i32 0, i32 0), i32 61)
    call void @_WriteLn(i8* %t13)
    ; line 873
    %t14 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.130, i32 0, i32 0), i32 52)
    call void @_WriteLn(i8* %t14)
    ; line 874
    %t15 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t15)
    ; line 875
    %t16 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.131, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t16)
    ; line 876
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.132, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t17)
    ; line 877
    %t18 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t18, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.133, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t18)
    ; line 878
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.134, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t19)
    ; line 879
    %t20 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t20, i32 0, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.135, i32 0, i32 0), i32 41)
    call void @_WriteLn(i8* %t20)
    ; line 880
    %t21 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t21)
    ; line 881
    %t22 = getelementptr inbounds %Frame_instructions_page6, %Frame_instructions_page6* %.frame, i32 0, i32 0
    %t23 = load %Frame_instructions*, %Frame_instructions** %t22
    call void @P_instructions_spacewait(%Frame_instructions* %t23)
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_finishgame, align 8

    ; body
    ; line 916
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.80 = private unnamed_addr constant [14 x i8] c"             \00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"                     0\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"                    /|\5C\5C\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"                    180\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"                    \5C\5C|/\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"                 225 | 135\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"                 315 | 45\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"               270 --*-- 90\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"            1  =                         1 quadrant.\00", align 1
@.str.68 = private unnamed_addr constant [54 x i8] c"            2  =                         2 quadrants.\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"            a Federation base\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"            a Klingon base\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"            a Klingon ship\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"            a stable star\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"            an unstable star\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"            empty space\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"            the Enterprise\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"           .5  =                         4 sectors.\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"          Symbol          Meaning\00", align 1
@.str.94 = private unnamed_addr constant [58 x i8] c"        HUNDREDS                            KLINGON SHIPS\00", align 1
@.str.93 = private unnamed_addr constant [62 x i8] c"        TENS                                FEDERATION BASES.\00", align 1
@.str.95 = private unnamed_addr constant [58 x i8] c"        THOUSANDS                           KLINGON BASES\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"     Warp  .2  =  The Enterprise travels 1 sector.\00", align 1
@.str.98 = private unnamed_addr constant [59 x i8] c"    206 means 2 Klingons, 0 Federation bases, and 6 stars.\00", align 1
@.str.97 = private unnamed_addr constant [58 x i8] c"    319 means 3 Klingons, 1 Federation base, and 9 stars.\00", align 1
@.str.92 = private unnamed_addr constant [51 x i8] c"    The ONES digit represents the number of STARS.\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"   1007 means 1 Klingon base and 7 stars.\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"   Distance traveled = <warp factor> quadrants.\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"   For example, if you travel from quadrant 1-1 in the\00", align 1
@.str.54 = private unnamed_addr constant [54 x i8] c"   Numbers indicate direction starting at the top and\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"   direction of 90 degrees at warp 2, you would stop at\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"   going counter clockwise.\00", align 1
@.str.73 = private unnamed_addr constant [60 x i8] c"   is blocked by something during an intra-quadrant travel,\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"   it will stop in front of it (and waste a stardate).\00", align 1
@.str.71 = private unnamed_addr constant [58 x i8] c"   quadrant 1-3 in the next stardate.  NOTE: every use of\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"   the warp engines takes one stardate.  If the Enterprise\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"  0   1   2   3   4   5   6   7\00", align 1
@.str.101 = private unnamed_addr constant [57 x i8] c"  Any portion of the energy available can be fired.  The\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"  For example:\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"  Initially the Enterprise has \00", align 1
@.str.129 = private unnamed_addr constant [62 x i8] c"  It is possible to implement a self-destruct sequence merely\00", align 1
@.str.112 = private unnamed_addr constant [59 x i8] c"  One torpedo destroys whatever it hits.  The range of the\00", align 1
@.str.118 = private unnamed_addr constant [62 x i8] c"  The damage control report lists the state of repair of each\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"  The following symbols have meanings as follows:\00", align 1
@.str.123 = private unnamed_addr constant [59 x i8] c"  The history computers keep a record of all the quadrants\00", align 1
@.str.89 = private unnamed_addr constant [57 x i8] c"  The long range sensors display the objects in the nine\00", align 1
@.str.76 = private unnamed_addr constant [58 x i8] c"  The short range sensors display a detailed view of the \00", align 1
@.str.108 = private unnamed_addr constant [54 x i8] c"  against stars, Klingon bases, and Federation bases.\00", align 1
@.str.102 = private unnamed_addr constant [56 x i8] c"  battle computer divides this amount among the Klingon\00", align 1
@.str.130 = private unnamed_addr constant [53 x i8] c"  by invoking this command.  The game is terminated.\00", align 1
@.str.90 = private unnamed_addr constant [52 x i8] c"  closest quadrants.  Each digit in each box means \00", align 1
@.str.119 = private unnamed_addr constant [62 x i8] c"  device.  A non-zero state indicates the number of stardates\00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"  distance to the target.  A Klingon battle cruiser starts with\00", align 1
@.str.126 = private unnamed_addr constant [58 x i8] c"  except that the entire galaxy is displayed.  A quadrant\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"  means something:\00", align 1
@.str.104 = private unnamed_addr constant [61 x i8] c"  of fire.  The effectiveness of a hit depends mostly on the\00", align 1
@.str.113 = private unnamed_addr constant [60 x i8] c"  photon torpedoes (like phasers) is limited to the current\00", align 1
@.str.77 = private unnamed_addr constant [55 x i8] c"  quadrant currently occupied by the Enterprise.  The \00", align 1
@.str.114 = private unnamed_addr constant [60 x i8] c"  quadrant.  The course of a photon torpedo is set the same\00", align 1
@.str.120 = private unnamed_addr constant [60 x i8] c"  required to repair the device.  Devices can be damaged by\00", align 1
@.str.116 = private unnamed_addr constant [60 x i8] c"  restocked when the Enterprise docks at a Federation base.\00", align 1
@.str.124 = private unnamed_addr constant [60 x i8] c"  scanned with the long range scanners.  The history report\00", align 1
@.str.103 = private unnamed_addr constant [62 x i8] c"  ships in the quadrant and determines the various directions\00", align 1
@.str.121 = private unnamed_addr constant [53 x i8] c"  space storms, and are repaired by time and truces.\00", align 1
@.str.127 = private unnamed_addr constant [51 x i8] c"  that has not been scanned is printed as \22+++++\22.\00", align 1
@.str.125 = private unnamed_addr constant [59 x i8] c"  uses the same display format as the long range scanners,\00", align 1
@.str.115 = private unnamed_addr constant [60 x i8] c"  way as that of the Enterprise.  Torpedoes and phasers are\00", align 1
@.str.107 = private unnamed_addr constant [63 x i8] c"  whatever energy is left.  Note that phasers are ineffective \00", align 1
@.str.117 = private unnamed_addr constant [29 x i8] c" :: Damage Control Report ::\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c" :: History Computers ::\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c" :: Long Range Sensors ::\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c" :: Phasers ::\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c" :: Photon Torpedoes ::\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c" :: Short Range Sensors ::\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c" :: Suicide Device ::\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c" :: Warp Engines ::\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c" Course = a number in degrees.\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c" Klingons were killed while docked\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c" Warp Factor = a REAL number from 0 to 12.\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c" battle cruisers.\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c" photon torpedoes.\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c" solar years to complete\00", align 1
@.str.106 = private unnamed_addr constant [50 x i8] c" units of energy.  It can fire an amount equal to\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c").  The \00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"*** Klingon Starbase DESTROYED ***\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c", sector \00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"---------------------------------\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"::: DEVICES :::\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"As commander of the United Starship Enterprise,\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Black     \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Course: \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Damage Control      \00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Device name:      Repair Time:\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Do you need further instructions (y/n) ? \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Docked    \00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"Each quadrant is similarly divided into 64 sectors.\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Enterprise is currently in quadrant \00", align 1
@.str.135 = private unnamed_addr constant [42 x i8] c"Federation starbase.  G O O D   L U C K !\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Green     \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"History Computers   \00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Hit <return> to continue\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Klingon invasion force of \00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Klingon menace.  To do this, you must destroy the \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Long Range Sensors  \00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Number of units to fire: \00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Orders:  Stardate \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Phaser Control      \00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Phasers locked on target.  Energy available = \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Photon Tubes        \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Red       \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Self Destruct       \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Short Range Sensors \00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"The galaxy is divided into 64 quadrants with the\00", align 1
@.str.131 = private unnamed_addr constant [57 x i8] c"To get a list of all commands, type \229\22 when asked for a\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Torpedo causes unstable star to nova\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Warp Engines        \00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Warp factor (0-12): \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Yellow    \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"You have \00", align 1
@.str.133 = private unnamed_addr constant [59 x i8] c"You have at least on supporting starbase.  Your energy and\00", align 1
@.str.132 = private unnamed_addr constant [59 x i8] c"command.  All commands are terminated by the [RETURN] key.\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"following coordinates:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.134 = private unnamed_addr constant [58 x i8] c"photon torpedoes are replenished when you are docked at a\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"your mission (i.e. until stardate \00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"your mission is to rid the galaxy of the deadly\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  0\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  1\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  2\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  3\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  4\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  5\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  6\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"|   |   |   |   |   |   |   |   |  7\00", align 1


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

