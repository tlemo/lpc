
#include <lpcRuntime.h>

#line 0 "pcom.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "output" },
    { "source" },
    { "prr" },
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

#line 93
//================================================================================
// scope: program scope (level : 1)

// types
struct T_identifier;
struct T_structure;
struct T_labl;
struct T_filerec;
struct T_testpointer;
typedef int T_idkind;
typedef int T_symbol;
typedef _T_Range<0, 2147483647, signed __int32> T_addrrange;
typedef _T_Array< 1, 8, T_char > T_alpha;
typedef int T_operator;
typedef int T_structform;
typedef int T_declkind;
_PTR_TYPE(T_ctp, T_identifier)
_PTR_TYPE(T_stp, T_structure)
typedef int T_idclass;
typedef int T_cstclass;
typedef _T_Array< 1, 100, T_char > T_array_1;
typedef _T_Set<0, 47> T_setty;
typedef _T_Range<0, 100, signed __int8> T_range_2;
typedef _T_Array< 1, 100, T_char > T_array_3;
struct T_constant
{
    // variable fields selector
    T_cstclass Cclass;
    // variable fields
    union
    {
        T_array_1 Rval;
        T_setty Pval;
        struct
        {
            T_range_2 Slgth;
            T_array_3 Sval;
        };
    };
};
_PTR_TYPE(T_csp, T_constant)
struct T_valu
{
    // variable fields selector
    T_boolean Intval;
    // variable fields
    union
    {
        T_integer Ival;
        T_csp Valp;
    };
};
typedef _T_Range<0, 10, signed __int8> T_levrange;
typedef _T_Range<1, 15, signed __int8> T_range_4;
struct T_identifier
{
    T_alpha Name;
    T_ctp Llink;
    T_ctp Rlink;
    T_stp Idtype;
    T_ctp Next;
    // variable fields selector
    T_idclass Klass;
    // variable fields
    union
    {
        T_valu Values;
        struct
        {
            T_idkind Vkind;
            T_levrange Vlev;
            T_addrrange Vaddr;
        };
        T_addrrange Fldaddr;
        struct
        {
            // variable fields selector
            T_declkind Pfdeckind;
            // variable fields
            union
            {
                T_range_4 Key;
                struct
                {
                    T_levrange Pflev;
                    T_integer Pfname;
                    // variable fields selector
                    T_idkind Pfkind;
                    // variable fields
                    union
                    {
                        struct
                        {
                            T_boolean Forwdecl;
                            T_boolean Externl;
                        };
                    };
                };
            };
        };
    };
};
struct T_structure
{
    T_boolean Marked;
    T_addrrange Size;
    // variable fields selector
    T_structform Form;
    // variable fields
    union
    {
        struct
        {
            // variable fields selector
            T_declkind Scalkind;
            // variable fields
            union
            {
                T_ctp Fconst;
            };
        };
        struct
        {
            T_stp Rangetype;
            T_valu Min;
            T_valu Max;
        };
        T_stp Eltype;
        T_stp Elset;
        struct
        {
            T_stp Aeltype;
            T_stp Inxtype;
        };
        struct
        {
            T_ctp Fstfld;
            T_stp Recvar;
        };
        T_stp Filtype;
        struct
        {
            T_ctp Tagfieldp;
            T_stp Fstvar;
        };
        struct
        {
            T_stp Nxtvar;
            T_stp Subvar;
            T_valu Varval;
        };
    };
};
typedef int T_attrkind;
typedef int T_vaccess;
struct T_attr
{
    T_stp Typtr;
    // variable fields selector
    T_attrkind Kind;
    // variable fields
    union
    {
        T_valu Cval;
        struct
        {
            // variable fields selector
            T_vaccess Access;
            // variable fields
            union
            {
                struct
                {
                    T_levrange Vlevel;
                    T_addrrange Dplmt;
                };
                T_addrrange Idplmt;
            };
        };
    };
};
typedef int T_where;
typedef _T_Set<0, 47> T_setofsys;
typedef _T_Range<-4, 4, signed __int8> T_range_6;
typedef _T_Array< 0, 60, T_range_6 > T_array_5;
typedef int T_chtp;
typedef _T_Array< 0, 255, T_chtp > T_array_7;
_PTR_TYPE(T_lbp, T_labl)
struct T_labl
{
    T_lbp Nextlab;
    T_boolean Defined;
    T_integer Labval;
    T_integer Labname;
};
struct T_record_9
{
    T_ctp Fname;
    T_lbp Flabel;
    // variable fields selector
    T_where Occur;
    // variable fields
    union
    {
        struct
        {
            T_levrange Clev;
            T_addrrange Cdspl;
        };
        T_addrrange Vdspl;
    };
};
typedef _T_Array< 0, 20, T_record_9 > T_array_8;
typedef _T_Range<0, 20, signed __int8> T_disprange;
typedef _T_Range<0, 10, signed __int8> T_range_10;
typedef _T_Range<1, 400, signed __int16> T_range_13;
struct T_record_12
{
    T_integer Pos;
    T_range_13 Nmr;
};
typedef _T_Array< 1, 10, T_record_12 > T_array_11;
_PTR_TYPE(T_extfilep, T_filerec)
struct T_filerec
{
    T_alpha Filename;
    T_extfilep Nextfile;
};
typedef _T_Range<1, 36, signed __int8> T_range_15;
typedef _T_Array< 1, 9, T_range_15 > T_array_14;
_PTR_TYPE(T_testp, T_testpointer)
struct T_testpointer
{
    T_stp Elt1;
    T_stp Elt2;
    T_testp Lasttestp;
};
typedef _T_Range<1, 8, signed __int8> T_range_16;
_PTR_TYPE(T_marktype, T_integer)
typedef _T_Array< 1, 4, T_char > T_array_18;
typedef _T_Array< 0, 60, T_array_18 > T_array_17;
typedef _T_Array< 1, 35, T_alpha > T_array_19;
typedef _T_Array< 0, 255, T_integer > T_array_20;
typedef _T_Range<-7, 7, signed __int8> T_range_22;
typedef _T_Array< 1, 23, T_range_22 > T_array_21;
typedef _T_Array< 1, 35, T_operator > T_array_23;
typedef _T_Array< 1, 35, T_symbol > T_array_24;
typedef _T_Array< 1, 35, T_alpha > T_array_25;
typedef _T_Set<0, 5> T_setofids;
typedef _T_Array< 1, 4, T_char > T_array_27;
typedef _T_Array< 1, 23, T_array_27 > T_array_26;
typedef _T_Array< 0, 255, T_operator > T_array_28;
typedef _T_Array< 0, 255, T_symbol > T_array_29;

// forward declarations
void P_mark(void* _slink, T_marktype& p);
void P_release(void* _slink, T_marktype p);
void P_endofline(void* _slink);
void P_error(void* _slink, T_integer Ferrnr);
void P_insymbol(void* _slink);
void P_enterid(void* _slink, T_ctp Fcp);
void P_searchsection(void* _slink, T_ctp Fcp, T_ctp& Fcp1);
void P_searchid(void* _slink, T_setofids Fidcls, T_ctp& Fcp);
void P_getbounds(void* _slink, T_stp Fsp, T_integer& Fmin, T_integer& Fmax);
T_integer F_alignquot(void* _slink, T_stp Fsp);
void P_align(void* _slink, T_stp Fsp, T_addrrange& Flc);
void P_printtables(void* _slink, T_boolean Fb);
void P_genlabel(void* _slink, T_integer& Nxtlab);
void P_block(void* _slink, T_setofsys Fsys, T_symbol Fsy, T_ctp Fprocp);
void P_programme(void* _slink, T_setofsys Fsys);
void P_stdnames(void* _slink);
void P_enterstdtypes(void* _slink);
void P_entstdnames(void* _slink);
void P_enterundecl(void* _slink);
void P_initscalars(void* _slink);
void P_initsets(void* _slink);
void P_inittables(void* _slink);

// constants
const T_idkind C_actual = 0;
const T_symbol C_addop = 6;
const T_integer C_adral = 1;
const T_operator C_andop = 2;
const T_structform C_arrays = 4;
const T_symbol C_arraysy = 27;
const T_symbol C_arrow = 15;
const T_symbol C_becomes = 17;
const T_symbol C_beginsy = 31;
const T_where C_blck = 0;
const T_integer C_boolal = 1;
const T_integer C_boolsize = 1;
const T_symbol C_casesy = 33;
const T_integer C_charal = 1;
const T_integer C_charmax = 1;
const T_integer C_charsize = 1;
const T_chtp C_chcolon = 5;
const T_chtp C_chgt = 8;
const T_chtp C_chlparen = 9;
const T_chtp C_chlt = 7;
const T_chtp C_chperiod = 6;
const T_chtp C_chspace = 10;
const T_chtp C_chstrquo = 4;
const T_symbol C_colon = 16;
const T_symbol C_comma = 12;
const T_symbol C_constsy = 19;
const T_where C_crec = 1;
const T_attrkind C_cst = 0;
const T_declkind C_declared = 1;
const T_integer C_displimit = 20;
const T_symbol C_dosy = 43;
const T_symbol C_downtosy = 45;
const T_vaccess C_drct = 0;
const T_symbol C_elsesy = 40;
const T_symbol C_endsy = 39;
const T_operator C_eqop = 13;
const T_attrkind C_expr = 2;
const T_idclass C_field = 3;
const T_integer C_fileal = 1;
const T_integer C_filebuffer = 4;
const T_structform C_files = 6;
const T_symbol C_filesy = 29;
const T_idkind C_formal = 1;
const T_symbol C_forsy = 36;
const T_symbol C_forwardsy = 30;
const T_idclass C_func = 5;
const T_symbol C_funcsy = 22;
const T_operator C_geop = 10;
const T_symbol C_gotosy = 38;
const T_operator C_gtop = 11;
const T_symbol C_ident = 0;
const T_operator C_idiv = 3;
const T_symbol C_ifsy = 32;
const T_chtp C_illegal = 3;
const T_operator C_imod = 4;
const T_vaccess C_indrct = 1;
const T_operator C_inop = 14;
const T_integer C_intal = 1;
const T_symbol C_intconst = 1;
const T_integer C_intsize = 1;
const T_vaccess C_inxd = 2;
const T_idclass C_konst = 1;
const T_symbol C_labelsy = 18;
const T_symbol C_lbrack = 10;
const T_integer C_lcaftermarkstack = 5;
const T_operator C_leop = 9;
const T_chtp C_letter = 0;
const T_symbol C_lparent = 8;
const T_operator C_ltop = 8;
const T_integer C_maxaddr = 2147483647;
const T_integer C_maxlevel = 10;
const T_integer C_maxstack = 1;
const T_operator C_minus = 6;
const T_operator C_mul = 0;
const T_symbol C_mulop = 5;
const T_operator C_neop = 12;
const T_operator C_noop = 15;
const T_symbol C_notsy = 4;
const T_chtp C_number = 1;
const T_symbol C_ofsy = 42;
const T_integer C_ordmaxchar = 255;
const T_integer C_ordminchar = 0;
const T_operator C_orop = 7;
const T_symbol C_othersy = 47;
const T_symbol C_packedsy = 26;
const T_integer C_parmal = 1;
const T_integer C_parmsize = 1;
const T_symbol C_period = 14;
const T_operator C_plus = 5;
const T_structform C_pointer = 2;
const T_structform C_power = 3;
const T_idclass C_proc = 4;
const T_symbol C_procsy = 24;
const T_symbol C_progsy = 23;
const T_cstclass C_pset = 1;
const T_integer C_ptrsize = 1;
const T_symbol C_rbrack = 11;
const T_operator C_rdiv = 1;
const T_integer C_realal = 1;
const T_symbol C_realconst = 2;
const T_integer C_realsize = 1;
const T_where C_rec = 3;
const T_integer C_recal = 1;
const T_structform C_records = 5;
const T_symbol C_recordsy = 28;
const T_cstclass C_reel = 0;
const T_symbol C_relop = 7;
const T_symbol C_repeatsy = 34;
const T_symbol C_rparent = 9;
const T_structform C_scalar = 0;
const T_symbol C_semicolon = 13;
const T_integer C_setal = 1;
const T_integer C_sethigh = 47;
const T_integer C_setlow = 0;
const T_integer C_setsize = 1;
const T_symbol C_setsy = 25;
const T_chtp C_special = 2;
const T_integer C_stackal = 1;
const T_integer C_stackelsize = 1;
const T_declkind C_standard = 0;
const T_cstclass C_strg = 2;
const T_integer C_strglgth = 100;
const T_symbol C_stringconst = 3;
const T_structform C_subrange = 1;
const T_structform C_tagfld = 7;
const T_symbol C_thensy = 46;
const T_symbol C_tosy = 44;
const T_idclass C_types = 0;
const T_symbol C_typesy = 20;
const T_symbol C_untilsy = 41;
const T_attrkind C_varbl = 1;
const T_structform C_variant = 8;
const T_idclass C_vars = 2;
const T_symbol C_varsy = 21;
const T_where C_vrec = 2;
const T_symbol C_whilesy = 35;
const T_symbol C_withsy = 37;

// program variables
T_text _input;
T_setofsys Blockbegsys;
T_stp Boolptr;
T_array_5 Cdx;
T_char Ch;
T_stp Charptr;
T_array_7 Chartp;
T_integer Chcnt;
T_setofsys Constbegsys;
T_boolean Debug;
T_integer Digmax;
T_array_8 Display;
T_disprange Disx;
T_boolean Dp;
T_boolean Eol;
T_range_10 Errinx;
T_array_11 Errlist;
T_setofsys Facbegsys;
T_extfilep Fextfilep;
T_array_14 Frw;
T_ctp Fwptr;
T_attr Gattr;
T_testp Globtestp;
T_addrrange Ic;
T_alpha Id;
T_integer Intlabel;
T_stp Intptr;
T_range_16 Kk;
T_addrrange Lc;
T_levrange Level;
T_integer Lgth;
T_integer Linecount;
T_boolean List;
T_array_17 Mn;
T_integer Mxint10;
T_array_19 Na;
T_stp Nilptr;
T_operator Op;
T_array_20 Ordint;
T_text Output;
T_stp Parmptr;
T_array_21 Pdx;
T_boolean Prcode;
T_text Prr;
T_boolean Prtables;
T_boolean Prterr;
T_stp Realptr;
T_array_23 Rop;
T_array_24 Rsy;
T_array_25 Rw;
T_setofsys Selectsys;
T_setofsys Simptypebegsys;
T_array_26 Sna;
T_array_28 Sop;
T_text Source;
T_array_29 Ssy;
T_setofsys Statbegsys;
T_symbol Sy;
T_stp Textptr;
T_disprange Top;
T_setofsys Typebegsys;
T_setofsys Typedels;
T_ctp Ucstptr;
T_ctp Ufctptr;
T_ctp Ufldptr;
T_ctp Uprcptr;
T_ctp Utypptr;
T_ctp Uvarptr;
T_valu Val;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    Output.init(1);
    Prr.init(3);
    Source.init(2);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_casesy);
    
    // subroutine body
    #line 4067
    _reset(Source);
    
    #line 4070
    P_initscalars(nullptr);
    
    #line 4070
    P_initsets(nullptr);
    
    #line 4070
    P_inittables(nullptr);
    
    #line 4075
    Level = 0;
    
    #line 4075
    Top = 0;
    
    #line 4077
    Display[0].Fname = nullptr;
    
    #line 4077
    Display[0].Flabel = nullptr;
    
    #line 4077
    Display[0].Occur = C_blck;
    
    #line 4078
    P_enterstdtypes(nullptr);
    
    #line 4078
    P_stdnames(nullptr);
    
    #line 4078
    P_entstdnames(nullptr);
    
    #line 4078
    P_enterundecl(nullptr);
    
    #line 4079
    Top = 1;
    
    #line 4079
    Level = 1;
    
    #line 4081
    Display[1].Fname = nullptr;
    
    #line 4081
    Display[1].Flabel = nullptr;
    
    #line 4081
    Display[1].Occur = C_blck;
    
    #line 4084
    _rewrite(Prr);
    
    #line 4086
    P_insymbol(nullptr);
    
    #line 4087
    P_programme(nullptr, T_setofsys::C(((Blockbegsys + Statbegsys) - _setLiteral1)));
    
    { /* NOP */ }
}


#line 366
//================================================================================
// scope: mark (level : 2)

// activation record
struct Frame_mark
{
    // parameters
    T_marktype& p;
};

// function body
void P_mark(void* _slink, T_marktype& p)
{
    // prologue/frame definition
    Frame_mark _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 366
    _F.p = _F.p;
}


#line 367
//================================================================================
// scope: release (level : 2)

// activation record
struct Frame_release
{
    // parameters
    T_marktype p;
};

// function body
void P_release(void* _slink, T_marktype p)
{
    // prologue/frame definition
    Frame_release _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 367
    _F.p = _F.p;
}


#line 369
//================================================================================
// scope: endofline (level : 2)

// activation record
struct Frame_endofline
{
    // locals
    T_integer Currnmr;
    T_integer Currpos;
    T_integer f;
    T_integer Freepos;
    T_integer k;
    T_integer Lastpos;
};

// function body
void P_endofline(void* _slink)
{
    // prologue/frame definition
    Frame_endofline _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 372
    if((Errinx > 0))
    {
        #line 373
        Output << _format(Linecount, 6, 0) << _format(" ****  ", 9, 0);
        
        #line 374
        _F.Lastpos = 0;
        
        #line 374
        _F.Freepos = 1;
        
        #line 375
        _FOR_TO(_F.k, 1, Errinx)
        {
            #line 378
            _F.Currpos = Errlist[_F.k].Pos;
            
            #line 378
            _F.Currnmr = Errlist[_F.k].Nmr;
            
            #line 379
            if((_F.Currpos == _F.Lastpos))
            {
                #line 379
                Output << ',';
            }
            else
            {
                #line 382
                while((_F.Freepos < _F.Currpos))
                {
                    #line 383
                    Output << ' ';
                    
                    #line 383
                    _F.Freepos = (_F.Freepos + 1);
                }
                
                #line 384
                Output << '^';
                
                #line 385
                _F.Lastpos = _F.Currpos;
            }
            
            #line 387
            if((_F.Currnmr < 10))
            {
                #line 387
                _F.f = 1;
            }
            else
            {
                #line 388
                if((_F.Currnmr < 100))
                {
                    #line 388
                    _F.f = 2;
                }
                else
                {
                    #line 389
                    _F.f = 3;
                }
            }
            
            #line 390
            Output << _format(_F.Currnmr, _F.f, 0);
            
            #line 391
            _F.Freepos = ((_F.Freepos + _F.f) + 1);
        }
        _FOR_END(_F.k)
        
        #line 393
        Output << _WRITELN;
        
        #line 393
        Errinx = 0;
    }
    
    #line 395
    Linecount = (Linecount + 1);
    
    #line 396
    if((List && (!_eof(Source))))
    {
        #line 397
        Output << _format(Linecount, 6, 0) << _format("  ", 2, 0);
        
        #line 398
        if(Dp)
        {
            #line 398
            Output << _format(Lc, 7, 0);
        }
        else
        {
            #line 398
            Output << _format(Ic, 7, 0);
        }
        
        #line 399
        Output << ' ';
    }
    
    #line 401
    Chcnt = 0;
}


#line 404
//================================================================================
// scope: error (level : 2)

// activation record
struct Frame_error
{
    // parameters
    T_integer Ferrnr;
};

// function body
void P_error(void* _slink, T_integer Ferrnr)
{
    // prologue/frame definition
    Frame_error _F = {Ferrnr };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 406
    if((Errinx >= 9))
    {
        #line 407
        Errlist[10].Nmr = 255;
        
        #line 407
        Errinx = 10;
    }
    else
    {
        #line 409
        Errinx = (Errinx + 1);
        
        #line 410
        Errlist[Errinx].Nmr = _F.Ferrnr;
    }
    
    #line 412
    Errlist[Errinx].Pos = Chcnt;
}


#line 415
//================================================================================
// scope: insymbol (level : 2)

// types
typedef _T_Array< 1, 100, T_char > T_insymbol_array_30;
typedef _T_Array< 1, 100, T_char > T_insymbol_array_31;

// forward declarations
void P_insymbol_nextch(void* _slink);
void P_insymbol_options(void* _slink);

// activation record
struct Frame_insymbol
{
    // locals
    T_insymbol_array_30 Digit;
    T_integer i;
    T_integer k;
    T_csp Lvp;
    T_insymbol_array_31 String;
    T_boolean Test;
};

// function body
void P_insymbol(void* _slink)
{
    // prologue/frame definition
    Frame_insymbol _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_special);
    _setLiteral1.set(C_illegal);
    _setLiteral1.set(C_chstrquo);
    _setLiteral1.set(C_chcolon);
    _setLiteral1.set(C_chperiod);
    _setLiteral1.set(C_chlt);
    _setLiteral1.set(C_chgt);
    _setLiteral1.set(C_chlparen);
    _setLiteral1.set(C_chspace);
    
    // subroutine body
    #line 464
    L_1:
    do
    {
        #line 464
        while((((Ch == ' ') || (Ch == ' ')) && (!Eol)))
        {
            #line 464
            P_insymbol_nextch(&_F);
        }
        
        #line 465
        _F.Test = Eol;
        
        #line 466
        if(_F.Test)
        {
            #line 466
            P_insymbol_nextch(&_F);
        }
    }
    while(!(!_F.Test));
    
    #line 468
    if((Chartp[Ch] == C_illegal))
    {
        #line 469
        Sy = C_othersy;
        
        #line 469
        Op = C_noop;
        
        #line 470
        P_error(nullptr, 399);
        
        #line 470
        P_insymbol_nextch(&_F);
    }
    else
    {
        #line 473
        switch(Chartp[Ch])
        {
        case C_letter:
            #line 475
            _F.k = 0;
            
            #line 476
            do
            {
                #line 477
                if((_F.k < 8))
                {
                    #line 478
                    _F.k = (_F.k + 1);
                    
                    #line 478
                    Id[_F.k] = Ch;
                }
                
                #line 479
                P_insymbol_nextch(&_F);
            }
            while(!(_setLiteral1 & Chartp[Ch]));
            
            #line 482
            if((_F.k >= Kk))
            {
                #line 482
                Kk = _F.k;
            }
            else
            {
                #line 484
                do
                {
                    #line 484
                    Id[Kk] = ' ';
                    
                    #line 484
                    Kk = (Kk - 1);
                }
                while(!(Kk == _F.k));
            }
            
            #line 486
            _FOR_TO(_F.i, Frw[_F.k], (Frw[(_F.k + 1)] - 1))
            {
                #line 487
                if(_strcmpEQ<8>(Rw[_F.i], Id))
                {
                    #line 488
                    Sy = Rsy[_F.i];
                    
                    #line 488
                    Op = Rop[_F.i];
                    
                    #line 488
                    goto L_2;
                }
            }
            _FOR_END(_F.i)
            
            #line 489
            Sy = C_ident;
            
            #line 489
            Op = C_noop;
            
            L_2:
            { /* NOP */ }
            break;
        
        case C_number:
            #line 492
            Op = C_noop;
            
            #line 492
            _F.i = 0;
            
            #line 493
            do
            {
                #line 493
                _F.i = (_F.i + 1);
                
                #line 493
                if((_F.i <= Digmax))
                {
                    #line 493
                    _F.Digit[_F.i] = Ch;
                }
                
                #line 493
                P_insymbol_nextch(&_F);
            }
            while(!(Chartp[Ch] != C_number));
            
            #line 495
            if((((Ch == '.') && (Source.bufferVar() != '.')) || (Ch == 'e')))
            {
                #line 497
                _F.k = _F.i;
                
                #line 498
                if((Ch == '.'))
                {
                    #line 499
                    _F.k = (_F.k + 1);
                    
                    #line 499
                    if((_F.k <= Digmax))
                    {
                        #line 499
                        _F.Digit[_F.k] = Ch;
                    }
                    
                    #line 500
                    P_insymbol_nextch(&_F);
                    
                    #line 501
                    if((Chartp[Ch] != C_number))
                    {
                        #line 501
                        P_error(nullptr, 201);
                    }
                    else
                    {
                        #line 503
                        do
                        {
                            #line 503
                            _F.k = (_F.k + 1);
                            
                            #line 504
                            if((_F.k <= Digmax))
                            {
                                #line 504
                                _F.Digit[_F.k] = Ch;
                            }
                            
                            #line 504
                            P_insymbol_nextch(&_F);
                        }
                        while(!(Chartp[Ch] != C_number));
                    }
                }
                
                #line 507
                if((Ch == 'e'))
                {
                    #line 508
                    _F.k = (_F.k + 1);
                    
                    #line 508
                    if((_F.k <= Digmax))
                    {
                        #line 508
                        _F.Digit[_F.k] = Ch;
                    }
                    
                    #line 509
                    P_insymbol_nextch(&_F);
                    
                    #line 510
                    if(((Ch == '+') || (Ch == '-')))
                    {
                        #line 511
                        _F.k = (_F.k + 1);
                        
                        #line 511
                        if((_F.k <= Digmax))
                        {
                            #line 511
                            _F.Digit[_F.k] = Ch;
                        }
                        
                        #line 512
                        P_insymbol_nextch(&_F);
                    }
                    
                    #line 514
                    if((Chartp[Ch] != C_number))
                    {
                        #line 514
                        P_error(nullptr, 201);
                    }
                    else
                    {
                        #line 516
                        do
                        {
                            #line 516
                            _F.k = (_F.k + 1);
                            
                            #line 517
                            if((_F.k <= Digmax))
                            {
                                #line 517
                                _F.Digit[_F.k] = Ch;
                            }
                            
                            #line 517
                            P_insymbol_nextch(&_F);
                        }
                        while(!(Chartp[Ch] != C_number));
                    }
                }
                
                #line 520
                {
                    _new(_F.Lvp._ptr);
                    _setValue(_F.Lvp._ptr->Cclass, C_reel);
                }
                
                #line 520
                Sy = C_realconst;
                
                #line 520
                (*_F.Lvp._ptr).Cclass = C_reel;
                
                #line 522
                _FOR_TO(_F.i, 1, C_strglgth)
                {
                    #line 522
                    (*_F.Lvp._ptr).Rval[_F.i] = ' ';
                }
                _FOR_END(_F.i)
                
                #line 523
                if((_F.k <= Digmax))
                {
                    #line 524
                    _FOR_TO(_F.i, 2, (_F.k + 1))
                    {
                        #line 524
                        (*_F.Lvp._ptr).Rval[_F.i] = _F.Digit[(_F.i - 1)];
                    }
                    _FOR_END(_F.i)
                }
                else
                {
                    #line 525
                    P_error(nullptr, 203);
                    
                    #line 525
                    (*_F.Lvp._ptr).Rval[2] = '0';
                    
                    #line 526
                    (*_F.Lvp._ptr).Rval[3] = '.';
                    
                    #line 526
                    (*_F.Lvp._ptr).Rval[4] = '0';
                }
                
                #line 529
                Val.Valp = _F.Lvp;
            }
            else
            {
                #line 533
                if((_F.i > Digmax))
                {
                    #line 533
                    P_error(nullptr, 203);
                    
                    #line 533
                    Val.Ival = 0;
                }
                else
                {
                    #line 536
                    Val.Ival = 0;
                    
                    #line 537
                    _FOR_TO(_F.k, 1, _F.i)
                    {
                        #line 539
                        if((Val.Ival <= Mxint10))
                        {
                            #line 540
                            Val.Ival = ((Val.Ival * 10) + Ordint[_F.Digit[_F.k]]);
                        }
                        else
                        {
                            #line 541
                            P_error(nullptr, 203);
                            
                            #line 541
                            Val.Ival = 0;
                        }
                    }
                    _FOR_END(_F.k)
                    
                    #line 543
                    Sy = C_intconst;
                }
            }
            break;
        
        case C_chstrquo:
            #line 548
            Lgth = 0;
            
            #line 548
            Sy = C_stringconst;
            
            #line 548
            Op = C_noop;
            
            #line 549
            do
            {
                #line 550
                do
                {
                    #line 550
                    P_insymbol_nextch(&_F);
                    
                    #line 550
                    Lgth = (Lgth + 1);
                    
                    #line 551
                    if((Lgth <= C_strglgth))
                    {
                        #line 551
                        _F.String[Lgth] = Ch;
                    }
                }
                while(!(Eol || (Ch == '\'')));
                
                #line 553
                if(Eol)
                {
                    #line 553
                    P_error(nullptr, 202);
                }
                else
                {
                    #line 553
                    P_insymbol_nextch(&_F);
                }
            }
            while(!(Ch != '\''));
            
            #line 555
            Lgth = (Lgth - 1);
            
            #line 556
            if((Lgth == 0))
            {
                #line 556
                P_error(nullptr, 205);
            }
            else
            {
                #line 557
                if((Lgth == 1))
                {
                    #line 557
                    Val.Ival = _ord(_F.String[1]);
                }
                else
                {
                    #line 559
                    {
                        _new(_F.Lvp._ptr);
                        _setValue(_F.Lvp._ptr->Cclass, C_strg);
                    }
                    
                    #line 559
                    (*_F.Lvp._ptr).Cclass = C_strg;
                    
                    #line 560
                    if((Lgth > C_strglgth))
                    {
                        #line 561
                        P_error(nullptr, 399);
                        
                        #line 561
                        Lgth = C_strglgth;
                    }
                    
                    #line 563
                    (*_F.Lvp._ptr).Slgth = Lgth;
                    
                    #line 564
                    _FOR_TO(_F.i, 1, Lgth)
                    {
                        #line 564
                        (*_F.Lvp._ptr).Sval[_F.i] = _F.String[_F.i];
                    }
                    _FOR_END(_F.i)
                    
                    #line 566
                    Val.Valp = _F.Lvp;
                }
            }
            break;
        
        case C_chcolon:
            #line 570
            Op = C_noop;
            
            #line 570
            P_insymbol_nextch(&_F);
            
            #line 571
            if((Ch == '='))
            {
                #line 572
                Sy = C_becomes;
                
                #line 572
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 573
                Sy = C_colon;
            }
            break;
        
        case C_chperiod:
            #line 576
            Op = C_noop;
            
            #line 576
            P_insymbol_nextch(&_F);
            
            #line 577
            if((Ch == '.'))
            {
                #line 578
                Sy = C_colon;
                
                #line 578
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 579
                Sy = C_period;
            }
            break;
        
        case C_chlt:
            #line 582
            P_insymbol_nextch(&_F);
            
            #line 582
            Sy = C_relop;
            
            #line 583
            if((Ch == '='))
            {
                #line 584
                Op = C_leop;
                
                #line 584
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 586
                if((Ch == '>'))
                {
                    #line 587
                    Op = C_neop;
                    
                    #line 587
                    P_insymbol_nextch(&_F);
                }
                else
                {
                    #line 588
                    Op = C_ltop;
                }
            }
            break;
        
        case C_chgt:
            #line 591
            P_insymbol_nextch(&_F);
            
            #line 591
            Sy = C_relop;
            
            #line 592
            if((Ch == '='))
            {
                #line 593
                Op = C_geop;
                
                #line 593
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 594
                Op = C_gtop;
            }
            break;
        
        case C_chlparen:
            #line 597
            P_insymbol_nextch(&_F);
            
            #line 598
            if((Ch == '*'))
            {
                #line 599
                P_insymbol_nextch(&_F);
                
                #line 600
                if((Ch == '$'))
                {
                    #line 600
                    P_insymbol_options(&_F);
                }
                
                #line 601
                do
                {
                    #line 602
                    while(((Ch != '*') && (!_eof(Source))))
                    {
                        #line 602
                        P_insymbol_nextch(&_F);
                    }
                    
                    #line 603
                    P_insymbol_nextch(&_F);
                }
                while(!((Ch == ')') || _eof(Source)));
                
                #line 605
                P_insymbol_nextch(&_F);
                
                #line 605
                goto L_1;
            }
            
            #line 607
            Sy = C_lparent;
            
            #line 607
            Op = C_noop;
            break;
        
        case C_special:
            #line 610
            Sy = Ssy[Ch];
            
            #line 610
            Op = Sop[Ch];
            
            #line 611
            P_insymbol_nextch(&_F);
            break;
        
        case C_chspace:
            #line 613
            Sy = C_othersy;
            break;
        }
    }
}


#line 424
//================================================================================
// scope: insymbol_nextch (level : 3)

// activation record
struct Frame_insymbol_nextch
{
   Frame_insymbol* _slink;
};

// function body
void P_insymbol_nextch(void* _slink)
{
    // prologue/frame definition
    Frame_insymbol_nextch _F = { (Frame_insymbol*)_slink };
    
    // subroutine body
    #line 425
    if(Eol)
    {
        #line 426
        if(List)
        {
            #line 426
            Output << _WRITELN;
        }
        
        #line 426
        P_endofline(nullptr);
    }
    
    #line 428
    if((!_eof(Source)))
    {
        #line 429
        Eol = _eoln(Source);
        
        #line 429
        Source >> Ch;
        
        #line 430
        if(List)
        {
            #line 430
            Output << Ch;
        }
        
        #line 431
        Chcnt = (Chcnt + 1);
    }
    else
    {
        #line 434
        Output << "   *** eof " << "encountered" << _WRITELN;
        
        #line 435
        _F._slink->Test = C_false;
    }
}


#line 439
//================================================================================
// scope: insymbol_options (level : 3)

// activation record
struct Frame_insymbol_options
{
   Frame_insymbol* _slink;
};

// function body
void P_insymbol_options(void* _slink)
{
    // prologue/frame definition
    Frame_insymbol_options _F = { (Frame_insymbol*)_slink };
    
    // subroutine body
    #line 441
    do
    {
        #line 441
        P_insymbol_nextch(_F._slink);
        
        #line 442
        if((Ch != '*'))
        {
            #line 444
            if((Ch == 't'))
            {
                #line 445
                P_insymbol_nextch(_F._slink);
                
                #line 445
                Prtables = (Ch == '+');
            }
            else
            {
                #line 447
                if((Ch == 'l'))
                {
                    #line 448
                    P_insymbol_nextch(_F._slink);
                    
                    #line 448
                    List = (Ch == '+');
                    
                    #line 449
                    if((!List))
                    {
                        #line 449
                        Output << _WRITELN;
                    }
                }
                else
                {
                    #line 452
                    if((Ch == 'd'))
                    {
                        #line 453
                        P_insymbol_nextch(_F._slink);
                        
                        #line 453
                        Debug = (Ch == '+');
                    }
                    else
                    {
                        #line 455
                        if((Ch == 'c'))
                        {
                            #line 456
                            P_insymbol_nextch(_F._slink);
                            
                            #line 456
                            Prcode = (Ch == '+');
                        }
                    }
                }
            }
            
            #line 457
            P_insymbol_nextch(_F._slink);
        }
    }
    while(!(Ch != ','));
}


#line 617
//================================================================================
// scope: enterid (level : 2)

// activation record
struct Frame_enterid
{
    // parameters
    T_ctp Fcp;

    // locals
    T_ctp Lcp;
    T_ctp Lcp1;
    T_boolean Lleft;
    T_alpha Nam;
};

// function body
void P_enterid(void* _slink, T_ctp Fcp)
{
    // prologue/frame definition
    Frame_enterid _F = {Fcp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 622
    _F.Nam = (*_F.Fcp._ptr).Name;
    
    #line 623
    _F.Lcp = Display[Top].Fname;
    
    #line 624
    if((_F.Lcp == nullptr))
    {
        #line 625
        Display[Top].Fname = _F.Fcp;
    }
    else
    {
        #line 628
        do
        {
            #line 628
            _F.Lcp1 = _F.Lcp;
            
            #line 629
            if(_strcmpEQ<8>((*_F.Lcp._ptr).Name, _F.Nam))
            {
                #line 630
                P_error(nullptr, 101);
                
                #line 630
                _F.Lcp = (*_F.Lcp._ptr).Rlink;
                
                #line 630
                _F.Lleft = C_false;
            }
            else
            {
                #line 632
                if(_strcmpLT<8>((*_F.Lcp._ptr).Name, _F.Nam))
                {
                    #line 633
                    _F.Lcp = (*_F.Lcp._ptr).Rlink;
                    
                    #line 633
                    _F.Lleft = C_false;
                }
                else
                {
                    #line 634
                    _F.Lcp = (*_F.Lcp._ptr).Llink;
                    
                    #line 634
                    _F.Lleft = C_true;
                }
            }
        }
        while(!(_F.Lcp == nullptr));
        
        #line 636
        if(_F.Lleft)
        {
            #line 636
            (*_F.Lcp1._ptr).Llink = _F.Fcp;
        }
        else
        {
            #line 636
            (*_F.Lcp1._ptr).Rlink = _F.Fcp;
        }
    }
    
    #line 638
    (*_F.Fcp._ptr).Llink = nullptr;
    
    #line 638
    (*_F.Fcp._ptr).Rlink = nullptr;
}


#line 641
//================================================================================
// scope: searchsection (level : 2)

// activation record
struct Frame_searchsection
{
    // parameters
    T_ctp Fcp;
    T_ctp& Fcp1;
};

// function body
void P_searchsection(void* _slink, T_ctp Fcp, T_ctp& Fcp1)
{
    // prologue/frame definition
    Frame_searchsection _F = {Fcp, Fcp1 };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 647
    while((_F.Fcp != nullptr))
    {
        #line 648
        if(_strcmpEQ<8>((*_F.Fcp._ptr).Name, Id))
        {
            #line 648
            goto L_1;
        }
        else
        {
            #line 649
            if(_strcmpLT<8>((*_F.Fcp._ptr).Name, Id))
            {
                #line 649
                _F.Fcp = (*_F.Fcp._ptr).Rlink;
            }
            else
            {
                #line 650
                _F.Fcp = (*_F.Fcp._ptr).Llink;
            }
        }
    }
    
    #line 651
    L_1:
    _F.Fcp1 = _F.Fcp;
}


#line 659
//================================================================================
// scope: searchid (level : 2)

// activation record
struct Frame_searchid
{
    // parameters
    T_setofids Fidcls;
    T_ctp& Fcp;

    // locals
    T_disprange Disxl;
    T_ctp Lcp;
};

// function body
void P_searchid(void* _slink, T_setofids Fidcls, T_ctp& Fcp)
{
    // prologue/frame definition
    Frame_searchid _F = {Fidcls, Fcp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 664
    _FOR_DOWNTO(_F.Disxl, Top, 0)
    {
        #line 665
        _F.Lcp = Display[_F.Disxl].Fname;
        
        #line 666
        while((_F.Lcp != nullptr))
        {
            #line 667
            if(_strcmpEQ<8>((*_F.Lcp._ptr).Name, Id))
            {
                #line 668
                if((_F.Fidcls & (*_F.Lcp._ptr).Klass))
                {
                    #line 668
                    Disx = _F.Disxl;
                    
                    #line 668
                    goto L_1;
                }
                else
                {
                    #line 670
                    if(Prterr)
                    {
                        #line 670
                        P_error(nullptr, 103);
                    }
                    
                    #line 671
                    _F.Lcp = (*_F.Lcp._ptr).Rlink;
                }
            }
            else
            {
                #line 674
                if(_strcmpLT<8>((*_F.Lcp._ptr).Name, Id))
                {
                    #line 675
                    _F.Lcp = (*_F.Lcp._ptr).Rlink;
                }
                else
                {
                    #line 676
                    _F.Lcp = (*_F.Lcp._ptr).Llink;
                }
            }
        }
    }
    _FOR_END(_F.Disxl)
    
    #line 678
    Disx = 0;
    
    #line 682
    if(Prterr)
    {
        #line 683
        P_error(nullptr, 104);
        
        #line 687
        if((_F.Fidcls & C_types))
        {
            #line 687
            _F.Lcp = Utypptr;
        }
        else
        {
            #line 689
            if((_F.Fidcls & C_vars))
            {
                #line 689
                _F.Lcp = Uvarptr;
            }
            else
            {
                #line 691
                if((_F.Fidcls & C_field))
                {
                    #line 691
                    _F.Lcp = Ufldptr;
                }
                else
                {
                    #line 693
                    if((_F.Fidcls & C_konst))
                    {
                        #line 693
                        _F.Lcp = Ucstptr;
                    }
                    else
                    {
                        #line 695
                        if((_F.Fidcls & C_proc))
                        {
                            #line 695
                            _F.Lcp = Uprcptr;
                        }
                        else
                        {
                            #line 696
                            _F.Lcp = Ufctptr;
                        }
                    }
                }
            }
        }
        
        { /* NOP */ }
    }
    
    #line 698
    L_1:
    _F.Fcp = _F.Lcp;
}


#line 701
//================================================================================
// scope: getbounds (level : 2)

// activation record
struct Frame_getbounds
{
    // parameters
    T_stp Fsp;
    T_integer& Fmin;
    T_integer& Fmax;
};

// function body
void P_getbounds(void* _slink, T_stp Fsp, T_integer& Fmin, T_integer& Fmax)
{
    // prologue/frame definition
    Frame_getbounds _F = {Fsp, Fmin, Fmax };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 705
    _F.Fmin = 0;
    
    #line 705
    _F.Fmax = 0;
    
    #line 706
    if((_F.Fsp != nullptr))
    {
        #line 708
        if(((*_F.Fsp._ptr).Form == C_subrange))
        {
            #line 709
            _F.Fmin = (*_F.Fsp._ptr).Min.Ival;
            
            #line 709
            _F.Fmax = (*_F.Fsp._ptr).Max.Ival;
        }
        else
        {
            #line 711
            if((_F.Fsp == Charptr))
            {
                #line 712
                _F.Fmin = C_ordminchar;
                
                #line 712
                _F.Fmax = C_ordmaxchar;
            }
            else
            {
                #line 715
                if(((*_F.Fsp._ptr).Fconst != nullptr))
                {
                    #line 716
                    _F.Fmax = (*(*_F.Fsp._ptr).Fconst._ptr).Values.Ival;
                }
            }
        }
    }
}


#line 719
//================================================================================
// scope: alignquot (level : 2)

// activation record
struct Frame_alignquot
{
    // parameters
    T_stp Fsp;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_alignquot(void* _slink, T_stp Fsp)
{
    // prologue/frame definition
    Frame_alignquot _F = {Fsp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 721
    _F._fnvalue = 1;
    
    #line 722
    if((_F.Fsp != nullptr))
    {
        #line 724
        switch((*_F.Fsp._ptr).Form)
        {
        case C_scalar:
            #line 725
            if((_F.Fsp == Intptr))
            {
                #line 725
                _F._fnvalue = C_intal;
            }
            else
            {
                #line 726
                if((_F.Fsp == Boolptr))
                {
                    #line 726
                    _F._fnvalue = C_boolal;
                }
                else
                {
                    #line 727
                    if(((*_F.Fsp._ptr).Scalkind == C_declared))
                    {
                        #line 727
                        _F._fnvalue = C_intal;
                    }
                    else
                    {
                        #line 728
                        if((_F.Fsp == Charptr))
                        {
                            #line 728
                            _F._fnvalue = C_charal;
                        }
                        else
                        {
                            #line 729
                            if((_F.Fsp == Realptr))
                            {
                                #line 729
                                _F._fnvalue = C_realal;
                            }
                            else
                            {
                                #line 730
                                _F._fnvalue = C_parmal;
                            }
                        }
                    }
                }
            }
            break;
        
        case C_subrange:
            #line 731
            _F._fnvalue = F_alignquot(nullptr, (*_F.Fsp._ptr).Rangetype);
            break;
        
        case C_pointer:
            #line 732
            _F._fnvalue = C_adral;
            break;
        
        case C_power:
            #line 733
            _F._fnvalue = C_setal;
            break;
        
        case C_files:
            #line 734
            _F._fnvalue = C_fileal;
            break;
        
        case C_arrays:
            #line 735
            _F._fnvalue = F_alignquot(nullptr, (*_F.Fsp._ptr).Aeltype);
            break;
        
        case C_records:
            #line 736
            _F._fnvalue = C_recal;
            break;
        
        case C_variant:
        case C_tagfld:
            #line 737
            P_error(nullptr, 501);
            break;
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 741
//================================================================================
// scope: align (level : 2)

// activation record
struct Frame_align
{
    // parameters
    T_stp Fsp;
    T_addrrange& Flc;

    // locals
    T_integer k;
    T_integer l;
};

// function body
void P_align(void* _slink, T_stp Fsp, T_addrrange& Flc)
{
    // prologue/frame definition
    Frame_align _F = {Fsp, Flc };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 744
    _F.k = F_alignquot(nullptr, _F.Fsp);
    
    #line 745
    _F.l = (_F.Flc - 1);
    
    #line 746
    _F.Flc = ((_F.l + _F.k) - _mod((_F.k + _F.l) , _F.k));
}


#line 749
//================================================================================
// scope: printtables (level : 2)

// forward declarations
T_integer F_printtables_stptoint(void* _slink, T_stp p);
T_integer F_printtables_ctptoint(void* _slink, T_ctp p);
void P_printtables_marker(void* _slink);
void P_printtables_followstp(void* _slink, T_stp Fp);
void P_printtables_followctp(void* _slink, T_ctp Fp);

// constants
const T_integer C_printtables_intsize = 11;

// activation record
struct Frame_printtables
{
    // parameters
    T_boolean Fb;

    // locals
    T_disprange i;
    T_disprange Lim;
};

// function body
void P_printtables(void* _slink, T_boolean Fb)
{
    // prologue/frame definition
    Frame_printtables _F = {Fb };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 923
    Output << _WRITELN;
    
    #line 923
    Output << _WRITELN;
    
    #line 923
    Output << _WRITELN;
    
    #line 924
    if(_F.Fb)
    {
        #line 924
        _F.Lim = 0;
    }
    else
    {
        #line 925
        _F.Lim = Top;
        
        #line 925
        Output << " local";
    }
    
    #line 926
    Output << " tables " << _WRITELN;
    
    #line 926
    Output << _WRITELN;
    
    #line 927
    P_printtables_marker(&_F);
    
    #line 928
    _FOR_DOWNTO(_F.i, Top, _F.Lim)
    {
        #line 929
        P_printtables_followctp(&_F, Display[_F.i].Fname);
    }
    _FOR_END(_F.i)
    
    #line 930
    Output << _WRITELN;
    
    #line 931
    if((!Eol))
    {
        #line 931
        Output << _format(' ', (Chcnt + 16), 0);
    }
}


#line 759
//================================================================================
// scope: printtables_stptoint (level : 3)

// types
struct T_printtables_stptoint_record_32
{
    // variable fields
    union
    {
        T_stp p;
        T_integer i;
    };
};

// activation record
struct Frame_printtables_stptoint
{
   Frame_printtables* _slink;

    // parameters
    T_stp p;

    // locals
    T_integer _fnvalue;
    T_printtables_stptoint_record_32 r;
};

// function body
T_integer F_printtables_stptoint(void* _slink, T_stp p)
{
    // prologue/frame definition
    Frame_printtables_stptoint _F = { (Frame_printtables*)_slink, p };
    
    // subroutine body
    #line 761
    _F.r.p = _F.p;
    
    #line 761
    _F._fnvalue = _F.r.i;
    
    // epilogue
    return _F._fnvalue;
}


#line 763
//================================================================================
// scope: printtables_ctptoint (level : 3)

// types
struct T_printtables_ctptoint_record_33
{
    // variable fields
    union
    {
        T_ctp p;
        T_integer i;
    };
};

// activation record
struct Frame_printtables_ctptoint
{
   Frame_printtables* _slink;

    // parameters
    T_ctp p;

    // locals
    T_integer _fnvalue;
    T_printtables_ctptoint_record_33 r;
};

// function body
T_integer F_printtables_ctptoint(void* _slink, T_ctp p)
{
    // prologue/frame definition
    Frame_printtables_ctptoint _F = { (Frame_printtables*)_slink, p };
    
    // subroutine body
    #line 765
    _F.r.p = _F.p;
    
    #line 765
    _F._fnvalue = _F.r.i;
    
    // epilogue
    return _F._fnvalue;
}


#line 767
//================================================================================
// scope: printtables_marker (level : 3)

// forward declarations
void P_printtables_marker_markstp(void* _slink, T_stp Fp);
void P_printtables_marker_markctp(void* _slink, T_ctp Fp);

// activation record
struct Frame_printtables_marker
{
   Frame_printtables* _slink;

    // locals
    T_integer i;
};

// function body
void P_printtables_marker(void* _slink)
{
    // prologue/frame definition
    Frame_printtables_marker _F = { (Frame_printtables*)_slink };
    
    // subroutine body
    #line 804
    _FOR_DOWNTO(_F.i, Top, _F._slink->Lim)
    {
        #line 805
        P_printtables_marker_markctp(&_F, Display[_F.i].Fname);
    }
    _FOR_END(_F.i)
}


#line 773
//================================================================================
// scope: printtables_marker_markstp (level : 4)

// activation record
struct Frame_printtables_marker_markstp
{
   Frame_printtables_marker* _slink;

    // parameters
    T_stp Fp;
};

// function body
void P_printtables_marker_markstp(void* _slink, T_stp Fp)
{
    // prologue/frame definition
    Frame_printtables_marker_markstp _F = { (Frame_printtables_marker*)_slink, Fp };
    
    // subroutine body
    #line 776
    if((_F.Fp != nullptr))
    {
        #line 778
        (*_F.Fp._ptr).Marked = C_true;
        
        #line 779
        switch((*_F.Fp._ptr).Form)
        {
        case C_scalar:
            { /* NOP */ }
            break;
        
        case C_subrange:
            #line 781
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Rangetype);
            break;
        
        case C_pointer:
            { /* NOP */ }
            break;
        
        case C_power:
            #line 784
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Elset);
            break;
        
        case C_arrays:
            #line 785
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Aeltype);
            
            #line 785
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Inxtype);
            break;
        
        case C_records:
            #line 786
            P_printtables_marker_markctp(_F._slink, (*_F.Fp._ptr).Fstfld);
            
            #line 786
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Recvar);
            break;
        
        case C_files:
            #line 787
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Filtype);
            break;
        
        case C_tagfld:
            #line 788
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Fstvar);
            break;
        
        case C_variant:
            #line 789
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Nxtvar);
            
            #line 789
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Subvar);
            break;
        }
    }
}


#line 794
//================================================================================
// scope: printtables_marker_markctp (level : 4)

// activation record
struct Frame_printtables_marker_markctp
{
   Frame_printtables_marker* _slink;

    // parameters
    T_ctp Fp;
};

// function body
void P_printtables_marker_markctp(void* _slink, T_ctp Fp)
{
    // prologue/frame definition
    Frame_printtables_marker_markctp _F = { (Frame_printtables_marker*)_slink, Fp };
    
    // subroutine body
    #line 796
    if((_F.Fp != nullptr))
    {
        #line 798
        P_printtables_marker_markctp(_F._slink, (*_F.Fp._ptr).Llink);
        
        #line 798
        P_printtables_marker_markctp(_F._slink, (*_F.Fp._ptr).Rlink);
        
        #line 799
        P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Idtype);
    }
}


#line 810
//================================================================================
// scope: printtables_followstp (level : 3)

// activation record
struct Frame_printtables_followstp
{
   Frame_printtables* _slink;

    // parameters
    T_stp Fp;
};

// function body
void P_printtables_followstp(void* _slink, T_stp Fp)
{
    // prologue/frame definition
    Frame_printtables_followstp _F = { (Frame_printtables*)_slink, Fp };
    
    // subroutine body
    #line 812
    if((_F.Fp != nullptr))
    {
        #line 814
        if((*_F.Fp._ptr).Marked)
        {
            #line 815
            (*_F.Fp._ptr).Marked = C_false;
            
            #line 815
            Output << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, _F.Fp), C_printtables_intsize, 0) << _format((*_F.Fp._ptr).Size, 10, 0);
            
            #line 816
            switch((*_F.Fp._ptr).Form)
            {
            case C_scalar:
                #line 817
                Output << _format("scalar", 10, 0);
                
                #line 818
                if(((*_F.Fp._ptr).Scalkind == C_standard))
                {
                    #line 819
                    Output << _format("standard", 10, 0);
                }
                else
                {
                    #line 820
                    Output << _format("declared", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Fconst), C_printtables_intsize, 0);
                }
                
                #line 821
                Output << _WRITELN;
                break;
            
            case C_subrange:
                #line 824
                Output << _format("subrange", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Rangetype), 6, 0);
                
                #line 825
                if(((*_F.Fp._ptr).Rangetype != Realptr))
                {
                    #line 826
                    Output << (*_F.Fp._ptr).Min.Ival << (*_F.Fp._ptr).Max.Ival;
                }
                else
                {
                    #line 828
                    if((((*_F.Fp._ptr).Min.Valp != nullptr) && ((*_F.Fp._ptr).Max.Valp != nullptr)))
                    {
                        #line 829
                        Output << ' ' << _format((*(*_F.Fp._ptr).Min.Valp._ptr).Rval, 9, 0) << ' ' << _format((*(*_F.Fp._ptr).Max.Valp._ptr).Rval, 9, 0);
                    }
                }
                
                #line 831
                Output << _WRITELN;
                
                #line 831
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Rangetype);
                
                { /* NOP */ }
                break;
            
            case C_pointer:
                #line 833
                Output << _format("pointer", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Eltype), C_printtables_intsize, 0) << _WRITELN;
                break;
            
            case C_power:
                #line 834
                Output << _format("set", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Elset), C_printtables_intsize, 0) << _WRITELN;
                
                #line 835
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Elset);
                break;
            
            case C_arrays:
                #line 838
                Output << _format("array", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Aeltype), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Inxtype), 6, 0) << _WRITELN;
                
                #line 840
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Aeltype);
                
                #line 840
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Inxtype);
                break;
            
            case C_records:
                #line 843
                Output << _format("record", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Fstfld), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Recvar), C_printtables_intsize, 0) << _WRITELN;
                
                #line 844
                P_printtables_followctp(_F._slink, (*_F.Fp._ptr).Fstfld);
                
                #line 845
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Recvar);
                break;
            
            case C_files:
                #line 847
                Output << _format("file", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Filtype), C_printtables_intsize, 0);
                
                #line 848
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Filtype);
                break;
            
            case C_tagfld:
                #line 850
                Output << _format("tagfld", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Tagfieldp), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Fstvar), C_printtables_intsize, 0) << _WRITELN;
                
                #line 852
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Fstvar);
                break;
            
            case C_variant:
                #line 854
                Output << _format("variant", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Nxtvar), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Subvar), C_printtables_intsize, 0) << (*_F.Fp._ptr).Varval.Ival << _WRITELN;
                
                #line 856
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Nxtvar);
                
                #line 856
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Subvar);
                break;
            }
        }
    }
}


#line 862
//================================================================================
// scope: printtables_followctp (level : 3)

// activation record
struct Frame_printtables_followctp
{
   Frame_printtables* _slink;

    // parameters
    T_ctp Fp;

    // locals
    T_integer i;
};

// function body
void P_printtables_followctp(void* _slink, T_ctp Fp)
{
    // prologue/frame definition
    Frame_printtables_followctp _F = { (Frame_printtables*)_slink, Fp };
    
    // subroutine body
    #line 865
    if((_F.Fp != nullptr))
    {
        #line 867
        Output << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, _F.Fp), C_printtables_intsize, 0) << ' ' << _format((*_F.Fp._ptr).Name, 9, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Llink), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Rlink), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Idtype), C_printtables_intsize, 0);
        
        #line 869
        switch((*_F.Fp._ptr).Klass)
        {
        case C_types:
            #line 870
            Output << _format("type", 10, 0);
            break;
        
        case C_konst:
            #line 871
            Output << _format("constant", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0);
            
            #line 872
            if(((*_F.Fp._ptr).Idtype != nullptr))
            {
                #line 873
                if(((*_F.Fp._ptr).Idtype == Realptr))
                {
                    #line 875
                    if(((*_F.Fp._ptr).Values.Valp != nullptr))
                    {
                        #line 876
                        Output << ' ' << _format((*(*_F.Fp._ptr).Values.Valp._ptr).Rval, 9, 0);
                    }
                }
                else
                {
                    #line 879
                    if(((*(*_F.Fp._ptr).Idtype._ptr).Form == C_arrays))
                    {
                        #line 881
                        if(((*_F.Fp._ptr).Values.Valp != nullptr))
                        {
                            #line 882
                            Output << ' ';
                            
                            #line 884
                            _FOR_TO(_F.i, 1, (*(*_F.Fp._ptr).Values.Valp._ptr).Slgth)
                            {
                                #line 885
                                Output << (*(*_F.Fp._ptr).Values.Valp._ptr).Sval[_F.i];
                            }
                            _FOR_END(_F.i)
                        }
                    }
                    else
                    {
                        #line 888
                        Output << (*_F.Fp._ptr).Values.Ival;
                    }
                }
            }
            break;
        
        case C_vars:
            #line 890
            Output << _format("variable", 10, 0);
            
            #line 891
            if(((*_F.Fp._ptr).Vkind == C_actual))
            {
                #line 891
                Output << _format("actual", 10, 0);
            }
            else
            {
                #line 892
                Output << _format("formal", 10, 0);
            }
            
            #line 893
            Output << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0) << (*_F.Fp._ptr).Vlev << _format(' ', 4, 0) << _format((*_F.Fp._ptr).Vaddr, 6, 0);
            
            { /* NOP */ }
            break;
        
        case C_field:
            #line 895
            Output << _format("field", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format((*_F.Fp._ptr).Fldaddr, 6, 0);
            break;
        
        case C_proc:
        case C_func:
            #line 898
            if(((*_F.Fp._ptr).Klass == C_proc))
            {
                #line 898
                Output << _format("procedure", 10, 0);
            }
            else
            {
                #line 899
                Output << _format("function", 10, 0);
            }
            
            #line 900
            if(((*_F.Fp._ptr).Pfdeckind == C_standard))
            {
                #line 901
                Output << _format("standard", 10, 0) << _format((*_F.Fp._ptr).Key, 10, 0);
            }
            else
            {
                #line 903
                Output << _format("declared", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0);
                
                #line 904
                Output << (*_F.Fp._ptr).Pflev << _format(' ', 4, 0) << _format((*_F.Fp._ptr).Pfname, 6, 0);
                
                #line 905
                if(((*_F.Fp._ptr).Pfkind == C_actual))
                {
                    #line 906
                    Output << _format("actual", 10, 0);
                    
                    #line 907
                    if((*_F.Fp._ptr).Forwdecl)
                    {
                        #line 907
                        Output << _format("forward", 10, 0);
                    }
                    else
                    {
                        #line 908
                        Output << _format("notforward", 10, 0);
                    }
                    
                    #line 909
                    if((*_F.Fp._ptr).Externl)
                    {
                        #line 909
                        Output << _format("extern", 10, 0);
                    }
                    else
                    {
                        #line 910
                        Output << _format("not extern", 10, 0);
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 912
                    Output << _format("formal", 10, 0);
                }
            }
            break;
        }
        
        #line 916
        Output << _WRITELN;
        
        #line 917
        P_printtables_followctp(_F._slink, (*_F.Fp._ptr).Llink);
        
        #line 917
        P_printtables_followctp(_F._slink, (*_F.Fp._ptr).Rlink);
        
        #line 918
        P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Idtype);
    }
}


#line 934
//================================================================================
// scope: genlabel (level : 2)

// activation record
struct Frame_genlabel
{
    // parameters
    T_integer& Nxtlab;
};

// function body
void P_genlabel(void* _slink, T_integer& Nxtlab)
{
    // prologue/frame definition
    Frame_genlabel _F = {Nxtlab };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 935
    Intlabel = (Intlabel + 1);
    
    #line 936
    _F.Nxtlab = Intlabel;
}


#line 939
//================================================================================
// scope: block (level : 2)

// forward declarations
void P_block_skip(void* _slink, T_setofsys Fsys);
void P_block_constant(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_valu& Fvalu);
T_boolean F_block_equalbounds(void* _slink, T_stp Fsp1, T_stp Fsp2);
T_boolean F_block_comptypes(void* _slink, T_stp Fsp1, T_stp Fsp2);
T_boolean F_block_string(void* _slink, T_stp Fsp);
void P_block_typ(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_addrrange& Fsize);
void P_block_labeldeclaration(void* _slink);
void P_block_constdeclaration(void* _slink);
void P_block_typedeclaration(void* _slink);
void P_block_vardeclaration(void* _slink);
void P_block_procdeclaration(void* _slink, T_symbol Fsy);
void P_block_body(void* _slink, T_setofsys Fsys);

// activation record
struct Frame_block
{
    // parameters
    T_setofsys Fsys;
    T_symbol Fsy;
    T_ctp Fprocp;

    // locals
    T_symbol Lsy;
    T_boolean Test;
};

// function body
void P_block(void* _slink, T_setofsys Fsys, T_symbol Fsy, T_ctp Fprocp)
{
    // prologue/frame definition
    Frame_block _F = {Fsys, Fsy, Fprocp };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_procsy);
    _setLiteral1.set(C_funcsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_casesy);
    
    // subroutine body
    #line 3654
    Dp = C_true;
    
    #line 3655
    do
    {
        #line 3656
        if((Sy == C_labelsy))
        {
            #line 3657
            P_insymbol(nullptr);
            
            #line 3657
            P_block_labeldeclaration(&_F);
        }
        
        #line 3658
        if((Sy == C_constsy))
        {
            #line 3659
            P_insymbol(nullptr);
            
            #line 3659
            P_block_constdeclaration(&_F);
        }
        
        #line 3660
        if((Sy == C_typesy))
        {
            #line 3661
            P_insymbol(nullptr);
            
            #line 3661
            P_block_typedeclaration(&_F);
        }
        
        #line 3662
        if((Sy == C_varsy))
        {
            #line 3663
            P_insymbol(nullptr);
            
            #line 3663
            P_block_vardeclaration(&_F);
        }
        
        #line 3664
        while((_setLiteral1 & Sy))
        {
            #line 3665
            _F.Lsy = Sy;
            
            #line 3665
            P_insymbol(nullptr);
            
            #line 3665
            P_block_procdeclaration(&_F, _F.Lsy);
        }
        
        #line 3666
        if((Sy != C_beginsy))
        {
            #line 3667
            P_error(nullptr, 18);
            
            #line 3667
            P_block_skip(&_F, _F.Fsys);
        }
    }
    while(!((Statbegsys & Sy) || _eof(Source)));
    
    #line 3669
    Dp = C_false;
    
    #line 3670
    if((Sy == C_beginsy))
    {
        #line 3670
        P_insymbol(nullptr);
    }
    else
    {
        #line 3670
        P_error(nullptr, 17);
    }
    
    #line 3671
    do
    {
        #line 3671
        P_block_body(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)));
        
        #line 3672
        if((Sy != _F.Fsy))
        {
            #line 3673
            P_error(nullptr, 6);
            
            #line 3673
            P_block_skip(&_F, _F.Fsys);
        }
    }
    while(!(((Sy == _F.Fsy) || (Blockbegsys & Sy)) || _eof(Source)));
    
    { /* NOP */ }
}


#line 942
//================================================================================
// scope: block_skip (level : 3)

// activation record
struct Frame_block_skip
{
   Frame_block* _slink;

    // parameters
    T_setofsys Fsys;
};

// function body
void P_block_skip(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_skip _F = { (Frame_block*)_slink, Fsys };
    
    // subroutine body
    #line 945
    if((!_eof(Source)))
    {
        #line 946
        while(((!(_F.Fsys & Sy)) && (!_eof(Source))))
        {
            #line 946
            P_insymbol(nullptr);
        }
        
        #line 947
        if((!(_F.Fsys & Sy)))
        {
            #line 947
            P_insymbol(nullptr);
        }
    }
}


#line 951
//================================================================================
// scope: block_constant (level : 3)

// types
typedef _T_Range<2, 100, signed __int8> T_block_constant_range_34;
typedef int T_block_constant_enum_35;

// constants
const T_block_constant_enum_35 C_block_constant_neg = 2;
const T_block_constant_enum_35 C_block_constant_none = 0;
const T_block_constant_enum_35 C_block_constant_pos = 1;

// activation record
struct Frame_block_constant
{
   Frame_block* _slink;

    // parameters
    T_setofsys Fsys;
    T_stp& Fsp;
    T_valu& Fvalu;

    // locals
    T_block_constant_range_34 i;
    T_ctp Lcp;
    T_stp Lsp;
    T_csp Lvp;
    T_block_constant_enum_35 Sign;
};

// function body
void P_block_constant(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_valu& Fvalu)
{
    // prologue/frame definition
    Frame_block_constant _F = { (Frame_block*)_slink, Fsys, Fsp, Fvalu };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_plus);
    _setLiteral1.set(C_minus);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_konst);
    
    // subroutine body
    #line 954
    _F.Lsp = nullptr;
    
    #line 954
    _F.Fvalu.Ival = 0;
    
    #line 955
    if((!(Constbegsys & Sy)))
    {
        #line 956
        P_error(nullptr, 50);
        
        #line 956
        P_block_skip(_F._slink, (_F.Fsys + Constbegsys));
    }
    
    #line 957
    if((Constbegsys & Sy))
    {
        #line 959
        if((Sy == C_stringconst))
        {
            #line 961
            if((Lgth == 1))
            {
                #line 961
                _F.Lsp = Charptr;
            }
            else
            {
                #line 964
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_arrays);
                }
                
                #line 966
                (*_F.Lsp._ptr).Aeltype = Charptr;
                
                #line 966
                (*_F.Lsp._ptr).Inxtype = nullptr;
                
                #line 967
                (*_F.Lsp._ptr).Size = (Lgth * C_charsize);
                
                #line 967
                (*_F.Lsp._ptr).Form = C_arrays;
            }
            
            #line 970
            _F.Fvalu = Val;
            
            #line 970
            P_insymbol(nullptr);
        }
        else
        {
            #line 974
            _F.Sign = C_block_constant_none;
            
            #line 975
            if(((Sy == C_addop) && (_setLiteral1 & Op)))
            {
                #line 976
                if((Op == C_plus))
                {
                    #line 976
                    _F.Sign = C_block_constant_pos;
                }
                else
                {
                    #line 976
                    _F.Sign = C_block_constant_neg;
                }
                
                #line 977
                P_insymbol(nullptr);
            }
            
            #line 979
            if((Sy == C_ident))
            {
                #line 980
                P_searchid(nullptr, T_setofids::C(_setLiteral2), _F.Lcp);
                
                #line 982
                _F.Lsp = (*_F.Lcp._ptr).Idtype;
                
                #line 982
                _F.Fvalu = (*_F.Lcp._ptr).Values;
                
                #line 983
                if((_F.Sign != C_block_constant_none))
                {
                    #line 984
                    if((_F.Lsp == Intptr))
                    {
                        #line 985
                        if((_F.Sign == C_block_constant_neg))
                        {
                            #line 985
                            _F.Fvalu.Ival = (-_F.Fvalu.Ival);
                        }
                    }
                    else
                    {
                        #line 987
                        if((_F.Lsp == Realptr))
                        {
                            #line 989
                            if((_F.Sign == C_block_constant_neg))
                            {
                                #line 990
                                {
                                    _new(_F.Lvp._ptr);
                                    _setValue(_F.Lvp._ptr->Cclass, C_reel);
                                }
                                
                                #line 991
                                if(((*_F.Fvalu.Valp._ptr).Rval[1] == '-'))
                                {
                                    #line 992
                                    (*_F.Lvp._ptr).Rval[1] = '+';
                                }
                                else
                                {
                                    #line 993
                                    (*_F.Lvp._ptr).Rval[1] = '-';
                                }
                                
                                #line 994
                                _FOR_TO(_F.i, 2, C_strglgth)
                                {
                                    #line 995
                                    (*_F.Lvp._ptr).Rval[_F.i] = (*_F.Fvalu.Valp._ptr).Rval[_F.i];
                                }
                                _FOR_END(_F.i)
                                
                                #line 996
                                _F.Fvalu.Valp = _F.Lvp;
                                
                                { /* NOP */ }
                            }
                        }
                        else
                        {
                            #line 999
                            P_error(nullptr, 105);
                        }
                    }
                }
                
                #line 1000
                P_insymbol(nullptr);
                
                { /* NOP */ }
            }
            else
            {
                #line 1003
                if((Sy == C_intconst))
                {
                    #line 1004
                    if((_F.Sign == C_block_constant_neg))
                    {
                        #line 1004
                        Val.Ival = (-Val.Ival);
                    }
                    
                    #line 1005
                    _F.Lsp = Intptr;
                    
                    #line 1005
                    _F.Fvalu = Val;
                    
                    #line 1005
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1008
                    if((Sy == C_realconst))
                    {
                        #line 1009
                        if((_F.Sign == C_block_constant_neg))
                        {
                            #line 1009
                            (*Val.Valp._ptr).Rval[1] = '-';
                        }
                        
                        #line 1010
                        _F.Lsp = Realptr;
                        
                        #line 1010
                        _F.Fvalu = Val;
                        
                        #line 1010
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1013
                        P_error(nullptr, 106);
                        
                        #line 1013
                        P_block_skip(_F._slink, _F.Fsys);
                    }
                }
            }
        }
        
        #line 1015
        if((!(_F.Fsys & Sy)))
        {
            #line 1016
            P_error(nullptr, 6);
            
            #line 1016
            P_block_skip(_F._slink, _F.Fsys);
        }
    }
    
    #line 1018
    _F.Fsp = _F.Lsp;
}


#line 1021
//================================================================================
// scope: block_equalbounds (level : 3)

// activation record
struct Frame_block_equalbounds
{
   Frame_block* _slink;

    // parameters
    T_stp Fsp1;
    T_stp Fsp2;

    // locals
    T_boolean _fnvalue;
    T_integer Lmax1;
    T_integer Lmax2;
    T_integer Lmin1;
    T_integer Lmin2;
};

// function body
T_boolean F_block_equalbounds(void* _slink, T_stp Fsp1, T_stp Fsp2)
{
    // prologue/frame definition
    Frame_block_equalbounds _F = { (Frame_block*)_slink, Fsp1, Fsp2 };
    
    // subroutine body
    #line 1024
    if(((_F.Fsp1 == nullptr) || (_F.Fsp2 == nullptr)))
    {
        #line 1024
        _F._fnvalue = C_true;
    }
    else
    {
        #line 1027
        P_getbounds(nullptr, _F.Fsp1, _F.Lmin1, _F.Lmax1);
        
        #line 1028
        P_getbounds(nullptr, _F.Fsp2, _F.Lmin2, _F.Lmax2);
        
        #line 1029
        _F._fnvalue = ((_F.Lmin1 == _F.Lmin2) && (_F.Lmax1 == _F.Lmax2));
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1033
//================================================================================
// scope: block_comptypes (level : 3)

// activation record
struct Frame_block_comptypes
{
   Frame_block* _slink;

    // parameters
    T_stp Fsp1;
    T_stp Fsp2;

    // locals
    T_boolean _fnvalue;
    T_boolean Comp;
    T_testp Ltestp1;
    T_testp Ltestp2;
    T_ctp Nxt1;
    T_ctp Nxt2;
};

// function body
T_boolean F_block_comptypes(void* _slink, T_stp Fsp1, T_stp Fsp2)
{
    // prologue/frame definition
    Frame_block_comptypes _F = { (Frame_block*)_slink, Fsp1, Fsp2 };
    
    // subroutine body
    #line 1038
    if((_F.Fsp1 == _F.Fsp2))
    {
        #line 1038
        _F._fnvalue = C_true;
    }
    else
    {
        #line 1040
        if(((_F.Fsp1 != nullptr) && (_F.Fsp2 != nullptr)))
        {
            #line 1041
            if(((*_F.Fsp1._ptr).Form == (*_F.Fsp2._ptr).Form))
            {
                #line 1042
                switch((*_F.Fsp1._ptr).Form)
                {
                case C_scalar:
                    #line 1044
                    _F._fnvalue = C_false;
                    break;
                
                case C_subrange:
                    #line 1048
                    _F._fnvalue = F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Rangetype, (*_F.Fsp2._ptr).Rangetype);
                    break;
                
                case C_pointer:
                    #line 1051
                    _F.Comp = C_false;
                    
                    #line 1051
                    _F.Ltestp1 = Globtestp;
                    
                    #line 1052
                    _F.Ltestp2 = Globtestp;
                    
                    #line 1053
                    while((_F.Ltestp1 != nullptr))
                    {
                        #line 1056
                        if((((*_F.Ltestp1._ptr).Elt1 == (*_F.Fsp1._ptr).Eltype) && ((*_F.Ltestp1._ptr).Elt2 == (*_F.Fsp2._ptr).Eltype)))
                        {
                            #line 1057
                            _F.Comp = C_true;
                        }
                        
                        #line 1058
                        _F.Ltestp1 = (*_F.Ltestp1._ptr).Lasttestp;
                    }
                    
                    #line 1060
                    if((!_F.Comp))
                    {
                        #line 1061
                        _new(_F.Ltestp1._ptr);
                        
                        #line 1063
                        (*_F.Ltestp1._ptr).Elt1 = (*_F.Fsp1._ptr).Eltype;
                        
                        #line 1064
                        (*_F.Ltestp1._ptr).Elt2 = (*_F.Fsp2._ptr).Eltype;
                        
                        #line 1065
                        (*_F.Ltestp1._ptr).Lasttestp = Globtestp;
                        
                        #line 1067
                        Globtestp = _F.Ltestp1;
                        
                        #line 1068
                        _F.Comp = F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Eltype, (*_F.Fsp2._ptr).Eltype);
                    }
                    
                    #line 1070
                    _F._fnvalue = _F.Comp;
                    
                    #line 1070
                    Globtestp = _F.Ltestp2;
                    break;
                
                case C_power:
                    #line 1073
                    _F._fnvalue = F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Elset, (*_F.Fsp2._ptr).Elset);
                    break;
                
                case C_arrays:
                    #line 1076
                    _F.Comp = (F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Aeltype, (*_F.Fsp2._ptr).Aeltype) && F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Inxtype, (*_F.Fsp2._ptr).Inxtype));
                    
                    #line 1078
                    _F._fnvalue = ((_F.Comp && ((*_F.Fsp1._ptr).Size == (*_F.Fsp2._ptr).Size)) && F_block_equalbounds(_F._slink, (*_F.Fsp1._ptr).Inxtype, (*_F.Fsp2._ptr).Inxtype));
                    break;
                
                case C_records:
                    #line 1082
                    _F.Nxt1 = (*_F.Fsp1._ptr).Fstfld;
                    
                    #line 1082
                    _F.Nxt2 = (*_F.Fsp2._ptr).Fstfld;
                    
                    #line 1082
                    _F.Comp = C_true;
                    
                    #line 1083
                    while(((_F.Nxt1 != nullptr) && (_F.Nxt2 != nullptr)))
                    {
                        #line 1084
                        _F.Comp = (_F.Comp && F_block_comptypes(_F._slink, (*_F.Nxt1._ptr).Idtype, (*_F.Nxt2._ptr).Idtype));
                        
                        #line 1085
                        _F.Nxt1 = (*_F.Nxt1._ptr).Next;
                        
                        #line 1085
                        _F.Nxt2 = (*_F.Nxt2._ptr).Next;
                    }
                    
                    #line 1087
                    _F._fnvalue = ((((_F.Comp && (_F.Nxt1 == nullptr)) && (_F.Nxt2 == nullptr)) && ((*_F.Fsp1._ptr).Recvar == nullptr)) && ((*_F.Fsp2._ptr).Recvar == nullptr));
                    break;
                
                case C_files:
                    #line 1093
                    _F._fnvalue = F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Filtype, (*_F.Fsp2._ptr).Filtype);
                    break;
                }
            }
            else
            {
                #line 1096
                if(((*_F.Fsp1._ptr).Form == C_subrange))
                {
                    #line 1097
                    _F._fnvalue = F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Rangetype, _F.Fsp2);
                }
                else
                {
                    #line 1099
                    if(((*_F.Fsp2._ptr).Form == C_subrange))
                    {
                        #line 1100
                        _F._fnvalue = F_block_comptypes(_F._slink, _F.Fsp1, (*_F.Fsp2._ptr).Rangetype);
                    }
                    else
                    {
                        #line 1101
                        _F._fnvalue = C_false;
                    }
                }
            }
        }
        else
        {
            #line 1102
            _F._fnvalue = C_true;
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1105
//================================================================================
// scope: block_string (level : 3)

// activation record
struct Frame_block_string
{
   Frame_block* _slink;

    // parameters
    T_stp Fsp;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_block_string(void* _slink, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_string _F = { (Frame_block*)_slink, Fsp };
    
    // subroutine body
    #line 1106
    _F._fnvalue = C_false;
    
    #line 1107
    if((_F.Fsp != nullptr))
    {
        #line 1108
        if(((*_F.Fsp._ptr).Form == C_arrays))
        {
            #line 1109
            if(F_block_comptypes(_F._slink, (*_F.Fsp._ptr).Aeltype, Charptr))
            {
                #line 1109
                _F._fnvalue = C_true;
            }
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1112
//================================================================================
// scope: block_typ (level : 3)

// forward declarations
void P_block_typ_simpletype(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_addrrange& Fsize);
void P_block_typ_fieldlist(void* _slink, T_setofsys Fsys, T_stp& Frecvar);

// activation record
struct Frame_block_typ
{
   Frame_block* _slink;

    // parameters
    T_setofsys Fsys;
    T_stp& Fsp;
    T_addrrange& Fsize;

    // locals
    T_addrrange Displ;
    T_ctp Lcp;
    T_integer Lmax;
    T_integer Lmin;
    T_addrrange Lsize;
    T_stp Lsp;
    T_stp Lsp1;
    T_stp Lsp2;
    T_disprange Oldtop;
};

// function body
void P_block_typ(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_addrrange& Fsize)
{
    // prologue/frame definition
    Frame_block_typ _F = { (Frame_block*)_slink, Fsys, Fsp, Fsize };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_types);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rbrack);
    _setLiteral2.set(C_ofsy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_semicolon);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_endsy);
    
    // subroutine body
    #line 1334
    if((!(Typebegsys & Sy)))
    {
        #line 1335
        P_error(nullptr, 10);
        
        #line 1335
        P_block_skip(_F._slink, (_F.Fsys + Typebegsys));
    }
    
    #line 1336
    if((Typebegsys & Sy))
    {
        #line 1338
        if((Simptypebegsys & Sy))
        {
            #line 1338
            P_block_typ_simpletype(&_F, _F.Fsys, _F.Fsp, _F.Fsize);
        }
        else
        {
            #line 1340
            if((Sy == C_arrow))
            {
                #line 1341
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_pointer);
                }
                
                #line 1341
                _F.Fsp = _F.Lsp;
                
                #line 1343
                (*_F.Lsp._ptr).Eltype = nullptr;
                
                #line 1343
                (*_F.Lsp._ptr).Size = C_ptrsize;
                
                #line 1343
                (*_F.Lsp._ptr).Form = C_pointer;
                
                #line 1344
                P_insymbol(nullptr);
                
                #line 1345
                if((Sy == C_ident))
                {
                    #line 1346
                    Prterr = C_false;
                    
                    #line 1347
                    P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
                    
                    #line 1347
                    Prterr = C_true;
                    
                    #line 1348
                    if((_F.Lcp == nullptr))
                    {
                        #line 1349
                        {
                            _new(_F.Lcp._ptr);
                            _setValue(_F.Lcp._ptr->Klass, C_types);
                        }
                        
                        #line 1351
                        (*_F.Lcp._ptr).Name = Id;
                        
                        #line 1351
                        (*_F.Lcp._ptr).Idtype = _F.Lsp;
                        
                        #line 1352
                        (*_F.Lcp._ptr).Next = Fwptr;
                        
                        #line 1352
                        (*_F.Lcp._ptr).Klass = C_types;
                        
                        #line 1354
                        Fwptr = _F.Lcp;
                    }
                    else
                    {
                        #line 1358
                        if(((*_F.Lcp._ptr).Idtype != nullptr))
                        {
                            #line 1359
                            if(((*(*_F.Lcp._ptr).Idtype._ptr).Form == C_files))
                            {
                                #line 1359
                                P_error(nullptr, 108);
                            }
                            else
                            {
                                #line 1360
                                (*_F.Lsp._ptr).Eltype = (*_F.Lcp._ptr).Idtype;
                            }
                        }
                    }
                    
                    #line 1362
                    P_insymbol(nullptr);
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 1364
                    P_error(nullptr, 2);
                }
                
                { /* NOP */ }
            }
            else
            {
                #line 1368
                if((Sy == C_packedsy))
                {
                    #line 1369
                    P_insymbol(nullptr);
                    
                    #line 1370
                    if((!(Typedels & Sy)))
                    {
                        #line 1372
                        P_error(nullptr, 10);
                        
                        #line 1372
                        P_block_skip(_F._slink, (_F.Fsys + Typedels));
                    }
                }
                
                #line 1375
                if((Sy == C_arraysy))
                {
                    #line 1376
                    P_insymbol(nullptr);
                    
                    #line 1377
                    if((Sy == C_lbrack))
                    {
                        #line 1377
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1377
                        P_error(nullptr, 11);
                    }
                    
                    #line 1378
                    _F.Lsp1 = nullptr;
                    
                    #line 1379
                    do
                    {
                        #line 1379
                        {
                            _new(_F.Lsp._ptr);
                            _setValue(_F.Lsp._ptr->Form, C_arrays);
                        }
                        
                        #line 1381
                        (*_F.Lsp._ptr).Aeltype = _F.Lsp1;
                        
                        #line 1381
                        (*_F.Lsp._ptr).Inxtype = nullptr;
                        
                        #line 1381
                        (*_F.Lsp._ptr).Form = C_arrays;
                        
                        #line 1382
                        _F.Lsp1 = _F.Lsp;
                        
                        #line 1383
                        P_block_typ_simpletype(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)), _F.Lsp2, _F.Lsize);
                        
                        #line 1384
                        (*_F.Lsp1._ptr).Size = _F.Lsize;
                        
                        #line 1385
                        if((_F.Lsp2 != nullptr))
                        {
                            #line 1386
                            if(((*_F.Lsp2._ptr).Form <= C_subrange))
                            {
                                #line 1388
                                if((_F.Lsp2 == Realptr))
                                {
                                    #line 1389
                                    P_error(nullptr, 109);
                                    
                                    #line 1389
                                    _F.Lsp2 = nullptr;
                                }
                                else
                                {
                                    #line 1391
                                    if((_F.Lsp2 == Intptr))
                                    {
                                        #line 1392
                                        P_error(nullptr, 149);
                                        
                                        #line 1392
                                        _F.Lsp2 = nullptr;
                                    }
                                }
                                
                                #line 1393
                                (*_F.Lsp._ptr).Inxtype = _F.Lsp2;
                            }
                            else
                            {
                                #line 1395
                                P_error(nullptr, 113);
                                
                                #line 1395
                                _F.Lsp2 = nullptr;
                            }
                        }
                        
                        #line 1396
                        _F._slink->Test = (Sy != C_comma);
                        
                        #line 1397
                        if((!_F._slink->Test))
                        {
                            #line 1397
                            P_insymbol(nullptr);
                        }
                    }
                    while(!_F._slink->Test);
                    
                    #line 1399
                    if((Sy == C_rbrack))
                    {
                        #line 1399
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1399
                        P_error(nullptr, 12);
                    }
                    
                    #line 1400
                    if((Sy == C_ofsy))
                    {
                        #line 1400
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1400
                        P_error(nullptr, 8);
                    }
                    
                    #line 1401
                    P_block_typ(_F._slink, _F.Fsys, _F.Lsp, _F.Lsize);
                    
                    #line 1402
                    do
                    {
                        #line 1404
                        _F.Lsp2 = (*_F.Lsp1._ptr).Aeltype;
                        
                        #line 1404
                        (*_F.Lsp1._ptr).Aeltype = _F.Lsp;
                        
                        #line 1405
                        if(((*_F.Lsp1._ptr).Inxtype != nullptr))
                        {
                            #line 1406
                            P_getbounds(nullptr, (*_F.Lsp1._ptr).Inxtype, _F.Lmin, _F.Lmax);
                            
                            #line 1407
                            P_align(nullptr, _F.Lsp, _F.Lsize);
                            
                            #line 1408
                            _F.Lsize = (_F.Lsize * ((_F.Lmax - _F.Lmin) + 1));
                            
                            #line 1409
                            (*_F.Lsp1._ptr).Size = _F.Lsize;
                        }
                        
                        #line 1412
                        _F.Lsp = _F.Lsp1;
                        
                        #line 1412
                        _F.Lsp1 = _F.Lsp2;
                    }
                    while(!(_F.Lsp1 == nullptr));
                }
                else
                {
                    #line 1416
                    if((Sy == C_recordsy))
                    {
                        #line 1417
                        P_insymbol(nullptr);
                        
                        #line 1418
                        _F.Oldtop = Top;
                        
                        #line 1419
                        if((Top < C_displimit))
                        {
                            #line 1420
                            Top = (Top + 1);
                            
                            #line 1422
                            Display[Top].Fname = nullptr;
                            
                            #line 1423
                            Display[Top].Flabel = nullptr;
                            
                            #line 1424
                            Display[Top].Occur = C_rec;
                        }
                        else
                        {
                            #line 1427
                            P_error(nullptr, 250);
                        }
                        
                        #line 1428
                        _F.Displ = 0;
                        
                        #line 1429
                        P_block_typ_fieldlist(&_F, T_setofsys::C(((_F.Fsys - _setLiteral3) + _setLiteral4)), _F.Lsp1);
                        
                        #line 1430
                        {
                            _new(_F.Lsp._ptr);
                            _setValue(_F.Lsp._ptr->Form, C_records);
                        }
                        
                        #line 1432
                        (*_F.Lsp._ptr).Fstfld = Display[Top].Fname;
                        
                        #line 1433
                        (*_F.Lsp._ptr).Recvar = _F.Lsp1;
                        
                        #line 1433
                        (*_F.Lsp._ptr).Size = _F.Displ;
                        
                        #line 1433
                        (*_F.Lsp._ptr).Form = C_records;
                        
                        #line 1435
                        Top = _F.Oldtop;
                        
                        #line 1436
                        if((Sy == C_endsy))
                        {
                            #line 1436
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 1436
                            P_error(nullptr, 13);
                        }
                    }
                    else
                    {
                        #line 1439
                        if((Sy == C_setsy))
                        {
                            #line 1440
                            P_insymbol(nullptr);
                            
                            #line 1441
                            if((Sy == C_ofsy))
                            {
                                #line 1441
                                P_insymbol(nullptr);
                            }
                            else
                            {
                                #line 1441
                                P_error(nullptr, 8);
                            }
                            
                            #line 1442
                            P_block_typ_simpletype(&_F, _F.Fsys, _F.Lsp1, _F.Lsize);
                            
                            #line 1443
                            if((_F.Lsp1 != nullptr))
                            {
                                #line 1444
                                if(((*_F.Lsp1._ptr).Form > C_subrange))
                                {
                                    #line 1445
                                    P_error(nullptr, 115);
                                    
                                    #line 1445
                                    _F.Lsp1 = nullptr;
                                }
                                else
                                {
                                    #line 1447
                                    if((_F.Lsp1 == Realptr))
                                    {
                                        #line 1448
                                        P_error(nullptr, 114);
                                        
                                        #line 1448
                                        _F.Lsp1 = nullptr;
                                    }
                                    else
                                    {
                                        #line 1449
                                        if((_F.Lsp1 == Intptr))
                                        {
                                            #line 1450
                                            P_error(nullptr, 169);
                                            
                                            #line 1450
                                            _F.Lsp1 = nullptr;
                                        }
                                        else
                                        {
                                            #line 1452
                                            P_getbounds(nullptr, _F.Lsp1, _F.Lmin, _F.Lmax);
                                            
                                            #line 1453
                                            if(((_F.Lmin < C_setlow) || (_F.Lmax > C_sethigh)))
                                            {
                                                #line 1454
                                                P_error(nullptr, 169);
                                            }
                                            
                                            { /* NOP */ }
                                        }
                                    }
                                }
                            }
                            
                            #line 1456
                            {
                                _new(_F.Lsp._ptr);
                                _setValue(_F.Lsp._ptr->Form, C_power);
                            }
                            
                            #line 1458
                            (*_F.Lsp._ptr).Elset = _F.Lsp1;
                            
                            #line 1458
                            (*_F.Lsp._ptr).Size = C_setsize;
                            
                            #line 1458
                            (*_F.Lsp._ptr).Form = C_power;
                            
                            { /* NOP */ }
                        }
                        else
                        {
                            #line 1461
                            if((Sy == C_filesy))
                            {
                                #line 1462
                                P_insymbol(nullptr);
                                
                                #line 1463
                                P_error(nullptr, 399);
                                
                                #line 1463
                                P_block_skip(_F._slink, _F.Fsys);
                                
                                #line 1463
                                _F.Lsp = nullptr;
                            }
                        }
                    }
                }
                
                #line 1465
                _F.Fsp = _F.Lsp;
            }
        }
        
        #line 1467
        if((!(_F.Fsys & Sy)))
        {
            #line 1468
            P_error(nullptr, 6);
            
            #line 1468
            P_block_skip(_F._slink, _F.Fsys);
        }
    }
    else
    {
        #line 1470
        _F.Fsp = nullptr;
    }
    
    #line 1471
    if((_F.Fsp == nullptr))
    {
        #line 1471
        _F.Fsize = 1;
    }
    else
    {
        #line 1471
        _F.Fsize = (*_F.Fsp._ptr).Size;
    }
}


#line 1116
//================================================================================
// scope: block_typ_simpletype (level : 4)

// activation record
struct Frame_block_typ_simpletype
{
   Frame_block_typ* _slink;

    // parameters
    T_setofsys Fsys;
    T_stp& Fsp;
    T_addrrange& Fsize;

    // locals
    T_integer Lcnt;
    T_ctp Lcp;
    T_ctp Lcp1;
    T_stp Lsp;
    T_stp Lsp1;
    T_valu Lvalu;
    T_disprange Ttop;
};

// function body
void P_block_typ_simpletype(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_addrrange& Fsize)
{
    // prologue/frame definition
    Frame_block_typ_simpletype _F = { (Frame_block_typ*)_slink, Fsys, Fsp, Fsize };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_types);
    _setLiteral3.set(C_konst);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_colon);
    
    // subroutine body
    #line 1119
    _F.Fsize = 1;
    
    #line 1120
    if((!(Simptypebegsys & Sy)))
    {
        #line 1121
        P_error(nullptr, 1);
        
        #line 1121
        P_block_skip(_F._slink->_slink, (_F.Fsys + Simptypebegsys));
    }
    
    #line 1122
    if((Simptypebegsys & Sy))
    {
        #line 1124
        if((Sy == C_lparent))
        {
            #line 1125
            _F.Ttop = Top;
            
            #line 1126
            while((Display[Top].Occur != C_blck))
            {
                #line 1126
                Top = (Top - 1);
            }
            
            #line 1127
            {
                _new(_F.Lsp._ptr);
                _setValue(_F.Lsp._ptr->Form, C_scalar);
                _setValue(_F.Lsp._ptr->Scalkind, C_declared);
            }
            
            #line 1129
            (*_F.Lsp._ptr).Size = C_intsize;
            
            #line 1129
            (*_F.Lsp._ptr).Form = C_scalar;
            
            #line 1130
            (*_F.Lsp._ptr).Scalkind = C_declared;
            
            #line 1132
            _F.Lcp1 = nullptr;
            
            #line 1132
            _F.Lcnt = 0;
            
            #line 1133
            do
            {
                #line 1133
                P_insymbol(nullptr);
                
                #line 1134
                if((Sy == C_ident))
                {
                    #line 1135
                    {
                        _new(_F.Lcp._ptr);
                        _setValue(_F.Lcp._ptr->Klass, C_konst);
                    }
                    
                    #line 1137
                    (*_F.Lcp._ptr).Name = Id;
                    
                    #line 1137
                    (*_F.Lcp._ptr).Idtype = _F.Lsp;
                    
                    #line 1137
                    (*_F.Lcp._ptr).Next = _F.Lcp1;
                    
                    #line 1138
                    (*_F.Lcp._ptr).Values.Ival = _F.Lcnt;
                    
                    #line 1138
                    (*_F.Lcp._ptr).Klass = C_konst;
                    
                    #line 1140
                    P_enterid(nullptr, _F.Lcp);
                    
                    #line 1141
                    _F.Lcnt = (_F.Lcnt + 1);
                    
                    #line 1142
                    _F.Lcp1 = _F.Lcp;
                    
                    #line 1142
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1144
                    P_error(nullptr, 2);
                }
                
                #line 1145
                if((!((_F.Fsys + _setLiteral1) & Sy)))
                {
                    #line 1146
                    P_error(nullptr, 6);
                    
                    #line 1146
                    P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral2)));
                }
            }
            while(!(Sy != C_comma));
            
            #line 1148
            (*_F.Lsp._ptr).Fconst = _F.Lcp1;
            
            #line 1148
            Top = _F.Ttop;
            
            #line 1149
            if((Sy == C_rparent))
            {
                #line 1149
                P_insymbol(nullptr);
            }
            else
            {
                #line 1149
                P_error(nullptr, 4);
            }
        }
        else
        {
            #line 1153
            if((Sy == C_ident))
            {
                #line 1154
                P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp);
                
                #line 1155
                P_insymbol(nullptr);
                
                #line 1156
                if(((*_F.Lcp._ptr).Klass == C_konst))
                {
                    #line 1157
                    {
                        _new(_F.Lsp._ptr);
                        _setValue(_F.Lsp._ptr->Form, C_subrange);
                    }
                    
                    #line 1159
                    (*_F.Lsp._ptr).Rangetype = (*_F.Lcp._ptr).Idtype;
                    
                    #line 1159
                    (*_F.Lsp._ptr).Form = C_subrange;
                    
                    #line 1160
                    if(F_block_string(_F._slink->_slink, (*_F.Lsp._ptr).Rangetype))
                    {
                        #line 1161
                        P_error(nullptr, 148);
                        
                        #line 1161
                        (*_F.Lsp._ptr).Rangetype = nullptr;
                    }
                    
                    #line 1162
                    (*_F.Lsp._ptr).Min = (*_F.Lcp._ptr).Values;
                    
                    #line 1162
                    (*_F.Lsp._ptr).Size = C_intsize;
                    
                    #line 1164
                    if((Sy == C_colon))
                    {
                        #line 1164
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1164
                        P_error(nullptr, 5);
                    }
                    
                    #line 1165
                    P_block_constant(_F._slink->_slink, _F.Fsys, _F.Lsp1, _F.Lvalu);
                    
                    #line 1166
                    (*_F.Lsp._ptr).Max = _F.Lvalu;
                    
                    #line 1167
                    if(((*_F.Lsp._ptr).Rangetype != _F.Lsp1))
                    {
                        #line 1167
                        P_error(nullptr, 107);
                    }
                }
                else
                {
                    #line 1170
                    _F.Lsp = (*_F.Lcp._ptr).Idtype;
                    
                    #line 1171
                    if((_F.Lsp != nullptr))
                    {
                        #line 1171
                        _F.Fsize = (*_F.Lsp._ptr).Size;
                    }
                }
            }
            else
            {
                #line 1175
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_subrange);
                }
                
                #line 1175
                (*_F.Lsp._ptr).Form = C_subrange;
                
                #line 1176
                P_block_constant(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral4)), _F.Lsp1, _F.Lvalu);
                
                #line 1177
                if(F_block_string(_F._slink->_slink, _F.Lsp1))
                {
                    #line 1178
                    P_error(nullptr, 148);
                    
                    #line 1178
                    _F.Lsp1 = nullptr;
                }
                
                #line 1180
                (*_F.Lsp._ptr).Rangetype = _F.Lsp1;
                
                #line 1180
                (*_F.Lsp._ptr).Min = _F.Lvalu;
                
                #line 1180
                (*_F.Lsp._ptr).Size = C_intsize;
                
                #line 1181
                if((Sy == C_colon))
                {
                    #line 1181
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1181
                    P_error(nullptr, 5);
                }
                
                #line 1182
                P_block_constant(_F._slink->_slink, _F.Fsys, _F.Lsp1, _F.Lvalu);
                
                #line 1183
                (*_F.Lsp._ptr).Max = _F.Lvalu;
                
                #line 1184
                if(((*_F.Lsp._ptr).Rangetype != _F.Lsp1))
                {
                    #line 1184
                    P_error(nullptr, 107);
                }
            }
            
            #line 1186
            if((_F.Lsp != nullptr))
            {
                #line 1188
                if(((*_F.Lsp._ptr).Form == C_subrange))
                {
                    #line 1189
                    if(((*_F.Lsp._ptr).Rangetype != nullptr))
                    {
                        #line 1190
                        if(((*_F.Lsp._ptr).Rangetype == Realptr))
                        {
                            #line 1190
                            P_error(nullptr, 399);
                        }
                        else
                        {
                            #line 1192
                            if(((*_F.Lsp._ptr).Min.Ival > (*_F.Lsp._ptr).Max.Ival))
                            {
                                #line 1192
                                P_error(nullptr, 102);
                            }
                        }
                    }
                }
            }
        }
        
        #line 1194
        _F.Fsp = _F.Lsp;
        
        #line 1195
        if((!(_F.Fsys & Sy)))
        {
            #line 1196
            P_error(nullptr, 6);
            
            #line 1196
            P_block_skip(_F._slink->_slink, _F.Fsys);
        }
    }
    else
    {
        #line 1198
        _F.Fsp = nullptr;
    }
}


#line 1201
//================================================================================
// scope: block_typ_fieldlist (level : 4)

// activation record
struct Frame_block_typ_fieldlist
{
   Frame_block_typ* _slink;

    // parameters
    T_setofsys Fsys;
    T_stp& Frecvar;

    // locals
    T_ctp Lcp;
    T_ctp Lcp1;
    T_addrrange Lsize;
    T_stp Lsp;
    T_stp Lsp1;
    T_stp Lsp2;
    T_stp Lsp3;
    T_stp Lsp4;
    T_valu Lvalu;
    T_addrrange Maxsize;
    T_addrrange Minsize;
    T_ctp Nxt;
    T_ctp Nxt1;
};

// function body
void P_block_typ_fieldlist(void* _slink, T_setofsys Fsys, T_stp& Frecvar)
{
    // prologue/frame definition
    Frame_block_typ_fieldlist _F = { (Frame_block_typ*)_slink, Fsys, Frecvar };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    _setLiteral1.set(C_casesy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ident);
    _setLiteral2.set(C_casesy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_comma);
    _setLiteral3.set(C_colon);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_colon);
    _setLiteral4.set(C_semicolon);
    _setLiteral4.set(C_casesy);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_casesy);
    _setLiteral5.set(C_semicolon);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_ident);
    _setLiteral6.set(C_casesy);
    _setLiteral6.set(C_semicolon);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_ident);
    _setLiteral7.set(C_casesy);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_types);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_ofsy);
    _setLiteral9.set(C_lparent);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(C_ofsy);
    _setLiteral10.set(C_lparent);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_semicolon);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(C_comma);
    _setLiteral12.set(C_colon);
    _setLiteral12.set(C_lparent);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(C_rparent);
    _setLiteral13.set(C_semicolon);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_semicolon);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_semicolon);
    
    // subroutine body
    #line 1204
    _F.Nxt1 = nullptr;
    
    #line 1204
    _F.Lsp = nullptr;
    
    #line 1205
    if((!((_F.Fsys + _setLiteral1) & Sy)))
    {
        #line 1206
        P_error(nullptr, 19);
        
        #line 1206
        P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral2)));
    }
    
    #line 1207
    while((Sy == C_ident))
    {
        #line 1208
        _F.Nxt = _F.Nxt1;
        
        #line 1209
        do
        {
            #line 1210
            if((Sy == C_ident))
            {
                #line 1211
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_field);
                }
                
                #line 1213
                (*_F.Lcp._ptr).Name = Id;
                
                #line 1213
                (*_F.Lcp._ptr).Idtype = nullptr;
                
                #line 1213
                (*_F.Lcp._ptr).Next = _F.Nxt;
                
                #line 1214
                (*_F.Lcp._ptr).Klass = C_field;
                
                #line 1216
                _F.Nxt = _F.Lcp;
                
                #line 1217
                P_enterid(nullptr, _F.Lcp);
                
                #line 1218
                P_insymbol(nullptr);
            }
            else
            {
                #line 1220
                P_error(nullptr, 2);
            }
            
            #line 1221
            if((!(_setLiteral3 & Sy)))
            {
                #line 1222
                P_error(nullptr, 6);
                
                #line 1222
                P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral4)));
            }
            
            #line 1224
            _F._slink->_slink->Test = (Sy != C_comma);
            
            #line 1225
            if((!_F._slink->_slink->Test))
            {
                #line 1225
                P_insymbol(nullptr);
            }
        }
        while(!_F._slink->_slink->Test);
        
        #line 1227
        if((Sy == C_colon))
        {
            #line 1227
            P_insymbol(nullptr);
        }
        else
        {
            #line 1227
            P_error(nullptr, 5);
        }
        
        #line 1228
        P_block_typ(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral5)), _F.Lsp, _F.Lsize);
        
        #line 1229
        while((_F.Nxt != _F.Nxt1))
        {
            #line 1231
            P_align(nullptr, _F.Lsp, _F._slink->Displ);
            
            #line 1232
            (*_F.Nxt._ptr).Idtype = _F.Lsp;
            
            #line 1232
            (*_F.Nxt._ptr).Fldaddr = _F._slink->Displ;
            
            #line 1233
            _F.Nxt = (*_F.Nxt._ptr).Next;
            
            #line 1233
            _F._slink->Displ = (_F._slink->Displ + _F.Lsize);
        }
        
        #line 1235
        _F.Nxt1 = _F.Lcp;
        
        #line 1236
        while((Sy == C_semicolon))
        {
            #line 1237
            P_insymbol(nullptr);
            
            #line 1238
            if((!((_F.Fsys + _setLiteral6) & Sy)))
            {
                #line 1239
                P_error(nullptr, 19);
                
                #line 1239
                P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral7)));
            }
        }
    }
    
    #line 1242
    _F.Nxt = nullptr;
    
    #line 1243
    while((_F.Nxt1 != nullptr))
    {
        #line 1245
        _F.Lcp = (*_F.Nxt1._ptr).Next;
        
        #line 1245
        (*_F.Nxt1._ptr).Next = _F.Nxt;
        
        #line 1245
        _F.Nxt = _F.Nxt1;
        
        #line 1245
        _F.Nxt1 = _F.Lcp;
    }
    
    #line 1246
    if((Sy == C_casesy))
    {
        #line 1247
        {
            _new(_F.Lsp._ptr);
            _setValue(_F.Lsp._ptr->Form, C_tagfld);
        }
        
        #line 1249
        (*_F.Lsp._ptr).Tagfieldp = nullptr;
        
        #line 1249
        (*_F.Lsp._ptr).Fstvar = nullptr;
        
        #line 1249
        (*_F.Lsp._ptr).Form = C_tagfld;
        
        #line 1250
        _F.Frecvar = _F.Lsp;
        
        #line 1251
        P_insymbol(nullptr);
        
        #line 1252
        if((Sy == C_ident))
        {
            #line 1253
            {
                _new(_F.Lcp._ptr);
                _setValue(_F.Lcp._ptr->Klass, C_field);
            }
            
            #line 1255
            (*_F.Lcp._ptr).Name = Id;
            
            #line 1255
            (*_F.Lcp._ptr).Idtype = nullptr;
            
            #line 1255
            (*_F.Lcp._ptr).Klass = C_field;
            
            #line 1256
            (*_F.Lcp._ptr).Next = nullptr;
            
            #line 1256
            (*_F.Lcp._ptr).Fldaddr = _F._slink->Displ;
            
            #line 1258
            P_enterid(nullptr, _F.Lcp);
            
            #line 1259
            P_insymbol(nullptr);
            
            #line 1260
            if((Sy == C_colon))
            {
                #line 1260
                P_insymbol(nullptr);
            }
            else
            {
                #line 1260
                P_error(nullptr, 5);
            }
            
            #line 1261
            if((Sy == C_ident))
            {
                #line 1262
                P_searchid(nullptr, T_setofids::C(_setLiteral8), _F.Lcp1);
                
                #line 1263
                _F.Lsp1 = (*_F.Lcp1._ptr).Idtype;
                
                #line 1264
                if((_F.Lsp1 != nullptr))
                {
                    #line 1265
                    P_align(nullptr, _F.Lsp1, _F._slink->Displ);
                    
                    #line 1266
                    (*_F.Lcp._ptr).Fldaddr = _F._slink->Displ;
                    
                    #line 1267
                    _F._slink->Displ = (_F._slink->Displ + (*_F.Lsp1._ptr).Size);
                    
                    #line 1268
                    if((((*_F.Lsp1._ptr).Form <= C_subrange) || F_block_string(_F._slink->_slink, _F.Lsp1)))
                    {
                        #line 1269
                        if(F_block_comptypes(_F._slink->_slink, Realptr, _F.Lsp1))
                        {
                            #line 1269
                            P_error(nullptr, 109);
                        }
                        else
                        {
                            #line 1270
                            if(F_block_string(_F._slink->_slink, _F.Lsp1))
                            {
                                #line 1270
                                P_error(nullptr, 399);
                            }
                        }
                        
                        #line 1271
                        (*_F.Lcp._ptr).Idtype = _F.Lsp1;
                        
                        #line 1271
                        (*_F.Lsp._ptr).Tagfieldp = _F.Lcp;
                        
                        { /* NOP */ }
                    }
                    else
                    {
                        #line 1273
                        P_error(nullptr, 110);
                    }
                    
                    { /* NOP */ }
                }
                
                #line 1275
                P_insymbol(nullptr);
                
                { /* NOP */ }
            }
            else
            {
                #line 1277
                P_error(nullptr, 2);
                
                #line 1277
                P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral9)));
            }
        }
        else
        {
            #line 1279
            P_error(nullptr, 2);
            
            #line 1279
            P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral10)));
        }
        
        #line 1280
        (*_F.Lsp._ptr).Size = _F._slink->Displ;
        
        #line 1281
        if((Sy == C_ofsy))
        {
            #line 1281
            P_insymbol(nullptr);
        }
        else
        {
            #line 1281
            P_error(nullptr, 8);
        }
        
        #line 1282
        _F.Lsp1 = nullptr;
        
        #line 1282
        _F.Minsize = _F._slink->Displ;
        
        #line 1282
        _F.Maxsize = _F._slink->Displ;
        
        #line 1283
        do
        {
            #line 1283
            _F.Lsp2 = nullptr;
            
            #line 1284
            if((!((_F.Fsys + _setLiteral11) & Sy)))
            {
                #line 1286
                do
                {
                    #line 1286
                    P_block_constant(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral12)), _F.Lsp3, _F.Lvalu);
                    
                    #line 1287
                    if(((*_F.Lsp._ptr).Tagfieldp != nullptr))
                    {
                        #line 1288
                        if((!F_block_comptypes(_F._slink->_slink, (*(*_F.Lsp._ptr).Tagfieldp._ptr).Idtype, _F.Lsp3)))
                        {
                            #line 1288
                            P_error(nullptr, 111);
                        }
                    }
                    
                    #line 1289
                    {
                        _new(_F.Lsp3._ptr);
                        _setValue(_F.Lsp3._ptr->Form, C_variant);
                    }
                    
                    #line 1291
                    (*_F.Lsp3._ptr).Nxtvar = _F.Lsp1;
                    
                    #line 1291
                    (*_F.Lsp3._ptr).Subvar = _F.Lsp2;
                    
                    #line 1291
                    (*_F.Lsp3._ptr).Varval = _F.Lvalu;
                    
                    #line 1292
                    (*_F.Lsp3._ptr).Form = C_variant;
                    
                    #line 1294
                    _F.Lsp4 = _F.Lsp1;
                    
                    #line 1295
                    while((_F.Lsp4 != nullptr))
                    {
                        #line 1298
                        if(((*_F.Lsp4._ptr).Varval.Ival == _F.Lvalu.Ival))
                        {
                            #line 1298
                            P_error(nullptr, 178);
                        }
                        
                        #line 1299
                        _F.Lsp4 = (*_F.Lsp4._ptr).Nxtvar;
                    }
                    
                    #line 1301
                    _F.Lsp1 = _F.Lsp3;
                    
                    #line 1301
                    _F.Lsp2 = _F.Lsp3;
                    
                    #line 1302
                    _F._slink->_slink->Test = (Sy != C_comma);
                    
                    #line 1303
                    if((!_F._slink->_slink->Test))
                    {
                        #line 1303
                        P_insymbol(nullptr);
                    }
                }
                while(!_F._slink->_slink->Test);
                
                #line 1305
                if((Sy == C_colon))
                {
                    #line 1305
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1305
                    P_error(nullptr, 5);
                }
                
                #line 1306
                if((Sy == C_lparent))
                {
                    #line 1306
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1306
                    P_error(nullptr, 9);
                }
                
                #line 1307
                P_block_typ_fieldlist(_F._slink, T_setofsys::C((_F.Fsys + _setLiteral13)), _F.Lsp2);
                
                #line 1308
                if((_F._slink->Displ > _F.Maxsize))
                {
                    #line 1308
                    _F.Maxsize = _F._slink->Displ;
                }
                
                #line 1309
                while((_F.Lsp3 != nullptr))
                {
                    #line 1310
                    _F.Lsp4 = (*_F.Lsp3._ptr).Subvar;
                    
                    #line 1310
                    (*_F.Lsp3._ptr).Subvar = _F.Lsp2;
                    
                    #line 1311
                    (*_F.Lsp3._ptr).Size = _F._slink->Displ;
                    
                    #line 1312
                    _F.Lsp3 = _F.Lsp4;
                }
                
                #line 1314
                if((Sy == C_rparent))
                {
                    #line 1315
                    P_insymbol(nullptr);
                    
                    #line 1316
                    if((!((_F.Fsys + _setLiteral14) & Sy)))
                    {
                        #line 1317
                        P_error(nullptr, 6);
                        
                        #line 1317
                        P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral15)));
                    }
                }
                else
                {
                    #line 1319
                    P_error(nullptr, 4);
                }
                
                { /* NOP */ }
            }
            
            #line 1321
            _F._slink->_slink->Test = (Sy != C_semicolon);
            
            #line 1322
            if((!_F._slink->_slink->Test))
            {
                #line 1323
                _F._slink->Displ = _F.Minsize;
                
                #line 1324
                P_insymbol(nullptr);
            }
        }
        while(!_F._slink->_slink->Test);
        
        #line 1327
        _F._slink->Displ = _F.Maxsize;
        
        #line 1328
        (*_F.Lsp._ptr).Fstvar = _F.Lsp1;
        
        { /* NOP */ }
    }
    else
    {
        #line 1330
        _F.Frecvar = nullptr;
    }
}


#line 1474
//================================================================================
// scope: block_labeldeclaration (level : 3)

// activation record
struct Frame_block_labeldeclaration
{
   Frame_block* _slink;

    // locals
    T_integer Lbname;
    T_lbp Llp;
    T_boolean Redef;
};

// function body
void P_block_labeldeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_labeldeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_semicolon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_semicolon);
    
    // subroutine body
    #line 1477
    do
    {
        #line 1478
        if((Sy == C_intconst))
        {
            #line 1480
            _F.Llp = Display[Top].Flabel;
            
            #line 1480
            _F.Redef = C_false;
            
            #line 1481
            while(((_F.Llp != nullptr) && (!_F.Redef)))
            {
                #line 1482
                if(((*_F.Llp._ptr).Labval != Val.Ival))
                {
                    #line 1483
                    _F.Llp = (*_F.Llp._ptr).Nextlab;
                }
                else
                {
                    #line 1484
                    _F.Redef = C_true;
                    
                    #line 1484
                    P_error(nullptr, 166);
                }
            }
            
            #line 1485
            if((!_F.Redef))
            {
                #line 1486
                _new(_F.Llp._ptr);
                
                #line 1488
                (*_F.Llp._ptr).Labval = Val.Ival;
                
                #line 1488
                P_genlabel(nullptr, _F.Lbname);
                
                #line 1489
                (*_F.Llp._ptr).Defined = C_false;
                
                #line 1489
                (*_F.Llp._ptr).Nextlab = Display[Top].Flabel;
                
                #line 1489
                (*_F.Llp._ptr).Labname = _F.Lbname;
                
                #line 1491
                Display[Top].Flabel = _F.Llp;
            }
            
            #line 1493
            P_insymbol(nullptr);
        }
        else
        {
            #line 1495
            P_error(nullptr, 15);
        }
        
        #line 1496
        if((!((_F._slink->Fsys + _setLiteral1) & Sy)))
        {
            #line 1497
            P_error(nullptr, 6);
            
            #line 1497
            P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
        }
        
        #line 1498
        _F._slink->Test = (Sy != C_comma);
        
        #line 1499
        if((!_F._slink->Test))
        {
            #line 1499
            P_insymbol(nullptr);
        }
    }
    while(!_F._slink->Test);
    
    #line 1501
    if((Sy == C_semicolon))
    {
        #line 1501
        P_insymbol(nullptr);
    }
    else
    {
        #line 1501
        P_error(nullptr, 14);
    }
}


#line 1504
//================================================================================
// scope: block_constdeclaration (level : 3)

// activation record
struct Frame_block_constdeclaration
{
   Frame_block* _slink;

    // locals
    T_ctp Lcp;
    T_stp Lsp;
    T_valu Lvalu;
};

// function body
void P_block_constdeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_constdeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ident);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_ident);
    
    // subroutine body
    #line 1507
    if((Sy != C_ident))
    {
        #line 1508
        P_error(nullptr, 2);
        
        #line 1508
        P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    }
    
    #line 1509
    while((Sy == C_ident))
    {
        #line 1510
        {
            _new(_F.Lcp._ptr);
            _setValue(_F.Lcp._ptr->Klass, C_konst);
        }
        
        #line 1512
        (*_F.Lcp._ptr).Name = Id;
        
        #line 1512
        (*_F.Lcp._ptr).Idtype = nullptr;
        
        #line 1512
        (*_F.Lcp._ptr).Next = nullptr;
        
        #line 1512
        (*_F.Lcp._ptr).Klass = C_konst;
        
        #line 1513
        P_insymbol(nullptr);
        
        #line 1514
        if(((Sy == C_relop) && (Op == C_eqop)))
        {
            #line 1514
            P_insymbol(nullptr);
        }
        else
        {
            #line 1514
            P_error(nullptr, 16);
        }
        
        #line 1515
        P_block_constant(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lsp, _F.Lvalu);
        
        #line 1516
        P_enterid(nullptr, _F.Lcp);
        
        #line 1517
        (*_F.Lcp._ptr).Idtype = _F.Lsp;
        
        #line 1517
        (*_F.Lcp._ptr).Values = _F.Lvalu;
        
        #line 1518
        if((Sy == C_semicolon))
        {
            #line 1519
            P_insymbol(nullptr);
            
            #line 1520
            if((!((_F._slink->Fsys + _setLiteral3) & Sy)))
            {
                #line 1521
                P_error(nullptr, 6);
                
                #line 1521
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
            }
        }
        else
        {
            #line 1523
            P_error(nullptr, 14);
        }
    }
}


#line 1527
//================================================================================
// scope: block_typedeclaration (level : 3)

// activation record
struct Frame_block_typedeclaration
{
   Frame_block* _slink;

    // locals
    T_ctp Lcp;
    T_ctp Lcp1;
    T_ctp Lcp2;
    T_addrrange Lsize;
    T_stp Lsp;
};

// function body
void P_block_typedeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_typedeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ident);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_ident);
    
    // subroutine body
    #line 1530
    if((Sy != C_ident))
    {
        #line 1531
        P_error(nullptr, 2);
        
        #line 1531
        P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    }
    
    #line 1532
    while((Sy == C_ident))
    {
        #line 1533
        {
            _new(_F.Lcp._ptr);
            _setValue(_F.Lcp._ptr->Klass, C_types);
        }
        
        #line 1535
        (*_F.Lcp._ptr).Name = Id;
        
        #line 1535
        (*_F.Lcp._ptr).Idtype = nullptr;
        
        #line 1535
        (*_F.Lcp._ptr).Klass = C_types;
        
        #line 1536
        P_insymbol(nullptr);
        
        #line 1537
        if(((Sy == C_relop) && (Op == C_eqop)))
        {
            #line 1537
            P_insymbol(nullptr);
        }
        else
        {
            #line 1537
            P_error(nullptr, 16);
        }
        
        #line 1538
        P_block_typ(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lsp, _F.Lsize);
        
        #line 1539
        P_enterid(nullptr, _F.Lcp);
        
        #line 1540
        (*_F.Lcp._ptr).Idtype = _F.Lsp;
        
        #line 1542
        _F.Lcp1 = Fwptr;
        
        #line 1543
        while((_F.Lcp1 != nullptr))
        {
            #line 1545
            if(_strcmpEQ<8>((*_F.Lcp1._ptr).Name, (*_F.Lcp._ptr).Name))
            {
                #line 1546
                (*(*_F.Lcp1._ptr).Idtype._ptr).Eltype = (*_F.Lcp._ptr).Idtype;
                
                #line 1547
                if((_F.Lcp1 != Fwptr))
                {
                    #line 1548
                    (*_F.Lcp2._ptr).Next = (*_F.Lcp1._ptr).Next;
                }
                else
                {
                    #line 1549
                    Fwptr = (*_F.Lcp1._ptr).Next;
                }
                
                { /* NOP */ }
            }
            else
            {
                #line 1551
                _F.Lcp2 = _F.Lcp1;
            }
            
            #line 1552
            _F.Lcp1 = (*_F.Lcp1._ptr).Next;
        }
        
        #line 1554
        if((Sy == C_semicolon))
        {
            #line 1555
            P_insymbol(nullptr);
            
            #line 1556
            if((!((_F._slink->Fsys + _setLiteral3) & Sy)))
            {
                #line 1557
                P_error(nullptr, 6);
                
                #line 1557
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
            }
        }
        else
        {
            #line 1559
            P_error(nullptr, 14);
        }
    }
    
    #line 1561
    if((Fwptr != nullptr))
    {
        #line 1562
        P_error(nullptr, 117);
        
        #line 1562
        Output << _WRITELN;
        
        #line 1563
        do
        {
            #line 1563
            Output << " type-id " << (*Fwptr._ptr).Name << _WRITELN;
            
            #line 1564
            Fwptr = (*Fwptr._ptr).Next;
        }
        while(!(Fwptr == nullptr));
        
        #line 1566
        if((!Eol))
        {
            #line 1566
            Output << _format(' ', (Chcnt + 16), 0);
        }
    }
}


#line 1570
//================================================================================
// scope: block_vardeclaration (level : 3)

// activation record
struct Frame_block_vardeclaration
{
   Frame_block* _slink;

    // locals
    T_ctp Lcp;
    T_addrrange Lsize;
    T_stp Lsp;
    T_ctp Nxt;
};

// function body
void P_block_vardeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_vardeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_colon);
    _setLiteral2.set(C_semicolon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_semicolon);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_ident);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_ident);
    
    // subroutine body
    #line 1572
    _F.Nxt = nullptr;
    
    #line 1573
    do
    {
        #line 1574
        do
        {
            #line 1575
            if((Sy == C_ident))
            {
                #line 1576
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_vars);
                }
                
                #line 1578
                (*_F.Lcp._ptr).Name = Id;
                
                #line 1578
                (*_F.Lcp._ptr).Next = _F.Nxt;
                
                #line 1578
                (*_F.Lcp._ptr).Klass = C_vars;
                
                #line 1579
                (*_F.Lcp._ptr).Idtype = nullptr;
                
                #line 1579
                (*_F.Lcp._ptr).Vkind = C_actual;
                
                #line 1579
                (*_F.Lcp._ptr).Vlev = Level;
                
                #line 1581
                P_enterid(nullptr, _F.Lcp);
                
                #line 1582
                _F.Nxt = _F.Lcp;
                
                #line 1583
                P_insymbol(nullptr);
                
                { /* NOP */ }
            }
            else
            {
                #line 1585
                P_error(nullptr, 2);
            }
            
            #line 1586
            if((!(((_F._slink->Fsys + _setLiteral1) + Typedels) & Sy)))
            {
                #line 1587
                P_error(nullptr, 6);
                
                #line 1587
                P_block_skip(_F._slink, T_setofsys::C(((_F._slink->Fsys + _setLiteral2) + Typedels)));
            }
            
            #line 1588
            _F._slink->Test = (Sy != C_comma);
            
            #line 1589
            if((!_F._slink->Test))
            {
                #line 1589
                P_insymbol(nullptr);
            }
        }
        while(!_F._slink->Test);
        
        #line 1591
        if((Sy == C_colon))
        {
            #line 1591
            P_insymbol(nullptr);
        }
        else
        {
            #line 1591
            P_error(nullptr, 5);
        }
        
        #line 1592
        P_block_typ(_F._slink, T_setofsys::C(((_F._slink->Fsys + _setLiteral3) + Typedels)), _F.Lsp, _F.Lsize);
        
        #line 1593
        while((_F.Nxt != nullptr))
        {
            #line 1595
            P_align(nullptr, _F.Lsp, Lc);
            
            #line 1596
            (*_F.Nxt._ptr).Idtype = _F.Lsp;
            
            #line 1596
            (*_F.Nxt._ptr).Vaddr = Lc;
            
            #line 1597
            Lc = (Lc + _F.Lsize);
            
            #line 1597
            _F.Nxt = (*_F.Nxt._ptr).Next;
        }
        
        #line 1599
        if((Sy == C_semicolon))
        {
            #line 1600
            P_insymbol(nullptr);
            
            #line 1601
            if((!((_F._slink->Fsys + _setLiteral4) & Sy)))
            {
                #line 1602
                P_error(nullptr, 6);
                
                #line 1602
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral5)));
            }
        }
        else
        {
            #line 1604
            P_error(nullptr, 14);
        }
    }
    while(!((Sy != C_ident) && (!(Typedels & Sy))));
    
    #line 1606
    if((Fwptr != nullptr))
    {
        #line 1607
        P_error(nullptr, 117);
        
        #line 1607
        Output << _WRITELN;
        
        #line 1608
        do
        {
            #line 1608
            Output << " type-id " << (*Fwptr._ptr).Name << _WRITELN;
            
            #line 1609
            Fwptr = (*Fwptr._ptr).Next;
        }
        while(!(Fwptr == nullptr));
        
        #line 1611
        if((!Eol))
        {
            #line 1611
            Output << _format(' ', (Chcnt + 16), 0);
        }
    }
}


#line 1615
//================================================================================
// scope: block_procdeclaration (level : 3)

// types
typedef _T_Range<0, 10, signed __int8> T_block_procdeclaration_range_36;

// forward declarations
void P_block_procdeclaration_parameterlist(void* _slink, T_setofsys Fsy, T_ctp& Fpar);

// activation record
struct Frame_block_procdeclaration
{
   Frame_block* _slink;

    // parameters
    T_symbol Fsy;

    // locals
    T_boolean Forw;
    T_integer Lbname;
    T_addrrange Lcm;
    T_ctp Lcp;
    T_ctp Lcp1;
    T_addrrange Llc;
    T_stp Lsp;
    T_marktype Markp;
    T_block_procdeclaration_range_36 Oldlev;
    T_disprange Oldtop;
};

// function body
void P_block_procdeclaration(void* _slink, T_symbol Fsy)
{
    // prologue/frame definition
    Frame_block_procdeclaration _F = { (Frame_block*)_slink, Fsy };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_colon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_types);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_scalar);
    _setLiteral4.set(C_subrange);
    _setLiteral4.set(C_pointer);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_semicolon);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_beginsy);
    _setLiteral6.set(C_procsy);
    _setLiteral6.set(C_funcsy);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_beginsy);
    _setLiteral7.set(C_procsy);
    _setLiteral7.set(C_funcsy);
    
    // subroutine body
    #line 1790
    _F.Llc = Lc;
    
    #line 1790
    Lc = C_lcaftermarkstack;
    
    #line 1790
    _F.Forw = C_false;
    
    #line 1791
    if((Sy == C_ident))
    {
        #line 1792
        P_searchsection(nullptr, Display[Top].Fname, _F.Lcp);
        
        #line 1793
        if((_F.Lcp != nullptr))
        {
            #line 1795
            if(((*_F.Lcp._ptr).Klass == C_proc))
            {
                #line 1796
                _F.Forw = (((*_F.Lcp._ptr).Forwdecl && (_F.Fsy == C_procsy)) && ((*_F.Lcp._ptr).Pfkind == C_actual));
            }
            else
            {
                #line 1798
                if(((*_F.Lcp._ptr).Klass == C_func))
                {
                    #line 1799
                    _F.Forw = (((*_F.Lcp._ptr).Forwdecl && (_F.Fsy == C_funcsy)) && ((*_F.Lcp._ptr).Pfkind == C_actual));
                }
                else
                {
                    #line 1800
                    _F.Forw = C_false;
                }
            }
            
            #line 1801
            if((!_F.Forw))
            {
                #line 1801
                P_error(nullptr, 160);
            }
        }
        
        #line 1803
        if((!_F.Forw))
        {
            #line 1805
            if((_F.Fsy == C_procsy))
            {
                #line 1805
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_proc);
                    _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                    _setValue(_F.Lcp._ptr->Pfkind, C_actual);
                }
            }
            else
            {
                #line 1806
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_func);
                    _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                    _setValue(_F.Lcp._ptr->Pfkind, C_actual);
                }
            }
            
            #line 1808
            (*_F.Lcp._ptr).Name = Id;
            
            #line 1808
            (*_F.Lcp._ptr).Idtype = nullptr;
            
            #line 1809
            (*_F.Lcp._ptr).Externl = C_false;
            
            #line 1809
            (*_F.Lcp._ptr).Pflev = Level;
            
            #line 1809
            P_genlabel(nullptr, _F.Lbname);
            
            #line 1810
            (*_F.Lcp._ptr).Pfdeckind = C_declared;
            
            #line 1810
            (*_F.Lcp._ptr).Pfkind = C_actual;
            
            #line 1810
            (*_F.Lcp._ptr).Pfname = _F.Lbname;
            
            #line 1811
            if((_F.Fsy == C_procsy))
            {
                #line 1811
                (*_F.Lcp._ptr).Klass = C_proc;
            }
            else
            {
                #line 1812
                (*_F.Lcp._ptr).Klass = C_func;
            }
            
            #line 1814
            P_enterid(nullptr, _F.Lcp);
        }
        else
        {
            #line 1817
            _F.Lcp1 = (*_F.Lcp._ptr).Next;
            
            #line 1818
            while((_F.Lcp1 != nullptr))
            {
                #line 1821
                if(((*_F.Lcp1._ptr).Klass == C_vars))
                {
                    #line 1822
                    if(((*_F.Lcp1._ptr).Idtype != nullptr))
                    {
                        #line 1823
                        _F.Lcm = ((*_F.Lcp1._ptr).Vaddr + (*(*_F.Lcp1._ptr).Idtype._ptr).Size);
                        
                        #line 1824
                        if((_F.Lcm > Lc))
                        {
                            #line 1824
                            Lc = _F.Lcm;
                        }
                    }
                }
                
                #line 1826
                _F.Lcp1 = (*_F.Lcp1._ptr).Next;
            }
        }
        
        #line 1829
        P_insymbol(nullptr);
    }
    else
    {
        #line 1832
        P_error(nullptr, 2);
        
        #line 1832
        _F.Lcp = Ufctptr;
    }
    
    #line 1833
    _F.Oldlev = Level;
    
    #line 1833
    _F.Oldtop = Top;
    
    #line 1834
    if((Level < C_maxlevel))
    {
        #line 1834
        Level = (Level + 1);
    }
    else
    {
        #line 1834
        P_error(nullptr, 251);
    }
    
    #line 1835
    if((Top < C_displimit))
    {
        #line 1836
        Top = (Top + 1);
        
        #line 1839
        if(_F.Forw)
        {
            #line 1839
            Display[Top].Fname = (*_F.Lcp._ptr).Next;
        }
        else
        {
            #line 1840
            Display[Top].Fname = nullptr;
        }
        
        #line 1841
        Display[Top].Flabel = nullptr;
        
        #line 1842
        Display[Top].Occur = C_blck;
    }
    else
    {
        #line 1845
        P_error(nullptr, 250);
    }
    
    #line 1846
    if((_F.Fsy == C_procsy))
    {
        #line 1847
        P_block_procdeclaration_parameterlist(&_F, T_setofsys::C(_setLiteral1), _F.Lcp1);
        
        #line 1848
        if((!_F.Forw))
        {
            #line 1848
            (*_F.Lcp._ptr).Next = _F.Lcp1;
        }
    }
    else
    {
        #line 1851
        P_block_procdeclaration_parameterlist(&_F, T_setofsys::C(_setLiteral2), _F.Lcp1);
        
        #line 1852
        if((!_F.Forw))
        {
            #line 1852
            (*_F.Lcp._ptr).Next = _F.Lcp1;
        }
        
        #line 1853
        if((Sy == C_colon))
        {
            #line 1854
            P_insymbol(nullptr);
            
            #line 1855
            if((Sy == C_ident))
            {
                #line 1856
                if(_F.Forw)
                {
                    #line 1856
                    P_error(nullptr, 122);
                }
                
                #line 1857
                P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp1);
                
                #line 1858
                _F.Lsp = (*_F.Lcp1._ptr).Idtype;
                
                #line 1859
                (*_F.Lcp._ptr).Idtype = _F.Lsp;
                
                #line 1860
                if((_F.Lsp != nullptr))
                {
                    #line 1861
                    if((!(_setLiteral4 & (*_F.Lsp._ptr).Form)))
                    {
                        #line 1862
                        P_error(nullptr, 120);
                        
                        #line 1862
                        (*_F.Lcp._ptr).Idtype = nullptr;
                    }
                }
                
                #line 1863
                P_insymbol(nullptr);
            }
            else
            {
                #line 1865
                P_error(nullptr, 2);
                
                #line 1865
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral5)));
            }
        }
        else
        {
            #line 1868
            if((!_F.Forw))
            {
                #line 1868
                P_error(nullptr, 123);
            }
        }
    }
    
    #line 1870
    if((Sy == C_semicolon))
    {
        #line 1870
        P_insymbol(nullptr);
    }
    else
    {
        #line 1870
        P_error(nullptr, 14);
    }
    
    #line 1871
    if((Sy == C_forwardsy))
    {
        #line 1873
        if(_F.Forw)
        {
            #line 1873
            P_error(nullptr, 161);
        }
        else
        {
            #line 1874
            (*_F.Lcp._ptr).Forwdecl = C_true;
        }
        
        #line 1875
        P_insymbol(nullptr);
        
        #line 1876
        if((Sy == C_semicolon))
        {
            #line 1876
            P_insymbol(nullptr);
        }
        else
        {
            #line 1876
            P_error(nullptr, 14);
        }
        
        #line 1877
        if((!(_F._slink->Fsys & Sy)))
        {
            #line 1878
            P_error(nullptr, 6);
            
            #line 1878
            P_block_skip(_F._slink, _F._slink->Fsys);
        }
    }
    else
    {
        #line 1881
        (*_F.Lcp._ptr).Forwdecl = C_false;
        
        #line 1881
        P_mark(nullptr, _F.Markp);
        
        #line 1882
        do
        {
            #line 1882
            P_block(nullptr, _F._slink->Fsys, C_semicolon, _F.Lcp);
            
            #line 1883
            if((Sy == C_semicolon))
            {
                #line 1884
                if(Prtables)
                {
                    #line 1884
                    P_printtables(nullptr, C_false);
                }
                
                #line 1884
                P_insymbol(nullptr);
                
                #line 1885
                if((!(_setLiteral6 & Sy)))
                {
                    #line 1886
                    P_error(nullptr, 6);
                    
                    #line 1886
                    P_block_skip(_F._slink, _F._slink->Fsys);
                }
            }
            else
            {
                #line 1888
                P_error(nullptr, 14);
            }
        }
        while(!((_setLiteral7 & Sy) || _eof(Source)));
        
        #line 1890
        P_release(nullptr, _F.Markp);
        
        { /* NOP */ }
    }
    
    #line 1892
    Level = _F.Oldlev;
    
    #line 1892
    Top = _F.Oldtop;
    
    #line 1892
    Lc = _F.Llc;
    
    { /* NOP */ }
}


#line 1620
//================================================================================
// scope: block_procdeclaration_parameterlist (level : 4)

// activation record
struct Frame_block_procdeclaration_parameterlist
{
   Frame_block_procdeclaration* _slink;

    // parameters
    T_setofsys Fsy;
    T_ctp& Fpar;

    // locals
    T_integer Count;
    T_ctp Lcp;
    T_ctp Lcp1;
    T_ctp Lcp2;
    T_ctp Lcp3;
    T_idkind Lkind;
    T_addrrange Llc;
    T_addrrange Lsize;
    T_stp Lsp;
};

// function body
void P_block_procdeclaration_parameterlist(void* _slink, T_setofsys Fsy, T_ctp& Fpar)
{
    // prologue/frame definition
    Frame_block_procdeclaration_parameterlist _F = { (Frame_block_procdeclaration*)_slink, Fsy, Fpar };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_lparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_lparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ident);
    _setLiteral3.set(C_varsy);
    _setLiteral3.set(C_procsy);
    _setLiteral3.set(C_funcsy);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_ident);
    _setLiteral4.set(C_rparent);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_comma);
    _setLiteral5.set(C_semicolon);
    _setLiteral5.set(C_rparent);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_comma);
    _setLiteral6.set(C_semicolon);
    _setLiteral6.set(C_rparent);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_comma);
    _setLiteral7.set(C_colon);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_comma);
    _setLiteral8.set(C_semicolon);
    _setLiteral8.set(C_rparent);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_types);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(C_scalar);
    _setLiteral10.set(C_subrange);
    _setLiteral10.set(C_pointer);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_semicolon);
    _setLiteral11.set(C_rparent);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(C_semicolon);
    _setLiteral12.set(C_rparent);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(C_comma);
    _setLiteral13.set(C_colon);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_comma);
    _setLiteral14.set(C_semicolon);
    _setLiteral14.set(C_rparent);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_types);
    
    _T_GenericSet _setLiteral16;
    _setLiteral16.set(C_semicolon);
    _setLiteral16.set(C_rparent);
    
    _T_GenericSet _setLiteral17;
    _setLiteral17.set(C_semicolon);
    _setLiteral17.set(C_rparent);
    
    _T_GenericSet _setLiteral18;
    _setLiteral18.set(C_ident);
    _setLiteral18.set(C_varsy);
    _setLiteral18.set(C_procsy);
    _setLiteral18.set(C_funcsy);
    
    _T_GenericSet _setLiteral19;
    _setLiteral19.set(C_ident);
    _setLiteral19.set(C_rparent);
    
    _T_GenericSet _setLiteral20;
    _setLiteral20.set(C_ident);
    _setLiteral20.set(C_varsy);
    _setLiteral20.set(C_procsy);
    _setLiteral20.set(C_funcsy);
    
    // subroutine body
    #line 1623
    _F.Lcp1 = nullptr;
    
    #line 1624
    if((!((_F.Fsy + _setLiteral1) & Sy)))
    {
        #line 1625
        P_error(nullptr, 7);
        
        #line 1625
        P_block_skip(_F._slink->_slink, T_setofsys::C(((_F._slink->_slink->Fsys + _F.Fsy) + _setLiteral2)));
    }
    
    #line 1626
    if((Sy == C_lparent))
    {
        #line 1627
        if(_F._slink->Forw)
        {
            #line 1627
            P_error(nullptr, 119);
        }
        
        #line 1628
        P_insymbol(nullptr);
        
        #line 1629
        if((!(_setLiteral3 & Sy)))
        {
            #line 1630
            P_error(nullptr, 7);
            
            #line 1630
            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral4)));
        }
        
        #line 1631
        while((_setLiteral20 & Sy))
        {
            #line 1633
            if((Sy == C_procsy))
            {
                #line 1634
                P_error(nullptr, 399);
                
                #line 1635
                do
                {
                    #line 1635
                    P_insymbol(nullptr);
                    
                    #line 1636
                    if((Sy == C_ident))
                    {
                        #line 1637
                        {
                            _new(_F.Lcp._ptr);
                            _setValue(_F.Lcp._ptr->Klass, C_proc);
                            _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                            _setValue(_F.Lcp._ptr->Pfkind, C_formal);
                        }
                        
                        #line 1639
                        (*_F.Lcp._ptr).Name = Id;
                        
                        #line 1639
                        (*_F.Lcp._ptr).Idtype = nullptr;
                        
                        #line 1639
                        (*_F.Lcp._ptr).Next = _F.Lcp1;
                        
                        #line 1640
                        (*_F.Lcp._ptr).Pflev = Level;
                        
                        #line 1641
                        (*_F.Lcp._ptr).Klass = C_proc;
                        
                        #line 1641
                        (*_F.Lcp._ptr).Pfdeckind = C_declared;
                        
                        #line 1641
                        (*_F.Lcp._ptr).Pfkind = C_formal;
                        
                        #line 1643
                        P_enterid(nullptr, _F.Lcp);
                        
                        #line 1644
                        _F.Lcp1 = _F.Lcp;
                        
                        #line 1645
                        P_align(nullptr, Parmptr, Lc);
                        
                        #line 1647
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1649
                        P_error(nullptr, 2);
                    }
                    
                    #line 1650
                    if((!((_F._slink->_slink->Fsys + _setLiteral5) & Sy)))
                    {
                        #line 1651
                        P_error(nullptr, 7);
                        
                        #line 1651
                        P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral6)));
                    }
                }
                while(!(Sy != C_comma));
            }
            else
            {
                #line 1656
                if((Sy == C_funcsy))
                {
                    #line 1657
                    P_error(nullptr, 399);
                    
                    #line 1657
                    _F.Lcp2 = nullptr;
                    
                    #line 1658
                    do
                    {
                        #line 1658
                        P_insymbol(nullptr);
                        
                        #line 1659
                        if((Sy == C_ident))
                        {
                            #line 1660
                            {
                                _new(_F.Lcp._ptr);
                                _setValue(_F.Lcp._ptr->Klass, C_func);
                                _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                                _setValue(_F.Lcp._ptr->Pfkind, C_formal);
                            }
                            
                            #line 1662
                            (*_F.Lcp._ptr).Name = Id;
                            
                            #line 1662
                            (*_F.Lcp._ptr).Idtype = nullptr;
                            
                            #line 1662
                            (*_F.Lcp._ptr).Next = _F.Lcp2;
                            
                            #line 1663
                            (*_F.Lcp._ptr).Pflev = Level;
                            
                            #line 1664
                            (*_F.Lcp._ptr).Klass = C_func;
                            
                            #line 1664
                            (*_F.Lcp._ptr).Pfdeckind = C_declared;
                            
                            #line 1665
                            (*_F.Lcp._ptr).Pfkind = C_formal;
                            
                            #line 1667
                            P_enterid(nullptr, _F.Lcp);
                            
                            #line 1668
                            _F.Lcp2 = _F.Lcp;
                            
                            #line 1669
                            P_align(nullptr, Parmptr, Lc);
                            
                            #line 1671
                            P_insymbol(nullptr);
                            
                            { /* NOP */ }
                        }
                        
                        #line 1673
                        if((!((_setLiteral7 + _F._slink->_slink->Fsys) & Sy)))
                        {
                            #line 1674
                            P_error(nullptr, 7);
                            
                            #line 1674
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral8)));
                        }
                    }
                    while(!(Sy != C_comma));
                    
                    #line 1677
                    if((Sy == C_colon))
                    {
                        #line 1678
                        P_insymbol(nullptr);
                        
                        #line 1679
                        if((Sy == C_ident))
                        {
                            #line 1680
                            P_searchid(nullptr, T_setofids::C(_setLiteral9), _F.Lcp);
                            
                            #line 1681
                            _F.Lsp = (*_F.Lcp._ptr).Idtype;
                            
                            #line 1682
                            if((_F.Lsp != nullptr))
                            {
                                #line 1683
                                if((!(_setLiteral10 & (*_F.Lsp._ptr).Form)))
                                {
                                    #line 1684
                                    P_error(nullptr, 120);
                                    
                                    #line 1684
                                    _F.Lsp = nullptr;
                                }
                            }
                            
                            #line 1685
                            _F.Lcp3 = _F.Lcp2;
                            
                            #line 1686
                            while((_F.Lcp2 != nullptr))
                            {
                                #line 1687
                                (*_F.Lcp2._ptr).Idtype = _F.Lsp;
                                
                                #line 1687
                                _F.Lcp = _F.Lcp2;
                                
                                #line 1688
                                _F.Lcp2 = (*_F.Lcp2._ptr).Next;
                            }
                            
                            #line 1690
                            (*_F.Lcp._ptr).Next = _F.Lcp1;
                            
                            #line 1690
                            _F.Lcp1 = _F.Lcp3;
                            
                            #line 1691
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 1693
                            P_error(nullptr, 2);
                        }
                        
                        #line 1694
                        if((!((_F._slink->_slink->Fsys + _setLiteral11) & Sy)))
                        {
                            #line 1695
                            P_error(nullptr, 7);
                            
                            #line 1695
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral12)));
                        }
                    }
                    else
                    {
                        #line 1697
                        P_error(nullptr, 5);
                    }
                }
                else
                {
                    #line 1701
                    if((Sy == C_varsy))
                    {
                        #line 1702
                        _F.Lkind = C_formal;
                        
                        #line 1702
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1703
                        _F.Lkind = C_actual;
                    }
                    
                    #line 1704
                    _F.Lcp2 = nullptr;
                    
                    #line 1705
                    _F.Count = 0;
                    
                    #line 1706
                    do
                    {
                        #line 1707
                        if((Sy == C_ident))
                        {
                            #line 1708
                            {
                                _new(_F.Lcp._ptr);
                                _setValue(_F.Lcp._ptr->Klass, C_vars);
                            }
                            
                            #line 1710
                            (*_F.Lcp._ptr).Name = Id;
                            
                            #line 1710
                            (*_F.Lcp._ptr).Idtype = nullptr;
                            
                            #line 1710
                            (*_F.Lcp._ptr).Klass = C_vars;
                            
                            #line 1711
                            (*_F.Lcp._ptr).Vkind = _F.Lkind;
                            
                            #line 1711
                            (*_F.Lcp._ptr).Next = _F.Lcp2;
                            
                            #line 1711
                            (*_F.Lcp._ptr).Vlev = Level;
                            
                            { /* NOP */ }
                            
                            #line 1713
                            P_enterid(nullptr, _F.Lcp);
                            
                            #line 1714
                            _F.Lcp2 = _F.Lcp;
                            
                            #line 1714
                            _F.Count = (_F.Count + 1);
                            
                            #line 1715
                            P_insymbol(nullptr);
                            
                            { /* NOP */ }
                        }
                        
                        #line 1717
                        if((!((_setLiteral13 + _F._slink->_slink->Fsys) & Sy)))
                        {
                            #line 1718
                            P_error(nullptr, 7);
                            
                            #line 1718
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral14)));
                        }
                        
                        #line 1720
                        _F._slink->_slink->Test = (Sy != C_comma);
                        
                        #line 1721
                        if((!_F._slink->_slink->Test))
                        {
                            #line 1721
                            P_insymbol(nullptr);
                        }
                    }
                    while(!_F._slink->_slink->Test);
                    
                    #line 1723
                    if((Sy == C_colon))
                    {
                        #line 1724
                        P_insymbol(nullptr);
                        
                        #line 1725
                        if((Sy == C_ident))
                        {
                            #line 1726
                            P_searchid(nullptr, T_setofids::C(_setLiteral15), _F.Lcp);
                            
                            #line 1727
                            _F.Lsp = (*_F.Lcp._ptr).Idtype;
                            
                            #line 1728
                            _F.Lsize = C_ptrsize;
                            
                            #line 1729
                            if((_F.Lsp != nullptr))
                            {
                                #line 1730
                                if((_F.Lkind == C_actual))
                                {
                                    #line 1731
                                    if(((*_F.Lsp._ptr).Form <= C_power))
                                    {
                                        #line 1731
                                        _F.Lsize = (*_F.Lsp._ptr).Size;
                                    }
                                    else
                                    {
                                        #line 1732
                                        if(((*_F.Lsp._ptr).Form == C_files))
                                        {
                                            #line 1732
                                            P_error(nullptr, 121);
                                        }
                                    }
                                }
                            }
                            
                            #line 1733
                            P_align(nullptr, Parmptr, _F.Lsize);
                            
                            #line 1734
                            _F.Lcp3 = _F.Lcp2;
                            
                            #line 1735
                            P_align(nullptr, Parmptr, Lc);
                            
                            #line 1736
                            Lc = (Lc + (_F.Count * _F.Lsize));
                            
                            #line 1737
                            _F.Llc = Lc;
                            
                            #line 1738
                            while((_F.Lcp2 != nullptr))
                            {
                                #line 1739
                                _F.Lcp = _F.Lcp2;
                                
                                #line 1741
                                (*_F.Lcp2._ptr).Idtype = _F.Lsp;
                                
                                #line 1742
                                _F.Llc = (_F.Llc - _F.Lsize);
                                
                                #line 1743
                                (*_F.Lcp2._ptr).Vaddr = _F.Llc;
                                
                                { /* NOP */ }
                                
                                #line 1745
                                _F.Lcp2 = (*_F.Lcp2._ptr).Next;
                            }
                            
                            #line 1747
                            (*_F.Lcp._ptr).Next = _F.Lcp1;
                            
                            #line 1747
                            _F.Lcp1 = _F.Lcp3;
                            
                            #line 1748
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 1750
                            P_error(nullptr, 2);
                        }
                        
                        #line 1751
                        if((!((_F._slink->_slink->Fsys + _setLiteral16) & Sy)))
                        {
                            #line 1752
                            P_error(nullptr, 7);
                            
                            #line 1752
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral17)));
                        }
                    }
                    else
                    {
                        #line 1754
                        P_error(nullptr, 5);
                    }
                    
                    { /* NOP */ }
                }
                
                { /* NOP */ }
            }
            
            #line 1757
            if((Sy == C_semicolon))
            {
                #line 1758
                P_insymbol(nullptr);
                
                #line 1759
                if((!((_F._slink->_slink->Fsys + _setLiteral18) & Sy)))
                {
                    #line 1760
                    P_error(nullptr, 7);
                    
                    #line 1760
                    P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral19)));
                }
            }
        }
        
        #line 1763
        if((Sy == C_rparent))
        {
            #line 1764
            P_insymbol(nullptr);
            
            #line 1765
            if((!((_F.Fsy + _F._slink->_slink->Fsys) & Sy)))
            {
                #line 1766
                P_error(nullptr, 6);
                
                #line 1766
                P_block_skip(_F._slink->_slink, (_F.Fsy + _F._slink->_slink->Fsys));
            }
        }
        else
        {
            #line 1768
            P_error(nullptr, 4);
        }
        
        #line 1769
        _F.Lcp3 = nullptr;
        
        #line 1772
        while((_F.Lcp1 != nullptr))
        {
            #line 1774
            _F.Lcp2 = (*_F.Lcp1._ptr).Next;
            
            #line 1774
            (*_F.Lcp1._ptr).Next = _F.Lcp3;
            
            #line 1775
            if(((*_F.Lcp1._ptr).Klass == C_vars))
            {
                #line 1776
                if(((*_F.Lcp1._ptr).Idtype != nullptr))
                {
                    #line 1777
                    if((((*_F.Lcp1._ptr).Vkind == C_actual) && ((*(*_F.Lcp1._ptr).Idtype._ptr).Form > C_power)))
                    {
                        #line 1778
                        P_align(nullptr, (*_F.Lcp1._ptr).Idtype, Lc);
                        
                        #line 1779
                        (*_F.Lcp1._ptr).Vaddr = Lc;
                        
                        #line 1780
                        Lc = (Lc + (*(*_F.Lcp1._ptr).Idtype._ptr).Size);
                        
                        { /* NOP */ }
                    }
                }
            }
            
            #line 1782
            _F.Lcp3 = _F.Lcp1;
            
            #line 1782
            _F.Lcp1 = _F.Lcp2;
        }
        
        #line 1784
        _F.Fpar = _F.Lcp3;
    }
    else
    {
        #line 1786
        _F.Fpar = nullptr;
    }
}


#line 1895
//================================================================================
// scope: block_body (level : 3)

// types
typedef _T_Array< 1, 65, T_csp > T_block_body_array_37;
typedef _T_Range<0, 65, signed __int8> T_block_body_range_38;
typedef _T_Range<0, 63, signed __int8> T_block_body_oprange;

// forward declarations
void P_block_body_mes(void* _slink, T_integer i);
void P_block_body_putic(void* _slink);
void P_block_body_gen0(void* _slink, T_block_body_oprange Fop);
void P_block_body_gen1(void* _slink, T_block_body_oprange Fop, T_integer Fp2);
void P_block_body_gen2(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2);
void P_block_body_gentypindicator(void* _slink, T_stp Fsp);
void P_block_body_gen0t(void* _slink, T_block_body_oprange Fop, T_stp Fsp);
void P_block_body_gen1t(void* _slink, T_block_body_oprange Fop, T_integer Fp2, T_stp Fsp);
void P_block_body_gen2t(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2, T_stp Fsp);
void P_block_body_load(void* _slink);
void P_block_body_store(void* _slink, T_attr& Fattr);
void P_block_body_loadaddress(void* _slink);
void P_block_body_genfjp(void* _slink, T_integer Faddr);
void P_block_body_genujpxjp(void* _slink, T_block_body_oprange Fop, T_integer Fp2);
void P_block_body_gencupent(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2);
void P_block_body_checkbnds(void* _slink, T_stp Fsp);
void P_block_body_putlabel(void* _slink, T_integer Labname);
void P_block_body_statement(void* _slink, T_setofsys Fsys);

// constants
const T_integer C_block_body_cixmax = 1000;
const T_integer C_block_body_cstoccmax = 65;

// activation record
struct Frame_block_body
{
   Frame_block* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_block_body_array_37 Cstptr;
    T_block_body_range_38 Cstptrix;
    T_integer Entname;
    T_addrrange Lcmax;
    T_ctp Lcp;
    T_addrrange Llc1;
    T_ctp Llcp;
    T_lbp Llp;
    T_alpha Saveid;
    T_integer Segsize;
    T_integer Stacktop;
    T_integer Topmax;
    T_integer Topnew;
};

// function body
void P_block_body(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body _F = { (Frame_block*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_endsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_vars);
    
    // subroutine body
    #line 3557
    if((_F._slink->Fprocp != nullptr))
    {
        #line 3557
        _F.Entname = (*_F._slink->Fprocp._ptr).Pfname;
    }
    else
    {
        #line 3558
        P_genlabel(nullptr, _F.Entname);
    }
    
    #line 3559
    _F.Cstptrix = 0;
    
    #line 3559
    _F.Topnew = C_lcaftermarkstack;
    
    #line 3559
    _F.Topmax = C_lcaftermarkstack;
    
    #line 3560
    P_block_body_putlabel(&_F, _F.Entname);
    
    #line 3560
    P_genlabel(nullptr, _F.Segsize);
    
    #line 3560
    P_genlabel(nullptr, _F.Stacktop);
    
    #line 3561
    P_block_body_gencupent(&_F, T_block_body_oprange::C(32), 1, _F.Segsize);
    
    #line 3561
    P_block_body_gencupent(&_F, T_block_body_oprange::C(32), 2, _F.Stacktop);
    
    #line 3562
    if((_F._slink->Fprocp != nullptr))
    {
        #line 3563
        _F.Llc1 = C_lcaftermarkstack;
        
        #line 3564
        _F.Lcp = (*_F._slink->Fprocp._ptr).Next;
        
        #line 3565
        while((_F.Lcp != nullptr))
        {
            #line 3568
            P_align(nullptr, Parmptr, _F.Llc1);
            
            #line 3569
            if(((*_F.Lcp._ptr).Klass == C_vars))
            {
                #line 3570
                if(((*_F.Lcp._ptr).Idtype != nullptr))
                {
                    #line 3571
                    if(((*(*_F.Lcp._ptr).Idtype._ptr).Form > C_power))
                    {
                        #line 3573
                        if(((*_F.Lcp._ptr).Vkind == C_actual))
                        {
                            #line 3575
                            P_block_body_gen2(&_F, T_block_body_oprange::C(50), 0, (*_F.Lcp._ptr).Vaddr);
                            
                            #line 3576
                            P_block_body_gen2t(&_F, T_block_body_oprange::C(54), 0, _F.Llc1, Nilptr);
                            
                            #line 3577
                            P_block_body_gen1(&_F, T_block_body_oprange::C(40), (*(*_F.Lcp._ptr).Idtype._ptr).Size);
                            
                            { /* NOP */ }
                        }
                        
                        #line 3579
                        _F.Llc1 = (_F.Llc1 + C_ptrsize);
                    }
                    else
                    {
                        #line 3581
                        _F.Llc1 = (_F.Llc1 + (*(*_F.Lcp._ptr).Idtype._ptr).Size);
                    }
                }
            }
            
            #line 3582
            _F.Lcp = (*_F.Lcp._ptr).Next;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    #line 3585
    _F.Lcmax = Lc;
    
    #line 3586
    do
    {
        #line 3587
        do
        {
            #line 3587
            P_block_body_statement(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)));
        }
        while(!(!(Statbegsys & Sy)));
        
        #line 3589
        _F._slink->Test = (Sy != C_semicolon);
        
        #line 3590
        if((!_F._slink->Test))
        {
            #line 3590
            P_insymbol(nullptr);
        }
    }
    while(!_F._slink->Test);
    
    #line 3592
    if((Sy == C_endsy))
    {
        #line 3592
        P_insymbol(nullptr);
    }
    else
    {
        #line 3592
        P_error(nullptr, 13);
    }
    
    #line 3593
    _F.Llp = Display[Top].Flabel;
    
    #line 3594
    while((_F.Llp != nullptr))
    {
        #line 3597
        if((!(*_F.Llp._ptr).Defined))
        {
            #line 3598
            P_error(nullptr, 168);
            
            #line 3599
            Output << _WRITELN;
            
            #line 3599
            Output << " label " << (*_F.Llp._ptr).Labval << _WRITELN;
            
            #line 3600
            Output << _format(' ', (Chcnt + 16), 0);
        }
        
        #line 3602
        _F.Llp = (*_F.Llp._ptr).Nextlab;
    }
    
    #line 3604
    if((_F._slink->Fprocp != nullptr))
    {
        #line 3606
        if(((*_F._slink->Fprocp._ptr).Idtype == nullptr))
        {
            #line 3606
            P_block_body_gen1(&_F, T_block_body_oprange::C(42), _ord('p'));
        }
        else
        {
            #line 3607
            P_block_body_gen0t(&_F, T_block_body_oprange::C(42), (*_F._slink->Fprocp._ptr).Idtype);
        }
        
        #line 3608
        P_align(nullptr, Parmptr, _F.Lcmax);
        
        #line 3609
        if(Prcode)
        {
            #line 3610
            Prr << 'l' << _format(_F.Segsize, 4, 0) << '=' << _F.Lcmax << _WRITELN;
            
            #line 3611
            Prr << 'l' << _format(_F.Stacktop, 4, 0) << '=' << _F.Topmax << _WRITELN;
        }
    }
    else
    {
        #line 3615
        P_block_body_gen1(&_F, T_block_body_oprange::C(42), _ord('p'));
        
        #line 3616
        P_align(nullptr, Parmptr, _F.Lcmax);
        
        #line 3617
        if(Prcode)
        {
            #line 3618
            Prr << 'l' << _format(_F.Segsize, 4, 0) << '=' << _F.Lcmax << _WRITELN;
            
            #line 3619
            Prr << 'l' << _format(_F.Stacktop, 4, 0) << '=' << _F.Topmax << _WRITELN;
            
            #line 3620
            Prr << 'q' << _WRITELN;
        }
        
        #line 3622
        Ic = 0;
        
        #line 3625
        P_block_body_gen1(&_F, T_block_body_oprange::C(41), 0);
        
        #line 3625
        P_block_body_gencupent(&_F, T_block_body_oprange::C(46), 0, _F.Entname);
        
        #line 3625
        P_block_body_gen0(&_F, T_block_body_oprange::C(29));
        
        #line 3626
        if(Prcode)
        {
            #line 3627
            Prr << 'q' << _WRITELN;
        }
        
        #line 3628
        _F.Saveid = Id;
        
        #line 3629
        while((Fextfilep != nullptr))
        {
            #line 3632
            if((!(((_strcmpEQ<8>((*Fextfilep._ptr).Filename, "input   ") || _strcmpEQ<8>((*Fextfilep._ptr).Filename, "output  ")) || _strcmpEQ<8>((*Fextfilep._ptr).Filename, "prd     ")) || _strcmpEQ<8>((*Fextfilep._ptr).Filename, "prr     "))))
            {
                #line 3634
                Id = (*Fextfilep._ptr).Filename;
                
                #line 3635
                P_searchid(nullptr, T_setofids::C(_setLiteral2), _F.Llcp);
                
                #line 3636
                if(((*_F.Llcp._ptr).Idtype != nullptr))
                {
                    #line 3637
                    if(((*(*_F.Llcp._ptr).Idtype._ptr).Form != C_files))
                    {
                        #line 3638
                        Output << _WRITELN;
                        
                        #line 3639
                        Output << _format(' ', 8, 0) << "undeclared " << "external " << "file" << _format((*Fextfilep._ptr).Filename, 8, 0) << _WRITELN;
                        
                        #line 3641
                        Output << _format(' ', (Chcnt + 16), 0);
                    }
                }
            }
            
            #line 3644
            Fextfilep = (*Fextfilep._ptr).Nextfile;
        }
        
        #line 3646
        Id = _F.Saveid;
        
        #line 3647
        if(Prtables)
        {
            #line 3648
            Output << _WRITELN;
            
            #line 3648
            P_printtables(nullptr, C_true);
        }
    }
    
    { /* NOP */ }
}


#line 1912
//================================================================================
// scope: block_body_mes (level : 4)

// activation record
struct Frame_block_body_mes
{
   Frame_block_body* _slink;

    // parameters
    T_integer i;
};

// function body
void P_block_body_mes(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_block_body_mes _F = { (Frame_block_body*)_slink, i };
    
    // subroutine body
    #line 1913
    _F._slink->Topnew = (_F._slink->Topnew + (Cdx[_F.i] * C_maxstack));
    
    #line 1914
    if((_F._slink->Topnew > _F._slink->Topmax))
    {
        #line 1914
        _F._slink->Topmax = _F._slink->Topnew;
    }
}


#line 1917
//================================================================================
// scope: block_body_putic (level : 4)

// activation record
struct Frame_block_body_putic
{
   Frame_block_body* _slink;
};

// function body
void P_block_body_putic(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_putic _F = { (Frame_block_body*)_slink };
    
    // subroutine body
    #line 1918
    if((_mod(Ic , 10) == 0))
    {
        #line 1918
        Prr << 'i' << _format(Ic, 5, 0) << _WRITELN;
    }
}


#line 1920
//================================================================================
// scope: block_body_gen0 (level : 4)

// activation record
struct Frame_block_body_gen0
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
};

// function body
void P_block_body_gen0(void* _slink, T_block_body_oprange Fop)
{
    // prologue/frame definition
    Frame_block_body_gen0 _F = { (Frame_block_body*)_slink, Fop };
    
    // subroutine body
    #line 1922
    if(Prcode)
    {
        #line 1922
        P_block_body_putic(_F._slink);
        
        #line 1922
        Prr << _format(Mn[_F.Fop], 4, 0) << _WRITELN;
    }
    
    #line 1923
    Ic = (Ic + 1);
    
    #line 1923
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 1926
//================================================================================
// scope: block_body_gen1 (level : 4)

// activation record
struct Frame_block_body_gen1
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp2;

    // locals
    T_integer k;
};

// function body
void P_block_body_gen1(void* _slink, T_block_body_oprange Fop, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_gen1 _F = { (Frame_block_body*)_slink, Fop, Fp2 };
    
    // subroutine body
    #line 1929
    if(Prcode)
    {
        #line 1930
        P_block_body_putic(_F._slink);
        
        #line 1930
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 1931
        if((_F.Fop == 30))
        {
            #line 1932
            Prr << _format(Sna[_F.Fp2], 12, 0) << _WRITELN;
            
            #line 1933
            _F._slink->Topnew = (_F._slink->Topnew + (Pdx[_F.Fp2] * C_maxstack));
            
            #line 1934
            if((_F._slink->Topnew > _F._slink->Topmax))
            {
                #line 1934
                _F._slink->Topmax = _F._slink->Topnew;
            }
        }
        else
        {
            #line 1938
            if((_F.Fop == 38))
            {
                #line 1939
                Prr << '\'';
                
                #line 1942
                _FOR_TO(_F.k, 1, (*_F._slink->Cstptr[_F.Fp2]._ptr).Slgth)
                {
                    #line 1942
                    Prr << _format((*_F._slink->Cstptr[_F.Fp2]._ptr).Sval[_F.k], 1, 0);
                }
                _FOR_END(_F.k)
                
                #line 1943
                _FOR_TO(_F.k, ((*_F._slink->Cstptr[_F.Fp2]._ptr).Slgth + 1), C_strglgth)
                {
                    #line 1943
                    Prr << ' ';
                }
                _FOR_END(_F.k)
                
                { /* NOP */ }
                
                #line 1945
                Prr << '\'' << _WRITELN;
            }
            else
            {
                #line 1947
                if((_F.Fop == 42))
                {
                    #line 1947
                    Prr << _chr(_F.Fp2) << _WRITELN;
                }
                else
                {
                    #line 1948
                    Prr << _format(_F.Fp2, 12, 0) << _WRITELN;
                }
            }
            
            #line 1949
            P_block_body_mes(_F._slink, _F.Fop);
        }
    }
    
    #line 1952
    Ic = (Ic + 1);
}


#line 1955
//================================================================================
// scope: block_body_gen2 (level : 4)

// activation record
struct Frame_block_body_gen2
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp1;
    T_integer Fp2;

    // locals
    T_integer k;
};

// function body
void P_block_body_gen2(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_gen2 _F = { (Frame_block_body*)_slink, Fop, Fp1, Fp2 };
    
    // subroutine body
    #line 1958
    if(Prcode)
    {
        #line 1959
        P_block_body_putic(_F._slink);
        
        #line 1959
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 1960
        switch(_F.Fop)
        {
        case 45:
        case 50:
        case 54:
        case 56:
            #line 1962
            Prr << ' ' << _format(_F.Fp1, 3, 0) << _format(_F.Fp2, 8, 0) << _WRITELN;
            break;
        
        case 47:
        case 48:
        case 49:
        case 52:
        case 53:
        case 55:
            #line 1964
            Prr << _chr(_F.Fp1);
            
            #line 1965
            if((_chr(_F.Fp1) == 'm'))
            {
                #line 1965
                Prr << _format(_F.Fp2, 11, 0);
            }
            
            #line 1966
            Prr << _WRITELN;
            break;
        
        case 51:
            #line 1969
            switch(_F.Fp1)
            {
            case 1:
                #line 1970
                Prr << "i " << _F.Fp2 << _WRITELN;
                break;
            
            case 2:
                #line 1971
                Prr << "r ";
                
                #line 1973
                _FOR_TO(_F.k, 1, C_strglgth)
                {
                    #line 1973
                    Prr << (*_F._slink->Cstptr[_F.Fp2]._ptr).Rval[_F.k];
                }
                _FOR_END(_F.k)
                
                #line 1974
                Prr << _WRITELN;
                break;
            
            case 3:
                #line 1976
                Prr << "b " << _F.Fp2 << _WRITELN;
                break;
            
            case 4:
                #line 1977
                Prr << 'n' << _WRITELN;
                break;
            
            case 6:
                #line 1978
                Prr << _format("c '", 3, 0) << _chr(_F.Fp2) << '\'' << _WRITELN;
                break;
            
            case 5:
                #line 1979
                Prr << '(';
                
                #line 1981
                _FOR_TO(_F.k, C_setlow, C_sethigh)
                {
                    #line 1982
                    if(((*_F._slink->Cstptr[_F.Fp2]._ptr).Pval & _F.k))
                    {
                        #line 1982
                        Prr << _format(_F.k, 3, 0);
                    }
                }
                _FOR_END(_F.k)
                
                #line 1983
                Prr << ')' << _WRITELN;
                break;
            }
            break;
        }
        
        { /* NOP */ }
    }
    
    #line 1988
    Ic = (Ic + 1);
    
    #line 1988
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 1991
//================================================================================
// scope: block_body_gentypindicator (level : 4)

// activation record
struct Frame_block_body_gentypindicator
{
   Frame_block_body* _slink;

    // parameters
    T_stp Fsp;
};

// function body
void P_block_body_gentypindicator(void* _slink, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_body_gentypindicator _F = { (Frame_block_body*)_slink, Fsp };
    
    // subroutine body
    #line 1993
    if((_F.Fsp != nullptr))
    {
        #line 1995
        switch((*_F.Fsp._ptr).Form)
        {
        case C_scalar:
            #line 1996
            if((_F.Fsp == Intptr))
            {
                #line 1996
                Prr << 'i';
            }
            else
            {
                #line 1998
                if((_F.Fsp == Boolptr))
                {
                    #line 1998
                    Prr << 'b';
                }
                else
                {
                    #line 2000
                    if((_F.Fsp == Charptr))
                    {
                        #line 2000
                        Prr << 'c';
                    }
                    else
                    {
                        #line 2002
                        if(((*_F.Fsp._ptr).Scalkind == C_declared))
                        {
                            #line 2002
                            Prr << 'i';
                        }
                        else
                        {
                            #line 2003
                            Prr << 'r';
                        }
                    }
                }
            }
            break;
        
        case C_subrange:
            #line 2004
            P_block_body_gentypindicator(_F._slink, (*_F.Fsp._ptr).Rangetype);
            break;
        
        case C_pointer:
            #line 2005
            Prr << 'a';
            break;
        
        case C_power:
            #line 2006
            Prr << 's';
            break;
        
        case C_records:
        case C_arrays:
            #line 2007
            Prr << 'm';
            break;
        
        case C_files:
        case C_tagfld:
        case C_variant:
            #line 2008
            P_error(nullptr, 500);
            break;
        }
    }
}


#line 2012
//================================================================================
// scope: block_body_gen0t (level : 4)

// activation record
struct Frame_block_body_gen0t
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_stp Fsp;
};

// function body
void P_block_body_gen0t(void* _slink, T_block_body_oprange Fop, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_body_gen0t _F = { (Frame_block_body*)_slink, Fop, Fsp };
    
    // subroutine body
    #line 2014
    if(Prcode)
    {
        #line 2015
        P_block_body_putic(_F._slink);
        
        #line 2016
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 2017
        P_block_body_gentypindicator(_F._slink, _F.Fsp);
        
        #line 2018
        Prr << _WRITELN;
        
        { /* NOP */ }
    }
    
    #line 2020
    Ic = (Ic + 1);
    
    #line 2020
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 2023
//================================================================================
// scope: block_body_gen1t (level : 4)

// activation record
struct Frame_block_body_gen1t
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp2;
    T_stp Fsp;
};

// function body
void P_block_body_gen1t(void* _slink, T_block_body_oprange Fop, T_integer Fp2, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_body_gen1t _F = { (Frame_block_body*)_slink, Fop, Fp2, Fsp };
    
    // subroutine body
    #line 2025
    if(Prcode)
    {
        #line 2026
        P_block_body_putic(_F._slink);
        
        #line 2027
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 2028
        P_block_body_gentypindicator(_F._slink, _F.Fsp);
        
        #line 2029
        Prr << _format(_F.Fp2, 11, 0) << _WRITELN;
    }
    
    #line 2031
    Ic = (Ic + 1);
    
    #line 2031
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 2034
//================================================================================
// scope: block_body_gen2t (level : 4)

// activation record
struct Frame_block_body_gen2t
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp1;
    T_integer Fp2;
    T_stp Fsp;
};

// function body
void P_block_body_gen2t(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_body_gen2t _F = { (Frame_block_body*)_slink, Fop, Fp1, Fp2, Fsp };
    
    // subroutine body
    #line 2036
    if(Prcode)
    {
        #line 2037
        P_block_body_putic(_F._slink);
        
        #line 2038
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 2039
        P_block_body_gentypindicator(_F._slink, _F.Fsp);
        
        #line 2040
        Prr << _format(_F.Fp1, (3 + (5 * _ord((_abs(_F.Fp1) > 99)))), 0) << _format(_F.Fp2, 8, 0) << _WRITELN;
        
        { /* NOP */ }
    }
    
    #line 2042
    Ic = (Ic + 1);
    
    #line 2042
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 2045
//================================================================================
// scope: block_body_load (level : 4)

// activation record
struct Frame_block_body_load
{
   Frame_block_body* _slink;
};

// function body
void P_block_body_load(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_load _F = { (Frame_block_body*)_slink };
    
    // subroutine body
    #line 2048
    if((Gattr.Typtr != nullptr))
    {
        #line 2050
        switch(Gattr.Kind)
        {
        case C_cst:
            #line 2051
            if((((*Gattr.Typtr._ptr).Form == C_scalar) && (Gattr.Typtr != Realptr)))
            {
                #line 2052
                if((Gattr.Typtr == Boolptr))
                {
                    #line 2052
                    P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 3, Gattr.Cval.Ival);
                }
                else
                {
                    #line 2054
                    if((Gattr.Typtr == Charptr))
                    {
                        #line 2055
                        P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 6, Gattr.Cval.Ival);
                    }
                    else
                    {
                        #line 2056
                        P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 1, Gattr.Cval.Ival);
                    }
                }
            }
            else
            {
                #line 2058
                if((Gattr.Typtr == Nilptr))
                {
                    #line 2058
                    P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 4, 0);
                }
                else
                {
                    #line 2060
                    if((_F._slink->Cstptrix >= C_block_body_cstoccmax))
                    {
                        #line 2060
                        P_error(nullptr, 254);
                    }
                    else
                    {
                        #line 2062
                        _F._slink->Cstptrix = (_F._slink->Cstptrix + 1);
                        
                        #line 2063
                        _F._slink->Cstptr[_F._slink->Cstptrix] = Gattr.Cval.Valp;
                        
                        #line 2064
                        if((Gattr.Typtr == Realptr))
                        {
                            #line 2065
                            P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 2, _F._slink->Cstptrix);
                        }
                        else
                        {
                            #line 2067
                            P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 5, _F._slink->Cstptrix);
                        }
                    }
                }
            }
            break;
        
        case C_varbl:
            #line 2069
            switch(Gattr.Access)
            {
            case C_drct:
                #line 2070
                if((Gattr.Vlevel <= 1))
                {
                    #line 2071
                    P_block_body_gen1t(_F._slink, T_block_body_oprange::C(39), Gattr.Dplmt, Gattr.Typtr);
                }
                else
                {
                    #line 2072
                    P_block_body_gen2t(_F._slink, T_block_body_oprange::C(54), (Level - Gattr.Vlevel), Gattr.Dplmt, Gattr.Typtr);
                }
                break;
            
            case C_indrct:
                #line 2073
                P_block_body_gen1t(_F._slink, T_block_body_oprange::C(35), Gattr.Idplmt, Gattr.Typtr);
                break;
            
            case C_inxd:
                #line 2074
                P_error(nullptr, 400);
                break;
            }
            break;
        
        case C_expr:
            { /* NOP */ }
            break;
        }
        
        #line 2078
        Gattr.Kind = C_expr;
    }
}


#line 2082
//================================================================================
// scope: block_body_store (level : 4)

// activation record
struct Frame_block_body_store
{
   Frame_block_body* _slink;

    // parameters
    T_attr& Fattr;
};

// function body
void P_block_body_store(void* _slink, T_attr& Fattr)
{
    // prologue/frame definition
    Frame_block_body_store _F = { (Frame_block_body*)_slink, Fattr };
    
    // subroutine body
    #line 2085
    if((_F.Fattr.Typtr != nullptr))
    {
        #line 2086
        switch(_F.Fattr.Access)
        {
        case C_drct:
            #line 2087
            if((_F.Fattr.Vlevel <= 1))
            {
                #line 2087
                P_block_body_gen1t(_F._slink, T_block_body_oprange::C(43), _F.Fattr.Dplmt, _F.Fattr.Typtr);
            }
            else
            {
                #line 2088
                P_block_body_gen2t(_F._slink, T_block_body_oprange::C(56), (Level - _F.Fattr.Vlevel), _F.Fattr.Dplmt, _F.Fattr.Typtr);
            }
            break;
        
        case C_indrct:
            #line 2089
            if((_F.Fattr.Idplmt != 0))
            {
                #line 2089
                P_error(nullptr, 400);
            }
            else
            {
                #line 2090
                P_block_body_gen0t(_F._slink, T_block_body_oprange::C(26), _F.Fattr.Typtr);
            }
            break;
        
        case C_inxd:
            #line 2091
            P_error(nullptr, 400);
            break;
        }
    }
}


#line 2095
//================================================================================
// scope: block_body_loadaddress (level : 4)

// activation record
struct Frame_block_body_loadaddress
{
   Frame_block_body* _slink;
};

// function body
void P_block_body_loadaddress(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_loadaddress _F = { (Frame_block_body*)_slink };
    
    // subroutine body
    #line 2098
    if((Gattr.Typtr != nullptr))
    {
        #line 2100
        switch(Gattr.Kind)
        {
        case C_cst:
            #line 2101
            if(F_block_string(_F._slink->_slink, Gattr.Typtr))
            {
                #line 2102
                if((_F._slink->Cstptrix >= C_block_body_cstoccmax))
                {
                    #line 2102
                    P_error(nullptr, 254);
                }
                else
                {
                    #line 2104
                    _F._slink->Cstptrix = (_F._slink->Cstptrix + 1);
                    
                    #line 2105
                    _F._slink->Cstptr[_F._slink->Cstptrix] = Gattr.Cval.Valp;
                    
                    #line 2106
                    P_block_body_gen1(_F._slink, T_block_body_oprange::C(38), _F._slink->Cstptrix);
                }
            }
            else
            {
                #line 2108
                P_error(nullptr, 400);
            }
            break;
        
        case C_varbl:
            #line 2109
            switch(Gattr.Access)
            {
            case C_drct:
                #line 2110
                if((Gattr.Vlevel <= 1))
                {
                    #line 2110
                    P_block_body_gen1(_F._slink, T_block_body_oprange::C(37), Gattr.Dplmt);
                }
                else
                {
                    #line 2111
                    P_block_body_gen2(_F._slink, T_block_body_oprange::C(50), (Level - Gattr.Vlevel), Gattr.Dplmt);
                }
                break;
            
            case C_indrct:
                #line 2112
                if((Gattr.Idplmt != 0))
                {
                    #line 2113
                    P_block_body_gen1t(_F._slink, T_block_body_oprange::C(34), Gattr.Idplmt, Nilptr);
                }
                break;
            
            case C_inxd:
                #line 2114
                P_error(nullptr, 400);
                break;
            }
            break;
        
        case C_expr:
            #line 2116
            P_error(nullptr, 400);
            break;
        }
        
        #line 2118
        Gattr.Kind = C_varbl;
        
        #line 2118
        Gattr.Access = C_indrct;
        
        #line 2118
        Gattr.Idplmt = 0;
    }
}


#line 2123
//================================================================================
// scope: block_body_genfjp (level : 4)

// activation record
struct Frame_block_body_genfjp
{
   Frame_block_body* _slink;

    // parameters
    T_integer Faddr;
};

// function body
void P_block_body_genfjp(void* _slink, T_integer Faddr)
{
    // prologue/frame definition
    Frame_block_body_genfjp _F = { (Frame_block_body*)_slink, Faddr };
    
    // subroutine body
    #line 2124
    P_block_body_load(_F._slink);
    
    #line 2125
    if((Gattr.Typtr != nullptr))
    {
        #line 2126
        if((Gattr.Typtr != Boolptr))
        {
            #line 2126
            P_error(nullptr, 144);
        }
    }
    
    #line 2127
    if(Prcode)
    {
        #line 2127
        P_block_body_putic(_F._slink);
        
        #line 2127
        Prr << _format(Mn[33], 4, 0) << _format(" l", 8, 0) << _format(_F.Faddr, 4, 0) << _WRITELN;
    }
    
    #line 2128
    Ic = (Ic + 1);
    
    #line 2128
    P_block_body_mes(_F._slink, 33);
}


#line 2131
//================================================================================
// scope: block_body_genujpxjp (level : 4)

// activation record
struct Frame_block_body_genujpxjp
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp2;
};

// function body
void P_block_body_genujpxjp(void* _slink, T_block_body_oprange Fop, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_genujpxjp _F = { (Frame_block_body*)_slink, Fop, Fp2 };
    
    // subroutine body
    #line 2133
    if(Prcode)
    {
        #line 2134
        P_block_body_putic(_F._slink);
        
        #line 2134
        Prr << _format(Mn[_F.Fop], 4, 0) << _format(" l", 8, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
    }
    
    #line 2135
    Ic = (Ic + 1);
    
    #line 2135
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 2139
//================================================================================
// scope: block_body_gencupent (level : 4)

// activation record
struct Frame_block_body_gencupent
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp1;
    T_integer Fp2;
};

// function body
void P_block_body_gencupent(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_gencupent _F = { (Frame_block_body*)_slink, Fop, Fp1, Fp2 };
    
    // subroutine body
    #line 2141
    if(Prcode)
    {
        #line 2142
        P_block_body_putic(_F._slink);
        
        #line 2143
        Prr << _format(Mn[_F.Fop], 4, 0) << _format(_F.Fp1, 4, 0) << _format('l', 4, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
    }
    
    #line 2145
    Ic = (Ic + 1);
    
    #line 2145
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 2149
//================================================================================
// scope: block_body_checkbnds (level : 4)

// activation record
struct Frame_block_body_checkbnds
{
   Frame_block_body* _slink;

    // parameters
    T_stp Fsp;

    // locals
    T_integer Lmax;
    T_integer Lmin;
};

// function body
void P_block_body_checkbnds(void* _slink, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_body_checkbnds _F = { (Frame_block_body*)_slink, Fsp };
    
    // subroutine body
    #line 2152
    if((_F.Fsp != nullptr))
    {
        #line 2153
        if((_F.Fsp != Intptr))
        {
            #line 2154
            if((_F.Fsp != Realptr))
            {
                #line 2155
                if(((*_F.Fsp._ptr).Form <= C_subrange))
                {
                    #line 2157
                    P_getbounds(nullptr, _F.Fsp, _F.Lmin, _F.Lmax);
                    
                    #line 2158
                    P_block_body_gen2t(_F._slink, T_block_body_oprange::C(45), _F.Lmin, _F.Lmax, _F.Fsp);
                }
            }
        }
    }
}


#line 2163
//================================================================================
// scope: block_body_putlabel (level : 4)

// activation record
struct Frame_block_body_putlabel
{
   Frame_block_body* _slink;

    // parameters
    T_integer Labname;
};

// function body
void P_block_body_putlabel(void* _slink, T_integer Labname)
{
    // prologue/frame definition
    Frame_block_body_putlabel _F = { (Frame_block_body*)_slink, Labname };
    
    // subroutine body
    #line 2164
    if(Prcode)
    {
        #line 2164
        Prr << 'l' << _format(_F.Labname, 4, 0) << _WRITELN;
    }
}


#line 2167
//================================================================================
// scope: block_body_statement (level : 4)

// forward declarations
void P_block_body_statement_selector(void* _slink, T_setofsys Fsys, T_ctp Fcp);
void P_block_body_statement_call(void* _slink, T_setofsys Fsys, T_ctp Fcp);
void P_block_body_statement_expression(void* _slink, T_setofsys Fsys);
void P_block_body_statement_assignment(void* _slink, T_ctp Fcp);
void P_block_body_statement_gotostatement(void* _slink);
void P_block_body_statement_compoundstatement(void* _slink);
void P_block_body_statement_ifstatement(void* _slink);
void P_block_body_statement_casestatement(void* _slink);
void P_block_body_statement_repeatstatement(void* _slink);
void P_block_body_statement_whilestatement(void* _slink);
void P_block_body_statement_forstatement(void* _slink);
void P_block_body_statement_withstatement(void* _slink);

// activation record
struct Frame_block_body_statement
{
   Frame_block_body* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_ctp Lcp;
    T_lbp Llp;
};

// function body
void P_block_body_statement(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body_statement _F = { (Frame_block_body*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ident);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_vars);
    _setLiteral3.set(C_field);
    _setLiteral3.set(C_func);
    _setLiteral3.set(C_proc);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_semicolon);
    _setLiteral4.set(C_endsy);
    _setLiteral4.set(C_elsesy);
    _setLiteral4.set(C_untilsy);
    
    // subroutine body
    #line 3519
    if((Sy == C_intconst))
    {
        #line 3520
        _F.Llp = Display[Level].Flabel;
        
        #line 3521
        while((_F.Llp != nullptr))
        {
            #line 3523
            if(((*_F.Llp._ptr).Labval == Val.Ival))
            {
                #line 3524
                if((*_F.Llp._ptr).Defined)
                {
                    #line 3524
                    P_error(nullptr, 165);
                }
                
                #line 3525
                P_block_body_putlabel(_F._slink, (*_F.Llp._ptr).Labname);
                
                #line 3525
                (*_F.Llp._ptr).Defined = C_true;
                
                #line 3526
                goto L_1;
            }
            else
            {
                #line 3528
                _F.Llp = (*_F.Llp._ptr).Nextlab;
            }
        }
        
        #line 3529
        P_error(nullptr, 167);
        
        #line 3530
        L_1:
        P_insymbol(nullptr);
        
        #line 3531
        if((Sy == C_colon))
        {
            #line 3531
            P_insymbol(nullptr);
        }
        else
        {
            #line 3531
            P_error(nullptr, 5);
        }
    }
    
    #line 3533
    if((!((_F.Fsys + _setLiteral1) & Sy)))
    {
        #line 3534
        P_error(nullptr, 6);
        
        #line 3534
        P_block_skip(_F._slink->_slink, _F.Fsys);
    }
    
    #line 3535
    if(((Statbegsys + _setLiteral2) & Sy))
    {
        #line 3537
        switch(Sy)
        {
        case C_ident:
            #line 3538
            P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp);
            
            #line 3538
            P_insymbol(nullptr);
            
            #line 3539
            if(((*_F.Lcp._ptr).Klass == C_proc))
            {
                #line 3539
                P_block_body_statement_call(&_F, _F.Fsys, _F.Lcp);
            }
            else
            {
                #line 3540
                P_block_body_statement_assignment(&_F, _F.Lcp);
            }
            break;
        
        case C_beginsy:
            #line 3542
            P_insymbol(nullptr);
            
            #line 3542
            P_block_body_statement_compoundstatement(&_F);
            break;
        
        case C_gotosy:
            #line 3543
            P_insymbol(nullptr);
            
            #line 3543
            P_block_body_statement_gotostatement(&_F);
            break;
        
        case C_ifsy:
            #line 3544
            P_insymbol(nullptr);
            
            #line 3544
            P_block_body_statement_ifstatement(&_F);
            break;
        
        case C_casesy:
            #line 3545
            P_insymbol(nullptr);
            
            #line 3545
            P_block_body_statement_casestatement(&_F);
            break;
        
        case C_whilesy:
            #line 3546
            P_insymbol(nullptr);
            
            #line 3546
            P_block_body_statement_whilestatement(&_F);
            break;
        
        case C_repeatsy:
            #line 3547
            P_insymbol(nullptr);
            
            #line 3547
            P_block_body_statement_repeatstatement(&_F);
            break;
        
        case C_forsy:
            #line 3548
            P_insymbol(nullptr);
            
            #line 3548
            P_block_body_statement_forstatement(&_F);
            break;
        
        case C_withsy:
            #line 3549
            P_insymbol(nullptr);
            
            #line 3549
            P_block_body_statement_withstatement(&_F);
            break;
        }
        
        #line 3551
        if((!(_setLiteral4 & Sy)))
        {
            #line 3552
            P_error(nullptr, 6);
            
            #line 3552
            P_block_skip(_F._slink->_slink, _F.Fsys);
        }
    }
}


#line 2173
//================================================================================
// scope: block_body_statement_selector (level : 5)

// activation record
struct Frame_block_body_statement_selector
{
   Frame_block_body_statement* _slink;

    // parameters
    T_setofsys Fsys;
    T_ctp Fcp;

    // locals
    T_attr Lattr;
    T_ctp Lcp;
    T_integer Lmax;
    T_integer Lmin;
    T_addrrange Lsize;
};

// function body
void P_block_body_statement_selector(void* _slink, T_setofsys Fsys, T_ctp Fcp)
{
    // prologue/frame definition
    Frame_block_body_statement_selector _F = { (Frame_block_body_statement*)_slink, Fsys, Fcp };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rbrack);
    
    // subroutine body
    #line 2177
    Gattr.Typtr = (*_F.Fcp._ptr).Idtype;
    
    #line 2177
    Gattr.Kind = C_varbl;
    
    #line 2178
    switch((*_F.Fcp._ptr).Klass)
    {
    case C_vars:
        #line 2180
        if(((*_F.Fcp._ptr).Vkind == C_actual))
        {
            #line 2181
            Gattr.Access = C_drct;
            
            #line 2181
            Gattr.Vlevel = (*_F.Fcp._ptr).Vlev;
            
            #line 2182
            Gattr.Dplmt = (*_F.Fcp._ptr).Vaddr;
        }
        else
        {
            #line 2185
            P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), (Level - (*_F.Fcp._ptr).Vlev), (*_F.Fcp._ptr).Vaddr, Nilptr);
            
            #line 2186
            Gattr.Access = C_indrct;
            
            #line 2186
            Gattr.Idplmt = 0;
        }
        break;
    
    case C_field:
        #line 2190
        if((Display[Disx].Occur == C_crec))
        {
            #line 2191
            Gattr.Access = C_drct;
            
            #line 2191
            Gattr.Vlevel = Display[Disx].Clev;
            
            #line 2192
            Gattr.Dplmt = (Display[Disx].Cdspl + (*_F.Fcp._ptr).Fldaddr);
        }
        else
        {
            #line 2196
            if((Level == 1))
            {
                #line 2196
                P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(39), Display[Disx].Vdspl, Nilptr);
            }
            else
            {
                #line 2197
                P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), 0, Display[Disx].Vdspl, Nilptr);
            }
            
            #line 2198
            Gattr.Access = C_indrct;
            
            #line 2198
            Gattr.Idplmt = (*_F.Fcp._ptr).Fldaddr;
        }
        break;
    
    case C_func:
        #line 2201
        if(((*_F.Fcp._ptr).Pfdeckind == C_standard))
        {
            #line 2202
            P_error(nullptr, 150);
            
            #line 2202
            Gattr.Typtr = nullptr;
        }
        else
        {
            #line 2205
            if(((*_F.Fcp._ptr).Pfkind == C_formal))
            {
                #line 2205
                P_error(nullptr, 151);
            }
            else
            {
                #line 2207
                if(((((*_F.Fcp._ptr).Pflev + 1) != Level) || (_F._slink->_slink->_slink->Fprocp != _F.Fcp)))
                {
                    #line 2207
                    P_error(nullptr, 177);
                }
            }
            
            #line 2208
            Gattr.Access = C_drct;
            
            #line 2208
            Gattr.Vlevel = ((*_F.Fcp._ptr).Pflev + 1);
            
            #line 2209
            Gattr.Dplmt = 0;
        }
        break;
    }
    
    #line 2214
    if((!((Selectsys + _F.Fsys) & Sy)))
    {
        #line 2215
        P_error(nullptr, 59);
        
        #line 2215
        P_block_skip(_F._slink->_slink->_slink, (Selectsys + _F.Fsys));
    }
    
    #line 2216
    while((Selectsys & Sy))
    {
        #line 2218
        if((Sy == C_lbrack))
        {
            #line 2220
            do
            {
                #line 2220
                _F.Lattr = Gattr;
                
                #line 2222
                if((_F.Lattr.Typtr != nullptr))
                {
                    #line 2223
                    if(((*_F.Lattr.Typtr._ptr).Form != C_arrays))
                    {
                        #line 2224
                        P_error(nullptr, 138);
                        
                        #line 2224
                        _F.Lattr.Typtr = nullptr;
                    }
                }
                
                #line 2225
                P_block_body_loadaddress(_F._slink->_slink);
                
                #line 2226
                P_insymbol(nullptr);
                
                #line 2226
                P_block_body_statement_expression(_F._slink, T_setofsys::C((_F.Fsys + _setLiteral1)));
                
                #line 2227
                P_block_body_load(_F._slink->_slink);
                
                #line 2228
                if((Gattr.Typtr != nullptr))
                {
                    #line 2229
                    if(((*Gattr.Typtr._ptr).Form != C_scalar))
                    {
                        #line 2229
                        P_error(nullptr, 113);
                    }
                    else
                    {
                        #line 2230
                        if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
                        {
                            #line 2231
                            P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                        }
                    }
                }
                
                #line 2232
                if((_F.Lattr.Typtr != nullptr))
                {
                    #line 2235
                    if(F_block_comptypes(_F._slink->_slink->_slink, (*_F.Lattr.Typtr._ptr).Inxtype, Gattr.Typtr))
                    {
                        #line 2237
                        if(((*_F.Lattr.Typtr._ptr).Inxtype != nullptr))
                        {
                            #line 2238
                            P_getbounds(nullptr, (*_F.Lattr.Typtr._ptr).Inxtype, _F.Lmin, _F.Lmax);
                            
                            #line 2239
                            if(Debug)
                            {
                                #line 2240
                                P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), _F.Lmin, _F.Lmax, Intptr);
                            }
                            
                            #line 2241
                            if((_F.Lmin > 0))
                            {
                                #line 2241
                                P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(31), _F.Lmin, Intptr);
                            }
                            else
                            {
                                #line 2242
                                if((_F.Lmin < 0))
                                {
                                    #line 2243
                                    P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(34), (-_F.Lmin), Intptr);
                                }
                            }
                            
                            { /* NOP */ }
                        }
                    }
                    else
                    {
                        #line 2247
                        P_error(nullptr, 139);
                    }
                    
                    #line 2249
                    Gattr.Typtr = (*_F.Lattr.Typtr._ptr).Aeltype;
                    
                    #line 2249
                    Gattr.Kind = C_varbl;
                    
                    #line 2250
                    Gattr.Access = C_indrct;
                    
                    #line 2250
                    Gattr.Idplmt = 0;
                    
                    #line 2252
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 2254
                        _F.Lsize = (*Gattr.Typtr._ptr).Size;
                        
                        #line 2255
                        P_align(nullptr, Gattr.Typtr, _F.Lsize);
                        
                        #line 2256
                        P_block_body_gen1(_F._slink->_slink, T_block_body_oprange::C(36), _F.Lsize);
                    }
                }
            }
            while(!(Sy != C_comma));
            
            #line 2260
            if((Sy == C_rbrack))
            {
                #line 2260
                P_insymbol(nullptr);
            }
            else
            {
                #line 2260
                P_error(nullptr, 12);
            }
        }
        else
        {
            #line 2263
            if((Sy == C_period))
            {
                #line 2267
                if((Gattr.Typtr != nullptr))
                {
                    #line 2268
                    if(((*Gattr.Typtr._ptr).Form != C_records))
                    {
                        #line 2269
                        P_error(nullptr, 140);
                        
                        #line 2269
                        Gattr.Typtr = nullptr;
                    }
                }
                
                #line 2270
                P_insymbol(nullptr);
                
                #line 2271
                if((Sy == C_ident))
                {
                    #line 2273
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 2274
                        P_searchsection(nullptr, (*Gattr.Typtr._ptr).Fstfld, _F.Lcp);
                        
                        #line 2275
                        if((_F.Lcp == nullptr))
                        {
                            #line 2276
                            P_error(nullptr, 152);
                            
                            #line 2276
                            Gattr.Typtr = nullptr;
                        }
                        else
                        {
                            #line 2279
                            Gattr.Typtr = (*_F.Lcp._ptr).Idtype;
                            
                            #line 2280
                            switch(Gattr.Access)
                            {
                            case C_drct:
                                #line 2281
                                Gattr.Dplmt = (Gattr.Dplmt + (*_F.Lcp._ptr).Fldaddr);
                                break;
                            
                            case C_indrct:
                                #line 2282
                                Gattr.Idplmt = (Gattr.Idplmt + (*_F.Lcp._ptr).Fldaddr);
                                break;
                            
                            case C_inxd:
                                #line 2283
                                P_error(nullptr, 400);
                                break;
                            }
                        }
                    }
                    
                    #line 2287
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2289
                    P_error(nullptr, 2);
                }
            }
            else
            {
                #line 2294
                if((Gattr.Typtr != nullptr))
                {
                    #line 2296
                    if(((*Gattr.Typtr._ptr).Form == C_pointer))
                    {
                        #line 2297
                        P_block_body_load(_F._slink->_slink);
                        
                        #line 2297
                        Gattr.Typtr = (*Gattr.Typtr._ptr).Eltype;
                        
                        #line 2298
                        if(Debug)
                        {
                            #line 2298
                            P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), 1, C_maxaddr, Nilptr);
                        }
                        
                        #line 2300
                        Gattr.Kind = C_varbl;
                        
                        #line 2300
                        Gattr.Access = C_indrct;
                        
                        #line 2301
                        Gattr.Idplmt = 0;
                    }
                    else
                    {
                        #line 2305
                        if(((*Gattr.Typtr._ptr).Form == C_files))
                        {
                            #line 2305
                            Gattr.Typtr = (*Gattr.Typtr._ptr).Filtype;
                        }
                        else
                        {
                            #line 2306
                            P_error(nullptr, 141);
                        }
                    }
                }
                
                #line 2307
                P_insymbol(nullptr);
            }
        }
        
        #line 2309
        if((!((_F.Fsys + Selectsys) & Sy)))
        {
            #line 2310
            P_error(nullptr, 6);
            
            #line 2310
            P_block_skip(_F._slink->_slink->_slink, (_F.Fsys + Selectsys));
        }
    }
}


#line 2314
//================================================================================
// scope: block_body_statement_call (level : 5)

// types
typedef _T_Range<1, 15, signed __int8> T_block_body_statement_call_range_39;

// forward declarations
void P_block_body_statement_call_variable(void* _slink, T_setofsys Fsys);
void P_block_body_statement_call_getputresetrewrite(void* _slink);
void P_block_body_statement_call_read(void* _slink);
void P_block_body_statement_call_write(void* _slink);
void P_block_body_statement_call_pack(void* _slink);
void P_block_body_statement_call_unpack(void* _slink);
void P_block_body_statement_call_new(void* _slink);
void P_block_body_statement_call_mark(void* _slink);
void P_block_body_statement_call_release(void* _slink);
void P_block_body_statement_call_abs(void* _slink);
void P_block_body_statement_call_sqr(void* _slink);
void P_block_body_statement_call_trunc(void* _slink);
void P_block_body_statement_call_odd(void* _slink);
void P_block_body_statement_call_ord(void* _slink);
void P_block_body_statement_call_chr(void* _slink);
void P_block_body_statement_call_predsucc(void* _slink);
void P_block_body_statement_call_eof(void* _slink);
void P_block_body_statement_call_callnonstandard(void* _slink);

// activation record
struct Frame_block_body_statement_call
{
   Frame_block_body_statement* _slink;

    // parameters
    T_setofsys Fsys;
    T_ctp Fcp;

    // locals
    T_block_body_statement_call_range_39 Lkey;
};

// function body
void P_block_body_statement_call(void* _slink, T_setofsys Fsys, T_ctp Fcp)
{
    // prologue/frame definition
    Frame_block_body_statement_call _F = { (Frame_block_body_statement*)_slink, Fsys, Fcp };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(5);
    _setLiteral1.set(6);
    _setLiteral1.set(11);
    _setLiteral1.set(12);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(5);
    _setLiteral2.set(6);
    _setLiteral2.set(11);
    _setLiteral2.set(12);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_rparent);
    
    // subroutine body
    #line 2782
    if(((*_F.Fcp._ptr).Pfdeckind == C_standard))
    {
        #line 2783
        _F.Lkey = (*_F.Fcp._ptr).Key;
        
        #line 2784
        if(((*_F.Fcp._ptr).Klass == C_proc))
        {
            #line 2786
            if((!(_setLiteral1 & _F.Lkey)))
            {
                #line 2787
                if((Sy == C_lparent))
                {
                    #line 2787
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2787
                    P_error(nullptr, 9);
                }
            }
            
            #line 2788
            switch(_F.Lkey)
            {
            case 1:
            case 2:
            case 3:
            case 4:
                #line 2790
                P_block_body_statement_call_getputresetrewrite(&_F);
                break;
            
            case 5:
            case 11:
                #line 2791
                P_block_body_statement_call_read(&_F);
                break;
            
            case 6:
            case 12:
                #line 2792
                P_block_body_statement_call_write(&_F);
                break;
            
            case 7:
                #line 2793
                P_block_body_statement_call_pack(&_F);
                break;
            
            case 8:
                #line 2794
                P_block_body_statement_call_unpack(&_F);
                break;
            
            case 9:
                #line 2795
                P_block_body_statement_call_new(&_F);
                break;
            
            case 10:
                #line 2796
                P_block_body_statement_call_release(&_F);
                break;
            
            case 13:
                #line 2797
                P_block_body_statement_call_mark(&_F);
                break;
            }
            
            #line 2799
            if((!(_setLiteral2 & _F.Lkey)))
            {
                #line 2800
                if((Sy == C_rparent))
                {
                    #line 2800
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2800
                    P_error(nullptr, 4);
                }
            }
        }
        else
        {
            #line 2804
            if((_F.Lkey <= 8))
            {
                #line 2806
                if((Sy == C_lparent))
                {
                    #line 2806
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2806
                    P_error(nullptr, 9);
                }
                
                #line 2807
                P_block_body_statement_expression(_F._slink, T_setofsys::C((_F.Fsys + _setLiteral3)));
                
                #line 2807
                P_block_body_load(_F._slink->_slink);
            }
            
            #line 2809
            switch(_F.Lkey)
            {
            case 1:
                #line 2810
                P_block_body_statement_call_abs(&_F);
                break;
            
            case 2:
                #line 2811
                P_block_body_statement_call_sqr(&_F);
                break;
            
            case 3:
                #line 2812
                P_block_body_statement_call_trunc(&_F);
                break;
            
            case 4:
                #line 2813
                P_block_body_statement_call_odd(&_F);
                break;
            
            case 5:
                #line 2814
                P_block_body_statement_call_ord(&_F);
                break;
            
            case 6:
                #line 2815
                P_block_body_statement_call_chr(&_F);
                break;
            
            case 7:
            case 8:
                #line 2816
                P_block_body_statement_call_predsucc(&_F);
                break;
            
            case 9:
            case 10:
                #line 2817
                P_block_body_statement_call_eof(&_F);
                break;
            }
            
            #line 2819
            if((_F.Lkey <= 8))
            {
                #line 2820
                if((Sy == C_rparent))
                {
                    #line 2820
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2820
                    P_error(nullptr, 4);
                }
            }
        }
        
        { /* NOP */ }
    }
    else
    {
        #line 2823
        P_block_body_statement_call_callnonstandard(&_F);
    }
}


#line 2317
//================================================================================
// scope: block_body_statement_call_variable (level : 6)

// activation record
struct Frame_block_body_statement_call_variable
{
   Frame_block_body_statement_call* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_ctp Lcp;
};

// function body
void P_block_body_statement_call_variable(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body_statement_call_variable _F = { (Frame_block_body_statement_call*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_vars);
    _setLiteral1.set(C_field);
    
    // subroutine body
    #line 2320
    if((Sy == C_ident))
    {
        #line 2321
        P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
        
        #line 2321
        P_insymbol(nullptr);
    }
    else
    {
        #line 2322
        P_error(nullptr, 2);
        
        #line 2322
        _F.Lcp = Uvarptr;
    }
    
    #line 2323
    P_block_body_statement_selector(_F._slink->_slink, _F.Fsys, _F.Lcp);
}


#line 2326
//================================================================================
// scope: block_body_statement_call_getputresetrewrite (level : 6)

// activation record
struct Frame_block_body_statement_call_getputresetrewrite
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_getputresetrewrite(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_getputresetrewrite _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 2327
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 2327
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 2328
    if((Gattr.Typtr != nullptr))
    {
        #line 2329
        if(((*Gattr.Typtr._ptr).Form != C_files))
        {
            #line 2329
            P_error(nullptr, 116);
        }
    }
    
    #line 2330
    if((_F._slink->Lkey <= 2))
    {
        #line 2330
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), _F._slink->Lkey);
    }
    else
    {
        #line 2331
        P_error(nullptr, 399);
    }
}


#line 2334
//================================================================================
// scope: block_body_statement_call_read (level : 6)

// activation record
struct Frame_block_body_statement_call_read
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_addrrange Laddr;
    T_levrange Llev;
    T_stp Lsp;
};

// function body
void P_block_body_statement_call_read(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_read _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_comma);
    _setLiteral3.set(C_rparent);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_rparent);
    
    // subroutine body
    #line 2338
    _F.Llev = 1;
    
    #line 2338
    _F.Laddr = C_lcaftermarkstack;
    
    #line 2339
    if((Sy == C_lparent))
    {
        #line 2340
        P_insymbol(nullptr);
        
        #line 2341
        P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 2342
        _F.Lsp = Gattr.Typtr;
        
        #line 2342
        _F._slink->_slink->_slink->_slink->Test = C_false;
        
        #line 2343
        if((_F.Lsp != nullptr))
        {
            #line 2344
            if(((*_F.Lsp._ptr).Form == C_files))
            {
                #line 2347
                if(((*_F.Lsp._ptr).Filtype == Charptr))
                {
                    #line 2348
                    _F.Llev = Gattr.Vlevel;
                    
                    #line 2348
                    _F.Laddr = Gattr.Dplmt;
                }
                else
                {
                    #line 2349
                    P_error(nullptr, 399);
                }
                
                #line 2350
                if((Sy == C_rparent))
                {
                    #line 2351
                    if((_F._slink->Lkey == 5))
                    {
                        #line 2351
                        P_error(nullptr, 116);
                    }
                    
                    #line 2352
                    _F._slink->_slink->_slink->_slink->Test = C_true;
                }
                else
                {
                    #line 2355
                    if((Sy != C_comma))
                    {
                        #line 2356
                        P_error(nullptr, 116);
                        
                        #line 2356
                        P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
                    }
                }
                
                #line 2357
                if((Sy == C_comma))
                {
                    #line 2358
                    P_insymbol(nullptr);
                    
                    #line 2358
                    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
                }
                else
                {
                    #line 2360
                    _F._slink->_slink->_slink->_slink->Test = C_true;
                }
            }
        }
        
        #line 2362
        if((!_F._slink->_slink->_slink->_slink->Test))
        {
            #line 2363
            do
            {
                #line 2363
                P_block_body_loadaddress(_F._slink->_slink->_slink);
                
                #line 2364
                P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
                
                #line 2365
                if((Gattr.Typtr != nullptr))
                {
                    #line 2366
                    if(((*Gattr.Typtr._ptr).Form <= C_subrange))
                    {
                        #line 2367
                        if(F_block_comptypes(_F._slink->_slink->_slink->_slink, Intptr, Gattr.Typtr))
                        {
                            #line 2368
                            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 3);
                        }
                        else
                        {
                            #line 2370
                            if(F_block_comptypes(_F._slink->_slink->_slink->_slink, Realptr, Gattr.Typtr))
                            {
                                #line 2371
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 4);
                            }
                            else
                            {
                                #line 2373
                                if(F_block_comptypes(_F._slink->_slink->_slink->_slink, Charptr, Gattr.Typtr))
                                {
                                    #line 2374
                                    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 5);
                                }
                                else
                                {
                                    #line 2375
                                    P_error(nullptr, 399);
                                }
                            }
                        }
                    }
                    else
                    {
                        #line 2376
                        P_error(nullptr, 116);
                    }
                }
                
                #line 2377
                _F._slink->_slink->_slink->_slink->Test = (Sy != C_comma);
                
                #line 2378
                if((!_F._slink->_slink->_slink->_slink->Test))
                {
                    #line 2379
                    P_insymbol(nullptr);
                    
                    #line 2379
                    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
                }
            }
            while(!_F._slink->_slink->_slink->_slink->Test);
        }
        
        #line 2382
        if((Sy == C_rparent))
        {
            #line 2382
            P_insymbol(nullptr);
        }
        else
        {
            #line 2382
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 2384
        if((_F._slink->Lkey == 5))
        {
            #line 2384
            P_error(nullptr, 116);
        }
    }
    
    #line 2385
    if((_F._slink->Lkey == 11))
    {
        #line 2386
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
        
        #line 2387
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 21);
    }
}


#line 2391
//================================================================================
// scope: block_body_statement_call_write (level : 6)

// types
typedef _T_Range<1, 15, signed __int8> T_block_body_statement_call_write_range_40;

// activation record
struct Frame_block_body_statement_call_write
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_boolean Default;
    T_addrrange Laddr;
    T_addrrange Len;
    T_levrange Llev;
    T_block_body_statement_call_write_range_40 Llkey;
    T_stp Lsp;
};

// function body
void P_block_body_statement_call_write(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_write _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_comma);
    _setLiteral3.set(C_colon);
    _setLiteral3.set(C_rparent);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_colon);
    _setLiteral4.set(C_rparent);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_comma);
    _setLiteral5.set(C_rparent);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_comma);
    _setLiteral6.set(C_colon);
    _setLiteral6.set(C_rparent);
    
    // subroutine body
    #line 2394
    _F.Llkey = _F._slink->Lkey;
    
    #line 2395
    _F.Llev = 1;
    
    #line 2395
    _F.Laddr = (C_lcaftermarkstack + C_charmax);
    
    #line 2396
    if((Sy == C_lparent))
    {
        #line 2397
        P_insymbol(nullptr);
        
        #line 2398
        P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 2399
        _F.Lsp = Gattr.Typtr;
        
        #line 2399
        _F._slink->_slink->_slink->_slink->Test = C_false;
        
        #line 2400
        if((_F.Lsp != nullptr))
        {
            #line 2401
            if(((*_F.Lsp._ptr).Form == C_files))
            {
                #line 2404
                if(((*_F.Lsp._ptr).Filtype == Charptr))
                {
                    #line 2405
                    _F.Llev = Gattr.Vlevel;
                    
                    #line 2405
                    _F.Laddr = Gattr.Dplmt;
                }
                else
                {
                    #line 2406
                    P_error(nullptr, 399);
                }
                
                #line 2407
                if((Sy == C_rparent))
                {
                    #line 2408
                    if((_F.Llkey == 6))
                    {
                        #line 2408
                        P_error(nullptr, 116);
                    }
                    
                    #line 2409
                    _F._slink->_slink->_slink->_slink->Test = C_true;
                }
                else
                {
                    #line 2412
                    if((Sy != C_comma))
                    {
                        #line 2413
                        P_error(nullptr, 116);
                        
                        #line 2413
                        P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
                    }
                }
                
                #line 2414
                if((Sy == C_comma))
                {
                    #line 2415
                    P_insymbol(nullptr);
                    
                    #line 2415
                    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
                }
                else
                {
                    #line 2417
                    _F._slink->_slink->_slink->_slink->Test = C_true;
                }
            }
        }
        
        #line 2419
        if((!_F._slink->_slink->_slink->_slink->Test))
        {
            #line 2420
            do
            {
                #line 2421
                _F.Lsp = Gattr.Typtr;
                
                #line 2422
                if((_F.Lsp != nullptr))
                {
                    #line 2423
                    if(((*_F.Lsp._ptr).Form <= C_subrange))
                    {
                        #line 2423
                        P_block_body_load(_F._slink->_slink->_slink);
                    }
                    else
                    {
                        #line 2423
                        P_block_body_loadaddress(_F._slink->_slink->_slink);
                    }
                }
                
                #line 2424
                if((Sy == C_colon))
                {
                    #line 2425
                    P_insymbol(nullptr);
                    
                    #line 2425
                    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
                    
                    #line 2426
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 2427
                        if((Gattr.Typtr != Intptr))
                        {
                            #line 2427
                            P_error(nullptr, 116);
                        }
                    }
                    
                    #line 2428
                    P_block_body_load(_F._slink->_slink->_slink);
                    
                    #line 2428
                    _F.Default = C_false;
                }
                else
                {
                    #line 2430
                    _F.Default = C_true;
                }
                
                #line 2431
                if((Sy == C_colon))
                {
                    #line 2432
                    P_insymbol(nullptr);
                    
                    #line 2432
                    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral5)));
                    
                    #line 2433
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 2434
                        if((Gattr.Typtr != Intptr))
                        {
                            #line 2434
                            P_error(nullptr, 116);
                        }
                    }
                    
                    #line 2435
                    if((_F.Lsp != Realptr))
                    {
                        #line 2435
                        P_error(nullptr, 124);
                    }
                    
                    #line 2436
                    P_block_body_load(_F._slink->_slink->_slink);
                    
                    #line 2436
                    P_error(nullptr, 399);
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 2439
                    if((_F.Lsp == Intptr))
                    {
                        #line 2440
                        if(_F.Default)
                        {
                            #line 2440
                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, 10);
                        }
                        
                        #line 2441
                        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
                        
                        #line 2442
                        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 6);
                    }
                    else
                    {
                        #line 2445
                        if((_F.Lsp == Realptr))
                        {
                            #line 2446
                            if(_F.Default)
                            {
                                #line 2446
                                P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, 20);
                            }
                            
                            #line 2447
                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
                            
                            #line 2448
                            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 8);
                        }
                        else
                        {
                            #line 2451
                            if((_F.Lsp == Charptr))
                            {
                                #line 2452
                                if(_F.Default)
                                {
                                    #line 2452
                                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, 1);
                                }
                                
                                #line 2453
                                P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
                                
                                #line 2454
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 9);
                            }
                            else
                            {
                                #line 2457
                                if((_F.Lsp != nullptr))
                                {
                                    #line 2459
                                    if(((*_F.Lsp._ptr).Form == C_scalar))
                                    {
                                        #line 2459
                                        P_error(nullptr, 399);
                                    }
                                    else
                                    {
                                        #line 2461
                                        if(F_block_string(_F._slink->_slink->_slink->_slink, _F.Lsp))
                                        {
                                            #line 2462
                                            _F.Len = ((*_F.Lsp._ptr).Size / C_charmax);
                                            
                                            #line 2463
                                            if(_F.Default)
                                            {
                                                #line 2464
                                                P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Len);
                                            }
                                            
                                            #line 2465
                                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Len);
                                            
                                            #line 2466
                                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
                                            
                                            #line 2467
                                            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 10);
                                        }
                                        else
                                        {
                                            #line 2469
                                            P_error(nullptr, 116);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
                #line 2471
                _F._slink->_slink->_slink->_slink->Test = (Sy != C_comma);
                
                #line 2472
                if((!_F._slink->_slink->_slink->_slink->Test))
                {
                    #line 2473
                    P_insymbol(nullptr);
                    
                    #line 2473
                    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral6)));
                }
            }
            while(!_F._slink->_slink->_slink->_slink->Test);
        }
        
        #line 2476
        if((Sy == C_rparent))
        {
            #line 2476
            P_insymbol(nullptr);
        }
        else
        {
            #line 2476
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 2478
        if((_F._slink->Lkey == 6))
        {
            #line 2478
            P_error(nullptr, 116);
        }
    }
    
    #line 2479
    if((_F.Llkey == 12))
    {
        #line 2480
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - _F.Llev), _F.Laddr);
        
        #line 2481
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 22);
    }
}


#line 2485
//================================================================================
// scope: block_body_statement_call_pack (level : 6)

// activation record
struct Frame_block_body_statement_call_pack
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_stp Lsp;
    T_stp Lsp1;
};

// function body
void P_block_body_statement_call_pack(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_pack _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_rparent);
    
    // subroutine body
    #line 2487
    P_error(nullptr, 399);
    
    #line 2487
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 2488
    _F.Lsp = nullptr;
    
    #line 2488
    _F.Lsp1 = nullptr;
    
    #line 2489
    if((Gattr.Typtr != nullptr))
    {
        #line 2491
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 2492
            _F.Lsp = (*Gattr.Typtr._ptr).Inxtype;
            
            #line 2492
            _F.Lsp1 = (*Gattr.Typtr._ptr).Aeltype;
        }
        else
        {
            #line 2493
            P_error(nullptr, 116);
        }
    }
    
    #line 2494
    if((Sy == C_comma))
    {
        #line 2494
        P_insymbol(nullptr);
    }
    else
    {
        #line 2494
        P_error(nullptr, 20);
    }
    
    #line 2495
    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    
    #line 2496
    if((Gattr.Typtr != nullptr))
    {
        #line 2497
        if(((*Gattr.Typtr._ptr).Form != C_scalar))
        {
            #line 2497
            P_error(nullptr, 116);
        }
        else
        {
            #line 2499
            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lsp, Gattr.Typtr)))
            {
                #line 2499
                P_error(nullptr, 116);
            }
        }
    }
    
    #line 2500
    if((Sy == C_comma))
    {
        #line 2500
        P_insymbol(nullptr);
    }
    else
    {
        #line 2500
        P_error(nullptr, 20);
    }
    
    #line 2501
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
    
    #line 2502
    if((Gattr.Typtr != nullptr))
    {
        #line 2504
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 2506
            if(((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*Gattr.Typtr._ptr).Aeltype, _F.Lsp1)) || (!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*Gattr.Typtr._ptr).Inxtype, _F.Lsp))))
            {
                #line 2508
                P_error(nullptr, 116);
            }
        }
        else
        {
            #line 2510
            P_error(nullptr, 116);
        }
    }
}


#line 2513
//================================================================================
// scope: block_body_statement_call_unpack (level : 6)

// activation record
struct Frame_block_body_statement_call_unpack
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_stp Lsp;
    T_stp Lsp1;
};

// function body
void P_block_body_statement_call_unpack(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_unpack _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_rparent);
    
    // subroutine body
    #line 2515
    P_error(nullptr, 399);
    
    #line 2515
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 2516
    _F.Lsp = nullptr;
    
    #line 2516
    _F.Lsp1 = nullptr;
    
    #line 2517
    if((Gattr.Typtr != nullptr))
    {
        #line 2519
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 2520
            _F.Lsp = (*Gattr.Typtr._ptr).Inxtype;
            
            #line 2520
            _F.Lsp1 = (*Gattr.Typtr._ptr).Aeltype;
        }
        else
        {
            #line 2521
            P_error(nullptr, 116);
        }
    }
    
    #line 2522
    if((Sy == C_comma))
    {
        #line 2522
        P_insymbol(nullptr);
    }
    else
    {
        #line 2522
        P_error(nullptr, 20);
    }
    
    #line 2523
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    
    #line 2524
    if((Gattr.Typtr != nullptr))
    {
        #line 2526
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 2528
            if(((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*Gattr.Typtr._ptr).Aeltype, _F.Lsp1)) || (!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*Gattr.Typtr._ptr).Inxtype, _F.Lsp))))
            {
                #line 2530
                P_error(nullptr, 116);
            }
        }
        else
        {
            #line 2532
            P_error(nullptr, 116);
        }
    }
    
    #line 2533
    if((Sy == C_comma))
    {
        #line 2533
        P_insymbol(nullptr);
    }
    else
    {
        #line 2533
        P_error(nullptr, 20);
    }
    
    #line 2534
    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
    
    #line 2535
    if((Gattr.Typtr != nullptr))
    {
        #line 2536
        if(((*Gattr.Typtr._ptr).Form != C_scalar))
        {
            #line 2536
            P_error(nullptr, 116);
        }
        else
        {
            #line 2538
            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lsp, Gattr.Typtr)))
            {
                #line 2538
                P_error(nullptr, 116);
            }
        }
    }
    
    { /* NOP */ }
}


#line 2541
//================================================================================
// scope: block_body_statement_call_new (level : 6)

// activation record
struct Frame_block_body_statement_call_new
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_addrrange Lsize;
    T_stp Lsp;
    T_stp Lsp1;
    T_valu Lval;
    T_integer Varts;
};

// function body
void P_block_body_statement_call_new(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_new _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    // subroutine body
    #line 2545
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 2545
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 2546
    _F.Lsp = nullptr;
    
    #line 2546
    _F.Varts = 0;
    
    #line 2546
    _F.Lsize = 0;
    
    #line 2547
    if((Gattr.Typtr != nullptr))
    {
        #line 2549
        if(((*Gattr.Typtr._ptr).Form == C_pointer))
        {
            #line 2551
            if(((*Gattr.Typtr._ptr).Eltype != nullptr))
            {
                #line 2552
                _F.Lsize = (*(*Gattr.Typtr._ptr).Eltype._ptr).Size;
                
                #line 2553
                if(((*(*Gattr.Typtr._ptr).Eltype._ptr).Form == C_records))
                {
                    #line 2553
                    _F.Lsp = (*(*Gattr.Typtr._ptr).Eltype._ptr).Recvar;
                }
            }
        }
        else
        {
            #line 2556
            P_error(nullptr, 116);
        }
    }
    
    #line 2557
    while((Sy == C_comma))
    {
        #line 2558
        P_insymbol(nullptr);
        
        #line 2558
        P_block_constant(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lsp1, _F.Lval);
        
        #line 2559
        _F.Varts = (_F.Varts + 1);
        
        #line 2561
        if((_F.Lsp == nullptr))
        {
            #line 2561
            P_error(nullptr, 158);
        }
        else
        {
            #line 2563
            if(((*_F.Lsp._ptr).Form != C_tagfld))
            {
                #line 2563
                P_error(nullptr, 162);
            }
            else
            {
                #line 2565
                if(((*_F.Lsp._ptr).Tagfieldp != nullptr))
                {
                    #line 2566
                    if((F_block_string(_F._slink->_slink->_slink->_slink, _F.Lsp1) || (_F.Lsp1 == Realptr)))
                    {
                        #line 2566
                        P_error(nullptr, 159);
                    }
                    else
                    {
                        #line 2568
                        if(F_block_comptypes(_F._slink->_slink->_slink->_slink, (*(*_F.Lsp._ptr).Tagfieldp._ptr).Idtype, _F.Lsp1))
                        {
                            #line 2570
                            _F.Lsp1 = (*_F.Lsp._ptr).Fstvar;
                            
                            #line 2571
                            while((_F.Lsp1 != nullptr))
                            {
                                #line 2573
                                if(((*_F.Lsp1._ptr).Varval.Ival == _F.Lval.Ival))
                                {
                                    #line 2574
                                    _F.Lsize = (*_F.Lsp1._ptr).Size;
                                    
                                    #line 2574
                                    _F.Lsp = (*_F.Lsp1._ptr).Subvar;
                                    
                                    #line 2575
                                    goto L_1;
                                }
                                else
                                {
                                    #line 2577
                                    _F.Lsp1 = (*_F.Lsp1._ptr).Nxtvar;
                                }
                            }
                            
                            #line 2578
                            _F.Lsize = (*_F.Lsp._ptr).Size;
                            
                            #line 2578
                            _F.Lsp = nullptr;
                            
                            { /* NOP */ }
                        }
                        else
                        {
                            #line 2580
                            P_error(nullptr, 116);
                        }
                    }
                }
            }
        }
        
        L_1:
        { /* NOP */ }
    }
    
    #line 2582
    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Lsize);
    
    #line 2583
    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 12);
    
    { /* NOP */ }
}


#line 2586
//================================================================================
// scope: block_body_statement_call_mark (level : 6)

// activation record
struct Frame_block_body_statement_call_mark
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_mark(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_mark _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 2587
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 2588
    if((Gattr.Typtr != nullptr))
    {
        #line 2589
        if(((*Gattr.Typtr._ptr).Form == C_pointer))
        {
            #line 2590
            P_block_body_loadaddress(_F._slink->_slink->_slink);
            
            #line 2590
            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 23);
        }
        else
        {
            #line 2591
            P_error(nullptr, 116);
        }
    }
}


#line 2594
//================================================================================
// scope: block_body_statement_call_release (level : 6)

// activation record
struct Frame_block_body_statement_call_release
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_release(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_release _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 2595
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 2596
    if((Gattr.Typtr != nullptr))
    {
        #line 2597
        if(((*Gattr.Typtr._ptr).Form == C_pointer))
        {
            #line 2598
            P_block_body_load(_F._slink->_slink->_slink);
            
            #line 2598
            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 13);
        }
        else
        {
            #line 2599
            P_error(nullptr, 116);
        }
    }
}


#line 2604
//================================================================================
// scope: block_body_statement_call_abs (level : 6)

// activation record
struct Frame_block_body_statement_call_abs
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_abs(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_abs _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2606
    if((Gattr.Typtr != nullptr))
    {
        #line 2607
        if((Gattr.Typtr == Intptr))
        {
            #line 2607
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(0));
        }
        else
        {
            #line 2609
            if((Gattr.Typtr == Realptr))
            {
                #line 2609
                P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(1));
            }
            else
            {
                #line 2610
                P_error(nullptr, 125);
                
                #line 2610
                Gattr.Typtr = Intptr;
            }
        }
    }
}


#line 2613
//================================================================================
// scope: block_body_statement_call_sqr (level : 6)

// activation record
struct Frame_block_body_statement_call_sqr
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_sqr(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_sqr _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2615
    if((Gattr.Typtr != nullptr))
    {
        #line 2616
        if((Gattr.Typtr == Intptr))
        {
            #line 2616
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(24));
        }
        else
        {
            #line 2618
            if((Gattr.Typtr == Realptr))
            {
                #line 2618
                P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(25));
            }
            else
            {
                #line 2619
                P_error(nullptr, 125);
                
                #line 2619
                Gattr.Typtr = Intptr;
            }
        }
    }
}


#line 2622
//================================================================================
// scope: block_body_statement_call_trunc (level : 6)

// activation record
struct Frame_block_body_statement_call_trunc
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_trunc(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_trunc _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2624
    if((Gattr.Typtr != nullptr))
    {
        #line 2625
        if((Gattr.Typtr != Realptr))
        {
            #line 2625
            P_error(nullptr, 125);
        }
    }
    
    #line 2626
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(27));
    
    #line 2627
    Gattr.Typtr = Intptr;
}


#line 2630
//================================================================================
// scope: block_body_statement_call_odd (level : 6)

// activation record
struct Frame_block_body_statement_call_odd
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_odd(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_odd _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2632
    if((Gattr.Typtr != nullptr))
    {
        #line 2633
        if((Gattr.Typtr != Intptr))
        {
            #line 2633
            P_error(nullptr, 125);
        }
    }
    
    #line 2634
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(20));
    
    #line 2635
    Gattr.Typtr = Boolptr;
}


#line 2638
//================================================================================
// scope: block_body_statement_call_ord (level : 6)

// activation record
struct Frame_block_body_statement_call_ord
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_ord(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_ord _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2640
    if((Gattr.Typtr != nullptr))
    {
        #line 2641
        if(((*Gattr.Typtr._ptr).Form >= C_power))
        {
            #line 2641
            P_error(nullptr, 125);
        }
    }
    
    #line 2642
    P_block_body_gen0t(_F._slink->_slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
    
    #line 2643
    Gattr.Typtr = Intptr;
}


#line 2646
//================================================================================
// scope: block_body_statement_call_chr (level : 6)

// activation record
struct Frame_block_body_statement_call_chr
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_chr(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_chr _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2648
    if((Gattr.Typtr != nullptr))
    {
        #line 2649
        if((Gattr.Typtr != Intptr))
        {
            #line 2649
            P_error(nullptr, 125);
        }
    }
    
    #line 2650
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(59));
    
    #line 2651
    Gattr.Typtr = Charptr;
}


#line 2654
//================================================================================
// scope: block_body_statement_call_predsucc (level : 6)

// activation record
struct Frame_block_body_statement_call_predsucc
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_predsucc(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_predsucc _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 2656
    if((Gattr.Typtr != nullptr))
    {
        #line 2657
        if(((*Gattr.Typtr._ptr).Form != C_scalar))
        {
            #line 2657
            P_error(nullptr, 125);
        }
    }
    
    #line 2658
    if((_F._slink->Lkey == 7))
    {
        #line 2658
        P_block_body_gen1t(_F._slink->_slink->_slink, T_block_body_oprange::C(31), 1, Gattr.Typtr);
    }
    else
    {
        #line 2659
        P_block_body_gen1t(_F._slink->_slink->_slink, T_block_body_oprange::C(34), 1, Gattr.Typtr);
    }
}


#line 2662
//================================================================================
// scope: block_body_statement_call_eof (level : 6)

// activation record
struct Frame_block_body_statement_call_eof
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_eof(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_eof _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 2664
    if((Sy == C_lparent))
    {
        #line 2665
        P_insymbol(nullptr);
        
        #line 2665
        P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 2666
        if((Sy == C_rparent))
        {
            #line 2666
            P_insymbol(nullptr);
        }
        else
        {
            #line 2666
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 2670
        Gattr.Typtr = Textptr;
        
        #line 2670
        Gattr.Kind = C_varbl;
        
        #line 2670
        Gattr.Access = C_drct;
        
        #line 2671
        Gattr.Vlevel = 1;
        
        #line 2671
        Gattr.Dplmt = C_lcaftermarkstack;
    }
    
    #line 2673
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 2674
    if((Gattr.Typtr != nullptr))
    {
        #line 2675
        if(((*Gattr.Typtr._ptr).Form != C_files))
        {
            #line 2675
            P_error(nullptr, 125);
        }
    }
    
    #line 2676
    if((_F._slink->Lkey == 9))
    {
        #line 2676
        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(8));
    }
    else
    {
        #line 2676
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 14);
    }
    
    #line 2677
    Gattr.Typtr = Boolptr;
}


#line 2682
//================================================================================
// scope: block_body_statement_call_callnonstandard (level : 6)

// activation record
struct Frame_block_body_statement_call_callnonstandard
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_boolean Lb;
    T_ctp Lcp;
    T_idkind Lkind;
    T_addrrange Llc;
    T_addrrange Locpar;
    T_stp Lsp;
    T_ctp Nxt;
};

// function body
void P_block_body_statement_call_callnonstandard(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_callnonstandard _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_proc);
    _setLiteral1.set(C_func);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_proc);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_func);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_comma);
    _setLiteral5.set(C_rparent);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_comma);
    _setLiteral6.set(C_rparent);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_comma);
    _setLiteral7.set(C_rparent);
    
    // subroutine body
    #line 2685
    _F.Locpar = 0;
    
    #line 2687
    _F.Nxt = (*_F._slink->Fcp._ptr).Next;
    
    #line 2687
    _F.Lkind = (*_F._slink->Fcp._ptr).Pfkind;
    
    #line 2688
    if((!(*_F._slink->Fcp._ptr).Externl))
    {
        #line 2688
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(41), (Level - (*_F._slink->Fcp._ptr).Pflev));
    }
    
    #line 2690
    if((Sy == C_lparent))
    {
        #line 2691
        _F.Llc = Lc;
        
        #line 2692
        do
        {
            #line 2692
            _F.Lb = C_false;
            
            #line 2693
            if((_F.Lkind == C_actual))
            {
                #line 2695
                if((_F.Nxt == nullptr))
                {
                    #line 2695
                    P_error(nullptr, 126);
                }
                else
                {
                    #line 2696
                    _F.Lb = (_setLiteral1 & (*_F.Nxt._ptr).Klass);
                }
            }
            else
            {
                #line 2697
                P_error(nullptr, 399);
            }
            
            #line 2704
            P_insymbol(nullptr);
            
            #line 2705
            if(_F.Lb)
            {
                #line 2706
                P_error(nullptr, 399);
                
                #line 2707
                if((Sy != C_ident))
                {
                    #line 2708
                    P_error(nullptr, 2);
                    
                    #line 2708
                    P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
                }
                else
                {
                    #line 2711
                    if(((*_F.Nxt._ptr).Klass == C_proc))
                    {
                        #line 2711
                        P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp);
                    }
                    else
                    {
                        #line 2713
                        P_searchid(nullptr, T_setofids::C(_setLiteral4), _F.Lcp);
                        
                        #line 2714
                        if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*_F.Lcp._ptr).Idtype, (*_F.Nxt._ptr).Idtype)))
                        {
                            #line 2715
                            P_error(nullptr, 128);
                        }
                    }
                    
                    #line 2717
                    P_insymbol(nullptr);
                    
                    #line 2718
                    if((!((_F._slink->Fsys + _setLiteral5) & Sy)))
                    {
                        #line 2719
                        P_error(nullptr, 6);
                        
                        #line 2719
                        P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral6)));
                    }
                }
            }
            else
            {
                #line 2723
                P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral7)));
                
                #line 2724
                if((Gattr.Typtr != nullptr))
                {
                    #line 2725
                    if((_F.Lkind == C_actual))
                    {
                        #line 2727
                        if((_F.Nxt != nullptr))
                        {
                            #line 2728
                            _F.Lsp = (*_F.Nxt._ptr).Idtype;
                            
                            #line 2729
                            if((_F.Lsp != nullptr))
                            {
                                #line 2731
                                if(((*_F.Nxt._ptr).Vkind == C_actual))
                                {
                                    #line 2732
                                    if(((*_F.Lsp._ptr).Form <= C_power))
                                    {
                                        #line 2733
                                        P_block_body_load(_F._slink->_slink->_slink);
                                        
                                        #line 2734
                                        if(Debug)
                                        {
                                            #line 2734
                                            P_block_body_checkbnds(_F._slink->_slink->_slink, _F.Lsp);
                                        }
                                        
                                        #line 2735
                                        if((F_block_comptypes(_F._slink->_slink->_slink->_slink, Realptr, _F.Lsp) && (Gattr.Typtr == Intptr)))
                                        {
                                            #line 2737
                                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(10));
                                            
                                            #line 2738
                                            Gattr.Typtr = Realptr;
                                        }
                                        
                                        #line 2740
                                        _F.Locpar = (_F.Locpar + (*_F.Lsp._ptr).Size);
                                        
                                        #line 2741
                                        P_align(nullptr, Parmptr, _F.Locpar);
                                        
                                        { /* NOP */ }
                                    }
                                    else
                                    {
                                        #line 2745
                                        P_block_body_loadaddress(_F._slink->_slink->_slink);
                                        
                                        #line 2746
                                        _F.Locpar = (_F.Locpar + C_ptrsize);
                                        
                                        #line 2747
                                        P_align(nullptr, Parmptr, _F.Locpar);
                                    }
                                }
                                else
                                {
                                    #line 2750
                                    if((Gattr.Kind == C_varbl))
                                    {
                                        #line 2751
                                        P_block_body_loadaddress(_F._slink->_slink->_slink);
                                        
                                        #line 2752
                                        _F.Locpar = (_F.Locpar + C_ptrsize);
                                        
                                        #line 2753
                                        P_align(nullptr, Parmptr, _F.Locpar);
                                        
                                        { /* NOP */ }
                                    }
                                    else
                                    {
                                        #line 2755
                                        P_error(nullptr, 154);
                                    }
                                }
                                
                                #line 2756
                                if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lsp, Gattr.Typtr)))
                                {
                                    #line 2757
                                    P_error(nullptr, 142);
                                }
                            }
                        }
                    }
                    else
                    {
                        { /* NOP */ }
                    }
                }
            }
            
            #line 2765
            if(((_F.Lkind == C_actual) && (_F.Nxt != nullptr)))
            {
                #line 2765
                _F.Nxt = (*_F.Nxt._ptr).Next;
            }
        }
        while(!(Sy != C_comma));
        
        #line 2767
        Lc = _F.Llc;
        
        #line 2768
        if((Sy == C_rparent))
        {
            #line 2768
            P_insymbol(nullptr);
        }
        else
        {
            #line 2768
            P_error(nullptr, 4);
        }
    }
    
    #line 2770
    if((_F.Lkind == C_actual))
    {
        #line 2771
        if((_F.Nxt != nullptr))
        {
            #line 2771
            P_error(nullptr, 126);
        }
        
        #line 2774
        if((*_F._slink->Fcp._ptr).Externl)
        {
            #line 2774
            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), (*_F._slink->Fcp._ptr).Pfname);
        }
        else
        {
            #line 2775
            P_block_body_gencupent(_F._slink->_slink->_slink, T_block_body_oprange::C(46), _F.Locpar, (*_F._slink->Fcp._ptr).Pfname);
        }
        
        { /* NOP */ }
    }
    
    #line 2778
    Gattr.Typtr = (*_F._slink->Fcp._ptr).Idtype;
}


#line 2826
//================================================================================
// scope: block_body_statement_expression (level : 5)

// forward declarations
void P_block_body_statement_expression_simpleexpression(void* _slink, T_setofsys Fsys);

// activation record
struct Frame_block_body_statement_expression
{
   Frame_block_body_statement* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_attr Lattr;
    T_operator Lop;
    T_addrrange Lsize;
    T_char Typind;
};

// function body
void P_block_body_statement_expression(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body_statement_expression _F = { (Frame_block_body_statement*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_relop);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ltop);
    _setLiteral2.set(C_leop);
    _setLiteral2.set(C_gtop);
    _setLiteral2.set(C_geop);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ltop);
    _setLiteral3.set(C_gtop);
    
    // subroutine body
    #line 3110
    P_block_body_statement_expression_simpleexpression(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)));
    
    #line 3111
    if((Sy == C_relop))
    {
        #line 3113
        if((Gattr.Typtr != nullptr))
        {
            #line 3114
            if(((*Gattr.Typtr._ptr).Form <= C_power))
            {
                #line 3114
                P_block_body_load(_F._slink->_slink);
            }
            else
            {
                #line 3115
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 3116
        _F.Lattr = Gattr;
        
        #line 3116
        _F.Lop = Op;
        
        #line 3117
        if((_F.Lop == C_inop))
        {
            #line 3118
            if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
            {
                #line 3119
                P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
            }
        }
        
        #line 3120
        P_insymbol(nullptr);
        
        #line 3120
        P_block_body_statement_expression_simpleexpression(&_F, _F.Fsys);
        
        #line 3121
        if((Gattr.Typtr != nullptr))
        {
            #line 3122
            if(((*Gattr.Typtr._ptr).Form <= C_power))
            {
                #line 3122
                P_block_body_load(_F._slink->_slink);
            }
            else
            {
                #line 3123
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 3124
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 3125
            if((_F.Lop == C_inop))
            {
                #line 3126
                if(((*Gattr.Typtr._ptr).Form == C_power))
                {
                    #line 3127
                    if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, (*Gattr.Typtr._ptr).Elset))
                    {
                        #line 3128
                        P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(11));
                    }
                    else
                    {
                        #line 3129
                        P_error(nullptr, 129);
                        
                        #line 3129
                        Gattr.Typtr = nullptr;
                    }
                }
                else
                {
                    #line 3130
                    P_error(nullptr, 130);
                    
                    #line 3130
                    Gattr.Typtr = nullptr;
                }
            }
            else
            {
                #line 3133
                if((_F.Lattr.Typtr != Gattr.Typtr))
                {
                    #line 3134
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 3135
                        P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 3136
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 3139
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 3140
                            P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 3141
                            Gattr.Typtr = Realptr;
                        }
                    }
                }
                
                #line 3143
                if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
                {
                    #line 3144
                    _F.Lsize = (*_F.Lattr.Typtr._ptr).Size;
                    
                    #line 3145
                    switch((*_F.Lattr.Typtr._ptr).Form)
                    {
                    case C_scalar:
                        #line 3147
                        if((_F.Lattr.Typtr == Realptr))
                        {
                            #line 3147
                            _F.Typind = 'r';
                        }
                        else
                        {
                            #line 3149
                            if((_F.Lattr.Typtr == Boolptr))
                            {
                                #line 3149
                                _F.Typind = 'b';
                            }
                            else
                            {
                                #line 3151
                                if((_F.Lattr.Typtr == Charptr))
                                {
                                    #line 3151
                                    _F.Typind = 'c';
                                }
                                else
                                {
                                    #line 3152
                                    _F.Typind = 'i';
                                }
                            }
                        }
                        break;
                    
                    case C_pointer:
                        #line 3155
                        if((_setLiteral2 & _F.Lop))
                        {
                            #line 3155
                            P_error(nullptr, 131);
                        }
                        
                        #line 3156
                        _F.Typind = 'a';
                        break;
                    
                    case C_power:
                        #line 3159
                        if((_setLiteral3 & _F.Lop))
                        {
                            #line 3159
                            P_error(nullptr, 132);
                        }
                        
                        #line 3160
                        _F.Typind = 's';
                        break;
                    
                    case C_arrays:
                        #line 3164
                        if((!F_block_string(_F._slink->_slink->_slink, _F.Lattr.Typtr)))
                        {
                            #line 3165
                            P_error(nullptr, 134);
                        }
                        
                        #line 3166
                        _F.Typind = 'm';
                        break;
                    
                    case C_records:
                        #line 3170
                        P_error(nullptr, 134);
                        
                        #line 3171
                        _F.Typind = 'm';
                        break;
                    
                    case C_files:
                        #line 3174
                        P_error(nullptr, 133);
                        
                        #line 3174
                        _F.Typind = 'f';
                        break;
                    }
                    
                    #line 3176
                    switch(_F.Lop)
                    {
                    case C_ltop:
                        #line 3177
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(53), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_leop:
                        #line 3178
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(52), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_gtop:
                        #line 3179
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(49), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_geop:
                        #line 3180
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(48), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_neop:
                        #line 3181
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(55), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_eqop:
                        #line 3182
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(47), _ord(_F.Typind), _F.Lsize);
                        break;
                    }
                }
                else
                {
                    #line 3185
                    P_error(nullptr, 129);
                }
            }
        }
        
        #line 3187
        Gattr.Typtr = Boolptr;
        
        #line 3187
        Gattr.Kind = C_expr;
    }
}


#line 2829
//================================================================================
// scope: block_body_statement_expression_simpleexpression (level : 6)

// forward declarations
void P_block_body_statement_expression_simpleexpression_term(void* _slink, T_setofsys Fsys);

// activation record
struct Frame_block_body_statement_expression_simpleexpression
{
   Frame_block_body_statement_expression* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_attr Lattr;
    T_operator Lop;
    T_boolean Signed;
};

// function body
void P_block_body_statement_expression_simpleexpression(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body_statement_expression_simpleexpression _F = { (Frame_block_body_statement_expression*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_plus);
    _setLiteral1.set(C_minus);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_addop);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_addop);
    
    // subroutine body
    #line 3041
    _F.Signed = C_false;
    
    #line 3042
    if(((Sy == C_addop) && (_setLiteral1 & Op)))
    {
        #line 3043
        _F.Signed = (Op == C_minus);
        
        #line 3043
        P_insymbol(nullptr);
    }
    
    #line 3044
    P_block_body_statement_expression_simpleexpression_term(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)));
    
    #line 3045
    if(_F.Signed)
    {
        #line 3046
        P_block_body_load(_F._slink->_slink->_slink);
        
        #line 3047
        if((Gattr.Typtr == Intptr))
        {
            #line 3047
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(17));
        }
        else
        {
            #line 3049
            if((Gattr.Typtr == Realptr))
            {
                #line 3049
                P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(18));
            }
            else
            {
                #line 3050
                P_error(nullptr, 134);
                
                #line 3050
                Gattr.Typtr = nullptr;
            }
        }
    }
    
    #line 3052
    while((Sy == C_addop))
    {
        #line 3053
        P_block_body_load(_F._slink->_slink->_slink);
        
        #line 3053
        _F.Lattr = Gattr;
        
        #line 3053
        _F.Lop = Op;
        
        #line 3054
        P_insymbol(nullptr);
        
        #line 3054
        P_block_body_statement_expression_simpleexpression_term(&_F, T_setofsys::C((_F.Fsys + _setLiteral3)));
        
        #line 3054
        P_block_body_load(_F._slink->_slink->_slink);
        
        #line 3055
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 3056
            switch(_F.Lop)
            {
            case C_plus:
                #line 3058
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 3059
                    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(2));
                }
                else
                {
                    #line 3062
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 3063
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 3064
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 3067
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 3068
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 3069
                            Gattr.Typtr = Realptr;
                        }
                    }
                    
                    #line 3071
                    if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                    {
                        #line 3072
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(3));
                    }
                    else
                    {
                        #line 3073
                        if((((*_F.Lattr.Typtr._ptr).Form == C_power) && F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr)))
                        {
                            #line 3075
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(28));
                        }
                        else
                        {
                            #line 3076
                            P_error(nullptr, 134);
                            
                            #line 3076
                            Gattr.Typtr = nullptr;
                        }
                    }
                }
                break;
            
            case C_minus:
                #line 3079
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 3080
                    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(21));
                }
                else
                {
                    #line 3083
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 3084
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 3085
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 3088
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 3089
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 3090
                            Gattr.Typtr = Realptr;
                        }
                    }
                    
                    #line 3092
                    if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                    {
                        #line 3093
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(22));
                    }
                    else
                    {
                        #line 3095
                        if((((*_F.Lattr.Typtr._ptr).Form == C_power) && F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr)))
                        {
                            #line 3097
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(5));
                        }
                        else
                        {
                            #line 3098
                            P_error(nullptr, 134);
                            
                            #line 3098
                            Gattr.Typtr = nullptr;
                        }
                    }
                }
                break;
            
            case C_orop:
                #line 3101
                if(((_F.Lattr.Typtr == Boolptr) && (Gattr.Typtr == Boolptr)))
                {
                    #line 3102
                    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(13));
                }
                else
                {
                    #line 3103
                    P_error(nullptr, 134);
                    
                    #line 3103
                    Gattr.Typtr = nullptr;
                }
                break;
            }
        }
        else
        {
            #line 3105
            Gattr.Typtr = nullptr;
        }
    }
}


#line 2832
//================================================================================
// scope: block_body_statement_expression_simpleexpression_term (level : 7)

// forward declarations
void P_block_body_statement_expression_simpleexpression_term_factor(void* _slink, T_setofsys Fsys);

// activation record
struct Frame_block_body_statement_expression_simpleexpression_term
{
   Frame_block_body_statement_expression_simpleexpression* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_attr Lattr;
    T_operator Lop;
};

// function body
void P_block_body_statement_expression_simpleexpression_term(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body_statement_expression_simpleexpression_term _F = { (Frame_block_body_statement_expression_simpleexpression*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_mulop);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_mulop);
    
    // subroutine body
    #line 2986
    P_block_body_statement_expression_simpleexpression_term_factor(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)));
    
    #line 2987
    while((Sy == C_mulop))
    {
        #line 2988
        P_block_body_load(_F._slink->_slink->_slink->_slink);
        
        #line 2988
        _F.Lattr = Gattr;
        
        #line 2988
        _F.Lop = Op;
        
        #line 2989
        P_insymbol(nullptr);
        
        #line 2989
        P_block_body_statement_expression_simpleexpression_term_factor(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)));
        
        #line 2989
        P_block_body_load(_F._slink->_slink->_slink->_slink);
        
        #line 2990
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 2991
            switch(_F.Lop)
            {
            case C_mul:
                #line 2992
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 2993
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(15));
                }
                else
                {
                    #line 2996
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 2997
                        P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 2998
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 3001
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 3002
                            P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 3003
                            Gattr.Typtr = Realptr;
                        }
                    }
                    
                    #line 3005
                    if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                    {
                        #line 3006
                        P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(16));
                    }
                    else
                    {
                        #line 3008
                        if((((*_F.Lattr.Typtr._ptr).Form == C_power) && F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr)))
                        {
                            #line 3010
                            P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(12));
                        }
                        else
                        {
                            #line 3011
                            P_error(nullptr, 134);
                            
                            #line 3011
                            Gattr.Typtr = nullptr;
                        }
                    }
                }
                break;
            
            case C_rdiv:
                #line 3014
                if((Gattr.Typtr == Intptr))
                {
                    #line 3015
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(10));
                    
                    #line 3016
                    Gattr.Typtr = Realptr;
                }
                
                #line 3018
                if((_F.Lattr.Typtr == Intptr))
                {
                    #line 3019
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(9));
                    
                    #line 3020
                    _F.Lattr.Typtr = Realptr;
                }
                
                #line 3022
                if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                {
                    #line 3023
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(7));
                }
                else
                {
                    #line 3024
                    P_error(nullptr, 134);
                    
                    #line 3024
                    Gattr.Typtr = nullptr;
                }
                break;
            
            case C_idiv:
                #line 3026
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 3027
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(6));
                }
                else
                {
                    #line 3028
                    P_error(nullptr, 134);
                    
                    #line 3028
                    Gattr.Typtr = nullptr;
                }
                break;
            
            case C_imod:
                #line 3029
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 3030
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(14));
                }
                else
                {
                    #line 3031
                    P_error(nullptr, 134);
                    
                    #line 3031
                    Gattr.Typtr = nullptr;
                }
                break;
            
            case C_andop:
                #line 3032
                if(((_F.Lattr.Typtr == Boolptr) && (Gattr.Typtr == Boolptr)))
                {
                    #line 3033
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(4));
                }
                else
                {
                    #line 3034
                    P_error(nullptr, 134);
                    
                    #line 3034
                    Gattr.Typtr = nullptr;
                }
                break;
            }
        }
        else
        {
            #line 3036
            Gattr.Typtr = nullptr;
        }
    }
}


#line 2835
//================================================================================
// scope: block_body_statement_expression_simpleexpression_term_factor (level : 8)

// activation record
struct Frame_block_body_statement_expression_simpleexpression_term_factor
{
   Frame_block_body_statement_expression_simpleexpression_term* _slink;

    // parameters
    T_setofsys Fsys;

    // locals
    T_setty Cstpart;
    T_ctp Lcp;
    T_stp Lsp;
    T_csp Lvp;
    T_boolean Varpart;
};

// function body
void P_block_body_statement_expression_simpleexpression_term_factor(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_block_body_statement_expression_simpleexpression_term_factor _F = { (Frame_block_body_statement_expression_simpleexpression_term*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_konst);
    _setLiteral1.set(C_vars);
    _setLiteral1.set(C_field);
    _setLiteral1.set(C_func);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_rbrack);
    
    _T_GenericSet _setLiteral6;
    
    // subroutine body
    #line 2839
    if((!(Facbegsys & Sy)))
    {
        #line 2840
        P_error(nullptr, 58);
        
        #line 2840
        P_block_skip(_F._slink->_slink->_slink->_slink->_slink->_slink, (_F.Fsys + Facbegsys));
        
        #line 2841
        Gattr.Typtr = nullptr;
    }
    
    #line 2843
    while((Facbegsys & Sy))
    {
        #line 2845
        switch(Sy)
        {
        case C_ident:
            #line 2847
            P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
            
            #line 2848
            P_insymbol(nullptr);
            
            #line 2849
            if(((*_F.Lcp._ptr).Klass == C_func))
            {
                #line 2850
                P_block_body_statement_call(_F._slink->_slink->_slink->_slink, _F.Fsys, _F.Lcp);
                
                #line 2852
                Gattr.Kind = C_expr;
                
                #line 2853
                if((Gattr.Typtr != nullptr))
                {
                    #line 2854
                    if(((*Gattr.Typtr._ptr).Form == C_subrange))
                    {
                        #line 2855
                        Gattr.Typtr = (*Gattr.Typtr._ptr).Rangetype;
                    }
                }
            }
            else
            {
                #line 2859
                if(((*_F.Lcp._ptr).Klass == C_konst))
                {
                    #line 2861
                    Gattr.Typtr = (*_F.Lcp._ptr).Idtype;
                    
                    #line 2861
                    Gattr.Kind = C_cst;
                    
                    #line 2862
                    Gattr.Cval = (*_F.Lcp._ptr).Values;
                }
                else
                {
                    #line 2865
                    P_block_body_statement_selector(_F._slink->_slink->_slink->_slink, _F.Fsys, _F.Lcp);
                    
                    #line 2866
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 2868
                        if(((*Gattr.Typtr._ptr).Form == C_subrange))
                        {
                            #line 2869
                            Gattr.Typtr = (*Gattr.Typtr._ptr).Rangetype;
                        }
                    }
                }
            }
            break;
        
        case C_intconst:
            #line 2875
            Gattr.Typtr = Intptr;
            
            #line 2875
            Gattr.Kind = C_cst;
            
            #line 2876
            Gattr.Cval = Val;
            
            #line 2878
            P_insymbol(nullptr);
            break;
        
        case C_realconst:
            #line 2883
            Gattr.Typtr = Realptr;
            
            #line 2883
            Gattr.Kind = C_cst;
            
            #line 2884
            Gattr.Cval = Val;
            
            #line 2886
            P_insymbol(nullptr);
            break;
        
        case C_stringconst:
            #line 2892
            if((Lgth == 1))
            {
                #line 2892
                Gattr.Typtr = Charptr;
            }
            else
            {
                #line 2894
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_arrays);
                }
                
                #line 2896
                (*_F.Lsp._ptr).Aeltype = Charptr;
                
                #line 2896
                (*_F.Lsp._ptr).Form = C_arrays;
                
                #line 2897
                (*_F.Lsp._ptr).Inxtype = nullptr;
                
                #line 2897
                (*_F.Lsp._ptr).Size = (Lgth * C_charsize);
                
                #line 2899
                Gattr.Typtr = _F.Lsp;
            }
            
            #line 2901
            Gattr.Kind = C_cst;
            
            #line 2901
            Gattr.Cval = Val;
            
            #line 2903
            P_insymbol(nullptr);
            break;
        
        case C_lparent:
            #line 2906
            P_insymbol(nullptr);
            
            #line 2906
            P_block_body_statement_expression(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral2)));
            
            #line 2907
            if((Sy == C_rparent))
            {
                #line 2907
                P_insymbol(nullptr);
            }
            else
            {
                #line 2907
                P_error(nullptr, 4);
            }
            break;
        
        case C_notsy:
            #line 2910
            P_insymbol(nullptr);
            
            #line 2910
            P_block_body_statement_expression_simpleexpression_term_factor(_F._slink, _F.Fsys);
            
            #line 2911
            P_block_body_load(_F._slink->_slink->_slink->_slink->_slink);
            
            #line 2911
            P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(19));
            
            #line 2912
            if((Gattr.Typtr != nullptr))
            {
                #line 2913
                if((Gattr.Typtr != Boolptr))
                {
                    #line 2914
                    P_error(nullptr, 135);
                    
                    #line 2914
                    Gattr.Typtr = nullptr;
                }
            }
            
            { /* NOP */ }
            break;
        
        case C_lbrack:
            #line 2917
            P_insymbol(nullptr);
            
            #line 2917
            _F.Cstpart = _setLiteral3;
            
            #line 2917
            _F.Varpart = C_false;
            
            #line 2918
            {
                _new(_F.Lsp._ptr);
                _setValue(_F.Lsp._ptr->Form, C_power);
            }
            
            #line 2920
            (*_F.Lsp._ptr).Elset = nullptr;
            
            #line 2920
            (*_F.Lsp._ptr).Size = C_setsize;
            
            #line 2920
            (*_F.Lsp._ptr).Form = C_power;
            
            #line 2921
            if((Sy == C_rbrack))
            {
                #line 2924
                Gattr.Typtr = _F.Lsp;
                
                #line 2924
                Gattr.Kind = C_cst;
                
                #line 2925
                P_insymbol(nullptr);
            }
            else
            {
                #line 2929
                do
                {
                    #line 2929
                    P_block_body_statement_expression(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral4)));
                    
                    #line 2930
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 2931
                        if(((*Gattr.Typtr._ptr).Form != C_scalar))
                        {
                            #line 2932
                            P_error(nullptr, 136);
                            
                            #line 2932
                            Gattr.Typtr = nullptr;
                        }
                        else
                        {
                            #line 2934
                            if(F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, (*_F.Lsp._ptr).Elset, Gattr.Typtr))
                            {
                                #line 2936
                                if((Gattr.Kind == C_cst))
                                {
                                    #line 2937
                                    if(((Gattr.Cval.Ival < C_setlow) || (Gattr.Cval.Ival > C_sethigh)))
                                    {
                                        #line 2939
                                        P_error(nullptr, 304);
                                    }
                                    else
                                    {
                                        #line 2941
                                        {
                                            _T_GenericSet _setLiteral5;
                                            _setLiteral5.set(Gattr.Cval.Ival);
                                            
                                            _F.Cstpart = (_F.Cstpart + _setLiteral5);
                                        }
                                    }
                                }
                                else
                                {
                                    #line 2943
                                    P_block_body_load(_F._slink->_slink->_slink->_slink->_slink);
                                    
                                    #line 2944
                                    if((!F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, Gattr.Typtr, Intptr)))
                                    {
                                        #line 2945
                                        P_block_body_gen0t(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                                    }
                                    
                                    #line 2946
                                    P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(23));
                                    
                                    #line 2947
                                    if(_F.Varpart)
                                    {
                                        #line 2947
                                        P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(28));
                                    }
                                    else
                                    {
                                        #line 2948
                                        _F.Varpart = C_true;
                                    }
                                }
                                
                                #line 2950
                                (*_F.Lsp._ptr).Elset = Gattr.Typtr;
                                
                                #line 2951
                                Gattr.Typtr = _F.Lsp;
                            }
                            else
                            {
                                #line 2953
                                P_error(nullptr, 137);
                            }
                        }
                    }
                    
                    #line 2954
                    _F._slink->_slink->_slink->_slink->_slink->_slink->Test = (Sy != C_comma);
                    
                    #line 2955
                    if((!_F._slink->_slink->_slink->_slink->_slink->_slink->Test))
                    {
                        #line 2955
                        P_insymbol(nullptr);
                    }
                }
                while(!_F._slink->_slink->_slink->_slink->_slink->_slink->Test);
                
                #line 2957
                if((Sy == C_rbrack))
                {
                    #line 2957
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2957
                    P_error(nullptr, 12);
                }
            }
            
            #line 2959
            if(_F.Varpart)
            {
                #line 2961
                if((_F.Cstpart != _setLiteral6))
                {
                    #line 2962
                    {
                        _new(_F.Lvp._ptr);
                        _setValue(_F.Lvp._ptr->Cclass, C_pset);
                    }
                    
                    #line 2962
                    (*_F.Lvp._ptr).Pval = _F.Cstpart;
                    
                    #line 2963
                    (*_F.Lvp._ptr).Cclass = C_pset;
                    
                    #line 2964
                    if((_F._slink->_slink->_slink->_slink->_slink->Cstptrix == C_block_body_cstoccmax))
                    {
                        #line 2964
                        P_error(nullptr, 254);
                    }
                    else
                    {
                        #line 2966
                        _F._slink->_slink->_slink->_slink->_slink->Cstptrix = (_F._slink->_slink->_slink->_slink->_slink->Cstptrix + 1);
                        
                        #line 2967
                        _F._slink->_slink->_slink->_slink->_slink->Cstptr[_F._slink->_slink->_slink->_slink->_slink->Cstptrix] = _F.Lvp;
                        
                        #line 2968
                        P_block_body_gen2(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(51), 5, _F._slink->_slink->_slink->_slink->_slink->Cstptrix);
                        
                        #line 2969
                        P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(28));
                        
                        #line 2969
                        Gattr.Kind = C_expr;
                    }
                }
            }
            else
            {
                #line 2974
                {
                    _new(_F.Lvp._ptr);
                    _setValue(_F.Lvp._ptr->Cclass, C_pset);
                }
                
                #line 2974
                (*_F.Lvp._ptr).Pval = _F.Cstpart;
                
                #line 2975
                (*_F.Lvp._ptr).Cclass = C_pset;
                
                #line 2976
                Gattr.Cval.Valp = _F.Lvp;
            }
            break;
        }
        
        #line 2980
        if((!(_F.Fsys & Sy)))
        {
            #line 2981
            P_error(nullptr, 6);
            
            #line 2981
            P_block_skip(_F._slink->_slink->_slink->_slink->_slink->_slink, (_F.Fsys + Facbegsys));
        }
    }
}


#line 3191
//================================================================================
// scope: block_body_statement_assignment (level : 5)

// activation record
struct Frame_block_body_statement_assignment
{
   Frame_block_body_statement* _slink;

    // parameters
    T_ctp Fcp;

    // locals
    T_attr Lattr;
};

// function body
void P_block_body_statement_assignment(void* _slink, T_ctp Fcp)
{
    // prologue/frame definition
    Frame_block_body_statement_assignment _F = { (Frame_block_body_statement*)_slink, Fcp };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_becomes);
    
    // subroutine body
    #line 3193
    P_block_body_statement_selector(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)), _F.Fcp);
    
    #line 3194
    if((Sy == C_becomes))
    {
        #line 3196
        if((Gattr.Typtr != nullptr))
        {
            #line 3197
            if(((Gattr.Access != C_drct) || ((*Gattr.Typtr._ptr).Form > C_power)))
            {
                #line 3198
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 3199
        _F.Lattr = Gattr;
        
        #line 3200
        P_insymbol(nullptr);
        
        #line 3200
        P_block_body_statement_expression(_F._slink, _F._slink->Fsys);
        
        #line 3201
        if((Gattr.Typtr != nullptr))
        {
            #line 3202
            if(((*Gattr.Typtr._ptr).Form <= C_power))
            {
                #line 3202
                P_block_body_load(_F._slink->_slink);
            }
            else
            {
                #line 3203
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 3204
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 3206
            if((F_block_comptypes(_F._slink->_slink->_slink, Realptr, _F.Lattr.Typtr) && (Gattr.Typtr == Intptr)))
            {
                #line 3207
                P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(10));
                
                #line 3208
                Gattr.Typtr = Realptr;
            }
            
            #line 3210
            if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
            {
                #line 3211
                switch((*_F.Lattr.Typtr._ptr).Form)
                {
                case C_scalar:
                case C_subrange:
                    #line 3214
                    if(Debug)
                    {
                        #line 3214
                        P_block_body_checkbnds(_F._slink->_slink, _F.Lattr.Typtr);
                    }
                    
                    #line 3215
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    break;
                
                case C_pointer:
                    #line 3218
                    if(Debug)
                    {
                        #line 3219
                        P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), 0, C_maxaddr, Nilptr);
                    }
                    
                    #line 3220
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    break;
                
                case C_power:
                    #line 3222
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    break;
                
                case C_arrays:
                case C_records:
                    #line 3224
                    P_block_body_gen1(_F._slink->_slink, T_block_body_oprange::C(40), (*_F.Lattr.Typtr._ptr).Size);
                    break;
                
                case C_files:
                    #line 3225
                    P_error(nullptr, 146);
                    break;
                }
            }
            else
            {
                #line 3227
                P_error(nullptr, 129);
            }
        }
    }
    else
    {
        #line 3230
        P_error(nullptr, 51);
    }
}


#line 3233
//================================================================================
// scope: block_body_statement_gotostatement (level : 5)

// activation record
struct Frame_block_body_statement_gotostatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_boolean Found;
    T_lbp Llp;
    T_disprange Ttop;
    T_disprange Ttop1;
};

// function body
void P_block_body_statement_gotostatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_gotostatement _F = { (Frame_block_body_statement*)_slink };
    
    // subroutine body
    #line 3236
    if((Sy == C_intconst))
    {
        #line 3238
        _F.Found = C_false;
        
        #line 3239
        _F.Ttop = Top;
        
        #line 3240
        while((Display[_F.Ttop].Occur != C_blck))
        {
            #line 3240
            _F.Ttop = (_F.Ttop - 1);
        }
        
        #line 3241
        _F.Ttop1 = _F.Ttop;
        
        #line 3242
        do
        {
            #line 3243
            _F.Llp = Display[_F.Ttop].Flabel;
            
            #line 3244
            while(((_F.Llp != nullptr) && (!_F.Found)))
            {
                #line 3246
                if(((*_F.Llp._ptr).Labval == Val.Ival))
                {
                    #line 3247
                    _F.Found = C_true;
                    
                    #line 3248
                    if((_F.Ttop == _F.Ttop1))
                    {
                        #line 3249
                        P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), (*_F.Llp._ptr).Labname);
                    }
                    else
                    {
                        #line 3250
                        P_error(nullptr, 399);
                    }
                }
                else
                {
                    #line 3252
                    _F.Llp = (*_F.Llp._ptr).Nextlab;
                }
            }
            
            #line 3253
            _F.Ttop = (_F.Ttop - 1);
        }
        while(!(_F.Found || (_F.Ttop == 0)));
        
        #line 3255
        if((!_F.Found))
        {
            #line 3255
            P_error(nullptr, 167);
        }
        
        #line 3256
        P_insymbol(nullptr);
    }
    else
    {
        #line 3258
        P_error(nullptr, 15);
    }
}


#line 3261
//================================================================================
// scope: block_body_statement_compoundstatement (level : 5)

// activation record
struct Frame_block_body_statement_compoundstatement
{
   Frame_block_body_statement* _slink;
};

// function body
void P_block_body_statement_compoundstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_compoundstatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_endsy);
    
    // subroutine body
    #line 3263
    do
    {
        #line 3264
        do
        {
            #line 3264
            P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        }
        while(!(!(Statbegsys & Sy)));
        
        #line 3266
        _F._slink->_slink->_slink->Test = (Sy != C_semicolon);
        
        #line 3267
        if((!_F._slink->_slink->_slink->Test))
        {
            #line 3267
            P_insymbol(nullptr);
        }
    }
    while(!_F._slink->_slink->_slink->Test);
    
    #line 3269
    if((Sy == C_endsy))
    {
        #line 3269
        P_insymbol(nullptr);
    }
    else
    {
        #line 3269
        P_error(nullptr, 13);
    }
}


#line 3272
//================================================================================
// scope: block_body_statement_ifstatement (level : 5)

// activation record
struct Frame_block_body_statement_ifstatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_integer Lcix1;
    T_integer Lcix2;
};

// function body
void P_block_body_statement_ifstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_ifstatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_thensy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_elsesy);
    
    // subroutine body
    #line 3274
    P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3275
    P_genlabel(nullptr, _F.Lcix1);
    
    #line 3275
    P_block_body_genfjp(_F._slink->_slink, _F.Lcix1);
    
    #line 3276
    if((Sy == C_thensy))
    {
        #line 3276
        P_insymbol(nullptr);
    }
    else
    {
        #line 3276
        P_error(nullptr, 52);
    }
    
    #line 3277
    P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    
    #line 3278
    if((Sy == C_elsesy))
    {
        #line 3279
        P_genlabel(nullptr, _F.Lcix2);
        
        #line 3279
        P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Lcix2);
        
        #line 3280
        P_block_body_putlabel(_F._slink->_slink, _F.Lcix1);
        
        #line 3281
        P_insymbol(nullptr);
        
        #line 3281
        P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
        
        #line 3282
        P_block_body_putlabel(_F._slink->_slink, _F.Lcix2);
    }
    else
    {
        #line 3284
        P_block_body_putlabel(_F._slink->_slink, _F.Lcix1);
    }
}


#line 3287
//================================================================================
// scope: block_body_statement_casestatement (level : 5)

// types
struct T_block_body_statement_casestatement_caseinfo;
_PTR_TYPE(T_block_body_statement_casestatement_cip, T_block_body_statement_casestatement_caseinfo)
struct T_block_body_statement_casestatement_caseinfo
{
    T_block_body_statement_casestatement_cip Next;
    T_integer Csstart;
    T_integer Cslab;
};

// activation record
struct Frame_block_body_statement_casestatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_block_body_statement_casestatement_cip Fstptr;
    T_integer Laddr;
    T_integer Lcix;
    T_integer Lcix1;
    T_integer Lmax;
    T_integer Lmin;
    T_block_body_statement_casestatement_cip Lpt1;
    T_block_body_statement_casestatement_cip Lpt2;
    T_block_body_statement_casestatement_cip Lpt3;
    T_stp Lsp;
    T_stp Lsp1;
    T_valu Lval;
};

// function body
void P_block_body_statement_casestatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_casestatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ofsy);
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_endsy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_comma);
    _setLiteral3.set(C_colon);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_semicolon);
    
    // subroutine body
    #line 3297
    P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3298
    P_block_body_load(_F._slink->_slink);
    
    #line 3298
    P_genlabel(nullptr, _F.Lcix);
    
    #line 3299
    _F.Lsp = Gattr.Typtr;
    
    #line 3300
    if((_F.Lsp != nullptr))
    {
        #line 3301
        if((((*_F.Lsp._ptr).Form != C_scalar) || (_F.Lsp == Realptr)))
        {
            #line 3302
            P_error(nullptr, 144);
            
            #line 3302
            _F.Lsp = nullptr;
        }
        else
        {
            #line 3303
            if((!F_block_comptypes(_F._slink->_slink->_slink, _F.Lsp, Intptr)))
            {
                #line 3303
                P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), _F.Lsp);
            }
        }
    }
    
    #line 3304
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Lcix);
    
    #line 3305
    if((Sy == C_ofsy))
    {
        #line 3305
        P_insymbol(nullptr);
    }
    else
    {
        #line 3305
        P_error(nullptr, 8);
    }
    
    #line 3306
    _F.Fstptr = nullptr;
    
    #line 3306
    P_genlabel(nullptr, _F.Laddr);
    
    #line 3307
    do
    {
        #line 3308
        _F.Lpt3 = nullptr;
        
        #line 3308
        P_genlabel(nullptr, _F.Lcix1);
        
        #line 3309
        if((!(_setLiteral2 & Sy)))
        {
            #line 3311
            do
            {
                #line 3311
                P_block_constant(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)), _F.Lsp1, _F.Lval);
                
                #line 3312
                if((_F.Lsp != nullptr))
                {
                    #line 3313
                    if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lsp, _F.Lsp1))
                    {
                        #line 3314
                        _F.Lpt1 = _F.Fstptr;
                        
                        #line 3314
                        _F.Lpt2 = nullptr;
                        
                        #line 3315
                        while((_F.Lpt1 != nullptr))
                        {
                            #line 3318
                            if(((*_F.Lpt1._ptr).Cslab <= _F.Lval.Ival))
                            {
                                #line 3319
                                if(((*_F.Lpt1._ptr).Cslab == _F.Lval.Ival))
                                {
                                    #line 3319
                                    P_error(nullptr, 156);
                                }
                                
                                #line 3320
                                goto L_1;
                            }
                            
                            #line 3322
                            _F.Lpt2 = _F.Lpt1;
                            
                            #line 3322
                            _F.Lpt1 = (*_F.Lpt1._ptr).Next;
                        }
                        
                        #line 3324
                        L_1:
                        _new(_F.Lpt3._ptr);
                        
                        #line 3326
                        (*_F.Lpt3._ptr).Next = _F.Lpt1;
                        
                        #line 3326
                        (*_F.Lpt3._ptr).Cslab = _F.Lval.Ival;
                        
                        #line 3327
                        (*_F.Lpt3._ptr).Csstart = _F.Lcix1;
                        
                        #line 3329
                        if((_F.Lpt2 == nullptr))
                        {
                            #line 3329
                            _F.Fstptr = _F.Lpt3;
                        }
                        else
                        {
                            #line 3330
                            (*_F.Lpt2._ptr).Next = _F.Lpt3;
                        }
                    }
                    else
                    {
                        #line 3332
                        P_error(nullptr, 147);
                    }
                }
                
                #line 3333
                _F._slink->_slink->_slink->Test = (Sy != C_comma);
                
                #line 3334
                if((!_F._slink->_slink->_slink->Test))
                {
                    #line 3334
                    P_insymbol(nullptr);
                }
            }
            while(!_F._slink->_slink->_slink->Test);
            
            #line 3336
            if((Sy == C_colon))
            {
                #line 3336
                P_insymbol(nullptr);
            }
            else
            {
                #line 3336
                P_error(nullptr, 5);
            }
            
            #line 3337
            P_block_body_putlabel(_F._slink->_slink, _F.Lcix1);
            
            #line 3338
            do
            {
                #line 3338
                P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
            }
            while(!(!(Statbegsys & Sy)));
            
            #line 3340
            if((_F.Lpt3 != nullptr))
            {
                #line 3341
                P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Laddr);
            }
            
            { /* NOP */ }
        }
        
        #line 3343
        _F._slink->_slink->_slink->Test = (Sy != C_semicolon);
        
        #line 3344
        if((!_F._slink->_slink->_slink->Test))
        {
            #line 3344
            P_insymbol(nullptr);
        }
    }
    while(!_F._slink->_slink->_slink->Test);
    
    #line 3346
    P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
    
    #line 3347
    if((_F.Fstptr != nullptr))
    {
        #line 3348
        _F.Lmax = (*_F.Fstptr._ptr).Cslab;
        
        #line 3350
        _F.Lpt1 = _F.Fstptr;
        
        #line 3350
        _F.Fstptr = nullptr;
        
        #line 3351
        do
        {
            #line 3351
            _F.Lpt2 = (*_F.Lpt1._ptr).Next;
            
            #line 3351
            (*_F.Lpt1._ptr).Next = _F.Fstptr;
            
            #line 3352
            _F.Fstptr = _F.Lpt1;
            
            #line 3352
            _F.Lpt1 = _F.Lpt2;
        }
        while(!(_F.Lpt1 == nullptr));
        
        #line 3354
        _F.Lmin = (*_F.Fstptr._ptr).Cslab;
        
        #line 3355
        if(((_F.Lmax - _F.Lmin) < C_block_body_cixmax))
        {
            #line 3357
            P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), _F.Lmin, _F.Lmax, Intptr);
            
            #line 3358
            P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(51), 1, _F.Lmin);
            
            #line 3358
            P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(21));
            
            #line 3358
            P_genlabel(nullptr, _F.Lcix);
            
            #line 3359
            P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(44), _F.Lcix);
            
            #line 3359
            P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
            
            #line 3360
            do
            {
                #line 3363
                while(((*_F.Fstptr._ptr).Cslab > _F.Lmin))
                {
                    #line 3364
                    P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(60));
                    
                    #line 3365
                    _F.Lmin = (_F.Lmin + 1);
                }
                
                #line 3367
                P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), (*_F.Fstptr._ptr).Csstart);
                
                #line 3368
                _F.Fstptr = (*_F.Fstptr._ptr).Next;
                
                #line 3368
                _F.Lmin = (_F.Lmin + 1);
            }
            while(!(_F.Fstptr == nullptr));
            
            #line 3371
            P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
        }
        else
        {
            #line 3373
            P_error(nullptr, 157);
        }
    }
    
    #line 3375
    if((Sy == C_endsy))
    {
        #line 3375
        P_insymbol(nullptr);
    }
    else
    {
        #line 3375
        P_error(nullptr, 13);
    }
}


#line 3378
//================================================================================
// scope: block_body_statement_repeatstatement (level : 5)

// activation record
struct Frame_block_body_statement_repeatstatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_integer Laddr;
};

// function body
void P_block_body_statement_repeatstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_repeatstatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_untilsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_untilsy);
    
    // subroutine body
    #line 3380
    P_genlabel(nullptr, _F.Laddr);
    
    #line 3380
    P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
    
    #line 3381
    do
    {
        #line 3381
        P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 3382
        if((Statbegsys & Sy))
        {
            #line 3382
            P_error(nullptr, 14);
        }
    }
    while(!(!(Statbegsys & Sy)));
    
    #line 3384
    while((Sy == C_semicolon))
    {
        #line 3385
        P_insymbol(nullptr);
        
        #line 3386
        do
        {
            #line 3386
            P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
            
            #line 3387
            if((Statbegsys & Sy))
            {
                #line 3387
                P_error(nullptr, 14);
            }
        }
        while(!(!(Statbegsys & Sy)));
        
        { /* NOP */ }
    }
    
    #line 3390
    if((Sy == C_untilsy))
    {
        #line 3391
        P_insymbol(nullptr);
        
        #line 3391
        P_block_body_statement_expression(_F._slink, _F._slink->Fsys);
        
        #line 3391
        P_block_body_genfjp(_F._slink->_slink, _F.Laddr);
    }
    else
    {
        #line 3393
        P_error(nullptr, 53);
    }
}


#line 3396
//================================================================================
// scope: block_body_statement_whilestatement (level : 5)

// activation record
struct Frame_block_body_statement_whilestatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_integer Laddr;
    T_integer Lcix;
};

// function body
void P_block_body_statement_whilestatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_whilestatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_dosy);
    
    // subroutine body
    #line 3398
    P_genlabel(nullptr, _F.Laddr);
    
    #line 3398
    P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
    
    #line 3399
    P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3399
    P_genlabel(nullptr, _F.Lcix);
    
    #line 3399
    P_block_body_genfjp(_F._slink->_slink, _F.Lcix);
    
    #line 3400
    if((Sy == C_dosy))
    {
        #line 3400
        P_insymbol(nullptr);
    }
    else
    {
        #line 3400
        P_error(nullptr, 54);
    }
    
    #line 3401
    P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 3401
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Laddr);
    
    #line 3401
    P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
}


#line 3404
//================================================================================
// scope: block_body_statement_forstatement (level : 5)

// activation record
struct Frame_block_body_statement_forstatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_integer Laddr;
    T_attr Lattr;
    T_integer Lcix;
    T_addrrange Llc;
    T_symbol Lsy;
};

// function body
void P_block_body_statement_forstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_forstatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_vars);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_becomes);
    _setLiteral2.set(C_tosy);
    _setLiteral2.set(C_downtosy);
    _setLiteral2.set(C_dosy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_tosy);
    _setLiteral3.set(C_downtosy);
    _setLiteral3.set(C_dosy);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_tosy);
    _setLiteral4.set(C_downtosy);
    _setLiteral4.set(C_dosy);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_tosy);
    _setLiteral5.set(C_downtosy);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_dosy);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_dosy);
    
    // subroutine body
    #line 3408
    _F.Llc = Lc;
    
    #line 3410
    _F.Lattr.Typtr = nullptr;
    
    #line 3410
    _F.Lattr.Kind = C_varbl;
    
    #line 3411
    _F.Lattr.Access = C_drct;
    
    #line 3411
    _F.Lattr.Vlevel = Level;
    
    #line 3411
    _F.Lattr.Dplmt = 0;
    
    #line 3413
    if((Sy == C_ident))
    {
        #line 3414
        P_searchid(nullptr, T_setofids::C(_setLiteral1), _F._slink->Lcp);
        
        #line 3416
        _F.Lattr.Typtr = (*_F._slink->Lcp._ptr).Idtype;
        
        #line 3416
        _F.Lattr.Kind = C_varbl;
        
        #line 3417
        if(((*_F._slink->Lcp._ptr).Vkind == C_actual))
        {
            #line 3418
            _F.Lattr.Access = C_drct;
            
            #line 3418
            _F.Lattr.Vlevel = (*_F._slink->Lcp._ptr).Vlev;
            
            #line 3419
            _F.Lattr.Dplmt = (*_F._slink->Lcp._ptr).Vaddr;
        }
        else
        {
            #line 3421
            P_error(nullptr, 155);
            
            #line 3421
            _F.Lattr.Typtr = nullptr;
        }
        
        #line 3423
        if((_F.Lattr.Typtr != nullptr))
        {
            #line 3424
            if((((*_F.Lattr.Typtr._ptr).Form > C_subrange) || F_block_comptypes(_F._slink->_slink->_slink, Realptr, _F.Lattr.Typtr)))
            {
                #line 3426
                P_error(nullptr, 143);
                
                #line 3426
                _F.Lattr.Typtr = nullptr;
            }
        }
        
        #line 3427
        P_insymbol(nullptr);
    }
    else
    {
        #line 3430
        P_error(nullptr, 2);
        
        #line 3430
        P_block_skip(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    }
    
    #line 3431
    if((Sy == C_becomes))
    {
        #line 3432
        P_insymbol(nullptr);
        
        #line 3432
        P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
        
        #line 3433
        if((Gattr.Typtr != nullptr))
        {
            #line 3434
            if(((*Gattr.Typtr._ptr).Form != C_scalar))
            {
                #line 3434
                P_error(nullptr, 144);
            }
            else
            {
                #line 3436
                if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
                {
                    #line 3437
                    P_block_body_load(_F._slink->_slink);
                    
                    #line 3437
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                }
                else
                {
                    #line 3438
                    P_error(nullptr, 145);
                }
            }
        }
    }
    else
    {
        #line 3441
        P_error(nullptr, 51);
        
        #line 3441
        P_block_skip(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
    }
    
    #line 3442
    if((_setLiteral5 & Sy))
    {
        #line 3443
        _F.Lsy = Sy;
        
        #line 3443
        P_insymbol(nullptr);
        
        #line 3443
        P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral6)));
        
        #line 3444
        if((Gattr.Typtr != nullptr))
        {
            #line 3445
            if(((*Gattr.Typtr._ptr).Form != C_scalar))
            {
                #line 3445
                P_error(nullptr, 144);
            }
            else
            {
                #line 3447
                if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
                {
                    #line 3448
                    P_block_body_load(_F._slink->_slink);
                    
                    #line 3449
                    if((!F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Intptr)))
                    {
                        #line 3450
                        P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                    }
                    
                    #line 3451
                    P_align(nullptr, Intptr, Lc);
                    
                    #line 3452
                    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(56), 0, Lc, Intptr);
                    
                    #line 3453
                    P_genlabel(nullptr, _F.Laddr);
                    
                    #line 3453
                    P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
                    
                    #line 3454
                    Gattr = _F.Lattr;
                    
                    #line 3454
                    P_block_body_load(_F._slink->_slink);
                    
                    #line 3455
                    if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
                    {
                        #line 3456
                        P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                    }
                    
                    #line 3457
                    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), 0, Lc, Intptr);
                    
                    #line 3458
                    Lc = (Lc + C_intsize);
                    
                    #line 3459
                    if((Lc > _F._slink->_slink->Lcmax))
                    {
                        #line 3459
                        _F._slink->_slink->Lcmax = Lc;
                    }
                    
                    #line 3460
                    if((_F.Lsy == C_tosy))
                    {
                        #line 3460
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(52), _ord('i'), 1);
                    }
                    else
                    {
                        #line 3461
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(48), _ord('i'), 1);
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 3463
                    P_error(nullptr, 145);
                }
            }
        }
    }
    else
    {
        #line 3465
        P_error(nullptr, 55);
        
        #line 3465
        P_block_skip(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral7)));
    }
    
    #line 3466
    P_genlabel(nullptr, _F.Lcix);
    
    #line 3466
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(33), _F.Lcix);
    
    #line 3467
    if((Sy == C_dosy))
    {
        #line 3467
        P_insymbol(nullptr);
    }
    else
    {
        #line 3467
        P_error(nullptr, 54);
    }
    
    #line 3468
    P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 3469
    Gattr = _F.Lattr;
    
    #line 3469
    P_block_body_load(_F._slink->_slink);
    
    #line 3470
    if((_F.Lsy == C_tosy))
    {
        #line 3470
        P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(34), 1, Gattr.Typtr);
    }
    else
    {
        #line 3471
        P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(31), 1, Gattr.Typtr);
    }
    
    #line 3472
    P_block_body_store(_F._slink->_slink, _F.Lattr);
    
    #line 3472
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Laddr);
    
    #line 3472
    P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
    
    #line 3473
    Lc = _F.Llc;
    
    { /* NOP */ }
}


#line 3477
//================================================================================
// scope: block_body_statement_withstatement (level : 5)

// activation record
struct Frame_block_body_statement_withstatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_disprange Lcnt1;
    T_ctp Lcp;
    T_addrrange Llc;
};

// function body
void P_block_body_statement_withstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_withstatement _F = { (Frame_block_body_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_vars);
    _setLiteral1.set(C_field);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_dosy);
    
    // subroutine body
    #line 3479
    _F.Lcnt1 = 0;
    
    #line 3479
    _F.Llc = Lc;
    
    #line 3480
    do
    {
        #line 3481
        if((Sy == C_ident))
        {
            #line 3482
            P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
            
            #line 3482
            P_insymbol(nullptr);
        }
        else
        {
            #line 3483
            P_error(nullptr, 2);
            
            #line 3483
            _F.Lcp = Uvarptr;
        }
        
        #line 3484
        P_block_body_statement_selector(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lcp);
        
        #line 3485
        if((Gattr.Typtr != nullptr))
        {
            #line 3486
            if(((*Gattr.Typtr._ptr).Form == C_records))
            {
                #line 3487
                if((Top < C_displimit))
                {
                    #line 3488
                    Top = (Top + 1);
                    
                    #line 3488
                    _F.Lcnt1 = (_F.Lcnt1 + 1);
                    
                    #line 3490
                    Display[Top].Fname = (*Gattr.Typtr._ptr).Fstfld;
                    
                    #line 3491
                    Display[Top].Flabel = nullptr;
                    
                    #line 3493
                    if((Gattr.Access == C_drct))
                    {
                        #line 3495
                        Display[Top].Occur = C_crec;
                        
                        #line 3495
                        Display[Top].Clev = Gattr.Vlevel;
                        
                        #line 3496
                        Display[Top].Cdspl = Gattr.Dplmt;
                    }
                    else
                    {
                        #line 3499
                        P_block_body_loadaddress(_F._slink->_slink);
                        
                        #line 3500
                        P_align(nullptr, Nilptr, Lc);
                        
                        #line 3501
                        P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(56), 0, Lc, Nilptr);
                        
                        #line 3503
                        Display[Top].Occur = C_vrec;
                        
                        #line 3503
                        Display[Top].Vdspl = Lc;
                        
                        #line 3504
                        Lc = (Lc + C_ptrsize);
                        
                        #line 3505
                        if((Lc > _F._slink->_slink->Lcmax))
                        {
                            #line 3505
                            _F._slink->_slink->Lcmax = Lc;
                        }
                    }
                }
                else
                {
                    #line 3508
                    P_error(nullptr, 250);
                }
            }
            else
            {
                #line 3509
                P_error(nullptr, 140);
            }
        }
        
        #line 3510
        _F._slink->_slink->_slink->Test = (Sy != C_comma);
        
        #line 3511
        if((!_F._slink->_slink->_slink->Test))
        {
            #line 3511
            P_insymbol(nullptr);
        }
    }
    while(!_F._slink->_slink->_slink->Test);
    
    #line 3513
    if((Sy == C_dosy))
    {
        #line 3513
        P_insymbol(nullptr);
    }
    else
    {
        #line 3513
        P_error(nullptr, 54);
    }
    
    #line 3514
    P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 3515
    Top = (Top - _F.Lcnt1);
    
    #line 3515
    Lc = _F.Llc;
    
    { /* NOP */ }
}


#line 3677
//================================================================================
// scope: programme (level : 2)

// activation record
struct Frame_programme
{
    // parameters
    T_setofsys Fsys;

    // locals
    T_extfilep Extfp;
};

// function body
void P_programme(void* _slink, T_setofsys Fsys)
{
    // prologue/frame definition
    Frame_programme _F = {Fsys };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_lparent);
    _setLiteral1.set(C_semicolon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    // subroutine body
    #line 3680
    if((Sy == C_progsy))
    {
        #line 3681
        P_insymbol(nullptr);
        
        #line 3681
        if((Sy != C_ident))
        {
            #line 3681
            P_error(nullptr, 2);
        }
        
        #line 3681
        P_insymbol(nullptr);
        
        #line 3682
        if((!(_setLiteral1 & Sy)))
        {
            #line 3682
            P_error(nullptr, 14);
        }
        
        #line 3683
        if((Sy == C_lparent))
        {
            #line 3685
            do
            {
                #line 3685
                P_insymbol(nullptr);
                
                #line 3686
                if((Sy == C_ident))
                {
                    #line 3687
                    _new(_F.Extfp._ptr);
                    
                    #line 3689
                    (*_F.Extfp._ptr).Filename = Id;
                    
                    #line 3689
                    (*_F.Extfp._ptr).Nextfile = Fextfilep;
                    
                    #line 3690
                    Fextfilep = _F.Extfp;
                    
                    #line 3691
                    P_insymbol(nullptr);
                    
                    #line 3692
                    if((!(_setLiteral2 & Sy)))
                    {
                        #line 3692
                        P_error(nullptr, 20);
                    }
                }
                else
                {
                    #line 3694
                    P_error(nullptr, 2);
                }
            }
            while(!(Sy != C_comma));
            
            #line 3696
            if((Sy != C_rparent))
            {
                #line 3696
                P_error(nullptr, 4);
            }
            
            #line 3697
            P_insymbol(nullptr);
        }
        
        #line 3699
        if((Sy != C_semicolon))
        {
            #line 3699
            P_error(nullptr, 14);
        }
        else
        {
            #line 3700
            P_insymbol(nullptr);
        }
        
        { /* NOP */ }
    }
    
    #line 3702
    do
    {
        #line 3702
        P_block(nullptr, _F.Fsys, C_period, T_ctp::C(nullptr));
        
        #line 3703
        if((Sy != C_period))
        {
            #line 3703
            P_error(nullptr, 21);
        }
    }
    while(!((Sy == C_period) || _eof(Source)));
    
    #line 3705
    if(List)
    {
        #line 3705
        Output << _WRITELN;
    }
    
    #line 3706
    if((Errinx != 0))
    {
        #line 3707
        List = C_false;
        
        #line 3707
        P_endofline(nullptr);
    }
}


#line 3711
//================================================================================
// scope: stdnames (level : 2)

// activation record
struct Frame_stdnames
{};

// function body
void P_stdnames(void* _slink)
{
    // prologue/frame definition
    Frame_stdnames _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 3713
    Na[1] = "false   ";
    
    #line 3713
    Na[2] = "true    ";
    
    #line 3713
    Na[3] = "input   ";
    
    #line 3714
    Na[4] = "output  ";
    
    #line 3714
    Na[5] = "get     ";
    
    #line 3714
    Na[6] = "put     ";
    
    #line 3715
    Na[7] = "reset   ";
    
    #line 3715
    Na[8] = "rewrite ";
    
    #line 3715
    Na[9] = "read    ";
    
    #line 3716
    Na[10] = "write   ";
    
    #line 3716
    Na[11] = "pack    ";
    
    #line 3716
    Na[12] = "unpack  ";
    
    #line 3717
    Na[13] = "new     ";
    
    #line 3717
    Na[14] = "release ";
    
    #line 3717
    Na[15] = "readln  ";
    
    #line 3718
    Na[16] = "writeln ";
    
    #line 3719
    Na[17] = "abs     ";
    
    #line 3719
    Na[18] = "sqr     ";
    
    #line 3719
    Na[19] = "trunc   ";
    
    #line 3720
    Na[20] = "odd     ";
    
    #line 3720
    Na[21] = "ord     ";
    
    #line 3720
    Na[22] = "chr     ";
    
    #line 3721
    Na[23] = "pred    ";
    
    #line 3721
    Na[24] = "succ    ";
    
    #line 3721
    Na[25] = "eof     ";
    
    #line 3722
    Na[26] = "eoln    ";
    
    #line 3723
    Na[27] = "sin     ";
    
    #line 3723
    Na[28] = "cos     ";
    
    #line 3723
    Na[29] = "exp     ";
    
    #line 3724
    Na[30] = "sqrt    ";
    
    #line 3724
    Na[31] = "ln      ";
    
    #line 3724
    Na[32] = "arctan  ";
    
    #line 3725
    Na[33] = "prd     ";
    
    #line 3725
    Na[34] = "prr     ";
    
    #line 3725
    Na[35] = "mark    ";
    
    { /* NOP */ }
}


#line 3728
//================================================================================
// scope: enterstdtypes (level : 2)

// activation record
struct Frame_enterstdtypes
{};

// function body
void P_enterstdtypes(void* _slink)
{
    // prologue/frame definition
    Frame_enterstdtypes _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 3733
    {
        _new(Intptr._ptr);
        _setValue(Intptr._ptr->Form, C_scalar);
        _setValue(Intptr._ptr->Scalkind, C_standard);
    }
    
    #line 3735
    (*Intptr._ptr).Size = C_intsize;
    
    #line 3735
    (*Intptr._ptr).Form = C_scalar;
    
    #line 3735
    (*Intptr._ptr).Scalkind = C_standard;
    
    #line 3736
    {
        _new(Realptr._ptr);
        _setValue(Realptr._ptr->Form, C_scalar);
        _setValue(Realptr._ptr->Scalkind, C_standard);
    }
    
    #line 3738
    (*Realptr._ptr).Size = C_realsize;
    
    #line 3738
    (*Realptr._ptr).Form = C_scalar;
    
    #line 3738
    (*Realptr._ptr).Scalkind = C_standard;
    
    #line 3739
    {
        _new(Charptr._ptr);
        _setValue(Charptr._ptr->Form, C_scalar);
        _setValue(Charptr._ptr->Scalkind, C_standard);
    }
    
    #line 3741
    (*Charptr._ptr).Size = C_charsize;
    
    #line 3741
    (*Charptr._ptr).Form = C_scalar;
    
    #line 3741
    (*Charptr._ptr).Scalkind = C_standard;
    
    #line 3742
    {
        _new(Boolptr._ptr);
        _setValue(Boolptr._ptr->Form, C_scalar);
        _setValue(Boolptr._ptr->Scalkind, C_declared);
    }
    
    #line 3744
    (*Boolptr._ptr).Size = C_boolsize;
    
    #line 3744
    (*Boolptr._ptr).Form = C_scalar;
    
    #line 3744
    (*Boolptr._ptr).Scalkind = C_declared;
    
    #line 3745
    {
        _new(Nilptr._ptr);
        _setValue(Nilptr._ptr->Form, C_pointer);
    }
    
    #line 3747
    (*Nilptr._ptr).Eltype = nullptr;
    
    #line 3747
    (*Nilptr._ptr).Size = C_ptrsize;
    
    #line 3747
    (*Nilptr._ptr).Form = C_pointer;
    
    #line 3748
    {
        _new(Parmptr._ptr);
        _setValue(Parmptr._ptr->Form, C_scalar);
        _setValue(Parmptr._ptr->Scalkind, C_standard);
    }
    
    #line 3750
    (*Parmptr._ptr).Size = C_parmsize;
    
    #line 3750
    (*Parmptr._ptr).Form = C_scalar;
    
    #line 3750
    (*Parmptr._ptr).Scalkind = C_standard;
    
    #line 3751
    {
        _new(Textptr._ptr);
        _setValue(Textptr._ptr->Form, C_files);
    }
    
    #line 3753
    (*Textptr._ptr).Filtype = Charptr;
    
    #line 3753
    (*Textptr._ptr).Size = C_charsize;
    
    #line 3753
    (*Textptr._ptr).Form = C_files;
}


#line 3756
//================================================================================
// scope: entstdnames (level : 2)

// activation record
struct Frame_entstdnames
{
    // locals
    T_ctp Cp;
    T_ctp Cp1;
    T_integer i;
};

// function body
void P_entstdnames(void* _slink)
{
    // prologue/frame definition
    Frame_entstdnames _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 3761
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 3763
    (*_F.Cp._ptr).Name = "integer ";
    
    #line 3763
    (*_F.Cp._ptr).Idtype = Intptr;
    
    #line 3763
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 3764
    P_enterid(nullptr, _F.Cp);
    
    #line 3765
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 3767
    (*_F.Cp._ptr).Name = "real    ";
    
    #line 3767
    (*_F.Cp._ptr).Idtype = Realptr;
    
    #line 3767
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 3768
    P_enterid(nullptr, _F.Cp);
    
    #line 3769
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 3771
    (*_F.Cp._ptr).Name = "char    ";
    
    #line 3771
    (*_F.Cp._ptr).Idtype = Charptr;
    
    #line 3771
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 3772
    P_enterid(nullptr, _F.Cp);
    
    #line 3773
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 3775
    (*_F.Cp._ptr).Name = "boolean ";
    
    #line 3775
    (*_F.Cp._ptr).Idtype = Boolptr;
    
    #line 3775
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 3776
    P_enterid(nullptr, _F.Cp);
    
    #line 3777
    _F.Cp1 = nullptr;
    
    #line 3778
    _FOR_TO(_F.i, 1, 2)
    {
        #line 3779
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_konst);
        }
        
        #line 3781
        (*_F.Cp._ptr).Name = Na[_F.i];
        
        #line 3781
        (*_F.Cp._ptr).Idtype = Boolptr;
        
        #line 3782
        (*_F.Cp._ptr).Next = _F.Cp1;
        
        #line 3782
        (*_F.Cp._ptr).Values.Ival = (_F.i - 1);
        
        #line 3782
        (*_F.Cp._ptr).Klass = C_konst;
        
        #line 3784
        P_enterid(nullptr, _F.Cp);
        
        #line 3784
        _F.Cp1 = _F.Cp;
    }
    _FOR_END(_F.i)
    
    #line 3786
    (*Boolptr._ptr).Fconst = _F.Cp;
    
    #line 3787
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_konst);
    }
    
    #line 3789
    (*_F.Cp._ptr).Name = "nil     ";
    
    #line 3789
    (*_F.Cp._ptr).Idtype = Nilptr;
    
    #line 3790
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 3790
    (*_F.Cp._ptr).Values.Ival = 0;
    
    #line 3790
    (*_F.Cp._ptr).Klass = C_konst;
    
    #line 3792
    P_enterid(nullptr, _F.Cp);
    
    #line 3793
    _FOR_TO(_F.i, 3, 4)
    {
        #line 3794
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_vars);
        }
        
        #line 3796
        (*_F.Cp._ptr).Name = Na[_F.i];
        
        #line 3796
        (*_F.Cp._ptr).Idtype = Textptr;
        
        #line 3796
        (*_F.Cp._ptr).Klass = C_vars;
        
        #line 3797
        (*_F.Cp._ptr).Vkind = C_actual;
        
        #line 3797
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 3797
        (*_F.Cp._ptr).Vlev = 1;
        
        #line 3798
        (*_F.Cp._ptr).Vaddr = (C_lcaftermarkstack + ((_F.i - 3) * C_charmax));
        
        { /* NOP */ }
        
        #line 3800
        P_enterid(nullptr, _F.Cp);
    }
    _FOR_END(_F.i)
    
    #line 3802
    _FOR_TO(_F.i, 33, 34)
    {
        #line 3803
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_vars);
        }
        
        #line 3805
        (*_F.Cp._ptr).Name = Na[_F.i];
        
        #line 3805
        (*_F.Cp._ptr).Idtype = Textptr;
        
        #line 3805
        (*_F.Cp._ptr).Klass = C_vars;
        
        #line 3806
        (*_F.Cp._ptr).Vkind = C_actual;
        
        #line 3806
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 3806
        (*_F.Cp._ptr).Vlev = 1;
        
        #line 3807
        (*_F.Cp._ptr).Vaddr = (C_lcaftermarkstack + ((_F.i - 31) * C_charmax));
        
        { /* NOP */ }
        
        #line 3809
        P_enterid(nullptr, _F.Cp);
    }
    _FOR_END(_F.i)
    
    #line 3811
    _FOR_TO(_F.i, 5, 16)
    {
        #line 3812
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_proc);
            _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
        }
        
        #line 3814
        (*_F.Cp._ptr).Name = Na[_F.i];
        
        #line 3814
        (*_F.Cp._ptr).Idtype = nullptr;
        
        #line 3815
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 3815
        (*_F.Cp._ptr).Key = (_F.i - 4);
        
        #line 3816
        (*_F.Cp._ptr).Klass = C_proc;
        
        #line 3816
        (*_F.Cp._ptr).Pfdeckind = C_standard;
        
        #line 3818
        P_enterid(nullptr, _F.Cp);
    }
    _FOR_END(_F.i)
    
    #line 3820
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_proc);
        _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
    }
    
    #line 3822
    (*_F.Cp._ptr).Name = Na[35];
    
    #line 3822
    (*_F.Cp._ptr).Idtype = nullptr;
    
    #line 3823
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 3823
    (*_F.Cp._ptr).Key = 13;
    
    #line 3824
    (*_F.Cp._ptr).Klass = C_proc;
    
    #line 3824
    (*_F.Cp._ptr).Pfdeckind = C_standard;
    
    #line 3825
    P_enterid(nullptr, _F.Cp);
    
    #line 3826
    _FOR_TO(_F.i, 17, 26)
    {
        #line 3827
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_func);
            _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
        }
        
        #line 3829
        (*_F.Cp._ptr).Name = Na[_F.i];
        
        #line 3829
        (*_F.Cp._ptr).Idtype = nullptr;
        
        #line 3830
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 3830
        (*_F.Cp._ptr).Key = (_F.i - 16);
        
        #line 3831
        (*_F.Cp._ptr).Klass = C_func;
        
        #line 3831
        (*_F.Cp._ptr).Pfdeckind = C_standard;
        
        #line 3833
        P_enterid(nullptr, _F.Cp);
    }
    _FOR_END(_F.i)
    
    #line 3835
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_vars);
    }
    
    #line 3837
    (*_F.Cp._ptr).Name = "        ";
    
    #line 3837
    (*_F.Cp._ptr).Idtype = Realptr;
    
    #line 3837
    (*_F.Cp._ptr).Klass = C_vars;
    
    #line 3838
    (*_F.Cp._ptr).Vkind = C_actual;
    
    #line 3838
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 3838
    (*_F.Cp._ptr).Vlev = 1;
    
    #line 3838
    (*_F.Cp._ptr).Vaddr = 0;
    
    #line 3840
    _FOR_TO(_F.i, 27, 32)
    {
        #line 3841
        {
            _new(_F.Cp1._ptr);
            _setValue(_F.Cp1._ptr->Klass, C_func);
            _setValue(_F.Cp1._ptr->Pfdeckind, C_declared);
            _setValue(_F.Cp1._ptr->Pfkind, C_actual);
        }
        
        #line 3843
        (*_F.Cp1._ptr).Name = Na[_F.i];
        
        #line 3843
        (*_F.Cp1._ptr).Idtype = Realptr;
        
        #line 3843
        (*_F.Cp1._ptr).Next = _F.Cp;
        
        #line 3844
        (*_F.Cp1._ptr).Forwdecl = C_false;
        
        #line 3844
        (*_F.Cp1._ptr).Externl = C_true;
        
        #line 3844
        (*_F.Cp1._ptr).Pflev = 0;
        
        #line 3844
        (*_F.Cp1._ptr).Pfname = (_F.i - 12);
        
        #line 3845
        (*_F.Cp1._ptr).Klass = C_func;
        
        #line 3845
        (*_F.Cp1._ptr).Pfdeckind = C_declared;
        
        #line 3845
        (*_F.Cp1._ptr).Pfkind = C_actual;
        
        #line 3847
        P_enterid(nullptr, _F.Cp1);
    }
    _FOR_END(_F.i)
}


#line 3851
//================================================================================
// scope: enterundecl (level : 2)

// activation record
struct Frame_enterundecl
{};

// function body
void P_enterundecl(void* _slink)
{
    // prologue/frame definition
    Frame_enterundecl _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 3853
    {
        _new(Utypptr._ptr);
        _setValue(Utypptr._ptr->Klass, C_types);
    }
    
    #line 3855
    (*Utypptr._ptr).Name = "        ";
    
    #line 3855
    (*Utypptr._ptr).Idtype = nullptr;
    
    #line 3855
    (*Utypptr._ptr).Klass = C_types;
    
    #line 3856
    {
        _new(Ucstptr._ptr);
        _setValue(Ucstptr._ptr->Klass, C_konst);
    }
    
    #line 3858
    (*Ucstptr._ptr).Name = "        ";
    
    #line 3858
    (*Ucstptr._ptr).Idtype = nullptr;
    
    #line 3858
    (*Ucstptr._ptr).Next = nullptr;
    
    #line 3859
    (*Ucstptr._ptr).Values.Ival = 0;
    
    #line 3859
    (*Ucstptr._ptr).Klass = C_konst;
    
    #line 3861
    {
        _new(Uvarptr._ptr);
        _setValue(Uvarptr._ptr->Klass, C_vars);
    }
    
    #line 3863
    (*Uvarptr._ptr).Name = "        ";
    
    #line 3863
    (*Uvarptr._ptr).Idtype = nullptr;
    
    #line 3863
    (*Uvarptr._ptr).Vkind = C_actual;
    
    #line 3864
    (*Uvarptr._ptr).Next = nullptr;
    
    #line 3864
    (*Uvarptr._ptr).Vlev = 0;
    
    #line 3864
    (*Uvarptr._ptr).Vaddr = 0;
    
    #line 3864
    (*Uvarptr._ptr).Klass = C_vars;
    
    #line 3866
    {
        _new(Ufldptr._ptr);
        _setValue(Ufldptr._ptr->Klass, C_field);
    }
    
    #line 3868
    (*Ufldptr._ptr).Name = "        ";
    
    #line 3868
    (*Ufldptr._ptr).Idtype = nullptr;
    
    #line 3868
    (*Ufldptr._ptr).Next = nullptr;
    
    #line 3868
    (*Ufldptr._ptr).Fldaddr = 0;
    
    #line 3869
    (*Ufldptr._ptr).Klass = C_field;
    
    #line 3871
    {
        _new(Uprcptr._ptr);
        _setValue(Uprcptr._ptr->Klass, C_proc);
        _setValue(Uprcptr._ptr->Pfdeckind, C_declared);
        _setValue(Uprcptr._ptr->Pfkind, C_actual);
    }
    
    #line 3873
    (*Uprcptr._ptr).Name = "        ";
    
    #line 3873
    (*Uprcptr._ptr).Idtype = nullptr;
    
    #line 3873
    (*Uprcptr._ptr).Forwdecl = C_false;
    
    #line 3874
    (*Uprcptr._ptr).Next = nullptr;
    
    #line 3874
    (*Uprcptr._ptr).Externl = C_false;
    
    #line 3874
    (*Uprcptr._ptr).Pflev = 0;
    
    #line 3874
    P_genlabel(nullptr, (*Uprcptr._ptr).Pfname);
    
    #line 3875
    (*Uprcptr._ptr).Klass = C_proc;
    
    #line 3875
    (*Uprcptr._ptr).Pfdeckind = C_declared;
    
    #line 3875
    (*Uprcptr._ptr).Pfkind = C_actual;
    
    #line 3877
    {
        _new(Ufctptr._ptr);
        _setValue(Ufctptr._ptr->Klass, C_func);
        _setValue(Ufctptr._ptr->Pfdeckind, C_declared);
        _setValue(Ufctptr._ptr->Pfkind, C_actual);
    }
    
    #line 3879
    (*Ufctptr._ptr).Name = "        ";
    
    #line 3879
    (*Ufctptr._ptr).Idtype = nullptr;
    
    #line 3879
    (*Ufctptr._ptr).Next = nullptr;
    
    #line 3880
    (*Ufctptr._ptr).Forwdecl = C_false;
    
    #line 3880
    (*Ufctptr._ptr).Externl = C_false;
    
    #line 3880
    (*Ufctptr._ptr).Pflev = 0;
    
    #line 3880
    P_genlabel(nullptr, (*Ufctptr._ptr).Pfname);
    
    #line 3881
    (*Ufctptr._ptr).Klass = C_func;
    
    #line 3881
    (*Ufctptr._ptr).Pfdeckind = C_declared;
    
    #line 3881
    (*Ufctptr._ptr).Pfkind = C_actual;
}


#line 3885
//================================================================================
// scope: initscalars (level : 2)

// activation record
struct Frame_initscalars
{};

// function body
void P_initscalars(void* _slink)
{
    // prologue/frame definition
    Frame_initscalars _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 3886
    Fwptr = nullptr;
    
    #line 3887
    Prtables = C_false;
    
    #line 3887
    List = C_true;
    
    #line 3887
    Prcode = C_true;
    
    #line 3887
    Debug = C_true;
    
    #line 3888
    Dp = C_true;
    
    #line 3888
    Prterr = C_true;
    
    #line 3888
    Errinx = 0;
    
    #line 3889
    Intlabel = 0;
    
    #line 3889
    Kk = 8;
    
    #line 3889
    Fextfilep = nullptr;
    
    #line 3890
    Lc = (C_lcaftermarkstack + (C_filebuffer * C_charmax));
    
    #line 3892
    Ic = 3;
    
    #line 3892
    Eol = C_true;
    
    #line 3892
    Linecount = 0;
    
    #line 3893
    Ch = ' ';
    
    #line 3893
    Chcnt = 0;
    
    #line 3894
    Globtestp = nullptr;
    
    #line 3895
    Mxint10 = (C_maxint / 10);
    
    #line 3895
    Digmax = (C_strglgth - 1);
    
    { /* NOP */ }
}


#line 3898
//================================================================================
// scope: initsets (level : 2)

// activation record
struct Frame_initsets
{};

// function body
void P_initsets(void* _slink)
{
    // prologue/frame definition
    Frame_initsets _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_addop);
    _setLiteral1.set(C_intconst);
    _setLiteral1.set(C_realconst);
    _setLiteral1.set(C_stringconst);
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_lparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_arrow);
    _setLiteral3.set(C_packedsy);
    _setLiteral3.set(C_arraysy);
    _setLiteral3.set(C_recordsy);
    _setLiteral3.set(C_setsy);
    _setLiteral3.set(C_filesy);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_arraysy);
    _setLiteral4.set(C_recordsy);
    _setLiteral4.set(C_setsy);
    _setLiteral4.set(C_filesy);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_labelsy);
    _setLiteral5.set(C_constsy);
    _setLiteral5.set(C_typesy);
    _setLiteral5.set(C_varsy);
    _setLiteral5.set(C_procsy);
    _setLiteral5.set(C_funcsy);
    _setLiteral5.set(C_beginsy);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_arrow);
    _setLiteral6.set(C_period);
    _setLiteral6.set(C_lbrack);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_intconst);
    _setLiteral7.set(C_realconst);
    _setLiteral7.set(C_stringconst);
    _setLiteral7.set(C_ident);
    _setLiteral7.set(C_lparent);
    _setLiteral7.set(C_lbrack);
    _setLiteral7.set(C_notsy);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_beginsy);
    _setLiteral8.set(C_gotosy);
    _setLiteral8.set(C_ifsy);
    _setLiteral8.set(C_whilesy);
    _setLiteral8.set(C_repeatsy);
    _setLiteral8.set(C_forsy);
    _setLiteral8.set(C_withsy);
    _setLiteral8.set(C_casesy);
    
    // subroutine body
    #line 3900
    Constbegsys = _setLiteral1;
    
    #line 3901
    Simptypebegsys = (_setLiteral2 + Constbegsys);
    
    #line 3902
    Typebegsys = (_setLiteral3 + Simptypebegsys);
    
    #line 3903
    Typedels = _setLiteral4;
    
    #line 3904
    Blockbegsys = _setLiteral5;
    
    #line 3905
    Selectsys = _setLiteral6;
    
    #line 3906
    Facbegsys = _setLiteral7;
    
    #line 3907
    Statbegsys = _setLiteral8;
    
    { /* NOP */ }
}


#line 3910
//================================================================================
// scope: inittables (level : 2)

// forward declarations
void P_inittables_reswords(void* _slink);
void P_inittables_symbols(void* _slink);
void P_inittables_rators(void* _slink);
void P_inittables_procmnemonics(void* _slink);
void P_inittables_instrmnemonics(void* _slink);
void P_inittables_chartypes(void* _slink);
void P_inittables_initdx(void* _slink);

// activation record
struct Frame_inittables
{};

// function body
void P_inittables(void* _slink)
{
    // prologue/frame definition
    Frame_inittables _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 4060
    P_inittables_reswords(&_F);
    
    #line 4060
    P_inittables_symbols(&_F);
    
    #line 4060
    P_inittables_rators(&_F);
    
    #line 4061
    P_inittables_instrmnemonics(&_F);
    
    #line 4061
    P_inittables_procmnemonics(&_F);
    
    #line 4062
    P_inittables_chartypes(&_F);
    
    #line 4062
    P_inittables_initdx(&_F);
    
    { /* NOP */ }
}


#line 3911
//================================================================================
// scope: inittables_reswords (level : 3)

// activation record
struct Frame_inittables_reswords
{
   Frame_inittables* _slink;
};

// function body
void P_inittables_reswords(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_reswords _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 3913
    Rw[1] = "if      ";
    
    #line 3913
    Rw[2] = "do      ";
    
    #line 3913
    Rw[3] = "of      ";
    
    #line 3914
    Rw[4] = "to      ";
    
    #line 3914
    Rw[5] = "in      ";
    
    #line 3914
    Rw[6] = "or      ";
    
    #line 3915
    Rw[7] = "end     ";
    
    #line 3915
    Rw[8] = "for     ";
    
    #line 3915
    Rw[9] = "var     ";
    
    #line 3916
    Rw[10] = "div     ";
    
    #line 3916
    Rw[11] = "mod     ";
    
    #line 3916
    Rw[12] = "set     ";
    
    #line 3917
    Rw[13] = "and     ";
    
    #line 3917
    Rw[14] = "not     ";
    
    #line 3917
    Rw[15] = "then    ";
    
    #line 3918
    Rw[16] = "else    ";
    
    #line 3918
    Rw[17] = "with    ";
    
    #line 3918
    Rw[18] = "goto    ";
    
    #line 3919
    Rw[19] = "case    ";
    
    #line 3919
    Rw[20] = "type    ";
    
    #line 3920
    Rw[21] = "file    ";
    
    #line 3920
    Rw[22] = "begin   ";
    
    #line 3921
    Rw[23] = "until   ";
    
    #line 3921
    Rw[24] = "while   ";
    
    #line 3921
    Rw[25] = "array   ";
    
    #line 3922
    Rw[26] = "const   ";
    
    #line 3922
    Rw[27] = "label   ";
    
    #line 3923
    Rw[28] = "repeat  ";
    
    #line 3923
    Rw[29] = "record  ";
    
    #line 3923
    Rw[30] = "downto  ";
    
    #line 3924
    Rw[31] = "packed  ";
    
    #line 3924
    Rw[32] = "forward ";
    
    #line 3924
    Rw[33] = "program ";
    
    #line 3925
    Rw[34] = "function";
    
    #line 3925
    Rw[35] = "procedur";
    
    #line 3926
    Frw[1] = 1;
    
    #line 3926
    Frw[2] = 1;
    
    #line 3926
    Frw[3] = 7;
    
    #line 3926
    Frw[4] = 15;
    
    #line 3926
    Frw[5] = 22;
    
    #line 3927
    Frw[6] = 28;
    
    #line 3927
    Frw[7] = 32;
    
    #line 3927
    Frw[8] = 34;
    
    #line 3927
    Frw[9] = 36;
    
    { /* NOP */ }
}


#line 3930
//================================================================================
// scope: inittables_symbols (level : 3)

// activation record
struct Frame_inittables_symbols
{
   Frame_inittables* _slink;
};

// function body
void P_inittables_symbols(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_symbols _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 3932
    Rsy[1] = C_ifsy;
    
    #line 3932
    Rsy[2] = C_dosy;
    
    #line 3932
    Rsy[3] = C_ofsy;
    
    #line 3933
    Rsy[4] = C_tosy;
    
    #line 3933
    Rsy[5] = C_relop;
    
    #line 3933
    Rsy[6] = C_addop;
    
    #line 3934
    Rsy[7] = C_endsy;
    
    #line 3934
    Rsy[8] = C_forsy;
    
    #line 3934
    Rsy[9] = C_varsy;
    
    #line 3935
    Rsy[10] = C_mulop;
    
    #line 3935
    Rsy[11] = C_mulop;
    
    #line 3935
    Rsy[12] = C_setsy;
    
    #line 3936
    Rsy[13] = C_mulop;
    
    #line 3936
    Rsy[14] = C_notsy;
    
    #line 3936
    Rsy[15] = C_thensy;
    
    #line 3937
    Rsy[16] = C_elsesy;
    
    #line 3937
    Rsy[17] = C_withsy;
    
    #line 3937
    Rsy[18] = C_gotosy;
    
    #line 3938
    Rsy[19] = C_casesy;
    
    #line 3938
    Rsy[20] = C_typesy;
    
    #line 3939
    Rsy[21] = C_filesy;
    
    #line 3939
    Rsy[22] = C_beginsy;
    
    #line 3940
    Rsy[23] = C_untilsy;
    
    #line 3940
    Rsy[24] = C_whilesy;
    
    #line 3940
    Rsy[25] = C_arraysy;
    
    #line 3941
    Rsy[26] = C_constsy;
    
    #line 3941
    Rsy[27] = C_labelsy;
    
    #line 3942
    Rsy[28] = C_repeatsy;
    
    #line 3942
    Rsy[29] = C_recordsy;
    
    #line 3942
    Rsy[30] = C_downtosy;
    
    #line 3943
    Rsy[31] = C_packedsy;
    
    #line 3943
    Rsy[32] = C_forwardsy;
    
    #line 3943
    Rsy[33] = C_progsy;
    
    #line 3944
    Rsy[34] = C_funcsy;
    
    #line 3944
    Rsy[35] = C_procsy;
    
    #line 3945
    Ssy['+'] = C_addop;
    
    #line 3945
    Ssy['-'] = C_addop;
    
    #line 3945
    Ssy['*'] = C_mulop;
    
    #line 3946
    Ssy['/'] = C_mulop;
    
    #line 3946
    Ssy['('] = C_lparent;
    
    #line 3946
    Ssy[')'] = C_rparent;
    
    #line 3947
    Ssy['$'] = C_othersy;
    
    #line 3947
    Ssy['='] = C_relop;
    
    #line 3947
    Ssy[' '] = C_othersy;
    
    #line 3948
    Ssy[','] = C_comma;
    
    #line 3948
    Ssy['.'] = C_period;
    
    #line 3948
    Ssy['\''] = C_othersy;
    
    #line 3949
    Ssy['['] = C_lbrack;
    
    #line 3949
    Ssy[']'] = C_rbrack;
    
    #line 3949
    Ssy[':'] = C_colon;
    
    #line 3950
    Ssy['^'] = C_arrow;
    
    #line 3950
    Ssy['<'] = C_relop;
    
    #line 3950
    Ssy['>'] = C_relop;
    
    #line 3951
    Ssy[';'] = C_semicolon;
    
    { /* NOP */ }
}


#line 3954
//================================================================================
// scope: inittables_rators (level : 3)

// activation record
struct Frame_inittables_rators
{
   Frame_inittables* _slink;

    // locals
    T_integer i;
};

// function body
void P_inittables_rators(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_rators _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 3957
    _FOR_TO(_F.i, 1, 35)
    {
        #line 3957
        Rop[_F.i] = C_noop;
    }
    _FOR_END(_F.i)
    
    #line 3958
    Rop[5] = C_inop;
    
    #line 3958
    Rop[10] = C_idiv;
    
    #line 3958
    Rop[11] = C_imod;
    
    #line 3959
    Rop[6] = C_orop;
    
    #line 3959
    Rop[13] = C_andop;
    
    #line 3960
    _FOR_TO(_F.i, C_ordminchar, C_ordmaxchar)
    {
        #line 3960
        Sop[_chr(_F.i)] = C_noop;
    }
    _FOR_END(_F.i)
    
    #line 3961
    Sop['+'] = C_plus;
    
    #line 3961
    Sop['-'] = C_minus;
    
    #line 3961
    Sop['*'] = C_mul;
    
    #line 3961
    Sop['/'] = C_rdiv;
    
    #line 3962
    Sop['='] = C_eqop;
    
    #line 3962
    Sop['<'] = C_ltop;
    
    #line 3962
    Sop['>'] = C_gtop;
    
    { /* NOP */ }
}


#line 3965
//================================================================================
// scope: inittables_procmnemonics (level : 3)

// activation record
struct Frame_inittables_procmnemonics
{
   Frame_inittables* _slink;
};

// function body
void P_inittables_procmnemonics(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_procmnemonics _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 3967
    Sna[1] = " get";
    
    #line 3967
    Sna[2] = " put";
    
    #line 3967
    Sna[3] = " rdi";
    
    #line 3967
    Sna[4] = " rdr";
    
    #line 3968
    Sna[5] = " rdc";
    
    #line 3968
    Sna[6] = " wri";
    
    #line 3968
    Sna[7] = " wro";
    
    #line 3968
    Sna[8] = " wrr";
    
    #line 3969
    Sna[9] = " wrc";
    
    #line 3969
    Sna[10] = " wrs";
    
    #line 3969
    Sna[11] = " pak";
    
    #line 3969
    Sna[12] = " new";
    
    #line 3970
    Sna[13] = " rst";
    
    #line 3970
    Sna[14] = " eln";
    
    #line 3970
    Sna[15] = " sin";
    
    #line 3970
    Sna[16] = " cos";
    
    #line 3971
    Sna[17] = " exp";
    
    #line 3971
    Sna[18] = " sqt";
    
    #line 3971
    Sna[19] = " log";
    
    #line 3971
    Sna[20] = " atn";
    
    #line 3972
    Sna[21] = " rln";
    
    #line 3972
    Sna[22] = " wln";
    
    #line 3972
    Sna[23] = " sav";
    
    { /* NOP */ }
}


#line 3975
//================================================================================
// scope: inittables_instrmnemonics (level : 3)

// activation record
struct Frame_inittables_instrmnemonics
{
   Frame_inittables* _slink;
};

// function body
void P_inittables_instrmnemonics(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_instrmnemonics _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 3977
    Mn[0] = " abi";
    
    #line 3977
    Mn[1] = " abr";
    
    #line 3977
    Mn[2] = " adi";
    
    #line 3977
    Mn[3] = " adr";
    
    #line 3978
    Mn[4] = " and";
    
    #line 3978
    Mn[5] = " dif";
    
    #line 3978
    Mn[6] = " dvi";
    
    #line 3978
    Mn[7] = " dvr";
    
    #line 3979
    Mn[8] = " eof";
    
    #line 3979
    Mn[9] = " flo";
    
    #line 3979
    Mn[10] = " flt";
    
    #line 3979
    Mn[11] = " inn";
    
    #line 3980
    Mn[12] = " int";
    
    #line 3980
    Mn[13] = " ior";
    
    #line 3980
    Mn[14] = " mod";
    
    #line 3980
    Mn[15] = " mpi";
    
    #line 3981
    Mn[16] = " mpr";
    
    #line 3981
    Mn[17] = " ngi";
    
    #line 3981
    Mn[18] = " ngr";
    
    #line 3981
    Mn[19] = " not";
    
    #line 3982
    Mn[20] = " odd";
    
    #line 3982
    Mn[21] = " sbi";
    
    #line 3982
    Mn[22] = " sbr";
    
    #line 3982
    Mn[23] = " sgs";
    
    #line 3983
    Mn[24] = " sqi";
    
    #line 3983
    Mn[25] = " sqr";
    
    #line 3983
    Mn[26] = " sto";
    
    #line 3983
    Mn[27] = " trc";
    
    #line 3984
    Mn[28] = " uni";
    
    #line 3984
    Mn[29] = " stp";
    
    #line 3984
    Mn[30] = " csp";
    
    #line 3984
    Mn[31] = " dec";
    
    #line 3985
    Mn[32] = " ent";
    
    #line 3985
    Mn[33] = " fjp";
    
    #line 3985
    Mn[34] = " inc";
    
    #line 3985
    Mn[35] = " ind";
    
    #line 3986
    Mn[36] = " ixa";
    
    #line 3986
    Mn[37] = " lao";
    
    #line 3986
    Mn[38] = " lca";
    
    #line 3986
    Mn[39] = " ldo";
    
    #line 3987
    Mn[40] = " mov";
    
    #line 3987
    Mn[41] = " mst";
    
    #line 3987
    Mn[42] = " ret";
    
    #line 3987
    Mn[43] = " sro";
    
    #line 3988
    Mn[44] = " xjp";
    
    #line 3988
    Mn[45] = " chk";
    
    #line 3988
    Mn[46] = " cup";
    
    #line 3988
    Mn[47] = " equ";
    
    #line 3989
    Mn[48] = " geq";
    
    #line 3989
    Mn[49] = " grt";
    
    #line 3989
    Mn[50] = " lda";
    
    #line 3989
    Mn[51] = " ldc";
    
    #line 3990
    Mn[52] = " leq";
    
    #line 3990
    Mn[53] = " les";
    
    #line 3990
    Mn[54] = " lod";
    
    #line 3990
    Mn[55] = " neq";
    
    #line 3991
    Mn[56] = " str";
    
    #line 3991
    Mn[57] = " ujp";
    
    #line 3991
    Mn[58] = " ord";
    
    #line 3991
    Mn[59] = " chr";
    
    #line 3992
    Mn[60] = " ujc";
    
    { /* NOP */ }
}


#line 3995
//================================================================================
// scope: inittables_chartypes (level : 3)

// activation record
struct Frame_inittables_chartypes
{
   Frame_inittables* _slink;

    // locals
    T_integer i;
};

// function body
void P_inittables_chartypes(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_chartypes _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 3998
    _FOR_TO(_F.i, C_ordminchar, C_ordmaxchar)
    {
        #line 3998
        Chartp[_chr(_F.i)] = C_illegal;
    }
    _FOR_END(_F.i)
    
    #line 3999
    Chartp['a'] = C_letter;
    
    #line 4000
    Chartp['b'] = C_letter;
    
    #line 4000
    Chartp['c'] = C_letter;
    
    #line 4001
    Chartp['d'] = C_letter;
    
    #line 4001
    Chartp['e'] = C_letter;
    
    #line 4002
    Chartp['f'] = C_letter;
    
    #line 4002
    Chartp['g'] = C_letter;
    
    #line 4003
    Chartp['h'] = C_letter;
    
    #line 4003
    Chartp['i'] = C_letter;
    
    #line 4004
    Chartp['j'] = C_letter;
    
    #line 4004
    Chartp['k'] = C_letter;
    
    #line 4005
    Chartp['l'] = C_letter;
    
    #line 4005
    Chartp['m'] = C_letter;
    
    #line 4006
    Chartp['n'] = C_letter;
    
    #line 4006
    Chartp['o'] = C_letter;
    
    #line 4007
    Chartp['p'] = C_letter;
    
    #line 4007
    Chartp['q'] = C_letter;
    
    #line 4008
    Chartp['r'] = C_letter;
    
    #line 4008
    Chartp['s'] = C_letter;
    
    #line 4009
    Chartp['t'] = C_letter;
    
    #line 4009
    Chartp['u'] = C_letter;
    
    #line 4010
    Chartp['v'] = C_letter;
    
    #line 4010
    Chartp['w'] = C_letter;
    
    #line 4011
    Chartp['x'] = C_letter;
    
    #line 4011
    Chartp['y'] = C_letter;
    
    #line 4012
    Chartp['z'] = C_letter;
    
    #line 4012
    Chartp['0'] = C_number;
    
    #line 4013
    Chartp['1'] = C_number;
    
    #line 4013
    Chartp['2'] = C_number;
    
    #line 4014
    Chartp['3'] = C_number;
    
    #line 4014
    Chartp['4'] = C_number;
    
    #line 4015
    Chartp['5'] = C_number;
    
    #line 4015
    Chartp['6'] = C_number;
    
    #line 4016
    Chartp['7'] = C_number;
    
    #line 4016
    Chartp['8'] = C_number;
    
    #line 4017
    Chartp['9'] = C_number;
    
    #line 4017
    Chartp['+'] = C_special;
    
    #line 4018
    Chartp['-'] = C_special;
    
    #line 4018
    Chartp['*'] = C_special;
    
    #line 4019
    Chartp['/'] = C_special;
    
    #line 4019
    Chartp['('] = C_chlparen;
    
    #line 4020
    Chartp[')'] = C_special;
    
    #line 4020
    Chartp['$'] = C_special;
    
    #line 4021
    Chartp['='] = C_special;
    
    #line 4021
    Chartp[' '] = C_chspace;
    
    #line 4022
    Chartp[','] = C_special;
    
    #line 4022
    Chartp['.'] = C_chperiod;
    
    #line 4023
    Chartp['\''] = C_chstrquo;
    
    #line 4023
    Chartp['['] = C_special;
    
    #line 4024
    Chartp[']'] = C_special;
    
    #line 4024
    Chartp[':'] = C_chcolon;
    
    #line 4025
    Chartp['^'] = C_special;
    
    #line 4025
    Chartp[';'] = C_special;
    
    #line 4026
    Chartp['<'] = C_chlt;
    
    #line 4026
    Chartp['>'] = C_chgt;
    
    #line 4027
    Ordint['0'] = 0;
    
    #line 4027
    Ordint['1'] = 1;
    
    #line 4027
    Ordint['2'] = 2;
    
    #line 4028
    Ordint['3'] = 3;
    
    #line 4028
    Ordint['4'] = 4;
    
    #line 4028
    Ordint['5'] = 5;
    
    #line 4029
    Ordint['6'] = 6;
    
    #line 4029
    Ordint['7'] = 7;
    
    #line 4029
    Ordint['8'] = 8;
    
    #line 4030
    Ordint['9'] = 9;
    
    { /* NOP */ }
}


#line 4033
//================================================================================
// scope: inittables_initdx (level : 3)

// activation record
struct Frame_inittables_initdx
{
   Frame_inittables* _slink;
};

// function body
void P_inittables_initdx(void* _slink)
{
    // prologue/frame definition
    Frame_inittables_initdx _F = { (Frame_inittables*)_slink };
    
    // subroutine body
    #line 4035
    Cdx[0] = 0;
    
    #line 4035
    Cdx[1] = 0;
    
    #line 4035
    Cdx[2] = (-1);
    
    #line 4035
    Cdx[3] = (-1);
    
    #line 4036
    Cdx[4] = (-1);
    
    #line 4036
    Cdx[5] = (-1);
    
    #line 4036
    Cdx[6] = (-1);
    
    #line 4036
    Cdx[7] = (-1);
    
    #line 4037
    Cdx[8] = 0;
    
    #line 4037
    Cdx[9] = 0;
    
    #line 4037
    Cdx[10] = 0;
    
    #line 4037
    Cdx[11] = (-1);
    
    #line 4038
    Cdx[12] = (-1);
    
    #line 4038
    Cdx[13] = (-1);
    
    #line 4038
    Cdx[14] = (-1);
    
    #line 4038
    Cdx[15] = (-1);
    
    #line 4039
    Cdx[16] = (-1);
    
    #line 4039
    Cdx[17] = 0;
    
    #line 4039
    Cdx[18] = 0;
    
    #line 4039
    Cdx[19] = 0;
    
    #line 4040
    Cdx[20] = 0;
    
    #line 4040
    Cdx[21] = (-1);
    
    #line 4040
    Cdx[22] = (-1);
    
    #line 4040
    Cdx[23] = 0;
    
    #line 4041
    Cdx[24] = 0;
    
    #line 4041
    Cdx[25] = 0;
    
    #line 4041
    Cdx[26] = (-2);
    
    #line 4041
    Cdx[27] = 0;
    
    #line 4042
    Cdx[28] = (-1);
    
    #line 4042
    Cdx[29] = 0;
    
    #line 4042
    Cdx[30] = 0;
    
    #line 4042
    Cdx[31] = 0;
    
    #line 4043
    Cdx[32] = 0;
    
    #line 4043
    Cdx[33] = (-1);
    
    #line 4043
    Cdx[34] = 0;
    
    #line 4043
    Cdx[35] = 0;
    
    #line 4044
    Cdx[36] = (-1);
    
    #line 4044
    Cdx[37] = (+1);
    
    #line 4044
    Cdx[38] = (+1);
    
    #line 4044
    Cdx[39] = (+1);
    
    #line 4045
    Cdx[40] = (-2);
    
    #line 4045
    Cdx[41] = 0;
    
    #line 4045
    Cdx[42] = 0;
    
    #line 4045
    Cdx[43] = (-1);
    
    #line 4046
    Cdx[44] = (-1);
    
    #line 4046
    Cdx[45] = 0;
    
    #line 4046
    Cdx[46] = 0;
    
    #line 4046
    Cdx[47] = (-1);
    
    #line 4047
    Cdx[48] = (-1);
    
    #line 4047
    Cdx[49] = (-1);
    
    #line 4047
    Cdx[50] = (+1);
    
    #line 4047
    Cdx[51] = (+1);
    
    #line 4048
    Cdx[52] = (-1);
    
    #line 4048
    Cdx[53] = (-1);
    
    #line 4048
    Cdx[54] = (+1);
    
    #line 4048
    Cdx[55] = (-1);
    
    #line 4049
    Cdx[56] = (-1);
    
    #line 4049
    Cdx[57] = 0;
    
    #line 4049
    Cdx[58] = 0;
    
    #line 4049
    Cdx[59] = 0;
    
    #line 4050
    Cdx[60] = 0;
    
    #line 4051
    Pdx[1] = (-1);
    
    #line 4051
    Pdx[2] = (-1);
    
    #line 4051
    Pdx[3] = (-2);
    
    #line 4051
    Pdx[4] = (-2);
    
    #line 4052
    Pdx[5] = (-2);
    
    #line 4052
    Pdx[6] = (-3);
    
    #line 4052
    Pdx[7] = (-3);
    
    #line 4052
    Pdx[8] = (-3);
    
    #line 4053
    Pdx[9] = (-3);
    
    #line 4053
    Pdx[10] = (-4);
    
    #line 4053
    Pdx[11] = 0;
    
    #line 4053
    Pdx[12] = (-2);
    
    #line 4054
    Pdx[13] = (-1);
    
    #line 4054
    Pdx[14] = 0;
    
    #line 4054
    Pdx[15] = 0;
    
    #line 4054
    Pdx[16] = 0;
    
    #line 4055
    Pdx[17] = 0;
    
    #line 4055
    Pdx[18] = 0;
    
    #line 4055
    Pdx[19] = 0;
    
    #line 4055
    Pdx[20] = 0;
    
    #line 4056
    Pdx[21] = (-1);
    
    #line 4056
    Pdx[22] = (-1);
    
    #line 4056
    Pdx[23] = (-1);
    
    { /* NOP */ }
}

