; ModuleID = 'prettyp.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\prettyp.pas"
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
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([5 x %struct._Filename], [5 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 4, align 4

; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_CHARINFO = type [5 x i8]
%T_STRING = type [200 x i8]
%T_SYMBOL = type [216 x i8]
%T_SPECIALCHAR = type [2 x i8]
%T_DBLCHARTABLE = type [2 x %T_SPECIALCHAR]
%T_DBLCHRSET = type [1 x i32]
%T_KEY = type [10 x i8]
%T_KEYSYMSET = type [2 x i32]
%T_KEYWORDTABLE = type [22 x %T_KEY]
%T_OPTIONSET = type [1 x i32]
%T_TABLEENTRY = type [20 x i8]
%T_OPTIONTABLE = type [33 x %T_TABLEENTRY]
%T_SGLCHARTABLE = type [6 x i8]
%T_STACKENTRY = type [8 x i8]
%T_SYMBOLSTACK = type [100 x %T_STACKENTRY]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@CRPENDING = dso_local global i1 zeroinitializer
@CURRCHAR = dso_local global %T_CHARINFO zeroinitializer
@CURRLINEPOS = dso_local global i32 zeroinitializer
@CURRMARGIN = dso_local global i32 zeroinitializer
@CURRSYM = dso_local global i8* zeroinitializer
@DBLCHAR = dso_local global %T_DBLCHARTABLE zeroinitializer
@DBLCHARS = dso_local global %T_DBLCHRSET zeroinitializer
@INPUTFILE = dso_local global %T_text zeroinitializer
@KEYWORD = dso_local global %T_KEYWORDTABLE zeroinitializer
@NEXTCHAR = dso_local global %T_CHARINFO zeroinitializer
@NEXTSYM = dso_local global i8* zeroinitializer
@OUTPUTFILE = dso_local global %T_text zeroinitializer
@PPOPTION = dso_local global %T_OPTIONTABLE zeroinitializer
@RECORDSEEN = dso_local global i1 zeroinitializer
@SGLCHAR = dso_local global %T_SGLCHARTABLE zeroinitializer
@STACK = dso_local global %T_SYMBOLSTACK zeroinitializer
@TOP = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @INPUTFILE
    %t4 = call i8* @_OpenFile(i32 3)
    store i8* %t4, i8** @OUTPUTFILE

    ; body
    ; line 1522
    call void @P_INITIALISE(%T_text* @INPUTFILE, %T_text* @OUTPUTFILE, i32* @TOP, i32* @CURRLINEPOS, i32* @CURRMARGIN, %T_KEYWORDTABLE* @KEYWORD, %T_DBLCHRSET* @DBLCHARS, %T_DBLCHARTABLE* @DBLCHAR, %T_SGLCHARTABLE* @SGLCHAR, i1* @RECORDSEEN, %T_CHARINFO* @CURRCHAR, %T_CHARINFO* @NEXTCHAR, i8** @CURRSYM, i8** @NEXTSYM, %T_OPTIONTABLE* @PPOPTION)
    ; line 1527
    store i1 0, i1* @CRPENDING
    ; line 1529
    ; line 1589
    ; nop

    ; cleanup
    %t5 = load %T_text, %T_text* @OUTPUTFILE
    call void @_CloseFile(i8* %t5)
    %t6 = load %T_text, %T_text* @INPUTFILE
    call void @_CloseFile(i8* %t6)
    %t7 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t7)
    %t8 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t8)

    ; epilogue
    ret void
}


; line 317
;================================================================================
; scope: GETCHAR (level : 2)

; activation record
%Frame_GETCHAR = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    %T_CHARINFO*,    ; 2: NEXTCHAR

    ; dummy
    i8*
};

; procedure body
define void @P_GETCHAR(%T_text* %INPUTFILE, %T_CHARINFO* %NEXTCHAR, %T_CHARINFO* %CURRCHAR)
{
    ; allocate frame
    %.frame = alloca %Frame_GETCHAR, align 8
    %t1 = getelementptr inbounds %Frame_GETCHAR, %Frame_GETCHAR* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETCHAR, %Frame_GETCHAR* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETCHAR, %Frame_GETCHAR* %.frame, i32 0, i32 2
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t3

    ; body
    ; line 323
    %t4 = getelementptr inbounds %Frame_GETCHAR, %Frame_GETCHAR* %.frame, i32 0, i32 0
    %t5 = load %T_CHARINFO*, %T_CHARINFO** %t4
    %t7 = getelementptr inbounds %Frame_GETCHAR, %Frame_GETCHAR* %.frame, i32 0, i32 2
    %t8 = load %T_CHARINFO*, %T_CHARINFO** %t7
    %t6 = load %T_CHARINFO, %T_CHARINFO* %t8
    store %T_CHARINFO %t6, %T_CHARINFO* %t5
    ; line 328
    ; line 355
    ; line 361

    ; epilogue
    ret void
}


; line 369
;================================================================================
; scope: STORENEXTCHAR (level : 2)

; activation record
%Frame_STORENEXTCHAR = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    %T_CHARINFO*,    ; 3: NEXTCHAR
    %T_STRING*,    ; 4: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_STORENEXTCHAR(%T_text* %INPUTFILE, i32* %LENGTH, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, %T_STRING* %VALUE)
{
    ; allocate frame
    %.frame = alloca %Frame_STORENEXTCHAR, align 8
    %t1 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 3
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t4
    %t5 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 4
    store %T_STRING* %VALUE, %T_STRING** %t5

    ; body
    ; line 377
    %t6 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 1
    %t7 = load %T_text*, %T_text** %t6
    %t8 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 3
    %t9 = load %T_CHARINFO*, %T_CHARINFO** %t8
    %t10 = getelementptr inbounds %Frame_STORENEXTCHAR, %Frame_STORENEXTCHAR* %.frame, i32 0, i32 0
    %t11 = load %T_CHARINFO*, %T_CHARINFO** %t10
    call void @P_GETCHAR(%T_text* %t7, %T_CHARINFO* %t9, %T_CHARINFO* %t11)
    ; line 381

    ; epilogue
    ret void
}


; line 392
;================================================================================
; scope: SKIPSPACES (level : 2)

; activation record
%Frame_SKIPSPACES = type
{
    ; parameters
    i32*,    ; 0: CRSBEFORE
    %T_CHARINFO*,    ; 1: CURRCHAR
    %T_text*,    ; 2: INPUTFILE
    %T_CHARINFO*,    ; 3: NEXTCHAR
    i32*,    ; 4: SPACESBEFORE

    ; dummy
    i8*
};

; procedure body
define void @P_SKIPSPACES(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %SPACESBEFORE, i32* %CRSBEFORE)
{
    ; allocate frame
    %.frame = alloca %Frame_SKIPSPACES, align 8
    %t1 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 0
    store i32* %CRSBEFORE, i32** %t1
    %t2 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 1
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t2
    %t3 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 2
    store %T_text* %INPUTFILE, %T_text** %t3
    %t4 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 3
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t4
    %t5 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 4
    store i32* %SPACESBEFORE, i32** %t5

    ; body
    ; line 400
    %t6 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 0
    %t7 = load i32*, i32** %t6
    store i32 0, i32* %t7
    ; line 401
    %t8 = getelementptr inbounds %Frame_SKIPSPACES, %Frame_SKIPSPACES* %.frame, i32 0, i32 4
    %t9 = load i32*, i32** %t8
    store i32 0, i32* %t9
    ; line 403

    ; epilogue
    ret void
}


; line 426
;================================================================================
; scope: GETCOMMENT (level : 2)

; activation record
%Frame_GETCOMMENT = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    i32*,    ; 3: NAME
    %T_CHARINFO*,    ; 4: NEXTCHAR
    %T_STRING*,    ; 5: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_GETCOMMENT(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %NAME, %T_STRING* %VALUE, i32* %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_GETCOMMENT, align 8
    %t1 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 3
    store i32* %NAME, i32** %t4
    %t5 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 4
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t5
    %t6 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 5
    store %T_STRING* %VALUE, %T_STRING** %t6

    ; body
    ; line 435
    %t7 = getelementptr inbounds %Frame_GETCOMMENT, %Frame_GETCOMMENT* %.frame, i32 0, i32 3
    %t8 = load i32*, i32** %t7
    store i32 23, i32* %t8
    ; line 437
    ; line 448

    ; epilogue
    ret void
}


; line 465
;================================================================================
; scope: IDTYPE (level : 2)

; activation record
%Frame_IDTYPE = type
{
    ; parameters
    i32,    ; 0: LENGTH
    %T_STRING,    ; 1: VALUE

    ; variables
    i32,    ; 2: _fnvalue
    i1,    ; 3: HIT
    i32,    ; 4: I
    %T_KEY,    ; 5: KEYVALUE
    i32,    ; 6: THISKEY

    ; dummy
    i8*
};

; function body
define i32 @F_IDTYPE(%T_STRING %VALUE, i32 %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_IDTYPE, align 8
    %t1 = getelementptr inbounds %Frame_IDTYPE, %Frame_IDTYPE* %.frame, i32 0, i32 0
    store i32 %LENGTH, i32* %t1
    %t2 = getelementptr inbounds %Frame_IDTYPE, %Frame_IDTYPE* %.frame, i32 0, i32 1
    store %T_STRING %VALUE, %T_STRING* %t2

    ; body
    ; line 481
    %t3 = getelementptr inbounds %Frame_IDTYPE, %Frame_IDTYPE* %.frame, i32 0, i32 2
    store i32 32, i32* %t3
    ; line 483
    ; nop

    ; epilogue
    %t4 = getelementptr inbounds %Frame_IDTYPE, %Frame_IDTYPE* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t4
    ret i32 %t5
}


