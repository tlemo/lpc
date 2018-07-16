
#include <lpcRuntime.h>

// "plzero.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "input" },
    { "output" },
};

_Filename* _FilenameMap = _FilenameMapEntries;
const int _FilenameMapSize = _countof(_FilenameMapEntries);


// line 0
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

// line 1
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 1, 10, T_char > T_alfa;
typedef int T_symbol;
typedef int T_fct;
typedef _T_Range<0, 3, signed __int8> T_range_2;
typedef _T_Range<0, 2047, signed __int16> T_range_3;
struct T_instruction
{
    T_fct f;
    T_range_2 l;
    T_range_3 a;
};
typedef _T_Array< 0, 200, T_instruction > T_array_1;
typedef int T_object;
typedef _T_Set<0, 29> T_symset;
typedef _T_Array< 1, 81, T_char > T_array_4;
typedef _T_Array< 1, 5, T_char > T_array_6;
typedef _T_Array< 0, 7, T_array_6 > T_array_5;
typedef _T_Array< 0, 255, T_symbol > T_array_7;
struct T_record_9
{
    T_alfa Name;
    // variable fields selector
    T_object Kind;
    // variable fields
    union
    {
        T_integer Val;
        struct
        {
            T_integer Level;
            T_integer Adr;
        };
    };
};
typedef _T_Array< 0, 100, T_record_9 > T_array_8;
typedef _T_Array< 1, 11, T_alfa > T_array_10;
typedef _T_Array< 1, 11, T_symbol > T_array_11;

// forward declarations
void P_error(void* _slink, T_integer n);
void P_getsym(void* _slink);
void P_gen(void* _slink, T_fct x, T_integer y, T_integer z);
void P_test(void* _slink, T_symset S1, T_symset S2, T_integer n);
void P_block(void* _slink, T_integer Lev, T_integer Tx, T_symset Fsys);
void P_interpret(void* _slink);

// constants
const T_integer C_al = 10;
const T_integer C_amax = 2047;
const T_symbol C_becomes = 19;
const T_symbol C_beginsym = 20;
const T_fct C_cal = 4;
const T_symbol C_callsym = 26;
const T_symbol C_comma = 16;
const T_object C_constant = 0;
const T_symbol C_constsym = 27;
const T_integer C_cxmax = 200;
const T_symbol C_dosym = 25;
const T_symbol C_endsym = 21;
const T_symbol C_eql = 8;
const T_symbol C_geq = 13;
const T_symbol C_gtr = 12;
const T_symbol C_ident = 1;
const T_symbol C_ifsym = 22;
const T_fct C_int = 5;
const T_fct C_jmp = 6;
const T_fct C_jpc = 7;
const T_symbol C_leq = 11;
const T_integer C_levmax = 3;
const T_fct C_lit = 0;
const T_fct C_lod = 2;
const T_symbol C_lparen = 14;
const T_symbol C_lss = 10;
const T_symbol C_minus = 4;
const T_symbol C_neq = 9;
const T_integer C_nmax = 14;
const T_integer C_norw = 11;
const T_symbol C_nul = 0;
const T_symbol C_number = 2;
const T_symbol C_oddsym = 7;
const T_fct C_opr = 1;
const T_symbol C_period = 18;
const T_symbol C_plus = 3;
const T_object C_proc = 2;
const T_symbol C_procsym = 29;
const T_symbol C_rparen = 15;
const T_symbol C_semicolon = 17;
const T_symbol C_slash = 6;
const T_fct C_sto = 3;
const T_symbol C_thensym = 23;
const T_symbol C_times = 5;
const T_integer C_txmax = 100;
const T_object C_varible = 1;
const T_symbol C_varsym = 28;
const T_symbol C_whilesym = 24;

// non-local goto targets
const int NL_99 = 1;

// program variables
T_alfa a;
T_integer Cc;
T_char Ch;
T_array_1 Code;
T_integer Cx;
T_symset Declbegsys;
T_integer Err;
T_symset Facbegsys;
T_alfa Id;
T_text Input;
T_integer Kk;
T_array_4 Line;
T_integer Ll;
T_array_5 Mnemonic;
T_integer Num;
T_text Output;
T_array_7 Ssym;
T_symset Statbegsys;
T_symbol Sym;
T_array_8 Table;
T_array_10 Word;
T_array_11 Wsym;

