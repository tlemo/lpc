; ModuleID = 'chess05ISO.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\chess05ISO.pas"
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
%T_SX = type [1 x i32]
%T_array_2 = type [2 x %T_SX]
%T_array_3 = type [2 x i32]
%T_RS = type [8 x i8]
%T_arraytmofrs = type [3 x %T_RS]
%T_arraytkofrs = type [17 x %T_RS]
%T_arraytfofrs = type [8 x %T_RS]
%T_arraytkoftw = type [17 x i32]
%T_arraytpofte = type [13 x i32]
%T_arraytqofrs = type [4 x %T_RS]
%T_arraytrofrs = type [8 x %T_RS]
%T_RX = type [64 x %T_RS]
%T_SQ = type [1 x i32]
%T_RC = type [64 x i32]
%T_array_5 = type [8 x i32]
%T_array_4 = type [8 x %T_array_5]
%T_RB = type [288 x i8]
%T_array_6 = type [20 x i32]
%T_array_7 = type [16 x %T_RS]
%T_array_8 = type [8 x i32]
%T_RJ = type [74 x i8]
%T_array_9 = type [18 x i32]
%T_RM = type [60 x i8]
%T_array_10 = type [17 x %T_RM]
%T_array_11 = type [3 x i32]
%T_array_12 = type [17 x i32]
%T_RF = type [500 x %T_RM]
%T_RN = type [30 x i8]
%T_array_13 = type [17 x i32]
%T_array_14 = type [3 x i32]
%T_RA = type [10 x i8]
%T_RD = type [5 x i8]
%T_RE = type [500 x i32]
%T_RY = type [11 x i8]
%T_SC = type [8 x i32]
%T_SF = type [1 x i32]
%T_SR = type [1 x i32]
%T_array_15 = type [17 x i32]
%T_array_16 = type [47 x %T_RY]
%T_array_17 = type [13 x %T_RS]
%T_array_18 = type [239 x i32]
%T_array_19 = type [4 x %T_RM]
%T_array_20 = type [13 x i1]
%T_array_21 = type [64 x %T_SX]
%T_array_22 = type [2 x i8]
%T_array_23 = type [16 x i32]
%T_array_24 = type [4 x i8]
%T_array_26 = type [3 x i32]
%T_array_25 = type [4 x %T_array_26]
%T_array_27 = type [120 x i32]
%T_array_28 = type [3 x %T_RA]
%T_array_29 = type [3 x i32]
%T_array_30 = type [3 x i32]
%T_array_31 = type [13 x i8]
%T_array_32 = type [13 x i32]
%T_array_33 = type [13 x i32]
%T_array_34 = type [13 x i32]
%T_array_35 = type [4 x %T_RA]
%T_array_36 = type [4 x i32]
%T_array_38 = type [8 x i32]
%T_array_37 = type [8 x %T_array_38]
%T_array_39 = type [64 x i32]
%T_array_40 = type [64 x i32]
%T_array_41 = type [64 x i32]
%T_array_42 = type [64 x i32]
%T_array_43 = type [64 x i32]
%T_array_44 = type [6 x i8]
%T_array_46 = type [3 x i32]
%T_array_45 = type [6 x %T_array_46]

; program variables
@ALATK = dso_local global %T_arraytmofrs zeroinitializer
@ALLOC = dso_local global %T_arraytkofrs zeroinitializer
@ATKFR = dso_local global %T_RX zeroinitializer
@ATKTO = dso_local global %T_RX zeroinitializer
@BOARD = dso_local global %T_RB zeroinitializer
@BSTMV = dso_local global %T_arraytkoftw zeroinitializer
@BSTVL = dso_local global %T_array_6 zeroinitializer
@CORNR = dso_local global %T_RS zeroinitializer
@CSTAT = dso_local global %T_arraytkofrs zeroinitializer
@EDGE = dso_local global %T_array_7 zeroinitializer
@ENPAS = dso_local global %T_arraytkofrs zeroinitializer
@FKPSHD = dso_local global i32 zeroinitializer
@FKSANQ = dso_local global i32 zeroinitializer
@FMAXMT = dso_local global i32 zeroinitializer
@FNODEL = dso_local global i32 zeroinitializer
@FPADCR = dso_local global %T_array_8 zeroinitializer
@FPBLOK = dso_local global i32 zeroinitializer
@FPCONN = dso_local global i32 zeroinitializer
@FPFLNX = dso_local global i32 zeroinitializer
@FRDUBL = dso_local global i32 zeroinitializer
@FRK7TH = dso_local global i32 zeroinitializer
@FTRADE = dso_local global i32 zeroinitializer
@FTRDSL = dso_local global i32 zeroinitializer
@FTRPDK = dso_local global i32 zeroinitializer
@FTRPWN = dso_local global i32 zeroinitializer
@FWKING = dso_local global i32 zeroinitializer
@FWMAJM = dso_local global i32 zeroinitializer
@FWMINM = dso_local global i32 zeroinitializer
@FWPAWN = dso_local global i32 zeroinitializer
@FWROOK = dso_local global i32 zeroinitializer
@GENFR = dso_local global %T_arraytkofrs zeroinitializer
@GENPN = dso_local global %T_arraytkofrs zeroinitializer
@GENTO = dso_local global %T_arraytkofrs zeroinitializer
@GOING = dso_local global i32 zeroinitializer
@ICARD = dso_local global %T_RJ zeroinitializer
@ILINE = dso_local global %T_RJ zeroinitializer
@INDEX = dso_local global %T_array_9 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@JMTJ = dso_local global i32 zeroinitializer
@JMTK = dso_local global i32 zeroinitializer
@JNTJ = dso_local global i32 zeroinitializer
@JNTK = dso_local global i32 zeroinitializer
@JNTM = dso_local global i32 zeroinitializer
@JNTW = dso_local global i32 zeroinitializer
@jumpin = dso_local global i1 zeroinitializer
@KILLR = dso_local global %T_array_10 zeroinitializer
@LINDX = dso_local global %T_arraytkoftw zeroinitializer
@LSTMV = dso_local global %T_RM zeroinitializer
@MAXPS = dso_local global i32 zeroinitializer
@MBLTE = dso_local global i32 zeroinitializer
@MBORD = dso_local global %T_RC zeroinitializer
@MBPWN = dso_local global %T_array_11 zeroinitializer
@MBTOT = dso_local global i32 zeroinitializer
@MBVAL = dso_local global %T_array_12 zeroinitializer
@MOVES = dso_local global %T_RF zeroinitializer
@MOVMS = dso_local global %T_RN zeroinitializer
@MVSEL = dso_local global %T_array_13 zeroinitializer
@NODES = dso_local global i32 zeroinitializer
@NULMV = dso_local global %T_RM zeroinitializer
@OTHER = dso_local global %T_array_14 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@SRCHM = dso_local global %T_array_15 zeroinitializer
@SWEC = dso_local global i1 zeroinitializer
@SWPA = dso_local global i1 zeroinitializer
@SWPS = dso_local global i1 zeroinitializer
@SWRE = dso_local global i1 zeroinitializer
@SWSU = dso_local global i1 zeroinitializer
@SWTR = dso_local global i1 zeroinitializer
@SYNTX = dso_local global %T_array_16 zeroinitializer
@TMLOC = dso_local global %T_arraytmofrs zeroinitializer
@TPLOC = dso_local global %T_array_17 zeroinitializer
@VALUE = dso_local global %T_RE zeroinitializer
@WINDOW = dso_local global i32 zeroinitializer
@XFPE = dso_local global %T_arraytpofte zeroinitializer
@XLLD = dso_local global %T_array_18 zeroinitializer
@XLPE = dso_local global %T_arraytpofte zeroinitializer
@XNFS = dso_local global %T_arraytfofrs zeroinitializer
@XNRS = dso_local global %T_arraytrofrs zeroinitializer
@XRFS = dso_local global %T_arraytfofrs zeroinitializer
@XRQM = dso_local global %T_array_19 zeroinitializer
@XRQSA = dso_local global %T_arraytqofrs zeroinitializer
@XRQSO = dso_local global %T_arraytqofrs zeroinitializer
@XRRS = dso_local global %T_arraytrofrs zeroinitializer
@XRSS = dso_local global %T_RX zeroinitializer
@XSPB = dso_local global %T_array_20 zeroinitializer
@XSQS = dso_local global %T_arraytqofrs zeroinitializer
@XSSX = dso_local global %T_array_21 zeroinitializer
@XTBC = dso_local global %T_array_22 zeroinitializer
@XTED = dso_local global %T_array_23 zeroinitializer
@XTGC = dso_local global %T_array_24 zeroinitializer
@XTGMP = dso_local global %T_array_25 zeroinitializer
@XTLS = dso_local global %T_array_27 zeroinitializer
@XTMA = dso_local global %T_array_28 zeroinitializer
@XTMQ = dso_local global %T_array_29 zeroinitializer
@XTMV = dso_local global %T_array_30 zeroinitializer
@XTPC = dso_local global %T_array_31 zeroinitializer
@XTPM = dso_local global %T_array_32 zeroinitializer
@XTPU = dso_local global %T_array_33 zeroinitializer
@XTPV = dso_local global %T_array_34 zeroinitializer
@XTQA = dso_local global %T_array_35 zeroinitializer
@XTQS = dso_local global %T_array_36 zeroinitializer
@XTRFS = dso_local global %T_array_37 zeroinitializer
@XTSF = dso_local global %T_array_39 zeroinitializer
@XTSL = dso_local global %T_array_40 zeroinitializer
@XTSR = dso_local global %T_array_41 zeroinitializer
@XTSX = dso_local global %T_array_42 zeroinitializer
@XTSY = dso_local global %T_array_43 zeroinitializer
@XTUC = dso_local global %T_array_44 zeroinitializer
@XTUMP = dso_local global %T_array_45 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output

    ; body
    store i1 0, i1* @jumpin
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t3)
    call void @P_INICON()
    call void @P_INITAL(%T_RB* @BOARD)
    ; nop

    ; cleanup
    %t4 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t4)
    %t5 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t5)

    ; epilogue
    ret void
}


; line 290
;================================================================================
; scope: MAX (level : 2)

