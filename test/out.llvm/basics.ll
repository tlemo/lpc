; ModuleID = 'basics.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\basics.pas"
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
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output

    ; body
    ; line 1255
    call void @P_clear()
    ; line 1257
    %t3 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 1
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %T_string10* %t3
    ; line 1257
    %t4 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 2
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %T_string10* %t4
    ; line 1258
    %t5 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 3
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_string10* %t5
    ; line 1258
    %t6 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 4
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_string10* %t6
    ; line 1259
    %t7 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 5
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_string10* %t7
    ; line 1259
    %t8 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 6
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_string10* %t8
    ; line 1260
    %t9 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 7
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_string10* %t9
    ; line 1260
    %t10 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 8
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_string10* %t10
    ; line 1261
    %t11 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 9
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_string10* %t11
    ; line 1261
    %t12 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 10
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_string10* %t12
    ; line 1262
    %t13 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 11
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_string10* %t13
    ; line 1262
    %t14 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 12
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_string10* %t14
    ; line 1263
    %t15 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 13
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_string10* %t15
    ; line 1263
    %t16 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 14
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %T_string10* %t16
    ; line 1264
    %t17 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 15
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %T_string10* %t17
    ; line 1264
    %t18 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 16
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %T_string10* %t18
    ; line 1265
    %t19 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 17
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %T_string10* %t19
    ; line 1265
    %t20 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 18
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_string10* %t20
    ; line 1266
    %t21 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 19
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %T_string10* %t21
    ; line 1266
    %t22 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 20
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %T_string10* %t22
    ; line 1267
    %t23 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 21
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_string10* %t23
    ; line 1267
    %t24 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 22
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %T_string10* %t24
    ; line 1268
    %t25 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 23
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %T_string10* %t25
    ; line 1268
    %t26 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 24
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_string10* %t26
    ; line 1269
    %t27 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 25
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %T_string10* %t27
    ; line 1269
    %t28 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 26
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_string10* %t28
    ; line 1270
    %t29 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 27
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_string10* %t29
    ; line 1270
    %t30 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 28
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %T_string10* %t30
    ; line 1271
    %t31 = getelementptr inbounds %T_array_3, %T_array_3* @keywd, i32 0, i32 29
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), %T_string10* %t31
    ; line 1272
    %t32 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t32)
    ; line 1273
    %t33 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t33, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.32, i32 0, i32 0), i32 61)
    call void @_WriteLn(i8* %t33)
    ; line 1274
    %t34 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t34)
    ; line 1275
    br label %L_88
L_88:
    ; line 1298
    br label %L_99
L_99:
    %t35 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t35, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t35)

    ; cleanup
    %t36 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t36)
    %t37 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t37)

    ; epilogue
    ret void
}


; line 128
;================================================================================
; scope: prtlin (level : 2)

; activation record
%Frame_prtlin = type
{
    ; parameters
    %T_string80*,    ; 0: str

    ; variables
    i32,    ; 1: i
    i32,    ; 2: j

    ; dummy
    i8*
};

; procedure body
define void @P_prtlin(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_prtlin, align 8
    %t1 = getelementptr inbounds %Frame_prtlin, %Frame_prtlin* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 148
    %t2 = getelementptr inbounds %Frame_prtlin, %Frame_prtlin* %.frame, i32 0, i32 2
    store i32 80, i32* %t2
    ; line 149
    ; line 150
    %t3 = getelementptr inbounds %Frame_prtlin, %Frame_prtlin* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_prtlin, %Frame_prtlin* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t6
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* %t3
    ; line 151
    %t7 = getelementptr inbounds %Frame_prtlin, %Frame_prtlin* %.frame, i32 0, i32 1
    store i32 1, i32* %t7
    ; line 152
    ; line 159
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)

    ; epilogue
    ret void
}


; line 132
;================================================================================
; scope: prtlin_prtkey (level : 3)

; activation record
%Frame_prtlin_prtkey = type
{
    ; parameters
    %T_string10*,    ; 0: str

    ; variables
    i32,    ; 1: i
    i32,    ; 2: j

    ; slink
    %Frame_prtlin*    ; 3
};