// function body
void P_()
{
    
    // initializers
    Input.init(0);
    Output.init(1);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_constsym);
    _setLiteral1.set(C_varsym);
    _setLiteral1.set(C_procsym);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_beginsym);
    _setLiteral2.set(C_callsym);
    _setLiteral2.set(C_ifsym);
    _setLiteral2.set(C_whilesym);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ident);
    _setLiteral3.set(C_number);
    _setLiteral3.set(C_lparen);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_period);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_99: goto L_99;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 423
        _FOR_TO(Ch, _chr(0), _chr(255))
        {
            // line 423
            Ssym[Ch] = C_nul;
        }
        _FOR_END(Ch)
        
        // line 424
        Word[1] = "begin     ";
        
        // line 424
        Word[2] = "call      ";
        
        // line 425
        Word[3] = "const     ";
        
        // line 425
        Word[4] = "do        ";
        
        // line 426
        Word[5] = "end       ";
        
        // line 426
        Word[6] = "if        ";
        
        // line 427
        Word[7] = "odd       ";
        
        // line 427
        Word[8] = "procedure ";
        
        // line 428
        Word[9] = "then      ";
        
        // line 428
        Word[10] = "var       ";
        
        // line 429
        Word[11] = "while     ";
        
        // line 430
        Wsym[1] = C_beginsym;
        
        // line 430
        Wsym[2] = C_callsym;
        
        // line 431
        Wsym[3] = C_constsym;
        
        // line 431
        Wsym[4] = C_dosym;
        
        // line 432
        Wsym[5] = C_endsym;
        
        // line 432
        Wsym[6] = C_ifsym;
        
        // line 433
        Wsym[7] = C_oddsym;
        
        // line 433
        Wsym[8] = C_procsym;
        
        // line 434
        Wsym[9] = C_thensym;
        
        // line 434
        Wsym[10] = C_varsym;
        
        // line 435
        Wsym[11] = C_whilesym;
        
        // line 436
        Ssym['+'] = C_plus;
        
        // line 436
        Ssym['-'] = C_minus;
        
        // line 437
        Ssym['*'] = C_times;
        
        // line 437
        Ssym['/'] = C_slash;
        
        // line 438
        Ssym['('] = C_lparen;
        
        // line 438
        Ssym[')'] = C_rparen;
        
        // line 439
        Ssym['='] = C_eql;
        
        // line 439
        Ssym[','] = C_comma;
        
        // line 440
        Ssym['.'] = C_period;
        
        // line 440
        Ssym['#'] = C_neq;
        
        // line 441
        Ssym['<'] = C_lss;
        
        // line 441
        Ssym['>'] = C_gtr;
        
        // line 442
        Ssym['['] = C_leq;
        
        // line 442
        Ssym[']'] = C_geq;
        
        // line 443
        Ssym[';'] = C_semicolon;
        
        // line 444
        Mnemonic[C_lit] = "  lit";
        
        // line 444
        Mnemonic[C_opr] = "  opr";
        
        // line 445
        Mnemonic[C_lod] = "  lod";
        
        // line 445
        Mnemonic[C_sto] = "  sto";
        
        // line 446
        Mnemonic[C_cal] = "  cal";
        
        // line 446
        Mnemonic[C_int] = "  int";
        
        // line 447
        Mnemonic[C_jmp] = "  jmp";
        
        // line 447
        Mnemonic[C_jpc] = "  jpc";
        
        // line 448
        Declbegsys = _setLiteral1;
        
        // line 449
        Statbegsys = _setLiteral2;
        
        // line 450
        Facbegsys = _setLiteral3;
        
        // line 451
        Err = 0;
        
        // line 452
        Cc = 0;
        
        // line 452
        Cx = 0;
        
        // line 452
        Ll = 0;
        
        // line 452
        Ch = ' ';
        
        // line 452
        Kk = C_al;
        
        // line 452
        P_getsym(nullptr);
        
        // line 453
        P_block(nullptr, 0, 0, T_symset::C(((_setLiteral4 + Declbegsys) + Statbegsys)));
        
        // line 454
        if((Sym != C_period))
        {
            // line 454
            P_error(nullptr, 9);
        }
        
        // line 455
        if((Err == 0))
        {
            // line 455
            P_interpret(nullptr);
        }
        else
        {
            // line 455
            Output << " errors in pl/0 program";
        }
        
        // line 456
        L_99:
        Output << _WRITELN;
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_99:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 56
//================================================================================
// scope: error (level : 2)

// activation record
struct Frame_error
{
    // parameters
    T_integer n;
};

// function body
void P_error(void* _slink, T_integer n)
{
    // prologue/frame definition
    Frame_error _F = {n };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 57
    Output << " ****" << _format(' ', (Cc - 1), 0) << '^' << _format(_F.n, 2, 0) << _WRITELN;
    
    // line 57
    Err = (Err + 1);
}


// line 60
//================================================================================
// scope: getsym (level : 2)

// forward declarations
void P_getsym_getch(void* _slink);

// activation record
struct Frame_getsym
{
    // locals
    T_integer i;
    T_integer j;
    T_integer k;
};

// function body
void P_getsym(void* _slink)
{
    // prologue/frame definition
    Frame_getsym _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('a', 'z');
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('a', 'z');
    _setLiteral2.set('0', '9');
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set('0', '9');
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set('0', '9');
    
    // subroutine body
    // line 78
    while((Ch == ' '))
    {
        // line 78
        P_getsym_getch(&_F);
    }
    
    // line 79
    if((_setLiteral1 & Ch))
    {
        // line 80
        _F.k = 0;
        
        // line 81
        do
        {
            // line 81
            if((_F.k < C_al))
            {
                // line 82
                _F.k = (_F.k + 1);
                
                // line 82
                a[_F.k] = Ch;
            }
            
            // line 84
            P_getsym_getch(&_F);
            
            { /* NOP */ }
        }
        while(!(!(_setLiteral2 & Ch)));
        
        // line 86
        if((_F.k >= Kk))
        {
            // line 86
            Kk = _F.k;
        }
        else
        {
            // line 87
            do
            {
                // line 87
                a[Kk] = ' ';
                
                // line 87
                Kk = (Kk - 1);
            }
            while(!(Kk == _F.k));
        }
        
        // line 89
        Id = a;
        
        // line 89
        _F.i = 1;
        
        // line 89
        _F.j = C_norw;
        
        // line 90
        do
        {
            // line 90
            _F.k = ((_F.i + _F.j) / 2);
            
            // line 91
            if(_strcmpLE<10>(Id, Word[_F.k]))
            {
                // line 91
                _F.j = (_F.k - 1);
            }
            
            // line 92
            if(_strcmpGE<10>(Id, Word[_F.k]))
            {
                // line 92
                _F.i = (_F.k + 1);
            }
        }
        while(!(_F.i > _F.j));
        
        // line 94
        if(((_F.i - 1) > _F.j))
        {
            // line 94
            Sym = Wsym[_F.k];
        }
        else
        {
            // line 94
            Sym = C_ident;
        }
    }
    else
    {
        // line 96
        if((_setLiteral3 & Ch))
        {
            // line 97
            _F.k = 0;
            
            // line 97
            Num = 0;
            
            // line 97
            Sym = C_number;
            
            // line 98
            do
            {
                // line 98
                Num = ((10 * Num) + (_ord(Ch) - _ord('0')));
                
                // line 99
                _F.k = (_F.k + 1);
                
                // line 99
                P_getsym_getch(&_F);
            }
            while(!(!(_setLiteral4 & Ch)));
            
            // line 101
            if((_F.k > C_nmax))
            {
                // line 101
                P_error(nullptr, 30);
            }
        }
        else
        {
            // line 103
            if((Ch == ':'))
            {
                // line 104
                P_getsym_getch(&_F);
                
                // line 105
                if((Ch == '='))
                {
                    // line 106
                    Sym = C_becomes;
                    
                    // line 106
                    P_getsym_getch(&_F);
                }
                else
                {
                    // line 107
                    Sym = C_nul;
                }
                
                { /* NOP */ }
            }
            else
            {
                // line 109
                Sym = Ssym[Ch];
                
                // line 109
                P_getsym_getch(&_F);
            }
        }
    }
}