; activation record
%Frame_MAX = type
{
    ; parameters
    i32,    ; 0: A
    i32,    ; 1: B

    ; variables
    i32,    ; 2: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_MAX(i32 %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_MAX, align 8
    %t1 = getelementptr inbounds %Frame_MAX, %Frame_MAX* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_MAX, %Frame_MAX* %.frame, i32 0, i32 1
    store i32 %B, i32* %t2

    ; body
    ; nop

    ; epilogue
    %t3 = getelementptr inbounds %Frame_MAX, %Frame_MAX* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


; line 300
;================================================================================
; scope: MIN (level : 2)

; activation record
%Frame_MIN = type
{
    ; parameters
    i32,    ; 0: A
    i32,    ; 1: B

    ; variables
    i32,    ; 2: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_MIN(i32 %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_MIN, align 8
    %t1 = getelementptr inbounds %Frame_MIN, %Frame_MIN* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_MIN, %Frame_MIN* %.frame, i32 0, i32 1
    store i32 %B, i32* %t2

    ; body
    ; nop

    ; epilogue
    %t3 = getelementptr inbounds %Frame_MIN, %Frame_MIN* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


; line 310
;================================================================================
; scope: SIGN (level : 2)

; activation record
%Frame_SIGN = type
{
    ; parameters
    i32,    ; 0: A
    i32,    ; 1: B

    ; variables
    i32,    ; 2: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_SIGN(i32 %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_SIGN, align 8
    %t1 = getelementptr inbounds %Frame_SIGN, %Frame_SIGN* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_SIGN, %Frame_SIGN* %.frame, i32 0, i32 1
    store i32 %B, i32* %t2

    ; body

    ; epilogue
    %t3 = getelementptr inbounds %Frame_SIGN, %Frame_SIGN* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


; line 320
;================================================================================
; scope: SORTIT (level : 2)

; activation record
%Frame_SORTIT = type
{
    ; parameters
    %T_RE*,    ; 0: A
    %T_RF*,    ; 1: B
    i32,    ; 2: C

    ; variables
    %T_RM,    ; 3: INRM
    i1,    ; 4: INTB
    i32,    ; 5: INTI
    i32,    ; 6: INTV
    i32,    ; 7: INTW

    ; dummy
    i8*
};

; procedure body
define void @P_SORTIT(%T_RE* %A, %T_RF* %B, i32 %C)
{
    ; allocate frame
    %.frame = alloca %Frame_SORTIT, align 8
    %t1 = getelementptr inbounds %Frame_SORTIT, %Frame_SORTIT* %.frame, i32 0, i32 0
    store %T_RE* %A, %T_RE** %t1
    %t2 = getelementptr inbounds %Frame_SORTIT, %Frame_SORTIT* %.frame, i32 0, i32 1
    store %T_RF* %B, %T_RF** %t2
    %t3 = getelementptr inbounds %Frame_SORTIT, %Frame_SORTIT* %.frame, i32 0, i32 2
    store i32 %C, i32* %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 354
;================================================================================
; scope: ANDRS (level : 2)

; activation record
%Frame_ANDRS = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS,    ; 1: B
    %T_RS*,    ; 2: C

    ; variables
    i32,    ; 3: INTY

    ; dummy
    i8*
};

; procedure body
define void @P_ANDRS(%T_RS* %C, %T_RS %A, %T_RS %B)
{
    ; allocate frame
    %.frame = alloca %Frame_ANDRS, align 8
    %t1 = getelementptr inbounds %Frame_ANDRS, %Frame_ANDRS* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1
    %t2 = getelementptr inbounds %Frame_ANDRS, %Frame_ANDRS* %.frame, i32 0, i32 1
    store %T_RS %B, %T_RS* %t2
    %t3 = getelementptr inbounds %Frame_ANDRS, %Frame_ANDRS* %.frame, i32 0, i32 2
    store %T_RS* %C, %T_RS** %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 368
;================================================================================
; scope: CLRRS (level : 2)

; activation record
%Frame_CLRRS = type
{
    ; parameters
    i32,    ; 0: A
    %T_RS*,    ; 1: C

    ; dummy
    i8*
};

; procedure body
define void @P_CLRRS(%T_RS* %C, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_CLRRS, align 8
    %t1 = getelementptr inbounds %Frame_CLRRS, %Frame_CLRRS* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_CLRRS, %Frame_CLRRS* %.frame, i32 0, i32 1
    store %T_RS* %C, %T_RS** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_CLRRS, %Frame_CLRRS* %.frame, i32 0, i32 1
    %t4 = load %T_RS*, %T_RS** %t3
    %t6 = getelementptr inbounds %T_RS, %T_RS* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to %T_array_2*
    %t8 = getelementptr inbounds %Frame_CLRRS, %Frame_CLRRS* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_array_43, %T_array_43* @XTSY, i32 0, i32 %t7
    %t10 = load i32, i32* %t9
    %t11 = getelementptr inbounds %T_array_2, %T_array_2* %t5, i32 0, i32 %t10
    store %T_SX true, %T_SX* %t11
    ; nop

    ; epilogue
    ret void
}


; line 377
;================================================================================
; scope: CPYRS (level : 2)

; activation record
%Frame_CPYRS = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS*,    ; 1: C

    ; variables
    i32,    ; 2: INTY

    ; dummy
    i8*
};

; procedure body
define void @P_CPYRS(%T_RS* %C, %T_RS %A)
{
    ; allocate frame
    %.frame = alloca %Frame_CPYRS, align 8
    %t1 = getelementptr inbounds %Frame_CPYRS, %Frame_CPYRS* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1
    %t2 = getelementptr inbounds %Frame_CPYRS, %Frame_CPYRS* %.frame, i32 0, i32 1
    store %T_RS* %C, %T_RS** %t2

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 390
;================================================================================
; scope: IORRS (level : 2)

; activation record
%Frame_IORRS = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS,    ; 1: B
    %T_RS*,    ; 2: C

    ; variables
    i32,    ; 3: INTY

    ; dummy
    i8*
};

; procedure body
define void @P_IORRS(%T_RS* %C, %T_RS %A, %T_RS %B)
{
    ; allocate frame
    %.frame = alloca %Frame_IORRS, align 8
    %t1 = getelementptr inbounds %Frame_IORRS, %Frame_IORRS* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1
    %t2 = getelementptr inbounds %Frame_IORRS, %Frame_IORRS* %.frame, i32 0, i32 1
    store %T_RS %B, %T_RS* %t2
    %t3 = getelementptr inbounds %Frame_IORRS, %Frame_IORRS* %.frame, i32 0, i32 2
    store %T_RS* %C, %T_RS** %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 403
;================================================================================
; scope: NEWRS (level : 2)

; activation record
%Frame_NEWRS = type
{
    ; parameters
    %T_RS*,    ; 0: A

    ; variables
    i32,    ; 1: INTY

    ; dummy
    i8*
};

; procedure body
define void @P_NEWRS(%T_RS* %A)
{
    ; allocate frame
    %.frame = alloca %Frame_NEWRS, align 8
    %t1 = getelementptr inbounds %Frame_NEWRS, %Frame_NEWRS* %.frame, i32 0, i32 0
    store %T_RS* %A, %T_RS** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 415
;================================================================================
; scope: NOTRS (level : 2)

; activation record
%Frame_NOTRS = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS*,    ; 1: C

    ; variables
    i32,    ; 2: INTY

    ; dummy
    i8*
};

; procedure body
define void @P_NOTRS(%T_RS* %C, %T_RS %A)
{
    ; allocate frame
    %.frame = alloca %Frame_NOTRS, align 8
    %t1 = getelementptr inbounds %Frame_NOTRS, %Frame_NOTRS* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1
    %t2 = getelementptr inbounds %Frame_NOTRS, %Frame_NOTRS* %.frame, i32 0, i32 1
    store %T_RS* %C, %T_RS** %t2

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 427
;================================================================================
; scope: NXTTS (level : 2)

; activation record
%Frame_NXTTS = type
{
    ; parameters
    %T_RS*,    ; 0: A
    i32*,    ; 1: B

    ; variables
    i1,    ; 2: _fnvalue
    i32,    ; 3: INTX
    i32,    ; 4: INTY

    ; dummy
    i8*
};

; function body
define i1 @F_NXTTS(%T_RS* %A, i32* %B)
{
    ; allocate frame
    %.frame = alloca %Frame_NXTTS, align 8
    %t1 = getelementptr inbounds %Frame_NXTTS, %Frame_NXTTS* %.frame, i32 0, i32 0
    store %T_RS* %A, %T_RS** %t1
    %t2 = getelementptr inbounds %Frame_NXTTS, %Frame_NXTTS* %.frame, i32 0, i32 1
    store i32* %B, i32** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_NXTTS, %Frame_NXTTS* %.frame, i32 0, i32 2
    store i1 0, i1* %t3
    ; nop

    ; epilogue
    %t4 = getelementptr inbounds %Frame_NXTTS, %Frame_NXTTS* %.frame, i32 0, i32 2
    %t5 = load i1, i1* %t4
    ret i1 %t5
}


; line 477
;================================================================================
; scope: CNTRS (level : 2)

; activation record
%Frame_CNTRS = type
{
    ; parameters
    %T_RS,    ; 0: A

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: IMTS
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTS

    ; dummy
    i8*
};

; function body
define i32 @F_CNTRS(%T_RS %A)
{
    ; allocate frame
    %.frame = alloca %Frame_CNTRS, align 8
    %t1 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 3
    %t5 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 0
    %t4 = load %T_RS, %T_RS* %t5
    call void @P_CPYRS(%T_RS* %t3, %T_RS %t4)
    %t6 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 4
    %t7 = load i32, i32* %t8
    store i32 %t7, i32* %t6
    ; nop

    ; epilogue
    %t9 = getelementptr inbounds %Frame_CNTRS, %Frame_CNTRS* %.frame, i32 0, i32 1
    %t10 = load i32, i32* %t9
    ret i32 %t10
}


; line 502
;================================================================================
; scope: SETRS (level : 2)

; activation record
%Frame_SETRS = type
{
    ; parameters
    i32,    ; 0: A
    %T_RS*,    ; 1: C

    ; dummy
    i8*
};

; procedure body
define void @P_SETRS(%T_RS* %C, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_SETRS, align 8
    %t1 = getelementptr inbounds %Frame_SETRS, %Frame_SETRS* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_SETRS, %Frame_SETRS* %.frame, i32 0, i32 1
    store %T_RS* %C, %T_RS** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_SETRS, %Frame_SETRS* %.frame, i32 0, i32 1
    %t4 = load %T_RS*, %T_RS** %t3
    %t6 = getelementptr inbounds %T_RS, %T_RS* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to %T_array_2*
    %t8 = getelementptr inbounds %Frame_SETRS, %Frame_SETRS* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_array_43, %T_array_43* @XTSY, i32 0, i32 %t7
    %t10 = load i32, i32* %t9
    %t11 = getelementptr inbounds %T_array_2, %T_array_2* %t5, i32 0, i32 %t10
    store %T_SX true, %T_SX* %t11
    ; nop

    ; epilogue
    ret void
}


; line 511
;================================================================================
; scope: SFTRS (level : 2)

; activation record
%Frame_SFTRS = type
{
    ; parameters
    %T_RS*,    ; 0: A
    %T_RS,    ; 1: B
    i32,    ; 2: C

    ; variables
    i32,    ; 3: INTS

    ; dummy
    i8*
};

; procedure body
define void @P_SFTRS(%T_RS* %A, %T_RS %B, i32 %C)
{
    ; allocate frame
    %.frame = alloca %Frame_SFTRS, align 8
    %t1 = getelementptr inbounds %Frame_SFTRS, %Frame_SFTRS* %.frame, i32 0, i32 0
    store %T_RS* %A, %T_RS** %t1
    %t2 = getelementptr inbounds %Frame_SFTRS, %Frame_SFTRS* %.frame, i32 0, i32 1
    store %T_RS %B, %T_RS* %t2
    %t3 = getelementptr inbounds %Frame_SFTRS, %Frame_SFTRS* %.frame, i32 0, i32 2
    store i32 %C, i32* %t3

    ; body
    %t4 = getelementptr inbounds %Frame_SFTRS, %Frame_SFTRS* %.frame, i32 0, i32 0
    %t5 = load %T_RS*, %T_RS** %t4
    call void @P_NEWRS(%T_RS* %t5)
    ; nop

    ; epilogue
    ret void
}


; line 619
;================================================================================
; scope: INRSTB (level : 2)

; activation record
%Frame_INRSTB = type
{
    ; parameters
    %T_RS,    ; 0: A
    i32,    ; 1: B

    ; variables
    i1,    ; 2: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_INRSTB(%T_RS %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_INRSTB, align 8
    %t1 = getelementptr inbounds %Frame_INRSTB, %Frame_INRSTB* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1
    %t2 = getelementptr inbounds %Frame_INRSTB, %Frame_INRSTB* %.frame, i32 0, i32 1
    store i32 %B, i32* %t2

    ; body
    %t3 = getelementptr inbounds %Frame_INRSTB, %Frame_INRSTB* %.frame, i32 0, i32 2
    store i1 true, i1* %t3
    ; nop

    ; epilogue
    %t5 = getelementptr inbounds %Frame_INRSTB, %Frame_INRSTB* %.frame, i32 0, i32 2
    %t6 = load i1, i1* %t5
    ret i1 %t6
}


; line 627
;================================================================================
; scope: NULRS (level : 2)

; activation record
%Frame_NULRS = type
{
    ; parameters
    %T_RS,    ; 0: A

    ; variables
    i1,    ; 1: _fnvalue
    i1,    ; 2: INTB
    i32,    ; 3: INTY

    ; dummy
    i8*
};

; function body
define i1 @F_NULRS(%T_RS %A)
{
    ; allocate frame
    %.frame = alloca %Frame_NULRS, align 8
    %t1 = getelementptr inbounds %Frame_NULRS, %Frame_NULRS* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_NULRS, %Frame_NULRS* %.frame, i32 0, i32 2
    store i1 1, i1* %t2
    %t3 = getelementptr inbounds %Frame_NULRS, %Frame_NULRS* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_NULRS, %Frame_NULRS* %.frame, i32 0, i32 2
    %t4 = load i1, i1* %t5
    store i1 %t4, i1* %t3
    ; nop

    ; epilogue
    %t6 = getelementptr inbounds %Frame_NULRS, %Frame_NULRS* %.frame, i32 0, i32 1
    %t7 = load i1, i1* %t6
    ret i1 %t7
}


; line 643
;================================================================================
; scope: NULMVB (level : 2)

; activation record
%Frame_NULMVB = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; variables
    i1,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_NULMVB(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_NULMVB, align 8
    %t1 = getelementptr inbounds %Frame_NULMVB, %Frame_NULMVB* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_NULMVB, %Frame_NULMVB* %.frame, i32 0, i32 1
L_expr_4:
L_expr_1:
    %t5 = getelementptr inbounds %Frame_NULMVB, %Frame_NULMVB* %.frame, i32 0, i32 0
    %t7 = getelementptr inbounds %T_RM, %T_RM* %t5, i32 0, i32 13
    %t6 = bitcast i8* %t7 to i1*
    %t8 = load i1, i1* %t6
    br i1 %t8, label %L_AND_eval_2, label %L_AND_shortcut_3
L_AND_eval_2:
    %t9 = getelementptr inbounds %Frame_NULMVB, %Frame_NULMVB* %.frame, i32 0, i32 0
    %t11 = getelementptr inbounds %T_RM, %T_RM* %t9, i32 0, i32 18
    %t10 = bitcast i8* %t11 to i1*
    %t12 = load i1, i1* %t10
    br label %L_AND_shortcut_3
L_AND_shortcut_3:
    %t4 = phi [%t12, %L_AND_eval_2], [false, %L_expr_1]
    br i1 %t4, label %L_AND_eval_5, label %L_AND_shortcut_6
L_AND_eval_5:
    %t13 = getelementptr inbounds %Frame_NULMVB, %Frame_NULMVB* %.frame, i32 0, i32 0
    %t15 = getelementptr inbounds %T_RM, %T_RM* %t13, i32 0, i32 12
    %t14 = bitcast i8* %t15 to i1*
    %t16 = load i1, i1* %t14
    %t17 = icmp eq 0, %t16
    br label %L_AND_shortcut_6
L_AND_shortcut_6:
    %t3 = phi [%t17, %L_AND_eval_5], [false, %L_expr_4]
    store i1 %t3, i1* %t2
    ; nop

    ; epilogue
    %t18 = getelementptr inbounds %Frame_NULMVB, %Frame_NULMVB* %.frame, i32 0, i32 1
    %t19 = load i1, i1* %t18
    ret i1 %t19
}


; line 653
;================================================================================
; scope: INICON (level : 2)

; activation record
%Frame_INICON = type
{
    ; variables
    i32,    ; 0: IMTI
    %T_RS,    ; 1: INRS
    i32,    ; 2: INTD
    i32,    ; 3: INTE
    i32,    ; 4: INTF
    i32,    ; 5: INTI
    i32,    ; 6: INTI1
    i32,    ; 7: INTL
    i32,    ; 8: INTQ
    i32,    ; 9: INTR
    i32,    ; 10: INTT
    i32,    ; 11: INTX
    i32,    ; 12: INTY

    ; dummy
    i8*
};

; procedure body
define void @P_INICON()
{
    ; allocate frame
    %.frame = alloca %Frame_INICON, align 8

    ; body
    %t1 = mul i32 1, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 0, i8 65, i32 0, i32 0, i1 0, i32 0, i32 1, i32 %t1)
    %t2 = mul i32 5, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 1, i8 66, i32 0, i32 1, i1 1, i32 4, i32 7, i32 %t2)
    %t3 = mul i32 3, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 2, i8 67, i32 0, i32 2, i1 0, i32 8, i32 15, i32 %t3)
    %t4 = mul i32 3, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 3, i8 68, i32 0, i32 3, i1 1, i32 0, i32 3, i32 %t4)
    %t5 = mul i32 9, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 4, i8 69, i32 0, i32 4, i1 1, i32 0, i32 7, i32 %t5)
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 5, i8 70, i32 0, i32 5, i1 0, i32 0, i32 7, i32 0)
    %t7 = sub i32 0, 1
    %t6 = mul i32 %t7, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 6, i8 49, i32 1, i32 0, i1 0, i32 2, i32 3, i32 %t6)
    %t9 = sub i32 0, 5
    %t8 = mul i32 %t9, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 7, i8 50, i32 1, i32 1, i1 1, i32 4, i32 7, i32 %t8)
    %t11 = sub i32 0, 3
    %t10 = mul i32 %t11, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 8, i8 51, i32 1, i32 2, i1 0, i32 8, i32 15, i32 %t10)
    %t13 = sub i32 0, 3
    %t12 = mul i32 %t13, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 9, i8 52, i32 1, i32 3, i1 1, i32 0, i32 3, i32 %t12)
    %t15 = sub i32 0, 9
    %t14 = mul i32 %t15, 64
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 10, i8 53, i32 1, i32 4, i1 1, i32 0, i32 7, i32 %t14)
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 11, i8 54, i32 1, i32 5, i1 0, i32 0, i32 7, i32 0)
    call void @P_INICON_INIXTP(%Frame_INICON* %.frame, i32 12, i8 45, i32 2, i32 0, i1 0, i32 1, i32 0, i32 0)
    %t16 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 0
    %t17 = getelementptr inbounds %T_array_26, %T_array_26* %t16, i32 0, i32 0
    store i32 4, i32* %t17
    %t18 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 0
    %t19 = getelementptr inbounds %T_array_26, %T_array_26* %t18, i32 0, i32 1
    store i32 10, i32* %t19
    %t20 = getelementptr inbounds %T_array_24, %T_array_24* @XTGC, i32 0, i32 0
    store i8 81, i8* %t20
    %t21 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 1
    %t22 = getelementptr inbounds %T_array_26, %T_array_26* %t21, i32 0, i32 0
    store i32 1, i32* %t22
    %t23 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 1
    %t24 = getelementptr inbounds %T_array_26, %T_array_26* %t23, i32 0, i32 1
    store i32 7, i32* %t24
    %t25 = getelementptr inbounds %T_array_24, %T_array_24* @XTGC, i32 0, i32 1
    store i8 82, i8* %t25
    %t26 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 2
    %t27 = getelementptr inbounds %T_array_26, %T_array_26* %t26, i32 0, i32 0
    store i32 2, i32* %t27
    %t28 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 2
    %t29 = getelementptr inbounds %T_array_26, %T_array_26* %t28, i32 0, i32 1
    store i32 8, i32* %t29
    %t30 = getelementptr inbounds %T_array_24, %T_array_24* @XTGC, i32 0, i32 2
    store i8 78, i8* %t30
    %t31 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 3
    %t32 = getelementptr inbounds %T_array_26, %T_array_26* %t31, i32 0, i32 0
    store i32 3, i32* %t32
    %t33 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 3
    %t34 = getelementptr inbounds %T_array_26, %T_array_26* %t33, i32 0, i32 1
    store i32 9, i32* %t34
    %t35 = getelementptr inbounds %T_array_24, %T_array_24* @XTGC, i32 0, i32 3
    store i8 66, i8* %t35
    %t36 = getelementptr inbounds %T_array_44, %T_array_44* @XTUC, i32 0, i32 5
    store i8 75, i8* %t36
    %t37 = getelementptr inbounds %T_array_44, %T_array_44* @XTUC, i32 0, i32 4
    store i8 81, i8* %t37
    %t38 = getelementptr inbounds %T_array_44, %T_array_44* @XTUC, i32 0, i32 1
    store i8 82, i8* %t38
    %t39 = getelementptr inbounds %T_array_44, %T_array_44* @XTUC, i32 0, i32 2
    store i8 78, i8* %t39
    %t40 = getelementptr inbounds %T_array_44, %T_array_44* @XTUC, i32 0, i32 3
    store i8 66, i8* %t40
    %t41 = getelementptr inbounds %T_array_44, %T_array_44* @XTUC, i32 0, i32 0
    store i8 80, i8* %t41
    %t42 = getelementptr inbounds %T_array_22, %T_array_22* @XTBC, i32 0, i32 0
    store i8 45, i8* %t42
    %t43 = getelementptr inbounds %T_array_22, %T_array_22* @XTBC, i32 0, i32 1
    store i8 42, i8* %t43
    %t44 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 0
    store i32 1, i32* %t44
    %t45 = getelementptr inbounds %T_array_30, %T_array_30* @XTMV, i32 0, i32 0
    store i32 1, i32* %t45
    %t46 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 1
    store i32 0, i32* %t46
    %t47 = getelementptr inbounds %T_array_30, %T_array_30* @XTMV, i32 0, i32 1
    %t48 = sub i32 0, 1
    store i32 %t48, i32* %t47
    %t49 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 2
    store i32 2, i32* %t49
    %t50 = getelementptr inbounds %T_array_28, %T_array_28* @XTMA, i32 0, i32 0
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %T_RA* %t50
    %t51 = getelementptr inbounds %T_array_28, %T_array_28* @XTMA, i32 0, i32 1
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_RA* %t51
    %t52 = getelementptr inbounds %T_array_28, %T_array_28* @XTMA, i32 0, i32 2
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_RA* %t52
    %t53 = getelementptr inbounds %T_array_35, %T_array_35* @XTQA, i32 0, i32 0
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_RA* %t53
    %t54 = getelementptr inbounds %T_array_35, %T_array_35* @XTQA, i32 0, i32 1
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_RA* %t54
    %t55 = getelementptr inbounds %T_array_35, %T_array_35* @XTQA, i32 0, i32 2
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_RA* %t55
    %t56 = getelementptr inbounds %T_array_35, %T_array_35* @XTQA, i32 0, i32 3
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_RA* %t56
    %t57 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 7
    store i32 21, i32* %t57
    %t58 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 10
    %t59 = sub i32 0, 1
    store i32 %t59, i32* %t58
    %t60 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 10
    %t61 = sub i32 0, 1
    store i32 %t61, i32* %t60
    %t62 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 4
    %t63 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 0
    %t64 = load %T_RS, %T_RS* %t63
    call void @P_CPYRS(%T_RS* %t62, %T_RS %t64)
    %t65 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 5
    %t66 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 7
    %t67 = load %T_RS, %T_RS* %t66
    call void @P_CPYRS(%T_RS* %t65, %T_RS %t67)
    %t68 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 6
    %t69 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 7
    %t70 = load %T_RS, %T_RS* %t69
    call void @P_CPYRS(%T_RS* %t68, %T_RS %t70)
    %t71 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 7
    %t72 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 0
    %t73 = load %T_RS, %T_RS* %t72
    call void @P_CPYRS(%T_RS* %t71, %T_RS %t73)
    %t74 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 0
    %t75 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 4
    %t76 = load %T_RS, %T_RS* %t75
    %t77 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 5
    %t78 = load %T_RS, %T_RS* %t77
    call void @P_IORRS(%T_RS* %t74, %T_RS %t76, %T_RS %t78)
    %t79 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 1
    %t80 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 5
    %t81 = load %T_RS, %T_RS* %t80
    %t82 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 6
    %t83 = load %T_RS, %T_RS* %t82
    call void @P_IORRS(%T_RS* %t79, %T_RS %t81, %T_RS %t83)
    %t84 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 2
    %t85 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 6
    %t86 = load %T_RS, %T_RS* %t85
    %t87 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 7
    %t88 = load %T_RS, %T_RS* %t87
    call void @P_IORRS(%T_RS* %t84, %T_RS %t86, %T_RS %t88)
    %t89 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 3
    %t90 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 7
    %t91 = load %T_RS, %T_RS* %t90
    %t92 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 4
    %t93 = load %T_RS, %T_RS* %t92
    call void @P_IORRS(%T_RS* %t89, %T_RS %t91, %T_RS %t93)
    %t94 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 8
    %t95 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 0
    %t96 = load %T_RS, %T_RS* %t95
    %t97 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 6
    %t98 = load %T_RS, %T_RS* %t97
    call void @P_IORRS(%T_RS* %t94, %T_RS %t96, %T_RS %t98)
    %t99 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 9
    %t100 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 1
    %t101 = load %T_RS, %T_RS* %t100
    %t102 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 6
    %t103 = load %T_RS, %T_RS* %t102
    call void @P_IORRS(%T_RS* %t99, %T_RS %t101, %T_RS %t103)
    %t104 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 10
    %t105 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 1
    %t106 = load %T_RS, %T_RS* %t105
    %t107 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 6
    %t108 = load %T_RS, %T_RS* %t107
    call void @P_IORRS(%T_RS* %t104, %T_RS %t106, %T_RS %t108)
    %t109 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 11
    %t110 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 2
    %t111 = load %T_RS, %T_RS* %t110
    %t112 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 6
    %t113 = load %T_RS, %T_RS* %t112
    call void @P_IORRS(%T_RS* %t109, %T_RS %t111, %T_RS %t113)
    %t114 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 12
    %t115 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 2
    %t116 = load %T_RS, %T_RS* %t115
    %t117 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 1
    %t118 = load %T_RS, %T_RS* %t117
    call void @P_IORRS(%T_RS* %t114, %T_RS %t116, %T_RS %t118)
    %t119 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 13
    %t120 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 3
    %t121 = load %T_RS, %T_RS* %t120
    %t122 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 1
    %t123 = load %T_RS, %T_RS* %t122
    call void @P_IORRS(%T_RS* %t119, %T_RS %t121, %T_RS %t123)
    %t124 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 14
    %t125 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 3
    %t126 = load %T_RS, %T_RS* %t125
    %t127 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 1
    %t128 = load %T_RS, %T_RS* %t127
    call void @P_IORRS(%T_RS* %t124, %T_RS %t126, %T_RS %t128)
    %t129 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 15
    %t130 = getelementptr inbounds %T_array_7, %T_array_7* @EDGE, i32 0, i32 0
    %t131 = load %T_RS, %T_RS* %t130
    %t132 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 1
    %t133 = load %T_RS, %T_RS* %t132
    call void @P_IORRS(%T_RS* %t129, %T_RS %t131, %T_RS %t133)
    %t134 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 1
    %t135 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 0
    %t136 = load %T_RS, %T_RS* %t135
    %t137 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 1
    %t138 = load %T_RS, %T_RS* %t137
    call void @P_IORRS(%T_RS* %t134, %T_RS %t136, %T_RS %t138)
    %t139 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 1
    %t141 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 1
    %t140 = load %T_RS, %T_RS* %t141
    %t142 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 6
    %t143 = load %T_RS, %T_RS* %t142
    call void @P_IORRS(%T_RS* %t139, %T_RS %t140, %T_RS %t143)
    %t144 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 1
    %t146 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 1
    %t145 = load %T_RS, %T_RS* %t146
    %t147 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 7
    %t148 = load %T_RS, %T_RS* %t147
    call void @P_IORRS(%T_RS* %t144, %T_RS %t145, %T_RS %t148)
    %t149 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 0
    %t150 = load %T_RS, %T_RS* %t149
    %t151 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 1
    %t152 = load %T_RS, %T_RS* %t151
    call void @P_IORRS(%T_RS* @CORNR, %T_RS %t150, %T_RS %t152)
    %t153 = load %T_RS, %T_RS* @CORNR
    %t154 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 6
    %t155 = load %T_RS, %T_RS* %t154
    call void @P_IORRS(%T_RS* @CORNR, %T_RS %t153, %T_RS %t155)
    %t156 = load %T_RS, %T_RS* @CORNR
    %t157 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 7
    %t158 = load %T_RS, %T_RS* %t157
    call void @P_IORRS(%T_RS* @CORNR, %T_RS %t156, %T_RS %t158)
    %t159 = load %T_RS, %T_RS* @CORNR
    %t161 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 1
    %t160 = load %T_RS, %T_RS* %t161
    call void @P_ANDRS(%T_RS* @CORNR, %T_RS %t159, %T_RS %t160)
    %t162 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 8
    store i32 19, i32* %t162
    %t163 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 9
    store i32 21, i32* %t163
    %t164 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 15
    store i32 8, i32* %t164
    %t165 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 0
    store i32 9, i32* %t165
    %t166 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 5
    store i32 10, i32* %t166
    %t167 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 1
    store i32 11, i32* %t167
    %t168 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 10
    store i32 12, i32* %t168
    %t169 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 4
    %t170 = sub i32 0, 1
    store i32 %t170, i32* %t169
    %t171 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 6
    store i32 1, i32* %t171
    %t172 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 14
    %t173 = sub i32 0, 12
    store i32 %t173, i32* %t172
    %t174 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 3
    %t175 = sub i32 0, 11
    store i32 %t175, i32* %t174
    %t176 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 7
    %t177 = sub i32 0, 10
    store i32 %t177, i32* %t176
    %t178 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 2
    %t179 = sub i32 0, 9
    store i32 %t179, i32* %t178
    %t180 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 11
    %t181 = sub i32 0, 8
    store i32 %t181, i32* %t180
    %t182 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 13
    %t183 = sub i32 0, 21
    store i32 %t183, i32* %t182
    %t184 = getelementptr inbounds %T_array_23, %T_array_23* @XTED, i32 0, i32 12
    %t185 = sub i32 0, 19
    store i32 %t185, i32* %t184
    %t186 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XSQS, i32 0, i32 0
    %t187 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t188 = getelementptr inbounds %T_array_38, %T_array_38* %t187, i32 0, i32 7
    %t189 = load i32, i32* %t188
    %t190 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t189
    %t191 = load %T_RS, %T_RS* %t190
    %t192 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t193 = getelementptr inbounds %T_array_38, %T_array_38* %t192, i32 0, i32 4
    %t194 = load i32, i32* %t193
    %t195 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t194
    %t196 = load %T_RS, %T_RS* %t195
    call void @P_IORRS(%T_RS* %t186, %T_RS %t191, %T_RS %t196)
    %t197 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XSQS, i32 0, i32 1
    %t198 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t199 = getelementptr inbounds %T_array_38, %T_array_38* %t198, i32 0, i32 0
    %t200 = load i32, i32* %t199
    %t201 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t200
    %t202 = load %T_RS, %T_RS* %t201
    %t203 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t204 = getelementptr inbounds %T_array_38, %T_array_38* %t203, i32 0, i32 4
    %t205 = load i32, i32* %t204
    %t206 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t205
    %t207 = load %T_RS, %T_RS* %t206
    call void @P_IORRS(%T_RS* %t197, %T_RS %t202, %T_RS %t207)
    %t208 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XSQS, i32 0, i32 2
    %t209 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t210 = getelementptr inbounds %T_array_38, %T_array_38* %t209, i32 0, i32 7
    %t211 = load i32, i32* %t210
    %t212 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t211
    %t213 = load %T_RS, %T_RS* %t212
    %t214 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t215 = getelementptr inbounds %T_array_38, %T_array_38* %t214, i32 0, i32 4
    %t216 = load i32, i32* %t215
    %t217 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t216
    %t218 = load %T_RS, %T_RS* %t217
    call void @P_IORRS(%T_RS* %t208, %T_RS %t213, %T_RS %t218)
    %t219 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XSQS, i32 0, i32 3
    %t220 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t221 = getelementptr inbounds %T_array_38, %T_array_38* %t220, i32 0, i32 0
    %t222 = load i32, i32* %t221
    %t223 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t222
    %t224 = load %T_RS, %T_RS* %t223
    %t225 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t226 = getelementptr inbounds %T_array_38, %T_array_38* %t225, i32 0, i32 4
    %t227 = load i32, i32* %t226
    %t228 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t227
    %t229 = load %T_RS, %T_RS* %t228
    call void @P_IORRS(%T_RS* %t219, %T_RS %t224, %T_RS %t229)
    %t230 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 0
    %t231 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t232 = getelementptr inbounds %T_array_38, %T_array_38* %t231, i32 0, i32 5
    %t233 = load i32, i32* %t232
    %t234 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t233
    %t235 = load %T_RS, %T_RS* %t234
    %t236 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t237 = getelementptr inbounds %T_array_38, %T_array_38* %t236, i32 0, i32 6
    %t238 = load i32, i32* %t237
    %t239 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t238
    %t240 = load %T_RS, %T_RS* %t239
    call void @P_IORRS(%T_RS* %t230, %T_RS %t235, %T_RS %t240)
    %t241 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 1
    %t242 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t243 = getelementptr inbounds %T_array_38, %T_array_38* %t242, i32 0, i32 3
    %t244 = load i32, i32* %t243
    %t245 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t244
    %t246 = load %T_RS, %T_RS* %t245
    %t247 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t248 = getelementptr inbounds %T_array_38, %T_array_38* %t247, i32 0, i32 2
    %t249 = load i32, i32* %t248
    %t250 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t249
    %t251 = load %T_RS, %T_RS* %t250
    call void @P_IORRS(%T_RS* %t241, %T_RS %t246, %T_RS %t251)
    %t252 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSA, i32 0, i32 0
    %t253 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t254 = getelementptr inbounds %T_array_38, %T_array_38* %t253, i32 0, i32 4
    %t255 = load i32, i32* %t254
    %t256 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t255
    %t257 = load %T_RS, %T_RS* %t256
    %t258 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 0
    %t259 = load %T_RS, %T_RS* %t258
    call void @P_IORRS(%T_RS* %t252, %T_RS %t257, %T_RS %t259)
    %t260 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSA, i32 0, i32 1
    %t261 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t262 = getelementptr inbounds %T_array_38, %T_array_38* %t261, i32 0, i32 4
    %t263 = load i32, i32* %t262
    %t264 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t263
    %t265 = load %T_RS, %T_RS* %t264
    %t266 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 1
    %t267 = load %T_RS, %T_RS* %t266
    call void @P_IORRS(%T_RS* %t260, %T_RS %t265, %T_RS %t267)
    %t268 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 1
    %t269 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t270 = getelementptr inbounds %T_array_38, %T_array_38* %t269, i32 0, i32 1
    %t271 = load i32, i32* %t270
    %t272 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t271
    %t273 = load %T_RS, %T_RS* %t272
    %t274 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 1
    %t275 = load %T_RS, %T_RS* %t274
    call void @P_IORRS(%T_RS* %t268, %T_RS %t273, %T_RS %t275)
    %t276 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 2
    %t277 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t278 = getelementptr inbounds %T_array_38, %T_array_38* %t277, i32 0, i32 5
    %t279 = load i32, i32* %t278
    %t280 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t279
    %t281 = load %T_RS, %T_RS* %t280
    %t282 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t283 = getelementptr inbounds %T_array_38, %T_array_38* %t282, i32 0, i32 6
    %t284 = load i32, i32* %t283
    %t285 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t284
    %t286 = load %T_RS, %T_RS* %t285
    call void @P_IORRS(%T_RS* %t276, %T_RS %t281, %T_RS %t286)
    %t287 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 3
    %t288 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t289 = getelementptr inbounds %T_array_38, %T_array_38* %t288, i32 0, i32 3
    %t290 = load i32, i32* %t289
    %t291 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t290
    %t292 = load %T_RS, %T_RS* %t291
    %t293 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t294 = getelementptr inbounds %T_array_38, %T_array_38* %t293, i32 0, i32 2
    %t295 = load i32, i32* %t294
    %t296 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t295
    %t297 = load %T_RS, %T_RS* %t296
    call void @P_IORRS(%T_RS* %t287, %T_RS %t292, %T_RS %t297)
    %t298 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 2
    %t299 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t300 = getelementptr inbounds %T_array_38, %T_array_38* %t299, i32 0, i32 4
    %t301 = load i32, i32* %t300
    %t302 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t301
    %t303 = load %T_RS, %T_RS* %t302
    %t304 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 2
    %t305 = load %T_RS, %T_RS* %t304
    call void @P_IORRS(%T_RS* %t298, %T_RS %t303, %T_RS %t305)
    %t306 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSA, i32 0, i32 3
    %t307 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t308 = getelementptr inbounds %T_array_38, %T_array_38* %t307, i32 0, i32 4
    %t309 = load i32, i32* %t308
    %t310 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t309
    %t311 = load %T_RS, %T_RS* %t310
    %t312 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 3
    %t313 = load %T_RS, %T_RS* %t312
    call void @P_IORRS(%T_RS* %t306, %T_RS %t311, %T_RS %t313)
    %t314 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 3
    %t315 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t316 = getelementptr inbounds %T_array_38, %T_array_38* %t315, i32 0, i32 1
    %t317 = load i32, i32* %t316
    %t318 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t317
    %t319 = load %T_RS, %T_RS* %t318
    %t320 = getelementptr inbounds %T_arraytqofrs, %T_arraytqofrs* @XRQSO, i32 0, i32 3
    %t321 = load %T_RS, %T_RS* %t320
    call void @P_IORRS(%T_RS* %t314, %T_RS %t319, %T_RS %t321)
    %t322 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 0
    %t324 = getelementptr inbounds %T_RM, %T_RM* %t322, i32 0, i32 0
    %t323 = bitcast i8* %t324 to i32*
    %t325 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t326 = getelementptr inbounds %T_array_38, %T_array_38* %t325, i32 0, i32 4
    %t327 = load i32, i32* %t326
    store i32 %t327, i32* %t323
    %t328 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 0
    %t330 = getelementptr inbounds %T_RM, %T_RM* %t328, i32 0, i32 4
    %t329 = bitcast i8* %t330 to i32*
    %t331 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t332 = getelementptr inbounds %T_array_38, %T_array_38* %t331, i32 0, i32 6
    %t333 = load i32, i32* %t332
    store i32 %t333, i32* %t329
    %t334 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 1
    %t336 = getelementptr inbounds %T_RM, %T_RM* %t334, i32 0, i32 0
    %t335 = bitcast i8* %t336 to i32*
    %t337 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t338 = getelementptr inbounds %T_array_38, %T_array_38* %t337, i32 0, i32 4
    %t339 = load i32, i32* %t338
    store i32 %t339, i32* %t335
    %t340 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 1
    %t342 = getelementptr inbounds %T_RM, %T_RM* %t340, i32 0, i32 4
    %t341 = bitcast i8* %t342 to i32*
    %t343 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t344 = getelementptr inbounds %T_array_38, %T_array_38* %t343, i32 0, i32 2
    %t345 = load i32, i32* %t344
    store i32 %t345, i32* %t341
    %t346 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 2
    %t348 = getelementptr inbounds %T_RM, %T_RM* %t346, i32 0, i32 0
    %t347 = bitcast i8* %t348 to i32*
    %t349 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t350 = getelementptr inbounds %T_array_38, %T_array_38* %t349, i32 0, i32 4
    %t351 = load i32, i32* %t350
    store i32 %t351, i32* %t347
    %t352 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 2
    %t354 = getelementptr inbounds %T_RM, %T_RM* %t352, i32 0, i32 4
    %t353 = bitcast i8* %t354 to i32*
    %t355 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t356 = getelementptr inbounds %T_array_38, %T_array_38* %t355, i32 0, i32 6
    %t357 = load i32, i32* %t356
    store i32 %t357, i32* %t353
    %t358 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 3
    %t360 = getelementptr inbounds %T_RM, %T_RM* %t358, i32 0, i32 0
    %t359 = bitcast i8* %t360 to i32*
    %t361 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t362 = getelementptr inbounds %T_array_38, %T_array_38* %t361, i32 0, i32 4
    %t363 = load i32, i32* %t362
    store i32 %t363, i32* %t359
    %t364 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 3
    %t366 = getelementptr inbounds %T_RM, %T_RM* %t364, i32 0, i32 4
    %t365 = bitcast i8* %t366 to i32*
    %t367 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t368 = getelementptr inbounds %T_array_38, %T_array_38* %t367, i32 0, i32 2
    %t369 = load i32, i32* %t368
    store i32 %t369, i32* %t365
    %t370 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 0
    %t372 = getelementptr inbounds %T_RM, %T_RM* %t370, i32 0, i32 20
    %t371 = bitcast i8* %t372 to i1*
    store i1 0, i1* %t371
    %t373 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 1
    %t375 = getelementptr inbounds %T_RM, %T_RM* %t373, i32 0, i32 20
    %t374 = bitcast i8* %t375 to i1*
    store i1 1, i1* %t374
    %t376 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 2
    %t378 = getelementptr inbounds %T_RM, %T_RM* %t376, i32 0, i32 20
    %t377 = bitcast i8* %t378 to i1*
    store i1 0, i1* %t377
    %t379 = getelementptr inbounds %T_array_19, %T_array_19* @XRQM, i32 0, i32 3
    %t381 = getelementptr inbounds %T_RM, %T_RM* %t379, i32 0, i32 20
    %t380 = bitcast i8* %t381 to i1*
    store i1 1, i1* %t380
    %t382 = getelementptr inbounds %T_array_29, %T_array_29* @XTMQ, i32 0, i32 0
    store i32 0, i32* %t382
    %t383 = getelementptr inbounds %T_array_29, %T_array_29* @XTMQ, i32 0, i32 1
    store i32 2, i32* %t383
    %t384 = getelementptr inbounds %T_array_36, %T_array_36* @XTQS, i32 0, i32 0
    %t385 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t386 = getelementptr inbounds %T_array_38, %T_array_38* %t385, i32 0, i32 7
    %t387 = load i32, i32* %t386
    store i32 %t387, i32* %t384
    %t388 = getelementptr inbounds %T_array_36, %T_array_36* @XTQS, i32 0, i32 1
    %t389 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 0
    %t390 = getelementptr inbounds %T_array_38, %T_array_38* %t389, i32 0, i32 0
    %t391 = load i32, i32* %t390
    store i32 %t391, i32* %t388
    %t392 = getelementptr inbounds %T_array_36, %T_array_36* @XTQS, i32 0, i32 2
    %t393 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t394 = getelementptr inbounds %T_array_38, %T_array_38* %t393, i32 0, i32 7
    %t395 = load i32, i32* %t394
    store i32 %t395, i32* %t392
    %t396 = getelementptr inbounds %T_array_36, %T_array_36* @XTQS, i32 0, i32 3
    %t397 = getelementptr inbounds %T_array_37, %T_array_37* @XTRFS, i32 0, i32 7
    %t398 = getelementptr inbounds %T_array_38, %T_array_38* %t397, i32 0, i32 0
    %t399 = load i32, i32* %t398
    store i32 %t399, i32* %t396
    %t401 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 0
    %t400 = bitcast i8* %t401 to i32*
    store i32 0, i32* %t400
    %t403 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 4
    %t402 = bitcast i8* %t403 to i32*
    store i32 0, i32* %t402
    %t405 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 8
    %t404 = bitcast i8* %t405 to i32*
    store i32 12, i32* %t404
    %t407 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 12
    %t406 = bitcast i8* %t407 to i1*
    store i1 0, i1* %t406
    %t409 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 13
    %t408 = bitcast i8* %t409 to i1*
    store i1 1, i1* %t408
    %t411 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 14
    %t410 = bitcast i8* %t411 to i1*
    store i1 0, i1* %t410
    %t413 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 15
    %t412 = bitcast i8* %t413 to i1*
    store i1 0, i1* %t412
    %t415 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 16
    %t414 = bitcast i8* %t415 to i1*
    store i1 0, i1* %t414
    %t417 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 17
    %t416 = bitcast i8* %t417 to i1*
    store i1 0, i1* %t416
    %t419 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 18
    %t418 = bitcast i8* %t419 to i1*
    store i1 1, i1* %t418
    %t421 = getelementptr inbounds %T_RM, %T_RM* @NULMV, i32 0, i32 20
    %t420 = bitcast i8* %t421 to i32*
    store i32 3, i32* %t420
    ; nop
    store i32 73, i32* @JMTJ
    %t422 = getelementptr inbounds %T_RJ, %T_RJ* @ICARD, i32 0, i32 73
    store i8 59, i8* %t422
    %t423 = getelementptr inbounds %T_RJ, %T_RJ* @ILINE, i32 0, i32 73
    store i8 59, i8* %t423
    %t424 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %.frame, i32 0, i32 5
    store i32 1, i32* %t424
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0))
    call void @P_INICON_INISYN(%Frame_INICON* %.frame, %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0))
    store i32 10, i32* @FKPSHD
    store i32 150, i32* @FKSANQ
    store i32 256, i32* @FMAXMT
    store i32 18, i32* @FNODEL
    %t425 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 0
    store i32 0, i32* %t425
    %t426 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 1
    store i32 0, i32* %t426
    %t427 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 2
    store i32 5, i32* %t427
    %t428 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 3
    store i32 10, i32* %t428
    %t429 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 4
    store i32 15, i32* %t429
    %t430 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 5
    store i32 5, i32* %t430
    %t431 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 6
    store i32 0, i32* %t431
    %t432 = getelementptr inbounds %T_array_8, %T_array_8* @FPADCR, i32 0, i32 7
    store i32 0, i32* %t432
    store i32 20, i32* @FPBLOK
    store i32 5, i32* @FPCONN
    store i32 12, i32* @FPFLNX
    store i32 60, i32* @FRDUBL
    store i32 120, i32* @FRK7TH
    store i32 36, i32* @FTRADE
    store i32 5156, i32* @FTRDSL
    store i32 2, i32* @FTRPDK
    store i32 8, i32* @FTRPWN
    store i32 50, i32* @FWKING
    store i32 1, i32* @FWMAJM
    store i32 200, i32* @FWMINM
    store i32 100, i32* @FWPAWN
    store i32 2, i32* @FWROOK
    store i32 30, i32* @WINDOW
    store i1 1, i1* @SWEC
    store i1 1, i1* @SWPA
    store i1 0, i1* @SWPS
    store i1 1, i1* @SWRE
    store i1 0, i1* @SWSU
    store i1 0, i1* @SWTR
    store i32 0, i32* @GOING
    ; nop

    ; epilogue
    ret void
}