; line 508
;================================================================================
; scope: GETIDENTIFIER (level : 2)

; activation record
%Frame_GETIDENTIFIER = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    i32*,    ; 3: NAME
    %T_CHARINFO*,    ; 4: NEXTCHAR
    %T_STRING*,    ; 5: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_GETIDENTIFIER(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %NAME, %T_STRING* %VALUE, i32* %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_GETIDENTIFIER, align 8
    %t1 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 3
    store i32* %NAME, i32** %t4
    %t5 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 4
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t5
    %t6 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 5
    store %T_STRING* %VALUE, %T_STRING** %t6

    ; body
    ; line 517
    ; line 526
    %t7 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 3
    %t8 = load i32*, i32** %t7
    %t10 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 5
    %t11 = load %T_STRING*, %T_STRING** %t10
    %t9 = load %T_STRING, %T_STRING* %t11
    %t13 = getelementptr inbounds %Frame_GETIDENTIFIER, %Frame_GETIDENTIFIER* %.frame, i32 0, i32 2
    %t14 = load i32*, i32** %t13
    %t12 = load i32, i32* %t14
    %t15 = call i32 @F_IDTYPE(%T_STRING %t9, i32 %t12)
    store i32 %t15, i32* %t8
    ; line 529

    ; epilogue
    ret void
}


; line 546
;================================================================================
; scope: GETNUMBER (level : 2)

; activation record
%Frame_GETNUMBER = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    i32*,    ; 3: NAME
    %T_CHARINFO*,    ; 4: NEXTCHAR
    %T_STRING*,    ; 5: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_GETNUMBER(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %NAME, %T_STRING* %VALUE, i32* %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_GETNUMBER, align 8
    %t1 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 3
    store i32* %NAME, i32** %t4
    %t5 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 4
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t5
    %t6 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 5
    store %T_STRING* %VALUE, %T_STRING** %t6

    ; body
    ; line 555
    ; line 563
    %t7 = getelementptr inbounds %Frame_GETNUMBER, %Frame_GETNUMBER* %.frame, i32 0, i32 3
    %t8 = load i32*, i32** %t7
    store i32 32, i32* %t8

    ; epilogue
    ret void
}


; line 568
;================================================================================
; scope: GETCHARLITERAL (level : 2)

; activation record
%Frame_GETCHARLITERAL = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    i32*,    ; 3: NAME
    %T_CHARINFO*,    ; 4: NEXTCHAR
    %T_STRING*,    ; 5: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_GETCHARLITERAL(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %NAME, %T_STRING* %VALUE, i32* %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_GETCHARLITERAL, align 8
    %t1 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 3
    store i32* %NAME, i32** %t4
    %t5 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 4
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t5
    %t6 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 5
    store %T_STRING* %VALUE, %T_STRING** %t6

    ; body
    ; line 577
    ; line 603
    %t7 = getelementptr inbounds %Frame_GETCHARLITERAL, %Frame_GETCHARLITERAL* %.frame, i32 0, i32 3
    %t8 = load i32*, i32** %t7
    store i32 32, i32* %t8

    ; epilogue
    ret void
}


; line 608
;================================================================================
; scope: CHARTYPE (level : 2)

; activation record
%Frame_CHARTYPE = type
{
    ; parameters
    %T_CHARINFO,    ; 0: CURRCHAR
    %T_CHARINFO,    ; 1: NEXTCHAR

    ; variables
    i32,    ; 2: _fnvalue
    i1,    ; 3: HIT
    %T_SPECIALCHAR,    ; 4: NEXTTWOCHARS
    i32,    ; 5: THISCHAR

    ; dummy
    i8*
};

; function body
define i32 @F_CHARTYPE(%T_CHARINFO %CURRCHAR, %T_CHARINFO %NEXTCHAR)
{
    ; allocate frame
    %.frame = alloca %Frame_CHARTYPE, align 8
    %t1 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 0
    store %T_CHARINFO %CURRCHAR, %T_CHARINFO* %t1
    %t2 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 1
    store %T_CHARINFO %NEXTCHAR, %T_CHARINFO* %t2

    ; body
    ; line 622
    %t3 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 4
    %t4 = getelementptr inbounds %T_SPECIALCHAR, %T_SPECIALCHAR* %t3, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 0
    %t7 = getelementptr inbounds %T_CHARINFO, %T_CHARINFO* %t5, i32 0, i32 4
    %t6 = bitcast i8* %t7 to i8*
    %t8 = load i8, i8* %t6
    store i8 %t8, i8* %t4
    ; line 623
    %t9 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 4
    %t10 = getelementptr inbounds %T_SPECIALCHAR, %T_SPECIALCHAR* %t9, i32 0, i32 2
    %t11 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 1
    %t13 = getelementptr inbounds %T_CHARINFO, %T_CHARINFO* %t11, i32 0, i32 4
    %t12 = bitcast i8* %t13 to i8*
    %t14 = load i8, i8* %t12
    store i8 %t14, i8* %t10
    ; line 625
    %t15 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 5
    store i32 22, i32* %t15
    ; line 626
    %t16 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 3
    store i1 0, i1* %t16
    ; line 628
    ; line 634
    ; line 646

    ; epilogue
    %t17 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t17
    ret i32 %t18
}


; line 654
;================================================================================
; scope: GETSPECIALCHAR (level : 2)

; activation record
%Frame_GETSPECIALCHAR = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    i32*,    ; 3: NAME
    %T_CHARINFO*,    ; 4: NEXTCHAR
    %T_STRING*,    ; 5: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_GETSPECIALCHAR(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %NAME, %T_STRING* %VALUE, i32* %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_GETSPECIALCHAR, align 8
    %t1 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 3
    store i32* %NAME, i32** %t4
    %t5 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 4
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t5
    %t6 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 5
    store %T_STRING* %VALUE, %T_STRING** %t6

    ; body
    ; line 663
    %t7 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 1
    %t8 = load %T_text*, %T_text** %t7
    %t9 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 2
    %t10 = load i32*, i32** %t9
    %t11 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 0
    %t12 = load %T_CHARINFO*, %T_CHARINFO** %t11
    %t13 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 4
    %t14 = load %T_CHARINFO*, %T_CHARINFO** %t13
    %t15 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 5
    %t16 = load %T_STRING*, %T_STRING** %t15
    call void @P_STORENEXTCHAR(%T_text* %t8, i32* %t10, %T_CHARINFO* %t12, %T_CHARINFO* %t14, %T_STRING* %t16)
    ; line 669
    %t17 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 3
    %t18 = load i32*, i32** %t17
    %t20 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 0
    %t21 = load %T_CHARINFO*, %T_CHARINFO** %t20
    %t19 = load %T_CHARINFO, %T_CHARINFO* %t21
    %t23 = getelementptr inbounds %Frame_GETSPECIALCHAR, %Frame_GETSPECIALCHAR* %.frame, i32 0, i32 4
    %t24 = load %T_CHARINFO*, %T_CHARINFO** %t23
    %t22 = load %T_CHARINFO, %T_CHARINFO* %t24
    %t25 = call i32 @F_CHARTYPE(%T_CHARINFO %t19, %T_CHARINFO %t22)
    store i32 %t25, i32* %t18
    ; line 672
    ; nop

    ; epilogue
    ret void
}


; line 682
;================================================================================
; scope: GETNEXTSYMBOL (level : 2)

; activation record
%Frame_GETNEXTSYMBOL = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    %T_text*,    ; 1: INPUTFILE
    i32*,    ; 2: LENGTH
    i32*,    ; 3: NAME
    %T_CHARINFO*,    ; 4: NEXTCHAR
    %T_STRING*,    ; 5: VALUE

    ; dummy
    i8*
};

; procedure body
define void @P_GETNEXTSYMBOL(%T_text* %INPUTFILE, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i32* %NAME, %T_STRING* %VALUE, i32* %LENGTH)
{
    ; allocate frame
    %.frame = alloca %Frame_GETNEXTSYMBOL, align 8
    %t1 = getelementptr inbounds %Frame_GETNEXTSYMBOL, %Frame_GETNEXTSYMBOL* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_GETNEXTSYMBOL, %Frame_GETNEXTSYMBOL* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETNEXTSYMBOL, %Frame_GETNEXTSYMBOL* %.frame, i32 0, i32 2
    store i32* %LENGTH, i32** %t3
    %t4 = getelementptr inbounds %Frame_GETNEXTSYMBOL, %Frame_GETNEXTSYMBOL* %.frame, i32 0, i32 3
    store i32* %NAME, i32** %t4
    %t5 = getelementptr inbounds %Frame_GETNEXTSYMBOL, %Frame_GETNEXTSYMBOL* %.frame, i32 0, i32 4
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t5
    %t6 = getelementptr inbounds %Frame_GETNEXTSYMBOL, %Frame_GETNEXTSYMBOL* %.frame, i32 0, i32 5
    store %T_STRING* %VALUE, %T_STRING** %t6

    ; body
    ; line 691

    ; epilogue
    ret void
}


; line 741
;================================================================================
; scope: GETSYMBOL (level : 2)

; activation record
%Frame_GETSYMBOL = type
{
    ; parameters
    i8**,    ; 0: CURRSYM
    %T_text*,    ; 1: INPUTFILE
    i8**,    ; 2: NEXTSYM

    ; variables
    i8*,    ; 3: DUMMY

    ; dummy
    i8*
};