// line 63
//================================================================================
// scope: getsym_getch (level : 3)

// activation record
struct Frame_getsym_getch
{
   Frame_getsym* _slink;
};

// function body
void P_getsym_getch(void* _slink)
{
    // prologue/frame definition
    Frame_getsym_getch _F = { (Frame_getsym*)_slink };
    
    // subroutine body
    // line 64
    if((Cc == Ll))
    {
        // line 65
        if(_eof(Input))
        {
            // line 66
            Output << " program incomplete";
            
            // line 66
            throw NL_99;
        }
        
        // line 68
        Ll = 0;
        
        // line 68
        Cc = 0;
        
        // line 68
        Output << _format(Cx, 5, 0) << ' ';
        
        // line 69
        while((!_eoln(Input)))
        {
            // line 70
            Ll = (Ll + 1);
            
            // line 70
            Input >> Ch;
            
            // line 70
            Output << Ch;
            
            // line 70
            Line[Ll] = Ch;
        }
        
        // line 72
        Output << _WRITELN;
        
        // line 72
        Input >> _READLN;
        
        // line 72
        Ll = (Ll + 1);
        
        // line 72
        Line[Ll] = ' ';
        
        { /* NOP */ }
    }
    
    // line 74
    Cc = (Cc + 1);
    
    // line 74
    Ch = Line[Cc];
}


// line 113
//================================================================================
// scope: gen (level : 2)

// activation record
struct Frame_gen
{
    // parameters
    T_fct x;
    T_integer y;
    T_integer z;
};

// function body
void P_gen(void* _slink, T_fct x, T_integer y, T_integer z)
{
    // prologue/frame definition
    Frame_gen _F = {x, y, z };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 114
    if((Cx > C_cxmax))
    {
        // line 115
        Output << " program too long";
        
        // line 115
        throw NL_99;
    }
    
    // line 118
    Code[Cx].f = _F.x;
    
    // line 118
    Code[Cx].l = _F.y;
    
    // line 118
    Code[Cx].a = _F.z;
    
    // line 120
    Cx = (Cx + 1);
}


// line 123
//================================================================================
// scope: test (level : 2)

// activation record
struct Frame_test
{
    // parameters
    T_symset S1;
    T_symset S2;
    T_integer n;
};

// function body
void P_test(void* _slink, T_symset S1, T_symset S2, T_integer n)
{
    // prologue/frame definition
    Frame_test _F = {S1, S2, n };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 124
    if((!(_F.S1 & Sym)))
    {
        // line 125
        P_error(nullptr, _F.n);
        
        // line 125
        _F.S1 = (_F.S1 + _F.S2);
        
        // line 126
        while((!(_F.S1 & Sym)))
        {
            // line 126
            P_getsym(nullptr);
        }
    }
}


// line 130
//================================================================================
// scope: block (level : 2)

// forward declarations
void P_block_enter(void* _slink, T_object k);
T_integer F_block_position(void* _slink, T_alfa Id);
void P_block_constdeclaration(void* _slink);
void P_block_vardeclaration(void* _slink);
void P_block_listcode(void* _slink);
void P_block_statement(void* _slink, T_symset Fsys);

// activation record
struct Frame_block
{
    // parameters
    T_integer Lev;
    T_integer Tx;
    T_symset Fsys;

    // locals
    T_integer Cx0;
    T_integer Dx;
    T_integer Tx0;
};