; line 670
;================================================================================
; scope: INICON_INISYN (level : 3)

; activation record
%Frame_INICON_INISYN = type
{
    ; parameters
    %T_RA,    ; 0: A

    ; slink
    %Frame_INICON*    ; 1
};

; procedure body
define void @P_INICON_INISYN(%Frame_INICON* %.slink, %T_RA %A)
{
    ; allocate frame
    %.frame = alloca %Frame_INICON_INISYN, align 8
    %t1 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    store %Frame_INICON* %.slink, %Frame_INICON** %t1
    %t2 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    store %T_RA %A, %T_RA* %t2

    ; body
    %t5 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t6 = load %Frame_INICON*, %Frame_INICON** %t5
    %t4 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t6, i32 0, i32 5
    %t3 = load i32, i32* %t4
    %t7 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t3
    %t9 = getelementptr inbounds %T_RY, %T_RY* %t7, i32 0, i32 0
    %t8 = bitcast i8* %t9 to %T_RD*
    %t11 = getelementptr inbounds %T_RD, %T_RD* %t8, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i1*
    store i1 1, i1* %t10
    %t14 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t15 = load %Frame_INICON*, %Frame_INICON** %t14
    %t13 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t15, i32 0, i32 5
    %t12 = load i32, i32* %t13
    %t16 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t12
    %t18 = getelementptr inbounds %T_RY, %T_RY* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to %T_RD*
    %t20 = getelementptr inbounds %T_RD, %T_RD* %t17, i32 0, i32 1
    %t19 = bitcast i8* %t20 to i1*
    %t22 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t23 = add i32 1, 0
    %t24 = getelementptr inbounds %T_RA, %T_RA* %t22, i32 0, i32 %t23
    %t25 = load i8, i8* %t24
    %t21 = icmp ne i32 %t25, 32
    store i1 %t21, i1* %t19
    %t28 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t29 = load %Frame_INICON*, %Frame_INICON** %t28
    %t27 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t29, i32 0, i32 5
    %t26 = load i32, i32* %t27
    %t30 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t26
    %t32 = getelementptr inbounds %T_RY, %T_RY* %t30, i32 0, i32 0
    %t31 = bitcast i8* %t32 to %T_RD*
    %t34 = getelementptr inbounds %T_RD, %T_RD* %t31, i32 0, i32 2
    %t33 = bitcast i8* %t34 to i1*
    %t36 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t37 = add i32 1, 1
    %t38 = getelementptr inbounds %T_RA, %T_RA* %t36, i32 0, i32 %t37
    %t39 = load i8, i8* %t38
    %t35 = icmp ne i32 %t39, 32
    store i1 %t35, i1* %t33
    %t42 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t43 = load %Frame_INICON*, %Frame_INICON** %t42
    %t41 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t43, i32 0, i32 5
    %t40 = load i32, i32* %t41
    %t44 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t40
    %t46 = getelementptr inbounds %T_RY, %T_RY* %t44, i32 0, i32 0
    %t45 = bitcast i8* %t46 to %T_RD*
    %t48 = getelementptr inbounds %T_RD, %T_RD* %t45, i32 0, i32 3
    %t47 = bitcast i8* %t48 to i1*
    %t50 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t51 = add i32 1, 2
    %t52 = getelementptr inbounds %T_RA, %T_RA* %t50, i32 0, i32 %t51
    %t53 = load i8, i8* %t52
    %t49 = icmp ne i32 %t53, 32
    store i1 %t49, i1* %t47
    %t56 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t57 = load %Frame_INICON*, %Frame_INICON** %t56
    %t55 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t57, i32 0, i32 5
    %t54 = load i32, i32* %t55
    %t58 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t54
    %t60 = getelementptr inbounds %T_RY, %T_RY* %t58, i32 0, i32 0
    %t59 = bitcast i8* %t60 to %T_RD*
    %t62 = getelementptr inbounds %T_RD, %T_RD* %t59, i32 0, i32 4
    %t61 = bitcast i8* %t62 to i1*
    %t64 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t65 = add i32 1, 3
    %t66 = getelementptr inbounds %T_RA, %T_RA* %t64, i32 0, i32 %t65
    %t67 = load i8, i8* %t66
    %t63 = icmp ne i32 %t67, 32
    store i1 %t63, i1* %t61
    ; nop
    %t70 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t71 = load %Frame_INICON*, %Frame_INICON** %t70
    %t69 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t71, i32 0, i32 5
    %t68 = load i32, i32* %t69
    %t72 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t68
    %t74 = getelementptr inbounds %T_RY, %T_RY* %t72, i32 0, i32 5
    %t73 = bitcast i8* %t74 to i8*
    %t75 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t76 = add i32 1, 4
    %t77 = getelementptr inbounds %T_RA, %T_RA* %t75, i32 0, i32 %t76
    %t78 = load i8, i8* %t77
    store i8 %t78, i8* %t73
    %t81 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t82 = load %Frame_INICON*, %Frame_INICON** %t81
    %t80 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t82, i32 0, i32 5
    %t79 = load i32, i32* %t80
    %t83 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t79
    %t85 = getelementptr inbounds %T_RY, %T_RY* %t83, i32 0, i32 6
    %t84 = bitcast i8* %t85 to %T_RD*
    %t87 = getelementptr inbounds %T_RD, %T_RD* %t84, i32 0, i32 0
    %t86 = bitcast i8* %t87 to i1*
    %t89 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t90 = add i32 1, 5
    %t91 = getelementptr inbounds %T_RA, %T_RA* %t89, i32 0, i32 %t90
    %t92 = load i8, i8* %t91
    %t88 = icmp ne i32 %t92, 32
    store i1 %t88, i1* %t86
    %t95 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t96 = load %Frame_INICON*, %Frame_INICON** %t95
    %t94 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t96, i32 0, i32 5
    %t93 = load i32, i32* %t94
    %t97 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t93
    %t99 = getelementptr inbounds %T_RY, %T_RY* %t97, i32 0, i32 6
    %t98 = bitcast i8* %t99 to %T_RD*
    %t101 = getelementptr inbounds %T_RD, %T_RD* %t98, i32 0, i32 1
    %t100 = bitcast i8* %t101 to i1*
    %t103 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t104 = add i32 1, 6
    %t105 = getelementptr inbounds %T_RA, %T_RA* %t103, i32 0, i32 %t104
    %t106 = load i8, i8* %t105
    %t102 = icmp ne i32 %t106, 32
    store i1 %t102, i1* %t100
    %t109 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t110 = load %Frame_INICON*, %Frame_INICON** %t109
    %t108 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t110, i32 0, i32 5
    %t107 = load i32, i32* %t108
    %t111 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t107
    %t113 = getelementptr inbounds %T_RY, %T_RY* %t111, i32 0, i32 6
    %t112 = bitcast i8* %t113 to %T_RD*
    %t115 = getelementptr inbounds %T_RD, %T_RD* %t112, i32 0, i32 2
    %t114 = bitcast i8* %t115 to i1*
    %t117 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t118 = add i32 1, 7
    %t119 = getelementptr inbounds %T_RA, %T_RA* %t117, i32 0, i32 %t118
    %t120 = load i8, i8* %t119
    %t116 = icmp ne i32 %t120, 32
    store i1 %t116, i1* %t114
    %t123 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t124 = load %Frame_INICON*, %Frame_INICON** %t123
    %t122 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t124, i32 0, i32 5
    %t121 = load i32, i32* %t122
    %t125 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t121
    %t127 = getelementptr inbounds %T_RY, %T_RY* %t125, i32 0, i32 6
    %t126 = bitcast i8* %t127 to %T_RD*
    %t129 = getelementptr inbounds %T_RD, %T_RD* %t126, i32 0, i32 3
    %t128 = bitcast i8* %t129 to i1*
    %t131 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t132 = add i32 1, 8
    %t133 = getelementptr inbounds %T_RA, %T_RA* %t131, i32 0, i32 %t132
    %t134 = load i8, i8* %t133
    %t130 = icmp ne i32 %t134, 32
    store i1 %t130, i1* %t128
    %t137 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t138 = load %Frame_INICON*, %Frame_INICON** %t137
    %t136 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t138, i32 0, i32 5
    %t135 = load i32, i32* %t136
    %t139 = getelementptr inbounds %T_array_16, %T_array_16* @SYNTX, i32 0, i32 %t135
    %t141 = getelementptr inbounds %T_RY, %T_RY* %t139, i32 0, i32 6
    %t140 = bitcast i8* %t141 to %T_RD*
    %t143 = getelementptr inbounds %T_RD, %T_RD* %t140, i32 0, i32 4
    %t142 = bitcast i8* %t143 to i1*
    %t145 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 0
    %t146 = add i32 1, 9
    %t147 = getelementptr inbounds %T_RA, %T_RA* %t145, i32 0, i32 %t146
    %t148 = load i8, i8* %t147
    %t144 = icmp ne i32 %t148, 32
    store i1 %t144, i1* %t142
    ; nop
    ; nop
    %t150 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t151 = load %Frame_INICON*, %Frame_INICON** %t150
    %t149 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t151, i32 0, i32 5
    %t155 = getelementptr inbounds %Frame_INICON_INISYN, %Frame_INICON_INISYN* %.frame, i32 0, i32 1
    %t156 = load %Frame_INICON*, %Frame_INICON** %t155
    %t154 = getelementptr inbounds %Frame_INICON, %Frame_INICON* %t156, i32 0, i32 5
    %t153 = load i32, i32* %t154
    %t152 = add i32 %t153, 1
    store i32 %t152, i32* %t149
    ; nop

    ; epilogue
    ret void
}


