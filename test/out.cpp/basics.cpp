
#include <lpcRuntime.h>

#line 0 "basics.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "input" },
    { "output" },
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

#line 80
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 1, 80, T_char > T_string80;
struct T_bstring80
{
    T_integer Len;
    T_string80 Str;
};
typedef int T_errcod;
typedef _T_Array< 97, 122, T_integer > T_array_1;
typedef _T_Array< 1, 10, T_char > T_string10;
typedef _T_Array< 1, 29, T_string10 > T_array_2;
typedef _T_Array< 0, 100, T_string80 > T_array_3;
typedef _T_Array< 97, 122, T_bstring80 > T_array_4;
typedef int T_vartyp;
struct T_record_6
{
    T_vartyp Typ;
    T_integer Int;
    T_bstring80 Bstr;
};
typedef _T_Array< 1, 10, T_record_6 > T_array_5;

// forward declarations
void P_prtlin(void* _slink, T_string80& Str);
void P_prterr(void* _slink, T_errcod Err);
T_char F_chkchr(void* _slink);
T_boolean F_chkend(void* _slink);
T_char F_getchr(void* _slink);
T_boolean F_chknxt(void* _slink, T_char c);
void P_skpspc(void* _slink);
T_boolean F_chksend(void* _slink);
T_boolean F_null(void* _slink, T_string80& Str);
T_boolean F_digit(void* _slink, T_char c);
T_char F_lcase(void* _slink, T_char c);
T_boolean F_alpha(void* _slink, T_char c);
T_integer F_lint(void* _slink, T_string80& Str);
T_integer F_schlab(void* _slink, T_integer Lab);
void P_inpstr(void* _slink, T_string80& Str);
T_char F_getvar(void* _slink);
void P_enter(void* _slink, T_string80& Str);
void P_keycom(void* _slink, T_string80& Str);
T_integer F_getint(void* _slink);
T_integer F_getval(void* _slink, T_string80& Str);
T_integer F_getbval(void* _slink, T_bstring80& Str);
void P_putbval(void* _slink, T_bstring80& Str, T_integer v);
void P_prtbstr(void* _slink, T_bstring80& Bstr);
void P_inpbstr(void* _slink, T_bstring80& Bstr);
void P_cat(void* _slink, T_bstring80& Bstra, T_bstring80& Bstrb);
T_boolean F_chkequ(void* _slink);
T_boolean F_chkltn(void* _slink);
T_boolean F_chkgtn(void* _slink);
void P_settrue(void* _slink);
void P_setfalse(void* _slink);
void P_clear(void* _slink);
void P_clrvar(void* _slink);
void P_exec(void* _slink);

// constants
const T_integer C_cadd = 18;
const T_integer C_cbye = 11;
const T_integer C_cchr = 29;
const T_integer C_cdiv = 21;
const T_integer C_cequ = 14;
const T_integer C_cgequ = 13;
const T_integer C_cgoto = 3;
const T_integer C_cgtn = 17;
const T_integer C_cif = 4;
const T_integer C_cinput = 1;
const T_integer C_cleft = 23;
const T_integer C_clequ = 12;
const T_integer C_clet = 10;
const T_integer C_clist = 8;
const T_integer C_cltn = 16;
const T_integer C_cmid = 25;
const T_integer C_cmod = 22;
const T_integer C_cmult = 20;
const T_integer C_cnequ = 15;
const T_integer C_cnew = 9;
const T_integer C_cprint = 2;
const T_integer C_crem = 5;
const T_integer C_cright = 24;
const T_integer C_crun = 7;
const T_integer C_cstop = 6;
const T_integer C_cstr = 27;
const T_integer C_csub = 19;
const T_integer C_cthen = 26;
const T_integer C_cval = 28;
const T_errcod C_ecmaexp = 21;
const T_errcod C_econv = 10;
const T_errcod C_eedlexp = 19;
const T_errcod C_eeque = 3;
const T_errcod C_eexc = 14;
const T_errcod C_eexmi = 2;
const T_errcod C_eifact = 16;
const T_errcod C_einte = 9;
const T_errcod C_eiovf = 6;
const T_errcod C_eitp = 0;
const T_errcod C_elabnf = 8;
const T_errcod C_elintl = 17;
const T_errcod C_elntl = 11;
const T_errcod C_elpe = 20;
const T_errcod C_emqu = 15;
const T_errcod C_epbful = 5;
const T_errcod C_erpe = 13;
const T_errcod C_estate = 1;
const T_errcod C_estre = 22;
const T_errcod C_estrinx = 23;
const T_errcod C_estrovf = 18;
const T_errcod C_estyp = 4;
const T_errcod C_evare = 7;
const T_errcod C_ewtyp = 12;
const T_integer C_maxkey = 29;
const T_integer C_maxlin = 9999;
const T_integer C_maxpgm = 100;
const T_integer C_maxstk = 10;
const T_vartyp C_tint = 0;
const T_vartyp C_tstr = 1;

// non-local goto targets
const int NL_88 = 1;
const int NL_99 = 3;

// program variables
T_text Input;
T_array_1 Ints;
T_array_2 Keywd;
T_integer Linec;
T_text Output;
T_array_3 Prgm;
T_integer Prgmc;
T_array_4 Strs;
T_array_5 Temp;
T_integer Top;