// function body
void P_block(void* _slink, T_integer Lev, T_integer Tx, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block _F = {Lev, Tx, Fsys };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ident);
    _setLiteral2.set(C_procsym);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ident);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_semicolon);
    _setLiteral4.set(C_endsym);
    
    _T_GenericSet _setLiteral5;
    
    // subroutine body
    // line 309
    _F.Dx = 3;
    
    // line 309
    _F.Tx0 = _F.Tx;
    
    // line 309
    Table[_F.Tx].Adr = Cx;
    
    // line 309
    P_gen(nullptr, C_jmp, 0, 0);
    
    // line 310
    if((_F.Lev > C_levmax))
    {
        // line 310
        P_error(nullptr, 32);
    }
    
    // line 311
    do
    {
        // line 312
        if((Sym == C_constsym))
        {
            // line 313
            P_getsym(nullptr);
            
            // line 314
            do
            {
                // line 314
                P_block_constdeclaration(&_F);
                
                // line 315
                while((Sym == C_comma))
                {
                    // line 316
                    P_getsym(nullptr);
                    
                    // line 316
                    P_block_constdeclaration(&_F);
                }
                
                // line 318
                if((Sym == C_semicolon))
                {
                    // line 318
                    P_getsym(nullptr);
                }
                else
                {
                    // line 318
                    P_error(nullptr, 5);
                }
            }
            while(!(Sym != C_ident));
        }
        
        // line 321
        if((Sym == C_varsym))
        {
            // line 322
            P_getsym(nullptr);
            
            // line 323
            do
            {
                // line 323
                P_block_vardeclaration(&_F);
                
                // line 324
                while((Sym == C_comma))
                {
                    // line 325
                    P_getsym(nullptr);
                    
                    // line 325
                    P_block_vardeclaration(&_F);
                }
                
                // line 327
                if((Sym == C_semicolon))
                {
                    // line 327
                    P_getsym(nullptr);
                }
                else
                {
                    // line 327
                    P_error(nullptr, 5);
                }
            }
            while(!(Sym != C_ident));
            
            { /* NOP */ }
        }
        
        // line 330
        while((Sym == C_procsym))
        {
            // line 331
            P_getsym(nullptr);
            
            // line 332
            if((Sym == C_ident))
            {
                // line 333
                P_block_enter(&_F, C_proc);
                
                // line 333
                P_getsym(nullptr);
            }
            else
            {
                // line 335
                P_error(nullptr, 4);
            }
            
            // line 336
            if((Sym == C_semicolon))
            {
                // line 336
                P_getsym(nullptr);
            }
            else
            {
                // line 336
                P_error(nullptr, 5);
            }
            
            // line 337
            P_block(nullptr, (_F.Lev + 1), _F.Tx, T_symset::C((_setLiteral1 + _F.Fsys)));
            
            // line 338
            if((Sym == C_semicolon))
            {
                // line 339
                P_getsym(nullptr);
                
                // line 339
                P_test(nullptr, T_symset::C((Statbegsys + _setLiteral2)), _F.Fsys, 6);
            }
            else
            {
                // line 341
                P_error(nullptr, 5);
            }
        }
        
        // line 343
        P_test(nullptr, T_symset::C((Statbegsys + _setLiteral3)), Declbegsys, 7);
    }
    while(!(!(Declbegsys & Sym)));
    
    // line 345
    Code[Table[_F.Tx0].Adr].a = Cx;
    
    // line 347
    Table[_F.Tx0].Adr = Cx;
    
    { /* NOP */ }
    
    // line 349
    _F.Cx0 = 0;
    
    // line 349
    P_gen(nullptr, C_int, 0, _F.Dx);
    
    // line 350
    P_block_statement(&_F, T_symset::C((_setLiteral4 + _F.Fsys)));
    
    // line 351
    P_gen(nullptr, C_opr, 0, 0);
    
    // line 352
    P_test(nullptr, _F.Fsys, T_symset::C(_setLiteral5), 8);
    
    // line 353
    P_block_listcode(&_F);
    
    { /* NOP */ }
}


// line 134
//================================================================================
// scope: block_enter (level : 3)

// activation record
struct Frame_block_enter
{
   Frame_block* _slink;

    // parameters
    T_object k;
};

// function body
void P_block_enter(void* _slink, T_object k)
{
    // prologue/frame definition
    Frame_block_enter _F = { (Frame_block*)_slink, k };
    
    // subroutine body
    // line 136
    _F._slink->Tx = (_F._slink->Tx + 1);
    
    // line 138
    Table[_F._slink->Tx].Name = Id;
    
    // line 138
    Table[_F._slink->Tx].Kind = _F.k;
    
    // line 139
    switch(_F.k)
    {
    case C_constant:
        // line 140
        if((Num > C_amax))
        {
            // line 141
            P_error(nullptr, 30);
            
            // line 141
            Num = 0;
        }
        
        // line 142
        Table[_F._slink->Tx].Val = Num;
        break;
    
    case C_varible:
        // line 144
        Table[_F._slink->Tx].Level = _F._slink->Lev;
        
        // line 144
        Table[_F._slink->Tx].Adr = _F._slink->Dx;
        
        // line 144
        _F._slink->Dx = (_F._slink->Dx + 1);
        
        { /* NOP */ }
        break;
    
    case C_proc:
        // line 146
        Table[_F._slink->Tx].Level = _F._slink->Lev;
        break;
    }
}


// line 151
//================================================================================
// scope: block_position (level : 3)

// activation record
struct Frame_block_position
{
   Frame_block* _slink;

    // parameters
    T_alfa Id;

    // locals
    T_integer _fnvalue;
    T_integer i;
};

// function body
T_integer F_block_position(void* _slink, T_alfa Id)
{
    // prologue/frame definition
    Frame_block_position _F = { (Frame_block*)_slink, Id };
    
    // subroutine body
    // line 154
    Table[0].Name = _F.Id;
    
    // line 154
    _F.i = _F._slink->Tx;
    
    // line 155
    while(_strcmpNE<10>(Table[_F.i].Name, _F.Id))
    {
        // line 155
        _F.i = (_F.i - 1);
    }
    
    // line 156
    _F._fnvalue = _F.i;
    
    // epilogue
    return _F._fnvalue;
}


