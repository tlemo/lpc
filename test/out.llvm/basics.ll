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
    ; line 170
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 4)
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
    ; line 213
    %t1 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 0
    %t3 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 1
    %t2 = load i8, i8* %t3
    store i8 %t2, i8* %t1

    ; epilogue
    %t4 = getelementptr inbounds %Frame_chkchr, %Frame_chkchr* %.frame, i32 0, i32 0
    %t5 = load i8, i8* %t4
    ret i8 %t5
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

    ; epilogue
    %t3 = getelementptr inbounds %Frame_getchr, %Frame_getchr* %.frame, i32 0, i32 0
    %t4 = load i8, i8* %t3
    ret i8 %t4
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

    ; epilogue
    %t7 = getelementptr inbounds %Frame_chknxt, %Frame_chknxt* %.frame, i32 0, i32 1
    %t8 = load i1, i1* %t7
    ret i1 %t8
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
L_expr_1:
    %t3 = call i1 @F_chkend()
    br i1 %t3, label %L_OR_shortcut_3, label %L_OR_eval_2
L_OR_eval_2:
    %t5 = call i8 @F_chkchr()
    %t4 = icmp eq i32 %t5, 58
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t2 = phi [%t4, %L_OR_eval_2], [true, %L_expr_1]
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
L_expr_1:
    %t4 = icmp sge i32 , 
    br i1 %t4, label %L_AND_eval_2, label %L_AND_shortcut_3
L_AND_eval_2:
    %t5 = icmp sle i32 , 
    br label %L_AND_shortcut_3
L_AND_shortcut_3:
    %t3 = phi [%t5, %L_AND_eval_2], [false, %L_expr_1]
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
    ; line 305
    %t2 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 0
    %t3 = load i8, i8* %t4
    store i8 %t3, i8* %t2

    ; epilogue
    %t5 = getelementptr inbounds %Frame_lcase, %Frame_lcase* %.frame, i32 0, i32 1
    %t6 = load i8, i8* %t5
    ret i8 %t6
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
L_expr_1:
    %t4 = icmp sge i32 , 
    br i1 %t4, label %L_AND_eval_2, label %L_AND_shortcut_3
L_AND_eval_2:
    %t5 = icmp sle i32 , 
    br label %L_AND_shortcut_3