; procedure body
define void @P_GETSYMBOL(%T_text* %INPUTFILE, i8** %NEXTSYM, i8** %CURRSYM)
{
    ; allocate frame
    %.frame = alloca %Frame_GETSYMBOL, align 8
    %t1 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 0
    store i8** %CURRSYM, i8*** %t1
    %t2 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 2
    store i8** %NEXTSYM, i8*** %t3

    ; body
    ; line 750
    %t4 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 0
    %t7 = load i8**, i8*** %t6
    %t5 = load i8*, i8** %t7
    store i8* %t5, i8** %t4
    ; line 751
    %t8 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 0
    %t9 = load i8**, i8*** %t8
    %t11 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 2
    %t12 = load i8**, i8*** %t11
    %t10 = load i8*, i8** %t12
    store i8* %t10, i8** %t9
    ; line 752
    %t13 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 2
    %t14 = load i8**, i8*** %t13
    %t16 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 3
    %t15 = load i8*, i8** %t16
    store i8* %t15, i8** %t14
    ; line 756
    %t17 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 1
    %t18 = load %T_text*, %T_text** %t17
    %t20 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 2
    %t21 = load i8**, i8*** %t20
    %t19 = load i8*, i8** %t21
    %t22 = bitcast i8* %t19 to %T_SYMBOL*
    %t24 = getelementptr inbounds %T_SYMBOL, %T_SYMBOL* %t22, i32 0, i32 208
    %t23 = bitcast i8* %t24 to i32*
    %t26 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 2
    %t27 = load i8**, i8*** %t26
    %t25 = load i8*, i8** %t27
    %t28 = bitcast i8* %t25 to %T_SYMBOL*
    %t30 = getelementptr inbounds %T_SYMBOL, %T_SYMBOL* %t28, i32 0, i32 212
    %t29 = bitcast i8* %t30 to i32*
    call void @P_SKIPSPACES(%T_text* %t18, %T_CHARINFO* @CURRCHAR, %T_CHARINFO* @NEXTCHAR, i32* %t23, i32* %t29)
    ; line 762
    %t32 = getelementptr inbounds %Frame_GETSYMBOL, %Frame_GETSYMBOL* %.frame, i32 0, i32 2
    %t33 = load i8**, i8*** %t32
    %t31 = load i8*, i8** %t33
    %t34 = bitcast i8* %t31 to %T_SYMBOL*
    %t36 = getelementptr inbounds %T_SYMBOL, %T_SYMBOL* %t34, i32 0, i32 204
    %t35 = bitcast i8* %t36 to i32*
    store i32 0, i32* %t35
    ; line 764
    ; nop
    ; nop

    ; epilogue
    ret void
}


; line 784
;================================================================================
; scope: INITIALISE (level : 2)

; activation record
%Frame_INITIALISE = type
{
    ; parameters
    %T_CHARINFO*,    ; 0: CURRCHAR
    i32*,    ; 1: CURRLINEPOS
    i32*,    ; 2: CURRMARGIN
    i8**,    ; 3: CURRSYM
    %T_DBLCHARTABLE*,    ; 4: DBLCHAR
    %T_DBLCHRSET*,    ; 5: DBLCHARS
    %T_text*,    ; 6: INPUTFILE
    %T_KEYWORDTABLE*,    ; 7: KEYWORD
    %T_CHARINFO*,    ; 8: NEXTCHAR
    i8**,    ; 9: NEXTSYM
    %T_text*,    ; 10: OUTPUTFILE
    %T_OPTIONTABLE*,    ; 11: PPOPTION
    i1*,    ; 12: RECORDSEEN
    %T_SGLCHARTABLE*,    ; 13: SGLCHAR
    i32*,    ; 14: TOPOFSTACK

    ; dummy
    i8*
};