// line 159
//================================================================================
// scope: block_constdeclaration (level : 3)

// activation record
struct Frame_block_constdeclaration
{
   Frame_block* _slink;
};

// function body
void P_block_constdeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_constdeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_eql);
    _setLiteral1.set(C_becomes);
    
    // subroutine body
    // line 160
    if((Sym == C_ident))
    {
        // line 161
        P_getsym(nullptr);
        
        // line 162
        if((_setLiteral1 & Sym))
        {
            // line 163
            if((Sym == C_becomes))
            {
                // line 163
                P_error(nullptr, 1);
            }
            
            // line 164
            P_getsym(nullptr);
            
            // line 165
            if((Sym == C_number))
            {
                // line 166
                P_block_enter(_F._slink, C_constant);
                
                // line 166
                P_getsym(nullptr);
            }
            else
            {
                // line 168
                P_error(nullptr, 2);
            }
        }
        else
        {
            // line 169
            P_error(nullptr, 3);
        }
    }
    else
    {
        // line 170
        P_error(nullptr, 4);
    }
}


// line 173
//================================================================================
// scope: block_vardeclaration (level : 3)

// activation record
struct Frame_block_vardeclaration
{
   Frame_block* _slink;
};

// function body
void P_block_vardeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_vardeclaration _F = { (Frame_block*)_slink };
    
    // subroutine body
    // line 174
    if((Sym == C_ident))
    {
        // line 175
        P_block_enter(_F._slink, C_varible);
        
        // line 175
        P_getsym(nullptr);
    }
    else
    {
        // line 176
        P_error(nullptr, 4);
    }
}


// line 179
//================================================================================
// scope: block_listcode (level : 3)

// activation record
struct Frame_block_listcode
{
   Frame_block* _slink;

    // locals
    T_integer i;
};

// function body
void P_block_listcode(void* _slink)
{
    // prologue/frame definition
    Frame_block_listcode _F = { (Frame_block*)_slink };
    
    // subroutine body
    // line 182
    _FOR_TO(_F.i, _F._slink->Cx0, (Cx - 1))
    {
        // line 184
        Output << _format(_F.i, 5, 0) << _format(Mnemonic[Code[_F.i].f], 5, 0) << _format(1, 3, 0) << _format(Code[_F.i].a, 5, 0) << _WRITELN;
    }
    _FOR_END(_F.i)
}


// line 187
//================================================================================
// scope: block_statement (level : 3)

// forward declarations
void P_block_statement_expression(void* _slink, T_symset Fsys);
void P_block_statement_condition(void* _slink, T_symset Fsys);

// activation record
struct Frame_block_statement
{
   Frame_block* _slink;

    // parameters
    T_symset Fsys;

    // locals
    T_integer Cx1;
    T_integer Cx2;
    T_integer i;
};

// function body
void P_block_statement(void* _slink, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block_statement _F = { (Frame_block*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_thensym);
    _setLiteral1.set(C_dosym);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_endsym);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_semicolon);
    _setLiteral3.set(C_endsym);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_semicolon);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_dosym);
    
    _T_GenericSet _setLiteral6;
    
    // subroutine body
    // line 263
    if((Sym == C_ident))
    {
        // line 264
        _F.i = F_block_position(_F._slink, Id);
        
        // line 265
        if((_F.i == 0))
        {
            // line 265
            P_error(nullptr, 11);
        }
        else
        {
            // line 266
            if((Table[_F.i].Kind != C_varible))
            {
                // line 267
                P_error(nullptr, 12);
                
                // line 267
                _F.i = 0;
            }
        }
        
        // line 269
        P_getsym(nullptr);
        
        // line 269
        if((Sym == C_becomes))
        {
            // line 269
            P_getsym(nullptr);
        }
        else
        {
            // line 269
            P_error(nullptr, 13);
        }
        
        // line 270
        P_block_statement_expression(&_F, _F.Fsys);
        
        // line 271
        if((_F.i != 0))
        {
            // line 272
            P_gen(nullptr, C_sto, (_F._slink->Lev - Table[_F.i].Level), Table[_F.i].Adr);
        }
    }
    else
    {
        // line 274
        if((Sym == C_callsym))
        {
            // line 275
            P_getsym(nullptr);
            
            // line 276
            if((Sym != C_ident))
            {
                // line 276
                P_error(nullptr, 14);
            }
            else
            {
                // line 277
                _F.i = F_block_position(_F._slink, Id);
                
                // line 278
                if((_F.i == 0))
                {
                    // line 278
                    P_error(nullptr, 11);
                }
                else
                {
                    // line 280
                    if((Table[_F.i].Kind == C_proc))
                    {
                        // line 280
                        P_gen(nullptr, C_cal, (_F._slink->Lev - Table[_F.i].Level), Table[_F.i].Adr);
                    }
                    else
                    {
                        // line 281
                        P_error(nullptr, 15);
                    }
                }
                
                // line 282
                P_getsym(nullptr);
            }
        }
        else
        {
            // line 285
            if((Sym == C_ifsym))
            {
                // line 286
                P_getsym(nullptr);
                
                // line 286
                P_block_statement_condition(&_F, T_symset::C((_setLiteral1 + _F.Fsys)));
                
                // line 287
                if((Sym == C_thensym))
                {
                    // line 287
                    P_getsym(nullptr);
                }
                else
                {
                    // line 287
                    P_error(nullptr, 16);
                }
                
                // line 288
                _F.Cx1 = Cx;
                
                // line 288
                P_gen(nullptr, C_jpc, 0, 0);
                
                // line 289
                P_block_statement(_F._slink, _F.Fsys);
                
                // line 289
                Code[_F.Cx1].a = Cx;
            }
            else
            {
                // line 291
                if((Sym == C_beginsym))
                {
                    // line 292
                    P_getsym(nullptr);
                    
                    // line 292
                    P_block_statement(_F._slink, T_symset::C((_setLiteral2 + _F.Fsys)));
                    
                    // line 293
                    while(((_setLiteral4 + Statbegsys) & Sym))
                    {
                        // line 295
                        if((Sym == C_semicolon))
                        {
                            // line 295
                            P_getsym(nullptr);
                        }
                        else
                        {
                            // line 295
                            P_error(nullptr, 10);
                        }
                        
                        // line 296
                        P_block_statement(_F._slink, T_symset::C((_setLiteral3 + _F.Fsys)));
                    }
                    
                    // line 298
                    if((Sym == C_endsym))
                    {
                        // line 298
                        P_getsym(nullptr);
                    }
                    else
                    {
                        // line 298
                        P_error(nullptr, 17);
                    }
                }
                else
                {
                    // line 300
                    if((Sym == C_whilesym))
                    {
                        // line 301
                        _F.Cx1 = Cx;
                        
                        // line 301
                        P_getsym(nullptr);
                        
                        // line 301
                        P_block_statement_condition(&_F, T_symset::C((_setLiteral5 + _F.Fsys)));
                        
                        // line 302
                        _F.Cx2 = Cx;
                        
                        // line 302
                        P_gen(nullptr, C_jpc, 0, 0);
                        
                        // line 303
                        if((Sym == C_dosym))
                        {
                            // line 303
                            P_getsym(nullptr);
                        }
                        else
                        {
                            // line 303
                            P_error(nullptr, 18);
                        }
                        
                        // line 304
                        P_block_statement(_F._slink, _F.Fsys);
                        
                        // line 304
                        P_gen(nullptr, C_jmp, 0, _F.Cx1);
                        
                        // line 304
                        Code[_F.Cx2].a = Cx;
                    }
                }
            }
        }
    }
    
    // line 306
    P_test(nullptr, _F.Fsys, T_symset::C(_setLiteral6), 19);
}


