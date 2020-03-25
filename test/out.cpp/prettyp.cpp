
#include <lpcRuntime.h>

#line 0 "prettyp.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "_output" },
    { "INPUTFILE" },
    { "OUTPUTFILE" },
};

_Filename* _FilenameMap = _FilenameMapEntries;
const int _FilenameMapSize = _countof(_FilenameMapEntries);


#line 0
//================================================================================
// scope: global scope (level : 0)

// types
typedef char T_boolean;
typedef char T_char;
typedef int T_integer;
typedef double T_real;
typedef _T_Text T_text;

// constants
const T_boolean C_false = 0;
const T_integer C_maxint = 2147483647;
const T_boolean C_true = 1;

#line 167
//================================================================================
// scope: program scope (level : 1)

// types
typedef int T_KEYSYMBOL;
typedef int T_CHARNAME;
typedef int T_OPTION;
struct T_CHARINFO
{
    T_CHARNAME NAME;
    T_char VALUE;
};
typedef _T_Array< 1, 200, T_char > T_STRING;
struct T_SYMBOL
{
    T_KEYSYMBOL NAME;
    T_STRING VALUE;
    T_integer LENGTH;
    T_integer SPACESBEFORE;
    T_integer CRSBEFORE;
};
_PTR_TYPE(T_SYMBOLINFO, T_SYMBOL)
typedef _T_Array< 1, 2, T_char > T_SPECIALCHAR;
typedef _T_Array< 22, 23, T_SPECIALCHAR > T_DBLCHARTABLE;
typedef _T_Set<22, 23> T_DBLCHRSET;
typedef _T_Array< 1, 10, T_char > T_KEY;
typedef _T_Set<0, 32> T_KEYSYMSET;
typedef _T_Array< 0, 21, T_KEY > T_KEYWORDTABLE;
typedef _T_Set<0, 10> T_OPTIONSET;
struct T_TABLEENTRY
{
    T_OPTIONSET OPTIONSSELECTED;
    T_KEYSYMSET DINDENTSYMBOLS;
    T_KEYSYMSET GOBBLETERMINATORS;
};
typedef _T_Array< 0, 32, T_TABLEENTRY > T_OPTIONTABLE;
typedef _T_Array< 25, 30, T_char > T_SGLCHARTABLE;
struct T_STACKENTRY
{
    T_KEYSYMBOL INDENTSYMBOL;
    T_integer PREVMARGIN;
};
typedef _T_Array< 1, 100, T_STACKENTRY > T_SYMBOLSTACK;

// forward declarations
void P_GETCHAR(void* _slink, T_text& INPUTFILE, T_CHARINFO& NEXTCHAR, T_CHARINFO& CURRCHAR);
void P_STORENEXTCHAR(void* _slink, T_text& INPUTFILE, T_integer& LENGTH, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_STRING& VALUE);
void P_SKIPSPACES(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_integer& SPACESBEFORE, T_integer& CRSBEFORE);
void P_GETCOMMENT(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH);
T_KEYSYMBOL F_IDTYPE(void* _slink, T_STRING VALUE, T_integer LENGTH);
void P_GETIDENTIFIER(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH);
void P_GETNUMBER(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH);
void P_GETCHARLITERAL(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH);
T_KEYSYMBOL F_CHARTYPE(void* _slink, T_CHARINFO CURRCHAR, T_CHARINFO NEXTCHAR);
void P_GETSPECIALCHAR(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH);
void P_GETNEXTSYMBOL(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH);
void P_GETSYMBOL(void* _slink, T_text& INPUTFILE, T_SYMBOLINFO& NEXTSYM, T_SYMBOLINFO& CURRSYM);
void P_INITIALISE(void* _slink, T_text& INPUTFILE, T_text& OUTPUTFILE, T_integer& TOPOFSTACK, T_integer& CURRLINEPOS, T_integer& CURRMARGIN, T_KEYWORDTABLE& KEYWORD, T_DBLCHRSET& DBLCHARS, T_DBLCHARTABLE& DBLCHAR, T_SGLCHARTABLE& SGLCHAR, T_boolean& RECORDSEEN, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_SYMBOLINFO& CURRSYM, T_SYMBOLINFO& NEXTSYM, T_OPTIONTABLE& PPOPTION);
T_boolean F_STACKEMPTY(void* _slink);
T_boolean F_STACKFULL(void* _slink);
void P_POPSTACK(void* _slink, T_KEYSYMBOL& INDENTSYMBOL, T_integer& PREVMARGIN);
void P_PUSHSTACK(void* _slink, T_KEYSYMBOL INDENTSYMBOL, T_integer PREVMARGIN);
void P_WRITECRS(void* _slink, T_integer NUMBEROFCRS, T_integer& CURRLINEPOS, T_text& OUTPUTFILE);
void P_INSERTCR(void* _slink, T_SYMBOLINFO& CURRSYM, T_text& OUTPUTFILE);
void P_INSERTBLANKLINE(void* _slink, T_SYMBOLINFO& CURRSYM, T_text& OUTPUTFILE);
void P_LSHIFTON(void* _slink, T_KEYSYMSET DINDENTSYMBOLS);
void P_LSHIFT(void* _slink);
void P_INSERTSPACE(void* _slink, T_SYMBOLINFO& SYMBOL, T_text& OUTPUTFILE);
void P_MOVELINEPOS(void* _slink, T_integer NEWLINEPOS, T_integer& CURRLINEPOS, T_text& OUTPUTFILE);
void P_PRINTSYMBOL(void* _slink, T_SYMBOLINFO CURRSYM, T_integer& CURRLINEPOS, T_text& OUTPUTFILE);
void P_PPSYMBOL(void* _slink, T_SYMBOLINFO CURRSYM, T_text& OUTPUTFILE);
void P_GOBBLE(void* _slink, T_text& INPUTFILE, T_KEYSYMSET TERMINATORS, T_SYMBOLINFO& CURRSYM, T_SYMBOLINFO& NEXTSYM, T_text& OUTPUTFILE);
void P_RSHIFT(void* _slink, T_KEYSYMBOL CURRSYM);
void P_RSHIFTTOCLP(void* _slink, T_KEYSYMBOL CURRSYM);

// constants
const T_KEYSYMBOL C_BECOMES = 22;
const T_KEYSYMBOL C_BEGINSYM = 7;
const T_CHARNAME C_BLANK = 2;
const T_OPTION C_BLANKLINEBEFORE = 2;
const T_KEYSYMBOL C_CASESYM = 10;
const T_KEYSYMBOL C_CASEVARSYM = 11;
const T_KEYSYMBOL C_CLOSECOMMENT = 24;
const T_KEYSYMBOL C_CLOSEPAREN = 29;
const T_KEYSYMBOL C_COLON = 26;
const T_KEYSYMBOL C_CONSTSYM = 4;
const T_OPTION C_CRAFTER = 10;
const T_OPTION C_CRBEFORE = 1;
const T_OPTION C_CRSUPPRESS = 0;
const T_CHARNAME C_DIGIT = 1;
const T_OPTION C_DINDENT = 4;
const T_OPTION C_DINDENTONKEYS = 3;
const T_KEYSYMBOL C_DOSYM = 16;
const T_KEYSYMBOL C_ELSESYM = 19;
const T_KEYSYMBOL C_ENDOFFILE = 31;
const T_CHARNAME C_ENDOFLINE = 4;
const T_KEYSYMBOL C_ENDSYM = 20;
const T_KEYSYMBOL C_EQUALS = 27;
const T_CHARNAME C_FILEMARK = 5;
const T_KEYSYMBOL C_FORSYM = 13;
const T_KEYSYMBOL C_FUNCSYM = 1;
const T_OPTION C_GOBBLESYMBOLS = 7;
const T_KEYSYMBOL C_IFSYM = 17;
const T_integer C_INDENT1 = 3;
const T_integer C_INDENT2 = 1;
const T_OPTION C_INDENTBYTAB = 8;
const T_OPTION C_INDENTTOCLP = 9;
const T_KEYSYMBOL C_LABELSYM = 3;
const T_CHARNAME C_LETTER = 0;
const T_integer C_MAXKEYLENGTH = 10;
const T_integer C_MAXLINESIZE = 72;
const T_integer C_MAXSTACKSIZE = 100;
const T_integer C_MAXSYMBOLSIZE = 200;
const T_KEYSYMBOL C_OFSYM = 12;
const T_KEYSYMBOL C_OPENCOMMENT = 23;
const T_KEYSYMBOL C_OPENPAREN = 28;
const T_CHARNAME C_OTHERCHAR = 6;
const T_KEYSYMBOL C_OTHERSYM = 32;
const T_KEYSYMBOL C_PERIOD = 30;
const T_KEYSYMBOL C_PROCSYM = 2;
const T_KEYSYMBOL C_PROGSYM = 0;
const T_CHARNAME C_QUOTE = 3;
const T_KEYSYMBOL C_RECORDSYM = 9;
const T_KEYSYMBOL C_REPEATSYM = 8;
const T_KEYSYMBOL C_SEMICOLON = 25;
const T_integer C_SLOFAIL1 = 30;
const T_integer C_SLOFAIL2 = 48;
const T_char C_SPACE = ' ';
const T_OPTION C_SPACEAFTER = 6;
const T_OPTION C_SPACEBEFORE = 5;
const T_KEYSYMBOL C_THENSYM = 18;
const T_KEYSYMBOL C_TYPESYM = 5;
const T_KEYSYMBOL C_UNTILSYM = 21;
const T_KEYSYMBOL C_VARSYM = 6;
const T_KEYSYMBOL C_WHILESYM = 14;
const T_KEYSYMBOL C_WITHSYM = 15;