; procedure body
define void @P_INITIALISE(%T_text* %INPUTFILE, %T_text* %OUTPUTFILE, i32* %TOPOFSTACK, i32* %CURRLINEPOS, i32* %CURRMARGIN, %T_KEYWORDTABLE* %KEYWORD, %T_DBLCHRSET* %DBLCHARS, %T_DBLCHARTABLE* %DBLCHAR, %T_SGLCHARTABLE* %SGLCHAR, i1* %RECORDSEEN, %T_CHARINFO* %CURRCHAR, %T_CHARINFO* %NEXTCHAR, i8** %CURRSYM, i8** %NEXTSYM, %T_OPTIONTABLE* %PPOPTION)
{
    ; allocate frame
    %.frame = alloca %Frame_INITIALISE, align 8
    %t1 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 0
    store %T_CHARINFO* %CURRCHAR, %T_CHARINFO** %t1
    %t2 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 1
    store i32* %CURRLINEPOS, i32** %t2
    %t3 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 2
    store i32* %CURRMARGIN, i32** %t3
    %t4 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 3
    store i8** %CURRSYM, i8*** %t4
    %t5 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 4
    store %T_DBLCHARTABLE* %DBLCHAR, %T_DBLCHARTABLE** %t5
    %t6 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 5
    store %T_DBLCHRSET* %DBLCHARS, %T_DBLCHRSET** %t6
    %t7 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 6
    store %T_text* %INPUTFILE, %T_text** %t7
    %t8 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    store %T_KEYWORDTABLE* %KEYWORD, %T_KEYWORDTABLE** %t8
    %t9 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 8
    store %T_CHARINFO* %NEXTCHAR, %T_CHARINFO** %t9
    %t10 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 9
    store i8** %NEXTSYM, i8*** %t10
    %t11 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 10
    store %T_text* %OUTPUTFILE, %T_text** %t11
    %t12 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    store %T_OPTIONTABLE* %PPOPTION, %T_OPTIONTABLE** %t12
    %t13 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 12
    store i1* %RECORDSEEN, i1** %t13
    %t14 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    store %T_SGLCHARTABLE* %SGLCHAR, %T_SGLCHARTABLE** %t14
    %t15 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 14
    store i32* %TOPOFSTACK, i32** %t15

    ; body
    ; line 813
    ; line 814
    ; line 816
    %t16 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 14
    %t17 = load i32*, i32** %t16
    store i32 0, i32* %t17
    ; line 817
    %t18 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 1
    %t19 = load i32*, i32** %t18
    store i32 0, i32* %t19
    ; line 818
    %t20 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 2
    %t21 = load i32*, i32** %t20
    store i32 0, i32* %t21
    ; line 820
    %t22 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t23 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t22
    %t24 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t23, i32 0, i32 0
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_KEY* %t24
    ; line 821
    %t25 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t26 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t25
    %t27 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t26, i32 0, i32 1
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_KEY* %t27
    ; line 822
    %t28 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t29 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t28
    %t30 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t29, i32 0, i32 2
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_KEY* %t30
    ; line 823
    %t31 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t32 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t31
    %t33 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t32, i32 0, i32 3
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_KEY* %t33
    ; line 824
    %t34 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t35 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t34
    %t36 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t35, i32 0, i32 4
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_KEY* %t36
    ; line 825
    %t37 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t38 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t37
    %t39 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t38, i32 0, i32 5
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_KEY* %t39
    ; line 826
    %t40 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t41 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t40
    %t42 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t41, i32 0, i32 6
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_KEY* %t42
    ; line 827
    %t43 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t44 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t43
    %t45 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t44, i32 0, i32 7
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_KEY* %t45
    ; line 828
    %t46 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t47 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t46
    %t48 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t47, i32 0, i32 8
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_KEY* %t48
    ; line 829
    %t49 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t50 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t49
    %t51 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t50, i32 0, i32 9
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_KEY* %t51
    ; line 830
    %t52 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t53 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t52
    %t54 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t53, i32 0, i32 10
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_KEY* %t54
    ; line 831
    %t55 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t56 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t55
    %t57 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t56, i32 0, i32 11
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_KEY* %t57
    ; line 832
    %t58 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t59 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t58
    %t60 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t59, i32 0, i32 12
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %T_KEY* %t60
    ; line 833
    %t61 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t62 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t61
    %t63 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t62, i32 0, i32 13
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %T_KEY* %t63
    ; line 834
    %t64 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t65 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t64
    %t66 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t65, i32 0, i32 14
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %T_KEY* %t66
    ; line 835
    %t67 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t68 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t67
    %t69 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t68, i32 0, i32 15
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %T_KEY* %t69
    ; line 836
    %t70 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t71 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t70
    %t72 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t71, i32 0, i32 16
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_KEY* %t72
    ; line 837
    %t73 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t74 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t73
    %t75 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t74, i32 0, i32 17
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %T_KEY* %t75
    ; line 838
    %t76 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t77 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t76
    %t78 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t77, i32 0, i32 18
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %T_KEY* %t78
    ; line 839
    %t79 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t80 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t79
    %t81 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t80, i32 0, i32 19
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_KEY* %t81
    ; line 840
    %t82 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t83 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t82
    %t84 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t83, i32 0, i32 20
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %T_KEY* %t84
    ; line 841
    %t85 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 7
    %t86 = load %T_KEYWORDTABLE*, %T_KEYWORDTABLE** %t85
    %t87 = getelementptr inbounds %T_KEYWORDTABLE, %T_KEYWORDTABLE* %t86, i32 0, i32 21
    store %T_KEY getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %T_KEY* %t87
    ; line 844
    %t88 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 5
    %t89 = load %T_DBLCHRSET*, %T_DBLCHRSET** %t88
    store %T_DBLCHRSET %.dummy_set, %T_DBLCHRSET* %t89
    ; line 846
    %t90 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 4
    %t91 = load %T_DBLCHARTABLE*, %T_DBLCHARTABLE** %t90
    %t92 = getelementptr inbounds %T_DBLCHARTABLE, %T_DBLCHARTABLE* %t91, i32 0, i32 22
    store %T_SPECIALCHAR getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), %T_SPECIALCHAR* %t92
    ; line 847
    %t93 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 4
    %t94 = load %T_DBLCHARTABLE*, %T_DBLCHARTABLE** %t93
    %t95 = getelementptr inbounds %T_DBLCHARTABLE, %T_DBLCHARTABLE* %t94, i32 0, i32 23
    store %T_SPECIALCHAR getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), %T_SPECIALCHAR* %t95
    ; line 849
    %t96 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    %t97 = load %T_SGLCHARTABLE*, %T_SGLCHARTABLE** %t96
    %t98 = getelementptr inbounds %T_SGLCHARTABLE, %T_SGLCHARTABLE* %t97, i32 0, i32 25
    store i8 59, i8* %t98
    ; line 850
    %t99 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    %t100 = load %T_SGLCHARTABLE*, %T_SGLCHARTABLE** %t99
    %t101 = getelementptr inbounds %T_SGLCHARTABLE, %T_SGLCHARTABLE* %t100, i32 0, i32 26
    store i8 58, i8* %t101
    ; line 851
    %t102 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    %t103 = load %T_SGLCHARTABLE*, %T_SGLCHARTABLE** %t102
    %t104 = getelementptr inbounds %T_SGLCHARTABLE, %T_SGLCHARTABLE* %t103, i32 0, i32 27
    store i8 61, i8* %t104
    ; line 852
    %t105 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    %t106 = load %T_SGLCHARTABLE*, %T_SGLCHARTABLE** %t105
    %t107 = getelementptr inbounds %T_SGLCHARTABLE, %T_SGLCHARTABLE* %t106, i32 0, i32 28
    store i8 40, i8* %t107
    ; line 853
    %t108 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    %t109 = load %T_SGLCHARTABLE*, %T_SGLCHARTABLE** %t108
    %t110 = getelementptr inbounds %T_SGLCHARTABLE, %T_SGLCHARTABLE* %t109, i32 0, i32 29
    store i8 41, i8* %t110
    ; line 854
    %t111 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 13
    %t112 = load %T_SGLCHARTABLE*, %T_SGLCHARTABLE** %t111
    %t113 = getelementptr inbounds %T_SGLCHARTABLE, %T_SGLCHARTABLE* %t112, i32 0, i32 30
    store i8 46, i8* %t113
    ; line 856
    %t114 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 12
    %t115 = load i1*, i1** %t114
    store i1 0, i1* %t115
    ; line 859
    %t116 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 6
    %t117 = load %T_text*, %T_text** %t116
    %t118 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 8
    %t119 = load %T_CHARINFO*, %T_CHARINFO** %t118
    %t120 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 0
    %t121 = load %T_CHARINFO*, %T_CHARINFO** %t120
    call void @P_GETCHAR(%T_text* %t117, %T_CHARINFO* %t119, %T_CHARINFO* %t121)
    ; line 863
    ; line 864
    ; line 866
    %t122 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 6
    %t123 = load %T_text*, %T_text** %t122
    %t124 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 9
    %t125 = load i8**, i8*** %t124
    %t126 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 3
    %t127 = load i8**, i8*** %t126
    call void @P_GETSYMBOL(%T_text* %t123, i8** %t125, i8** %t127)
    ; line 872
    %t128 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t129 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t128
    %t130 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t129, i32 0, i32 0
    %t132 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t130, i32 0, i32 0
    %t131 = bitcast i8* %t132 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t131
    ; line 874
    %t133 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t134 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t133
    %t135 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t134, i32 0, i32 0
    %t137 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t135, i32 0, i32 4
    %t136 = bitcast i8* %t137 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t136
    ; line 875
    %t138 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t139 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t138
    %t140 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t139, i32 0, i32 0
    %t142 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t140, i32 0, i32 12
    %t141 = bitcast i8* %t142 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t141
    ; line 879
    %t143 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t144 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t143
    %t145 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t144, i32 0, i32 1
    %t147 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t145, i32 0, i32 0
    %t146 = bitcast i8* %t147 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t146
    ; line 882
    %t148 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t149 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t148
    %t150 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t149, i32 0, i32 1
    %t152 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t150, i32 0, i32 4
    %t151 = bitcast i8* %t152 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t151
    ; line 886
    %t153 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t154 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t153
    %t155 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t154, i32 0, i32 1
    %t157 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t155, i32 0, i32 12
    %t156 = bitcast i8* %t157 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t156
    ; line 890
    %t158 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t159 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t158
    %t160 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t159, i32 0, i32 2
    %t162 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t160, i32 0, i32 0
    %t161 = bitcast i8* %t162 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t161
    ; line 893
    %t163 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t164 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t163
    %t165 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t164, i32 0, i32 2
    %t167 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t165, i32 0, i32 4
    %t166 = bitcast i8* %t167 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t166
    ; line 897
    %t168 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t169 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t168
    %t170 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t169, i32 0, i32 2
    %t172 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t170, i32 0, i32 12
    %t171 = bitcast i8* %t172 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t171
    ; line 901
    %t173 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t174 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t173
    %t175 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t174, i32 0, i32 3
    %t177 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t175, i32 0, i32 0
    %t176 = bitcast i8* %t177 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t176
    ; line 904
    %t178 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t179 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t178
    %t180 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t179, i32 0, i32 3
    %t182 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t180, i32 0, i32 4
    %t181 = bitcast i8* %t182 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t181
    ; line 905
    %t183 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t184 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t183
    %t185 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t184, i32 0, i32 3
    %t187 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t185, i32 0, i32 12
    %t186 = bitcast i8* %t187 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t186
    ; line 909
    %t188 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t189 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t188
    %t190 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t189, i32 0, i32 4
    %t192 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t190, i32 0, i32 0
    %t191 = bitcast i8* %t192 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t191
    ; line 913
    %t193 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t194 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t193
    %t195 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t194, i32 0, i32 4
    %t197 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t195, i32 0, i32 4
    %t196 = bitcast i8* %t197 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t196
    ; line 914
    %t198 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t199 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t198
    %t200 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t199, i32 0, i32 4
    %t202 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t200, i32 0, i32 12
    %t201 = bitcast i8* %t202 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t201
    ; line 918
    %t203 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t204 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t203
    %t205 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t204, i32 0, i32 5
    %t207 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t205, i32 0, i32 0
    %t206 = bitcast i8* %t207 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t206
    ; line 922
    %t208 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t209 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t208
    %t210 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t209, i32 0, i32 5
    %t212 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t210, i32 0, i32 4
    %t211 = bitcast i8* %t212 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t211
    ; line 924
    %t213 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t214 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t213
    %t215 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t214, i32 0, i32 5
    %t217 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t215, i32 0, i32 12
    %t216 = bitcast i8* %t217 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t216
    ; line 928
    %t218 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t219 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t218
    %t220 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t219, i32 0, i32 6
    %t222 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t220, i32 0, i32 0
    %t221 = bitcast i8* %t222 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t221
    ; line 932
    %t223 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t224 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t223
    %t225 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t224, i32 0, i32 6
    %t227 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t225, i32 0, i32 4
    %t226 = bitcast i8* %t227 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t226
    ; line 935
    %t228 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t229 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t228
    %t230 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t229, i32 0, i32 6
    %t232 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t230, i32 0, i32 12
    %t231 = bitcast i8* %t232 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t231
    ; line 939
    %t233 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t234 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t233
    %t235 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t234, i32 0, i32 7
    %t237 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t235, i32 0, i32 0
    %t236 = bitcast i8* %t237 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t236
    ; line 942
    %t238 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t239 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t238
    %t240 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t239, i32 0, i32 7
    %t242 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t240, i32 0, i32 4
    %t241 = bitcast i8* %t242 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t241
    ; line 946
    %t243 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t244 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t243
    %t245 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t244, i32 0, i32 7
    %t247 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t245, i32 0, i32 12
    %t246 = bitcast i8* %t247 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t246
    ; line 950
    %t248 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t249 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t248
    %t250 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t249, i32 0, i32 8
    %t252 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t250, i32 0, i32 0
    %t251 = bitcast i8* %t252 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t251
    ; line 952
    %t253 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t254 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t253
    %t255 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t254, i32 0, i32 8
    %t257 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t255, i32 0, i32 4
    %t256 = bitcast i8* %t257 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t256
    ; line 953
    %t258 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t259 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t258
    %t260 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t259, i32 0, i32 8
    %t262 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t260, i32 0, i32 12
    %t261 = bitcast i8* %t262 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t261
    ; line 957
    %t263 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t264 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t263
    %t265 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t264, i32 0, i32 9
    %t267 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t265, i32 0, i32 0
    %t266 = bitcast i8* %t267 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t266
    ; line 959
    %t268 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t269 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t268
    %t270 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t269, i32 0, i32 9
    %t272 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t270, i32 0, i32 4
    %t271 = bitcast i8* %t272 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t271
    ; line 960
    %t273 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t274 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t273
    %t275 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t274, i32 0, i32 9
    %t277 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t275, i32 0, i32 12
    %t276 = bitcast i8* %t277 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t276
    ; line 964
    %t278 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t279 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t278
    %t280 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t279, i32 0, i32 10
    %t282 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t280, i32 0, i32 0
    %t281 = bitcast i8* %t282 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t281
    ; line 968
    %t283 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t284 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t283
    %t285 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t284, i32 0, i32 10
    %t287 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t285, i32 0, i32 4
    %t286 = bitcast i8* %t287 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t286
    ; line 969
    %t288 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t289 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t288
    %t290 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t289, i32 0, i32 10
    %t292 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t290, i32 0, i32 12
    %t291 = bitcast i8* %t292 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t291
    ; line 973
    %t293 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t294 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t293
    %t295 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t294, i32 0, i32 11
    %t297 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t295, i32 0, i32 0
    %t296 = bitcast i8* %t297 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t296
    ; line 977
    %t298 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t299 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t298
    %t300 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t299, i32 0, i32 11
    %t302 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t300, i32 0, i32 4
    %t301 = bitcast i8* %t302 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t301
    ; line 978
    %t303 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t304 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t303
    %t305 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t304, i32 0, i32 11
    %t307 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t305, i32 0, i32 12
    %t306 = bitcast i8* %t307 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t306
    ; line 982
    %t308 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t309 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t308
    %t310 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t309, i32 0, i32 12
    %t312 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t310, i32 0, i32 0
    %t311 = bitcast i8* %t312 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t311
    ; line 984
    %t313 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t314 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t313
    %t315 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t314, i32 0, i32 12
    %t317 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t315, i32 0, i32 4
    %t316 = bitcast i8* %t317 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t316
    ; line 985
    %t318 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t319 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t318
    %t320 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t319, i32 0, i32 12
    %t322 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t320, i32 0, i32 12
    %t321 = bitcast i8* %t322 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t321
    ; line 989
    %t323 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t324 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t323
    %t325 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t324, i32 0, i32 13
    %t327 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t325, i32 0, i32 0
    %t326 = bitcast i8* %t327 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t326
    ; line 993
    %t328 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t329 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t328
    %t330 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t329, i32 0, i32 13
    %t332 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t330, i32 0, i32 4
    %t331 = bitcast i8* %t332 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t331
    ; line 994
    %t333 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t334 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t333
    %t335 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t334, i32 0, i32 13
    %t337 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t335, i32 0, i32 12
    %t336 = bitcast i8* %t337 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t336
    ; line 998
    %t338 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t339 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t338
    %t340 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t339, i32 0, i32 14
    %t342 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t340, i32 0, i32 0
    %t341 = bitcast i8* %t342 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t341
    ; line 1002
    %t343 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t344 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t343
    %t345 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t344, i32 0, i32 14
    %t347 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t345, i32 0, i32 4
    %t346 = bitcast i8* %t347 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t346
    ; line 1003
    %t348 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t349 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t348
    %t350 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t349, i32 0, i32 14
    %t352 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t350, i32 0, i32 12
    %t351 = bitcast i8* %t352 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t351
    ; line 1007
    %t353 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t354 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t353
    %t355 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t354, i32 0, i32 15
    %t357 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t355, i32 0, i32 0
    %t356 = bitcast i8* %t357 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t356
    ; line 1011
    %t358 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t359 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t358
    %t360 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t359, i32 0, i32 15
    %t362 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t360, i32 0, i32 4
    %t361 = bitcast i8* %t362 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t361
    ; line 1012
    %t363 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t364 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t363
    %t365 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t364, i32 0, i32 15
    %t367 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t365, i32 0, i32 12
    %t366 = bitcast i8* %t367 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t366
    ; line 1016
    %t368 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t369 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t368
    %t370 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t369, i32 0, i32 16
    %t372 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t370, i32 0, i32 0
    %t371 = bitcast i8* %t372 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t371
    ; line 1018
    %t373 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t374 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t373
    %t375 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t374, i32 0, i32 16
    %t377 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t375, i32 0, i32 4
    %t376 = bitcast i8* %t377 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t376
    ; line 1019
    %t378 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t379 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t378
    %t380 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t379, i32 0, i32 16
    %t382 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t380, i32 0, i32 12
    %t381 = bitcast i8* %t382 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t381
    ; nop
    ; line 1023
    %t383 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t384 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t383
    %t385 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t384, i32 0, i32 17
    %t387 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t385, i32 0, i32 0
    %t386 = bitcast i8* %t387 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t386
    ; line 1027
    %t388 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t389 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t388
    %t390 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t389, i32 0, i32 17
    %t392 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t390, i32 0, i32 4
    %t391 = bitcast i8* %t392 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t391
    ; line 1028
    %t393 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t394 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t393
    %t395 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t394, i32 0, i32 17
    %t397 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t395, i32 0, i32 12
    %t396 = bitcast i8* %t397 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t396
    ; line 1032
    %t398 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t399 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t398
    %t400 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t399, i32 0, i32 18
    %t402 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t400, i32 0, i32 0
    %t401 = bitcast i8* %t402 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t401
    ; line 1034
    %t403 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t404 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t403
    %t405 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t404, i32 0, i32 18
    %t407 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t405, i32 0, i32 4
    %t406 = bitcast i8* %t407 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t406
    ; line 1035
    %t408 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t409 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t408
    %t410 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t409, i32 0, i32 18
    %t412 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t410, i32 0, i32 12
    %t411 = bitcast i8* %t412 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t411
    ; line 1039
    %t413 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t414 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t413
    %t415 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t414, i32 0, i32 19
    %t417 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t415, i32 0, i32 0
    %t416 = bitcast i8* %t417 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t416
    ; line 1044
    %t418 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t419 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t418
    %t420 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t419, i32 0, i32 19
    %t422 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t420, i32 0, i32 4
    %t421 = bitcast i8* %t422 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t421
    ; line 1046
    %t423 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t424 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t423
    %t425 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t424, i32 0, i32 19
    %t427 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t425, i32 0, i32 12
    %t426 = bitcast i8* %t427 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t426
    ; line 1050
    %t428 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t429 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t428
    %t430 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t429, i32 0, i32 20
    %t432 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t430, i32 0, i32 0
    %t431 = bitcast i8* %t432 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t431
    ; line 1054
    %t433 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t434 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t433
    %t435 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t434, i32 0, i32 20
    %t437 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t435, i32 0, i32 4
    %t436 = bitcast i8* %t437 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t436
    ; line 1063
    %t438 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t439 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t438
    %t440 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t439, i32 0, i32 20
    %t442 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t440, i32 0, i32 12
    %t441 = bitcast i8* %t442 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t441
    ; line 1067
    %t443 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t444 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t443
    %t445 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t444, i32 0, i32 21
    %t447 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t445, i32 0, i32 0
    %t446 = bitcast i8* %t447 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t446
    ; line 1073
    %t448 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t449 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t448
    %t450 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t449, i32 0, i32 21
    %t452 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t450, i32 0, i32 4
    %t451 = bitcast i8* %t452 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t451
    ; line 1081
    %t453 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t454 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t453
    %t455 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t454, i32 0, i32 21
    %t457 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t455, i32 0, i32 12
    %t456 = bitcast i8* %t457 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t456
    ; nop
    ; line 1088
    %t458 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t459 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t458
    %t460 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t459, i32 0, i32 22
    %t462 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t460, i32 0, i32 0
    %t461 = bitcast i8* %t462 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t461
    ; line 1091
    %t463 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t464 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t463
    %t465 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t464, i32 0, i32 22
    %t467 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t465, i32 0, i32 4
    %t466 = bitcast i8* %t467 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t466
    ; line 1092
    %t468 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t469 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t468
    %t470 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t469, i32 0, i32 22
    %t472 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t470, i32 0, i32 12
    %t471 = bitcast i8* %t472 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t471
    ; line 1099
    %t473 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t474 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t473
    %t475 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t474, i32 0, i32 23
    %t477 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t475, i32 0, i32 0
    %t476 = bitcast i8* %t477 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t476
    ; line 1100
    %t478 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t479 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t478
    %t480 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t479, i32 0, i32 23
    %t482 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t480, i32 0, i32 4
    %t481 = bitcast i8* %t482 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t481
    ; line 1101
    %t483 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t484 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t483
    %t485 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t484, i32 0, i32 23
    %t487 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t485, i32 0, i32 12
    %t486 = bitcast i8* %t487 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t486
    ; line 1105
    %t488 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t489 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t488
    %t490 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t489, i32 0, i32 24
    %t492 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t490, i32 0, i32 0
    %t491 = bitcast i8* %t492 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t491
    ; line 1106
    %t493 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t494 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t493
    %t495 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t494, i32 0, i32 24
    %t497 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t495, i32 0, i32 4
    %t496 = bitcast i8* %t497 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t496
    ; line 1107
    %t498 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t499 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t498
    %t500 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t499, i32 0, i32 24
    %t502 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t500, i32 0, i32 12
    %t501 = bitcast i8* %t502 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t501
    ; line 1111
    %t503 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t504 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t503
    %t505 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t504, i32 0, i32 25
    %t507 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t505, i32 0, i32 0
    %t506 = bitcast i8* %t507 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t506
    ; line 1114
    %t508 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t509 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t508
    %t510 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t509, i32 0, i32 25
    %t512 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t510, i32 0, i32 4
    %t511 = bitcast i8* %t512 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t511
    ; line 1122
    %t513 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t514 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t513
    %t515 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t514, i32 0, i32 25
    %t517 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t515, i32 0, i32 12
    %t516 = bitcast i8* %t517 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t516
    ; line 1126
    %t518 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t519 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t518
    %t520 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t519, i32 0, i32 26
    %t522 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t520, i32 0, i32 0
    %t521 = bitcast i8* %t522 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t521
    ; line 1128
    %t523 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t524 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t523
    %t525 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t524, i32 0, i32 26
    %t527 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t525, i32 0, i32 4
    %t526 = bitcast i8* %t527 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t526
    ; line 1129
    %t528 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t529 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t528
    %t530 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t529, i32 0, i32 26
    %t532 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t530, i32 0, i32 12
    %t531 = bitcast i8* %t532 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t531
    ; line 1133
    %t533 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t534 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t533
    %t535 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t534, i32 0, i32 27
    %t537 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t535, i32 0, i32 0
    %t536 = bitcast i8* %t537 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t536
    ; line 1136
    %t538 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t539 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t538
    %t540 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t539, i32 0, i32 27
    %t542 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t540, i32 0, i32 4
    %t541 = bitcast i8* %t542 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t541
    ; line 1137
    %t543 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t544 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t543
    %t545 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t544, i32 0, i32 27
    %t547 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t545, i32 0, i32 12
    %t546 = bitcast i8* %t547 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t546
    ; line 1141
    %t548 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t549 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t548
    %t550 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t549, i32 0, i32 28
    %t552 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t550, i32 0, i32 0
    %t551 = bitcast i8* %t552 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t551
    ; line 1142
    %t553 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t554 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t553
    %t555 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t554, i32 0, i32 28
    %t557 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t555, i32 0, i32 4
    %t556 = bitcast i8* %t557 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t556
    ; line 1143
    %t558 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t559 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t558
    %t560 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t559, i32 0, i32 28
    %t562 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t560, i32 0, i32 12
    %t561 = bitcast i8* %t562 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t561
    ; line 1147
    %t563 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t564 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t563
    %t565 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t564, i32 0, i32 29
    %t567 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t565, i32 0, i32 0
    %t566 = bitcast i8* %t567 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t566
    ; line 1148
    %t568 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t569 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t568
    %t570 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t569, i32 0, i32 29
    %t572 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t570, i32 0, i32 4
    %t571 = bitcast i8* %t572 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t571
    ; line 1149
    %t573 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t574 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t573
    %t575 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t574, i32 0, i32 29
    %t577 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t575, i32 0, i32 12
    %t576 = bitcast i8* %t577 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t576
    ; line 1153
    %t578 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t579 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t578
    %t580 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t579, i32 0, i32 30
    %t582 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t580, i32 0, i32 0
    %t581 = bitcast i8* %t582 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t581
    ; line 1154
    %t583 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t584 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t583
    %t585 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t584, i32 0, i32 30
    %t587 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t585, i32 0, i32 4
    %t586 = bitcast i8* %t587 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t586
    ; line 1155
    %t588 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t589 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t588
    %t590 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t589, i32 0, i32 30
    %t592 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t590, i32 0, i32 12
    %t591 = bitcast i8* %t592 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t591
    ; line 1159
    %t593 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t594 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t593
    %t595 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t594, i32 0, i32 31
    %t597 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t595, i32 0, i32 0
    %t596 = bitcast i8* %t597 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t596
    ; line 1160
    %t598 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t599 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t598
    %t600 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t599, i32 0, i32 31
    %t602 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t600, i32 0, i32 4
    %t601 = bitcast i8* %t602 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t601
    ; line 1161
    %t603 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t604 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t603
    %t605 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t604, i32 0, i32 31
    %t607 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t605, i32 0, i32 12
    %t606 = bitcast i8* %t607 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t606
    ; line 1165
    %t608 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t609 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t608
    %t610 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t609, i32 0, i32 32
    %t612 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t610, i32 0, i32 0
    %t611 = bitcast i8* %t612 to %T_OPTIONSET*
    store %T_OPTIONSET %.dummy_set, %T_OPTIONSET* %t611
    ; line 1166
    %t613 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t614 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t613
    %t615 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t614, i32 0, i32 32
    %t617 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t615, i32 0, i32 4
    %t616 = bitcast i8* %t617 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t616
    ; line 1167
    %t618 = getelementptr inbounds %Frame_INITIALISE, %Frame_INITIALISE* %.frame, i32 0, i32 11
    %t619 = load %T_OPTIONTABLE*, %T_OPTIONTABLE** %t618
    %t620 = getelementptr inbounds %T_OPTIONTABLE, %T_OPTIONTABLE* %t619, i32 0, i32 32
    %t622 = getelementptr inbounds %T_TABLEENTRY, %T_TABLEENTRY* %t620, i32 0, i32 12
    %t621 = bitcast i8* %t622 to %T_KEYSYMSET*
    store %T_KEYSYMSET %.dummy_set, %T_KEYSYMSET* %t621
    ; nop

    ; epilogue
    ret void
}