// line 189
//================================================================================
// scope: block_statement_expression (level : 4)

// forward declarations
void P_block_statement_expression_term(void* _slink, T_symset Fsys);

// activation record
struct Frame_block_statement_expression
{
   Frame_block_statement* _slink;

    // parameters
    T_symset Fsys;

    // locals
    T_symbol Addop;
};

// function body
void P_block_statement_expression(void* _slink, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block_statement_expression _F = { (Frame_block_statement*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_plus);
    _setLiteral1.set(C_minus);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_plus);
    _setLiteral2.set(C_minus);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_plus);
    _setLiteral3.set(C_minus);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_plus);
    _setLiteral4.set(C_minus);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_plus);
    _setLiteral5.set(C_minus);
    
    // subroutine body
    // line 230
    if((_setLiteral1 & Sym))
    {
        // line 231
        _F.Addop = Sym;
        
        // line 231
        P_getsym(nullptr);
        
        // line 231
        P_block_statement_expression_term(&_F, T_symset::C((_F.Fsys + _setLiteral2)));
        
        // line 232
        if((_F.Addop == C_minus))
        {
            // line 232
            P_gen(nullptr, C_opr, 0, 1);
        }
    }
    else
    {
        // line 233
        P_block_statement_expression_term(&_F, T_symset::C((_F.Fsys + _setLiteral3)));
    }
    
    // line 234
    while((_setLiteral5 & Sym))
    {
        // line 235
        _F.Addop = Sym;
        
        // line 235
        P_getsym(nullptr);
        
        // line 235
        P_block_statement_expression_term(&_F, T_symset::C((_F.Fsys + _setLiteral4)));
        
        // line 236
        if((_F.Addop == C_plus))
        {
            // line 236
            P_gen(nullptr, C_opr, 0, 2);
        }
        else
        {
            // line 236
            P_gen(nullptr, C_opr, 0, 3);
        }
    }
}


// line 191
//================================================================================
// scope: block_statement_expression_term (level : 5)

// forward declarations
void P_block_statement_expression_term_factor(void* _slink, T_symset Fsys);

// activation record
struct Frame_block_statement_expression_term
{
   Frame_block_statement_expression* _slink;

    // parameters
    T_symset Fsys;

    // locals
    T_symbol Mulop;
};

// function body
void P_block_statement_expression_term(void* _slink, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block_statement_expression_term _F = { (Frame_block_statement_expression*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_times);
    _setLiteral1.set(C_slash);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_times);
    _setLiteral2.set(C_slash);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_times);
    _setLiteral3.set(C_slash);
    
    // subroutine body
    // line 223
    P_block_statement_expression_term_factor(&_F, T_symset::C((_F.Fsys + _setLiteral1)));
    
    // line 224
    while((_setLiteral3 & Sym))
    {
        // line 225
        _F.Mulop = Sym;
        
        // line 225
        P_getsym(nullptr);
        
        // line 225
        P_block_statement_expression_term_factor(&_F, T_symset::C((_F.Fsys + _setLiteral2)));
        
        // line 226
        if((_F.Mulop == C_times))
        {
            // line 226
            P_gen(nullptr, C_opr, 0, 4);
        }
        else
        {
            // line 226
            P_gen(nullptr, C_opr, 0, 5);
        }
    }
}


// line 193
//================================================================================
// scope: block_statement_expression_term_factor (level : 6)