// program variables
T_text _input;
T_text _output;
T_boolean CRPENDING;
T_CHARINFO CURRCHAR;
T_integer CURRLINEPOS;
T_integer CURRMARGIN;
T_SYMBOLINFO CURRSYM;
T_DBLCHARTABLE DBLCHAR;
T_DBLCHRSET DBLCHARS;
T_text INPUTFILE;
T_KEYWORDTABLE KEYWORD;
T_CHARINFO NEXTCHAR;
T_SYMBOLINFO NEXTSYM;
T_text OUTPUTFILE;
T_OPTIONTABLE PPOPTION;
T_boolean RECORDSEEN;
T_SGLCHARTABLE SGLCHAR;
T_SYMBOLSTACK STACK;
T_integer TOP;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    INPUTFILE.init(2);
    OUTPUTFILE.init(3);
    
    // subroutine body
    #line 1522
    P_INITIALISE(nullptr, INPUTFILE, OUTPUTFILE, TOP, CURRLINEPOS, CURRMARGIN, KEYWORD, DBLCHARS, DBLCHAR, SGLCHAR, RECORDSEEN, CURRCHAR, NEXTCHAR, CURRSYM, NEXTSYM, PPOPTION);
    
    #line 1527
    CRPENDING = C_false;
    
    #line 1529
    while(((*NEXTSYM._ptr).NAME != C_ENDOFFILE))
    {
        #line 1531
        P_GETSYMBOL(nullptr, INPUTFILE, NEXTSYM, CURRSYM);
        
        #line 1538
        if(((CRPENDING && (!(PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_CRSUPPRESS))) || (PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_CRBEFORE)))
        {
            #line 1540
            P_INSERTCR(nullptr, CURRSYM, OUTPUTFILE);
            
            #line 1542
            CRPENDING = C_false;
            
            { /* NOP */ }
        }
        
        #line 1545
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_BLANKLINEBEFORE))
        {
            #line 1546
            P_INSERTBLANKLINE(nullptr, CURRSYM, OUTPUTFILE);
            
            #line 1548
            CRPENDING = C_false;
        }
        
        #line 1551
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_DINDENTONKEYS))
        {
            #line 1552
            P_LSHIFTON(nullptr, PPOPTION[(*CURRSYM._ptr).NAME].DINDENTSYMBOLS);
        }
        
        #line 1554
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_DINDENT))
        {
            #line 1555
            P_LSHIFT(nullptr);
        }
        
        #line 1557
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_SPACEBEFORE))
        {
            #line 1558
            P_INSERTSPACE(nullptr, CURRSYM, OUTPUTFILE);
        }
        
        #line 1561
        P_PPSYMBOL(nullptr, CURRSYM, OUTPUTFILE);
        
        #line 1564
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_SPACEAFTER))
        {
            #line 1565
            P_INSERTSPACE(nullptr, NEXTSYM, OUTPUTFILE);
        }
        
        #line 1568
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_INDENTBYTAB))
        {
            #line 1570
            P_RSHIFT(nullptr, (*CURRSYM._ptr).NAME);
        }
        
        #line 1572
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_INDENTTOCLP))
        {
            #line 1573
            P_RSHIFTTOCLP(nullptr, (*CURRSYM._ptr).NAME);
        }
        
        #line 1575
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_GOBBLESYMBOLS))
        {
            #line 1576
            P_GOBBLE(nullptr, INPUTFILE, PPOPTION[(*CURRSYM._ptr).NAME].GOBBLETERMINATORS, CURRSYM, NEXTSYM, OUTPUTFILE);
        }
        
        #line 1582
        if((PPOPTION[(*CURRSYM._ptr).NAME].OPTIONSSELECTED & C_CRAFTER))
        {
            #line 1583
            CRPENDING = C_true;
        }
        
        { /* NOP */ }
        
        { /* NOP */ }
    }
    
    #line 1589
    if(CRPENDING)
    {
        #line 1590
        OUTPUTFILE << _WRITELN;
    }
    
    { /* NOP */ }
}


#line 317
//================================================================================
// scope: GETCHAR (level : 2)

// activation record
struct Frame_GETCHAR
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& NEXTCHAR;
    T_CHARINFO& CURRCHAR;
};

// function body
void P_GETCHAR(void* _slink, T_text& INPUTFILE, T_CHARINFO& NEXTCHAR, T_CHARINFO& CURRCHAR)
{
    // prologue/frame definition
    Frame_GETCHAR _F = {INPUTFILE, NEXTCHAR, CURRCHAR };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('A', 'Z');
    _setLiteral1.set('a', 'z');
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('0', '9');
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_FILEMARK);
    _setLiteral3.set(C_ENDOFLINE);
    
    // subroutine body
    #line 323
    _F.CURRCHAR = _F.NEXTCHAR;
    
    #line 328
    if(_eof(_F.INPUTFILE))
    {
        #line 330
        _F.NEXTCHAR.NAME = C_FILEMARK;
    }
    else
    {
        #line 332
        if(_eoln(_F.INPUTFILE))
        {
            #line 334
            _F.NEXTCHAR.NAME = C_ENDOFLINE;
        }
        else
        {
            #line 336
            if((_setLiteral1 & _F.INPUTFILE.bufferVar()))
            {
                #line 338
                _F.NEXTCHAR.NAME = C_LETTER;
            }
            else
            {
                #line 340
                if((_setLiteral2 & _F.INPUTFILE.bufferVar()))
                {
                    #line 342
                    _F.NEXTCHAR.NAME = C_DIGIT;
                }
                else
                {
                    #line 344
                    if((_F.INPUTFILE.bufferVar() == '\''))
                    {
                        #line 346
                        _F.NEXTCHAR.NAME = C_QUOTE;
                    }
                    else
                    {
                        #line 348
                        if((_F.INPUTFILE.bufferVar() == C_SPACE))
                        {
                            #line 350
                            _F.NEXTCHAR.NAME = C_BLANK;
                        }
                        else
                        {
                            #line 352
                            _F.NEXTCHAR.NAME = C_OTHERCHAR;
                        }
                    }
                }
            }
        }
    }
    
    #line 355
    if((_setLiteral3 & _F.NEXTCHAR.NAME))
    {
        #line 357
        _F.NEXTCHAR.VALUE = C_SPACE;
    }
    else
    {
        #line 359
        _F.NEXTCHAR.VALUE = _F.INPUTFILE.bufferVar();
    }
    
    #line 361
    if((_F.NEXTCHAR.NAME != C_FILEMARK))
    {
        #line 362
        _get(_F.INPUTFILE);
    }
}


#line 369
//================================================================================
// scope: STORENEXTCHAR (level : 2)

// activation record
struct Frame_STORENEXTCHAR
{
    // parameters
    T_text& INPUTFILE;
    T_integer& LENGTH;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_STRING& VALUE;
};

// function body
void P_STORENEXTCHAR(void* _slink, T_text& INPUTFILE, T_integer& LENGTH, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_STRING& VALUE)
{
    // prologue/frame definition
    Frame_STORENEXTCHAR _F = {INPUTFILE, LENGTH, CURRCHAR, NEXTCHAR, VALUE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 377
    P_GETCHAR(nullptr, _F.INPUTFILE, _F.NEXTCHAR, _F.CURRCHAR);
    
    #line 381
    if((_F.LENGTH < C_MAXSYMBOLSIZE))
    {
        #line 383
        _F.LENGTH = (_F.LENGTH + 1);
        
        #line 385
        _F.VALUE[_F.LENGTH] = _F.CURRCHAR.VALUE;
    }
}


#line 392
//================================================================================
// scope: SKIPSPACES (level : 2)

// activation record
struct Frame_SKIPSPACES
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_integer& SPACESBEFORE;
    T_integer& CRSBEFORE;
};

// function body
void P_SKIPSPACES(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_integer& SPACESBEFORE, T_integer& CRSBEFORE)
{
    // prologue/frame definition
    Frame_SKIPSPACES _F = {INPUTFILE, CURRCHAR, NEXTCHAR, SPACESBEFORE, CRSBEFORE };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_BLANK);
    _setLiteral1.set(C_ENDOFLINE);
    
    // subroutine body
    #line 400
    _F.CRSBEFORE = 0;
    
    #line 401
    _F.SPACESBEFORE = 0;
    
    #line 403
    while((_setLiteral1 & _F.NEXTCHAR.NAME))
    {
        #line 406
        P_GETCHAR(nullptr, _F.INPUTFILE, _F.NEXTCHAR, _F.CURRCHAR);
        
        #line 410
        switch(_F.CURRCHAR.NAME)
        {
        case C_BLANK:
            #line 412
            _F.SPACESBEFORE = (_F.SPACESBEFORE + 1);
            break;
        
        case C_ENDOFLINE:
            #line 415
            _F.CRSBEFORE = (_F.CRSBEFORE + 1);
            
            #line 416
            _F.SPACESBEFORE = 0;
            break;
        }
    }
}


#line 426
//================================================================================
// scope: GETCOMMENT (level : 2)

// activation record
struct Frame_GETCOMMENT
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_KEYSYMBOL& NAME;
    T_STRING& VALUE;
    T_integer& LENGTH;
};