; line 698
;================================================================================
; scope: INICON_INIXTP (level : 3)

; activation record
%Frame_INICON_INIXTP = type
{
    ; parameters
    i32,    ; 0: A
    i8,    ; 1: B
    i32,    ; 2: C
    i32,    ; 3: D
    i1,    ; 4: E
    i32,    ; 5: F
    i32,    ; 6: G
    i32,    ; 7: H

    ; slink
    %Frame_INICON*    ; 8
};

; procedure body
define void @P_INICON_INIXTP(%Frame_INICON* %.slink, i32 %A, i8 %B, i32 %C, i32 %D, i1 %E, i32 %F, i32 %G, i32 %H)
{
    ; allocate frame
    %.frame = alloca %Frame_INICON_INIXTP, align 8
    %t1 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 8
    store %Frame_INICON* %.slink, %Frame_INICON** %t1
    %t2 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2
    %t3 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 1
    store i8 %B, i8* %t3
    %t4 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 2
    store i32 %C, i32* %t4
    %t5 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 3
    store i32 %D, i32* %t5
    %t6 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 4
    store i1 %E, i1* %t6
    %t7 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 5
    store i32 %F, i32* %t7
    %t8 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 6
    store i32 %G, i32* %t8
    %t9 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 7
    store i32 %H, i32* %t9

    ; body
    %t11 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_31, %T_array_31* @XTPC, i32 0, i32 %t10
    %t14 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 1
    %t13 = load i8, i8* %t14
    store i8 %t13, i8* %t12
    %t16 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t15
    %t19 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    store i32 %t18, i32* %t17
    %t21 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    %t22 = getelementptr inbounds %T_array_20, %T_array_20* @XSPB, i32 0, i32 %t20
    %t24 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 4
    %t23 = load i1, i1* %t24
    store i1 %t23, i1* %t22
    %t26 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t25 = load i32, i32* %t26
    %t27 = getelementptr inbounds %T_arraytpofte, %T_arraytpofte* @XFPE, i32 0, i32 %t25
    %t29 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 5
    %t28 = load i32, i32* %t29
    store i32 %t28, i32* %t27
    %t31 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t30 = load i32, i32* %t31
    %t32 = getelementptr inbounds %T_arraytpofte, %T_arraytpofte* @XLPE, i32 0, i32 %t30
    %t34 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 6
    %t33 = load i32, i32* %t34
    store i32 %t33, i32* %t32
    %t36 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t35 = load i32, i32* %t36
    %t37 = getelementptr inbounds %T_array_33, %T_array_33* @XTPU, i32 0, i32 %t35
    %t39 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 3
    %t38 = load i32, i32* %t39
    store i32 %t38, i32* %t37
    %t41 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 0
    %t40 = load i32, i32* %t41
    %t42 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t40
    %t44 = getelementptr inbounds %Frame_INICON_INIXTP, %Frame_INICON_INIXTP* %.frame, i32 0, i32 7
    %t43 = load i32, i32* %t44
    store i32 %t43, i32* %t42
    ; nop

    ; epilogue
    ret void
}


; line 1057
;================================================================================
; scope: INITAL (level : 2)

; activation record
%Frame_INITAL = type
{
    ; parameters
    %T_RB*,    ; 0: A

    ; variables
    i32,    ; 1: INTF
    i32,    ; 2: INTR

    ; dummy
    i8*
};

; procedure body
define void @P_INITAL(%T_RB* %A)
{
    ; allocate frame
    %.frame = alloca %Frame_INITAL, align 8
    %t1 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    store %T_RB* %A, %T_RB** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t3 = load %T_RB*, %T_RB** %t2
    %t5 = getelementptr inbounds %T_RB, %T_RB* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    store i32 0, i32* %t4
    %t6 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t7 = load %T_RB*, %T_RB** %t6
    %t9 = getelementptr inbounds %T_RB, %T_RB* %t7, i32 0, i32 4
    %t8 = bitcast i8* %t9 to i32*
    %t10 = sub i32 0, 1
    store i32 %t10, i32* %t8
    %t11 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t12 = load %T_RB*, %T_RB** %t11
    %t14 = getelementptr inbounds %T_RB, %T_RB* %t12, i32 0, i32 8
    %t13 = bitcast i8* %t14 to i32*
    store i32 0, i32* %t13
    %t15 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t16 = load %T_RB*, %T_RB** %t15
    %t18 = getelementptr inbounds %T_RB, %T_RB* %t16, i32 0, i32 12
    %t17 = bitcast i8* %t18 to %T_SQ*
    store %T_SQ %.dummy_set, %T_SQ* %t17
    %t19 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t20 = load %T_RB*, %T_RB** %t19
    %t22 = getelementptr inbounds %T_RB, %T_RB* %t20, i32 0, i32 16
    %t21 = bitcast i8* %t22 to %T_array_4*
    %t23 = getelementptr inbounds %T_array_4, %T_array_4* %t21, i32 0, i32 0
    %t24 = getelementptr inbounds %T_array_5, %T_array_5* %t23, i32 0, i32 0
    store i32 1, i32* %t24
    %t25 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t26 = load %T_RB*, %T_RB** %t25
    %t28 = getelementptr inbounds %T_RB, %T_RB* %t26, i32 0, i32 16
    %t27 = bitcast i8* %t28 to %T_array_4*
    %t29 = getelementptr inbounds %T_array_4, %T_array_4* %t27, i32 0, i32 0
    %t30 = getelementptr inbounds %T_array_5, %T_array_5* %t29, i32 0, i32 1
    store i32 2, i32* %t30
    %t31 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t32 = load %T_RB*, %T_RB** %t31
    %t34 = getelementptr inbounds %T_RB, %T_RB* %t32, i32 0, i32 16
    %t33 = bitcast i8* %t34 to %T_array_4*
    %t35 = getelementptr inbounds %T_array_4, %T_array_4* %t33, i32 0, i32 0
    %t36 = getelementptr inbounds %T_array_5, %T_array_5* %t35, i32 0, i32 2
    store i32 3, i32* %t36
    %t37 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t38 = load %T_RB*, %T_RB** %t37
    %t40 = getelementptr inbounds %T_RB, %T_RB* %t38, i32 0, i32 16
    %t39 = bitcast i8* %t40 to %T_array_4*
    %t41 = getelementptr inbounds %T_array_4, %T_array_4* %t39, i32 0, i32 0
    %t42 = getelementptr inbounds %T_array_5, %T_array_5* %t41, i32 0, i32 3
    store i32 4, i32* %t42
    %t43 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t44 = load %T_RB*, %T_RB** %t43
    %t46 = getelementptr inbounds %T_RB, %T_RB* %t44, i32 0, i32 16
    %t45 = bitcast i8* %t46 to %T_array_4*
    %t47 = getelementptr inbounds %T_array_4, %T_array_4* %t45, i32 0, i32 0
    %t48 = getelementptr inbounds %T_array_5, %T_array_5* %t47, i32 0, i32 4
    store i32 5, i32* %t48
    %t49 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t50 = load %T_RB*, %T_RB** %t49
    %t52 = getelementptr inbounds %T_RB, %T_RB* %t50, i32 0, i32 16
    %t51 = bitcast i8* %t52 to %T_array_4*
    %t53 = getelementptr inbounds %T_array_4, %T_array_4* %t51, i32 0, i32 0
    %t54 = getelementptr inbounds %T_array_5, %T_array_5* %t53, i32 0, i32 5
    store i32 3, i32* %t54
    %t55 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t56 = load %T_RB*, %T_RB** %t55
    %t58 = getelementptr inbounds %T_RB, %T_RB* %t56, i32 0, i32 16
    %t57 = bitcast i8* %t58 to %T_array_4*
    %t59 = getelementptr inbounds %T_array_4, %T_array_4* %t57, i32 0, i32 0
    %t60 = getelementptr inbounds %T_array_5, %T_array_5* %t59, i32 0, i32 6
    store i32 2, i32* %t60
    %t61 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t62 = load %T_RB*, %T_RB** %t61
    %t64 = getelementptr inbounds %T_RB, %T_RB* %t62, i32 0, i32 16
    %t63 = bitcast i8* %t64 to %T_array_4*
    %t65 = getelementptr inbounds %T_array_4, %T_array_4* %t63, i32 0, i32 0
    %t66 = getelementptr inbounds %T_array_5, %T_array_5* %t65, i32 0, i32 7
    store i32 1, i32* %t66
    %t67 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t68 = load %T_RB*, %T_RB** %t67
    %t70 = getelementptr inbounds %T_RB, %T_RB* %t68, i32 0, i32 16
    %t69 = bitcast i8* %t70 to %T_array_4*
    %t71 = getelementptr inbounds %T_array_4, %T_array_4* %t69, i32 0, i32 7
    %t72 = getelementptr inbounds %T_array_5, %T_array_5* %t71, i32 0, i32 0
    store i32 7, i32* %t72
    %t73 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t74 = load %T_RB*, %T_RB** %t73
    %t76 = getelementptr inbounds %T_RB, %T_RB* %t74, i32 0, i32 16
    %t75 = bitcast i8* %t76 to %T_array_4*
    %t77 = getelementptr inbounds %T_array_4, %T_array_4* %t75, i32 0, i32 7
    %t78 = getelementptr inbounds %T_array_5, %T_array_5* %t77, i32 0, i32 1
    store i32 8, i32* %t78
    %t79 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t80 = load %T_RB*, %T_RB** %t79
    %t82 = getelementptr inbounds %T_RB, %T_RB* %t80, i32 0, i32 16
    %t81 = bitcast i8* %t82 to %T_array_4*
    %t83 = getelementptr inbounds %T_array_4, %T_array_4* %t81, i32 0, i32 7
    %t84 = getelementptr inbounds %T_array_5, %T_array_5* %t83, i32 0, i32 2
    store i32 9, i32* %t84
    %t85 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t86 = load %T_RB*, %T_RB** %t85
    %t88 = getelementptr inbounds %T_RB, %T_RB* %t86, i32 0, i32 16
    %t87 = bitcast i8* %t88 to %T_array_4*
    %t89 = getelementptr inbounds %T_array_4, %T_array_4* %t87, i32 0, i32 7
    %t90 = getelementptr inbounds %T_array_5, %T_array_5* %t89, i32 0, i32 3
    store i32 10, i32* %t90
    %t91 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t92 = load %T_RB*, %T_RB** %t91
    %t94 = getelementptr inbounds %T_RB, %T_RB* %t92, i32 0, i32 16
    %t93 = bitcast i8* %t94 to %T_array_4*
    %t95 = getelementptr inbounds %T_array_4, %T_array_4* %t93, i32 0, i32 7
    %t96 = getelementptr inbounds %T_array_5, %T_array_5* %t95, i32 0, i32 4
    store i32 11, i32* %t96
    %t97 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t98 = load %T_RB*, %T_RB** %t97
    %t100 = getelementptr inbounds %T_RB, %T_RB* %t98, i32 0, i32 16
    %t99 = bitcast i8* %t100 to %T_array_4*
    %t101 = getelementptr inbounds %T_array_4, %T_array_4* %t99, i32 0, i32 7
    %t102 = getelementptr inbounds %T_array_5, %T_array_5* %t101, i32 0, i32 5
    store i32 9, i32* %t102
    %t103 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t104 = load %T_RB*, %T_RB** %t103
    %t106 = getelementptr inbounds %T_RB, %T_RB* %t104, i32 0, i32 16
    %t105 = bitcast i8* %t106 to %T_array_4*
    %t107 = getelementptr inbounds %T_array_4, %T_array_4* %t105, i32 0, i32 7
    %t108 = getelementptr inbounds %T_array_5, %T_array_5* %t107, i32 0, i32 6
    store i32 8, i32* %t108
    %t109 = getelementptr inbounds %Frame_INITAL, %Frame_INITAL* %.frame, i32 0, i32 0
    %t110 = load %T_RB*, %T_RB** %t109
    %t112 = getelementptr inbounds %T_RB, %T_RB* %t110, i32 0, i32 16
    %t111 = bitcast i8* %t112 to %T_array_4*
    %t113 = getelementptr inbounds %T_array_4, %T_array_4* %t111, i32 0, i32 7
    %t114 = getelementptr inbounds %T_array_5, %T_array_5* %t113, i32 0, i32 7
    store i32 7, i32* %t114
    store %T_RN getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0), %T_RN* @MOVMS
    %t115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t115, i32 0, i32 0, i8* getelementptr inbounds (%T_RN, %T_RN* @MOVMS, i32 0, i32 0), i32 30)
    call void @_WriteLn(i8* %t115)
    %t116 = load %T_RM, %T_RM* @NULMV
    store %T_RM %t116, %T_RM* @LSTMV
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1101
;================================================================================
; scope: PAUSER (level : 2)

; activation record
%Frame_PAUSER = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_PAUSER()
{
    ; allocate frame
    %.frame = alloca %Frame_PAUSER, align 8

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 1112
;================================================================================
; scope: PRIMOV (level : 2)

; activation record
%Frame_PRIMOV = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_PRIMOV(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PRIMOV, align 8
    %t1 = getelementptr inbounds %Frame_PRIMOV, %Frame_PRIMOV* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 10)
    %t3 = getelementptr inbounds %Frame_PRIMOV, %Frame_PRIMOV* %.frame, i32 0, i32 0
    %t5 = getelementptr inbounds %T_RM, %T_RM* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t6 = load i32, i32* %t4
    call void @_WriteInteger(i8* %t2, i32 2, i32 0, i32 %t6)
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 8)
    %t7 = getelementptr inbounds %Frame_PRIMOV, %Frame_PRIMOV* %.frame, i32 0, i32 0
    %t9 = getelementptr inbounds %T_RM, %T_RM* %t7, i32 0, i32 4
    %t8 = bitcast i8* %t9 to i32*
    %t10 = load i32, i32* %t8
    call void @_WriteInteger(i8* %t2, i32 2, i32 0, i32 %t10)
    ; nop
    %t11 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t11, i32 0, i32 0, i8 46)
    call void @_WriteLn(i8* %t11)
    ; nop

    ; epilogue
    ret void
}


; line 1168
;================================================================================
; scope: PRINTB (level : 2)

; activation record
%Frame_PRINTB = type
{
    ; parameters
    %T_RC,    ; 0: A

    ; variables
    i32,    ; 1: INTF
    i32,    ; 2: INTR

    ; dummy
    i8*
};

; procedure body
define void @P_PRINTB(%T_RC %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PRINTB, align 8
    %t1 = getelementptr inbounds %Frame_PRINTB, %Frame_PRINTB* %.frame, i32 0, i32 0
    store %T_RC %A, %T_RC* %t1

    ; body
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t3)
    ; nop

    ; epilogue
    ret void
}


; line 1208
;================================================================================
; scope: PRINAM (level : 2)

; activation record
%Frame_PRINAM = type
{
    ; parameters
    %T_RX,    ; 0: A

    ; variables
    i32,    ; 1: INTF
    i32,    ; 2: INTR
    i32,    ; 3: JNTF
    i32,    ; 4: JNTR

    ; dummy
    i8*
};

; procedure body
define void @P_PRINAM(%T_RX %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PRINAM, align 8
    %t1 = getelementptr inbounds %Frame_PRINAM, %Frame_PRINAM* %.frame, i32 0, i32 0
    store %T_RX %A, %T_RX* %t1

    ; body
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; nop

    ; epilogue
    ret void
}


; line 1237
;================================================================================
; scope: PRISWI (level : 2)

; activation record
%Frame_PRISWI = type
{
    ; parameters
    %T_RA,    ; 0: A
    i1,    ; 1: B

    ; dummy
    i8*
};

; procedure body
define void @P_PRISWI(%T_RA %A, i1 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_PRISWI, align 8
    %t1 = getelementptr inbounds %Frame_PRISWI, %Frame_PRISWI* %.frame, i32 0, i32 0
    store %T_RA %A, %T_RA* %t1
    %t2 = getelementptr inbounds %Frame_PRISWI, %Frame_PRISWI* %.frame, i32 0, i32 1
    store i1 %B, i1* %t2

    ; body
    %t3 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 32)
    %t4 = getelementptr inbounds %Frame_PRISWI, %Frame_PRISWI* %.frame, i32 0, i32 0
    %t5 = getelementptr inbounds %T_RA, %T_RA* %t4, i32 0, i32 1
    %t6 = load i8, i8* %t5
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 %t6)
    %t7 = getelementptr inbounds %Frame_PRISWI, %Frame_PRISWI* %.frame, i32 0, i32 0
    %t8 = add i32 1, 1
    %t9 = getelementptr inbounds %T_RA, %T_RA* %t7, i32 0, i32 %t8
    %t10 = load i8, i8* %t9
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 %t10)
    ; nop

    ; epilogue
    ret void
}


; line 1248
;================================================================================
; scope: MBEVAL (level : 2)

; activation record
%Frame_MBEVAL = type
{
    ; variables
    i32,    ; 0: INTI

    ; dummy
    i8*
};

; procedure body
define void @P_MBEVAL()
{
    ; allocate frame
    %.frame = alloca %Frame_MBEVAL, align 8

    ; body
    %t1 = load i32, i32* @JNTK
    %t2 = getelementptr inbounds %T_array_12, %T_array_12* @MBVAL, i32 0, i32 %t1
    %t4 = load i32, i32* @FMAXMT
    %t5 = call i32 @F_MIN(i32 %t4, i32 )
    %t11 = load i32, i32* @FTRADE
    %t10 = mul i32 %t11, 
    %t13 = load i32, i32* @FTRDSL
    %t14 = load i32, i32* @MBTOT
    %t12 = sub i32 %t13, %t14
    %t9 = mul i32 %t10, %t12
    %t18 = getelementptr inbounds %Frame_MBEVAL, %Frame_MBEVAL* %.frame, i32 0, i32 0
    %t17 = load i32, i32* %t18
    %t16 = mul i32 4, %t17
    %t19 = load i32, i32* @FTRPDK
    %t15 = add i32 %t16, %t19
    %t8 = mul i32 %t9, %t15
    %t23 = getelementptr inbounds %Frame_MBEVAL, %Frame_MBEVAL* %.frame, i32 0, i32 0
    %t22 = load i32, i32* %t23
    %t21 = mul i32 4, %t22
    %t24 = load i32, i32* @FTRPWN
    %t20 = add i32 %t21, %t24
    %t7 = sdiv i32 %t8, %t20
    %t6 = sdiv i32 %t7, 262144
    %t3 = add i32 %t5, %t6
    %t25 = call i32 @F_MIN(i32 %t3, i32 16320)
    %t26 = load i32, i32* @MBLTE
    %t27 = call i32 @F_SIGN(i32 %t25, i32 %t26)
    store i32 %t27, i32* %t2
    ; nop

    ; epilogue
    ret void
}


; line 1267
;================================================================================
; scope: MBCAPT (level : 2)