// activation record
struct Frame_block_statement_expression_term_factor
{
   Frame_block_statement_expression_term* _slink;

    // parameters
    T_symset Fsys;

    // locals
    T_integer i;
};

// function body
void P_block_statement_expression_term_factor(void* _slink, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block_statement_expression_term_factor _F = { (Frame_block_statement_expression_term*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparen);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_lparen);
    
    // subroutine body
    // line 195
    P_test(nullptr, Facbegsys, _F.Fsys, 24);
    
    // line 196
    while((Facbegsys & Sym))
    {
        // line 198
        if((Sym == C_ident))
        {
            // line 199
            _F.i = F_block_position(_F._slink->_slink->_slink->_slink, Id);
            
            // line 200
            if((_F.i == 0))
            {
                // line 200
                P_error(nullptr, 11);
            }
            else
            {
                // line 202
                switch(Table[_F.i].Kind)
                {
                case C_constant:
                    // line 203
                    P_gen(nullptr, C_lit, 0, Table[_F.i].Val);
                    break;
                
                case C_varible:
                    // line 204
                    P_gen(nullptr, C_lod, (_F._slink->_slink->_slink->_slink->Lev - Table[_F.i].Level), Table[_F.i].Adr);
                    break;
                
                case C_proc:
                    // line 205
                    P_error(nullptr, 21);
                    break;
                }
            }
            
            // line 207
            P_getsym(nullptr);
        }
        else
        {
            // line 209
            if((Sym == C_number))
            {
                // line 210
                if((Num > C_amax))
                {
                    // line 211
                    P_error(nullptr, 30);
                    
                    // line 211
                    Num = 0;
                }
                
                // line 213
                P_gen(nullptr, C_lit, 0, Num);
                
                // line 213
                P_getsym(nullptr);
            }
            else
            {
                // line 215
                if((Sym == C_lparen))
                {
                    // line 216
                    P_getsym(nullptr);
                    
                    // line 216
                    P_block_statement_expression(_F._slink->_slink->_slink, T_symset::C((_setLiteral1 + _F.Fsys)));
                    
                    // line 217
                    if((Sym == C_rparen))
                    {
                        // line 217
                        P_getsym(nullptr);
                    }
                    else
                    {
                        // line 217
                        P_error(nullptr, 22);
                    }
                }
            }
        }
        
        // line 219
        P_test(nullptr, _F.Fsys, T_symset::C(_setLiteral2), 23);
    }
}


// line 240
//================================================================================
// scope: block_statement_condition (level : 4)

// activation record
struct Frame_block_statement_condition
{
   Frame_block_statement* _slink;

    // parameters
    T_symset Fsys;

    // locals
    T_symbol Relop;
};

// function body
void P_block_statement_condition(void* _slink, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block_statement_condition _F = { (Frame_block_statement*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_eql);
    _setLiteral1.set(C_neq);
    _setLiteral1.set(C_lss);
    _setLiteral1.set(C_gtr);
    _setLiteral1.set(C_leq);
    _setLiteral1.set(C_geq);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_eql);
    _setLiteral2.set(C_neq);
    _setLiteral2.set(C_lss);
    _setLiteral2.set(C_leq);
    _setLiteral2.set(C_gtr);
    _setLiteral2.set(C_geq);
    
    // subroutine body
    // line 243
    if((Sym == C_oddsym))
    {
        // line 244
        P_getsym(nullptr);
        
        // line 244
        P_block_statement_expression(_F._slink, _F.Fsys);
        
        // line 244
        P_gen(nullptr, C_opr, 0, 6);
    }
    else
    {
        // line 246
        P_block_statement_expression(_F._slink, T_symset::C((_setLiteral1 + _F.Fsys)));
        
        // line 247
        if((!(_setLiteral2 & Sym)))
        {
            // line 248
            P_error(nullptr, 20);
        }
        else
        {
            // line 249
            _F.Relop = Sym;
            
            // line 249
            P_getsym(nullptr);
            
            // line 249
            P_block_statement_expression(_F._slink, _F.Fsys);
            
            // line 250
            switch(_F.Relop)
            {
            case C_eql:
                // line 251
                P_gen(nullptr, C_opr, 0, 8);
                break;
            
            case C_neq:
                // line 252
                P_gen(nullptr, C_opr, 0, 9);
                break;
            
            case C_lss:
                // line 253
                P_gen(nullptr, C_opr, 0, 10);
                break;
            
            case C_geq:
                // line 254
                P_gen(nullptr, C_opr, 0, 11);
                break;
            
            case C_gtr:
                // line 255
                P_gen(nullptr, C_opr, 0, 12);
                break;
            
            case C_leq:
                // line 256
                P_gen(nullptr, C_opr, 0, 13);
                break;
            }
        }
    }
}


// line 356
//================================================================================
// scope: interpret (level : 2)

// types
typedef _T_Array< 1, 500, T_integer > T_interpret_array_12;

// forward declarations
T_integer F_interpret_base(void* _slink, T_integer l);

// constants
const T_integer C_interpret_stacksize = 500;

// activation record
struct Frame_interpret
{
    // locals
    T_integer b;
    T_instruction i;
    T_integer p;
    T_interpret_array_12 s;
    T_integer t;
};