// function body
void P_GETCOMMENT(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH)
{
    // prologue/frame definition
    Frame_GETCOMMENT _F = {INPUTFILE, CURRCHAR, NEXTCHAR, NAME, VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 435
    _F.NAME = C_OPENCOMMENT;
    
    #line 437
    while((!((((_F.CURRCHAR.VALUE == '*') && (_F.NEXTCHAR.VALUE == ')')) || (_F.NEXTCHAR.NAME == C_ENDOFLINE)) || (_F.NEXTCHAR.NAME == C_FILEMARK))))
    {
        #line 441
        P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
    }
    
    #line 448
    if(((_F.CURRCHAR.VALUE == '*') && (_F.NEXTCHAR.VALUE == ')')))
    {
        #line 452
        P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
        
        #line 458
        _F.NAME = C_CLOSECOMMENT;
        
        { /* NOP */ }
    }
}


#line 465
//================================================================================
// scope: IDTYPE (level : 2)

// activation record
struct Frame_IDTYPE
{
    // parameters
    T_STRING VALUE;
    T_integer LENGTH;

    // locals
    T_KEYSYMBOL _fnvalue;
    T_boolean HIT;
    T_integer I;
    T_KEY KEYVALUE;
    T_KEYSYMBOL THISKEY;
};

// function body
T_KEYSYMBOL F_IDTYPE(void* _slink, T_STRING VALUE, T_integer LENGTH)
{
    // prologue/frame definition
    Frame_IDTYPE _F = {VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 481
    _F._fnvalue = C_OTHERSYM;
    
    #line 483
    if((_F.LENGTH <= C_MAXKEYLENGTH))
    {
        #line 485
        _FOR_TO(_F.I, 1, _F.LENGTH)
        {
            #line 486
            _F.KEYVALUE[_F.I] = _F.VALUE[_F.I];
        }
        _FOR_END(_F.I)
        
        #line 488
        _FOR_TO(_F.I, (_F.LENGTH + 1), C_MAXKEYLENGTH)
        {
            #line 489
            _F.KEYVALUE[_F.I] = C_SPACE;
        }
        _FOR_END(_F.I)
        
        #line 491
        _F.THISKEY = C_PROGSYM;
        
        #line 492
        _F.HIT = C_false;
        
        #line 494
        while((!(_F.HIT || (_pred(_F.THISKEY) == C_UNTILSYM))))
        {
            #line 495
            if(_strcmpEQ<10>(_F.KEYVALUE, KEYWORD[_F.THISKEY]))
            {
                #line 496
                _F.HIT = C_true;
            }
            else
            {
                #line 498
                _F.THISKEY = _succ(_F.THISKEY);
            }
        }
        
        #line 500
        if(_F.HIT)
        {
            #line 501
            _F._fnvalue = _F.THISKEY;
        }
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


#line 508
//================================================================================
// scope: GETIDENTIFIER (level : 2)

// activation record
struct Frame_GETIDENTIFIER
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_KEYSYMBOL& NAME;
    T_STRING& VALUE;
    T_integer& LENGTH;
};

// function body
void P_GETIDENTIFIER(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH)
{
    // prologue/frame definition
    Frame_GETIDENTIFIER _F = {INPUTFILE, CURRCHAR, NEXTCHAR, NAME, VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_LETTER);
    _setLiteral1.set(C_DIGIT);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_RECORDSYM);
    _setLiteral2.set(C_CASESYM);
    _setLiteral2.set(C_ENDSYM);
    
    // subroutine body
    #line 517
    while((_setLiteral1 & _F.NEXTCHAR.NAME))
    {
        #line 519
        P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
    }
    
    #line 526
    _F.NAME = F_IDTYPE(nullptr, _F.VALUE, _F.LENGTH);
    
    #line 529
    if((_setLiteral2 & _F.NAME))
    {
        #line 531
        switch(_F.NAME)
        {
        case C_RECORDSYM:
            #line 533
            RECORDSEEN = C_true;
            break;
        
        case C_CASESYM:
            #line 535
            if(RECORDSEEN)
            {
                #line 537
                _F.NAME = C_CASEVARSYM;
            }
            break;
        
        case C_ENDSYM:
            #line 539
            RECORDSEEN = C_false;
            break;
        }
    }
}


#line 546
//================================================================================
// scope: GETNUMBER (level : 2)

// activation record
struct Frame_GETNUMBER
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_KEYSYMBOL& NAME;
    T_STRING& VALUE;
    T_integer& LENGTH;
};

// function body
void P_GETNUMBER(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH)
{
    // prologue/frame definition
    Frame_GETNUMBER _F = {INPUTFILE, CURRCHAR, NEXTCHAR, NAME, VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 555
    while((_F.NEXTCHAR.NAME == C_DIGIT))
    {
        #line 557
        P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
    }
    
    #line 563
    _F.NAME = C_OTHERSYM;
}


#line 568
//================================================================================
// scope: GETCHARLITERAL (level : 2)

// activation record
struct Frame_GETCHARLITERAL
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_KEYSYMBOL& NAME;
    T_STRING& VALUE;
    T_integer& LENGTH;
};

// function body
void P_GETCHARLITERAL(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH)
{
    // prologue/frame definition
    Frame_GETCHARLITERAL _F = {INPUTFILE, CURRCHAR, NEXTCHAR, NAME, VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_QUOTE);
    _setLiteral1.set(C_ENDOFLINE);
    _setLiteral1.set(C_FILEMARK);
    
    // subroutine body
    #line 577
    while((_F.NEXTCHAR.NAME == C_QUOTE))
    {
        #line 579
        P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
        
        #line 585
        while((!(_setLiteral1 & _F.NEXTCHAR.NAME)))
        {
            #line 587
            P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
        }
        
        #line 594
        if((_F.NEXTCHAR.NAME == C_QUOTE))
        {
            #line 595
            P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
        }
    }
    
    #line 603
    _F.NAME = C_OTHERSYM;
}


#line 608
//================================================================================
// scope: CHARTYPE (level : 2)

// activation record
struct Frame_CHARTYPE
{
    // parameters
    T_CHARINFO CURRCHAR;
    T_CHARINFO NEXTCHAR;

    // locals
    T_KEYSYMBOL _fnvalue;
    T_boolean HIT;
    T_SPECIALCHAR NEXTTWOCHARS;
    T_KEYSYMBOL THISCHAR;
};

// function body
T_KEYSYMBOL F_CHARTYPE(void* _slink, T_CHARINFO CURRCHAR, T_CHARINFO NEXTCHAR)
{
    // prologue/frame definition
    Frame_CHARTYPE _F = {CURRCHAR, NEXTCHAR };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 622
    _F.NEXTTWOCHARS[1] = _F.CURRCHAR.VALUE;
    
    #line 623
    _F.NEXTTWOCHARS[2] = _F.NEXTCHAR.VALUE;
    
    #line 625
    _F.THISCHAR = C_BECOMES;
    
    #line 626
    _F.HIT = C_false;
    
    #line 628
    while((!(_F.HIT || (_F.THISCHAR == C_CLOSECOMMENT))))
    {
        #line 629
        if(_strcmpEQ<2>(_F.NEXTTWOCHARS, DBLCHAR[_F.THISCHAR]))
        {
            #line 630
            _F.HIT = C_true;
        }
        else
        {
            #line 632
            _F.THISCHAR = _succ(_F.THISCHAR);
        }
    }
    
    #line 634
    if((!_F.HIT))
    {
        #line 636
        _F.THISCHAR = C_SEMICOLON;
        
        #line 638
        while((!(_F.HIT || (_pred(_F.THISCHAR) == C_PERIOD))))
        {
            #line 639
            if((_F.CURRCHAR.VALUE == SGLCHAR[_F.THISCHAR]))
            {
                #line 640
                _F.HIT = C_true;
            }
            else
            {
                #line 642
                _F.THISCHAR = _succ(_F.THISCHAR);
            }
        }
    }
    
    #line 646
    if(_F.HIT)
    {
        #line 647
        _F._fnvalue = _F.THISCHAR;
    }
    else
    {
        #line 649
        _F._fnvalue = C_OTHERSYM;
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 654
//================================================================================
// scope: GETSPECIALCHAR (level : 2)

// activation record
struct Frame_GETSPECIALCHAR
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_KEYSYMBOL& NAME;
    T_STRING& VALUE;
    T_integer& LENGTH;
};

// function body
void P_GETSPECIALCHAR(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH)
{
    // prologue/frame definition
    Frame_GETSPECIALCHAR _F = {INPUTFILE, CURRCHAR, NEXTCHAR, NAME, VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 663
    P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
    
    #line 669
    _F.NAME = F_CHARTYPE(nullptr, _F.CURRCHAR, _F.NEXTCHAR);
    
    #line 672
    if((DBLCHARS & _F.NAME))
    {
        #line 673
        P_STORENEXTCHAR(nullptr, _F.INPUTFILE, _F.LENGTH, _F.CURRCHAR, _F.NEXTCHAR, _F.VALUE);
    }
    
    { /* NOP */ }
}


#line 682
//================================================================================
// scope: GETNEXTSYMBOL (level : 2)

// activation record
struct Frame_GETNEXTSYMBOL
{
    // parameters
    T_text& INPUTFILE;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_KEYSYMBOL& NAME;
    T_STRING& VALUE;
    T_integer& LENGTH;
};

// function body
void P_GETNEXTSYMBOL(void* _slink, T_text& INPUTFILE, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_KEYSYMBOL& NAME, T_STRING& VALUE, T_integer& LENGTH)
{
    // prologue/frame definition
    Frame_GETNEXTSYMBOL _F = {INPUTFILE, CURRCHAR, NEXTCHAR, NAME, VALUE, LENGTH };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 691
    switch(_F.NEXTCHAR.NAME)
    {
    case C_LETTER:
        #line 693
        P_GETIDENTIFIER(nullptr, _F.INPUTFILE, _F.CURRCHAR, _F.NEXTCHAR, _F.NAME, _F.VALUE, _F.LENGTH);
        break;
    
    case C_DIGIT:
        #line 700
        P_GETNUMBER(nullptr, _F.INPUTFILE, _F.CURRCHAR, _F.NEXTCHAR, _F.NAME, _F.VALUE, _F.LENGTH);
        break;
    
    case C_QUOTE:
        #line 707
        P_GETCHARLITERAL(nullptr, _F.INPUTFILE, _F.CURRCHAR, _F.NEXTCHAR, _F.NAME, _F.VALUE, _F.LENGTH);
        break;
    
    case C_OTHERCHAR:
        #line 716
        P_GETSPECIALCHAR(nullptr, _F.INPUTFILE, _F.CURRCHAR, _F.NEXTCHAR, _F.NAME, _F.VALUE, _F.LENGTH);
        
        #line 723
        if((_F.NAME == C_OPENCOMMENT))
        {
            #line 725
            P_GETCOMMENT(nullptr, _F.INPUTFILE, _F.CURRCHAR, _F.NEXTCHAR, _F.NAME, _F.VALUE, _F.LENGTH);
        }
        
        { /* NOP */ }
        break;
    
    case C_FILEMARK:
        #line 734
        _F.NAME = C_ENDOFFILE;
        break;
    }
}


#line 741
//================================================================================
// scope: GETSYMBOL (level : 2)

// activation record
struct Frame_GETSYMBOL
{
    // parameters
    T_text& INPUTFILE;
    T_SYMBOLINFO& NEXTSYM;
    T_SYMBOLINFO& CURRSYM;

    // locals
    T_SYMBOLINFO DUMMY;
};

// function body
void P_GETSYMBOL(void* _slink, T_text& INPUTFILE, T_SYMBOLINFO& NEXTSYM, T_SYMBOLINFO& CURRSYM)
{
    // prologue/frame definition
    Frame_GETSYMBOL _F = {INPUTFILE, NEXTSYM, CURRSYM };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 750
    _F.DUMMY = _F.CURRSYM;
    
    #line 751
    _F.CURRSYM = _F.NEXTSYM;
    
    #line 752
    _F.NEXTSYM = _F.DUMMY;
    
    #line 756
    P_SKIPSPACES(nullptr, _F.INPUTFILE, CURRCHAR, NEXTCHAR, (*_F.NEXTSYM._ptr).SPACESBEFORE, (*_F.NEXTSYM._ptr).CRSBEFORE);
    
    #line 762
    (*_F.NEXTSYM._ptr).LENGTH = 0;
    
    #line 764
    if(((*_F.CURRSYM._ptr).NAME == C_OPENCOMMENT))
    {
        #line 765
        P_GETCOMMENT(nullptr, _F.INPUTFILE, CURRCHAR, NEXTCHAR, (*_F.NEXTSYM._ptr).NAME, (*_F.NEXTSYM._ptr).VALUE, (*_F.NEXTSYM._ptr).LENGTH);
    }
    else
    {
        #line 772
        P_GETNEXTSYMBOL(nullptr, _F.INPUTFILE, CURRCHAR, NEXTCHAR, (*_F.NEXTSYM._ptr).NAME, (*_F.NEXTSYM._ptr).VALUE, (*_F.NEXTSYM._ptr).LENGTH);
    }
    
    { /* NOP */ }
    
    { /* NOP */ }
}


#line 784
//================================================================================
// scope: INITIALISE (level : 2)

// activation record
struct Frame_INITIALISE
{
    // parameters
    T_text& INPUTFILE;
    T_text& OUTPUTFILE;
    T_integer& TOPOFSTACK;
    T_integer& CURRLINEPOS;
    T_integer& CURRMARGIN;
    T_KEYWORDTABLE& KEYWORD;
    T_DBLCHRSET& DBLCHARS;
    T_DBLCHARTABLE& DBLCHAR;
    T_SGLCHARTABLE& SGLCHAR;
    T_boolean& RECORDSEEN;
    T_CHARINFO& CURRCHAR;
    T_CHARINFO& NEXTCHAR;
    T_SYMBOLINFO& CURRSYM;
    T_SYMBOLINFO& NEXTSYM;
    T_OPTIONTABLE& PPOPTION;
};

// function body
void P_INITIALISE(void* _slink, T_text& INPUTFILE, T_text& OUTPUTFILE, T_integer& TOPOFSTACK, T_integer& CURRLINEPOS, T_integer& CURRMARGIN, T_KEYWORDTABLE& KEYWORD, T_DBLCHRSET& DBLCHARS, T_DBLCHARTABLE& DBLCHAR, T_SGLCHARTABLE& SGLCHAR, T_boolean& RECORDSEEN, T_CHARINFO& CURRCHAR, T_CHARINFO& NEXTCHAR, T_SYMBOLINFO& CURRSYM, T_SYMBOLINFO& NEXTSYM, T_OPTIONTABLE& PPOPTION)
{
    // prologue/frame definition
    Frame_INITIALISE _F = {INPUTFILE, OUTPUTFILE, TOPOFSTACK, CURRLINEPOS, CURRMARGIN, KEYWORD, DBLCHARS, DBLCHAR, SGLCHAR, RECORDSEEN, CURRCHAR, NEXTCHAR, CURRSYM, NEXTSYM, PPOPTION };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_BECOMES);
    _setLiteral1.set(C_OPENCOMMENT);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_BLANKLINEBEFORE);
    _setLiteral2.set(C_SPACEAFTER);
    
    _T_GenericSet _setLiteral3;
    
    _T_GenericSet _setLiteral4;
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_BLANKLINEBEFORE);
    _setLiteral5.set(C_DINDENTONKEYS);
    _setLiteral5.set(C_SPACEAFTER);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_LABELSYM);
    _setLiteral6.set(C_CONSTSYM);
    _setLiteral6.set(C_TYPESYM);
    _setLiteral6.set(C_VARSYM);
    
    _T_GenericSet _setLiteral7;
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_BLANKLINEBEFORE);
    _setLiteral8.set(C_DINDENTONKEYS);
    _setLiteral8.set(C_SPACEAFTER);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_LABELSYM);
    _setLiteral9.set(C_CONSTSYM);
    _setLiteral9.set(C_TYPESYM);
    _setLiteral9.set(C_VARSYM);
    
    _T_GenericSet _setLiteral10;
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_BLANKLINEBEFORE);
    _setLiteral11.set(C_SPACEAFTER);
    _setLiteral11.set(C_INDENTTOCLP);
    
    _T_GenericSet _setLiteral12;
    
    _T_GenericSet _setLiteral13;
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_BLANKLINEBEFORE);
    _setLiteral14.set(C_DINDENTONKEYS);
    _setLiteral14.set(C_SPACEAFTER);
    _setLiteral14.set(C_INDENTTOCLP);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_LABELSYM);
    
    _T_GenericSet _setLiteral16;
    
    _T_GenericSet _setLiteral17;
    _setLiteral17.set(C_BLANKLINEBEFORE);
    _setLiteral17.set(C_DINDENTONKEYS);
    _setLiteral17.set(C_SPACEAFTER);
    _setLiteral17.set(C_INDENTTOCLP);
    
    _T_GenericSet _setLiteral18;
    _setLiteral18.set(C_LABELSYM);
    _setLiteral18.set(C_CONSTSYM);
    
    _T_GenericSet _setLiteral19;
    
    _T_GenericSet _setLiteral20;
    _setLiteral20.set(C_BLANKLINEBEFORE);
    _setLiteral20.set(C_DINDENTONKEYS);
    _setLiteral20.set(C_SPACEAFTER);
    _setLiteral20.set(C_INDENTTOCLP);
    
    _T_GenericSet _setLiteral21;
    _setLiteral21.set(C_LABELSYM);
    _setLiteral21.set(C_CONSTSYM);
    _setLiteral21.set(C_TYPESYM);
    
    _T_GenericSet _setLiteral22;
    
    _T_GenericSet _setLiteral23;
    _setLiteral23.set(C_DINDENTONKEYS);
    _setLiteral23.set(C_INDENTBYTAB);
    _setLiteral23.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral24;
    _setLiteral24.set(C_LABELSYM);
    _setLiteral24.set(C_CONSTSYM);
    _setLiteral24.set(C_TYPESYM);
    _setLiteral24.set(C_VARSYM);
    
    _T_GenericSet _setLiteral25;
    
    _T_GenericSet _setLiteral26;
    _setLiteral26.set(C_INDENTBYTAB);
    _setLiteral26.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral27;
    
    _T_GenericSet _setLiteral28;
    
    _T_GenericSet _setLiteral29;
    _setLiteral29.set(C_INDENTBYTAB);
    _setLiteral29.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral30;
    
    _T_GenericSet _setLiteral31;
    
    _T_GenericSet _setLiteral32;
    _setLiteral32.set(C_SPACEAFTER);
    _setLiteral32.set(C_INDENTBYTAB);
    _setLiteral32.set(C_GOBBLESYMBOLS);
    _setLiteral32.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral33;
    
    _T_GenericSet _setLiteral34;
    _setLiteral34.set(C_OFSYM);
    
    _T_GenericSet _setLiteral35;
    _setLiteral35.set(C_SPACEAFTER);
    _setLiteral35.set(C_INDENTBYTAB);
    _setLiteral35.set(C_GOBBLESYMBOLS);
    _setLiteral35.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral36;
    
    _T_GenericSet _setLiteral37;
    _setLiteral37.set(C_OFSYM);
    
    _T_GenericSet _setLiteral38;
    _setLiteral38.set(C_CRSUPPRESS);
    _setLiteral38.set(C_SPACEBEFORE);
    
    _T_GenericSet _setLiteral39;
    
    _T_GenericSet _setLiteral40;
    
    _T_GenericSet _setLiteral41;
    _setLiteral41.set(C_SPACEAFTER);
    _setLiteral41.set(C_INDENTBYTAB);
    _setLiteral41.set(C_GOBBLESYMBOLS);
    _setLiteral41.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral42;
    
    _T_GenericSet _setLiteral43;
    _setLiteral43.set(C_DOSYM);
    
    _T_GenericSet _setLiteral44;
    _setLiteral44.set(C_SPACEAFTER);
    _setLiteral44.set(C_INDENTBYTAB);
    _setLiteral44.set(C_GOBBLESYMBOLS);
    _setLiteral44.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral45;
    
    _T_GenericSet _setLiteral46;
    _setLiteral46.set(C_DOSYM);
    
    _T_GenericSet _setLiteral47;
    _setLiteral47.set(C_SPACEAFTER);
    _setLiteral47.set(C_INDENTBYTAB);
    _setLiteral47.set(C_GOBBLESYMBOLS);
    _setLiteral47.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral48;
    
    _T_GenericSet _setLiteral49;
    _setLiteral49.set(C_DOSYM);
    
    _T_GenericSet _setLiteral50;
    _setLiteral50.set(C_CRSUPPRESS);
    _setLiteral50.set(C_SPACEBEFORE);
    
    _T_GenericSet _setLiteral51;
    
    _T_GenericSet _setLiteral52;
    
    _T_GenericSet _setLiteral53;
    _setLiteral53.set(C_SPACEAFTER);
    _setLiteral53.set(C_INDENTBYTAB);
    _setLiteral53.set(C_GOBBLESYMBOLS);
    _setLiteral53.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral54;
    
    _T_GenericSet _setLiteral55;
    _setLiteral55.set(C_THENSYM);
    
    _T_GenericSet _setLiteral56;
    _setLiteral56.set(C_INDENTBYTAB);
    _setLiteral56.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral57;
    
    _T_GenericSet _setLiteral58;
    
    _T_GenericSet _setLiteral59;
    _setLiteral59.set(C_CRBEFORE);
    _setLiteral59.set(C_DINDENTONKEYS);
    _setLiteral59.set(C_DINDENT);
    _setLiteral59.set(C_INDENTBYTAB);
    _setLiteral59.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral60;
    _setLiteral60.set(C_IFSYM);
    _setLiteral60.set(C_ELSESYM);
    
    _T_GenericSet _setLiteral61;
    
    _T_GenericSet _setLiteral62;
    _setLiteral62.set(C_CRBEFORE);
    _setLiteral62.set(C_DINDENTONKEYS);
    _setLiteral62.set(C_DINDENT);
    _setLiteral62.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral63;
    _setLiteral63.set(C_IFSYM);
    _setLiteral63.set(C_THENSYM);
    _setLiteral63.set(C_ELSESYM);
    _setLiteral63.set(C_FORSYM);
    _setLiteral63.set(C_WHILESYM);
    _setLiteral63.set(C_WITHSYM);
    _setLiteral63.set(C_CASEVARSYM);
    _setLiteral63.set(C_COLON);
    _setLiteral63.set(C_EQUALS);
    
    _T_GenericSet _setLiteral64;
    
    _T_GenericSet _setLiteral65;
    _setLiteral65.set(C_CRBEFORE);
    _setLiteral65.set(C_DINDENTONKEYS);
    _setLiteral65.set(C_DINDENT);
    _setLiteral65.set(C_SPACEAFTER);
    _setLiteral65.set(C_GOBBLESYMBOLS);
    _setLiteral65.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral66;
    _setLiteral66.set(C_IFSYM);
    _setLiteral66.set(C_THENSYM);
    _setLiteral66.set(C_ELSESYM);
    _setLiteral66.set(C_FORSYM);
    _setLiteral66.set(C_WHILESYM);
    _setLiteral66.set(C_WITHSYM);
    _setLiteral66.set(C_COLON);
    _setLiteral66.set(C_EQUALS);
    
    _T_GenericSet _setLiteral67;
    _setLiteral67.set(C_ENDSYM);
    _setLiteral67.set(C_UNTILSYM);
    _setLiteral67.set(C_ELSESYM);
    _setLiteral67.set(C_SEMICOLON);
    
    _T_GenericSet _setLiteral68;
    _setLiteral68.set(C_SPACEBEFORE);
    _setLiteral68.set(C_SPACEAFTER);
    _setLiteral68.set(C_GOBBLESYMBOLS);
    
    _T_GenericSet _setLiteral69;
    
    _T_GenericSet _setLiteral70;
    _setLiteral70.set(C_ENDSYM);
    _setLiteral70.set(C_UNTILSYM);
    _setLiteral70.set(C_ELSESYM);
    _setLiteral70.set(C_SEMICOLON);
    
    _T_GenericSet _setLiteral71;
    _setLiteral71.set(C_CRSUPPRESS);
    
    _T_GenericSet _setLiteral72;
    
    _T_GenericSet _setLiteral73;
    
    _T_GenericSet _setLiteral74;
    _setLiteral74.set(C_CRSUPPRESS);
    
    _T_GenericSet _setLiteral75;
    
    _T_GenericSet _setLiteral76;
    
    _T_GenericSet _setLiteral77;
    _setLiteral77.set(C_CRSUPPRESS);
    _setLiteral77.set(C_DINDENTONKEYS);
    _setLiteral77.set(C_CRAFTER);
    
    _T_GenericSet _setLiteral78;
    _setLiteral78.set(C_IFSYM);
    _setLiteral78.set(C_THENSYM);
    _setLiteral78.set(C_ELSESYM);
    _setLiteral78.set(C_FORSYM);
    _setLiteral78.set(C_WHILESYM);
    _setLiteral78.set(C_WITHSYM);
    _setLiteral78.set(C_COLON);
    _setLiteral78.set(C_EQUALS);
    
    _T_GenericSet _setLiteral79;
    
    _T_GenericSet _setLiteral80;
    _setLiteral80.set(C_SPACEAFTER);
    _setLiteral80.set(C_INDENTTOCLP);
    
    _T_GenericSet _setLiteral81;
    
    _T_GenericSet _setLiteral82;
    
    _T_GenericSet _setLiteral83;
    _setLiteral83.set(C_SPACEBEFORE);
    _setLiteral83.set(C_SPACEAFTER);
    _setLiteral83.set(C_INDENTTOCLP);
    
    _T_GenericSet _setLiteral84;
    
    _T_GenericSet _setLiteral85;
    
    _T_GenericSet _setLiteral86;
    _setLiteral86.set(C_GOBBLESYMBOLS);
    
    _T_GenericSet _setLiteral87;
    
    _T_GenericSet _setLiteral88;
    _setLiteral88.set(C_CLOSEPAREN);
    
    _T_GenericSet _setLiteral89;
    
    _T_GenericSet _setLiteral90;
    
    _T_GenericSet _setLiteral91;
    
    _T_GenericSet _setLiteral92;
    _setLiteral92.set(C_CRSUPPRESS);
    
    _T_GenericSet _setLiteral93;
    
    _T_GenericSet _setLiteral94;
    
    _T_GenericSet _setLiteral95;
    
    _T_GenericSet _setLiteral96;
    
    _T_GenericSet _setLiteral97;
    
    _T_GenericSet _setLiteral98;
    
    _T_GenericSet _setLiteral99;
    
    _T_GenericSet _setLiteral100;
    
    // subroutine body
    #line 813
    _reset(_F.INPUTFILE);
    
    #line 814
    _rewrite(_F.OUTPUTFILE);
    
    #line 816
    _F.TOPOFSTACK = 0;
    
    #line 817
    _F.CURRLINEPOS = 0;
    
    #line 818
    _F.CURRMARGIN = 0;
    
    #line 820
    _F.KEYWORD[C_PROGSYM] = "PROGRAM   ";
    
    #line 821
    _F.KEYWORD[C_FUNCSYM] = "FUNCTION  ";
    
    #line 822
    _F.KEYWORD[C_PROCSYM] = "PROCEDURE ";
    
    #line 823
    _F.KEYWORD[C_LABELSYM] = "LABEL     ";
    
    #line 824
    _F.KEYWORD[C_CONSTSYM] = "CONST     ";
    
    #line 825
    _F.KEYWORD[C_TYPESYM] = "TYPE      ";
    
    #line 826
    _F.KEYWORD[C_VARSYM] = "VAR       ";
    
    #line 827
    _F.KEYWORD[C_BEGINSYM] = "BEGIN     ";
    
    #line 828
    _F.KEYWORD[C_REPEATSYM] = "REPEAT    ";
    
    #line 829
    _F.KEYWORD[C_RECORDSYM] = "RECORD    ";
    
    #line 830
    _F.KEYWORD[C_CASESYM] = "CASE      ";
    
    #line 831
    _F.KEYWORD[C_CASEVARSYM] = "CASE      ";
    
    #line 832
    _F.KEYWORD[C_OFSYM] = "OF        ";
    
    #line 833
    _F.KEYWORD[C_FORSYM] = "FOR       ";
    
    #line 834
    _F.KEYWORD[C_WHILESYM] = "WHILE     ";
    
    #line 835
    _F.KEYWORD[C_WITHSYM] = "WITH      ";
    
    #line 836
    _F.KEYWORD[C_DOSYM] = "DO        ";
    
    #line 837
    _F.KEYWORD[C_IFSYM] = "IF        ";
    
    #line 838
    _F.KEYWORD[C_THENSYM] = "THEN      ";
    
    #line 839
    _F.KEYWORD[C_ELSESYM] = "ELSE      ";
    
    #line 840
    _F.KEYWORD[C_ENDSYM] = "END       ";
    
    #line 841
    _F.KEYWORD[C_UNTILSYM] = "UNTIL     ";
    
    #line 844
    _F.DBLCHARS = _setLiteral1;
    
    #line 846
    _F.DBLCHAR[C_BECOMES] = ":=";
    
    #line 847
    _F.DBLCHAR[C_OPENCOMMENT] = "(*";
    
    #line 849
    _F.SGLCHAR[C_SEMICOLON] = ';';
    
    #line 850
    _F.SGLCHAR[C_COLON] = ':';
    
    #line 851
    _F.SGLCHAR[C_EQUALS] = '=';
    
    #line 852
    _F.SGLCHAR[C_OPENPAREN] = '(';
    
    #line 853
    _F.SGLCHAR[C_CLOSEPAREN] = ')';
    
    #line 854
    _F.SGLCHAR[C_PERIOD] = '.';
    
    #line 856
    _F.RECORDSEEN = C_false;
    
    #line 859
    P_GETCHAR(nullptr, _F.INPUTFILE, _F.NEXTCHAR, _F.CURRCHAR);
    
    #line 863
    _new(_F.CURRSYM._ptr);
    
    #line 864
    _new(_F.NEXTSYM._ptr);
    
    #line 866
    P_GETSYMBOL(nullptr, _F.INPUTFILE, _F.NEXTSYM, _F.CURRSYM);
    
    #line 872
    _F.PPOPTION[C_PROGSYM].OPTIONSSELECTED = _setLiteral2;
    
    #line 874
    _F.PPOPTION[C_PROGSYM].DINDENTSYMBOLS = _setLiteral3;
    
    #line 875
    _F.PPOPTION[C_PROGSYM].GOBBLETERMINATORS = _setLiteral4;
    
    #line 879
    _F.PPOPTION[C_FUNCSYM].OPTIONSSELECTED = _setLiteral5;
    
    #line 882
    _F.PPOPTION[C_FUNCSYM].DINDENTSYMBOLS = _setLiteral6;
    
    #line 886
    _F.PPOPTION[C_FUNCSYM].GOBBLETERMINATORS = _setLiteral7;
    
    #line 890
    _F.PPOPTION[C_PROCSYM].OPTIONSSELECTED = _setLiteral8;
    
    #line 893
    _F.PPOPTION[C_PROCSYM].DINDENTSYMBOLS = _setLiteral9;
    
    #line 897
    _F.PPOPTION[C_PROCSYM].GOBBLETERMINATORS = _setLiteral10;
    
    #line 901
    _F.PPOPTION[C_LABELSYM].OPTIONSSELECTED = _setLiteral11;
    
    #line 904
    _F.PPOPTION[C_LABELSYM].DINDENTSYMBOLS = _setLiteral12;
    
    #line 905
    _F.PPOPTION[C_LABELSYM].GOBBLETERMINATORS = _setLiteral13;
    
    #line 909
    _F.PPOPTION[C_CONSTSYM].OPTIONSSELECTED = _setLiteral14;
    
    #line 913
    _F.PPOPTION[C_CONSTSYM].DINDENTSYMBOLS = _setLiteral15;
    
    #line 914
    _F.PPOPTION[C_CONSTSYM].GOBBLETERMINATORS = _setLiteral16;
    
    #line 918
    _F.PPOPTION[C_TYPESYM].OPTIONSSELECTED = _setLiteral17;
    
    #line 922
    _F.PPOPTION[C_TYPESYM].DINDENTSYMBOLS = _setLiteral18;
    
    #line 924
    _F.PPOPTION[C_TYPESYM].GOBBLETERMINATORS = _setLiteral19;
    
    #line 928
    _F.PPOPTION[C_VARSYM].OPTIONSSELECTED = _setLiteral20;
    
    #line 932
    _F.PPOPTION[C_VARSYM].DINDENTSYMBOLS = _setLiteral21;
    
    #line 935
    _F.PPOPTION[C_VARSYM].GOBBLETERMINATORS = _setLiteral22;
    
    #line 939
    _F.PPOPTION[C_BEGINSYM].OPTIONSSELECTED = _setLiteral23;
    
    #line 942
    _F.PPOPTION[C_BEGINSYM].DINDENTSYMBOLS = _setLiteral24;
    
    #line 946
    _F.PPOPTION[C_BEGINSYM].GOBBLETERMINATORS = _setLiteral25;
    
    #line 950
    _F.PPOPTION[C_REPEATSYM].OPTIONSSELECTED = _setLiteral26;
    
    #line 952
    _F.PPOPTION[C_REPEATSYM].DINDENTSYMBOLS = _setLiteral27;
    
    #line 953
    _F.PPOPTION[C_REPEATSYM].GOBBLETERMINATORS = _setLiteral28;
    
    #line 957
    _F.PPOPTION[C_RECORDSYM].OPTIONSSELECTED = _setLiteral29;
    
    #line 959
    _F.PPOPTION[C_RECORDSYM].DINDENTSYMBOLS = _setLiteral30;
    
    #line 960
    _F.PPOPTION[C_RECORDSYM].GOBBLETERMINATORS = _setLiteral31;
    
    #line 964
    _F.PPOPTION[C_CASESYM].OPTIONSSELECTED = _setLiteral32;
    
    #line 968
    _F.PPOPTION[C_CASESYM].DINDENTSYMBOLS = _setLiteral33;
    
    #line 969
    _F.PPOPTION[C_CASESYM].GOBBLETERMINATORS = _setLiteral34;
    
    #line 973
    _F.PPOPTION[C_CASEVARSYM].OPTIONSSELECTED = _setLiteral35;
    
    #line 977
    _F.PPOPTION[C_CASEVARSYM].DINDENTSYMBOLS = _setLiteral36;
    
    #line 978
    _F.PPOPTION[C_CASEVARSYM].GOBBLETERMINATORS = _setLiteral37;
    
    #line 982
    _F.PPOPTION[C_OFSYM].OPTIONSSELECTED = _setLiteral38;
    
    #line 984
    _F.PPOPTION[C_OFSYM].DINDENTSYMBOLS = _setLiteral39;
    
    #line 985
    _F.PPOPTION[C_OFSYM].GOBBLETERMINATORS = _setLiteral40;
    
    #line 989
    _F.PPOPTION[C_FORSYM].OPTIONSSELECTED = _setLiteral41;
    
    #line 993
    _F.PPOPTION[C_FORSYM].DINDENTSYMBOLS = _setLiteral42;
    
    #line 994
    _F.PPOPTION[C_FORSYM].GOBBLETERMINATORS = _setLiteral43;
    
    #line 998
    _F.PPOPTION[C_WHILESYM].OPTIONSSELECTED = _setLiteral44;
    
    #line 1002
    _F.PPOPTION[C_WHILESYM].DINDENTSYMBOLS = _setLiteral45;
    
    #line 1003
    _F.PPOPTION[C_WHILESYM].GOBBLETERMINATORS = _setLiteral46;
    
    #line 1007
    _F.PPOPTION[C_WITHSYM].OPTIONSSELECTED = _setLiteral47;
    
    #line 1011
    _F.PPOPTION[C_WITHSYM].DINDENTSYMBOLS = _setLiteral48;
    
    #line 1012
    _F.PPOPTION[C_WITHSYM].GOBBLETERMINATORS = _setLiteral49;
    
    #line 1016
    _F.PPOPTION[C_DOSYM].OPTIONSSELECTED = _setLiteral50;
    
    #line 1018
    _F.PPOPTION[C_DOSYM].DINDENTSYMBOLS = _setLiteral51;
    
    #line 1019
    _F.PPOPTION[C_DOSYM].GOBBLETERMINATORS = _setLiteral52;
    
    { /* NOP */ }
    
    #line 1023
    _F.PPOPTION[C_IFSYM].OPTIONSSELECTED = _setLiteral53;
    
    #line 1027
    _F.PPOPTION[C_IFSYM].DINDENTSYMBOLS = _setLiteral54;
    
    #line 1028
    _F.PPOPTION[C_IFSYM].GOBBLETERMINATORS = _setLiteral55;
    
    #line 1032
    _F.PPOPTION[C_THENSYM].OPTIONSSELECTED = _setLiteral56;
    
    #line 1034
    _F.PPOPTION[C_THENSYM].DINDENTSYMBOLS = _setLiteral57;
    
    #line 1035
    _F.PPOPTION[C_THENSYM].GOBBLETERMINATORS = _setLiteral58;
    
    #line 1039
    _F.PPOPTION[C_ELSESYM].OPTIONSSELECTED = _setLiteral59;
    
    #line 1044
    _F.PPOPTION[C_ELSESYM].DINDENTSYMBOLS = _setLiteral60;
    
    #line 1046
    _F.PPOPTION[C_ELSESYM].GOBBLETERMINATORS = _setLiteral61;
    
    #line 1050
    _F.PPOPTION[C_ENDSYM].OPTIONSSELECTED = _setLiteral62;
    
    #line 1054
    _F.PPOPTION[C_ENDSYM].DINDENTSYMBOLS = _setLiteral63;
    
    #line 1063
    _F.PPOPTION[C_ENDSYM].GOBBLETERMINATORS = _setLiteral64;
    
    #line 1067
    _F.PPOPTION[C_UNTILSYM].OPTIONSSELECTED = _setLiteral65;
    
    #line 1073
    _F.PPOPTION[C_UNTILSYM].DINDENTSYMBOLS = _setLiteral66;
    
    #line 1081
    _F.PPOPTION[C_UNTILSYM].GOBBLETERMINATORS = _setLiteral67;
    
    { /* NOP */ }
    
    #line 1088
    _F.PPOPTION[C_BECOMES].OPTIONSSELECTED = _setLiteral68;
    
    #line 1091
    _F.PPOPTION[C_BECOMES].DINDENTSYMBOLS = _setLiteral69;
    
    #line 1092
    _F.PPOPTION[C_BECOMES].GOBBLETERMINATORS = _setLiteral70;
    
    #line 1099
    _F.PPOPTION[C_OPENCOMMENT].OPTIONSSELECTED = _setLiteral71;
    
    #line 1100
    _F.PPOPTION[C_OPENCOMMENT].DINDENTSYMBOLS = _setLiteral72;
    
    #line 1101
    _F.PPOPTION[C_OPENCOMMENT].GOBBLETERMINATORS = _setLiteral73;
    
    #line 1105
    _F.PPOPTION[C_CLOSECOMMENT].OPTIONSSELECTED = _setLiteral74;
    
    #line 1106
    _F.PPOPTION[C_CLOSECOMMENT].DINDENTSYMBOLS = _setLiteral75;
    
    #line 1107
    _F.PPOPTION[C_CLOSECOMMENT].GOBBLETERMINATORS = _setLiteral76;
    
    #line 1111
    _F.PPOPTION[C_SEMICOLON].OPTIONSSELECTED = _setLiteral77;
    
    #line 1114
    _F.PPOPTION[C_SEMICOLON].DINDENTSYMBOLS = _setLiteral78;
    
    #line 1122
    _F.PPOPTION[C_SEMICOLON].GOBBLETERMINATORS = _setLiteral79;
    
    #line 1126
    _F.PPOPTION[C_COLON].OPTIONSSELECTED = _setLiteral80;
    
    #line 1128
    _F.PPOPTION[C_COLON].DINDENTSYMBOLS = _setLiteral81;
    
    #line 1129
    _F.PPOPTION[C_COLON].GOBBLETERMINATORS = _setLiteral82;
    
    #line 1133
    _F.PPOPTION[C_EQUALS].OPTIONSSELECTED = _setLiteral83;
    
    #line 1136
    _F.PPOPTION[C_EQUALS].DINDENTSYMBOLS = _setLiteral84;
    
    #line 1137
    _F.PPOPTION[C_EQUALS].GOBBLETERMINATORS = _setLiteral85;
    
    #line 1141
    _F.PPOPTION[C_OPENPAREN].OPTIONSSELECTED = _setLiteral86;
    
    #line 1142
    _F.PPOPTION[C_OPENPAREN].DINDENTSYMBOLS = _setLiteral87;
    
    #line 1143
    _F.PPOPTION[C_OPENPAREN].GOBBLETERMINATORS = _setLiteral88;
    
    #line 1147
    _F.PPOPTION[C_CLOSEPAREN].OPTIONSSELECTED = _setLiteral89;
    
    #line 1148
    _F.PPOPTION[C_CLOSEPAREN].DINDENTSYMBOLS = _setLiteral90;
    
    #line 1149
    _F.PPOPTION[C_CLOSEPAREN].GOBBLETERMINATORS = _setLiteral91;
    
    #line 1153
    _F.PPOPTION[C_PERIOD].OPTIONSSELECTED = _setLiteral92;
    
    #line 1154
    _F.PPOPTION[C_PERIOD].DINDENTSYMBOLS = _setLiteral93;
    
    #line 1155
    _F.PPOPTION[C_PERIOD].GOBBLETERMINATORS = _setLiteral94;
    
    #line 1159
    _F.PPOPTION[C_ENDOFFILE].OPTIONSSELECTED = _setLiteral95;
    
    #line 1160
    _F.PPOPTION[C_ENDOFFILE].DINDENTSYMBOLS = _setLiteral96;
    
    #line 1161
    _F.PPOPTION[C_ENDOFFILE].GOBBLETERMINATORS = _setLiteral97;
    
    #line 1165
    _F.PPOPTION[C_OTHERSYM].OPTIONSSELECTED = _setLiteral98;
    
    #line 1166
    _F.PPOPTION[C_OTHERSYM].DINDENTSYMBOLS = _setLiteral99;
    
    #line 1167
    _F.PPOPTION[C_OTHERSYM].GOBBLETERMINATORS = _setLiteral100;
    
    { /* NOP */ }
}