; line 1175
;================================================================================
; scope: STACKEMPTY (level : 2)

; activation record
%Frame_STACKEMPTY = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_STACKEMPTY()
{
    ; allocate frame
    %.frame = alloca %Frame_STACKEMPTY, align 8

    ; body
    ; line 1179

    ; epilogue
    %t1 = getelementptr inbounds %Frame_STACKEMPTY, %Frame_STACKEMPTY* %.frame, i32 0, i32 0
    %t2 = load i1, i1* %t1
    ret i1 %t2
}


; line 1187
;================================================================================
; scope: STACKFULL (level : 2)

; activation record
%Frame_STACKFULL = type
{
    ; variables
    i1,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i1 @F_STACKFULL()
{
    ; allocate frame
    %.frame = alloca %Frame_STACKFULL, align 8

    ; body
    ; line 1191

    ; epilogue
    %t1 = getelementptr inbounds %Frame_STACKFULL, %Frame_STACKFULL* %.frame, i32 0, i32 0
    %t2 = load i1, i1* %t1
    ret i1 %t2
}


; line 1199
;================================================================================
; scope: POPSTACK (level : 2)

; activation record
%Frame_POPSTACK = type
{
    ; parameters
    i32*,    ; 0: INDENTSYMBOL
    i32*,    ; 1: PREVMARGIN

    ; dummy
    i8*
};

; procedure body
define void @P_POPSTACK(i32* %INDENTSYMBOL, i32* %PREVMARGIN)
{
    ; allocate frame
    %.frame = alloca %Frame_POPSTACK, align 8
    %t1 = getelementptr inbounds %Frame_POPSTACK, %Frame_POPSTACK* %.frame, i32 0, i32 0
    store i32* %INDENTSYMBOL, i32** %t1
    %t2 = getelementptr inbounds %Frame_POPSTACK, %Frame_POPSTACK* %.frame, i32 0, i32 1
    store i32* %PREVMARGIN, i32** %t2

    ; body
    ; line 1204
    ; nop

    ; epilogue
    ret void
}


; line 1222
;================================================================================
; scope: PUSHSTACK (level : 2)

; activation record
%Frame_PUSHSTACK = type
{
    ; parameters
    i32,    ; 0: INDENTSYMBOL
    i32,    ; 1: PREVMARGIN

    ; dummy
    i8*
};

; procedure body
define void @P_PUSHSTACK(i32 %INDENTSYMBOL, i32 %PREVMARGIN)
{
    ; allocate frame
    %.frame = alloca %Frame_PUSHSTACK, align 8
    %t1 = getelementptr inbounds %Frame_PUSHSTACK, %Frame_PUSHSTACK* %.frame, i32 0, i32 0
    store i32 %INDENTSYMBOL, i32* %t1
    %t2 = getelementptr inbounds %Frame_PUSHSTACK, %Frame_PUSHSTACK* %.frame, i32 0, i32 1
    store i32 %PREVMARGIN, i32* %t2

    ; body
    ; line 1227
    %t4 = load i32, i32* @TOP
    %t3 = add i32 %t4, 1
    store i32 %t3, i32* @TOP
    ; line 1229
    %t5 = load i32, i32* @TOP
    %t6 = getelementptr inbounds %T_SYMBOLSTACK, %T_SYMBOLSTACK* @STACK, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_STACKENTRY, %T_STACKENTRY* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t10 = getelementptr inbounds %Frame_PUSHSTACK, %Frame_PUSHSTACK* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t7
    ; line 1230
    %t11 = load i32, i32* @TOP
    %t12 = getelementptr inbounds %T_SYMBOLSTACK, %T_SYMBOLSTACK* @STACK, i32 0, i32 %t11
    %t14 = getelementptr inbounds %T_STACKENTRY, %T_STACKENTRY* %t12, i32 0, i32 4
    %t13 = bitcast i8* %t14 to i32*
    %t16 = getelementptr inbounds %Frame_PUSHSTACK, %Frame_PUSHSTACK* %.frame, i32 0, i32 1
    %t15 = load i32, i32* %t16
    store i32 %t15, i32* %t13
    ; nop

    ; epilogue
    ret void
}


; line 1235
;================================================================================
; scope: WRITECRS (level : 2)

; activation record
%Frame_WRITECRS = type
{
    ; parameters
    i32*,    ; 0: CURRLINEPOS
    i32,    ; 1: NUMBEROFCRS
    %T_text*,    ; 2: OUTPUTFILE

    ; variables
    i32,    ; 3: I

    ; dummy
    i8*
};

; procedure body
define void @P_WRITECRS(i32 %NUMBEROFCRS, i32* %CURRLINEPOS, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_WRITECRS, align 8
    %t1 = getelementptr inbounds %Frame_WRITECRS, %Frame_WRITECRS* %.frame, i32 0, i32 0
    store i32* %CURRLINEPOS, i32** %t1
    %t2 = getelementptr inbounds %Frame_WRITECRS, %Frame_WRITECRS* %.frame, i32 0, i32 1
    store i32 %NUMBEROFCRS, i32* %t2
    %t3 = getelementptr inbounds %Frame_WRITECRS, %Frame_WRITECRS* %.frame, i32 0, i32 2
    store %T_text* %OUTPUTFILE, %T_text** %t3

    ; body
    ; line 1244

    ; epilogue
    ret void
}


; line 1256
;================================================================================
; scope: INSERTCR (level : 2)

; activation record
%Frame_INSERTCR = type
{
    ; parameters
    i8**,    ; 0: CURRSYM
    %T_text*,    ; 1: OUTPUTFILE

    ; dummy
    i8*
};

; procedure body
define void @P_INSERTCR(i8** %CURRSYM, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_INSERTCR, align 8
    %t1 = getelementptr inbounds %Frame_INSERTCR, %Frame_INSERTCR* %.frame, i32 0, i32 0
    store i8** %CURRSYM, i8*** %t1
    %t2 = getelementptr inbounds %Frame_INSERTCR, %Frame_INSERTCR* %.frame, i32 0, i32 1
    store %T_text* %OUTPUTFILE, %T_text** %t2

    ; body
    ; line 1264

    ; epilogue
    ret void
}


; line 1276
;================================================================================
; scope: INSERTBLANKLINE (level : 2)

; activation record
%Frame_INSERTBLANKLINE = type
{
    ; parameters
    i8**,    ; 0: CURRSYM
    %T_text*,    ; 1: OUTPUTFILE

    ; dummy
    i8*
};

; procedure body
define void @P_INSERTBLANKLINE(i8** %CURRSYM, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_INSERTBLANKLINE, align 8
    %t1 = getelementptr inbounds %Frame_INSERTBLANKLINE, %Frame_INSERTBLANKLINE* %.frame, i32 0, i32 0
    store i8** %CURRSYM, i8*** %t1
    %t2 = getelementptr inbounds %Frame_INSERTBLANKLINE, %Frame_INSERTBLANKLINE* %.frame, i32 0, i32 1
    store %T_text* %OUTPUTFILE, %T_text** %t2

    ; body
    ; line 1285

    ; epilogue
    ret void
}


; line 1306
;================================================================================
; scope: LSHIFTON (level : 2)

; activation record
%Frame_LSHIFTON = type
{
    ; parameters
    %T_KEYSYMSET,    ; 0: DINDENTSYMBOLS

    ; variables
    i32,    ; 1: INDENTSYMBOL
    i32,    ; 2: PREVMARGIN

    ; dummy
    i8*
};

; procedure body
define void @P_LSHIFTON(%T_KEYSYMSET %DINDENTSYMBOLS)
{
    ; allocate frame
    %.frame = alloca %Frame_LSHIFTON, align 8
    %t1 = getelementptr inbounds %Frame_LSHIFTON, %Frame_LSHIFTON* %.frame, i32 0, i32 0
    store %T_KEYSYMSET %DINDENTSYMBOLS, %T_KEYSYMSET* %t1

    ; body
    ; line 1314

    ; epilogue
    ret void
}


; line 1335
;================================================================================
; scope: LSHIFT (level : 2)

; activation record
%Frame_LSHIFT = type
{
    ; variables
    i32,    ; 0: INDENTSYMBOL
    i32,    ; 1: PREVMARGIN

    ; dummy
    i8*
};

; procedure body
define void @P_LSHIFT()
{
    ; allocate frame
    %.frame = alloca %Frame_LSHIFT, align 8

    ; body
    ; line 1343

    ; epilogue
    ret void
}


; line 1352
;================================================================================
; scope: INSERTSPACE (level : 2)

; activation record
%Frame_INSERTSPACE = type
{
    ; parameters
    %T_text*,    ; 0: OUTPUTFILE
    i8**,    ; 1: SYMBOL

    ; dummy
    i8*
};

; procedure body
define void @P_INSERTSPACE(i8** %SYMBOL, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_INSERTSPACE, align 8
    %t1 = getelementptr inbounds %Frame_INSERTSPACE, %Frame_INSERTSPACE* %.frame, i32 0, i32 0
    store %T_text* %OUTPUTFILE, %T_text** %t1
    %t2 = getelementptr inbounds %Frame_INSERTSPACE, %Frame_INSERTSPACE* %.frame, i32 0, i32 1
    store i8** %SYMBOL, i8*** %t2

    ; body
    ; line 1357

    ; epilogue
    ret void
}


; line 1372
;================================================================================
; scope: MOVELINEPOS (level : 2)

; activation record
%Frame_MOVELINEPOS = type
{
    ; parameters
    i32*,    ; 0: CURRLINEPOS
    i32,    ; 1: NEWLINEPOS
    %T_text*,    ; 2: OUTPUTFILE

    ; variables
    i32,    ; 3: I

    ; dummy
    i8*
};

; procedure body
define void @P_MOVELINEPOS(i32 %NEWLINEPOS, i32* %CURRLINEPOS, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_MOVELINEPOS, align 8
    %t1 = getelementptr inbounds %Frame_MOVELINEPOS, %Frame_MOVELINEPOS* %.frame, i32 0, i32 0
    store i32* %CURRLINEPOS, i32** %t1
    %t2 = getelementptr inbounds %Frame_MOVELINEPOS, %Frame_MOVELINEPOS* %.frame, i32 0, i32 1
    store i32 %NEWLINEPOS, i32* %t2
    %t3 = getelementptr inbounds %Frame_MOVELINEPOS, %Frame_MOVELINEPOS* %.frame, i32 0, i32 2
    store %T_text* %OUTPUTFILE, %T_text** %t3

    ; body
    ; line 1381
    ; line 1384
    %t4 = getelementptr inbounds %Frame_MOVELINEPOS, %Frame_MOVELINEPOS* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t7 = getelementptr inbounds %Frame_MOVELINEPOS, %Frame_MOVELINEPOS* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5

    ; epilogue
    ret void
}


; line 1389
;================================================================================
; scope: PRINTSYMBOL (level : 2)

; activation record
%Frame_PRINTSYMBOL = type
{
    ; parameters
    i32*,    ; 0: CURRLINEPOS
    i8*,    ; 1: CURRSYM
    %T_text*,    ; 2: OUTPUTFILE

    ; variables
    i32,    ; 3: I

    ; dummy
    i8*
};

; procedure body
define void @P_PRINTSYMBOL(i8* %CURRSYM, i32* %CURRLINEPOS, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_PRINTSYMBOL, align 8
    %t1 = getelementptr inbounds %Frame_PRINTSYMBOL, %Frame_PRINTSYMBOL* %.frame, i32 0, i32 0
    store i32* %CURRLINEPOS, i32** %t1
    %t2 = getelementptr inbounds %Frame_PRINTSYMBOL, %Frame_PRINTSYMBOL* %.frame, i32 0, i32 1
    store i8* %CURRSYM, i8** %t2
    %t3 = getelementptr inbounds %Frame_PRINTSYMBOL, %Frame_PRINTSYMBOL* %.frame, i32 0, i32 2
    store %T_text* %OUTPUTFILE, %T_text** %t3

    ; body
    ; line 1400
    ; line 1403
    %t4 = getelementptr inbounds %Frame_PRINTSYMBOL, %Frame_PRINTSYMBOL* %.frame, i32 0, i32 0
    %t5 = load i32*, i32** %t4
    %t8 = getelementptr inbounds %Frame_PRINTSYMBOL, %Frame_PRINTSYMBOL* %.frame, i32 0, i32 0
    %t9 = load i32*, i32** %t8
    %t7 = load i32, i32* %t9
    %t11 = getelementptr inbounds %Frame_PRINTSYMBOL, %Frame_PRINTSYMBOL* %.frame, i32 0, i32 1
    %t10 = load i8*, i8** %t11
    %t12 = bitcast i8* %t10 to %T_SYMBOL*
    %t14 = getelementptr inbounds %T_SYMBOL, %T_SYMBOL* %t12, i32 0, i32 204
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* %t13
    %t6 = add i32 %t7, %t15
    store i32 %t6, i32* %t5

    ; epilogue
    ret void
}


; line 1410
;================================================================================
; scope: PPSYMBOL (level : 2)

; activation record
%Frame_PPSYMBOL = type
{
    ; parameters
    i8*,    ; 0: CURRSYM
    %T_text*,    ; 1: OUTPUTFILE

    ; variables
    i32,    ; 2: NEWLINEPOS

    ; dummy
    i8*
};

; procedure body
define void @P_PPSYMBOL(i8* %CURRSYM, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_PPSYMBOL, align 8
    %t1 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 0
    store i8* %CURRSYM, i8** %t1
    %t2 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 1
    store %T_text* %OUTPUTFILE, %T_text** %t2

    ; body
    ; line 1423
    %t4 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 0
    %t3 = load i8*, i8** %t4
    %t5 = bitcast i8* %t3 to %T_SYMBOL*
    %t7 = getelementptr inbounds %T_SYMBOL, %T_SYMBOL* %t5, i32 0, i32 212
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    %t9 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 1
    %t10 = load %T_text*, %T_text** %t9
    call void @P_WRITECRS(i32 %t8, i32* @CURRLINEPOS, %T_text* %t10)
    ; line 1427
    ; line 1434
    ; line 1448
    %t12 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 2
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 1
    %t14 = load %T_text*, %T_text** %t13
    call void @P_MOVELINEPOS(i32 %t11, i32* @CURRLINEPOS, %T_text* %t14)
    ; line 1452
    %t16 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 0
    %t15 = load i8*, i8** %t16
    %t17 = getelementptr inbounds %Frame_PPSYMBOL, %Frame_PPSYMBOL* %.frame, i32 0, i32 1
    %t18 = load %T_text*, %T_text** %t17
    call void @P_PRINTSYMBOL(i8* %t15, i32* @CURRLINEPOS, %T_text* %t18)

    ; epilogue
    ret void
}


; line 1465
;================================================================================
; scope: GOBBLE (level : 2)

; activation record
%Frame_GOBBLE = type
{
    ; parameters
    i8**,    ; 0: CURRSYM
    %T_text*,    ; 1: INPUTFILE
    i8**,    ; 2: NEXTSYM
    %T_text*,    ; 3: OUTPUTFILE
    %T_KEYSYMSET,    ; 4: TERMINATORS

    ; dummy
    i8*
};

; procedure body
define void @P_GOBBLE(%T_text* %INPUTFILE, %T_KEYSYMSET %TERMINATORS, i8** %CURRSYM, i8** %NEXTSYM, %T_text* %OUTPUTFILE)
{
    ; allocate frame
    %.frame = alloca %Frame_GOBBLE, align 8
    %t1 = getelementptr inbounds %Frame_GOBBLE, %Frame_GOBBLE* %.frame, i32 0, i32 0
    store i8** %CURRSYM, i8*** %t1
    %t2 = getelementptr inbounds %Frame_GOBBLE, %Frame_GOBBLE* %.frame, i32 0, i32 1
    store %T_text* %INPUTFILE, %T_text** %t2
    %t3 = getelementptr inbounds %Frame_GOBBLE, %Frame_GOBBLE* %.frame, i32 0, i32 2
    store i8** %NEXTSYM, i8*** %t3
    %t4 = getelementptr inbounds %Frame_GOBBLE, %Frame_GOBBLE* %.frame, i32 0, i32 3
    store %T_text* %OUTPUTFILE, %T_text** %t4
    %t5 = getelementptr inbounds %Frame_GOBBLE, %Frame_GOBBLE* %.frame, i32 0, i32 4
    store %T_KEYSYMSET %TERMINATORS, %T_KEYSYMSET* %t5

    ; body
    ; line 1473
    %t7 = getelementptr inbounds %Frame_GOBBLE, %Frame_GOBBLE* %.frame, i32 0, i32 0
    %t8 = load i8**, i8*** %t7
    %t6 = load i8*, i8** %t8
    %t9 = bitcast i8* %t6 to %T_SYMBOL*
    %t11 = getelementptr inbounds %T_SYMBOL, %T_SYMBOL* %t9, i32 0, i32 0
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    call void @P_RSHIFTTOCLP(i32 %t12)
    ; line 1475
    ; line 1486
    call void @P_LSHIFT()

    ; epilogue
    ret void
}


; line 1491
;================================================================================
; scope: RSHIFT (level : 2)

; activation record
%Frame_RSHIFT = type
{
    ; parameters
    i32,    ; 0: CURRSYM

    ; dummy
    i8*
};

; procedure body
define void @P_RSHIFT(i32 %CURRSYM)
{
    ; allocate frame
    %.frame = alloca %Frame_RSHIFT, align 8
    %t1 = getelementptr inbounds %Frame_RSHIFT, %Frame_RSHIFT* %.frame, i32 0, i32 0
    store i32 %CURRSYM, i32* %t1

    ; body
    ; line 1495
    ; line 1499

    ; epilogue
    ret void
}


; line 1508
;================================================================================
; scope: RSHIFTTOCLP (level : 2)

; activation record
%Frame_RSHIFTTOCLP = type
{
    ; parameters
    i32,    ; 0: CURRSYM

    ; dummy
    i8*
};

; procedure body
define void @P_RSHIFTTOCLP(i32 %CURRSYM)
{
    ; allocate frame
    %.frame = alloca %Frame_RSHIFTTOCLP, align 8
    %t1 = getelementptr inbounds %Frame_RSHIFTTOCLP, %Frame_RSHIFTTOCLP* %.frame, i32 0, i32 0
    store i32 %CURRSYM, i32* %t1

    ; body
    ; line 1512
    ; line 1516
    %t2 = load i32, i32* @CURRLINEPOS
    store i32 %t2, i32* @CURRMARGIN
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.27 = private unnamed_addr constant [3 x i8] c"(*\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"BEGIN     \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"CASE      \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"CONST     \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"DO        \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ELSE      \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"END       \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"FOR       \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"FUNCTION  \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"IF        \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"INPUTFILE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"LABEL     \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"OF        \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OUTPUTFILE\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PROCEDURE \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"PROGRAM   \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"RECORD    \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"REPEAT    \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"THEN      \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"TYPE      \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"UNTIL     \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"VAR       \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"WHILE     \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"WITH      \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!72}
!llvm.module.flags = !{!73, !74}
!llvm.ident = !{!71}

!0 = !DIFile(filename: "prettyp.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHARINFO", file: !0, line: 272, size: 64, flags: DIFlagTypePassByValue, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "NAME", scope: !11, file: !0, line: 273, baseType: !9, size: 32, offset: 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "VALUE", scope: !11, file: !0, line: 274, baseType: !2, size: 8, offset: 32)
!14 = !{!12,!13}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "SYMBOLINFO", file: !0, line: 266, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SYMBOL", file: !0, line: 258, size: 1728, flags: DIFlagTypePassByValue, elements: !25)
!17 = !DICompositeType(tag: DW_TAG_array_type, name: "STRING", file: !0, line: 256, baseType: !2, size: 1600, elements: !19)
!18 = !DISubrange(count: 200)
!19 = !{!18}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "NAME", scope: !16, file: !0, line: 259, baseType: !8, size: 32, offset: 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "VALUE", scope: !16, file: !0, line: 260, baseType: !17, size: 1600, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "LENGTH", scope: !16, file: !0, line: 261, baseType: !3, size: 32, offset: 1632)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "SPACESBEFORE", scope: !16, file: !0, line: 262, baseType: !3, size: 32, offset: 1664)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CRSBEFORE", scope: !16, file: !0, line: 263, baseType: !3, size: 32, offset: 1696)
!25 = !{!20,!21,!22,!23,!24}
!26 = !DICompositeType(tag: DW_TAG_array_type, name: "DBLCHARTABLE", file: !0, line: 251, baseType: !27, size: 32, elements: !31)
!27 = !DICompositeType(tag: DW_TAG_array_type, name: "SPECIALCHAR", file: !0, line: 247, baseType: !2, size: 16, elements: !29)
!28 = !DISubrange(count: 2)
!29 = !{!28}
!30 = !DISubrange(count: 2)
!31 = !{!30}
!32 = !DICompositeType(tag: DW_TAG_array_type, name: "DBLCHRSET", file: !0, line: 249, baseType: !35, size: 32, elements: !34)
!33 = !DISubrange(count: 24)
!34 = !{!33}
!35 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!36 = !DICompositeType(tag: DW_TAG_array_type, name: "KEY", file: !0, line: 241, baseType: !2, size: 80, elements: !38)
!37 = !DISubrange(count: 10)
!38 = !{!37}
!39 = !DICompositeType(tag: DW_TAG_array_type, name: "KEYSYMSET", file: !0, line: 230, baseType: !42, size: 64, elements: !41)
!40 = !DISubrange(count: 33)
!41 = !{!40}
!42 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!43 = !DICompositeType(tag: DW_TAG_array_type, name: "KEYWORDTABLE", file: !0, line: 244, baseType: !36, size: 1760, elements: !45)
!44 = !DISubrange(count: 22)
!45 = !{!44}
!46 = !DICompositeType(tag: DW_TAG_array_type, name: "OPTIONSET", file: !0, line: 228, baseType: !49, size: 32, elements: !48)
!47 = !DISubrange(count: 11)
!48 = !{!47}
!49 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!50 = !DICompositeType(tag: DW_TAG_array_type, name: "OPTIONTABLE", file: !0, line: 238, baseType: !51, size: 5280, elements: !57)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TABLEENTRY", file: !0, line: 232, size: 160, flags: DIFlagTypePassByValue, elements: !55)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "OPTIONSSELECTED", scope: !51, file: !0, line: 233, baseType: !46, size: 32, offset: 0)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "DINDENTSYMBOLS", scope: !51, file: !0, line: 234, baseType: !39, size: 64, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "GOBBLETERMINATORS", scope: !51, file: !0, line: 235, baseType: !39, size: 64, offset: 96)
!55 = !{!52,!53,!54}
!56 = !DISubrange(count: 33)
!57 = !{!56}
!58 = !DICompositeType(tag: DW_TAG_array_type, name: "SGLCHARTABLE", file: !0, line: 253, baseType: !2, size: 48, elements: !60)
!59 = !DISubrange(count: 6)
!60 = !{!59}
!61 = !DICompositeType(tag: DW_TAG_array_type, name: "SYMBOLSTACK", file: !0, line: 283, baseType: !62, size: 6400, elements: !67)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "STACKENTRY", file: !0, line: 278, size: 64, flags: DIFlagTypePassByValue, elements: !65)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "INDENTSYMBOL", scope: !62, file: !0, line: 279, baseType: !8, size: 32, offset: 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "PREVMARGIN", scope: !62, file: !0, line: 280, baseType: !3, size: 32, offset: 32)
!65 = !{!63,!64}
!66 = !DISubrange(count: 100)
!67 = !{!66}
!68 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!15,!16,!17,!26,!27,!32,!36,!39,!43,!46,!50,!51,!58,!61,!62}
!69 = !{}
!70 = !{}
!71 = !{!"LPC 1.1"}
!72 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !68, globals: !70, nameTableKind: None)
!73 = !{i32 2, !"CodeView", i32 1}
!74 = !{i32 2, !"Debug Info Version", i32 3}