// function body
void P_interpret(void* _slink)
{
    // prologue/frame definition
    Frame_interpret _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 370
    Output << " start pl/0" << _WRITELN;
    
    // line 371
    _F.t = 0;
    
    // line 371
    _F.b = 1;
    
    // line 371
    _F.p = 0;
    
    // line 372
    _F.s[1] = 0;
    
    // line 372
    _F.s[2] = 0;
    
    // line 372
    _F.s[3] = 0;
    
    // line 373
    do
    {
        // line 373
        _F.i = Code[_F.p];
        
        // line 373
        _F.p = (_F.p + 1);
        
        // line 375
        switch(_F.i.f)
        {
        case C_lit:
            // line 376
            _F.t = (_F.t + 1);
            
            // line 376
            _F.s[_F.t] = _F.i.a;
            break;
        
        case C_opr:
            // line 378
            switch(_F.i.a)
            {
            case 0:
                // line 380
                _F.t = (_F.b - 1);
                
                // line 380
                _F.p = _F.s[(_F.t + 3)];
                
                // line 380
                _F.b = _F.s[(_F.t + 2)];
                
                { /* NOP */ }
                break;
            
            case 1:
                // line 382
                _F.s[_F.t] = (-_F.s[_F.t]);
                break;
            
            case 2:
                // line 383
                _F.t = (_F.t - 1);
                
                // line 383
                _F.s[_F.t] = (_F.s[_F.t] + _F.s[(_F.t + 1)]);
                break;
            
            case 3:
                // line 385
                _F.t = (_F.t - 1);
                
                // line 385
                _F.s[_F.t] = (_F.s[_F.t] - _F.s[(_F.t + 1)]);
                break;
            
            case 4:
                // line 387
                _F.t = (_F.t - 1);
                
                // line 387
                _F.s[_F.t] = (_F.s[_F.t] * _F.s[(_F.t + 1)]);
                break;
            
            case 5:
                // line 389
                _F.t = (_F.t - 1);
                
                // line 389
                _F.s[_F.t] = (_F.s[_F.t] / _F.s[(_F.t + 1)]);
                break;
            
            case 6:
                // line 391
                _F.s[_F.t] = _ord(_odd(_F.s[_F.t]));
                break;
            
            case 8:
                // line 392
                _F.t = (_F.t - 1);
                
                // line 392
                _F.s[_F.t] = _ord((_F.s[_F.t] == _F.s[(_F.t + 1)]));
                break;
            
            case 9:
                // line 394
                _F.t = (_F.t - 1);
                
                // line 394
                _F.s[_F.t] = _ord((_F.s[_F.t] != _F.s[(_F.t + 1)]));
                break;
            
            case 10:
                // line 396
                _F.t = (_F.t - 1);
                
                // line 396
                _F.s[_F.t] = _ord((_F.s[_F.t] < _F.s[(_F.t + 1)]));
                break;
            
            case 11:
                // line 398
                _F.t = (_F.t - 1);
                
                // line 398
                _F.s[_F.t] = _ord((_F.s[_F.t] >= _F.s[(_F.t + 1)]));
                break;
            
            case 12:
                // line 400
                _F.t = (_F.t - 1);
                
                // line 400
                _F.s[_F.t] = _ord((_F.s[_F.t] > _F.s[(_F.t + 1)]));
                break;
            
            case 13:
                // line 402
                _F.t = (_F.t - 1);
                
                // line 402
                _F.s[_F.t] = _ord((_F.s[_F.t] <= _F.s[(_F.t + 1)]));
                break;
            }
            break;
        
        case C_lod:
            // line 405
            _F.t = (_F.t + 1);
            
            // line 405
            _F.s[_F.t] = _F.s[(F_interpret_base(&_F, _F.i.l) + _F.i.a)];
            break;
        
        case C_sto:
            // line 407
            _F.s[(F_interpret_base(&_F, _F.i.l) + _F.i.a)] = _F.s[_F.t];
            
            // line 407
            Output << _F.s[_F.t] << _WRITELN;
            
            // line 407
            _F.t = (_F.t - 1);
            break;
        
        case C_cal:
            // line 410
            _F.s[(_F.t + 1)] = F_interpret_base(&_F, _F.i.l);
            
            // line 410
            _F.s[(_F.t + 2)] = _F.b;
            
            // line 410
            _F.s[(_F.t + 3)] = _F.p;
            
            // line 411
            _F.b = (_F.t + 1);
            
            // line 411
            _F.p = _F.i.a;
            break;
        
        case C_int:
            // line 413
            _F.t = (_F.t + _F.i.a);
            break;
        
        case C_jmp:
            // line 414
            _F.p = _F.i.a;
            break;
        
        case C_jpc:
            // line 415
            if((_F.s[_F.t] == 0))
            {
                // line 415
                _F.p = _F.i.a;
            }
            
            // line 415
            _F.t = (_F.t - 1);
            break;
        }
    }
    while(!(_F.p == 0));
    
    // line 419
    Output << " end pl/0";
    
    { /* NOP */ }
}


// line 361
//================================================================================
// scope: interpret_base (level : 3)

// activation record
struct Frame_interpret_base
{
   Frame_interpret* _slink;

    // parameters
    T_integer l;

    // locals
    T_integer _fnvalue;
    T_integer B1;
};

// function body
T_integer F_interpret_base(void* _slink, T_integer l)
{
    // prologue/frame definition
    Frame_interpret_base _F = { (Frame_interpret*)_slink, l };
    
    // subroutine body
    // line 363
    _F.B1 = _F._slink->b;
    
    // line 364
    while((_F.l > 0))
    {
        // line 365
        _F.B1 = _F._slink->s[_F.B1];
        
        // line 365
        _F.l = (_F.l - 1);
    }
    
    // line 367
    _F._fnvalue = _F.B1;
    
    // epilogue
    return _F._fnvalue;
}