#line 1175
//================================================================================
// scope: STACKEMPTY (level : 2)

// activation record
struct Frame_STACKEMPTY
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_STACKEMPTY(void* _slink)
{
    // prologue/frame definition
    Frame_STACKEMPTY _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1179
    if((TOP == 0))
    {
        #line 1180
        _F._fnvalue = C_true;
    }
    else
    {
        #line 1182
        _F._fnvalue = C_false;
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1187
//================================================================================
// scope: STACKFULL (level : 2)

// activation record
struct Frame_STACKFULL
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_STACKFULL(void* _slink)
{
    // prologue/frame definition
    Frame_STACKFULL _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1191
    if((TOP == C_MAXSTACKSIZE))
    {
        #line 1192
        _F._fnvalue = C_true;
    }
    else
    {
        #line 1194
        _F._fnvalue = C_false;
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1199
//================================================================================
// scope: POPSTACK (level : 2)

// activation record
struct Frame_POPSTACK
{
    // parameters
    T_KEYSYMBOL& INDENTSYMBOL;
    T_integer& PREVMARGIN;
};

// function body
void P_POPSTACK(void* _slink, T_KEYSYMBOL& INDENTSYMBOL, T_integer& PREVMARGIN)
{
    // prologue/frame definition
    Frame_POPSTACK _F = {INDENTSYMBOL, PREVMARGIN };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1204
    if((!F_STACKEMPTY(nullptr)))
    {
        #line 1206
        _F.INDENTSYMBOL = STACK[TOP].INDENTSYMBOL;
        
        #line 1207
        _F.PREVMARGIN = STACK[TOP].PREVMARGIN;
        
        #line 1209
        TOP = (TOP - 1);
    }
    else
    {
        #line 1214
        _F.INDENTSYMBOL = C_OTHERSYM;
        
        #line 1215
        _F.PREVMARGIN = 0;
    }
    
    { /* NOP */ }
}


#line 1222
//================================================================================
// scope: PUSHSTACK (level : 2)

// activation record
struct Frame_PUSHSTACK
{
    // parameters
    T_KEYSYMBOL INDENTSYMBOL;
    T_integer PREVMARGIN;
};

// function body
void P_PUSHSTACK(void* _slink, T_KEYSYMBOL INDENTSYMBOL, T_integer PREVMARGIN)
{
    // prologue/frame definition
    Frame_PUSHSTACK _F = {INDENTSYMBOL, PREVMARGIN };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1227
    TOP = (TOP + 1);
    
    #line 1229
    STACK[TOP].INDENTSYMBOL = _F.INDENTSYMBOL;
    
    #line 1230
    STACK[TOP].PREVMARGIN = _F.PREVMARGIN;
    
    { /* NOP */ }
}


#line 1235
//================================================================================
// scope: WRITECRS (level : 2)

// activation record
struct Frame_WRITECRS
{
    // parameters
    T_integer NUMBEROFCRS;
    T_integer& CURRLINEPOS;
    T_text& OUTPUTFILE;

    // locals
    T_integer I;
};

// function body
void P_WRITECRS(void* _slink, T_integer NUMBEROFCRS, T_integer& CURRLINEPOS, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_WRITECRS _F = {NUMBEROFCRS, CURRLINEPOS, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1244
    if((_F.NUMBEROFCRS > 0))
    {
        #line 1246
        _FOR_TO(_F.I, 1, _F.NUMBEROFCRS)
        {
            #line 1247
            _F.OUTPUTFILE << _WRITELN;
        }
        _FOR_END(_F.I)
        
        #line 1249
        _F.CURRLINEPOS = 0;
    }
}


#line 1256
//================================================================================
// scope: INSERTCR (level : 2)

// constants
const T_integer C_INSERTCR_ONCE = 1;

// activation record
struct Frame_INSERTCR
{
    // parameters
    T_SYMBOLINFO& CURRSYM;
    T_text& OUTPUTFILE;
};

// function body
void P_INSERTCR(void* _slink, T_SYMBOLINFO& CURRSYM, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_INSERTCR _F = {CURRSYM, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1264
    if(((*_F.CURRSYM._ptr).CRSBEFORE == 0))
    {
        #line 1266
        P_WRITECRS(nullptr, C_INSERTCR_ONCE, CURRLINEPOS, _F.OUTPUTFILE);
        
        #line 1269
        (*_F.CURRSYM._ptr).SPACESBEFORE = 0;
    }
}


#line 1276
//================================================================================
// scope: INSERTBLANKLINE (level : 2)

// constants
const T_integer C_INSERTBLANKLINE_ONCE = 1;
const T_integer C_INSERTBLANKLINE_TWICE = 2;

// activation record
struct Frame_INSERTBLANKLINE
{
    // parameters
    T_SYMBOLINFO& CURRSYM;
    T_text& OUTPUTFILE;
};

// function body
void P_INSERTBLANKLINE(void* _slink, T_SYMBOLINFO& CURRSYM, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_INSERTBLANKLINE _F = {CURRSYM, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1285
    if(((*_F.CURRSYM._ptr).CRSBEFORE == 0))
    {
        #line 1287
        if((CURRLINEPOS == 0))
        {
            #line 1288
            P_WRITECRS(nullptr, C_INSERTBLANKLINE_ONCE, CURRLINEPOS, _F.OUTPUTFILE);
        }
        else
        {
            #line 1291
            P_WRITECRS(nullptr, C_INSERTBLANKLINE_TWICE, CURRLINEPOS, _F.OUTPUTFILE);
        }
        
        #line 1294
        (*_F.CURRSYM._ptr).SPACESBEFORE = 0;
    }
    else
    {
        #line 1298
        if(((*_F.CURRSYM._ptr).CRSBEFORE == 1))
        {
            #line 1299
            if((CURRLINEPOS > 0))
            {
                #line 1300
                P_WRITECRS(nullptr, C_INSERTBLANKLINE_ONCE, CURRLINEPOS, _F.OUTPUTFILE);
            }
        }
    }
}


#line 1306
//================================================================================
// scope: LSHIFTON (level : 2)

// activation record
struct Frame_LSHIFTON
{
    // parameters
    T_KEYSYMSET DINDENTSYMBOLS;

    // locals
    T_KEYSYMBOL INDENTSYMBOL;
    T_integer PREVMARGIN;
};

// function body
void P_LSHIFTON(void* _slink, T_KEYSYMSET DINDENTSYMBOLS)
{
    // prologue/frame definition
    Frame_LSHIFTON _F = {DINDENTSYMBOLS };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1314
    if((!F_STACKEMPTY(nullptr)))
    {
        #line 1316
        do
        {
            #line 1317
            P_POPSTACK(nullptr, _F.INDENTSYMBOL, _F.PREVMARGIN);
            
            #line 1320
            if((_F.DINDENTSYMBOLS & _F.INDENTSYMBOL))
            {
                #line 1321
                CURRMARGIN = _F.PREVMARGIN;
            }
        }
        while(!((!(_F.DINDENTSYMBOLS & _F.INDENTSYMBOL)) || F_STACKEMPTY(nullptr)));
        
        #line 1326
        if((!(_F.DINDENTSYMBOLS & _F.INDENTSYMBOL)))
        {
            #line 1327
            P_PUSHSTACK(nullptr, _F.INDENTSYMBOL, _F.PREVMARGIN);
        }
        
        { /* NOP */ }
    }
}


#line 1335
//================================================================================
// scope: LSHIFT (level : 2)

// activation record
struct Frame_LSHIFT
{
    // locals
    T_KEYSYMBOL INDENTSYMBOL;
    T_integer PREVMARGIN;
};

// function body
void P_LSHIFT(void* _slink)
{
    // prologue/frame definition
    Frame_LSHIFT _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1343
    if((!F_STACKEMPTY(nullptr)))
    {
        #line 1344
        P_POPSTACK(nullptr, _F.INDENTSYMBOL, _F.PREVMARGIN);
        
        #line 1346
        CURRMARGIN = _F.PREVMARGIN;
    }
}


#line 1352
//================================================================================
// scope: INSERTSPACE (level : 2)

// activation record
struct Frame_INSERTSPACE
{
    // parameters
    T_SYMBOLINFO& SYMBOL;
    T_text& OUTPUTFILE;
};

// function body
void P_INSERTSPACE(void* _slink, T_SYMBOLINFO& SYMBOL, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_INSERTSPACE _F = {SYMBOL, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1357
    if((CURRLINEPOS < C_MAXLINESIZE))
    {
        #line 1359
        _F.OUTPUTFILE << C_SPACE;
        
        #line 1361
        CURRLINEPOS = (CURRLINEPOS + 1);
        
        #line 1364
        if((((*_F.SYMBOL._ptr).CRSBEFORE == 0) && ((*_F.SYMBOL._ptr).SPACESBEFORE > 0)))
        {
            #line 1365
            (*_F.SYMBOL._ptr).SPACESBEFORE = ((*_F.SYMBOL._ptr).SPACESBEFORE - 1);
        }
    }
}


#line 1372
//================================================================================
// scope: MOVELINEPOS (level : 2)

// activation record
struct Frame_MOVELINEPOS
{
    // parameters
    T_integer NEWLINEPOS;
    T_integer& CURRLINEPOS;
    T_text& OUTPUTFILE;

    // locals
    T_integer I;
};

// function body
void P_MOVELINEPOS(void* _slink, T_integer NEWLINEPOS, T_integer& CURRLINEPOS, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_MOVELINEPOS _F = {NEWLINEPOS, CURRLINEPOS, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1381
    _FOR_TO(_F.I, (_F.CURRLINEPOS + 1), _F.NEWLINEPOS)
    {
        #line 1382
        _F.OUTPUTFILE << C_SPACE;
    }
    _FOR_END(_F.I)
    
    #line 1384
    _F.CURRLINEPOS = _F.NEWLINEPOS;
}


#line 1389
//================================================================================
// scope: PRINTSYMBOL (level : 2)

// activation record
struct Frame_PRINTSYMBOL
{
    // parameters
    T_SYMBOLINFO CURRSYM;
    T_integer& CURRLINEPOS;
    T_text& OUTPUTFILE;

    // locals
    T_integer I;
};

// function body
void P_PRINTSYMBOL(void* _slink, T_SYMBOLINFO CURRSYM, T_integer& CURRLINEPOS, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_PRINTSYMBOL _F = {CURRSYM, CURRLINEPOS, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1400
    _FOR_TO(_F.I, 1, (*_F.CURRSYM._ptr).LENGTH)
    {
        #line 1401
        _F.OUTPUTFILE << (*_F.CURRSYM._ptr).VALUE[_F.I];
    }
    _FOR_END(_F.I)
    
    #line 1403
    _F.CURRLINEPOS = (_F.CURRLINEPOS + (*_F.CURRSYM._ptr).LENGTH);
}


#line 1410
//================================================================================
// scope: PPSYMBOL (level : 2)

// constants
const T_integer C_PPSYMBOL_ONCE = 1;

// activation record
struct Frame_PPSYMBOL
{
    // parameters
    T_SYMBOLINFO CURRSYM;
    T_text& OUTPUTFILE;

    // locals
    T_integer NEWLINEPOS;
};

// function body
void P_PPSYMBOL(void* _slink, T_SYMBOLINFO CURRSYM, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_PPSYMBOL _F = {CURRSYM, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_OPENCOMMENT);
    _setLiteral1.set(C_CLOSECOMMENT);
    
    // subroutine body
    #line 1423
    P_WRITECRS(nullptr, (*_F.CURRSYM._ptr).CRSBEFORE, CURRLINEPOS, _F.OUTPUTFILE);
    
    #line 1427
    if((((CURRLINEPOS + (*_F.CURRSYM._ptr).SPACESBEFORE) > CURRMARGIN) || (_setLiteral1 & (*_F.CURRSYM._ptr).NAME)))
    {
        #line 1430
        _F.NEWLINEPOS = (CURRLINEPOS + (*_F.CURRSYM._ptr).SPACESBEFORE);
    }
    else
    {
        #line 1432
        _F.NEWLINEPOS = CURRMARGIN;
    }
    
    #line 1434
    if(((_F.NEWLINEPOS + (*_F.CURRSYM._ptr).LENGTH) > C_MAXLINESIZE))
    {
        #line 1436
        P_WRITECRS(nullptr, C_PPSYMBOL_ONCE, CURRLINEPOS, _F.OUTPUTFILE);
        
        #line 1439
        if(((CURRMARGIN + (*_F.CURRSYM._ptr).LENGTH) <= C_MAXLINESIZE))
        {
            #line 1440
            _F.NEWLINEPOS = CURRMARGIN;
        }
        else
        {
            #line 1441
            if(((*_F.CURRSYM._ptr).LENGTH <= C_MAXLINESIZE))
            {
                #line 1442
                _F.NEWLINEPOS = (C_MAXLINESIZE - (*_F.CURRSYM._ptr).LENGTH);
            }
            else
            {
                #line 1444
                _F.NEWLINEPOS = 0;
            }
        }
    }
    
    #line 1448
    P_MOVELINEPOS(nullptr, _F.NEWLINEPOS, CURRLINEPOS, _F.OUTPUTFILE);
    
    #line 1452
    P_PRINTSYMBOL(nullptr, _F.CURRSYM, CURRLINEPOS, _F.OUTPUTFILE);
}


#line 1465
//================================================================================
// scope: GOBBLE (level : 2)

// activation record
struct Frame_GOBBLE
{
    // parameters
    T_text& INPUTFILE;
    T_KEYSYMSET TERMINATORS;
    T_SYMBOLINFO& CURRSYM;
    T_SYMBOLINFO& NEXTSYM;
    T_text& OUTPUTFILE;
};

// function body
void P_GOBBLE(void* _slink, T_text& INPUTFILE, T_KEYSYMSET TERMINATORS, T_SYMBOLINFO& CURRSYM, T_SYMBOLINFO& NEXTSYM, T_text& OUTPUTFILE)
{
    // prologue/frame definition
    Frame_GOBBLE _F = {INPUTFILE, TERMINATORS, CURRSYM, NEXTSYM, OUTPUTFILE };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ENDOFFILE);
    
    // subroutine body
    #line 1473
    P_RSHIFTTOCLP(nullptr, (*_F.CURRSYM._ptr).NAME);
    
    #line 1475
    while((!((_F.TERMINATORS + _setLiteral1) & (*_F.NEXTSYM._ptr).NAME)))
    {
        #line 1477
        P_GETSYMBOL(nullptr, _F.INPUTFILE, _F.NEXTSYM, _F.CURRSYM);
        
        #line 1481
        P_PPSYMBOL(nullptr, _F.CURRSYM, _F.OUTPUTFILE);
    }
    
    #line 1486
    P_LSHIFT(nullptr);
}


#line 1491
//================================================================================
// scope: RSHIFT (level : 2)

// activation record
struct Frame_RSHIFT
{
    // parameters
    T_KEYSYMBOL CURRSYM;
};

// function body
void P_RSHIFT(void* _slink, T_KEYSYMBOL CURRSYM)
{
    // prologue/frame definition
    Frame_RSHIFT _F = {CURRSYM };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1495
    if((!F_STACKFULL(nullptr)))
    {
        #line 1496
        P_PUSHSTACK(nullptr, _F.CURRSYM, CURRMARGIN);
    }
    
    #line 1499
    if((CURRMARGIN < C_SLOFAIL1))
    {
        #line 1500
        CURRMARGIN = (CURRMARGIN + C_INDENT1);
    }
    else
    {
        #line 1502
        if((CURRMARGIN < C_SLOFAIL2))
        {
            #line 1503
            CURRMARGIN = (CURRMARGIN + C_INDENT2);
        }
    }
}


#line 1508
//================================================================================
// scope: RSHIFTTOCLP (level : 2)

// activation record
struct Frame_RSHIFTTOCLP
{
    // parameters
    T_KEYSYMBOL CURRSYM;
};

// function body
void P_RSHIFTTOCLP(void* _slink, T_KEYSYMBOL CURRSYM)
{
    // prologue/frame definition
    Frame_RSHIFTTOCLP _F = {CURRSYM };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1512
    if((!F_STACKFULL(nullptr)))
    {
        #line 1513
        P_PUSHSTACK(nullptr, _F.CURRSYM, CURRMARGIN);
    }
    
    #line 1516
    CURRMARGIN = CURRLINEPOS;
    
    { /* NOP */ }
}