; procedure body
define void @P_prtlin_prtkey(%Frame_prtlin* %.slink, %T_string10* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_prtlin_prtkey, align 8
    %t1 = getelementptr inbounds %Frame_prtlin_prtkey, %Frame_prtlin_prtkey* %.frame, i32 0, i32 3
    store %Frame_prtlin* %.slink, %Frame_prtlin** %t1
    %t2 = getelementptr inbounds %Frame_prtlin_prtkey, %Frame_prtlin_prtkey* %.frame, i32 0, i32 0
    store %T_string10* %str, %T_string10** %t2

    ; body
    ; line 138
    %t3 = getelementptr inbounds %Frame_prtlin_prtkey, %Frame_prtlin_prtkey* %.frame, i32 0, i32 2
    store i32 10, i32* %t3
    ; line 139
    ; line 140
    %t4 = getelementptr inbounds %Frame_prtlin_prtkey, %Frame_prtlin_prtkey* %.frame, i32 0, i32 2
    %t7 = getelementptr inbounds %Frame_prtlin_prtkey, %Frame_prtlin_prtkey* %.frame, i32 0, i32 2
    %t6 = load i32, i32* %t7
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* %t4
    ; line 141
    %t8 = getelementptr inbounds %Frame_prtlin_prtkey, %Frame_prtlin_prtkey* %.frame, i32 0, i32 1
    store i32 1, i32* %t8
    ; line 142

    ; epilogue
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
define void @P_prterr(i32 %err)
{
    ; allocate frame
    %.frame = alloca %Frame_prterr, align 8
    %t1 = getelementptr inbounds %Frame_prterr, %Frame_prterr* %.frame, i32 0, i32 0
    store i32 %err, i32* %t1

    ; body
    ; line 169
    %t3 = load i32, i32* @prgmc
    %t2 = icmp ne i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 169
    %t4 = load i32, i32* @prgmc
    %t5 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t4
    call void @P_prtlin(%T_string80* %t5)
    br label %L_endif_1
L_endif_1:
    ; line 170
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 4)
    ; line 171
    ; line 199

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_chkchr, align 8

    ; body
    ; line 211
    %t2 = load i32, i32* @linec
    %t1 = icmp sle i32 %t2, 80
    br i1 %t1, label %L_then_1, label %L_else_1
L_then_1:
    ; line 211
    %t3 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 1
    %t4 = load i32, i32* @prgmc
    %t5 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t4
    %t6 = load i32, i32* @linec
    %t7 = getelementptr inbounds %T_string80, %T_string80* %t5, i32 0, i32 %t6
    %t8 = load i8, i8* %t7
    store i8 %t8, i8* %t3
    br label %L_endif_1
L_else_1:
    ; line 212
    %t9 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 1
    store i8 32, i8* %t9
    br label %L_endif_1
L_endif_1:
    ; line 213
    %t10 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 0
    %t12 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 1
    %t11 = load i8, i8* %t12
    store i8 %t11, i8* %t10

    ; epilogue
    %t13 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 0
    %t14 = load i8, i8* %t13
    ret i8 %t14
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
    ; allocate frame
    %.frame = alloca %Frame_chkend, align 8

    ; body
    ; line 223
    %t1 = getelementptr inbounds %Frame_chkend, %Frame_chkend* %.frame, i32 0, i32 0
    %t3 = load i32, i32* @linec
    %t2 = icmp sgt i32 %t3, 80
    store i1 %t2, i1* %t1

    ; epilogue
    %t4 = getelementptr inbounds %Frame_chkend, %Frame_chkend* %.frame, i32 0, i32 0
    %t5 = load i1, i1* %t4
    ret i1 %t5
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
    ; allocate frame
    %.frame = alloca %Frame_getchr, align 8

    ; body
    ; line 233
    %t1 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 0
    %t2 = call i8 @F_chkchr()
    store i8 %t2, i8* %t1
    ; line 234
    %t3 = call i1 @F_chkend()
    %t4 = icmp eq i1 0, %t3
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 234
    %t6 = load i32, i32* @linec
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @linec
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 0
    %t8 = load i8, i8* %t7
    ret i8 %t8
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
define i1 @F_chknxt(i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_chknxt, align 8
    %t1 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 0
    store i8 %c, i8* %t1

    ; body
    ; line 244
    %t2 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 0
    %t4 = load i8, i8* %t5
    %t6 = call i8 @F_chkchr()
    %t3 = icmp eq i32 %t4, %t6
    store i1 %t3, i1* %t2
    ; line 245
    %t9 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 0
    %t8 = load i8, i8* %t9
    %t10 = call i8 @F_chkchr()
    %t7 = icmp eq i32 %t8, %t10
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 245
    %t11 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 0
    %t12 = call i8 @F_getchr()
    store i8 %t12, i8* %t11
    br label %L_endif_1
L_endif_1:

    ; epilogue
    %t13 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 1
    %t14 = load i1, i1* %t13
    ret i1 %t14
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
    ; allocate frame
    %.frame = alloca %Frame_skpspc, align 8

    ; body
    ; line 257
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_chksend, align 8

    ; body
    ; line 267
    call void @P_skpspc()
    ; line 268
    %t1 = getelementptr inbounds %Frame_chksend, %Frame_chksend* %.frame, i32 0, i32 0
    br label %L_OR_expr_1
L_OR_expr_1:
    %t3 = call i1 @F_chkend()
    br i1 %t3, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t5 = call i8 @F_chkchr()
    %t4 = icmp eq i32 %t5, 58
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t2 = phi [%t4, %L_OR_eval_1], [true, %L_OR_expr_1]
    store i1 %t2, i1* %t1

    ; epilogue
    %t6 = getelementptr inbounds %Frame_chksend, %Frame_chksend* %.frame, i32 0, i32 0
    %t7 = load i1, i1* %t6
    ret i1 %t7
}


; line 274
;================================================================================
; scope: null (level : 2)

; activation record
%Frame_null = type
{
    ; parameters
    %T_string80*,    ; 0: str

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: f
    i32,    ; 3: i

    ; dummy
    i8*
};

; function body
define i1 @F_null(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_null, align 8
    %t1 = getelementptr inbounds %Frame_null, %Frame_null* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 281
    %t2 = getelementptr inbounds %Frame_null, %Frame_null* %.frame, i32 0, i32 2
    store i1 1, i1* %t2
    ; line 282
    ; line 283
    %t3 = getelementptr inbounds %Frame_null, %Frame_null* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_null, %Frame_null* %.frame, i32 0, i32 2
    %t4 = load i1, i1* %t5
    store i1 %t4, i1* %t3

    ; epilogue
    %t6 = getelementptr inbounds %Frame_null, %Frame_null* %.frame, i32 0, i32 1
    %t7 = load i1, i1* %t6
    ret i1 %t7
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
define i1 @F_digit(i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_digit, align 8
    %t1 = getelementptr inbounds %Frame_digit, %Frame_digit* %.frame, i32 0, i32 0
    store i8 %c, i8* %t1

    ; body
    ; line 293
    %t2 = getelementptr inbounds %Frame_digit, %Frame_digit* %.frame, i32 0, i32 1
    br label %L_AND_expr_1
L_AND_expr_1:
    %t4 = icmp sge i32 %.dummy.intrin, %.dummy.intrin
    br i1 %t4, label %L_AND_eval_1, label %L_AND_shortcut_1
L_AND_eval_1:
    %t5 = icmp sle i32 %.dummy.intrin, %.dummy.intrin
    br label %L_AND_shortcut_1
L_AND_shortcut_1:
    %t3 = phi [%t5, %L_AND_eval_1], [false, %L_AND_expr_1]
    store i1 %t3, i1* %t2

    ; epilogue
    %t6 = getelementptr inbounds %Frame_digit, %Frame_digit* %.frame, i32 0, i32 1
    %t7 = load i1, i1* %t6
    ret i1 %t7
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
define i8 @F_lcase(i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_lcase, align 8
    %t1 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    store i8 %c, i8* %t1

    ; body
    ; line 303
    br label %L_AND_expr_1
L_AND_expr_1:
    %t3 = icmp sge i32 %.dummy.intrin, %.dummy.intrin
    br i1 %t3, label %L_AND_eval_1, label %L_AND_shortcut_1
L_AND_eval_1:
    %t4 = icmp sle i32 %.dummy.intrin, %.dummy.intrin
    br label %L_AND_shortcut_1
L_AND_shortcut_1:
    %t2 = phi [%t4, %L_AND_eval_1], [false, %L_AND_expr_1]
    br i1 %t2, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 304
    %t5 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    store i8 %.dummy.intrin, i8* %t5
    br label %L_endif_2
L_endif_2:
    ; line 305
    %t6 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    %t7 = load i8, i8* %t8
    store i8 %t7, i8* %t6

    ; epilogue
    %t9 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 1
    %t10 = load i8, i8* %t9
    ret i8 %t10
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
define i1 @F_alpha(i8 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_alpha, align 8
    %t1 = getelementptr inbounds %Frame_alpha, %Frame_alpha* %.frame, i32 0, i32 0
    store i8 %c, i8* %t1

    ; body
    ; line 315
    %t2 = getelementptr inbounds %Frame_alpha, %Frame_alpha* %.frame, i32 0, i32 1
    br label %L_AND_expr_1
L_AND_expr_1:
    %t4 = icmp sge i32 %.dummy.intrin, %.dummy.intrin
    br i1 %t4, label %L_AND_eval_1, label %L_AND_shortcut_1
L_AND_eval_1:
    %t5 = icmp sle i32 %.dummy.intrin, %.dummy.intrin
    br label %L_AND_shortcut_1
L_AND_shortcut_1:
    %t3 = phi [%t5, %L_AND_eval_1], [false, %L_AND_expr_1]
    store i1 %t3, i1* %t2

    ; epilogue
    %t6 = getelementptr inbounds %Frame_alpha, %Frame_alpha* %.frame, i32 0, i32 1
    %t7 = load i1, i1* %t6
    ret i1 %t7
}


; line 322
;================================================================================
; scope: lint (level : 2)

; activation record
%Frame_lint = type
{
    ; parameters
    %T_string80*,    ; 0: str

    ; variables
    i32,    ; 1: _fnvalue
    i1,    ; 2: b
    i32,    ; 3: i
    i32,    ; 4: v

    ; dummy
    i8*
};

; function body
define i32 @F_lint(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_lint, align 8
    %t1 = getelementptr inbounds %Frame_lint, %Frame_lint* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 329
    %t2 = getelementptr inbounds %Frame_lint, %Frame_lint* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
    ; line 330
    %t3 = getelementptr inbounds %Frame_lint, %Frame_lint* %.frame, i32 0, i32 3
    store i32 1, i32* %t3
    ; line 331
    ; line 332
    ; line 347
    %t4 = getelementptr inbounds %Frame_lint, %Frame_lint* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_lint, %Frame_lint* %.frame, i32 0, i32 4
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_lint, %Frame_lint* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
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
define i32 @F_schlab(i32 %lab)
{
    ; allocate frame
    %.frame = alloca %Frame_schlab, align 8
    %t1 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 0
    store i32 %lab, i32* %t1

    ; body
    ; line 359
    %t2 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 2
    store i32 1, i32* %t2
    ; line 360
    ; line 361
    %t5 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    %t7 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 2
    %t6 = load i32, i32* %t7
    %t8 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t6
    %t9 = call i32 @F_lint(%T_string80* %t8)
    %t3 = icmp ne i32 %t4, %t9
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 361
    call void @P_prterr(i32 8)
    br label %L_endif_1
L_endif_1:
    ; line 362
    %t10 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 2
    %t11 = load i32, i32* %t12
    store i32 %t11, i32* %t10

    ; epilogue
    %t13 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 1
    %t14 = load i32, i32* %t13
    ret i32 %t14
}


; line 368
;================================================================================
; scope: inpstr (level : 2)

; activation record
%Frame_inpstr = type
{
    ; parameters
    %T_string80*,    ; 0: str

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_inpstr(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_inpstr, align 8
    %t1 = getelementptr inbounds %Frame_inpstr, %Frame_inpstr* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 374
    ; line 375
    %t2 = getelementptr inbounds %Frame_inpstr, %Frame_inpstr* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    ; line 376
    ; line 382
    ; line 383
    %t5 = getelementptr inbounds %Frame_inpstr, %Frame_inpstr* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t5
    %t3 = icmp sgt i32 %t4, 80
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 383
    call void @P_prterr(i32 6)
    br label %L_endif_1
L_endif_1:

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_getvar, align 8

    ; body
    ; line 393
    %t1 = call i8 @F_chkchr()
    %t2 = call i1 @F_alpha(i8 %t1)
    %t3 = icmp eq i1 0, %t2
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 393
    call void @P_prterr(i32 7)
    br label %L_endif_1
L_endif_1:
    ; line 394
    %t4 = getelementptr inbounds %Frame_getvar, %Frame_getvar* %.frame, i32 0, i32 0
    %t5 = call i8 @F_getchr()
    %t6 = call i8 @F_lcase(i8 %t5)
    store i8 %t6, i8* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getvar, %Frame_getvar* %.frame, i32 0, i32 0
    %t8 = load i8, i8* %t7
    ret i8 %t8
}


; line 400
;================================================================================
; scope: enter (level : 2)

; activation record
%Frame_enter = type
{
    ; parameters
    %T_string80*,    ; 0: str

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
define void @P_enter(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_enter, align 8
    %t1 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 407
    %t2 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 5
    %t3 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    %t4 = load %T_string80*, %T_string80** %t3
    %t5 = call i32 @F_lint(%T_string80* %t4)
    store i32 %t5, i32* %t2
    ; line 408
    %t8 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 5
    %t7 = load i32, i32* %t8
    %t6 = icmp sgt i32 %t7, 9999
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 408
    call void @P_prterr(i32 17)
    br label %L_endif_1
L_endif_1:
    ; line 409
    %t9 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    store i32 1, i32* %t9
    ; line 410
    %t10 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 1
    store i1 0, i1* %t10
    ; line 411
    ; line 422
    %t13 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t12 = load i32, i32* %t13
    %t11 = icmp sgt i32 %t12, 100
    br i1 %t11, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 422
    call void @P_prterr(i32 5)
    br label %L_endif_2
L_endif_2:
    ; line 423
    %t15 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t14 = load i32, i32* %t15
    %t16 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t14
    %t17 = call i1 @F_null(%T_string80* %t16)
    br i1 %t17, label %L_then_3, label %L_else_3
L_then_3:
    ; line 423
    %t19 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    %t20 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t18
    %t22 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    %t23 = load %T_string80*, %T_string80** %t22
    %t21 = load %T_string80, %T_string80* %t23
    store %T_string80 %t21, %T_string80* %t20
    br label %L_endif_3
L_else_3:
    ; line 424
    %t26 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t25 = load i32, i32* %t26
    %t27 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t25
    %t28 = call i32 @F_lint(%T_string80* %t27)
    %t30 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 5
    %t29 = load i32, i32* %t30
    %t24 = icmp eq i32 %t28, %t29
    br i1 %t24, label %L_then_4, label %L_else_4
L_then_4:
    ; line 426
    %t31 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 3
    store i32 1, i32* %t31
    ; line 427
    ; line 428
    ; line 429
    ; line 430
    %t34 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 3
    %t33 = load i32, i32* %t34
    %t32 = icmp eq i32 %t33, 80
    br i1 %t32, label %L_then_5, label %L_else_5
L_then_5:
    ; line 432
    ; line 433
    br label %L_endif_5
L_else_5:
    ; line 435
    %t36 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t35 = load i32, i32* %t36
    %t37 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t35
    %t39 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    %t40 = load %T_string80*, %T_string80** %t39
    %t38 = load %T_string80, %T_string80* %t40
    store %T_string80 %t38, %T_string80* %t37
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_else_4:
    ; line 437
    %t41 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 100
    %t42 = call i1 @F_null(%T_string80* %t41)
    %t43 = icmp eq i1 0, %t42
    br i1 %t43, label %L_then_6, label %L_else_6
L_then_6:
    ; line 437
    call void @P_prterr(i32 5)
    br label %L_endif_6
L_else_6:
    ; line 440
    ; line 441
    %t45 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t44 = load i32, i32* %t45
    %t46 = getelementptr inbounds %T_array_4, %T_array_4* @prgm, i32 0, i32 %t44
    %t48 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    %t49 = load %T_string80*, %T_string80** %t48
    %t47 = load %T_string80, %T_string80* %t49
    store %T_string80 %t47, %T_string80* %t46
    br label %L_endif_6
L_endif_6:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 449
;================================================================================
; scope: keycom (level : 2)

; activation record
%Frame_keycom = type
{
    ; parameters
    %T_string80*,    ; 0: str

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
define void @P_keycom(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_keycom, align 8
    %t1 = getelementptr inbounds %Frame_keycom, %Frame_keycom* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 488
    ; line 489
    %t2 = getelementptr inbounds %Frame_keycom, %Frame_keycom* %.frame, i32 0, i32 3
    store i32 1, i32* %t2
    ; line 490
    %t3 = getelementptr inbounds %Frame_keycom, %Frame_keycom* %.frame, i32 0, i32 4
    store i32 1, i32* %t3
    ; line 491
    ; line 532

    ; epilogue
    ret void
}


; line 456
;================================================================================
; scope: keycom_matstr (level : 3)

; activation record
%Frame_keycom_matstr = type
{
    ; parameters
    i32*,    ; 0: i
    %T_string80*,    ; 1: stra
    %T_string10*,    ; 2: strb

    ; variables
    i1,    ; 3: _fnvalue
    i1,    ; 4: f
    i32,    ; 5: i1
    i32,    ; 6: i2

    ; slink
    %Frame_keycom*    ; 7
};

; function body
define i1 @F_keycom_matstr(%Frame_keycom* %.slink, %T_string80* %stra, i32* %i, %T_string10* %strb)
{
    ; allocate frame
    %.frame = alloca %Frame_keycom_matstr, align 8
    %t1 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 7
    store %Frame_keycom* %.slink, %Frame_keycom** %t1
    %t2 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 0
    store i32* %i, i32** %t2
    %t3 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 1
    store %T_string80* %stra, %T_string80** %t3
    %t4 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 2
    store %T_string10* %strb, %T_string10** %t4

    ; body
    ; line 464
    %t5 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 5
    %t7 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 0
    %t8 = load i32*, i32** %t7
    %t6 = load i32, i32* %t8
    store i32 %t6, i32* %t5
    ; line 465
    %t9 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 6
    store i32 1, i32* %t9
    ; line 466
    ; line 479
    %t12 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 6
    %t11 = load i32, i32* %t12
    %t10 = icmp sgt i32 %t11, 10
    br i1 %t10, label %L_then_1, label %L_else_1
L_then_1:
    ; line 479
    %t13 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 4
    store i1 1, i1* %t13
    ; line 479
    %t14 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 0
    %t15 = load i32*, i32** %t14
    %t17 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 5
    %t16 = load i32, i32* %t17
    store i32 %t16, i32* %t15
    br label %L_endif_1
L_else_1:
    ; line 480
    %t19 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 2
    %t20 = load %T_string10*, %T_string10** %t19
    %t22 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 6
    %t21 = load i32, i32* %t22
    %t23 = getelementptr inbounds %T_string10, %T_string10* %t20, i32 0, i32 %t21
    %t24 = load i8, i8* %t23
    %t18 = icmp eq i32 %t24, 32
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 480
    %t25 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 4
    store i1 1, i1* %t25
    ; line 480
    %t26 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 0
    %t27 = load i32*, i32** %t26
    %t29 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 5
    %t28 = load i32, i32* %t29
    store i32 %t28, i32* %t27
    br label %L_endif_2
L_else_2:
    ; line 481
    %t30 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 4
    store i1 0, i1* %t30
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 482
    %t31 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 3
    %t33 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 4
    %t32 = load i1, i1* %t33
    store i1 %t32, i1* %t31

    ; epilogue
    %t34 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 3
    %t35 = load i1, i1* %t34
    ret i1 %t35
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
    ; allocate frame
    %.frame = alloca %Frame_getint, align 8

    ; body
    ; line 546
    %t1 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 1
    store i32 0, i32* %t1
    ; line 547
    call void @P_skpspc()
    ; line 548
    %t2 = call i8 @F_chkchr()
    %t3 = call i1 @F_digit(i8 %t2)
    %t4 = icmp eq i1 0, %t3
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 548
    call void @P_prterr(i32 9)
    br label %L_endif_1
L_endif_1:
    ; line 549
    ; line 551
    %t5 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 0
    %t7 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5

    ; epilogue
    %t8 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t8
    ret i32 %t9
}


; line 557
;================================================================================
; scope: getval (level : 2)

; activation record
%Frame_getval = type
{
    ; parameters
    %T_string80*,    ; 0: str

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i

    ; dummy
    i8*
};

; function body
define i32 @F_getval(%T_string80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_getval, align 8
    %t1 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 0
    store %T_string80* %str, %T_string80** %t1

    ; body
    ; line 563
    %t2 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 2
    store i32 1, i32* %t2
    ; line 564
    ; line 565
    %t3 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 0
    %t4 = load %T_string80*, %T_string80** %t3
    %t6 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t6
    %t7 = getelementptr inbounds %T_string80, %T_string80* %t4, i32 0, i32 %t5
    %t8 = load i8, i8* %t7
    %t9 = call i1 @F_digit(i8 %t8)
    %t10 = icmp eq i1 0, %t9
    br i1 %t10, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 565
    call void @P_prterr(i32 9)
    br label %L_endif_1
L_endif_1:
    ; line 566
    %t11 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 0
    %t13 = load %T_string80*, %T_string80** %t12
    %t14 = call i32 @F_lint(%T_string80* %t13)
    store i32 %t14, i32* %t11
    ; line 567
    ; line 568
    ; line 569
    %t17 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 2
    %t16 = load i32, i32* %t17
    %t15 = icmp ne i32 %t16, 80
    br i1 %t15, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 569
    call void @P_prterr(i32 10)
    br label %L_endif_2
L_endif_2:

    ; epilogue
    %t18 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 1
    %t19 = load i32, i32* %t18
    ret i32 %t19
}


; line 575
;================================================================================
; scope: getbval (level : 2)

; activation record
%Frame_getbval = type
{
    ; parameters
    %T_bstring80*,    ; 0: str

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    i32,    ; 3: v

    ; dummy
    i8*
};

; function body
define i32 @F_getbval(%T_bstring80* %str)
{
    ; allocate frame
    %.frame = alloca %Frame_getbval, align 8
    %t1 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 0
    store %T_bstring80* %str, %T_bstring80** %t1

    ; body
    ; line 581
    %t2 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 2
    store i32 1, i32* %t2
    ; line 582
    ; line 583
    %t3 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 0
    %t4 = load %T_bstring80*, %T_bstring80** %t3
    %t6 = getelementptr inbounds %T_bstring80, %T_bstring80* %t4, i32 0, i32 4
    %t5 = bitcast i8* %t6 to %T_string80*
    %t8 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 2
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_string80, %T_string80* %t5, i32 0, i32 %t7
    %t10 = load i8, i8* %t9
    %t11 = call i1 @F_digit(i8 %t10)
    %t12 = icmp eq i1 0, %t11
    br i1 %t12, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 583
    call void @P_prterr(i32 9)
    br label %L_endif_1
L_endif_1:
    ; line 584
    %t13 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 3
    store i32 0, i32* %t13
    ; line 585
    ; line 591
    ; line 592
    %t16 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 2
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 0
    %t18 = load %T_bstring80*, %T_bstring80** %t17
    %t20 = getelementptr inbounds %T_bstring80, %T_bstring80* %t18, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i32*
    %t21 = load i32, i32* %t19
    %t14 = icmp sle i32 %t15, %t21
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 592
    call void @P_prterr(i32 10)
    br label %L_endif_2
L_endif_2:
    ; line 593
    %t22 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 1
    %t24 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 3
    %t23 = load i32, i32* %t24
    store i32 %t23, i32* %t22

    ; epilogue
    %t25 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 1
    %t26 = load i32, i32* %t25
    ret i32 %t26
}


; line 599
;================================================================================
; scope: putbval (level : 2)

; activation record
%Frame_putbval = type
{
    ; parameters
    %T_bstring80*,    ; 0: str
    i32,    ; 1: v

    ; variables
    i32,    ; 2: i
    i32,    ; 3: p

    ; dummy
    i8*
};

; procedure body
define void @P_putbval(%T_bstring80* %str, i32 %v)
{
    ; allocate frame
    %.frame = alloca %Frame_putbval, align 8
    %t1 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 0
    store %T_bstring80* %str, %T_bstring80** %t1
    %t2 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 1
    store i32 %v, i32* %t2

    ; body
    ; line 606
    %t3 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 0
    %t4 = load %T_bstring80*, %T_bstring80** %t3
    %t6 = getelementptr inbounds %T_bstring80, %T_bstring80* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    store i32 0, i32* %t5
    ; line 607
    %t7 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 3
    store i32 10000, i32* %t7
    ; line 608
    %t8 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 2
    store i32 1, i32* %t8
    ; line 609
    %t11 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 1
    %t10 = load i32, i32* %t11
    %t9 = icmp slt i32 %t10, 0
    br i1 %t9, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 611
    %t12 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 0
    %t13 = load %T_bstring80*, %T_bstring80** %t12
    %t15 = getelementptr inbounds %T_bstring80, %T_bstring80* %t13, i32 0, i32 4
    %t14 = bitcast i8* %t15 to %T_string80*
    %t17 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 2
    %t16 = load i32, i32* %t17
    %t18 = getelementptr inbounds %T_string80, %T_string80* %t14, i32 0, i32 %t16
    store i8 45, i8* %t18
    ; line 612
    %t19 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 2
    %t22 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 2
    %t21 = load i32, i32* %t22
    %t20 = add i32 %t21, 1
    store i32 %t20, i32* %t19
    ; line 613
    %t23 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 1
    %t25 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 1
    %t24 = load i32, i32* %t25
    %t26 = sub i32 0, %t24
    store i32 %t26, i32* %t23
    br label %L_endif_1
L_endif_1:
    ; line 616
    ; line 629
    %t27 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 0
    %t28 = load %T_bstring80*, %T_bstring80** %t27
    %t30 = getelementptr inbounds %T_bstring80, %T_bstring80* %t28, i32 0, i32 0
    %t29 = bitcast i8* %t30 to i32*
    %t33 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 2
    %t32 = load i32, i32* %t33
    %t31 = sub i32 %t32, 1
    store i32 %t31, i32* %t29

    ; epilogue
    ret void
}


; line 635
;================================================================================
; scope: prtbstr (level : 2)

; activation record
%Frame_prtbstr = type
{
    ; parameters
    %T_bstring80*,    ; 0: bstr

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_prtbstr(%T_bstring80* %bstr)
{
    ; allocate frame
    %.frame = alloca %Frame_prtbstr, align 8
    %t1 = getelementptr inbounds %Frame_prtbstr, %Frame_prtbstr* %.frame, i32 0, i32 0
    store %T_bstring80* %bstr, %T_bstring80** %t1

    ; body
    ; line 641
    ; nop

    ; epilogue
    ret void
}


; line 647
;================================================================================
; scope: inpbstr (level : 2)

; activation record
%Frame_inpbstr = type
{
    ; parameters
    %T_bstring80*,    ; 0: bstr

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_inpbstr(%T_bstring80* %bstr)
{
    ; allocate frame
    %.frame = alloca %Frame_inpbstr, align 8
    %t1 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 0
    store %T_bstring80* %bstr, %T_bstring80** %t1

    ; body
    ; line 653
    ; line 654
    %t2 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    ; line 655
    ; line 661
    br label %L_AND_expr_1
L_AND_expr_1:
    %t6 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 1
    %t5 = load i32, i32* %t6
    %t4 = icmp sgt i32 %t5, 80
    br i1 %t4, label %L_AND_eval_1, label %L_AND_shortcut_1
L_AND_eval_1:
    %t7 = icmp eq i1 0, %.dummy.intrin
    br label %L_AND_shortcut_1
L_AND_shortcut_1:
    %t3 = phi [%t7, %L_AND_eval_1], [false, %L_AND_expr_1]
    br i1 %t3, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 661
    call void @P_prterr(i32 6)
    br label %L_endif_2
L_endif_2:
    ; line 662
    ; line 663
    %t8 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 0
    %t9 = load %T_bstring80*, %T_bstring80** %t8
    %t11 = getelementptr inbounds %T_bstring80, %T_bstring80* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t13 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t13
    store i32 %t12, i32* %t10

    ; epilogue
    ret void
}


; line 669
;================================================================================
; scope: cat (level : 2)

; activation record
%Frame_cat = type
{
    ; parameters
    %T_bstring80*,    ; 0: bstra
    %T_bstring80*,    ; 1: bstrb

    ; variables
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_cat(%T_bstring80* %bstra, %T_bstring80* %bstrb)
{
    ; allocate frame
    %.frame = alloca %Frame_cat, align 8
    %t1 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 0
    store %T_bstring80* %bstra, %T_bstring80** %t1
    %t2 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 1
    store %T_bstring80* %bstrb, %T_bstring80** %t2

    ; body
    ; line 675
    %t5 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 0
    %t6 = load %T_bstring80*, %T_bstring80** %t5
    %t8 = getelementptr inbounds %T_bstring80, %T_bstring80* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    %t10 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 1
    %t11 = load %T_bstring80*, %T_bstring80** %t10
    %t13 = getelementptr inbounds %T_bstring80, %T_bstring80* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t4 = add i32 %t9, %t14
    %t3 = icmp sgt i32 %t4, 80
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 675
    call void @P_prterr(i32 18)
    br label %L_endif_1
L_endif_1:
    ; line 677
    ; line 678
    %t15 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 0
    %t16 = load %T_bstring80*, %T_bstring80** %t15
    %t18 = getelementptr inbounds %T_bstring80, %T_bstring80* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t20 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 0
    %t21 = load %T_bstring80*, %T_bstring80** %t20
    %t23 = getelementptr inbounds %T_bstring80, %T_bstring80* %t21, i32 0, i32 0
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t25 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 1
    %t26 = load %T_bstring80*, %T_bstring80** %t25
    %t28 = getelementptr inbounds %T_bstring80, %T_bstring80* %t26, i32 0, i32 0
    %t27 = bitcast i8* %t28 to i32*
    %t29 = load i32, i32* %t27
    %t19 = add i32 %t24, %t29
    store i32 %t19, i32* %t17

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_chkequ, align 8

    ; body
    ; line 688
    br label %L_OR_expr_1
L_OR_expr_1:
    %t3 = load i32, i32* @top
    %t4 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t3
    %t6 = getelementptr inbounds %T_record_7, %T_record_7* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t7 = load i32, i32* %t5
    %t2 = icmp ne i32 %t7, 0
    br i1 %t2, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t10 = load i32, i32* @top
    %t9 = sub i32 %t10, 1
    %t11 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t9
    %t13 = getelementptr inbounds %T_record_7, %T_record_7* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t8 = icmp ne i32 %t14, 0
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t1 = phi [%t8, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t1, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 689
    call void @P_prterr(i32 12)
    br label %L_endif_2
L_endif_2:
    ; line 690
    %t15 = getelementptr inbounds %Frame_chkequ, %Frame_chkequ* %.frame, i32 0, i32 0
    %t18 = load i32, i32* @top
    %t17 = sub i32 %t18, 1
    %t19 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t17
    %t21 = getelementptr inbounds %T_record_7, %T_record_7* %t19, i32 0, i32 4
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t23 = load i32, i32* @top
    %t24 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t23
    %t26 = getelementptr inbounds %T_record_7, %T_record_7* %t24, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    %t16 = icmp eq i32 %t22, %t27
    store i1 %t16, i1* %t15

    ; epilogue
    %t28 = getelementptr inbounds %Frame_chkequ, %Frame_chkequ* %.frame, i32 0, i32 0
    %t29 = load i1, i1* %t28
    ret i1 %t29
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
    ; allocate frame
    %.frame = alloca %Frame_chkltn, align 8

    ; body
    ; line 700
    br label %L_OR_expr_1
L_OR_expr_1:
    %t3 = load i32, i32* @top
    %t4 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t3
    %t6 = getelementptr inbounds %T_record_7, %T_record_7* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t7 = load i32, i32* %t5
    %t2 = icmp ne i32 %t7, 0
    br i1 %t2, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t10 = load i32, i32* @top
    %t9 = sub i32 %t10, 1
    %t11 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t9
    %t13 = getelementptr inbounds %T_record_7, %T_record_7* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t8 = icmp ne i32 %t14, 0
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t1 = phi [%t8, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t1, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 701
    call void @P_prterr(i32 12)
    br label %L_endif_2
L_endif_2:
    ; line 702
    %t15 = getelementptr inbounds %Frame_chkltn, %Frame_chkltn* %.frame, i32 0, i32 0
    %t18 = load i32, i32* @top
    %t17 = sub i32 %t18, 1
    %t19 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t17
    %t21 = getelementptr inbounds %T_record_7, %T_record_7* %t19, i32 0, i32 4
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t23 = load i32, i32* @top
    %t24 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t23
    %t26 = getelementptr inbounds %T_record_7, %T_record_7* %t24, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    %t16 = icmp slt i32 %t22, %t27
    store i1 %t16, i1* %t15

    ; epilogue
    %t28 = getelementptr inbounds %Frame_chkltn, %Frame_chkltn* %.frame, i32 0, i32 0
    %t29 = load i1, i1* %t28
    ret i1 %t29
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
    ; allocate frame
    %.frame = alloca %Frame_chkgtn, align 8

    ; body
    ; line 712
    br label %L_OR_expr_1
L_OR_expr_1:
    %t3 = load i32, i32* @top
    %t4 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t3
    %t6 = getelementptr inbounds %T_record_7, %T_record_7* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t7 = load i32, i32* %t5
    %t2 = icmp ne i32 %t7, 0
    br i1 %t2, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t10 = load i32, i32* @top
    %t9 = sub i32 %t10, 1
    %t11 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t9
    %t13 = getelementptr inbounds %T_record_7, %T_record_7* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t8 = icmp ne i32 %t14, 0
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t1 = phi [%t8, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t1, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 713
    call void @P_prterr(i32 12)
    br label %L_endif_2
L_endif_2:
    ; line 714
    %t15 = getelementptr inbounds %Frame_chkgtn, %Frame_chkgtn* %.frame, i32 0, i32 0
    %t18 = load i32, i32* @top
    %t17 = sub i32 %t18, 1
    %t19 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t17
    %t21 = getelementptr inbounds %T_record_7, %T_record_7* %t19, i32 0, i32 4
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t23 = load i32, i32* @top
    %t24 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t23
    %t26 = getelementptr inbounds %T_record_7, %T_record_7* %t24, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    %t16 = icmp sgt i32 %t22, %t27
    store i1 %t16, i1* %t15

    ; epilogue
    %t28 = getelementptr inbounds %Frame_chkgtn, %Frame_chkgtn* %.frame, i32 0, i32 0
    %t29 = load i1, i1* %t28
    ret i1 %t29
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
    ; allocate frame
    %.frame = alloca %Frame_settrue, align 8

    ; body
    ; line 724
    %t1 = load i32, i32* @top
    %t2 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t1
    %t4 = getelementptr inbounds %T_record_7, %T_record_7* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    store i32 0, i32* %t3
    ; line 725
    %t5 = load i32, i32* @top
    %t6 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_record_7, %T_record_7* %t6, i32 0, i32 4
    %t7 = bitcast i8* %t8 to i32*
    store i32 1, i32* %t7

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_setfalse, align 8

    ; body
    ; line 735
    %t1 = load i32, i32* @top
    %t2 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t1
    %t4 = getelementptr inbounds %T_record_7, %T_record_7* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    store i32 0, i32* %t3
    ; line 736
    %t5 = load i32, i32* @top
    %t6 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_record_7, %T_record_7* %t6, i32 0, i32 4
    %t7 = bitcast i8* %t8 to i32*
    store i32 0, i32* %t7

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_clear, align 8

    ; body
    ; line 749
    ; line 751
    ; line 752
    ; line 753
    store i32 0, i32* @prgmc
    ; line 754
    store i32 1, i32* @linec
    ; line 755
    store i32 1, i32* @top

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_clrvar, align 8

    ; body
    ; line 767
    ; line 768
    ; line 769
    store i32 0, i32* @prgmc
    ; line 770
    store i32 1, i32* @linec
    ; line 771
    store i32 1, i32* @top

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_exec, align 8

    ; body
    ; line 1243
    store i32 1, i32* @linec
    ; line 1244
    ; line 1245
    ; line 1246
    call void @P_skpspc()
    ; line 1247
    %t1 = call i1 @F_chkend()
    %t2 = icmp eq i1 0, %t1
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1247
    call void @P_prterr(i32 19)
    br label %L_endif_1
L_endif_1:
    ; line 1248
    %t4 = load i32, i32* @prgmc
    %t3 = icmp sgt i32 %t4, 0
    br i1 %t3, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1248
    %t6 = load i32, i32* @prgmc
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @prgmc
    br label %L_endif_2
L_endif_2:
    br label %L_1
L_1:
    ; nop

    ; epilogue
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
define void @P_exec_stat(%Frame_exec* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_exec_stat, align 8
    %t1 = getelementptr inbounds %Frame_exec_stat, %Frame_exec_stat* %.frame, i32 0, i32 5
    store %Frame_exec* %.slink, %Frame_exec** %t1

    ; body
    ; line 1139
    call void @P_skpspc()
    ; line 1140
    %t2 = icmp slt i32 %.dummy.intrin, %.dummy.intrin
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1142
    %t3 = icmp sgt i32 %.dummy.intrin, 11
    br i1 %t3, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1142
    call void @P_prterr(i32 1)
    br label %L_endif_2
L_endif_2:
    ; line 1143
    br label %L_endif_1
L_else_1:
    ; line 1237
    call void @P_exec_stat_let(%Frame_exec_stat* %.frame)
    br label %L_endif_1
L_endif_1:

    ; epilogue
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
define void @P_exec_stat_expr(%Frame_exec_stat* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_exec_stat_expr, align 8
    %t1 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %.frame, i32 0, i32 0
    store %Frame_exec_stat* %.slink, %Frame_exec_stat** %t1

    ; body
    ; line 1042
    call void @P_exec_stat_expr_sexpr(%Frame_exec_stat_expr* %.frame)
    ; line 1043
    call void @P_skpspc()
    ; line 1044

    ; epilogue
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
define void @P_exec_stat_expr_sexpr(%Frame_exec_stat_expr* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_exec_stat_expr_sexpr, align 8
    %t1 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %.frame, i32 0, i32 0
    store %Frame_exec_stat_expr* %.slink, %Frame_exec_stat_expr** %t1

    ; body
    ; line 997
    call void @P_exec_stat_expr_sexpr_term(%Frame_exec_stat_expr_sexpr* %.frame)
    ; line 998
    call void @P_skpspc()
    ; line 999

    ; epilogue
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
define void @P_exec_stat_expr_sexpr_term(%Frame_exec_stat_expr_sexpr* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_exec_stat_expr_sexpr_term, align 8
    %t1 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %.frame, i32 0, i32 0
    store %Frame_exec_stat_expr_sexpr* %.slink, %Frame_exec_stat_expr_sexpr** %t1

    ; body
    ; line 951
    call void @P_exec_stat_expr_sexpr_term_factor(%Frame_exec_stat_expr_sexpr_term* %.frame)
    ; line 952
    call void @P_skpspc()
    ; line 953

    ; epilogue
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
define void @P_exec_stat_expr_sexpr_term_factor(%Frame_exec_stat_expr_sexpr_term* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_exec_stat_expr_sexpr_term_factor, align 8
    %t1 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    store %Frame_exec_stat_expr_sexpr_term* %.slink, %Frame_exec_stat_expr_sexpr_term** %t1

    ; body
    ; line 813
    call void @P_skpspc()
    ; line 814
    %t2 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t3 = call i8 @F_chkchr()
    store i8 %t3, i8* %t2
    ; line 815
    %t4 = call i1 @F_chknxt(i8 40)
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 817
    %t5 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t6 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t5
    %t7 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t6, i32 0, i32 0
    %t8 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t7
    %t9 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t8, i32 0, i32 0
    %t10 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t9
    %t11 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t10, i32 0, i32 0
    %t12 = load %Frame_exec_stat*, %Frame_exec_stat** %t11
    call void @P_exec_stat_expr(%Frame_exec_stat* %t12)
    ; line 818
    %t13 = call i1 @F_chknxt(i8 41)
    %t14 = icmp eq i1 0, %t13
    br i1 %t14, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 818
    call void @P_prterr(i32 13)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 820
    %t15 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br i1 %t15, label %L_then_3, label %L_else_3
L_then_3:
    ; line 822
    %t16 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t17 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t16
    call void @P_exec_stat_expr_sexpr_term_factor(%Frame_exec_stat_expr_sexpr_term* %t17)
    ; line 823
    %t19 = load i32, i32* @top
    %t20 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t19
    %t22 = getelementptr inbounds %T_record_7, %T_record_7* %t20, i32 0, i32 0
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t18 = icmp ne i32 %t23, 0
    br i1 %t18, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 823
    call void @P_prterr(i32 12)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 825
    %t24 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br i1 %t24, label %L_then_5, label %L_else_5
L_then_5:
    ; line 827
    %t25 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t26 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t25
    call void @P_exec_stat_expr_sexpr_term_factor(%Frame_exec_stat_expr_sexpr_term* %t26)
    ; line 828
    %t28 = load i32, i32* @top
    %t29 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t28
    %t31 = getelementptr inbounds %T_record_7, %T_record_7* %t29, i32 0, i32 0
    %t30 = bitcast i8* %t31 to i32*
    %t32 = load i32, i32* %t30
    %t27 = icmp ne i32 %t32, 0
    br i1 %t27, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 828
    call void @P_prterr(i32 12)
    br label %L_endif_6
L_endif_6:
    ; line 829
    %t33 = load i32, i32* @top
    %t34 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t33
    %t36 = getelementptr inbounds %T_record_7, %T_record_7* %t34, i32 0, i32 4
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* @top
    %t38 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t37
    %t40 = getelementptr inbounds %T_record_7, %T_record_7* %t38, i32 0, i32 4
    %t39 = bitcast i8* %t40 to i32*
    %t41 = load i32, i32* %t39
    %t42 = sub i32 0, %t41
    store i32 %t42, i32* %t35
    br label %L_endif_5
L_else_5:
    ; line 831
    %t43 = call i1 @F_chknxt(i8 34)
    br i1 %t43, label %L_then_7, label %L_else_7
L_then_7:
    ; line 833
    %t45 = load i32, i32* @top
    %t44 = add i32 %t45, 1
    store i32 %t44, i32* @top
    ; line 834
    %t47 = load i32, i32* @top
    %t46 = icmp sgt i32 %t47, 10
    br i1 %t46, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 834
    call void @P_prterr(i32 14)
    br label %L_endif_8
L_endif_8:
    ; line 835
    %t48 = load i32, i32* @top
    %t49 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t48
    %t51 = getelementptr inbounds %T_record_7, %T_record_7* %t49, i32 0, i32 0
    %t50 = bitcast i8* %t51 to i32*
    store i32 1, i32* %t50
    ; line 836
    %t52 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 1
    store i32 1, i32* %t52
    ; line 837
    ; line 843
    %t53 = call i1 @F_chknxt(i8 34)
    %t54 = icmp eq i1 0, %t53
    br i1 %t54, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 843
    call void @P_prterr(i32 15)
    br label %L_endif_9
L_endif_9:
    ; line 844
    %t55 = load i32, i32* @top
    %t56 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t55
    %t58 = getelementptr inbounds %T_record_7, %T_record_7* %t56, i32 0, i32 8
    %t57 = bitcast i8* %t58 to %T_bstring80*
    %t60 = getelementptr inbounds %T_bstring80, %T_bstring80* %t57, i32 0, i32 0
    %t59 = bitcast i8* %t60 to i32*
    %t63 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 1
    %t62 = load i32, i32* %t63
    %t61 = sub i32 %t62, 1
    store i32 %t61, i32* %t59
    br label %L_endif_7
L_else_7:
    ; line 846
    %t64 = call i8 @F_chkchr()
    %t65 = call i1 @F_digit(i8 %t64)
    br i1 %t65, label %L_then_10, label %L_else_10
L_then_10:
    ; line 848
    %t67 = load i32, i32* @top
    %t66 = add i32 %t67, 1
    store i32 %t66, i32* @top
    ; line 849
    %t69 = load i32, i32* @top
    %t68 = icmp sgt i32 %t69, 10
    br i1 %t68, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 849
    call void @P_prterr(i32 14)
    br label %L_endif_11
L_endif_11:
    ; line 850
    %t70 = load i32, i32* @top
    %t71 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t70
    %t73 = getelementptr inbounds %T_record_7, %T_record_7* %t71, i32 0, i32 0
    %t72 = bitcast i8* %t73 to i32*
    store i32 0, i32* %t72
    ; line 851
    %t74 = load i32, i32* @top
    %t75 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t74
    %t77 = getelementptr inbounds %T_record_7, %T_record_7* %t75, i32 0, i32 4
    %t76 = bitcast i8* %t77 to i32*
    %t78 = call i32 @F_getint()
    store i32 %t78, i32* %t76
    br label %L_endif_10
L_else_10:
    ; line 853
    %t79 = call i8 @F_chkchr()
    %t80 = call i1 @F_alpha(i8 %t79)
    br i1 %t80, label %L_then_12, label %L_else_12
L_then_12:
    ; line 855
    %t82 = load i32, i32* @top
    %t81 = add i32 %t82, 1
    store i32 %t81, i32* @top
    ; line 856
    %t84 = load i32, i32* @top
    %t83 = icmp sgt i32 %t84, 10
    br i1 %t83, label %L_then_13, label %L_endif_13
L_then_13:
    ; line 856
    call void @P_prterr(i32 14)
    br label %L_endif_13
L_endif_13:
    ; line 857
    %t85 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t86 = call i8 @F_getvar()
    store i8 %t86, i8* %t85
    ; line 858
    %t87 = call i1 @F_chknxt(i8 36)
    br i1 %t87, label %L_then_14, label %L_else_14
L_then_14:
    ; line 860
    %t88 = load i32, i32* @top
    %t89 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t88
    %t91 = getelementptr inbounds %T_record_7, %T_record_7* %t89, i32 0, i32 0
    %t90 = bitcast i8* %t91 to i32*
    store i32 1, i32* %t90
    ; line 861
    %t92 = load i32, i32* @top
    %t93 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t92
    %t95 = getelementptr inbounds %T_record_7, %T_record_7* %t93, i32 0, i32 8
    %t94 = bitcast i8* %t95 to %T_bstring80*
    %t97 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t96 = load i8, i8* %t97
    %t98 = getelementptr inbounds %T_array_5, %T_array_5* @strs, i32 0, i32 %t96
    %t99 = load %T_bstring80, %T_bstring80* %t98
    store %T_bstring80 %t99, %T_bstring80* %t94
    br label %L_endif_14
L_else_14:
    ; line 865
    %t100 = load i32, i32* @top
    %t101 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t100
    %t103 = getelementptr inbounds %T_record_7, %T_record_7* %t101, i32 0, i32 0
    %t102 = bitcast i8* %t103 to i32*
    store i32 0, i32* %t102
    ; line 866
    %t104 = load i32, i32* @top
    %t105 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t104
    %t107 = getelementptr inbounds %T_record_7, %T_record_7* %t105, i32 0, i32 4
    %t106 = bitcast i8* %t107 to i32*
    %t109 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t108 = load i8, i8* %t109
    %t110 = getelementptr inbounds %T_array_2, %T_array_2* @ints, i32 0, i32 %t108
    %t111 = load i32, i32* %t110
    store i32 %t111, i32* %t106
    br label %L_endif_14
L_endif_14:
    br label %L_endif_12
L_else_12:
    ; line 870
    br label %L_OR_expr_16
L_OR_expr_16:
    br label %L_OR_expr_15
L_OR_expr_15:
    %t114 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br i1 %t114, label %L_OR_shortcut_15, label %L_OR_eval_15
L_OR_eval_15:
    %t115 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br label %L_OR_shortcut_15
L_OR_shortcut_15:
    %t113 = phi [%t115, %L_OR_eval_15], [true, %L_OR_expr_15]
    br i1 %t113, label %L_OR_shortcut_16, label %L_OR_eval_16
L_OR_eval_16:
    %t116 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br label %L_OR_shortcut_16
L_OR_shortcut_16:
    %t112 = phi [%t116, %L_OR_eval_16], [true, %L_OR_expr_16]
    br i1 %t112, label %L_then_17, label %L_else_17
L_then_17:
    ; line 874
    call void @P_skpspc()
    ; line 875
    %t117 = call i1 @F_chknxt(i8 40)
    %t118 = icmp eq i1 0, %t117
    br i1 %t118, label %L_then_18, label %L_endif_18
L_then_18:
    ; line 875
    call void @P_prterr(i32 20)
    br label %L_endif_18
L_endif_18:
    ; line 876
    %t119 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t120 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t119
    %t121 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t120, i32 0, i32 0
    %t122 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t121
    %t123 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t122, i32 0, i32 0
    %t124 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t123
    %t125 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t124, i32 0, i32 0
    %t126 = load %Frame_exec_stat*, %Frame_exec_stat** %t125
    call void @P_exec_stat_expr(%Frame_exec_stat* %t126)
    ; line 877
    %t128 = load i32, i32* @top
    %t129 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t128
    %t131 = getelementptr inbounds %T_record_7, %T_record_7* %t129, i32 0, i32 0
    %t130 = bitcast i8* %t131 to i32*
    %t132 = load i32, i32* %t130
    %t127 = icmp ne i32 %t132, 1
    br i1 %t127, label %L_then_19, label %L_endif_19
L_then_19:
    ; line 877
    call void @P_prterr(i32 22)
    br label %L_endif_19
L_endif_19:
    ; line 878
    call void @P_skpspc()
    ; line 879
    %t133 = call i1 @F_chknxt(i8 44)
    %t134 = icmp eq i1 0, %t133
    br i1 %t134, label %L_then_20, label %L_endif_20
L_then_20:
    ; line 879
    call void @P_prterr(i32 21)
    br label %L_endif_20
L_endif_20:
    ; line 880
    %t135 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t136 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t135
    %t137 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t136, i32 0, i32 0
    %t138 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t137
    %t139 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t138, i32 0, i32 0
    %t140 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t139
    %t141 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t140, i32 0, i32 0
    %t142 = load %Frame_exec_stat*, %Frame_exec_stat** %t141
    call void @P_exec_stat_expr(%Frame_exec_stat* %t142)
    ; line 881
    %t144 = load i32, i32* @top
    %t145 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t144
    %t147 = getelementptr inbounds %T_record_7, %T_record_7* %t145, i32 0, i32 0
    %t146 = bitcast i8* %t147 to i32*
    %t148 = load i32, i32* %t146
    %t143 = icmp ne i32 %t148, 0
    br i1 %t143, label %L_then_21, label %L_endif_21
L_then_21:
    ; line 881
    call void @P_prterr(i32 9)
    br label %L_endif_21
L_endif_21:
    ; line 882
    call void @P_skpspc()
    ; line 883
    %t151 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t150 = load i8, i8* %t151
    %t149 = icmp ne i32 %t150, %.dummy.intrin
    br i1 %t149, label %L_then_22, label %L_else_22
L_then_22:
    ; line 885
    %t152 = call i1 @F_chknxt(i8 41)
    %t153 = icmp eq i1 0, %t152
    br i1 %t153, label %L_then_23, label %L_endif_23
L_then_23:
    ; line 885
    call void @P_prterr(i32 13)
    br label %L_endif_23
L_endif_23:
    ; line 886
    %t155 = load i32, i32* @top
    %t156 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t155
    %t158 = getelementptr inbounds %T_record_7, %T_record_7* %t156, i32 0, i32 4
    %t157 = bitcast i8* %t158 to i32*
    %t159 = load i32, i32* %t157
    %t161 = load i32, i32* @top
    %t160 = sub i32 %t161, 1
    %t162 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t160
    %t164 = getelementptr inbounds %T_record_7, %T_record_7* %t162, i32 0, i32 8
    %t163 = bitcast i8* %t164 to %T_bstring80*
    %t166 = getelementptr inbounds %T_bstring80, %T_bstring80* %t163, i32 0, i32 0
    %t165 = bitcast i8* %t166 to i32*
    %t167 = load i32, i32* %t165
    %t154 = icmp sgt i32 %t159, %t167
    br i1 %t154, label %L_then_24, label %L_endif_24
L_then_24:
    ; line 886
    call void @P_prterr(i32 23)
    br label %L_endif_24
L_endif_24:
    ; line 887
    %t170 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t169 = load i8, i8* %t170
    %t168 = icmp eq i32 %t169, %.dummy.intrin
    br i1 %t168, label %L_then_25, label %L_endif_25
L_then_25:
    ; line 888
    br label %L_endif_25
L_endif_25:
    ; line 891
    %t172 = load i32, i32* @top
    %t171 = sub i32 %t172, 1
    %t173 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t171
    %t175 = getelementptr inbounds %T_record_7, %T_record_7* %t173, i32 0, i32 8
    %t174 = bitcast i8* %t175 to %T_bstring80*
    %t177 = getelementptr inbounds %T_bstring80, %T_bstring80* %t174, i32 0, i32 0
    %t176 = bitcast i8* %t177 to i32*
    %t178 = load i32, i32* @top
    %t179 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t178
    %t181 = getelementptr inbounds %T_record_7, %T_record_7* %t179, i32 0, i32 4
    %t180 = bitcast i8* %t181 to i32*
    %t182 = load i32, i32* %t180
    store i32 %t182, i32* %t176
    ; line 892
    %t184 = load i32, i32* @top
    %t183 = sub i32 %t184, 1
    store i32 %t183, i32* @top
    br label %L_endif_22
L_else_22:
    ; line 896
    %t185 = call i1 @F_chknxt(i8 44)
    %t186 = icmp eq i1 0, %t185
    br i1 %t186, label %L_then_26, label %L_endif_26
L_then_26:
    ; line 896
    call void @P_prterr(i32 21)
    br label %L_endif_26
L_endif_26:
    ; line 897
    %t187 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t188 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t187
    %t189 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t188, i32 0, i32 0
    %t190 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t189
    %t191 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t190, i32 0, i32 0
    %t192 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t191
    %t193 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t192, i32 0, i32 0
    %t194 = load %Frame_exec_stat*, %Frame_exec_stat** %t193
    call void @P_exec_stat_expr(%Frame_exec_stat* %t194)
    ; line 898
    %t196 = load i32, i32* @top
    %t197 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t196
    %t199 = getelementptr inbounds %T_record_7, %T_record_7* %t197, i32 0, i32 0
    %t198 = bitcast i8* %t199 to i32*
    %t200 = load i32, i32* %t198
    %t195 = icmp ne i32 %t200, 0
    br i1 %t195, label %L_then_27, label %L_endif_27
L_then_27:
    ; line 898
    call void @P_prterr(i32 9)
    br label %L_endif_27
L_endif_27:
    ; line 899
    call void @P_skpspc()
    ; line 900
    %t201 = call i1 @F_chknxt(i8 41)
    %t202 = icmp eq i1 0, %t201
    br i1 %t202, label %L_then_28, label %L_endif_28
L_then_28:
    ; line 900
    call void @P_prterr(i32 13)
    br label %L_endif_28
L_endif_28:
    ; line 902
    %t206 = load i32, i32* @top
    %t207 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t206
    %t209 = getelementptr inbounds %T_record_7, %T_record_7* %t207, i32 0, i32 4
    %t208 = bitcast i8* %t209 to i32*
    %t210 = load i32, i32* %t208
    %t212 = load i32, i32* @top
    %t211 = sub i32 %t212, 1
    %t213 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t211
    %t215 = getelementptr inbounds %T_record_7, %T_record_7* %t213, i32 0, i32 4
    %t214 = bitcast i8* %t215 to i32*
    %t216 = load i32, i32* %t214
    %t205 = add i32 %t210, %t216
    %t204 = sub i32 %t205, 1
    %t218 = load i32, i32* @top
    %t217 = sub i32 %t218, 2
    %t219 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t217
    %t221 = getelementptr inbounds %T_record_7, %T_record_7* %t219, i32 0, i32 8
    %t220 = bitcast i8* %t221 to %T_bstring80*
    %t223 = getelementptr inbounds %T_bstring80, %T_bstring80* %t220, i32 0, i32 0
    %t222 = bitcast i8* %t223 to i32*
    %t224 = load i32, i32* %t222
    %t203 = icmp sgt i32 %t204, %t224
    br i1 %t203, label %L_then_29, label %L_endif_29
L_then_29:
    ; line 903
    call void @P_prterr(i32 23)
    br label %L_endif_29
L_endif_29:
    ; line 904
    ; line 906
    %t226 = load i32, i32* @top
    %t225 = sub i32 %t226, 2
    %t227 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t225
    %t229 = getelementptr inbounds %T_record_7, %T_record_7* %t227, i32 0, i32 8
    %t228 = bitcast i8* %t229 to %T_bstring80*
    %t231 = getelementptr inbounds %T_bstring80, %T_bstring80* %t228, i32 0, i32 0
    %t230 = bitcast i8* %t231 to i32*
    %t232 = load i32, i32* @top
    %t233 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t232
    %t235 = getelementptr inbounds %T_record_7, %T_record_7* %t233, i32 0, i32 4
    %t234 = bitcast i8* %t235 to i32*
    %t236 = load i32, i32* %t234
    store i32 %t236, i32* %t230
    ; line 907
    %t238 = load i32, i32* @top
    %t237 = sub i32 %t238, 2
    store i32 %t237, i32* @top
    br label %L_endif_22
L_endif_22:
    br label %L_endif_17
L_else_17:
    ; line 911
    %t239 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br i1 %t239, label %L_then_30, label %L_else_30
L_then_30:
    ; line 913
    %t240 = call i1 @F_chknxt(i8 40)
    %t241 = icmp eq i1 0, %t240
    br i1 %t241, label %L_then_31, label %L_endif_31
L_then_31:
    ; line 913
    call void @P_prterr(i32 20)
    br label %L_endif_31
L_endif_31:
    ; line 914
    %t242 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t243 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t242
    %t244 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t243, i32 0, i32 0
    %t245 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t244
    %t246 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t245, i32 0, i32 0
    %t247 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t246
    %t248 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t247, i32 0, i32 0
    %t249 = load %Frame_exec_stat*, %Frame_exec_stat** %t248
    call void @P_exec_stat_expr(%Frame_exec_stat* %t249)
    ; line 915
    %t251 = load i32, i32* @top
    %t252 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t251
    %t254 = getelementptr inbounds %T_record_7, %T_record_7* %t252, i32 0, i32 0
    %t253 = bitcast i8* %t254 to i32*
    %t255 = load i32, i32* %t253
    %t250 = icmp ne i32 %t255, 1
    br i1 %t250, label %L_then_32, label %L_endif_32
L_then_32:
    ; line 915
    call void @P_prterr(i32 22)
    br label %L_endif_32
L_endif_32:
    ; line 916
    call void @P_skpspc()
    ; line 917
    %t256 = call i1 @F_chknxt(i8 41)
    %t257 = icmp eq i1 0, %t256
    br i1 %t257, label %L_then_33, label %L_endif_33
L_then_33:
    ; line 917
    call void @P_prterr(i32 13)
    br label %L_endif_33
L_endif_33:
    ; line 918
    %t259 = load i32, i32* @top
    %t260 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t259
    %t262 = getelementptr inbounds %T_record_7, %T_record_7* %t260, i32 0, i32 8
    %t261 = bitcast i8* %t262 to %T_bstring80*
    %t264 = getelementptr inbounds %T_bstring80, %T_bstring80* %t261, i32 0, i32 0
    %t263 = bitcast i8* %t264 to i32*
    %t265 = load i32, i32* %t263
    %t258 = icmp slt i32 %t265, 1
    br i1 %t258, label %L_then_34, label %L_endif_34
L_then_34:
    ; line 918
    call void @P_prterr(i32 23)
    br label %L_endif_34
L_endif_34:
    ; line 919
    %t266 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 0
    %t267 = load i32, i32* @top
    %t268 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t267
    %t270 = getelementptr inbounds %T_record_7, %T_record_7* %t268, i32 0, i32 8
    %t269 = bitcast i8* %t270 to %T_bstring80*
    %t272 = getelementptr inbounds %T_bstring80, %T_bstring80* %t269, i32 0, i32 4
    %t271 = bitcast i8* %t272 to %T_string80*
    %t273 = getelementptr inbounds %T_string80, %T_string80* %t271, i32 0, i32 1
    %t274 = load i8, i8* %t273
    store i8 %t274, i8* %t266
    ; line 920
    %t275 = load i32, i32* @top
    %t276 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t275
    %t278 = getelementptr inbounds %T_record_7, %T_record_7* %t276, i32 0, i32 0
    %t277 = bitcast i8* %t278 to i32*
    store i32 0, i32* %t277
    ; line 921
    %t279 = load i32, i32* @top
    %t280 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t279
    %t282 = getelementptr inbounds %T_record_7, %T_record_7* %t280, i32 0, i32 4
    %t281 = bitcast i8* %t282 to i32*
    store i32 %.dummy.intrin, i32* %t281
    br label %L_endif_30
L_else_30:
    ; line 923
    %t283 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br i1 %t283, label %L_then_35, label %L_else_35
L_then_35:
    ; line 925
    %t284 = call i1 @F_chknxt(i8 40)
    %t285 = icmp eq i1 0, %t284
    br i1 %t285, label %L_then_36, label %L_endif_36
L_then_36:
    ; line 925
    call void @P_prterr(i32 20)
    br label %L_endif_36
L_endif_36:
    ; line 926
    %t286 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t287 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t286
    %t288 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t287, i32 0, i32 0
    %t289 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t288
    %t290 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t289, i32 0, i32 0
    %t291 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t290
    %t292 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t291, i32 0, i32 0
    %t293 = load %Frame_exec_stat*, %Frame_exec_stat** %t292
    call void @P_exec_stat_expr(%Frame_exec_stat* %t293)
    ; line 927
    %t295 = load i32, i32* @top
    %t296 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t295
    %t298 = getelementptr inbounds %T_record_7, %T_record_7* %t296, i32 0, i32 0
    %t297 = bitcast i8* %t298 to i32*
    %t299 = load i32, i32* %t297
    %t294 = icmp ne i32 %t299, 1
    br i1 %t294, label %L_then_37, label %L_endif_37
L_then_37:
    ; line 927
    call void @P_prterr(i32 22)
    br label %L_endif_37
L_endif_37:
    ; line 928
    call void @P_skpspc()
    ; line 929
    %t300 = call i1 @F_chknxt(i8 41)
    %t301 = icmp eq i1 0, %t300
    br i1 %t301, label %L_then_38, label %L_endif_38
L_then_38:
    ; line 929
    call void @P_prterr(i32 13)
    br label %L_endif_38
L_endif_38:
    ; line 930
    %t302 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 1
    %t303 = load i32, i32* @top
    %t304 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t303
    %t306 = getelementptr inbounds %T_record_7, %T_record_7* %t304, i32 0, i32 8
    %t305 = bitcast i8* %t306 to %T_bstring80*
    %t307 = call i32 @F_getbval(%T_bstring80* %t305)
    store i32 %t307, i32* %t302
    ; line 931
    %t308 = load i32, i32* @top
    %t309 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t308
    %t311 = getelementptr inbounds %T_record_7, %T_record_7* %t309, i32 0, i32 0
    %t310 = bitcast i8* %t311 to i32*
    store i32 0, i32* %t310
    ; line 932
    %t312 = load i32, i32* @top
    %t313 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t312
    %t315 = getelementptr inbounds %T_record_7, %T_record_7* %t313, i32 0, i32 4
    %t314 = bitcast i8* %t315 to i32*
    %t317 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 1
    %t316 = load i32, i32* %t317
    store i32 %t316, i32* %t314
    br label %L_endif_35
L_else_35:
    ; line 934
    %t318 = call i1 @F_chknxt(i8 %.dummy.intrin)
    br i1 %t318, label %L_then_39, label %L_else_39
L_then_39:
    ; line 936
    %t319 = call i1 @F_chknxt(i8 40)
    %t320 = icmp eq i1 0, %t319
    br i1 %t320, label %L_then_40, label %L_endif_40
L_then_40:
    ; line 936
    call void @P_prterr(i32 20)
    br label %L_endif_40
L_endif_40:
    ; line 937
    %t321 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 2
    %t322 = load %Frame_exec_stat_expr_sexpr_term*, %Frame_exec_stat_expr_sexpr_term** %t321
    %t323 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term, %Frame_exec_stat_expr_sexpr_term* %t322, i32 0, i32 0
    %t324 = load %Frame_exec_stat_expr_sexpr*, %Frame_exec_stat_expr_sexpr** %t323
    %t325 = getelementptr inbounds %Frame_exec_stat_expr_sexpr, %Frame_exec_stat_expr_sexpr* %t324, i32 0, i32 0
    %t326 = load %Frame_exec_stat_expr*, %Frame_exec_stat_expr** %t325
    %t327 = getelementptr inbounds %Frame_exec_stat_expr, %Frame_exec_stat_expr* %t326, i32 0, i32 0
    %t328 = load %Frame_exec_stat*, %Frame_exec_stat** %t327
    call void @P_exec_stat_expr(%Frame_exec_stat* %t328)
    ; line 938
    %t330 = load i32, i32* @top
    %t331 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t330
    %t333 = getelementptr inbounds %T_record_7, %T_record_7* %t331, i32 0, i32 0
    %t332 = bitcast i8* %t333 to i32*
    %t334 = load i32, i32* %t332
    %t329 = icmp ne i32 %t334, 0
    br i1 %t329, label %L_then_41, label %L_endif_41
L_then_41:
    ; line 938
    call void @P_prterr(i32 9)
    br label %L_endif_41
L_endif_41:
    ; line 939
    call void @P_skpspc()
    ; line 940
    %t335 = call i1 @F_chknxt(i8 41)
    %t336 = icmp eq i1 0, %t335
    br i1 %t336, label %L_then_42, label %L_endif_42
L_then_42:
    ; line 940
    call void @P_prterr(i32 13)
    br label %L_endif_42
L_endif_42:
    ; line 941
    %t337 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 1
    %t338 = load i32, i32* @top
    %t339 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t338
    %t341 = getelementptr inbounds %T_record_7, %T_record_7* %t339, i32 0, i32 4
    %t340 = bitcast i8* %t341 to i32*
    %t342 = load i32, i32* %t340
    store i32 %t342, i32* %t337
    ; line 942
    %t343 = load i32, i32* @top
    %t344 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t343
    %t346 = getelementptr inbounds %T_record_7, %T_record_7* %t344, i32 0, i32 0
    %t345 = bitcast i8* %t346 to i32*
    store i32 1, i32* %t345
    ; line 943
    %t347 = load i32, i32* @top
    %t348 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t347
    %t350 = getelementptr inbounds %T_record_7, %T_record_7* %t348, i32 0, i32 8
    %t349 = bitcast i8* %t350 to %T_bstring80*
    %t352 = getelementptr inbounds %Frame_exec_stat_expr_sexpr_term_factor, %Frame_exec_stat_expr_sexpr_term_factor* %.frame, i32 0, i32 1
    %t351 = load i32, i32* %t352
    call void @P_putbval(%T_bstring80* %t349, i32 %t351)
    br label %L_endif_39
L_else_39:
    ; line 945
    call void @P_prterr(i32 16)
    br label %L_endif_39
L_endif_39:
    br label %L_endif_35
L_endif_35:
    br label %L_endif_30
L_endif_30:
    br label %L_endif_17
L_endif_17:
    br label %L_endif_12
L_endif_12:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:

    ; epilogue
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
define void @P_exec_stat_let(%Frame_exec_stat* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_exec_stat_let, align 8
    %t1 = getelementptr inbounds %Frame_exec_stat_let, %Frame_exec_stat_let* %.frame, i32 0, i32 0
    store %Frame_exec_stat* %.slink, %Frame_exec_stat** %t1

    ; body
    ; line 1109
    call void @P_skpspc()
    ; line 1110
    %t3 = getelementptr inbounds %Frame_exec_stat_let, %Frame_exec_stat_let* %.frame, i32 0, i32 0
    %t4 = load %Frame_exec_stat*, %Frame_exec_stat** %t3
    %t2 = getelementptr inbounds %Frame_exec_stat, %Frame_exec_stat* %t4, i32 0, i32 1
    %t5 = call i8 @F_getvar()
    store i8 %t5, i8* %t2
    ; line 1111
    %t6 = call i1 @F_chknxt(i8 36)
    br i1 %t6, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1113
    call void @P_skpspc()
    ; line 1114
    %t7 = call i1 @F_chknxt(i8 %.dummy.intrin)
    %t8 = icmp eq i1 0, %t7
    br i1 %t8, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1115
    call void @P_prterr(i32 3)
    br label %L_endif_2
L_endif_2:
    ; line 1116
    %t9 = getelementptr inbounds %Frame_exec_stat_let, %Frame_exec_stat_let* %.frame, i32 0, i32 0
    %t10 = load %Frame_exec_stat*, %Frame_exec_stat** %t9
    call void @P_exec_stat_expr(%Frame_exec_stat* %t10)
    ; line 1117
    %t12 = load i32, i32* @top
    %t13 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t12
    %t15 = getelementptr inbounds %T_record_7, %T_record_7* %t13, i32 0, i32 0
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    %t11 = icmp ne i32 %t16, 1
    br i1 %t11, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1118
    call void @P_prterr(i32 4)
    br label %L_endif_3
L_endif_3:
    ; line 1119
    %t19 = getelementptr inbounds %Frame_exec_stat_let, %Frame_exec_stat_let* %.frame, i32 0, i32 0
    %t20 = load %Frame_exec_stat*, %Frame_exec_stat** %t19
    %t18 = getelementptr inbounds %Frame_exec_stat, %Frame_exec_stat* %t20, i32 0, i32 1
    %t17 = load i8, i8* %t18
    %t21 = getelementptr inbounds %T_array_5, %T_array_5* @strs, i32 0, i32 %t17
    %t22 = load i32, i32* @top
    %t23 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t22
    %t25 = getelementptr inbounds %T_record_7, %T_record_7* %t23, i32 0, i32 8
    %t24 = bitcast i8* %t25 to %T_bstring80*
    %t26 = load %T_bstring80, %T_bstring80* %t24
    store %T_bstring80 %t26, %T_bstring80* %t21
    ; line 1120
    %t28 = load i32, i32* @top
    %t27 = sub i32 %t28, 1
    store i32 %t27, i32* @top
    br label %L_endif_1
L_else_1:
    ; line 1124
    call void @P_skpspc()
    ; line 1125
    %t29 = call i1 @F_chknxt(i8 %.dummy.intrin)
    %t30 = icmp eq i1 0, %t29
    br i1 %t30, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1126
    call void @P_prterr(i32 3)
    br label %L_endif_4
L_endif_4:
    ; line 1127
    %t31 = getelementptr inbounds %Frame_exec_stat_let, %Frame_exec_stat_let* %.frame, i32 0, i32 0
    %t32 = load %Frame_exec_stat*, %Frame_exec_stat** %t31
    call void @P_exec_stat_expr(%Frame_exec_stat* %t32)
    ; line 1128
    %t34 = load i32, i32* @top
    %t35 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t34
    %t37 = getelementptr inbounds %T_record_7, %T_record_7* %t35, i32 0, i32 0
    %t36 = bitcast i8* %t37 to i32*
    %t38 = load i32, i32* %t36
    %t33 = icmp ne i32 %t38, 0
    br i1 %t33, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 1129
    call void @P_prterr(i32 4)
    br label %L_endif_5
L_endif_5:
    ; line 1130
    %t41 = getelementptr inbounds %Frame_exec_stat_let, %Frame_exec_stat_let* %.frame, i32 0, i32 0
    %t42 = load %Frame_exec_stat*, %Frame_exec_stat** %t41
    %t40 = getelementptr inbounds %Frame_exec_stat, %Frame_exec_stat* %t42, i32 0, i32 1
    %t39 = load i8, i8* %t40
    %t43 = getelementptr inbounds %T_array_2, %T_array_2* @ints, i32 0, i32 %t39
    %t44 = load i32, i32* @top
    %t45 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t44
    %t47 = getelementptr inbounds %T_record_7, %T_record_7* %t45, i32 0, i32 4
    %t46 = bitcast i8* %t47 to i32*
    %t48 = load i32, i32* %t46
    store i32 %t48, i32* %t43
    ; line 1131
    %t50 = load i32, i32* @top
    %t49 = sub i32 %t50, 1
    store i32 %t49, i32* @top
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.22 = private unnamed_addr constant [11 x i8] c"*         \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"*** \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"+         \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"-         \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"/         \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"<         \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"<=        \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"<>        \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"=         \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c">         \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c">=        \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Bye...\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"Tiny basic interpreter vs. 0.1 Copyright (C) 1994 S. A. Moore\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"bye       \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"chr       \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"goto      \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"if        \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"input     \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"left$     \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"let       \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"list      \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"mid$      \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"mod       \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"new       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"print     \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"rem       \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"right$    \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"run       \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"stop      \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"str$      \00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"then      \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"val       \00", align 1


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

