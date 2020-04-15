; ModuleID = 'prettyp.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\prettyp.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)

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

    ; epilogue
    %t3 = getelementptr inbounds %Frame_IDTYPE, %Frame_IDTYPE* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t3
    ret i32 %t4
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

    ; epilogue
    %t3 = getelementptr inbounds %Frame_CHARTYPE, %Frame_CHARTYPE* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t3
    ret i32 %t4
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

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.3 = private unnamed_addr constant [10 x i8] c"INPUTFILE\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OUTPUTFILE\00", align 1
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