// function body
void P_()
{
    
    // initializers
    Input.init(0);
    Output.init(1);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_88: goto L_88;
        case NL_99: goto L_99;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        #line 1255
        P_clear(nullptr);
        
        #line 1257
        Keywd[C_cinput] = "input     ";
        
        #line 1257
        Keywd[C_cprint] = "print     ";
        
        #line 1258
        Keywd[C_cgoto] = "goto      ";
        
        #line 1258
        Keywd[C_cif] = "if        ";
        
        #line 1259
        Keywd[C_crem] = "rem       ";
        
        #line 1259
        Keywd[C_cstop] = "stop      ";
        
        #line 1260
        Keywd[C_crun] = "run       ";
        
        #line 1260
        Keywd[C_clist] = "list      ";
        
        #line 1261
        Keywd[C_cnew] = "new       ";
        
        #line 1261
        Keywd[C_clet] = "let       ";
        
        #line 1262
        Keywd[C_cbye] = "bye       ";
        
        #line 1262
        Keywd[C_clequ] = "<=        ";
        
        #line 1263
        Keywd[C_cgequ] = ">=        ";
        
        #line 1263
        Keywd[C_cequ] = "=         ";
        
        #line 1264
        Keywd[C_cnequ] = "<>        ";
        
        #line 1264
        Keywd[C_cltn] = "<         ";
        
        #line 1265
        Keywd[C_cgtn] = ">         ";
        
        #line 1265
        Keywd[C_cadd] = "+         ";
        
        #line 1266
        Keywd[C_csub] = "-         ";
        
        #line 1266
        Keywd[C_cmult] = "*         ";
        
        #line 1267
        Keywd[C_cdiv] = "/         ";
        
        #line 1267
        Keywd[C_cmod] = "mod       ";
        
        #line 1268
        Keywd[C_cleft] = "left$     ";
        
        #line 1268
        Keywd[C_cright] = "right$    ";
        
        #line 1269
        Keywd[C_cmid] = "mid$      ";
        
        #line 1269
        Keywd[C_cthen] = "then      ";
        
        #line 1270
        Keywd[C_cstr] = "str$      ";
        
        #line 1270
        Keywd[C_cval] = "val       ";
        
        #line 1271
        Keywd[C_cchr] = "chr       ";
        
        #line 1272
        Output << _WRITELN;
        
        #line 1273
        Output << "Tiny basic interpreter vs. 0.1 Copyright (C) 1994 S. A. Moore" << _WRITELN;
        
        #line 1274
        Output << _WRITELN;
        
        #line 1275
        L_88:
        while(C_true)
        {
            #line 1277
            Output << "Ready" << _WRITELN;
            
            #line 1278
            L_77:
            Prgmc = 0;
            
            #line 1279
            Linec = 1;
            
            #line 1280
            Top = 0;
            
            #line 1282
            do
            {
                #line 1282
                P_inpstr(nullptr, Prgm[0]);
            }
            while(!(!F_null(nullptr, Prgm[0])));
            
            #line 1283
            P_keycom(nullptr, Prgm[0]);
            
            #line 1284
            if((F_lint(nullptr, Prgm[0]) > 0))
            {
                #line 1286
                P_enter(nullptr, Prgm[0]);
                
                #line 1287
                goto L_77;
            }
            else
            {
                #line 1289
                do
                {
                    #line 1291
                    P_exec(nullptr);
                    
                    #line 1292
                    if((Prgmc > C_maxpgm))
                    {
                        #line 1292
                        Prgmc = 0;
                    }
                    else
                    {
                        #line 1293
                        if(F_null(nullptr, Prgm[Prgmc]))
                        {
                            #line 1293
                            Prgmc = 0;
                        }
                    }
                }
                while(!(Prgmc == 0));
            }
        }
        
        #line 1298
        L_99:
        Output << "Bye..." << _WRITELN;
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_88:
        case NL_99:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


#line 128
//================================================================================
// scope: prtlin (level : 2)

// forward declarations
void P_prtlin_prtkey(void* _slink, T_string10& Str);

// activation record
struct Frame_prtlin
{
    // parameters
    T_string80& Str;

    // locals
    T_integer i;
    T_integer j;
};

// function body
void P_prtlin(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_prtlin _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 148
    _F.j = 80;
    
    #line 149
    while(((_F.Str[_F.j] == ' ') && (_F.j > 0)))
    {
        #line 149
        _F.j = (_F.j - 1);
    }
    
    #line 150
    _F.j = (_F.j + 1);
    
    #line 151
    _F.i = 1;
    
    #line 152
    while((_F.i < _F.j))
    {
        #line 154
        if((_ord(_F.Str[_F.i]) < _ord(' ')))
        {
            #line 154
            P_prtlin_prtkey(&_F, Keywd[_ord(_F.Str[_F.i])]);
        }
        else
        {
            #line 155
            Output << _F.Str[_F.i];
        }
        
        #line 156
        _F.i = (_F.i + 1);
    }
    
    #line 159
    Output << _WRITELN;
}


#line 132
//================================================================================
// scope: prtlin_prtkey (level : 3)

// activation record
struct Frame_prtlin_prtkey
{
   Frame_prtlin* _slink;

    // parameters
    T_string10& Str;

    // locals
    T_integer i;
    T_integer j;
};

// function body
void P_prtlin_prtkey(void* _slink, T_string10& Str)
{
    // prologue/frame definition
    Frame_prtlin_prtkey _F = { (Frame_prtlin*)_slink, Str };
    
    // subroutine body
    #line 138
    _F.j = 10;
    
    #line 139
    while(((_F.Str[_F.j] == ' ') && (_F.j > 0)))
    {
        #line 139
        _F.j = (_F.j - 1);
    }
    
    #line 140
    _F.j = (_F.j + 1);
    
    #line 141
    _F.i = 1;
    
    #line 142
    while((_F.i < _F.j))
    {
        #line 142
        Output << _F.Str[_F.i];
        
        #line 142
        _F.i = (_F.i + 1);
    }
}


#line 165
//================================================================================
// scope: prterr (level : 2)

// activation record
struct Frame_prterr
{
    // parameters
    T_errcod Err;
};

// function body
void P_prterr(void* _slink, T_errcod Err)
{
    // prologue/frame definition
    Frame_prterr _F = {Err };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 169
    if((Prgmc != 0))
    {
        #line 169
        P_prtlin(nullptr, Prgm[Prgmc]);
    }
    
    #line 170
    Output << "*** ";
    
    #line 171
    switch(_F.Err)
    {
    case C_eitp:
        #line 173
        Output << "Interpreter error" << _WRITELN;
        break;
    
    case C_estate:
        #line 174
        Output << "Statement expected" << _WRITELN;
        break;
    
    case C_eexmi:
        #line 175
        Output << "Expression must be integer" << _WRITELN;
        break;
    
    case C_eeque:
        #line 176
        Output << "\"=\" expected" << _WRITELN;
        break;
    
    case C_estyp:
        #line 177
        Output << "Operands not of same type" << _WRITELN;
        break;
    
    case C_epbful:
        #line 178
        Output << "Program buffer full" << _WRITELN;
        break;
    
    case C_eiovf:
        #line 179
        Output << "Input overflow" << _WRITELN;
        break;
    
    case C_evare:
        #line 180
        Output << "Variable expected" << _WRITELN;
        break;
    
    case C_elabnf:
        #line 181
        Output << "Statement label not found" << _WRITELN;
        break;
    
    case C_einte:
        #line 182
        Output << "Integer expected" << _WRITELN;
        break;
    
    case C_econv:
        #line 183
        Output << "Conversion error" << _WRITELN;
        break;
    
    case C_elntl:
        #line 184
        Output << "Line number too large" << _WRITELN;
        break;
    
    case C_ewtyp:
        #line 185
        Output << "Operand(s) of wrong type" << _WRITELN;
        break;
    
    case C_erpe:
        #line 186
        Output << "\")\" expected" << _WRITELN;
        break;
    
    case C_eexc:
        #line 187
        Output << "Expression too complex" << _WRITELN;
        break;
    
    case C_emqu:
        #line 188
        Output << "Missing quote" << _WRITELN;
        break;
    
    case C_eifact:
        #line 189
        Output << "Invalid factor" << _WRITELN;
        break;
    
    case C_elintl:
        #line 190
        Output << "Line number too large" << _WRITELN;
        break;
    
    case C_estrovf:
        #line 191
        Output << "String overflow" << _WRITELN;
        break;
    
    case C_eedlexp:
        #line 192
        Output << "End of line expected" << _WRITELN;
        break;
    
    case C_elpe:
        #line 193
        Output << "\"(\" expected" << _WRITELN;
        break;
    
    case C_ecmaexp:
        #line 194
        Output << "\",\" expected" << _WRITELN;
        break;
    
    case C_estre:
        #line 195
        Output << "String expected" << _WRITELN;
        break;
    
    case C_estrinx:
        #line 196
        Output << "String indexing error" << _WRITELN;
        break;
    }
    
    #line 199
    throw NL_88;
}


#line 205
//================================================================================
// scope: chkchr (level : 2)

// activation record
struct Frame_chkchr
{
    // locals
    T_char _fnvalue;
    T_char c;
};

// function body
T_char F_chkchr(void* _slink)
{
    // prologue/frame definition
    Frame_chkchr _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 211
    if((Linec <= 80))
    {
        #line 211
        _F.c = Prgm[Prgmc][Linec];
    }
    else
    {
        #line 212
        _F.c = ' ';
    }
    
    #line 213
    _F._fnvalue = _F.c;
    
    // epilogue
    return _F._fnvalue;
}


#line 219
//================================================================================
// scope: chkend (level : 2)

// activation record
struct Frame_chkend
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_chkend(void* _slink)
{
    // prologue/frame definition
    Frame_chkend _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 223
    _F._fnvalue = (Linec > 80);
    
    // epilogue
    return _F._fnvalue;
}


#line 229
//================================================================================
// scope: getchr (level : 2)

// activation record
struct Frame_getchr
{
    // locals
    T_char _fnvalue;
};

// function body
T_char F_getchr(void* _slink)
{
    // prologue/frame definition
    Frame_getchr _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 233
    _F._fnvalue = F_chkchr(nullptr);
    
    #line 234
    if((!F_chkend(nullptr)))
    {
        #line 234
        Linec = (Linec + 1);
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 240
//================================================================================
// scope: chknxt (level : 2)

// activation record
struct Frame_chknxt
{
    // parameters
    T_char c;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_chknxt(void* _slink, T_char c)
{
    // prologue/frame definition
    Frame_chknxt _F = {c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 244
    _F._fnvalue = (_F.c == F_chkchr(nullptr));
    
    #line 245
    if((_F.c == F_chkchr(nullptr)))
    {
        #line 245
        _F.c = F_getchr(nullptr);
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 251
//================================================================================
// scope: skpspc (level : 2)

// activation record
struct Frame_skpspc
{
    // locals
    T_char c;
};

// function body
void P_skpspc(void* _slink)
{
    // prologue/frame definition
    Frame_skpspc _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 257
    while(((F_chkchr(nullptr) == ' ') && (!F_chkend(nullptr))))
    {
        #line 257
        _F.c = F_getchr(nullptr);
    }
    
    { /* NOP */ }
}


#line 263
//================================================================================
// scope: chksend (level : 2)

// activation record
struct Frame_chksend
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_chksend(void* _slink)
{
    // prologue/frame definition
    Frame_chksend _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 267
    P_skpspc(nullptr);
    
    #line 268
    _F._fnvalue = (F_chkend(nullptr) || (F_chkchr(nullptr) == ':'));
    
    // epilogue
    return _F._fnvalue;
}


#line 274
//================================================================================
// scope: null (level : 2)

// activation record
struct Frame_null
{
    // parameters
    T_string80& Str;

    // locals
    T_boolean _fnvalue;
    T_boolean f;
    T_integer i;
};

// function body
T_boolean F_null(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_null _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 281
    _F.f = C_true;
    
    #line 282
    _FOR_TO(_F.i, 1, 80)
    {
        #line 282
        if((_F.Str[_F.i] != ' '))
        {
            #line 282
            _F.f = C_false;
        }
    }
    _FOR_END(_F.i)
    
    #line 283
    _F._fnvalue = _F.f;
    
    // epilogue
    return _F._fnvalue;
}


#line 289
//================================================================================
// scope: digit (level : 2)

// activation record
struct Frame_digit
{
    // parameters
    T_char c;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_digit(void* _slink, T_char c)
{
    // prologue/frame definition
    Frame_digit _F = {c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 293
    _F._fnvalue = ((_ord(_F.c) >= _ord('0')) && (_ord(_F.c) <= _ord('9')));
    
    // epilogue
    return _F._fnvalue;
}


#line 299
//================================================================================
// scope: lcase (level : 2)

// activation record
struct Frame_lcase
{
    // parameters
    T_char c;

    // locals
    T_char _fnvalue;
};

// function body
T_char F_lcase(void* _slink, T_char c)
{
    // prologue/frame definition
    Frame_lcase _F = {c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 303
    if(((_ord(_F.c) >= _ord('A')) && (_ord(_F.c) <= _ord('Z'))))
    {
        #line 304
        _F.c = _chr(((_ord(_F.c) - _ord('A')) + _ord('a')));
    }
    
    #line 305
    _F._fnvalue = _F.c;
    
    // epilogue
    return _F._fnvalue;
}


#line 311
//================================================================================
// scope: alpha (level : 2)

// activation record
struct Frame_alpha
{
    // parameters
    T_char c;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_alpha(void* _slink, T_char c)
{
    // prologue/frame definition
    Frame_alpha _F = {c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 315
    _F._fnvalue = ((_ord(F_lcase(nullptr, _F.c)) >= _ord('a')) && (_ord(_F.c) <= _ord('z')));
    
    // epilogue
    return _F._fnvalue;
}


#line 322
//================================================================================
// scope: lint (level : 2)

// activation record
struct Frame_lint
{
    // parameters
    T_string80& Str;

    // locals
    T_integer _fnvalue;
    T_boolean b;
    T_integer i;
    T_integer v;
};

// function body
T_integer F_lint(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_lint _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 329
    _F.v = 0;
    
    #line 330
    _F.i = 1;
    
    #line 331
    while(((_F.i < 80) && (_F.Str[_F.i] == ' ')))
    {
        #line 331
        _F.i = (_F.i + 1);
    }
    
    #line 332
    do
    {
        #line 334
        if(F_digit(nullptr, _F.Str[_F.i]))
        {
            #line 336
            _F.v = ((_F.v * 10) + (_ord(_F.Str[_F.i]) - _ord('0')));
            
            #line 337
            if((_F.i != 80))
            {
                #line 339
                _F.i = (_F.i + 1);
                
                #line 340
                _F.b = C_false;
            }
            else
            {
                #line 342
                _F.b = C_true;
            }
        }
        else
        {
            #line 344
            _F.b = C_true;
        }
    }
    while(!_F.b);
    
    #line 347
    _F._fnvalue = _F.v;
    
    // epilogue
    return _F._fnvalue;
}


#line 353
//================================================================================
// scope: schlab (level : 2)

// activation record
struct Frame_schlab
{
    // parameters
    T_integer Lab;

    // locals
    T_integer _fnvalue;
    T_integer i;
};

// function body
T_integer F_schlab(void* _slink, T_integer Lab)
{
    // prologue/frame definition
    Frame_schlab _F = {Lab };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 359
    _F.i = 1;
    
    #line 360
    while(((_F.Lab != F_lint(nullptr, Prgm[_F.i])) && (_F.i <= C_maxpgm)))
    {
        #line 360
        _F.i = (_F.i + 1);
    }
    
    #line 361
    if((_F.Lab != F_lint(nullptr, Prgm[_F.i])))
    {
        #line 361
        P_prterr(nullptr, C_elabnf);
    }
    
    #line 362
    _F._fnvalue = _F.i;
    
    // epilogue
    return _F._fnvalue;
}


#line 368
//================================================================================
// scope: inpstr (level : 2)

// activation record
struct Frame_inpstr
{
    // parameters
    T_string80& Str;

    // locals
    T_integer i;
};

// function body
void P_inpstr(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_inpstr _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 374
    _FOR_TO(_F.i, 1, 80)
    {
        #line 374
        _F.Str[_F.i] = ' ';
    }
    _FOR_END(_F.i)
    
    #line 375
    _F.i = 1;
    
    #line 376
    while(((_F.i <= 80) && (!_eoln(Input))))
    {
        #line 378
        Input >> _F.Str[_F.i];
        
        #line 379
        _F.i = (_F.i + 1);
    }
    
    #line 382
    Input >> _READLN;
    
    #line 383
    if((_F.i > 80))
    {
        #line 383
        P_prterr(nullptr, C_eiovf);
    }
}


#line 389
//================================================================================
// scope: getvar (level : 2)

// activation record
struct Frame_getvar
{
    // locals
    T_char _fnvalue;
};

// function body
T_char F_getvar(void* _slink)
{
    // prologue/frame definition
    Frame_getvar _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 393
    if((!F_alpha(nullptr, F_chkchr(nullptr))))
    {
        #line 393
        P_prterr(nullptr, C_evare);
    }
    
    #line 394
    _F._fnvalue = F_lcase(nullptr, F_getchr(nullptr));
    
    // epilogue
    return _F._fnvalue;
}


#line 400
//================================================================================
// scope: enter (level : 2)

// activation record
struct Frame_enter
{
    // parameters
    T_string80& Str;

    // locals
    T_boolean f;
    T_integer i;
    T_integer j;
    T_integer k;
    T_integer Line;
};

// function body
void P_enter(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_enter _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 407
    _F.Line = F_lint(nullptr, _F.Str);
    
    #line 408
    if((_F.Line > C_maxlin))
    {
        #line 408
        P_prterr(nullptr, C_elintl);
    }
    
    #line 409
    _F.i = 1;
    
    #line 410
    _F.f = C_false;
    
    #line 411
    do
    {
        #line 413
        if(F_null(nullptr, Prgm[_F.i]))
        {
            #line 413
            _F.f = C_true;
        }
        else
        {
            #line 414
            if((F_lint(nullptr, Prgm[_F.i]) < _F.Line))
            {
                #line 416
                _F.i = (_F.i + 1);
                
                #line 417
                if((_F.i > C_maxpgm))
                {
                    #line 417
                    _F.f = C_true;
                }
            }
            else
            {
                #line 419
                _F.f = C_true;
            }
        }
    }
    while(!_F.f);
    
    #line 422
    if((_F.i > C_maxpgm))
    {
        #line 422
        P_prterr(nullptr, C_epbful);
    }
    
    #line 423
    if(F_null(nullptr, Prgm[_F.i]))
    {
        #line 423
        Prgm[_F.i] = _F.Str;
    }
    else
    {
        #line 424
        if((F_lint(nullptr, Prgm[_F.i]) == _F.Line))
        {
            #line 426
            _F.j = 1;
            
            #line 427
            while(((_F.Str[_F.j] == ' ') && (_F.j < 80)))
            {
                #line 427
                _F.j = (_F.j + 1);
            }
            
            #line 428
            while((F_digit(nullptr, _F.Str[_F.j]) && (_F.j < 80)))
            {
                #line 428
                _F.j = (_F.j + 1);
            }
            
            #line 429
            while(((_F.Str[_F.j] == ' ') && (_F.j < 80)))
            {
                #line 429
                _F.j = (_F.j + 1);
            }
            
            #line 430
            if((_F.j == 80))
            {
                #line 432
                _FOR_TO(_F.k, _F.i, (C_maxpgm - 1))
                {
                    #line 432
                    Prgm[_F.k] = Prgm[(_F.k + 1)];
                }
                _FOR_END(_F.k)
                
                #line 433
                _FOR_TO(_F.j, 1, 80)
                {
                    #line 433
                    Prgm[C_maxpgm][_F.j] = ' ';
                }
                _FOR_END(_F.j)
            }
            else
            {
                #line 435
                Prgm[_F.i] = _F.Str;
            }
        }
        else
        {
            #line 437
            if((!F_null(nullptr, Prgm[C_maxpgm])))
            {
                #line 437
                P_prterr(nullptr, C_epbful);
            }
            else
            {
                #line 440
                _FOR_DOWNTO(_F.k, C_maxpgm, (_F.i + 1))
                {
                    #line 440
                    Prgm[_F.k] = Prgm[(_F.k - 1)];
                }
                _FOR_END(_F.k)
                
                #line 441
                Prgm[_F.i] = _F.Str;
            }
        }
    }
}


#line 449
//================================================================================
// scope: keycom (level : 2)

// forward declarations
T_boolean F_keycom_matstr(void* _slink, T_string80& Stra, T_integer& i, T_string10& Strb);

// activation record
struct Frame_keycom
{
    // parameters
    T_string80& Str;

    // locals
    T_char c;
    T_boolean f;
    T_integer I1;
    T_integer I2;
    T_integer k;
    T_string80 Ts;
};

// function body
void P_keycom(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_keycom _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 488
    _FOR_TO(_F.I2, 1, 80)
    {
        #line 488
        _F.Ts[_F.I2] = ' ';
    }
    _FOR_END(_F.I2)
    
    #line 489
    _F.I1 = 1;
    
    #line 490
    _F.I2 = 1;
    
    #line 491
    do
    {
        #line 493
        if((_F.Str[_F.I1] == '"'))
        {
            #line 495
            _F.Ts[_F.I2] = '"';
            
            #line 496
            _F.I1 = (_F.I1 + 1);
            
            #line 497
            _F.I2 = (_F.I2 + 1);
            
            #line 498
            _F.c = ' ';
            
            #line 499
            while(((_F.I1 <= 80) && (_F.c != '"')))
            {
                #line 501
                _F.c = _F.Str[_F.I1];
                
                #line 502
                _F.Ts[_F.I2] = _F.Str[_F.I1];
                
                #line 503
                _F.I1 = (_F.I1 + 1);
                
                #line 504
                _F.I2 = (_F.I2 + 1);
            }
        }
        else
        {
            #line 508
            if((_F.Str[_F.I1] == ' '))
            {
                #line 510
                _F.Ts[_F.I2] = _F.Str[_F.I1];
                
                #line 511
                _F.I1 = (_F.I1 + 1);
                
                #line 512
                _F.I2 = (_F.I2 + 1);
            }
            else
            {
                #line 516
                _F.k = 1;
                
                #line 517
                _F.f = C_false;
                
                #line 518
                while(((_F.k <= C_maxkey) && (!_F.f)))
                {
                    #line 521
                    _F.f = F_keycom_matstr(&_F, _F.Str, _F.I1, Keywd[_F.k]);
                    
                    #line 522
                    _F.k = (_F.k + 1);
                }
                
                #line 525
                if(_F.f)
                {
                    #line 525
                    _F.Ts[_F.I2] = _chr((_F.k - 1));
                }
                else
                {
                    #line 526
                    _F.Ts[_F.I2] = _F.Str[_F.I1];
                    
                    #line 526
                    _F.I1 = (_F.I1 + 1);
                }
                
                #line 527
                _F.I2 = (_F.I2 + 1);
            }
        }
    }
    while(!(_F.I1 > 80));
    
    #line 532
    _FOR_TO(_F.I1, 1, 80)
    {
        #line 532
        _F.Str[_F.I1] = _F.Ts[_F.I1];
    }
    _FOR_END(_F.I1)
}


#line 456
//================================================================================
// scope: keycom_matstr (level : 3)

// activation record
struct Frame_keycom_matstr
{
   Frame_keycom* _slink;

    // parameters
    T_string80& Stra;
    T_integer& i;
    T_string10& Strb;

    // locals
    T_boolean _fnvalue;
    T_boolean f;
    T_integer I1;
    T_integer I2;
};

// function body
T_boolean F_keycom_matstr(void* _slink, T_string80& Stra, T_integer& i, T_string10& Strb)
{
    // prologue/frame definition
    Frame_keycom_matstr _F = { (Frame_keycom*)_slink, Stra, i, Strb };
    
    // subroutine body
    #line 464
    _F.I1 = _F.i;
    
    #line 465
    _F.I2 = 1;
    
    #line 466
    do
    {
        #line 468
        if((_F.Strb[_F.I2] == ' '))
        {
            #line 468
            _F.f = C_false;
        }
        else
        {
            #line 469
            if((F_lcase(nullptr, _F.Stra[_F.I1]) == F_lcase(nullptr, _F.Strb[_F.I2])))
            {
                #line 471
                _F.f = C_true;
                
                #line 472
                _F.I1 = (_F.I1 + 1);
                
                #line 473
                _F.I2 = (_F.I2 + 1);
            }
            else
            {
                #line 476
                _F.f = C_false;
            }
        }
    }
    while(!(((!_F.f) || (_F.I1 > 80)) || (_F.I2 > 10)));
    
    #line 479
    if((_F.I2 > 10))
    {
        #line 479
        _F.f = C_true;
        
        #line 479
        _F.i = _F.I1;
    }
    else
    {
        #line 480
        if((_F.Strb[_F.I2] == ' '))
        {
            #line 480
            _F.f = C_true;
            
            #line 480
            _F.i = _F.I1;
        }
        else
        {
            #line 481
            _F.f = C_false;
        }
    }
    
    #line 482
    _F._fnvalue = _F.f;
    
    // epilogue
    return _F._fnvalue;
}


#line 540
//================================================================================
// scope: getint (level : 2)

// activation record
struct Frame_getint
{
    // locals
    T_integer _fnvalue;
    T_integer v;
};

// function body
T_integer F_getint(void* _slink)
{
    // prologue/frame definition
    Frame_getint _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 546
    _F.v = 0;
    
    #line 547
    P_skpspc(nullptr);
    
    #line 548
    if((!F_digit(nullptr, F_chkchr(nullptr))))
    {
        #line 548
        P_prterr(nullptr, C_einte);
    }
    
    #line 549
    do
    {
        #line 549
        _F.v = ((_F.v * 10) + (_ord(F_getchr(nullptr)) - _ord('0')));
    }
    while(!(!F_digit(nullptr, F_chkchr(nullptr))));
    
    #line 551
    _F._fnvalue = _F.v;
    
    // epilogue
    return _F._fnvalue;
}


#line 557
//================================================================================
// scope: getval (level : 2)

// activation record
struct Frame_getval
{
    // parameters
    T_string80& Str;

    // locals
    T_integer _fnvalue;
    T_integer i;
};

// function body
T_integer F_getval(void* _slink, T_string80& Str)
{
    // prologue/frame definition
    Frame_getval _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 563
    _F.i = 1;
    
    #line 564
    while(((_F.i <= 80) && (_F.Str[_F.i] == ' ')))
    {
        #line 564
        _F.i = (_F.i + 1);
    }
    
    #line 565
    if((!F_digit(nullptr, _F.Str[_F.i])))
    {
        #line 565
        P_prterr(nullptr, C_einte);
    }
    
    #line 566
    _F._fnvalue = F_lint(nullptr, _F.Str);
    
    #line 567
    while(((_F.i < 80) && F_digit(nullptr, _F.Str[_F.i])))
    {
        #line 567
        _F.i = (_F.i + 1);
    }
    
    #line 568
    while(((_F.i < 80) && (_F.Str[_F.i] == ' ')))
    {
        #line 568
        _F.i = (_F.i + 1);
    }
    
    #line 569
    if((_F.i != 80))
    {
        #line 569
        P_prterr(nullptr, C_econv);
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 575
//================================================================================
// scope: getbval (level : 2)

// activation record
struct Frame_getbval
{
    // parameters
    T_bstring80& Str;

    // locals
    T_integer _fnvalue;
    T_integer i;
    T_integer v;
};

// function body
T_integer F_getbval(void* _slink, T_bstring80& Str)
{
    // prologue/frame definition
    Frame_getbval _F = {Str };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 581
    _F.i = 1;
    
    #line 582
    while(((_F.i <= _F.Str.Len) && (_F.Str.Str[_F.i] == ' ')))
    {
        #line 582
        _F.i = (_F.i + 1);
    }
    
    #line 583
    if((!F_digit(nullptr, _F.Str.Str[_F.i])))
    {
        #line 583
        P_prterr(nullptr, C_einte);
    }
    
    #line 584
    _F.v = 0;
    
    #line 585
    while(((_F.i <= _F.Str.Len) && F_digit(nullptr, _F.Str.Str[_F.i])))
    {
        #line 587
        _F.v = (((_F.v * 10) + _ord(_F.Str.Str[_F.i])) - _ord('0'));
        
        #line 588
        _F.i = (_F.i + 1);
    }
    
    #line 591
    while(((_F.i <= _F.Str.Len) && (_F.Str.Str[_F.i] == ' ')))
    {
        #line 591
        _F.i = (_F.i + 1);
    }
    
    #line 592
    if((_F.i <= _F.Str.Len))
    {
        #line 592
        P_prterr(nullptr, C_econv);
    }
    
    #line 593
    _F._fnvalue = _F.v;
    
    // epilogue
    return _F._fnvalue;
}


#line 599
//================================================================================
// scope: putbval (level : 2)

// activation record
struct Frame_putbval
{
    // parameters
    T_bstring80& Str;
    T_integer v;

    // locals
    T_integer i;
    T_integer p;
};

// function body
void P_putbval(void* _slink, T_bstring80& Str, T_integer v)
{
    // prologue/frame definition
    Frame_putbval _F = {Str, v };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 606
    _F.Str.Len = 0;
    
    #line 607
    _F.p = 10000;
    
    #line 608
    _F.i = 1;
    
    #line 609
    if((_F.v < 0))
    {
        #line 611
        _F.Str.Str[_F.i] = '-';
        
        #line 612
        _F.i = (_F.i + 1);
        
        #line 613
        _F.v = (-_F.v);
    }
    
    #line 616
    while((_F.p != 0))
    {
        #line 618
        _F.Str.Str[_F.i] = _chr(((_F.v / _F.p) + _ord('0')));
        
        #line 619
        if((_F.Str.Str[1] == '-'))
        {
            #line 621
            if(((_F.Str.Str[2] != '0') || (_F.p == 1)))
            {
                #line 621
                _F.i = (_F.i + 1);
            }
            
            { /* NOP */ }
        }
        else
        {
            #line 624
            if(((_F.Str.Str[1] != '0') || (_F.p == 1)))
            {
                #line 624
                _F.i = (_F.i + 1);
            }
        }
        
        #line 625
        _F.v = _mod(_F.v , _F.p);
        
        #line 626
        _F.p = (_F.p / 10);
    }
    
    #line 629
    _F.Str.Len = (_F.i - 1);
}


#line 635
//================================================================================
// scope: prtbstr (level : 2)

// activation record
struct Frame_prtbstr
{
    // parameters
    T_bstring80& Bstr;

    // locals
    T_integer i;
};

// function body
void P_prtbstr(void* _slink, T_bstring80& Bstr)
{
    // prologue/frame definition
    Frame_prtbstr _F = {Bstr };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 641
    _FOR_TO(_F.i, 1, _F.Bstr.Len)
    {
        #line 641
        Output << _F.Bstr.Str[_F.i];
    }
    _FOR_END(_F.i)
    
    { /* NOP */ }
}


#line 647
//================================================================================
// scope: inpbstr (level : 2)

// activation record
struct Frame_inpbstr
{
    // parameters
    T_bstring80& Bstr;

    // locals
    T_integer i;
};

// function body
void P_inpbstr(void* _slink, T_bstring80& Bstr)
{
    // prologue/frame definition
    Frame_inpbstr _F = {Bstr };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 653
    _FOR_TO(_F.i, 1, 80)
    {
        #line 653
        _F.Bstr.Str[_F.i] = ' ';
    }
    _FOR_END(_F.i)
    
    #line 654
    _F.i = 1;
    
    #line 655
    while(((_F.i < 80) && (!_eoln(Input))))
    {
        #line 657
        Input >> _F.Bstr.Str[_F.i];
        
        #line 658
        _F.i = (_F.i + 1);
    }
    
    #line 661
    if(((_F.i > 80) && (!_eoln(Input))))
    {
        #line 661
        P_prterr(nullptr, C_eiovf);
    }
    
    #line 662
    Input >> _READLN;
    
    #line 663
    _F.Bstr.Len = _F.i;
}


#line 669
//================================================================================
// scope: cat (level : 2)

// activation record
struct Frame_cat
{
    // parameters
    T_bstring80& Bstra;
    T_bstring80& Bstrb;

    // locals
    T_integer i;
};

// function body
void P_cat(void* _slink, T_bstring80& Bstra, T_bstring80& Bstrb)
{
    // prologue/frame definition
    Frame_cat _F = {Bstra, Bstrb };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 675
    if(((_F.Bstra.Len + _F.Bstrb.Len) > 80))
    {
        #line 675
        P_prterr(nullptr, C_estrovf);
    }
    
    #line 677
    _FOR_TO(_F.i, 1, _F.Bstrb.Len)
    {
        #line 677
        _F.Bstra.Str[(_F.Bstra.Len + _F.i)] = _F.Bstrb.Str[_F.i];
    }
    _FOR_END(_F.i)
    
    #line 678
    _F.Bstra.Len = (_F.Bstra.Len + _F.Bstrb.Len);
}


#line 684
//================================================================================
// scope: chkequ (level : 2)

// activation record
struct Frame_chkequ
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_chkequ(void* _slink)
{
    // prologue/frame definition
    Frame_chkequ _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 688
    if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
    {
        #line 689
        P_prterr(nullptr, C_ewtyp);
    }
    
    #line 690
    _F._fnvalue = (Temp[(Top - 1)].Int == Temp[Top].Int);
    
    // epilogue
    return _F._fnvalue;
}


#line 696
//================================================================================
// scope: chkltn (level : 2)

// activation record
struct Frame_chkltn
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_chkltn(void* _slink)
{
    // prologue/frame definition
    Frame_chkltn _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 700
    if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
    {
        #line 701
        P_prterr(nullptr, C_ewtyp);
    }
    
    #line 702
    _F._fnvalue = (Temp[(Top - 1)].Int < Temp[Top].Int);
    
    // epilogue
    return _F._fnvalue;
}


#line 708
//================================================================================
// scope: chkgtn (level : 2)

// activation record
struct Frame_chkgtn
{
    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_chkgtn(void* _slink)
{
    // prologue/frame definition
    Frame_chkgtn _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 712
    if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
    {
        #line 713
        P_prterr(nullptr, C_ewtyp);
    }
    
    #line 714
    _F._fnvalue = (Temp[(Top - 1)].Int > Temp[Top].Int);
    
    // epilogue
    return _F._fnvalue;
}


#line 720
//================================================================================
// scope: settrue (level : 2)

// activation record
struct Frame_settrue
{};

// function body
void P_settrue(void* _slink)
{
    // prologue/frame definition
    Frame_settrue _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 724
    Temp[Top].Typ = C_tint;
    
    #line 725
    Temp[Top].Int = 1;
}


#line 731
//================================================================================
// scope: setfalse (level : 2)

// activation record
struct Frame_setfalse
{};

// function body
void P_setfalse(void* _slink)
{
    // prologue/frame definition
    Frame_setfalse _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 735
    Temp[Top].Typ = C_tint;
    
    #line 736
    Temp[Top].Int = 0;
}


#line 742
//================================================================================
// scope: clear (level : 2)

// activation record
struct Frame_clear
{
    // locals
    T_char c;
    T_integer x;
    T_integer y;
};

// function body
void P_clear(void* _slink)
{
    // prologue/frame definition
    Frame_clear _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 749
    _FOR_TO(_F.x, 1, C_maxpgm)
    {
        #line 750
        _FOR_TO(_F.y, 1, 80)
        {
            #line 750
            Prgm[_F.x][_F.y] = ' ';
        }
        _FOR_END(_F.y)
    }
    _FOR_END(_F.x)
    
    #line 751
    _FOR_TO(_F.c, 'a', 'z')
    {
        #line 751
        Strs[_F.c].Len = 0;
    }
    _FOR_END(_F.c)
    
    #line 752
    _FOR_TO(_F.c, 'a', 'z')
    {
        #line 752
        Ints[_F.c] = 0;
    }
    _FOR_END(_F.c)
    
    #line 753
    Prgmc = 0;
    
    #line 754
    Linec = 1;
    
    #line 755
    Top = 1;
}


#line 761
//================================================================================
// scope: clrvar (level : 2)

// activation record
struct Frame_clrvar
{
    // locals
    T_char c;
};

// function body
void P_clrvar(void* _slink)
{
    // prologue/frame definition
    Frame_clrvar _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 767
    _FOR_TO(_F.c, 'a', 'z')
    {
        #line 767
        Strs[_F.c].Len = 0;
    }
    _FOR_END(_F.c)
    
    #line 768
    _FOR_TO(_F.c, 'a', 'z')
    {
        #line 768
        Ints[_F.c] = 0;
    }
    _FOR_END(_F.c)
    
    #line 769
    Prgmc = 0;
    
    #line 770
    Linec = 1;
    
    #line 771
    Top = 1;
}


#line 777
//================================================================================
// scope: exec (level : 2)

// forward declarations
void P_exec_stat(void* _slink);

// non-local goto targets
const int NL_exec_1 = 2;

// activation record
struct Frame_exec
{
    // locals
    T_char c;
};

// function body
void P_exec(void* _slink)
{
    // prologue/frame definition
    Frame_exec _F = { };
    
    assert(nullptr == _slink);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_exec_1: goto L_1;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        #line 1243
        Linec = 1;
        
        #line 1244
        while(F_digit(nullptr, F_chkchr(nullptr)))
        {
            #line 1244
            _F.c = F_getchr(nullptr);
        }
        
        #line 1245
        do
        {
            #line 1245
            P_exec_stat(&_F);
        }
        while(!(F_getchr(nullptr) != ':'));
        
        #line 1246
        P_skpspc(nullptr);
        
        #line 1247
        if((!F_chkend(nullptr)))
        {
            #line 1247
            P_prterr(nullptr, C_eedlexp);
        }
        
        #line 1248
        if((Prgmc > 0))
        {
            #line 1248
            Prgmc = (Prgmc + 1);
        }
        
        L_1:
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_exec_1:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


#line 785
//================================================================================
// scope: exec_stat (level : 3)

// forward declarations
void P_exec_stat_expr(void* _slink);
void P_exec_stat_let(void* _slink);

// activation record
struct Frame_exec_stat
{
   Frame_exec* _slink;

    // locals
    T_boolean b;
    T_char c;
    T_string80 s;
    T_integer x;
    T_integer y;
};

// function body
void P_exec_stat(void* _slink)
{
    // prologue/frame definition
    Frame_exec_stat _F = { (Frame_exec*)_slink };
    
    // subroutine body
    #line 1139
    P_skpspc(nullptr);
    
    #line 1140
    if((_ord(F_chkchr(nullptr)) < _ord(' ')))
    {
        #line 1142
        if((_ord(F_chkchr(nullptr)) > C_cbye))
        {
            #line 1142
            P_prterr(nullptr, C_estate);
        }
        
        #line 1143
        switch(_ord(F_getchr(nullptr)))
        {
        case C_cinput:
            #line 1147
            P_skpspc(nullptr);
            
            #line 1148
            _F.c = F_getvar(nullptr);
            
            #line 1149
            if(F_chknxt(nullptr, '$'))
            {
                #line 1149
                P_inpbstr(nullptr, Strs[_F.c]);
            }
            else
            {
                #line 1152
                P_inpstr(nullptr, _F.s);
                
                #line 1153
                Ints[_F.c] = F_getval(nullptr, _F.s);
            }
            break;
        
        case C_cprint:
            #line 1161
            do
            {
                #line 1163
                P_exec_stat_expr(&_F);
                
                #line 1164
                if((Temp[Top].Typ == C_tstr))
                {
                    #line 1164
                    P_prtbstr(nullptr, Temp[Top].Bstr);
                }
                else
                {
                    #line 1165
                    Output << Temp[Top].Int;
                }
                
                #line 1166
                Top = (Top - 1);
                
                #line 1167
                P_skpspc(nullptr);
            }
            while(!(!F_chknxt(nullptr, ',')));
            
            #line 1170
            if((!F_chknxt(nullptr, ';')))
            {
                #line 1170
                Output << _WRITELN;
            }
            break;
        
        case C_cgoto:
            #line 1176
            Prgmc = F_schlab(nullptr, F_getint(nullptr));
            
            #line 1177
            throw NL_exec_1;
            break;
        
        case C_cif:
            #line 1183
            P_exec_stat_expr(&_F);
            
            #line 1184
            if((Temp[Top].Typ != C_tint))
            {
                #line 1185
                P_prterr(nullptr, C_eexmi);
            }
            
            #line 1186
            if((Temp[Top].Int == 0))
            {
                #line 1188
                Top = (Top - 1);
                
                #line 1190
                if((Prgmc > 0))
                {
                    #line 1190
                    Prgmc = (Prgmc + 1);
                }
                
                #line 1191
                throw NL_exec_1;
            }
            
            #line 1194
            Top = (Top - 1);
            
            #line 1195
            _F.b = F_chknxt(nullptr, _chr(C_cthen));
            
            #line 1196
            P_exec_stat(_F._slink);
            break;
        
        case C_crem:
            #line 1202
            if((Prgmc > 0))
            {
                #line 1202
                Prgmc = (Prgmc + 1);
            }
            
            #line 1203
            throw NL_exec_1;
            break;
        
        case C_cstop:
            #line 1207
            throw NL_88;
            break;
        
        case C_crun:
            #line 1209
            P_clrvar(nullptr);
            
            #line 1209
            Prgmc = 1;
            
            #line 1209
            throw NL_exec_1;
            break;
        
        case C_clist:
            #line 1213
            _F.x = 1;
            
            #line 1214
            _F.y = C_maxpgm;
            
            #line 1215
            if((!F_chksend(nullptr)))
            {
                #line 1217
                _F.x = F_schlab(nullptr, F_getint(nullptr));
                
                #line 1218
                P_skpspc(nullptr);
                
                #line 1220
                if(F_chknxt(nullptr, ','))
                {
                    #line 1220
                    _F.y = F_schlab(nullptr, F_getint(nullptr));
                }
            }
            
            #line 1223
            _FOR_TO(_F.x, _F.x, _F.y)
            {
                #line 1224
                if((!F_null(nullptr, Prgm[_F.x])))
                {
                    #line 1225
                    P_prtlin(nullptr, Prgm[_F.x]);
                }
            }
            _FOR_END(_F.x)
            break;
        
        case C_cnew:
            #line 1229
            P_clear(nullptr);
            
            #line 1229
            throw NL_88;
            break;
        
        case C_clet:
            #line 1231
            P_exec_stat_let(&_F);
            break;
        
        case C_cbye:
            #line 1233
            throw NL_99;
            break;
        }
    }
    else
    {
        #line 1237
        P_exec_stat_let(&_F);
    }
}


#line 794
//================================================================================
// scope: exec_stat_expr (level : 4)

// forward declarations
void P_exec_stat_expr_sexpr(void* _slink);

// activation record
struct Frame_exec_stat_expr
{
   Frame_exec_stat* _slink;
};

// function body
void P_exec_stat_expr(void* _slink)
{
    // prologue/frame definition
    Frame_exec_stat_expr _F = { (Frame_exec_stat*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_cequ);
    _setLiteral1.set(C_cnequ);
    _setLiteral1.set(C_cltn);
    _setLiteral1.set(C_cgtn);
    _setLiteral1.set(C_clequ);
    _setLiteral1.set(C_cgequ);
    
    // subroutine body
    #line 1042
    P_exec_stat_expr_sexpr(&_F);
    
    #line 1043
    P_skpspc(nullptr);
    
    #line 1044
    while((_setLiteral1 & _ord(F_chkchr(nullptr))))
    {
        #line 1046
        switch(_ord(F_getchr(nullptr)))
        {
        case C_cequ:
            #line 1050
            P_exec_stat_expr_sexpr(&_F);
            
            #line 1051
            if(F_chkequ(nullptr))
            {
                #line 1051
                Top = (Top - 1);
                
                #line 1051
                P_settrue(nullptr);
            }
            else
            {
                #line 1052
                Top = (Top - 1);
                
                #line 1052
                P_setfalse(nullptr);
            }
            break;
        
        case C_cnequ:
            #line 1058
            P_exec_stat_expr_sexpr(&_F);
            
            #line 1059
            if(F_chkequ(nullptr))
            {
                #line 1059
                Top = (Top - 1);
                
                #line 1059
                P_setfalse(nullptr);
            }
            else
            {
                #line 1060
                Top = (Top - 1);
                
                #line 1060
                P_settrue(nullptr);
            }
            break;
        
        case C_cltn:
            #line 1066
            P_exec_stat_expr_sexpr(&_F);
            
            #line 1067
            if(F_chkltn(nullptr))
            {
                #line 1067
                Top = (Top - 1);
                
                #line 1067
                P_settrue(nullptr);
            }
            else
            {
                #line 1068
                Top = (Top - 1);
                
                #line 1068
                P_setfalse(nullptr);
            }
            break;
        
        case C_cgtn:
            #line 1074
            P_exec_stat_expr_sexpr(&_F);
            
            #line 1075
            if(F_chkgtn(nullptr))
            {
                #line 1075
                Top = (Top - 1);
                
                #line 1075
                P_settrue(nullptr);
            }
            else
            {
                #line 1076
                Top = (Top - 1);
                
                #line 1076
                P_setfalse(nullptr);
            }
            break;
        
        case C_clequ:
            #line 1082
            P_exec_stat_expr_sexpr(&_F);
            
            #line 1083
            if(F_chkgtn(nullptr))
            {
                #line 1083
                Top = (Top - 1);
                
                #line 1083
                P_setfalse(nullptr);
            }
            else
            {
                #line 1084
                Top = (Top - 1);
                
                #line 1084
                P_settrue(nullptr);
            }
            break;
        
        case C_cgequ:
            #line 1090
            P_exec_stat_expr_sexpr(&_F);
            
            #line 1091
            if(F_chkltn(nullptr))
            {
                #line 1091
                Top = (Top - 1);
                
                #line 1091
                P_setfalse(nullptr);
            }
            else
            {
                #line 1092
                Top = (Top - 1);
                
                #line 1092
                P_settrue(nullptr);
            }
            break;
        }
        
        #line 1097
        P_skpspc(nullptr);
    }
}


#line 798
//================================================================================
// scope: exec_stat_expr_sexpr (level : 5)

// forward declarations
void P_exec_stat_expr_sexpr_term(void* _slink);

// activation record
struct Frame_exec_stat_expr_sexpr
{
   Frame_exec_stat_expr* _slink;
};

// function body
void P_exec_stat_expr_sexpr(void* _slink)
{
    // prologue/frame definition
    Frame_exec_stat_expr_sexpr _F = { (Frame_exec_stat_expr*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_cadd);
    _setLiteral1.set(C_csub);
    
    // subroutine body
    #line 997
    P_exec_stat_expr_sexpr_term(&_F);
    
    #line 998
    P_skpspc(nullptr);
    
    #line 999
    while((_setLiteral1 & _ord(F_chkchr(nullptr))))
    {
        #line 1001
        switch(_ord(F_getchr(nullptr)))
        {
        case C_cadd:
            #line 1005
            P_exec_stat_expr_sexpr_term(&_F);
            
            #line 1006
            if((Temp[Top].Typ == C_tstr))
            {
                #line 1008
                if((Temp[(Top - 1)].Typ != C_tstr))
                {
                    #line 1008
                    P_prterr(nullptr, C_estyp);
                }
                
                #line 1009
                P_cat(nullptr, Temp[(Top - 1)].Bstr, Temp[Top].Bstr);
                
                #line 1010
                Top = (Top - 1);
            }
            else
            {
                #line 1014
                if((Temp[(Top - 1)].Typ != C_tint))
                {
                    #line 1014
                    P_prterr(nullptr, C_estyp);
                }
                
                #line 1015
                Temp[(Top - 1)].Int = (Temp[(Top - 1)].Int + Temp[Top].Int);
                
                #line 1017
                Top = (Top - 1);
                
                { /* NOP */ }
            }
            break;
        
        case C_csub:
            #line 1025
            P_exec_stat_expr_sexpr_term(&_F);
            
            #line 1026
            if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
            {
                #line 1027
                P_prterr(nullptr, C_ewtyp);
            }
            
            #line 1028
            Temp[(Top - 1)].Int = (Temp[(Top - 1)].Int - Temp[Top].Int);
            
            #line 1029
            Top = (Top - 1);
            break;
        }
        
        #line 1034
        P_skpspc(nullptr);
    }
}


#line 802
//================================================================================
// scope: exec_stat_expr_sexpr_term (level : 6)

// forward declarations
void P_exec_stat_expr_sexpr_term_factor(void* _slink);

// activation record
struct Frame_exec_stat_expr_sexpr_term
{
   Frame_exec_stat_expr_sexpr* _slink;
};

// function body
void P_exec_stat_expr_sexpr_term(void* _slink)
{
    // prologue/frame definition
    Frame_exec_stat_expr_sexpr_term _F = { (Frame_exec_stat_expr_sexpr*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_cmult);
    _setLiteral1.set(C_cdiv);
    _setLiteral1.set(C_cmod);
    
    // subroutine body
    #line 951
    P_exec_stat_expr_sexpr_term_factor(&_F);
    
    #line 952
    P_skpspc(nullptr);
    
    #line 953
    while((_setLiteral1 & _ord(F_chkchr(nullptr))))
    {
        #line 955
        switch(_ord(F_getchr(nullptr)))
        {
        case C_cmult:
            #line 959
            P_exec_stat_expr_sexpr_term_factor(&_F);
            
            #line 960
            if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
            {
                #line 961
                P_prterr(nullptr, C_ewtyp);
            }
            
            #line 962
            Temp[(Top - 1)].Int = (Temp[(Top - 1)].Int * Temp[Top].Int);
            
            #line 963
            Top = (Top - 1);
            break;
        
        case C_cdiv:
            #line 969
            P_exec_stat_expr_sexpr_term_factor(&_F);
            
            #line 970
            if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
            {
                #line 971
                P_prterr(nullptr, C_ewtyp);
            }
            
            #line 972
            Temp[(Top - 1)].Int = (Temp[(Top - 1)].Int / Temp[Top].Int);
            
            #line 973
            Top = (Top - 1);
            break;
        
        case C_cmod:
            #line 979
            P_exec_stat_expr_sexpr_term_factor(&_F);
            
            #line 980
            if(((Temp[Top].Typ != C_tint) || (Temp[(Top - 1)].Typ != C_tint)))
            {
                #line 981
                P_prterr(nullptr, C_ewtyp);
            }
            
            #line 982
            Temp[(Top - 1)].Int = _mod(Temp[(Top - 1)].Int , Temp[Top].Int);
            
            #line 984
            Top = (Top - 1);
            break;
        }
        
        #line 989
        P_skpspc(nullptr);
    }
}


#line 806
//================================================================================
// scope: exec_stat_expr_sexpr_term_factor (level : 7)

// activation record
struct Frame_exec_stat_expr_sexpr_term_factor
{
   Frame_exec_stat_expr_sexpr_term* _slink;

    // locals
    T_char c;
    T_integer i;
};

// function body
void P_exec_stat_expr_sexpr_term_factor(void* _slink)
{
    // prologue/frame definition
    Frame_exec_stat_expr_sexpr_term_factor _F = { (Frame_exec_stat_expr_sexpr_term*)_slink };
    
    // subroutine body
    #line 813
    P_skpspc(nullptr);
    
    #line 814
    _F.c = F_chkchr(nullptr);
    
    #line 815
    if(F_chknxt(nullptr, '('))
    {
        #line 817
        P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
        
        #line 818
        if((!F_chknxt(nullptr, ')')))
        {
            #line 818
            P_prterr(nullptr, C_erpe);
        }
    }
    else
    {
        #line 820
        if(F_chknxt(nullptr, _chr(C_cadd)))
        {
            #line 822
            P_exec_stat_expr_sexpr_term_factor(_F._slink);
            
            #line 823
            if((Temp[Top].Typ != C_tint))
            {
                #line 823
                P_prterr(nullptr, C_ewtyp);
            }
        }
        else
        {
            #line 825
            if(F_chknxt(nullptr, _chr(C_csub)))
            {
                #line 827
                P_exec_stat_expr_sexpr_term_factor(_F._slink);
                
                #line 828
                if((Temp[Top].Typ != C_tint))
                {
                    #line 828
                    P_prterr(nullptr, C_ewtyp);
                }
                
                #line 829
                Temp[Top].Int = (-Temp[Top].Int);
            }
            else
            {
                #line 831
                if(F_chknxt(nullptr, '"'))
                {
                    #line 833
                    Top = (Top + 1);
                    
                    #line 834
                    if((Top > C_maxstk))
                    {
                        #line 834
                        P_prterr(nullptr, C_eexc);
                    }
                    
                    #line 835
                    Temp[Top].Typ = C_tstr;
                    
                    #line 836
                    _F.i = 1;
                    
                    #line 837
                    while(((_F.i <= 80) && (F_chkchr(nullptr) != '"')))
                    {
                        #line 839
                        Temp[Top].Bstr.Str[_F.i] = F_getchr(nullptr);
                        
                        #line 840
                        _F.i = (_F.i + 1);
                    }
                    
                    #line 843
                    if((!F_chknxt(nullptr, '"')))
                    {
                        #line 843
                        P_prterr(nullptr, C_emqu);
                    }
                    
                    #line 844
                    Temp[Top].Bstr.Len = (_F.i - 1);
                }
                else
                {
                    #line 846
                    if(F_digit(nullptr, F_chkchr(nullptr)))
                    {
                        #line 848
                        Top = (Top + 1);
                        
                        #line 849
                        if((Top > C_maxstk))
                        {
                            #line 849
                            P_prterr(nullptr, C_eexc);
                        }
                        
                        #line 850
                        Temp[Top].Typ = C_tint;
                        
                        #line 851
                        Temp[Top].Int = F_getint(nullptr);
                    }
                    else
                    {
                        #line 853
                        if(F_alpha(nullptr, F_chkchr(nullptr)))
                        {
                            #line 855
                            Top = (Top + 1);
                            
                            #line 856
                            if((Top > C_maxstk))
                            {
                                #line 856
                                P_prterr(nullptr, C_eexc);
                            }
                            
                            #line 857
                            _F.c = F_getvar(nullptr);
                            
                            #line 858
                            if(F_chknxt(nullptr, '$'))
                            {
                                #line 860
                                Temp[Top].Typ = C_tstr;
                                
                                #line 861
                                Temp[Top].Bstr = Strs[_F.c];
                            }
                            else
                            {
                                #line 865
                                Temp[Top].Typ = C_tint;
                                
                                #line 866
                                Temp[Top].Int = Ints[_F.c];
                            }
                        }
                        else
                        {
                            #line 870
                            if(((F_chknxt(nullptr, _chr(C_cleft)) || F_chknxt(nullptr, _chr(C_cright))) || F_chknxt(nullptr, _chr(C_cmid))))
                            {
                                #line 874
                                P_skpspc(nullptr);
                                
                                #line 875
                                if((!F_chknxt(nullptr, '(')))
                                {
                                    #line 875
                                    P_prterr(nullptr, C_elpe);
                                }
                                
                                #line 876
                                P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
                                
                                #line 877
                                if((Temp[Top].Typ != C_tstr))
                                {
                                    #line 877
                                    P_prterr(nullptr, C_estre);
                                }
                                
                                #line 878
                                P_skpspc(nullptr);
                                
                                #line 879
                                if((!F_chknxt(nullptr, ',')))
                                {
                                    #line 879
                                    P_prterr(nullptr, C_ecmaexp);
                                }
                                
                                #line 880
                                P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
                                
                                #line 881
                                if((Temp[Top].Typ != C_tint))
                                {
                                    #line 881
                                    P_prterr(nullptr, C_einte);
                                }
                                
                                #line 882
                                P_skpspc(nullptr);
                                
                                #line 883
                                if((_F.c != _chr(C_cmid)))
                                {
                                    #line 885
                                    if((!F_chknxt(nullptr, ')')))
                                    {
                                        #line 885
                                        P_prterr(nullptr, C_erpe);
                                    }
                                    
                                    #line 886
                                    if((Temp[Top].Int > Temp[(Top - 1)].Bstr.Len))
                                    {
                                        #line 886
                                        P_prterr(nullptr, C_estrinx);
                                    }
                                    
                                    #line 887
                                    if((_F.c == _chr(C_cright)))
                                    {
                                        #line 888
                                        _FOR_TO(_F.i, 1, Temp[Top].Int)
                                        {
                                            #line 889
                                            Temp[(Top - 1)].Bstr.Str[_F.i] = Temp[(Top - 1)].Bstr.Str[((_F.i + Temp[(Top - 1)].Bstr.Len) - Temp[Top].Int)];
                                        }
                                        _FOR_END(_F.i)
                                    }
                                    
                                    #line 891
                                    Temp[(Top - 1)].Bstr.Len = Temp[Top].Int;
                                    
                                    #line 892
                                    Top = (Top - 1);
                                }
                                else
                                {
                                    #line 896
                                    if((!F_chknxt(nullptr, ',')))
                                    {
                                        #line 896
                                        P_prterr(nullptr, C_ecmaexp);
                                    }
                                    
                                    #line 897
                                    P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
                                    
                                    #line 898
                                    if((Temp[Top].Typ != C_tint))
                                    {
                                        #line 898
                                        P_prterr(nullptr, C_einte);
                                    }
                                    
                                    #line 899
                                    P_skpspc(nullptr);
                                    
                                    #line 900
                                    if((!F_chknxt(nullptr, ')')))
                                    {
                                        #line 900
                                        P_prterr(nullptr, C_erpe);
                                    }
                                    
                                    #line 902
                                    if((((Temp[Top].Int + Temp[(Top - 1)].Int) - 1) > Temp[(Top - 2)].Bstr.Len))
                                    {
                                        #line 903
                                        P_prterr(nullptr, C_estrinx);
                                    }
                                    
                                    #line 904
                                    _FOR_TO(_F.i, 1, Temp[Top].Int)
                                    {
                                        #line 905
                                        Temp[(Top - 2)].Bstr.Str[_F.i] = Temp[(Top - 2)].Bstr.Str[((_F.i + Temp[(Top - 1)].Int) - 1)];
                                    }
                                    _FOR_END(_F.i)
                                    
                                    #line 906
                                    Temp[(Top - 2)].Bstr.Len = Temp[Top].Int;
                                    
                                    #line 907
                                    Top = (Top - 2);
                                }
                            }
                            else
                            {
                                #line 911
                                if(F_chknxt(nullptr, _chr(C_cchr)))
                                {
                                    #line 913
                                    if((!F_chknxt(nullptr, '(')))
                                    {
                                        #line 913
                                        P_prterr(nullptr, C_elpe);
                                    }
                                    
                                    #line 914
                                    P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
                                    
                                    #line 915
                                    if((Temp[Top].Typ != C_tstr))
                                    {
                                        #line 915
                                        P_prterr(nullptr, C_estre);
                                    }
                                    
                                    #line 916
                                    P_skpspc(nullptr);
                                    
                                    #line 917
                                    if((!F_chknxt(nullptr, ')')))
                                    {
                                        #line 917
                                        P_prterr(nullptr, C_erpe);
                                    }
                                    
                                    #line 918
                                    if((Temp[Top].Bstr.Len < 1))
                                    {
                                        #line 918
                                        P_prterr(nullptr, C_estrinx);
                                    }
                                    
                                    #line 919
                                    _F.c = Temp[Top].Bstr.Str[1];
                                    
                                    #line 920
                                    Temp[Top].Typ = C_tint;
                                    
                                    #line 921
                                    Temp[Top].Int = _ord(_F.c);
                                }
                                else
                                {
                                    #line 923
                                    if(F_chknxt(nullptr, _chr(C_cval)))
                                    {
                                        #line 925
                                        if((!F_chknxt(nullptr, '(')))
                                        {
                                            #line 925
                                            P_prterr(nullptr, C_elpe);
                                        }
                                        
                                        #line 926
                                        P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
                                        
                                        #line 927
                                        if((Temp[Top].Typ != C_tstr))
                                        {
                                            #line 927
                                            P_prterr(nullptr, C_estre);
                                        }
                                        
                                        #line 928
                                        P_skpspc(nullptr);
                                        
                                        #line 929
                                        if((!F_chknxt(nullptr, ')')))
                                        {
                                            #line 929
                                            P_prterr(nullptr, C_erpe);
                                        }
                                        
                                        #line 930
                                        _F.i = F_getbval(nullptr, Temp[Top].Bstr);
                                        
                                        #line 931
                                        Temp[Top].Typ = C_tint;
                                        
                                        #line 932
                                        Temp[Top].Int = _F.i;
                                    }
                                    else
                                    {
                                        #line 934
                                        if(F_chknxt(nullptr, _chr(C_cstr)))
                                        {
                                            #line 936
                                            if((!F_chknxt(nullptr, '(')))
                                            {
                                                #line 936
                                                P_prterr(nullptr, C_elpe);
                                            }
                                            
                                            #line 937
                                            P_exec_stat_expr(_F._slink->_slink->_slink->_slink);
                                            
                                            #line 938
                                            if((Temp[Top].Typ != C_tint))
                                            {
                                                #line 938
                                                P_prterr(nullptr, C_einte);
                                            }
                                            
                                            #line 939
                                            P_skpspc(nullptr);
                                            
                                            #line 940
                                            if((!F_chknxt(nullptr, ')')))
                                            {
                                                #line 940
                                                P_prterr(nullptr, C_erpe);
                                            }
                                            
                                            #line 941
                                            _F.i = Temp[Top].Int;
                                            
                                            #line 942
                                            Temp[Top].Typ = C_tstr;
                                            
                                            #line 943
                                            P_putbval(nullptr, Temp[Top].Bstr, _F.i);
                                        }
                                        else
                                        {
                                            #line 945
                                            P_prterr(nullptr, C_eifact);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


#line 1105
//================================================================================
// scope: exec_stat_let (level : 4)

// activation record
struct Frame_exec_stat_let
{
   Frame_exec_stat* _slink;
};

// function body
void P_exec_stat_let(void* _slink)
{
    // prologue/frame definition
    Frame_exec_stat_let _F = { (Frame_exec_stat*)_slink };
    
    // subroutine body
    #line 1109
    P_skpspc(nullptr);
    
    #line 1110
    _F._slink->c = F_getvar(nullptr);
    
    #line 1111
    if(F_chknxt(nullptr, '$'))
    {
        #line 1113
        P_skpspc(nullptr);
        
        #line 1114
        if((!F_chknxt(nullptr, _chr(C_cequ))))
        {
            #line 1115
            P_prterr(nullptr, C_eeque);
        }
        
        #line 1116
        P_exec_stat_expr(_F._slink);
        
        #line 1117
        if((Temp[Top].Typ != C_tstr))
        {
            #line 1118
            P_prterr(nullptr, C_estyp);
        }
        
        #line 1119
        Strs[_F._slink->c] = Temp[Top].Bstr;
        
        #line 1120
        Top = (Top - 1);
    }
    else
    {
        #line 1124
        P_skpspc(nullptr);
        
        #line 1125
        if((!F_chknxt(nullptr, _chr(C_cequ))))
        {
            #line 1126
            P_prterr(nullptr, C_eeque);
        }
        
        #line 1127
        P_exec_stat_expr(_F._slink);
        
        #line 1128
        if((Temp[Top].Typ != C_tint))
        {
            #line 1129
            P_prterr(nullptr, C_estyp);
        }
        
        #line 1130
        Ints[_F._slink->c] = Temp[Top].Int;
        
        #line 1131
        Top = (Top - 1);
    }
}