; activation record
%Frame_MBCAPT = type
{
    ; parameters
    i32,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_MBCAPT(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_MBCAPT, align 8
    %t1 = getelementptr inbounds %Frame_MBCAPT, %Frame_MBCAPT* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t3 = load i32, i32* @MBTOT
    %t2 = sub i32 %t3, 
    store i32 %t2, i32* @MBTOT
    %t5 = load i32, i32* @MBLTE
    %t7 = getelementptr inbounds %Frame_MBCAPT, %Frame_MBCAPT* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t8 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t6
    %t9 = load i32, i32* %t8
    %t4 = sub i32 %t5, %t9
    store i32 %t4, i32* @MBLTE
    call void @P_MBEVAL()
    ; nop

    ; epilogue
    ret void
}


; line 1281
;================================================================================
; scope: MBTPAC (level : 2)

; activation record
%Frame_MBTPAC = type
{
    ; parameters
    i32,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_MBTPAC(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_MBTPAC, align 8
    %t1 = getelementptr inbounds %Frame_MBTPAC, %Frame_MBTPAC* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t3 = load i32, i32* @MBTOT
    %t2 = add i32 %t3, 
    store i32 %t2, i32* @MBTOT
    %t5 = load i32, i32* @MBLTE
    %t7 = getelementptr inbounds %Frame_MBTPAC, %Frame_MBTPAC* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t8 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t6
    %t9 = load i32, i32* %t8
    %t4 = add i32 %t5, %t9
    store i32 %t4, i32* @MBLTE
    ; nop

    ; epilogue
    ret void
}


; line 1294
;================================================================================
; scope: MBPROM (level : 2)

; activation record
%Frame_MBPROM = type
{
    ; parameters
    i32,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_MBPROM(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_MBPROM, align 8
    %t1 = getelementptr inbounds %Frame_MBPROM, %Frame_MBPROM* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t3 = load i32, i32* @MBTOT
    %t2 = add i32 %t3, 
    store i32 %t2, i32* @MBTOT
    %t5 = getelementptr inbounds %Frame_MBPROM, %Frame_MBPROM* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    %t6 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t4
    %t7 = load i32, i32* %t6
    %t8 = getelementptr inbounds %T_array_11, %T_array_11* @MBPWN, i32 0, i32 %t7
    %t11 = getelementptr inbounds %Frame_MBPROM, %Frame_MBPROM* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t10
    %t13 = load i32, i32* %t12
    %t14 = getelementptr inbounds %T_array_11, %T_array_11* @MBPWN, i32 0, i32 %t13
    %t15 = load i32, i32* %t14
    %t9 = sub i32 %t15, 1
    store i32 %t9, i32* %t8
    %t18 = load i32, i32* @MBLTE
    %t20 = getelementptr inbounds %Frame_MBPROM, %Frame_MBPROM* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t21 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t19
    %t22 = load i32, i32* %t21
    %t17 = add i32 %t18, %t22
    %t23 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 0
    %t25 = getelementptr inbounds %Frame_MBPROM, %Frame_MBPROM* %.frame, i32 0, i32 0
    %t24 = load i32, i32* %t25
    %t26 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t24
    %t27 = load i32, i32* %t26
    %t28 = getelementptr inbounds %T_array_46, %T_array_46* %t23, i32 0, i32 %t27
    %t29 = load i32, i32* %t28
    %t30 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t29
    %t31 = load i32, i32* %t30
    %t16 = sub i32 %t17, %t31
    store i32 %t16, i32* @MBLTE
    call void @P_MBEVAL()
    ; nop

    ; epilogue
    ret void
}


; line 1308
;================================================================================
; scope: MBMORP (level : 2)

; activation record
%Frame_MBMORP = type
{
    ; parameters
    i32,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_MBMORP(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_MBMORP, align 8
    %t1 = getelementptr inbounds %Frame_MBMORP, %Frame_MBMORP* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t3 = load i32, i32* @MBTOT
    %t2 = sub i32 %t3, 
    store i32 %t2, i32* @MBTOT
    %t5 = getelementptr inbounds %Frame_MBMORP, %Frame_MBMORP* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    %t6 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t4
    %t7 = load i32, i32* %t6
    %t8 = getelementptr inbounds %T_array_11, %T_array_11* @MBPWN, i32 0, i32 %t7
    %t11 = getelementptr inbounds %Frame_MBMORP, %Frame_MBMORP* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t10
    %t13 = load i32, i32* %t12
    %t14 = getelementptr inbounds %T_array_11, %T_array_11* @MBPWN, i32 0, i32 %t13
    %t15 = load i32, i32* %t14
    %t9 = add i32 %t15, 1
    store i32 %t9, i32* %t8
    %t17 = load i32, i32* @MBLTE
    %t20 = getelementptr inbounds %Frame_MBMORP, %Frame_MBMORP* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t21 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t19
    %t22 = load i32, i32* %t21
    %t23 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 0
    %t25 = getelementptr inbounds %Frame_MBMORP, %Frame_MBMORP* %.frame, i32 0, i32 0
    %t24 = load i32, i32* %t25
    %t26 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t24
    %t27 = load i32, i32* %t26
    %t28 = getelementptr inbounds %T_array_46, %T_array_46* %t23, i32 0, i32 %t27
    %t29 = load i32, i32* %t28
    %t30 = getelementptr inbounds %T_array_34, %T_array_34* @XTPV, i32 0, i32 %t29
    %t31 = load i32, i32* %t30
    %t18 = sub i32 %t22, %t31
    %t16 = sub i32 %t17, %t18
    store i32 %t16, i32* @MBLTE
    ; nop

    ; epilogue
    ret void
}


; line 1321
;================================================================================
; scope: ADDATK (level : 2)

; activation record
%Frame_ADDATK = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    i1,    ; 1: INTB
    i32,    ; 2: INTD
    i32,    ; 3: INTE
    i32,    ; 4: INTM
    i32,    ; 5: INTP
    i32,    ; 6: INTT

    ; dummy
    i8*
};

; procedure body
define void @P_ADDATK(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_ADDATK, align 8
    %t1 = getelementptr inbounds %Frame_ADDATK, %Frame_ADDATK* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_ADDATK, %Frame_ADDATK* %.frame, i32 0, i32 5
    %t4 = getelementptr inbounds %Frame_ADDATK, %Frame_ADDATK* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t3
    %t6 = load i32, i32* %t5
    store i32 %t6, i32* %t2
    %t7 = getelementptr inbounds %Frame_ADDATK, %Frame_ADDATK* %.frame, i32 0, i32 4
    %t9 = getelementptr inbounds %Frame_ADDATK, %Frame_ADDATK* %.frame, i32 0, i32 5
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t8
    %t11 = load i32, i32* %t10
    store i32 %t11, i32* %t7
    ; nop

    ; epilogue
    ret void
}


; line 1359
;================================================================================
; scope: ADDLOC (level : 2)

; activation record
%Frame_ADDLOC = type
{
    ; parameters
    i32,    ; 0: A
    i32,    ; 1: B

    ; dummy
    i8*
};

; procedure body
define void @P_ADDLOC(i32 %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_ADDLOC, align 8
    %t1 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 1
    store i32 %B, i32* %t2

    ; body
    %t3 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 12
    %t5 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    call void @P_CLRRS(%T_RS* %t3, i32 %t4)
    %t7 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    %t8 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t6
    %t10 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    call void @P_SETRS(%T_RS* %t8, i32 %t9)
    %t12 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 1
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t11
    %t14 = load i32, i32* %t13
    %t15 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @TMLOC, i32 0, i32 %t14
    %t17 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 0
    %t16 = load i32, i32* %t17
    call void @P_SETRS(%T_RS* %t15, i32 %t16)
    %t18 = load i32, i32* @JNTK
    %t19 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ALLOC, i32 0, i32 %t18
    %t21 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_SETRS(%T_RS* %t19, i32 %t20)
    %t23 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 0
    %t22 = load i32, i32* %t23
    %t24 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t22
    %t26 = getelementptr inbounds %Frame_ADDLOC, %Frame_ADDLOC* %.frame, i32 0, i32 1
    %t25 = load i32, i32* %t26
    store i32 %t25, i32* %t24
    ; nop

    ; epilogue
    ret void
}


; line 1372
;================================================================================
; scope: CLSTAT (level : 2)

; activation record
%Frame_CLSTAT = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_CLSTAT()
{
    ; allocate frame
    %.frame = alloca %Frame_CLSTAT, align 8

    ; body
    %t2 = getelementptr inbounds %T_RB, %T_RB* @BOARD, i32 0, i32 0
    %t1 = bitcast i8* %t2 to i32*
    store i32 0, i32* %t1
    %t4 = getelementptr inbounds %T_RB, %T_RB* @BOARD, i32 0, i32 4
    %t3 = bitcast i8* %t4 to i32*
    %t5 = sub i32 0, 1
    store i32 %t5, i32* %t3
    %t7 = getelementptr inbounds %T_RB, %T_RB* @BOARD, i32 0, i32 12
    %t6 = bitcast i8* %t7 to %T_SQ*
    store %T_SQ %.dummy_set, %T_SQ* %t6
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1384
;================================================================================
; scope: CUTATK (level : 2)

; activation record
%Frame_CUTATK = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    %T_RS,    ; 1: IMRS
    %T_RS,    ; 2: INRS
    i32,    ; 3: INTD
    i32,    ; 4: INTL
    i32,    ; 5: INTM
    i32,    ; 6: INTS
    i32,    ; 7: INTT

    ; dummy
    i8*
};

; procedure body
define void @P_CUTATK(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_CUTATK, align 8
    %t1 = getelementptr inbounds %Frame_CUTATK, %Frame_CUTATK* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_CUTATK, %Frame_CUTATK* %.frame, i32 0, i32 2
    %t4 = getelementptr inbounds %Frame_CUTATK, %Frame_CUTATK* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_RX, %T_RX* @ATKTO, i32 0, i32 %t3
    %t6 = load %T_RS, %T_RS* %t5
    call void @P_CPYRS(%T_RS* %t2, %T_RS %t6)
    ; nop

    ; epilogue
    ret void
}


; line 1428
;================================================================================
; scope: DELATK (level : 2)

; activation record
%Frame_DELATK = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    %T_RS,    ; 1: IMRS
    %T_RS,    ; 2: INRS
    i32,    ; 3: INTM
    i32,    ; 4: INTS

    ; dummy
    i8*
};

; procedure body
define void @P_DELATK(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_DELATK, align 8
    %t1 = getelementptr inbounds %Frame_DELATK, %Frame_DELATK* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_DELATK, %Frame_DELATK* %.frame, i32 0, i32 2
    %t4 = getelementptr inbounds %Frame_DELATK, %Frame_DELATK* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_RX, %T_RX* @ATKFR, i32 0, i32 %t3
    %t6 = load %T_RS, %T_RS* %t5
    call void @P_CPYRS(%T_RS* %t2, %T_RS %t6)
    %t8 = getelementptr inbounds %Frame_DELATK, %Frame_DELATK* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_RX, %T_RX* @ATKFR, i32 0, i32 %t7
    call void @P_NEWRS(%T_RS* %t9)
    %t10 = getelementptr inbounds %Frame_DELATK, %Frame_DELATK* %.frame, i32 0, i32 3
    %t12 = getelementptr inbounds %Frame_DELATK, %Frame_DELATK* %.frame, i32 0, i32 0
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t11
    %t14 = load i32, i32* %t13
    %t15 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t14
    %t16 = load i32, i32* %t15
    store i32 %t16, i32* %t10
    ; nop

    ; epilogue
    ret void
}


; line 1462
;================================================================================
; scope: PRPATK (level : 2)

; activation record
%Frame_PRPATK = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    %T_RS,    ; 1: INRS
    i32,    ; 2: INTD
    i32,    ; 3: INTL
    i32,    ; 4: INTM
    i32,    ; 5: INTS
    i32,    ; 6: INTT

    ; dummy
    i8*
};

; procedure body
define void @P_PRPATK(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PRPATK, align 8
    %t1 = getelementptr inbounds %Frame_PRPATK, %Frame_PRPATK* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_PRPATK, %Frame_PRPATK* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %Frame_PRPATK, %Frame_PRPATK* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_RX, %T_RX* @ATKTO, i32 0, i32 %t3
    %t6 = load %T_RS, %T_RS* %t5
    call void @P_CPYRS(%T_RS* %t2, %T_RS %t6)
    ; nop

    ; epilogue
    ret void
}


; line 1502
;================================================================================
; scope: GAINIT (level : 2)

; activation record
%Frame_GAINIT = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_GAINIT(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_GAINIT, align 8
    %t1 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %T_RM, %T_RM* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    %t6 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t8 = getelementptr inbounds %T_RM, %T_RM* %t6, i32 0, i32 4
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    %t10 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t9
    %t11 = load i32, i32* %t10
    call void @P_ADDLOC(i32 %t5, i32 %t11)
    %t12 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t14 = getelementptr inbounds %T_RM, %T_RM* %t12, i32 0, i32 0
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* %t13
    call void @P_ADDATK(i32 %t15)
    %t16 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t18 = getelementptr inbounds %T_RM, %T_RM* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    call void @P_CUTATK(i32 %t19)
    %t20 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t22 = getelementptr inbounds %T_RM, %T_RM* %t20, i32 0, i32 4
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    call void @P_DELATK(i32 %t23)
    %t24 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t26 = getelementptr inbounds %T_RM, %T_RM* %t24, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    %t28 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t30 = getelementptr inbounds %T_RM, %T_RM* %t28, i32 0, i32 8
    %t29 = bitcast i8* %t30 to i32*
    %t31 = load i32, i32* %t29
    call void @P_ADDLOC(i32 %t27, i32 %t31)
    %t32 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t34 = getelementptr inbounds %T_RM, %T_RM* %t32, i32 0, i32 4
    %t33 = bitcast i8* %t34 to i32*
    %t35 = load i32, i32* %t33
    call void @P_ADDATK(i32 %t35)
    %t36 = getelementptr inbounds %Frame_GAINIT, %Frame_GAINIT* %.frame, i32 0, i32 0
    %t38 = getelementptr inbounds %T_RM, %T_RM* %t36, i32 0, i32 4
    %t37 = bitcast i8* %t38 to i32*
    %t39 = load i32, i32* %t37
    %t40 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t39
    %t41 = load i32, i32* %t40
    call void @P_MBTPAC(i32 %t41)
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1520
;================================================================================
; scope: LOSEIT (level : 2)

; activation record
%Frame_LOSEIT = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_LOSEIT(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_LOSEIT, align 8
    %t1 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %T_RM, %T_RM* %t2, i32 0, i32 4
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    %t6 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t5
    %t7 = load i32, i32* %t6
    call void @P_MBCAPT(i32 %t7)
    %t8 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t10 = getelementptr inbounds %T_RM, %T_RM* %t8, i32 0, i32 4
    %t9 = bitcast i8* %t10 to i32*
    %t11 = load i32, i32* %t9
    call void @P_DELATK(i32 %t11)
    %t12 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t14 = getelementptr inbounds %T_RM, %T_RM* %t12, i32 0, i32 4
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* %t13
    %t16 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t18 = getelementptr inbounds %T_RM, %T_RM* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    %t20 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t19
    %t21 = load i32, i32* %t20
    call void @P_ADDLOC(i32 %t15, i32 %t21)
    %t22 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t24 = getelementptr inbounds %T_RM, %T_RM* %t22, i32 0, i32 0
    %t23 = bitcast i8* %t24 to i32*
    %t25 = load i32, i32* %t23
    call void @P_DELATK(i32 %t25)
    %t26 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t28 = getelementptr inbounds %T_RM, %T_RM* %t26, i32 0, i32 0
    %t27 = bitcast i8* %t28 to i32*
    %t29 = load i32, i32* %t27
    call void @P_PRPATK(i32 %t29)
    %t30 = getelementptr inbounds %Frame_LOSEIT, %Frame_LOSEIT* %.frame, i32 0, i32 0
    %t32 = getelementptr inbounds %T_RM, %T_RM* %t30, i32 0, i32 4
    %t31 = bitcast i8* %t32 to i32*
    %t33 = load i32, i32* %t31
    call void @P_ADDATK(i32 %t33)
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1540
;================================================================================
; scope: MOVEIT (level : 2)

; activation record
%Frame_MOVEIT = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_MOVEIT(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_MOVEIT, align 8
    %t1 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %T_RM, %T_RM* %t2, i32 0, i32 4
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    %t6 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    %t8 = getelementptr inbounds %T_RM, %T_RM* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    %t10 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t9
    %t11 = load i32, i32* %t10
    call void @P_ADDLOC(i32 %t5, i32 %t11)
    %t12 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    %t14 = getelementptr inbounds %T_RM, %T_RM* %t12, i32 0, i32 4
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* %t13
    call void @P_CUTATK(i32 %t15)
    %t16 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    %t18 = getelementptr inbounds %T_RM, %T_RM* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    call void @P_DELATK(i32 %t19)
    %t20 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    %t22 = getelementptr inbounds %T_RM, %T_RM* %t20, i32 0, i32 0
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    call void @P_PRPATK(i32 %t23)
    %t24 = getelementptr inbounds %Frame_MOVEIT, %Frame_MOVEIT* %.frame, i32 0, i32 0
    %t26 = getelementptr inbounds %T_RM, %T_RM* %t24, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    call void @P_ADDATK(i32 %t27)
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1558
;================================================================================
; scope: RTRKIT (level : 2)

; activation record
%Frame_RTRKIT = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_RTRKIT(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_RTRKIT, align 8
    %t1 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %T_RM, %T_RM* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    %t6 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    %t8 = getelementptr inbounds %T_RM, %T_RM* %t6, i32 0, i32 4
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    %t10 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t9
    %t11 = load i32, i32* %t10
    call void @P_ADDLOC(i32 %t5, i32 %t11)
    %t12 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    %t14 = getelementptr inbounds %T_RM, %T_RM* %t12, i32 0, i32 0
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* %t13
    call void @P_CUTATK(i32 %t15)
    %t16 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    %t18 = getelementptr inbounds %T_RM, %T_RM* %t16, i32 0, i32 4
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    call void @P_DELATK(i32 %t19)
    %t20 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    %t22 = getelementptr inbounds %T_RM, %T_RM* %t20, i32 0, i32 4
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    call void @P_PRPATK(i32 %t23)
    %t24 = getelementptr inbounds %Frame_RTRKIT, %Frame_RTRKIT* %.frame, i32 0, i32 0
    %t26 = getelementptr inbounds %T_RM, %T_RM* %t24, i32 0, i32 0
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    call void @P_ADDATK(i32 %t27)
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1578
;================================================================================
; scope: PAWNIT (level : 2)

; activation record
%Frame_PAWNIT = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_PAWNIT(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PAWNIT, align 8
    %t1 = getelementptr inbounds %Frame_PAWNIT, %Frame_PAWNIT* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_PAWNIT, %Frame_PAWNIT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %T_RM, %T_RM* %t2, i32 0, i32 4
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    %t6 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t5
    %t7 = load i32, i32* %t6
    call void @P_MBMORP(i32 %t7)
    %t8 = getelementptr inbounds %Frame_PAWNIT, %Frame_PAWNIT* %.frame, i32 0, i32 0
    %t10 = getelementptr inbounds %T_RM, %T_RM* %t8, i32 0, i32 4
    %t9 = bitcast i8* %t10 to i32*
    %t11 = load i32, i32* %t9
    %t12 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t11
    %t13 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 0
    %t14 = getelementptr inbounds %Frame_PAWNIT, %Frame_PAWNIT* %.frame, i32 0, i32 0
    %t16 = getelementptr inbounds %T_RM, %T_RM* %t14, i32 0, i32 4
    %t15 = bitcast i8* %t16 to i32*
    %t17 = load i32, i32* %t15
    %t18 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t17
    %t19 = load i32, i32* %t18
    %t20 = getelementptr inbounds %T_array_32, %T_array_32* @XTPM, i32 0, i32 %t19
    %t21 = load i32, i32* %t20
    %t22 = getelementptr inbounds %T_array_46, %T_array_46* %t13, i32 0, i32 %t21
    %t23 = load i32, i32* %t22
    store i32 %t23, i32* %t12
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1590
;================================================================================
; scope: PROACA (level : 2)

; activation record
%Frame_PROACA = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    %T_RS,    ; 1: IMRS
    %T_RS,    ; 2: INRS

    ; dummy
    i8*
};

; procedure body
define void @P_PROACA(i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PROACA, align 8
    %t1 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1

    ; body
    %t2 = load i32, i32* @JNTK
    %t3 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @CSTAT, i32 0, i32 %t2
    %t5 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    call void @P_CLRRS(%T_RS* %t3, i32 %t4)
    %t6 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 2
    %t7 = load i32, i32* @JNTK
    %t8 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @CSTAT, i32 0, i32 %t7
    %t9 = load %T_RS, %T_RS* %t8
    %t11 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_41, %T_array_41* @XTSR, i32 0, i32 %t10
    %t13 = load i32, i32* %t12
    %t14 = getelementptr inbounds %T_arraytrofrs, %T_arraytrofrs* @XRRS, i32 0, i32 %t13
    %t15 = load %T_RS, %T_RS* %t14
    call void @P_ANDRS(%T_RS* %t6, %T_RS %t9, %T_RS %t15)
    %t16 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 1
    %t18 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 2
    %t17 = load %T_RS, %T_RS* %t18
    %t19 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 7
    %t20 = load %T_RS, %T_RS* %t19
    call void @P_ANDRS(%T_RS* %t16, %T_RS %t17, %T_RS %t20)
    %t21 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 2
    %t23 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 2
    %t22 = load %T_RS, %T_RS* %t23
    %t24 = getelementptr inbounds %T_arraytfofrs, %T_arraytfofrs* @XRFS, i32 0, i32 0
    %t25 = load %T_RS, %T_RS* %t24
    call void @P_ANDRS(%T_RS* %t21, %T_RS %t22, %T_RS %t25)
    %t26 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 2
    %t28 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 2
    %t27 = load %T_RS, %T_RS* %t28
    %t30 = getelementptr inbounds %Frame_PROACA, %Frame_PROACA* %.frame, i32 0, i32 1
    %t29 = load %T_RS, %T_RS* %t30
    call void @P_IORRS(%T_RS* %t26, %T_RS %t27, %T_RS %t29)
    ; nop

    ; epilogue
    ret void
}


; line 1614
;================================================================================
; scope: PROACS (level : 2)

; activation record
%Frame_PROACS = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_PROACS(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PROACS, align 8
    %t1 = getelementptr inbounds %Frame_PROACS, %Frame_PROACS* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1629
;================================================================================
; scope: PROMOT (level : 2)

; activation record
%Frame_PROMOT = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; dummy
    i8*
};

; procedure body
define void @P_PROMOT(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_PROMOT, align 8
    %t1 = getelementptr inbounds %Frame_PROMOT, %Frame_PROMOT* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_PROMOT, %Frame_PROMOT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %T_RM, %T_RM* %t2, i32 0, i32 20
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    %t6 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 %t5
    %t7 = load i32, i32* @JNTM
    %t8 = getelementptr inbounds %T_array_26, %T_array_26* %t6, i32 0, i32 %t7
    %t9 = load i32, i32* %t8
    call void @P_MBPROM(i32 %t9)
    %t10 = getelementptr inbounds %Frame_PROMOT, %Frame_PROMOT* %.frame, i32 0, i32 0
    %t12 = getelementptr inbounds %T_RM, %T_RM* %t10, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* %t11
    %t14 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t13
    %t15 = getelementptr inbounds %Frame_PROMOT, %Frame_PROMOT* %.frame, i32 0, i32 0
    %t17 = getelementptr inbounds %T_RM, %T_RM* %t15, i32 0, i32 20
    %t16 = bitcast i8* %t17 to i32*
    %t18 = load i32, i32* %t16
    %t19 = getelementptr inbounds %T_array_25, %T_array_25* @XTGMP, i32 0, i32 %t18
    %t20 = load i32, i32* @JNTM
    %t21 = getelementptr inbounds %T_array_26, %T_array_26* %t19, i32 0, i32 %t20
    %t22 = load i32, i32* %t21
    store i32 %t22, i32* %t14
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1641
;================================================================================
; scope: CREATE (level : 2)

; activation record
%Frame_CREATE = type
{
    ; variables
    %T_RS,    ; 0: INRS
    i32,    ; 1: INTM
    i32,    ; 2: INTP
    i32,    ; 3: INTQ
    i32,    ; 4: INTS

    ; dummy
    i8*
};

; procedure body
define void @P_CREATE()
{
    ; allocate frame
    %.frame = alloca %Frame_CREATE, align 8

    ; body
    %t1 = add i32 1, 1
    store i32 %t1, i32* @JNTW
    store i32 0, i32* @JNTK
    %t3 = getelementptr inbounds %T_RB, %T_RB* @BOARD, i32 0, i32 0
    %t2 = bitcast i8* %t3 to i32*
    %t4 = load i32, i32* %t2
    store i32 %t4, i32* @JNTM
    store i32 0, i32* @NODES
    %t5 = load i32, i32* @JNTK
    %t6 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @LINDX, i32 0, i32 %t5
    %t7 = load i32, i32* @JNTW
    store i32 %t7, i32* %t6
    %t8 = load i32, i32* @JNTK
    %t9 = getelementptr inbounds %T_array_15, %T_array_15* @SRCHM, i32 0, i32 %t8
    store i32 0, i32* %t9
    %t10 = load i32, i32* @JNTK
    %t11 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ALLOC, i32 0, i32 %t10
    call void @P_NEWRS(%T_RS* %t11)
    store i32 0, i32* @MBTOT
    %t12 = getelementptr inbounds %T_array_11, %T_array_11* @MBPWN, i32 0, i32 0
    store i32 0, i32* %t12
    %t13 = getelementptr inbounds %T_array_11, %T_array_11* @MBPWN, i32 0, i32 1
    store i32 0, i32* %t13
    store i32 0, i32* @MBLTE
    call void @P_MBEVAL()
    %t14 = getelementptr inbounds %Frame_CREATE, %Frame_CREATE* %.frame, i32 0, i32 0
    %t15 = load i32, i32* @JNTK
    %t16 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ALLOC, i32 0, i32 %t15
    %t17 = load %T_RS, %T_RS* %t16
    call void @P_CPYRS(%T_RS* %t14, %T_RS %t17)
    %t18 = load i32, i32* @JNTK
    %t19 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @CSTAT, i32 0, i32 %t18
    call void @P_NEWRS(%T_RS* %t19)
    %t20 = load i32, i32* @JNTK
    %t21 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ENPAS, i32 0, i32 %t20
    call void @P_NEWRS(%T_RS* %t21)
    %t22 = load i32, i32* @JNTK
    %t23 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t22
    %t24 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 0
    %t25 = load i32, i32* @JNTM
    %t26 = getelementptr inbounds %T_array_46, %T_array_46* %t24, i32 0, i32 %t25
    %t27 = load i32, i32* %t26
    %t28 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t27
    %t29 = load %T_RS, %T_RS* %t28
    call void @P_CPYRS(%T_RS* %t23, %T_RS %t29)
    %t30 = load i32, i32* @JNTK
    %t31 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENTO, i32 0, i32 %t30
    %t32 = load i32, i32* @JNTM
    %t33 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @TMLOC, i32 0, i32 %t32
    %t34 = load %T_RS, %T_RS* %t33
    call void @P_NOTRS(%T_RS* %t31, %T_RS %t34)
    %t35 = getelementptr inbounds %Frame_CREATE, %Frame_CREATE* %.frame, i32 0, i32 0
    %t36 = load i32, i32* @JNTK
    %t37 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t36
    %t38 = load %T_RS, %T_RS* %t37
    call void @P_NOTRS(%T_RS* %t35, %T_RS %t38)
    %t39 = load i32, i32* @JNTK
    %t40 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENFR, i32 0, i32 %t39
    %t41 = load i32, i32* @JNTM
    %t42 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @TMLOC, i32 0, i32 %t41
    %t43 = load %T_RS, %T_RS* %t42
    %t45 = getelementptr inbounds %Frame_CREATE, %Frame_CREATE* %.frame, i32 0, i32 0
    %t44 = load %T_RS, %T_RS* %t45
    call void @P_ANDRS(%T_RS* %t40, %T_RS %t43, %T_RS %t44)
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1718
;================================================================================
; scope: DNDATE (level : 2)

; activation record
%Frame_DNDATE = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; variables
    i32,    ; 1: INTF
    i32,    ; 2: INTR
    i32,    ; 3: INTS
    i32,    ; 4: RKFR
    i32,    ; 5: RKTO

    ; dummy
    i8*
};

; procedure body
define void @P_DNDATE(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_DNDATE, align 8
    %t1 = getelementptr inbounds %Frame_DNDATE, %Frame_DNDATE* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t2 = load i32, i32* @JNTK
    %t3 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @LINDX, i32 0, i32 %t2
    %t4 = load i32, i32* %t3
    store i32 %t4, i32* @JNTW
    %t6 = load i32, i32* @JNTK
    %t5 = sub i32 %t6, 1
    store i32 %t5, i32* @JNTK
    %t7 = load i32, i32* @JNTM
    %t8 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 %t7
    %t9 = load i32, i32* %t8
    store i32 %t9, i32* @JNTM
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 1792
;================================================================================
; scope: UPDATE (level : 2)

; activation record
%Frame_UPDATE = type
{
    ; parameters
    %T_RM*,    ; 0: A

    ; variables
    i1,    ; 1: _fnvalue
    %T_RS,    ; 2: IMRS
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTF
    i32,    ; 5: INTR
    i32,    ; 6: INTS
    i32,    ; 7: RKFR
    i32,    ; 8: RKTO

    ; dummy
    i8*
};

; function body
define i1 @F_UPDATE(%T_RM* %A)
{
    ; allocate frame
    %.frame = alloca %Frame_UPDATE, align 8
    %t1 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 0
    store %T_RM* %A, %T_RM** %t1

    ; body
    %t3 = load i32, i32* @JNTK
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @JNTK
    %t4 = load i32, i32* @JNTK
    %t5 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ENPAS, i32 0, i32 %t4
    call void @P_NEWRS(%T_RS* %t5)
    %t6 = load i32, i32* @JNTK
    %t7 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @CSTAT, i32 0, i32 %t6
    %t9 = load i32, i32* @JNTK
    %t8 = sub i32 %t9, 1
    %t10 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @CSTAT, i32 0, i32 %t8
    %t11 = load %T_RS, %T_RS* %t10
    call void @P_CPYRS(%T_RS* %t7, %T_RS %t11)
    %t12 = load i32, i32* @JNTK
    %t13 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ALLOC, i32 0, i32 %t12
    %t15 = load i32, i32* @JNTK
    %t14 = sub i32 %t15, 1
    %t16 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ALLOC, i32 0, i32 %t14
    %t17 = load %T_RS, %T_RS* %t16
    call void @P_CPYRS(%T_RS* %t13, %T_RS %t17)
    %t18 = load i32, i32* @JNTK
    %t19 = getelementptr inbounds %T_array_12, %T_array_12* @MBVAL, i32 0, i32 %t18
    %t21 = load i32, i32* @JNTK
    %t20 = sub i32 %t21, 1
    %t22 = getelementptr inbounds %T_array_12, %T_array_12* @MBVAL, i32 0, i32 %t20
    %t23 = load i32, i32* %t22
    store i32 %t23, i32* %t19
    %t24 = load i32, i32* @JNTK
    %t25 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @LINDX, i32 0, i32 %t24
    %t26 = load i32, i32* @JNTW
    store i32 %t26, i32* %t25
    %t27 = load i32, i32* @JNTM
    %t28 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 %t27
    %t29 = load i32, i32* %t28
    store i32 %t29, i32* @JNTM
    %t30 = load i32, i32* @JNTK
    %t31 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t30
    %t32 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 0
    %t33 = load i32, i32* @JNTM
    %t34 = getelementptr inbounds %T_array_46, %T_array_46* %t32, i32 0, i32 %t33
    %t35 = load i32, i32* %t34
    %t36 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t35
    %t37 = load %T_RS, %T_RS* %t36
    call void @P_CPYRS(%T_RS* %t31, %T_RS %t37)
    %t38 = load i32, i32* @JNTK
    %t39 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENTO, i32 0, i32 %t38
    %t40 = load i32, i32* @JNTM
    %t41 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @TMLOC, i32 0, i32 %t40
    %t42 = load %T_RS, %T_RS* %t41
    call void @P_NOTRS(%T_RS* %t39, %T_RS %t42)
    %t43 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 3
    %t44 = load i32, i32* @JNTK
    %t45 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t44
    %t46 = load %T_RS, %T_RS* %t45
    call void @P_NOTRS(%T_RS* %t43, %T_RS %t46)
    %t47 = load i32, i32* @JNTK
    %t48 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENFR, i32 0, i32 %t47
    %t49 = load i32, i32* @JNTM
    %t50 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @TMLOC, i32 0, i32 %t49
    %t51 = load %T_RS, %T_RS* %t50
    %t53 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 3
    %t52 = load %T_RS, %T_RS* %t53
    call void @P_ANDRS(%T_RS* %t48, %T_RS %t51, %T_RS %t52)
    %t54 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 3
    %t55 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 5
    %t56 = load i32, i32* @JNTM
    %t57 = getelementptr inbounds %T_array_46, %T_array_46* %t55, i32 0, i32 %t56
    %t58 = load i32, i32* %t57
    %t59 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t58
    %t60 = load %T_RS, %T_RS* %t59
    %t61 = load i32, i32* @JNTM
    %t62 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 %t61
    %t63 = load i32, i32* %t62
    %t64 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @ALATK, i32 0, i32 %t63
    %t65 = load %T_RS, %T_RS* %t64
    call void @P_ANDRS(%T_RS* %t54, %T_RS %t60, %T_RS %t65)
    %t66 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 0
    %t67 = load %T_RM*, %T_RM** %t66
    %t69 = getelementptr inbounds %T_RM, %T_RM* %t67, i32 0, i32 14
    %t68 = bitcast i8* %t69 to i1*
    %t71 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 3
    %t70 = load %T_RS, %T_RS* %t71
    %t72 = call i1 @F_NULRS(%T_RS %t70)
    %t73 = icmp eq 0, %t72
    store i1 %t73, i1* %t68
    %t74 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 3
    %t75 = getelementptr inbounds %T_array_45, %T_array_45* @XTUMP, i32 0, i32 5
    %t76 = load i32, i32* @JNTM
    %t77 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 %t76
    %t78 = load i32, i32* %t77
    %t79 = getelementptr inbounds %T_array_46, %T_array_46* %t75, i32 0, i32 %t78
    %t80 = load i32, i32* %t79
    %t81 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t80
    %t82 = load %T_RS, %T_RS* %t81
    %t83 = load i32, i32* @JNTM
    %t84 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @ALATK, i32 0, i32 %t83
    %t85 = load %T_RS, %T_RS* %t84
    call void @P_ANDRS(%T_RS* %t74, %T_RS %t82, %T_RS %t85)
    %t86 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 0
    %t87 = load %T_RM*, %T_RM** %t86
    %t89 = getelementptr inbounds %T_RM, %T_RM* %t87, i32 0, i32 16
    %t88 = bitcast i8* %t89 to i1*
    %t91 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 3
    %t90 = load %T_RS, %T_RS* %t91
    %t92 = call i1 @F_NULRS(%T_RS %t90)
    %t93 = icmp eq 0, %t92
    store i1 %t93, i1* %t88
    %t94 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 1
    %t95 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 0
    %t96 = load %T_RM*, %T_RM** %t95
    %t98 = getelementptr inbounds %T_RM, %T_RM* %t96, i32 0, i32 16
    %t97 = bitcast i8* %t98 to i1*
    %t99 = load i1, i1* %t97
    %t100 = icmp eq 0, %t99
    store i1 %t100, i1* %t94
    %t101 = load i32, i32* @JNTK
    %t102 = getelementptr inbounds %T_array_15, %T_array_15* @SRCHM, i32 0, i32 %t101
    store i32 1, i32* %t102
    %t104 = load i32, i32* @NODES
    %t103 = add i32 %t104, 1
    store i32 %t103, i32* @NODES
    ; nop
    ; nop

    ; epilogue
    %t105 = getelementptr inbounds %Frame_UPDATE, %Frame_UPDATE* %.frame, i32 0, i32 1
    %t106 = load i1, i1* %t105
    ret i1 %t106
}


; line 1919
;================================================================================
; scope: GENONE (level : 2)

; activation record
%Frame_GENONE = type
{
    ; parameters
    i32,    ; 0: A
    i32,    ; 1: B

    ; variables
    %T_RS,    ; 2: INRS

    ; dummy
    i8*
};

; procedure body
define void @P_GENONE(i32 %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_GENONE, align 8
    %t1 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 0
    store i32 %A, i32* %t1
    %t2 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 1
    store i32 %B, i32* %t2

    ; body
    %t3 = load i32, i32* @JNTW
    %t4 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t3
    %t6 = getelementptr inbounds %T_RM, %T_RM* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t8 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    store i32 %t7, i32* %t5
    %t9 = load i32, i32* @JNTW
    %t10 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_RM, %T_RM* %t10, i32 0, i32 4
    %t11 = bitcast i8* %t12 to i32*
    %t14 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 1
    %t13 = load i32, i32* %t14
    store i32 %t13, i32* %t11
    %t15 = load i32, i32* @JNTW
    %t16 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t15
    %t18 = getelementptr inbounds %T_RM, %T_RM* %t16, i32 0, i32 8
    %t17 = bitcast i8* %t18 to i32*
    %t20 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 1
    %t19 = load i32, i32* %t20
    %t21 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t19
    %t22 = load i32, i32* %t21
    store i32 %t22, i32* %t17
    %t23 = load i32, i32* @JNTW
    %t24 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t23
    %t26 = getelementptr inbounds %T_RM, %T_RM* %t24, i32 0, i32 12
    %t25 = bitcast i8* %t26 to i1*
    %t29 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 1
    %t28 = load i32, i32* %t29
    %t30 = getelementptr inbounds %T_RC, %T_RC* @MBORD, i32 0, i32 %t28
    %t31 = load i32, i32* %t30
    %t27 = icmp ne i32 %t31, 12
    store i1 %t27, i1* %t25
    %t32 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 2
    %t34 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 0
    %t33 = load i32, i32* %t34
    %t35 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t33
    %t36 = load %T_RS, %T_RS* %t35
    %t38 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 1
    %t37 = load i32, i32* %t38
    %t39 = getelementptr inbounds %T_RX, %T_RX* @XRSS, i32 0, i32 %t37
    %t40 = load %T_RS, %T_RS* %t39
    call void @P_IORRS(%T_RS* %t32, %T_RS %t36, %T_RS %t40)
    %t41 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 2
    %t43 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 2
    %t42 = load %T_RS, %T_RS* %t43
    %t44 = load i32, i32* @JNTK
    %t45 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @CSTAT, i32 0, i32 %t44
    %t46 = load %T_RS, %T_RS* %t45
    call void @P_ANDRS(%T_RS* %t41, %T_RS %t42, %T_RS %t46)
    %t47 = load i32, i32* @JNTW
    %t48 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t47
    %t50 = getelementptr inbounds %T_RM, %T_RM* %t48, i32 0, i32 13
    %t49 = bitcast i8* %t50 to i1*
    %t52 = getelementptr inbounds %Frame_GENONE, %Frame_GENONE* %.frame, i32 0, i32 2
    %t51 = load %T_RS, %T_RS* %t52
    %t53 = call i1 @F_NULRS(%T_RS %t51)
    %t54 = icmp eq 0, %t53
    store i1 %t54, i1* %t49
    %t55 = load i32, i32* @JNTW
    %t56 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t55
    %t58 = getelementptr inbounds %T_RM, %T_RM* %t56, i32 0, i32 14
    %t57 = bitcast i8* %t58 to i1*
    store i1 0, i1* %t57
    %t59 = load i32, i32* @JNTW
    %t60 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t59
    %t62 = getelementptr inbounds %T_RM, %T_RM* %t60, i32 0, i32 15
    %t61 = bitcast i8* %t62 to i1*
    store i1 0, i1* %t61
    %t63 = load i32, i32* @JNTW
    %t64 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t63
    %t66 = getelementptr inbounds %T_RM, %T_RM* %t64, i32 0, i32 16
    %t65 = bitcast i8* %t66 to i1*
    store i1 0, i1* %t65
    %t67 = load i32, i32* @JNTW
    %t68 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t67
    %t70 = getelementptr inbounds %T_RM, %T_RM* %t68, i32 0, i32 17
    %t69 = bitcast i8* %t70 to i1*
    store i1 0, i1* %t69
    %t71 = load i32, i32* @JNTW
    %t72 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t71
    %t74 = getelementptr inbounds %T_RM, %T_RM* %t72, i32 0, i32 18
    %t73 = bitcast i8* %t74 to i1*
    store i1 0, i1* %t73
    %t75 = load i32, i32* @JNTW
    %t76 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t75
    %t78 = getelementptr inbounds %T_RM, %T_RM* %t76, i32 0, i32 19
    %t77 = bitcast i8* %t78 to i1*
    store i1 0, i1* %t77
    %t79 = load i32, i32* @JNTW
    %t80 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t79
    %t82 = getelementptr inbounds %T_RM, %T_RM* %t80, i32 0, i32 20
    %t81 = bitcast i8* %t82 to i1*
    store i1 0, i1* %t81
    ; nop
    %t83 = load i32, i32* @JNTW
    %t84 = getelementptr inbounds %T_RE, %T_RE* @VALUE, i32 0, i32 %t83
    store i32 0, i32* %t84
    ; nop

    ; epilogue
    ret void
}


; line 1950
;================================================================================
; scope: PWNPRO (level : 2)

; activation record
%Frame_PWNPRO = type
{
    ; variables
    i32,    ; 0: INTG

    ; dummy
    i8*
};

; procedure body
define void @P_PWNPRO()
{
    ; allocate frame
    %.frame = alloca %Frame_PWNPRO, align 8

    ; body
    %t2 = load i32, i32* @JNTW
    %t1 = sub i32 %t2, 1
    %t3 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t1
    %t5 = getelementptr inbounds %T_RM, %T_RM* %t3, i32 0, i32 18
    %t4 = bitcast i8* %t5 to i1*
    store i1 1, i1* %t4
    %t7 = load i32, i32* @JNTW
    %t6 = sub i32 %t7, 1
    %t8 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t6
    %t10 = getelementptr inbounds %T_RM, %T_RM* %t8, i32 0, i32 20
    %t9 = bitcast i8* %t10 to i32*
    store i32 0, i32* %t9
    ; nop

    ; epilogue
    ret void
}


; line 1967
;================================================================================
; scope: GENPWN (level : 2)

; activation record
%Frame_GENPWN = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS,    ; 1: B

    ; variables
    %T_RS,    ; 2: IMRS
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTS

    ; dummy
    i8*
};

; procedure body
define void @P_GENPWN(%T_RS %A, %T_RS %B)
{
    ; allocate frame
    %.frame = alloca %Frame_GENPWN, align 8
    %t1 = getelementptr inbounds %Frame_GENPWN, %Frame_GENPWN* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1
    %t2 = getelementptr inbounds %Frame_GENPWN, %Frame_GENPWN* %.frame, i32 0, i32 1
    store %T_RS %B, %T_RS* %t2

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 2095
;================================================================================
; scope: GENFSL (level : 2)

; activation record
%Frame_GENFSL = type
{
    ; parameters
    %T_RS,    ; 0: A

    ; variables
    %T_RS,    ; 1: IMRS
    i32,    ; 2: IMTS
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTS
    %T_RS,    ; 5: IPRS

    ; dummy
    i8*
};

; procedure body
define void @P_GENFSL(%T_RS %A)
{
    ; allocate frame
    %.frame = alloca %Frame_GENFSL, align 8
    %t1 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 3
    %t4 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 0
    %t3 = load %T_RS, %T_RS* %t4
    %t5 = load i32, i32* @JNTK
    %t6 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENFR, i32 0, i32 %t5
    %t7 = load %T_RS, %T_RS* %t6
    call void @P_ANDRS(%T_RS* %t2, %T_RS %t3, %T_RS %t7)
    %t8 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 0
    %t9 = load %T_RS, %T_RS* %t10
    call void @P_NOTRS(%T_RS* %t8, %T_RS %t9)
    %t11 = load i32, i32* @JNTK
    %t12 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENFR, i32 0, i32 %t11
    %t13 = load i32, i32* @JNTK
    %t14 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENFR, i32 0, i32 %t13
    %t15 = load %T_RS, %T_RS* %t14
    %t17 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 1
    %t16 = load %T_RS, %T_RS* %t17
    call void @P_ANDRS(%T_RS* %t12, %T_RS %t15, %T_RS %t16)
    %t18 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 5
    %t20 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 0
    %t19 = load %T_RS, %T_RS* %t20
    %t21 = load i32, i32* @JNTK
    %t22 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t21
    %t23 = load %T_RS, %T_RS* %t22
    call void @P_ANDRS(%T_RS* %t18, %T_RS %t19, %T_RS %t23)
    %t24 = load i32, i32* @JNTK
    %t25 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t24
    %t26 = load i32, i32* @JNTK
    %t27 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t26
    %t28 = load %T_RS, %T_RS* %t27
    %t30 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 1
    %t29 = load %T_RS, %T_RS* %t30
    call void @P_ANDRS(%T_RS* %t25, %T_RS %t28, %T_RS %t29)
    %t32 = getelementptr inbounds %Frame_GENFSL, %Frame_GENFSL* %.frame, i32 0, i32 5
    %t31 = load %T_RS, %T_RS* %t32
    %t33 = load i32, i32* @JNTK
    %t34 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENTO, i32 0, i32 %t33
    %t35 = load %T_RS, %T_RS* %t34
    call void @P_GENPWN(%T_RS %t31, %T_RS %t35)
    ; nop

    ; epilogue
    ret void
}


; line 2124
;================================================================================
; scope: GENTSL (level : 2)

; activation record
%Frame_GENTSL = type
{
    ; parameters
    %T_RS,    ; 0: A

    ; variables
    %T_RS,    ; 1: IMRS
    i32,    ; 2: IMTS
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTS
    %T_RS,    ; 5: IPRS

    ; dummy
    i8*
};

; procedure body
define void @P_GENTSL(%T_RS %A)
{
    ; allocate frame
    %.frame = alloca %Frame_GENTSL, align 8
    %t1 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 3
    %t4 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 0
    %t3 = load %T_RS, %T_RS* %t4
    %t5 = load i32, i32* @JNTK
    %t6 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENTO, i32 0, i32 %t5
    %t7 = load %T_RS, %T_RS* %t6
    call void @P_ANDRS(%T_RS* %t2, %T_RS %t3, %T_RS %t7)
    %t8 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 0
    %t9 = load %T_RS, %T_RS* %t10
    call void @P_NOTRS(%T_RS* %t8, %T_RS %t9)
    %t11 = load i32, i32* @JNTK
    %t12 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENTO, i32 0, i32 %t11
    %t13 = load i32, i32* @JNTK
    %t14 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENTO, i32 0, i32 %t13
    %t15 = load %T_RS, %T_RS* %t14
    %t17 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 1
    %t16 = load %T_RS, %T_RS* %t17
    call void @P_ANDRS(%T_RS* %t12, %T_RS %t15, %T_RS %t16)
    %t18 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 5
    %t20 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 3
    %t19 = load %T_RS, %T_RS* %t20
    call void @P_CPYRS(%T_RS* %t18, %T_RS %t19)
    %t21 = load i32, i32* @JNTK
    %t22 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @GENPN, i32 0, i32 %t21
    %t23 = load %T_RS, %T_RS* %t22
    %t25 = getelementptr inbounds %Frame_GENTSL, %Frame_GENTSL* %.frame, i32 0, i32 5
    %t24 = load %T_RS, %T_RS* %t25
    call void @P_GENPWN(%T_RS %t23, %T_RS %t24)
    ; nop

    ; epilogue
    ret void
}


; line 2151
;================================================================================
; scope: GENCAP (level : 2)

; activation record
%Frame_GENCAP = type
{
    ; variables
    %T_RS,    ; 0: INRS

    ; dummy
    i8*
};

; procedure body
define void @P_GENCAP()
{
    ; allocate frame
    %.frame = alloca %Frame_GENCAP, align 8

    ; body
    %t1 = getelementptr inbounds %Frame_GENCAP, %Frame_GENCAP* %.frame, i32 0, i32 0
    %t2 = load i32, i32* @JNTK
    %t3 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ENPAS, i32 0, i32 %t2
    %t4 = load %T_RS, %T_RS* %t3
    %t5 = load i32, i32* @JNTM
    %t6 = getelementptr inbounds %T_array_14, %T_array_14* @OTHER, i32 0, i32 %t5
    %t7 = load i32, i32* %t6
    %t8 = getelementptr inbounds %T_arraytmofrs, %T_arraytmofrs* @TMLOC, i32 0, i32 %t7
    %t9 = load %T_RS, %T_RS* %t8
    call void @P_IORRS(%T_RS* %t1, %T_RS %t4, %T_RS %t9)
    %t11 = getelementptr inbounds %Frame_GENCAP, %Frame_GENCAP* %.frame, i32 0, i32 0
    %t10 = load %T_RS, %T_RS* %t11
    call void @P_GENTSL(%T_RS %t10)
    ; nop

    ; epilogue
    ret void
}


; line 2163
;================================================================================
; scope: GENCAS (level : 2)

; activation record
%Frame_GENCAS = type
{
    ; variables
    %T_RS,    ; 0: IMRS
    %T_RS,    ; 1: INRS
    i32,    ; 2: INTQ

    ; dummy
    i8*
};

; procedure body
define void @P_GENCAS()
{
    ; allocate frame
    %.frame = alloca %Frame_GENCAS, align 8

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 2191
;================================================================================
; scope: GENALL (level : 2)

; activation record
%Frame_GENALL = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_GENALL()
{
    ; allocate frame
    %.frame = alloca %Frame_GENALL, align 8

    ; body
    %t1 = load i32, i32* @JNTK
    %t2 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ALLOC, i32 0, i32 %t1
    %t3 = load %T_RS, %T_RS* %t2
    call void @P_GENFSL(%T_RS %t3)
    call void @P_GENCAS()
    ; nop

    ; epilogue
    ret void
}


; line 2199
;================================================================================
; scope: LSTMOV (level : 2)

; activation record
%Frame_LSTMOV = type
{
    ; variables
    i32,    ; 0: INTW

    ; dummy
    i8*
};

; procedure body
define void @P_LSTMOV()
{
    ; allocate frame
    %.frame = alloca %Frame_LSTMOV, align 8

    ; body
    call void @P_CREATE()
    call void @P_GENALL()
    ; nop

    ; epilogue
    ret void
}


; line 2215
;================================================================================
; scope: THEMOV (level : 2)

; activation record
%Frame_THEMOV = type
{
    ; parameters
    %T_RM,    ; 0: A

    ; variables
    %T_RS,    ; 1: INRS
    i1,    ; 2: INTB
    i32,    ; 3: INTQ
    i32,    ; 4: INTS

    ; dummy
    i8*
};

; procedure body
define void @P_THEMOV(%T_RM %A)
{
    ; allocate frame
    %.frame = alloca %Frame_THEMOV, align 8
    %t1 = getelementptr inbounds %Frame_THEMOV, %Frame_THEMOV* %.frame, i32 0, i32 0
    store %T_RM %A, %T_RM* %t1

    ; body
    %t3 = getelementptr inbounds %Frame_THEMOV, %Frame_THEMOV* %.frame, i32 0, i32 0
    %t2 = load %T_RM, %T_RM* %t3
    store %T_RM %t2, %T_RM* @LSTMV
    %t4 = getelementptr inbounds %Frame_THEMOV, %Frame_THEMOV* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %Frame_THEMOV, %Frame_THEMOV* %.frame, i32 0, i32 0
    %t6 = call i1 @F_UPDATE(%T_RM* %t5)
    store i1 %t6, i1* %t4
    %t8 = getelementptr inbounds %T_RB, %T_RB* @BOARD, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* @JNTM
    store i32 %t9, i32* %t7
    %t10 = getelementptr inbounds %Frame_THEMOV, %Frame_THEMOV* %.frame, i32 0, i32 1
    %t11 = load i32, i32* @JNTK
    %t12 = getelementptr inbounds %T_arraytkofrs, %T_arraytkofrs* @ENPAS, i32 0, i32 %t11
    %t13 = load %T_RS, %T_RS* %t12
    call void @P_CPYRS(%T_RS* %t10, %T_RS %t13)
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 2249
;================================================================================
; scope: EVALU8 (level : 2)

; activation record
%Frame_EVALU8 = type
{
    ; variables
    i32,    ; 0: INTV

    ; dummy
    i8*
};

; procedure body
define void @P_EVALU8()
{
    ; allocate frame
    %.frame = alloca %Frame_EVALU8, align 8

    ; body
    %t1 = load i32, i32* @JNTK
    %t2 = getelementptr inbounds %T_array_9, %T_array_9* @INDEX, i32 0, i32 %t1
    %t3 = load i32, i32* %t2
    %t4 = getelementptr inbounds %T_RE, %T_RE* @VALUE, i32 0, i32 %t3
    %t6 = getelementptr inbounds %Frame_EVALU8, %Frame_EVALU8* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4
    ; nop

    ; epilogue
    ret void
}


; line 2254
;================================================================================
; scope: EVALU8_EVKING (level : 3)

; activation record
%Frame_EVALU8_EVKING = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS,    ; 1: B

    ; variables
    i32,    ; 2: _fnvalue
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTS
    i32,    ; 5: INTV

    ; slink
    %Frame_EVALU8*    ; 6
};

; function body
define i32 @F_EVALU8_EVKING(%Frame_EVALU8* %.slink, %T_RS %A, %T_RS %B)
{
    ; allocate frame
    %.frame = alloca %Frame_EVALU8_EVKING, align 8
    %t1 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 6
    store %Frame_EVALU8* %.slink, %Frame_EVALU8** %t1
    %t2 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t2
    %t3 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 1
    store %T_RS %B, %T_RS* %t3

    ; body
    %t4 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 0
    %t5 = load %T_RS, %T_RS* %t6
    %t7 = load %T_RS, %T_RS* @CORNR
    call void @P_ANDRS(%T_RS* %t4, %T_RS %t5, %T_RS %t7)
    %t8 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 0
    %t9 = load %T_RS, %T_RS* %t10
    store %T_RS %t9, %T_RS* %t8
    %t11 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 2
    %t13 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 5
    %t12 = load i32, i32* %t13
    store i32 %t12, i32* %t11
    ; nop

    ; epilogue
    %t14 = getelementptr inbounds %Frame_EVALU8_EVKING, %Frame_EVALU8_EVKING* %.frame, i32 0, i32 2
    %t15 = load i32, i32* %t14
    ret i32 %t15
}


; line 2280
;================================================================================
; scope: EVALU8_EVMOBL (level : 3)

; activation record
%Frame_EVALU8_EVMOBL = type
{
    ; parameters
    i32,    ; 0: A
    i32,    ; 1: B

    ; variables
    i32,    ; 2: _fnvalue
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTS
    i32,    ; 5: INTV

    ; slink
    %Frame_EVALU8*    ; 6
};

; function body
define i32 @F_EVALU8_EVMOBL(%Frame_EVALU8* %.slink, i32 %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_EVALU8_EVMOBL, align 8
    %t1 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 6
    store %Frame_EVALU8* %.slink, %Frame_EVALU8** %t1
    %t2 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2
    %t3 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 1
    store i32 %B, i32* %t3

    ; body
    %t4 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    %t7 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t5
    %t8 = load %T_RS, %T_RS* %t7
    %t10 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 1
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 %t9
    %t12 = load %T_RS, %T_RS* %t11
    call void @P_IORRS(%T_RS* %t4, %T_RS %t8, %T_RS %t12)
    %t13 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 5
    store i32 0, i32* %t13
    %t14 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 2
    %t16 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 5
    %t15 = load i32, i32* %t16
    store i32 %t15, i32* %t14
    ; nop

    ; epilogue
    %t17 = getelementptr inbounds %Frame_EVALU8_EVMOBL, %Frame_EVALU8_EVMOBL* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t17
    ret i32 %t18
}


; line 2297
;================================================================================
; scope: EVALU8_EVPAWN (level : 3)

; activation record
%Frame_EVALU8_EVPAWN = type
{
    ; parameters
    %T_RS,    ; 0: A
    i32,    ; 1: B
    i32,    ; 2: C

    ; variables
    i32,    ; 3: _fnvalue
    %T_RS,    ; 4: IMRS
    %T_RS,    ; 5: INRS
    i32,    ; 6: INTS
    i32,    ; 7: INTV

    ; slink
    %Frame_EVALU8*    ; 8
};

; function body
define i32 @F_EVALU8_EVPAWN(%Frame_EVALU8* %.slink, %T_RS %A, i32 %B, i32 %C)
{
    ; allocate frame
    %.frame = alloca %Frame_EVALU8_EVPAWN, align 8
    %t1 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 8
    store %Frame_EVALU8* %.slink, %Frame_EVALU8** %t1
    %t2 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t2
    %t3 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 1
    store i32 %B, i32* %t3
    %t4 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 2
    store i32 %C, i32* %t4

    ; body
    %t5 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t7 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t6 = load %T_RS, %T_RS* %t7
    call void @P_SFTRS(%T_RS* %t5, %T_RS %t6, i32 4)
    %t8 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t10 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t9 = load %T_RS, %T_RS* %t10
    %t12 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t11 = load %T_RS, %T_RS* %t12
    call void @P_ANDRS(%T_RS* %t8, %T_RS %t9, %T_RS %t11)
    %t13 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t16 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t15 = load %T_RS, %T_RS* %t16
    %t17 = call i32 @F_CNTRS(%T_RS %t15)
    %t18 = load i32, i32* @FPFLNX
    %t14 = mul i32 %t17, %t18
    store i32 %t14, i32* %t13
    %t19 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t21 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t20 = load %T_RS, %T_RS* %t21
    call void @P_SFTRS(%T_RS* %t19, %T_RS %t20, i32 0)
    %t22 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t24 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t23 = load %T_RS, %T_RS* %t24
    %t26 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t25 = load %T_RS, %T_RS* %t26
    call void @P_ANDRS(%T_RS* %t22, %T_RS %t23, %T_RS %t25)
    %t27 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t30 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t29 = load i32, i32* %t30
    %t33 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t32 = load %T_RS, %T_RS* %t33
    %t34 = call i32 @F_CNTRS(%T_RS %t32)
    %t35 = load i32, i32* @FPCONN
    %t31 = mul i32 %t34, %t35
    %t28 = add i32 %t29, %t31
    store i32 %t28, i32* %t27
    %t36 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t38 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t37 = load %T_RS, %T_RS* %t38
    call void @P_SFTRS(%T_RS* %t36, %T_RS %t37, i32 1)
    %t39 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t41 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t40 = load %T_RS, %T_RS* %t41
    %t43 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t42 = load %T_RS, %T_RS* %t43
    call void @P_ANDRS(%T_RS* %t39, %T_RS %t40, %T_RS %t42)
    %t44 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t47 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t46 = load i32, i32* %t47
    %t50 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t49 = load %T_RS, %T_RS* %t50
    %t51 = call i32 @F_CNTRS(%T_RS %t49)
    %t52 = load i32, i32* @FPCONN
    %t48 = mul i32 %t51, %t52
    %t45 = add i32 %t46, %t48
    store i32 %t45, i32* %t44
    %t53 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t55 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t54 = load %T_RS, %T_RS* %t55
    %t57 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 1
    %t56 = load i32, i32* %t57
    call void @P_SFTRS(%T_RS* %t53, %T_RS %t54, i32 %t56)
    %t58 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 4
    %t59 = getelementptr inbounds %T_array_17, %T_array_17* @TPLOC, i32 0, i32 12
    %t60 = load %T_RS, %T_RS* %t59
    call void @P_NOTRS(%T_RS* %t58, %T_RS %t60)
    %t61 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t63 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t62 = load %T_RS, %T_RS* %t63
    %t65 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 4
    %t64 = load %T_RS, %T_RS* %t65
    call void @P_ANDRS(%T_RS* %t61, %T_RS %t62, %T_RS %t64)
    %t66 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t69 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t68 = load i32, i32* %t69
    %t72 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t71 = load %T_RS, %T_RS* %t72
    %t73 = call i32 @F_CNTRS(%T_RS %t71)
    %t74 = load i32, i32* @FPBLOK
    %t70 = mul i32 %t73, %t74
    %t67 = sub i32 %t68, %t70
    store i32 %t67, i32* %t66
    %t75 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 5
    %t77 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 0
    %t76 = load %T_RS, %T_RS* %t77
    call void @P_CPYRS(%T_RS* %t75, %T_RS %t76)
    %t78 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 3
    %t80 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 7
    %t79 = load i32, i32* %t80
    store i32 %t79, i32* %t78
    ; nop

    ; epilogue
    %t81 = getelementptr inbounds %Frame_EVALU8_EVPAWN, %Frame_EVALU8_EVPAWN* %.frame, i32 0, i32 3
    %t82 = load i32, i32* %t81
    ret i32 %t82
}


; line 2332
;================================================================================
; scope: EVALU8_EVROOK (level : 3)

; activation record
%Frame_EVALU8_EVROOK = type
{
    ; parameters
    %T_RS,    ; 0: A
    %T_RS,    ; 1: B

    ; variables
    i32,    ; 2: _fnvalue
    %T_RS,    ; 3: INRS
    i32,    ; 4: INTI
    i32,    ; 5: INTS
    i32,    ; 6: INTV

    ; slink
    %Frame_EVALU8*    ; 7
};

; function body
define i32 @F_EVALU8_EVROOK(%Frame_EVALU8* %.slink, %T_RS %A, %T_RS %B)
{
    ; allocate frame
    %.frame = alloca %Frame_EVALU8_EVROOK, align 8
    %t1 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 7
    store %Frame_EVALU8* %.slink, %Frame_EVALU8** %t1
    %t2 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 0
    store %T_RS %A, %T_RS* %t2
    %t3 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 1
    store %T_RS %B, %T_RS* %t3

    ; body
    %t4 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 6
    store i32 0, i32* %t4
    %t5 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 3
    %t7 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 0
    %t6 = load %T_RS, %T_RS* %t7
    store %T_RS %t6, %T_RS* %t5
    %t8 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 0
    %t9 = load %T_RS, %T_RS* %t10
    %t12 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 1
    %t11 = load %T_RS, %T_RS* %t12
    call void @P_ANDRS(%T_RS* %t8, %T_RS %t9, %T_RS %t11)
    %t13 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 4
    %t15 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 3
    %t14 = load %T_RS, %T_RS* %t15
    %t16 = call i32 @F_CNTRS(%T_RS %t14)
    store i32 %t16, i32* %t13
    %t17 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 2
    %t20 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 6
    %t19 = load i32, i32* %t20
    %t24 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 4
    %t23 = load i32, i32* %t24
    %t26 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 4
    %t25 = load i32, i32* %t26
    %t22 = mul i32 %t23, %t25
    %t27 = load i32, i32* @FRK7TH
    %t21 = mul i32 %t22, %t27
    %t18 = add i32 %t19, %t21
    store i32 %t18, i32* %t17
    ; nop

    ; epilogue
    %t28 = getelementptr inbounds %Frame_EVALU8_EVROOK, %Frame_EVALU8_EVROOK* %.frame, i32 0, i32 2
    %t29 = load i32, i32* %t28
    ret i32 %t29
}


; line 2382
;================================================================================
; scope: SEARCH (level : 2)

; activation record
%Frame_SEARCH = type
{
    ; variables
    i32,    ; 0: _fnvalue
    i1,    ; 1: jumpin

    ; dummy
    i8*
};

; function body
define i32 @F_SEARCH()
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH, align 8

    ; body
    %t1 = getelementptr inbounds %Frame_SEARCH, %Frame_SEARCH* %.frame, i32 0, i32 1
    store i1 0, i1* %t1
    %t2 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @BSTMV, i32 0, i32 0
    store i32 1, i32* %t2
    %t3 = load i32, i32* @JNTK
    %t4 = getelementptr inbounds %T_array_9, %T_array_9* @INDEX, i32 0, i32 %t3
    store i32 1, i32* %t4
    %t5 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 1
    %t6 = load %T_RM, %T_RM* @LSTMV
    store %T_RM %t6, %T_RM* %t5
    call void @P_EVALU8()
    %t7 = sub i32 0, 2
    %t8 = getelementptr inbounds %T_array_6, %T_array_6* @BSTVL, i32 0, i32 %t7
    %t10 = getelementptr inbounds %T_RE, %T_RE* @VALUE, i32 0, i32 1
    %t11 = load i32, i32* %t10
    %t12 = load i32, i32* @WINDOW
    %t9 = sub i32 %t11, %t12
    store i32 %t9, i32* %t8
    %t13 = sub i32 0, 1
    %t14 = getelementptr inbounds %T_array_6, %T_array_6* @BSTVL, i32 0, i32 %t13
    %t16 = getelementptr inbounds %T_RE, %T_RE* @VALUE, i32 0, i32 1
    %t17 = load i32, i32* %t16
    %t18 = sub i32 0, %t17
    %t19 = load i32, i32* @WINDOW
    %t15 = sub i32 %t18, %t19
    store i32 %t15, i32* %t14
    %t20 = add i32 0, 1
    store i32 %t20, i32* @JMTK
    %t21 = getelementptr inbounds %Frame_SEARCH, %Frame_SEARCH* %.frame, i32 0, i32 0
    %t22 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @BSTMV, i32 0, i32 0
    %t23 = load i32, i32* %t22
    store i32 %t23, i32* %t21
    ; nop

    ; epilogue
    %t24 = getelementptr inbounds %Frame_SEARCH, %Frame_SEARCH* %.frame, i32 0, i32 0
    %t25 = load i32, i32* %t24
    ret i32 %t25
}


; line 2395
;================================================================================
; scope: SEARCH_NEWBST (level : 3)

; activation record
%Frame_SEARCH_NEWBST = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    %T_RM,    ; 1: INRM
    i32,    ; 2: INTW

    ; slink
    %Frame_SEARCH*    ; 3
};

; procedure body
define void @P_SEARCH_NEWBST(%Frame_SEARCH* %.slink, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_NEWBST, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_NEWBST, %Frame_SEARCH_NEWBST* %.frame, i32 0, i32 3
    store %Frame_SEARCH* %.slink, %Frame_SEARCH** %t1
    %t2 = getelementptr inbounds %Frame_SEARCH_NEWBST, %Frame_SEARCH_NEWBST* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2

    ; body
    %t4 = getelementptr inbounds %Frame_SEARCH_NEWBST, %Frame_SEARCH_NEWBST* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t4
    %t5 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @BSTMV, i32 0, i32 %t3
    %t8 = getelementptr inbounds %Frame_SEARCH_NEWBST, %Frame_SEARCH_NEWBST* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t6 = add i32 %t7, 1
    %t9 = getelementptr inbounds %T_array_9, %T_array_9* @INDEX, i32 0, i32 %t6
    %t10 = load i32, i32* %t9
    store i32 %t10, i32* %t5
    ; nop

    ; epilogue
    ret void
}


; line 2418
;================================================================================
; scope: SEARCH_MINMAX (level : 3)

; activation record
%Frame_SEARCH_MINMAX = type
{
    ; parameters
    i32,    ; 0: A

    ; variables
    i1,    ; 1: _fnvalue

    ; slink
    %Frame_SEARCH*    ; 2
};

; function body
define i1 @F_SEARCH_MINMAX(%Frame_SEARCH* %.slink, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_MINMAX, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_MINMAX, %Frame_SEARCH_MINMAX* %.frame, i32 0, i32 2
    store %Frame_SEARCH* %.slink, %Frame_SEARCH** %t1
    %t2 = getelementptr inbounds %Frame_SEARCH_MINMAX, %Frame_SEARCH_MINMAX* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2

    ; body
    %t3 = getelementptr inbounds %Frame_SEARCH_MINMAX, %Frame_SEARCH_MINMAX* %.frame, i32 0, i32 1
    store i1 0, i1* %t3
    ; nop

    ; epilogue
    %t4 = getelementptr inbounds %Frame_SEARCH_MINMAX, %Frame_SEARCH_MINMAX* %.frame, i32 0, i32 1
    %t5 = load i1, i1* %t4
    ret i1 %t5
}


; line 2440
;================================================================================
; scope: SEARCH_SCOREM (level : 3)

; activation record
%Frame_SEARCH_SCOREM = type
{
    ; slink
    %Frame_SEARCH*    ; 0
};

; procedure body
define void @P_SEARCH_SCOREM(%Frame_SEARCH* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_SCOREM, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_SCOREM, %Frame_SEARCH_SCOREM* %.frame, i32 0, i32 0
    store %Frame_SEARCH* %.slink, %Frame_SEARCH** %t1

    ; body
    %t2 = load i32, i32* @JNTK
    %t3 = getelementptr inbounds %T_array_9, %T_array_9* @INDEX, i32 0, i32 %t2
    %t4 = load i32, i32* %t3
    %t5 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t4
    %t7 = getelementptr inbounds %T_RM, %T_RM* %t5, i32 0, i32 15
    %t6 = bitcast i8* %t7 to i1*
    store i1 1, i1* %t6
    ; nop

    ; epilogue
    ret void
}


; line 2453
;================================================================================
; scope: SEARCH_SELECT (level : 3)

; activation record
%Frame_SEARCH_SELECT = type
{
    ; variables
    i1,    ; 0: _fnvalue
    i32,    ; 1: IMTW
    i1,    ; 2: INTB
    i32,    ; 3: INTK
    i32,    ; 4: INTV
    i32,    ; 5: INTW

    ; slink
    %Frame_SEARCH*    ; 6
};

; function body
define i1 @F_SEARCH_SELECT(%Frame_SEARCH* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_SELECT, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_SELECT, %Frame_SEARCH_SELECT* %.frame, i32 0, i32 6
    store %Frame_SEARCH* %.slink, %Frame_SEARCH** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_SEARCH_SELECT, %Frame_SEARCH_SELECT* %.frame, i32 0, i32 0
    %t4 = getelementptr inbounds %Frame_SEARCH_SELECT, %Frame_SEARCH_SELECT* %.frame, i32 0, i32 2
    %t3 = load i1, i1* %t4
    store i1 %t3, i1* %t2
    ; nop

    ; epilogue
    %t5 = getelementptr inbounds %Frame_SEARCH_SELECT, %Frame_SEARCH_SELECT* %.frame, i32 0, i32 0
    %t6 = load i1, i1* %t5
    ret i1 %t6
}


; line 2467
;================================================================================
; scope: SEARCH_SELECT_SELDON (level : 4)

; activation record
%Frame_SEARCH_SELECT_SELDON = type
{
    ; slink
    %Frame_SEARCH_SELECT*    ; 0
};

; procedure body
define void @P_SEARCH_SELECT_SELDON(%Frame_SEARCH_SELECT* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_SELECT_SELDON, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_SELECT_SELDON, %Frame_SEARCH_SELECT_SELDON* %.frame, i32 0, i32 0
    store %Frame_SEARCH_SELECT* %.slink, %Frame_SEARCH_SELECT** %t1

    ; body
    %t3 = getelementptr inbounds %Frame_SEARCH_SELECT_SELDON, %Frame_SEARCH_SELECT_SELDON* %.frame, i32 0, i32 0
    %t4 = load %Frame_SEARCH_SELECT*, %Frame_SEARCH_SELECT** %t3
    %t2 = getelementptr inbounds %Frame_SEARCH_SELECT, %Frame_SEARCH_SELECT* %t4, i32 0, i32 2
    store i1 0, i1* %t2
    ; nop

    ; epilogue
    ret void
}


; line 2482
;================================================================================
; scope: SEARCH_SELECT_SELMOV (level : 4)

; activation record
%Frame_SEARCH_SELECT_SELMOV = type
{
    ; parameters
    i32,    ; 0: A

    ; slink
    %Frame_SEARCH_SELECT*    ; 1
};

; procedure body
define void @P_SEARCH_SELECT_SELMOV(%Frame_SEARCH_SELECT* %.slink, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_SELECT_SELMOV, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_SELECT_SELMOV, %Frame_SEARCH_SELECT_SELMOV* %.frame, i32 0, i32 1
    store %Frame_SEARCH_SELECT* %.slink, %Frame_SEARCH_SELECT** %t1
    %t2 = getelementptr inbounds %Frame_SEARCH_SELECT_SELMOV, %Frame_SEARCH_SELECT_SELMOV* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2

    ; body
    %t4 = getelementptr inbounds %Frame_SEARCH_SELECT_SELMOV, %Frame_SEARCH_SELECT_SELMOV* %.frame, i32 0, i32 1
    %t5 = load %Frame_SEARCH_SELECT*, %Frame_SEARCH_SELECT** %t4
    %t3 = getelementptr inbounds %Frame_SEARCH_SELECT, %Frame_SEARCH_SELECT* %t5, i32 0, i32 2
    store i1 1, i1* %t3
    %t7 = load i32, i32* @JNTK
    %t6 = add i32 %t7, 1
    %t8 = getelementptr inbounds %T_array_9, %T_array_9* @INDEX, i32 0, i32 %t6
    %t10 = getelementptr inbounds %Frame_SEARCH_SELECT_SELMOV, %Frame_SEARCH_SELECT_SELMOV* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t8
    %t12 = getelementptr inbounds %Frame_SEARCH_SELECT_SELMOV, %Frame_SEARCH_SELECT_SELMOV* %.frame, i32 0, i32 0
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_RF, %T_RF* @MOVES, i32 0, i32 %t11
    %t15 = getelementptr inbounds %T_RM, %T_RM* %t13, i32 0, i32 17
    %t14 = bitcast i8* %t15 to i1*
    store i1 1, i1* %t14
    ; nop

    ; epilogue
    ret void
}


; line 2501
;================================================================================
; scope: SEARCH_SELECT_SELNXT (level : 4)

; activation record
%Frame_SEARCH_SELECT_SELNXT = type
{
    ; parameters
    i32,    ; 0: A

    ; slink
    %Frame_SEARCH_SELECT*    ; 1
};

; procedure body
define void @P_SEARCH_SELECT_SELNXT(%Frame_SEARCH_SELECT* %.slink, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_SELECT_SELNXT, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_SELECT_SELNXT, %Frame_SEARCH_SELECT_SELNXT* %.frame, i32 0, i32 1
    store %Frame_SEARCH_SELECT* %.slink, %Frame_SEARCH_SELECT** %t1
    %t2 = getelementptr inbounds %Frame_SEARCH_SELECT_SELNXT, %Frame_SEARCH_SELECT_SELNXT* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2

    ; body
    %t4 = load i32, i32* @JNTK
    %t3 = add i32 %t4, 1
    %t5 = getelementptr inbounds %T_array_9, %T_array_9* @INDEX, i32 0, i32 %t3
    %t7 = load i32, i32* @JNTK
    %t8 = getelementptr inbounds %T_arraytkoftw, %T_arraytkoftw* @LINDX, i32 0, i32 %t7
    %t9 = load i32, i32* %t8
    %t6 = sub i32 %t9, 1
    store i32 %t6, i32* %t5
    %t10 = load i32, i32* @JNTK
    %t11 = getelementptr inbounds %T_array_15, %T_array_15* @SRCHM, i32 0, i32 %t10
    %t13 = getelementptr inbounds %Frame_SEARCH_SELECT_SELNXT, %Frame_SEARCH_SELECT_SELNXT* %.frame, i32 0, i32 0
    %t12 = load i32, i32* %t13
    store i32 %t12, i32* %t11
    ; nop

    ; epilogue
    ret void
}


; line 2513
;================================================================================
; scope: SEARCH_SELECT_SELANY (level : 4)

; activation record
%Frame_SEARCH_SELECT_SELANY = type
{
    ; variables
    i32,    ; 0: INTW

    ; slink
    %Frame_SEARCH_SELECT*    ; 1
};

; procedure body
define void @P_SEARCH_SELECT_SELANY(%Frame_SEARCH_SELECT* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_SEARCH_SELECT_SELANY, align 8
    %t1 = getelementptr inbounds %Frame_SEARCH_SELECT_SELANY, %Frame_SEARCH_SELECT_SELANY* %.frame, i32 0, i32 1
    store %Frame_SEARCH_SELECT* %.slink, %Frame_SEARCH_SELECT** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 2748
;================================================================================
; scope: READER (level : 2)

; activation record
%Frame_READER = type
{
    ; variables
    %T_RA,    ; 0: INRA
    i32,    ; 1: INTJ

    ; dummy
    i8*
};

; procedure body
define void @P_READER()
{
    ; allocate frame
    %.frame = alloca %Frame_READER, align 8

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 2757
;================================================================================
; scope: READER_RDRERR (level : 3)

; activation record
%Frame_READER_RDRERR = type
{
    ; parameters
    %T_RN,    ; 0: A

    ; variables
    i32,    ; 1: INTJ
    i32,    ; 2: INTN

    ; slink
    %Frame_READER*    ; 3
};

; procedure body
define void @P_READER_RDRERR(%Frame_READER* %.slink, %T_RN %A)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDRERR, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDRERR, %Frame_READER_RDRERR* %.frame, i32 0, i32 3
    store %Frame_READER* %.slink, %Frame_READER** %t1
    %t2 = getelementptr inbounds %Frame_READER_RDRERR, %Frame_READER_RDRERR* %.frame, i32 0, i32 0
    store %T_RN %A, %T_RN* %t2

    ; body
    %t3 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 94)
    call void @_WriteLn(i8* %t3)
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; nop

    ; epilogue
    ret void
}


; line 2782
;================================================================================
; scope: READER_RDRGNT (level : 3)

; activation record
%Frame_READER_RDRGNT = type
{
    ; parameters
    %T_RA*,    ; 0: A

    ; variables
    i1,    ; 1: _fnvalue
    i32,    ; 2: INTJ

    ; slink
    %Frame_READER*    ; 3
};

; function body
define i1 @F_READER_RDRGNT(%Frame_READER* %.slink, %T_RA* %A)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDRGNT, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 3
    store %Frame_READER* %.slink, %Frame_READER** %t1
    %t2 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 0
    store %T_RA* %A, %T_RA** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 0
    %t4 = load %T_RA*, %T_RA** %t3
    store %T_RA getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), %T_RA* %t4
    %t5 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 2
    store i32 1, i32* %t5
    %t6 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 1
    %t9 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    %t7 = icmp ne i32 %t8, 1
    store i1 %t7, i1* %t6
    ; nop

    ; epilogue
    %t10 = getelementptr inbounds %Frame_READER_RDRGNT, %Frame_READER_RDRGNT* %.frame, i32 0, i32 1
    %t11 = load i1, i1* %t10
    ret i1 %t11
}


; line 2812
;================================================================================
; scope: READER_RDRSFT (level : 3)

; activation record
%Frame_READER_RDRSFT = type
{
    ; variables
    %T_RA,    ; 0: INRA
    i1,    ; 1: INTB

    ; slink
    %Frame_READER*    ; 2
};

; procedure body
define void @P_READER_RDRSFT(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDRSFT, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDRSFT, %Frame_READER_RDRSFT* %.frame, i32 0, i32 2
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    store i32 0, i32* @JNTJ
    %t2 = getelementptr inbounds %Frame_READER_RDRSFT, %Frame_READER_RDRSFT* %.frame, i32 0, i32 1
    %t3 = getelementptr inbounds %Frame_READER_RDRSFT, %Frame_READER_RDRSFT* %.frame, i32 0, i32 2
    %t4 = load %Frame_READER*, %Frame_READER** %t3
    %t5 = getelementptr inbounds %Frame_READER_RDRSFT, %Frame_READER_RDRSFT* %.frame, i32 0, i32 0
    %t6 = call i1 @F_READER_RDRGNT(%Frame_READER* %t4, %T_RA* %t5)
    store i1 %t6, i1* %t2
    ; nop

    ; epilogue
    ret void
}


; line 2825
;================================================================================
; scope: READER_RDRCMD (level : 3)

; types
%T_READER_RDRCMD_subroutine_47 = type void (i8*)*

; activation record
%Frame_READER_RDRCMD = type
{
    ; parameters
    %T_RA,    ; 0: A
    %T_READER_RDRCMD_subroutine_47,    ; 1: XXXCMD

    ; slink
    %Frame_READER*    ; 2
};

; procedure body
define void @P_READER_RDRCMD(%Frame_READER* %.slink, %T_RA %A, %T_READER_RDRCMD_subroutine_47 %XXXCMD)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDRCMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDRCMD, %Frame_READER_RDRCMD* %.frame, i32 0, i32 2
    store %Frame_READER* %.slink, %Frame_READER** %t1
    %t2 = getelementptr inbounds %Frame_READER_RDRCMD, %Frame_READER_RDRCMD* %.frame, i32 0, i32 0
    store %T_RA %A, %T_RA* %t2
    %t3 = getelementptr inbounds %Frame_READER_RDRCMD, %Frame_READER_RDRCMD* %.frame, i32 0, i32 1
    store %T_READER_RDRCMD_subroutine_47 %XXXCMD, %T_READER_RDRCMD_subroutine_47* %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 2840
;================================================================================
; scope: READER_RDLINE (level : 3)

; activation record
%Frame_READER_RDLINE = type
{
    ; variables
    i8,    ; 0: INTC
    i32,    ; 1: INTJ

    ; slink
    %Frame_READER*    ; 2
};

; procedure body
define void @P_READER_RDLINE(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDLINE, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDLINE, %Frame_READER_RDLINE* %.frame, i32 0, i32 2
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_READER_RDLINE, %Frame_READER_RDLINE* %.frame, i32 0, i32 1
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %T_RJ, %T_RJ* @ICARD, i32 0, i32 73
    store i8 59, i8* %t3
    store i32 0, i32* @JMTJ
    ; nop

    ; epilogue
    ret void
}


; line 2867
;================================================================================
; scope: READER_RDRMOV (level : 3)

; activation record
%Frame_READER_RDRMOV = type
{
    ; variables
    i1,    ; 0: _fnvalue
    i32,    ; 1: IMTJ

    ; slink
    %Frame_READER*    ; 2
};

; function body
define i1 @F_READER_RDRMOV(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDRMOV, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDRMOV, %Frame_READER_RDRMOV* %.frame, i32 0, i32 2
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_READER_RDRMOV, %Frame_READER_RDRMOV* %.frame, i32 0, i32 1
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %Frame_READER_RDRMOV, %Frame_READER_RDRMOV* %.frame, i32 0, i32 0
    %t6 = getelementptr inbounds %Frame_READER_RDRMOV, %Frame_READER_RDRMOV* %.frame, i32 0, i32 1
    %t5 = load i32, i32* %t6
    %t4 = icmp ne i32 %t5, 0
    store i1 %t4, i1* %t3
    %t7 = getelementptr inbounds %T_RJ, %T_RJ* @ILINE, i32 0, i32 73
    store i8 59, i8* %t7
    store i32 0, i32* @JNTJ
    ; nop

    ; epilogue
    %t8 = getelementptr inbounds %Frame_READER_RDRMOV, %Frame_READER_RDRMOV* %.frame, i32 0, i32 0
    %t9 = load i1, i1* %t8
    ret i1 %t9
}


; line 2898
;================================================================================
; scope: READER_RDRNUM (level : 3)

; activation record
%Frame_READER_RDRNUM = type
{
    ; variables
    i32,    ; 0: _fnvalue
    i1,    ; 1: INTB
    i32,    ; 2: INTI

    ; slink
    %Frame_READER*    ; 3
};

; function body
define i32 @F_READER_RDRNUM(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_RDRNUM, align 8
    %t1 = getelementptr inbounds %Frame_READER_RDRNUM, %Frame_READER_RDRNUM* %.frame, i32 0, i32 3
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_READER_RDRNUM, %Frame_READER_RDRNUM* %.frame, i32 0, i32 2
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %Frame_READER_RDRNUM, %Frame_READER_RDRNUM* %.frame, i32 0, i32 0
    %t5 = getelementptr inbounds %Frame_READER_RDRNUM, %Frame_READER_RDRNUM* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
    ; nop

    ; epilogue
    %t6 = getelementptr inbounds %Frame_READER_RDRNUM, %Frame_READER_RDRNUM* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t6
    ret i32 %t7
}


; line 2938
;================================================================================
; scope: READER_BOACMD (level : 3)

; activation record
%Frame_READER_BOACMD = type
{
    ; variables
    i32,    ; 0: INTM
    i32,    ; 1: INTS
    i32,    ; 2: INTS1

    ; slink
    %Frame_READER*    ; 3
};

; procedure body
define void @P_READER_BOACMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_BOACMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_BOACMD, %Frame_READER_BOACMD* %.frame, i32 0, i32 3
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    call void @P_CLSTAT()
    %t2 = load %T_RM, %T_RM* @NULMV
    store %T_RM %t2, %T_RM* @LSTMV
    %t3 = getelementptr inbounds %Frame_READER_BOACMD, %Frame_READER_BOACMD* %.frame, i32 0, i32 0
    store i32 0, i32* %t3
    %t4 = getelementptr inbounds %Frame_READER_BOACMD, %Frame_READER_BOACMD* %.frame, i32 0, i32 1
    store i32 0, i32* %t4
    ; nop

    ; epilogue
    ret void
}


; line 2946
;================================================================================
; scope: READER_BOACMD_BOAADV (level : 4)

; activation record
%Frame_READER_BOACMD_BOAADV = type
{
    ; parameters
    i32,    ; 0: A

    ; slink
    %Frame_READER_BOACMD*    ; 1
};

; procedure body
define void @P_READER_BOACMD_BOAADV(%Frame_READER_BOACMD* %.slink, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_BOACMD_BOAADV, align 8
    %t1 = getelementptr inbounds %Frame_READER_BOACMD_BOAADV, %Frame_READER_BOACMD_BOAADV* %.frame, i32 0, i32 1
    store %Frame_READER_BOACMD* %.slink, %Frame_READER_BOACMD** %t1
    %t2 = getelementptr inbounds %Frame_READER_BOACMD_BOAADV, %Frame_READER_BOACMD_BOAADV* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 2956
;================================================================================
; scope: READER_BOACMD_BOASTO (level : 4)

; activation record
%Frame_READER_BOACMD_BOASTO = type
{
    ; parameters
    i32,    ; 0: A

    ; slink
    %Frame_READER_BOACMD*    ; 1
};

; procedure body
define void @P_READER_BOACMD_BOASTO(%Frame_READER_BOACMD* %.slink, i32 %A)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_BOACMD_BOASTO, align 8
    %t1 = getelementptr inbounds %Frame_READER_BOACMD_BOASTO, %Frame_READER_BOACMD_BOASTO* %.frame, i32 0, i32 1
    store %Frame_READER_BOACMD* %.slink, %Frame_READER_BOACMD** %t1
    %t2 = getelementptr inbounds %Frame_READER_BOACMD_BOASTO, %Frame_READER_BOACMD_BOASTO* %.frame, i32 0, i32 0
    store i32 %A, i32* %t2

    ; body
    %t4 = getelementptr inbounds %T_RB, %T_RB* @BOARD, i32 0, i32 16
    %t3 = bitcast i8* %t4 to %T_RC*
    %t7 = getelementptr inbounds %Frame_READER_BOACMD_BOASTO, %Frame_READER_BOACMD_BOASTO* %.frame, i32 0, i32 1
    %t8 = load %Frame_READER_BOACMD*, %Frame_READER_BOACMD** %t7
    %t6 = getelementptr inbounds %Frame_READER_BOACMD, %Frame_READER_BOACMD* %t8, i32 0, i32 1
    %t5 = load i32, i32* %t6
    %t9 = getelementptr inbounds %T_RC, %T_RC* %t3, i32 0, i32 %t5
    %t11 = getelementptr inbounds %Frame_READER_BOACMD_BOASTO, %Frame_READER_BOACMD_BOASTO* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    store i32 %t10, i32* %t9
    ; nop

    ; epilogue
    ret void
}


; line 2996
;================================================================================
; scope: READER_ENDCMD (level : 3)

; activation record
%Frame_READER_ENDCMD = type
{
    ; slink
    %Frame_READER*    ; 0
};

; procedure body
define void @P_READER_ENDCMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_ENDCMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_ENDCMD, %Frame_READER_ENDCMD* %.frame, i32 0, i32 0
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 3003
;================================================================================
; scope: READER_GONCMD (level : 3)

; activation record
%Frame_READER_GONCMD = type
{
    ; slink
    %Frame_READER*    ; 0
};

; procedure body
define void @P_READER_GONCMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_GONCMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_GONCMD, %Frame_READER_GONCMD* %.frame, i32 0, i32 0
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_READER_GONCMD, %Frame_READER_GONCMD* %.frame, i32 0, i32 0
    %t3 = load %Frame_READER*, %Frame_READER** %t2
    %t4 = call i32 @F_READER_RDRNUM(%Frame_READER* %t3)
    store i32 %t4, i32* @GOING
    store i1 1, i1* @jumpin
    ; nop

    ; epilogue
    ret void
}


; line 3015
;================================================================================
; scope: READER_INICMD (level : 3)

; activation record
%Frame_READER_INICMD = type
{
    ; slink
    %Frame_READER*    ; 0
};

; procedure body
define void @P_READER_INICMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_INICMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_INICMD, %Frame_READER_INICMD* %.frame, i32 0, i32 0
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 3022
;================================================================================
; scope: READER_LETCMD (level : 3)

; activation record
%Frame_READER_LETCMD = type
{
    ; slink
    %Frame_READER*    ; 0
};

; procedure body
define void @P_READER_LETCMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_LETCMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_LETCMD, %Frame_READER_LETCMD* %.frame, i32 0, i32 0
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 3027
;================================================================================
; scope: READER_LETCMD_LETONE (level : 4)

; activation record
%Frame_READER_LETCMD_LETONE = type
{
    ; parameters
    %T_RA,    ; 0: A
    i32*,    ; 1: B

    ; slink
    %Frame_READER_LETCMD*    ; 2
};

; procedure body
define void @P_READER_LETCMD_LETONE(%Frame_READER_LETCMD* %.slink, %T_RA %A, i32* %B)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_LETCMD_LETONE, align 8
    %t1 = getelementptr inbounds %Frame_READER_LETCMD_LETONE, %Frame_READER_LETCMD_LETONE* %.frame, i32 0, i32 2
    store %Frame_READER_LETCMD* %.slink, %Frame_READER_LETCMD** %t1
    %t2 = getelementptr inbounds %Frame_READER_LETCMD_LETONE, %Frame_READER_LETCMD_LETONE* %.frame, i32 0, i32 0
    store %T_RA %A, %T_RA* %t2
    %t3 = getelementptr inbounds %Frame_READER_LETCMD_LETONE, %Frame_READER_LETCMD_LETONE* %.frame, i32 0, i32 1
    store i32* %B, i32** %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 3076
;================================================================================
; scope: READER_PLECMD (level : 3)

; activation record
%Frame_READER_PLECMD = type
{
    ; slink
    %Frame_READER*    ; 0
};

; procedure body
define void @P_READER_PLECMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_PLECMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_PLECMD, %Frame_READER_PLECMD* %.frame, i32 0, i32 0
    store %Frame_READER* %.slink, %Frame_READER** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 3081
;================================================================================
; scope: READER_PLECMD_PRIONE (level : 4)

; activation record
%Frame_READER_PLECMD_PRIONE = type
{
    ; parameters
    %T_RA,    ; 0: A
    i32,    ; 1: B

    ; slink
    %Frame_READER_PLECMD*    ; 2
};

; procedure body
define void @P_READER_PLECMD_PRIONE(%Frame_READER_PLECMD* %.slink, %T_RA %A, i32 %B)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_PLECMD_PRIONE, align 8
    %t1 = getelementptr inbounds %Frame_READER_PLECMD_PRIONE, %Frame_READER_PLECMD_PRIONE* %.frame, i32 0, i32 2
    store %Frame_READER_PLECMD* %.slink, %Frame_READER_PLECMD** %t1
    %t2 = getelementptr inbounds %Frame_READER_PLECMD_PRIONE, %Frame_READER_PLECMD_PRIONE* %.frame, i32 0, i32 0
    store %T_RA %A, %T_RA* %t2
    %t3 = getelementptr inbounds %Frame_READER_PLECMD_PRIONE, %Frame_READER_PLECMD_PRIONE* %.frame, i32 0, i32 1
    store i32 %B, i32* %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 3131
;================================================================================
; scope: READER_PRICMD (level : 3)

; activation record
%Frame_READER_PRICMD = type
{
    ; slink
    %Frame_READER*    ; 0
};

; procedure body
define void @P_READER_PRICMD(%Frame_READER* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_READER_PRICMD, align 8
    %t1 = getelementptr inbounds %Frame_READER_PRICMD, %Frame_READ