L_AND_shortcut_3:
    %t3 = phi [%t5, %L_AND_eval_2], [false, %L_expr_1]
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
    ; line 362
    %t3 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3

    ; epilogue
    %t6 = getelementptr inbounds %Frame_schlab, %Frame_schlab* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t6
    ret i32 %t7
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
    ; line 394
    %t1 = getelementptr inbounds %Frame_getvar, %Frame_getvar* %.frame, i32 0, i32 0
    %t2 = call i8 @F_getchr()
    %t3 = call i8 @F_lcase(i8 %t2)
    store i8 %t3, i8* %t1

    ; epilogue
    %t4 = getelementptr inbounds %Frame_getvar, %Frame_getvar* %.frame, i32 0, i32 0
    %t5 = load i8, i8* %t4
    ret i8 %t5
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
    ; line 409
    %t6 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    store i32 1, i32* %t6
    ; line 410
    %t7 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 1
    store i1 0, i1* %t7
    ; line 411
    ; line 422
    ; line 423

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
    ; line 482
    %t10 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 3
    %t12 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 4
    %t11 = load i1, i1* %t12
    store i1 %t11, i1* %t10

    ; epilogue
    %t13 = getelementptr inbounds %Frame_keycom_matstr, %Frame_keycom_matstr* %.frame, i32 0, i32 3
    %t14 = load i1, i1* %t13
    ret i1 %t14
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
    ; line 549
    ; line 551
    %t2 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t4
    store i32 %t3, i32* %t2

    ; epilogue
    %t5 = getelementptr inbounds %Frame_getint, %Frame_getint* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t5
    ret i32 %t6
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
    ; line 566
    %t3 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 0
    %t5 = load %T_string80*, %T_string80** %t4
    %t6 = call i32 @F_lint(%T_string80* %t5)
    store i32 %t6, i32* %t3
    ; line 567
    ; line 568
    ; line 569

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getval, %Frame_getval* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
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
    ; line 584
    %t3 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 3
    store i32 0, i32* %t3
    ; line 585
    ; line 591
    ; line 592
    ; line 593
    %t4 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 3
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_getbval, %Frame_getbval* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
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
    ; line 616
    ; line 629
    %t9 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 0
    %t10 = load %T_bstring80*, %T_bstring80** %t9
    %t12 = getelementptr inbounds %T_bstring80, %T_bstring80* %t10, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i32*
    %t15 = getelementptr inbounds %Frame_putbval, %Frame_putbval* %.frame, i32 0, i32 2
    %t14 = load i32, i32* %t15
    %t13 = sub i32 %t14, 1
    store i32 %t13, i32* %t11

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
    ; line 662
    ; line 663
    %t3 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 0
    %t4 = load %T_bstring80*, %T_bstring80** %t3
    %t6 = getelementptr inbounds %T_bstring80, %T_bstring80* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t8 = getelementptr inbounds %Frame_inpbstr, %Frame_inpbstr* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t8
    store i32 %t7, i32* %t5

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
    ; line 677
    ; line 678
    %t3 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 0
    %t4 = load %T_bstring80*, %T_bstring80** %t3
    %t6 = getelementptr inbounds %T_bstring80, %T_bstring80* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t8 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 0
    %t9 = load %T_bstring80*, %T_bstring80** %t8
    %t11 = getelementptr inbounds %T_bstring80, %T_bstring80* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    %t13 = getelementptr inbounds %Frame_cat, %Frame_cat* %.frame, i32 0, i32 1
    %t14 = load %T_bstring80*, %T_bstring80** %t13
    %t16 = getelementptr inbounds %T_bstring80, %T_bstring80* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t7 = add i32 %t12, %t17
    store i32 %t7, i32* %t5

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
    ; line 690
    %t1 = getelementptr inbounds %Frame_chkequ, %Frame_chkequ* %.frame, i32 0, i32 0
    %t4 = load i32, i32* @top
    %t3 = sub i32 %t4, 1
    %t5 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t3
    %t7 = getelementptr inbounds %T_record_7, %T_record_7* %t5, i32 0, i32 4
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    %t9 = load i32, i32* @top
    %t10 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_record_7, %T_record_7* %t10, i32 0, i32 4
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t2 = icmp eq i32 %t8, %t13
    store i1 %t2, i1* %t1

    ; epilogue
    %t14 = getelementptr inbounds %Frame_chkequ, %Frame_chkequ* %.frame, i32 0, i32 0
    %t15 = load i1, i1* %t14
    ret i1 %t15
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
    ; line 702
    %t1 = getelementptr inbounds %Frame_chkltn, %Frame_chkltn* %.frame, i32 0, i32 0
    %t4 = load i32, i32* @top
    %t3 = sub i32 %t4, 1
    %t5 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t3
    %t7 = getelementptr inbounds %T_record_7, %T_record_7* %t5, i32 0, i32 4
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    %t9 = load i32, i32* @top
    %t10 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_record_7, %T_record_7* %t10, i32 0, i32 4
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t2 = icmp slt i32 %t8, %t13
    store i1 %t2, i1* %t1

    ; epilogue
    %t14 = getelementptr inbounds %Frame_chkltn, %Frame_chkltn* %.frame, i32 0, i32 0
    %t15 = load i1, i1* %t14
    ret i1 %t15
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
    ; line 714
    %t1 = getelementptr inbounds %Frame_chkgtn, %Frame_chkgtn* %.frame, i32 0, i32 0
    %t4 = load i32, i32* @top
    %t3 = sub i32 %t4, 1
    %t5 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t3
    %t7 = getelementptr inbounds %T_record_7, %T_record_7* %t5, i32 0, i32 4
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    %t9 = load i32, i32* @top
    %t10 = getelementptr inbounds %T_array_6, %T_array_6* @temp, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_record_7, %T_record_7* %t10, i32 0, i32 4
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t2 = icmp sgt i32 %t8, %t13
    store i1 %t2, i1* %t1

    ; epilogue
    %t14 = getelementptr inbounds %Frame_chkgtn, %Frame_chkgtn* %.frame, i32 0, i32 0
    %t15 = load i1, i1* %t14
    ret i1 %t15
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
    ; line 1248
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

