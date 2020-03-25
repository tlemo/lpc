
#include <lpcRuntime.h>

#line 0 "p5_pcom.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "input" },
    { "output" },
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

#line 236
//================================================================================
// scope: program scope (level : 1)

// types
struct T_structure;
struct T_strvs;
struct T_identifier;
struct T_constant;
struct T_caseinfo;
struct T_labl;
struct T_filerec;
typedef int T_idkind;
typedef int T_symbol;
typedef _T_Range<0, 2147483647, signed __int32> T_addrrange;
typedef int T_operator;
typedef int T_structform;
_PTR_TYPE(T_stp, T_structure)
typedef int T_declkind;
typedef _T_Array< 1, 10, T_char > T_array_1;
_PTR_TYPE(T_strvsp, T_strvs)
struct T_strvs
{
    T_array_1 Str;
    T_strvsp Next;
};
_PTR_TYPE(T_ctp, T_identifier)
typedef int T_idclass;
_PTR_TYPE(T_csp, T_constant)
typedef int T_cstclass;
typedef _T_Set<0, 255> T_setty;
typedef _T_Range<0, 250, unsigned __int8> T_range_2;
struct T_constant
{
    T_csp Next;
    // variable fields selector
    T_cstclass Cclass;
    // variable fields
    union
    {
        T_strvsp Rval;
        T_setty Pval;
        struct
        {
            T_range_2 Slgth;
            T_strvsp Sval;
        };
    };
};
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
typedef _T_Range<0, 255, unsigned __int8> T_levrange;
typedef _T_Range<1, 18, signed __int8> T_range_3;
struct T_identifier
{
    T_strvsp Name;
    T_ctp Llink;
    T_ctp Rlink;
    T_stp Idtype;
    T_ctp Next;
    T_boolean Keep;
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
            T_addrrange Pfaddr;
            T_ctp Pflist;
            // variable fields selector
            T_declkind Pfdeckind;
            // variable fields
            union
            {
                T_range_3 Key;
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
    T_stp Next;
    T_boolean Marked;
    T_addrrange Size;
    T_boolean Packing;
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
        struct
        {
            T_stp Elset;
            T_boolean Matchpack;
        };
        struct
        {
            T_stp Aeltype;
            T_stp Inxtype;
        };
        struct
        {
            T_ctp Fstfld;
            T_stp Recvar;
            T_stp Recyc;
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
typedef _T_Set<0, 48> T_setofsys;
_PTR_TYPE(T_cip, T_caseinfo)
struct T_caseinfo
{
    T_cip Next;
    T_integer Csstart;
    T_integer Cslab;
};
typedef _T_Range<-4, 4, signed __int8> T_range_5;
typedef _T_Array< 0, 74, T_range_5 > T_array_4;
typedef int T_chtp;
typedef _T_Array< 0, 255, T_chtp > T_array_6;
typedef _T_Array< 1, 250, T_char > T_csstr;
_PTR_TYPE(T_lbp, T_labl)
struct T_labl
{
    T_lbp Nextlab;
    T_boolean Defined;
    T_integer Labval;
    T_integer Labname;
    T_levrange Vlevel;
    T_integer Slevel;
    T_boolean Ipcref;
    T_integer Minlvl;
    T_boolean Bact;
};
struct T_record_8
{
    T_ctp Fname;
    T_lbp Flabel;
    T_csp Fconst;
    T_stp Fstruct;
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
        T_ctp Bname;
    };
};
typedef _T_Array< 0, 300, T_record_8 > T_array_7;
typedef _T_Range<0, 300, signed __int16> T_disprange;
typedef _T_Range<0, 10, signed __int8> T_range_9;
typedef _T_Range<1, 500, signed __int16> T_range_12;
struct T_record_11
{
    T_integer Pos;
    T_range_12 Nmr;
};
typedef _T_Array< 1, 10, T_record_11 > T_array_10;
typedef _T_Array< 1, 500, T_boolean > T_array_13;
typedef _T_Array< 1, 250, T_char > T_idstr;
_PTR_TYPE(T_extfilep, T_filerec)
struct T_filerec
{
    T_idstr Filename;
    T_extfilep Nextfile;
};
typedef _T_Range<1, 36, signed __int8> T_range_15;
typedef _T_Array< 1, 10, T_range_15 > T_array_14;
typedef _T_Range<1, 500, signed __int16> T_range_16;
typedef _T_Range<1, 250, unsigned __int8> T_range_17;
typedef _T_Array< 1, 4, T_char > T_array_19;
typedef _T_Array< 0, 74, T_array_19 > T_array_18;
typedef _T_Array< 1, 9, T_char > T_restr;
typedef _T_Array< 1, 39, T_restr > T_array_20;
typedef _T_Array< 1, 250, T_char > T_nmstr;
typedef _T_Array< 0, 255, T_integer > T_array_21;
typedef _T_Range<-7, 7, signed __int8> T_range_23;
typedef _T_Array< 1, 39, T_range_23 > T_array_22;
typedef _T_Array< 1, 35, T_operator > T_array_24;
typedef _T_Array< 1, 35, T_symbol > T_array_25;
typedef _T_Array< 1, 35, T_restr > T_array_26;
typedef _T_Set<0, 5> T_setofids;
typedef _T_Array< 1, 4, T_char > T_array_28;
typedef _T_Array< 1, 39, T_array_28 > T_array_27;
typedef _T_Array< 0, 255, T_operator > T_array_29;
typedef _T_Array< 0, 255, T_symbol > T_array_30;

// forward declarations
void P_getstr(void* _slink, T_strvsp& p);
void P_putstrs(void* _slink, T_strvsp p);
void P_getlab(void* _slink, T_lbp& p);
void P_putlab(void* _slink, T_lbp p);
void P_pshcst(void* _slink, T_csp p);
void P_putcst(void* _slink, T_csp p);
void P_pshstc(void* _slink, T_stp p);
void P_putstc(void* _slink, T_stp p);
void P_ininam(void* _slink, T_ctp p);
void P_putnam(void* _slink, T_ctp p);
void P_putnams(void* _slink, T_ctp p);
void P_putdsp(void* _slink, T_disprange l);
void P_putdsps(void* _slink, T_disprange l);
void P_getfil(void* _slink, T_extfilep& p);
void P_putfil(void* _slink, T_extfilep p);
void P_getcas(void* _slink, T_cip& p);
void P_putcas(void* _slink, T_cip p);
T_char F_lcase(void* _slink, T_char c);
void P_lcases(void* _slink, T_idstr& s);
T_boolean F_strequri(void* _slink, T_restr a, T_idstr& b);
void P_writev(void* _slink, T_text& f, T_strvsp s, T_integer Fl);
T_integer F_lenpv(void* _slink, T_strvsp s);
void P_strassvf(void* _slink, T_strvsp& a, T_idstr& b);
void P_strassvr(void* _slink, T_strvsp& a, T_restr b);
void P_strassvd(void* _slink, T_strvsp& a, T_nmstr b);
void P_strassvc(void* _slink, T_strvsp& a, T_csstr b, T_integer l);
void P_strassfv(void* _slink, T_idstr& a, T_strvsp b);
T_boolean F_strequvv(void* _slink, T_strvsp a, T_strvsp b);
T_boolean F_strltnvv(void* _slink, T_strvsp a, T_strvsp b);
T_boolean F_strequvf(void* _slink, T_strvsp a, T_idstr& b);
T_boolean F_strltnvf(void* _slink, T_strvsp a, T_idstr& b);
T_char F_strchr(void* _slink, T_strvsp a, T_integer x);
void P_strchrass(void* _slink, T_strvsp& a, T_integer x, T_char c);
void P_prtdsp(void* _slink);
void P_endofline(void* _slink);
void P_errmsg(void* _slink, T_integer Ferrnr);
void P_error(void* _slink, T_integer Ferrnr);
void P_insymbol(void* _slink);
void P_enterid(void* _slink, T_ctp Fcp);
void P_searchsection(void* _slink, T_ctp Fcp, T_ctp& Fcp1);
void P_searchidnenm(void* _slink, T_setofids Fidcls, T_ctp& Fcp, T_boolean& Mm);
void P_searchidne(void* _slink, T_setofids Fidcls, T_ctp& Fcp);
void P_searchid(void* _slink, T_setofids Fidcls, T_ctp& Fcp);
void P_getbounds(void* _slink, T_stp Fsp, T_integer& Fmin, T_integer& Fmax);
T_integer F_alignquot(void* _slink, T_stp Fsp);
void P_align(void* _slink, T_stp Fsp, T_addrrange& Flc);
void P_printtables(void* _slink, T_boolean Fb);
void P_genlabel(void* _slink, T_integer& Nxtlab);
void P_searchlabel(void* _slink, T_lbp& Llp, T_disprange Level);
void P_newlabel(void* _slink, T_lbp& Llp);
void P_prtlabels(void* _slink);
void P_block(void* _slink, T_setofsys Fsys, T_symbol Fsy, T_ctp Fprocp);
void P_programme(void* _slink, T_setofsys Fsys);
void P_stdnames(void* _slink);
void P_enterstdtypes(void* _slink);
void P_entstdnames(void* _slink);
void P_enterundecl(void* _slink);
void P_exitundecl(void* _slink);
void P_initscalars(void* _slink);
void P_initsets(void* _slink);
void P_inittables(void* _slink);

// constants
const T_idkind C_actual = 0;
const T_symbol C_addop = 6;
const T_integer C_adral = 4;
const T_integer C_adrsize = 4;
const T_operator C_andop = 2;
const T_structform C_arrays = 4;
const T_symbol C_arraysy = 28;
const T_symbol C_arrow = 15;
const T_symbol C_becomes = 17;
const T_symbol C_beginsy = 31;
const T_where C_blck = 0;
const T_integer C_boldeff = 5;
const T_integer C_boolal = 1;
const T_integer C_boolsize = 1;
const T_symbol C_casesy = 33;
const T_integer C_charal = 1;
const T_integer C_charmax = 1;
const T_integer C_charsize = 1;
const T_chtp C_chcolon = 5;
const T_chtp C_chgt = 8;
const T_chtp C_chlcmt = 11;
const T_chtp C_chlparen = 9;
const T_chtp C_chlt = 7;
const T_chtp C_chperiod = 6;
const T_integer C_chrdeff = 1;
const T_chtp C_chspace = 10;
const T_chtp C_chstrquo = 4;
const T_symbol C_colon = 16;
const T_symbol C_comma = 12;
const T_symbol C_constsy = 20;
const T_where C_crec = 1;
const T_attrkind C_cst = 0;
const T_declkind C_declared = 1;
const T_integer C_digmax = 250;
const T_integer C_displimit = 300;
const T_boolean C_dodmplex = 0;
const T_boolean C_doprtryc = 0;
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
const T_integer C_fileidsize = 1;
const T_structform C_files = 6;
const T_integer C_filesize = 1;
const T_symbol C_filesy = 30;
const T_idkind C_formal = 1;
const T_symbol C_forsy = 36;
const T_idclass C_func = 5;
const T_symbol C_funcsy = 23;
const T_operator C_geop = 10;
const T_symbol C_gotosy = 38;
const T_operator C_gtop = 11;
const T_integer C_heapal = 4;
const T_symbol C_ident = 0;
const T_operator C_idiv = 3;
const T_symbol C_ifsy = 32;
const T_chtp C_illegal = 3;
const T_operator C_imod = 4;
const T_vaccess C_indrct = 1;
const T_operator C_inop = 14;
const T_integer C_intal = 4;
const T_symbol C_intconst = 1;
const T_integer C_intdeff = 11;
const T_integer C_intsize = 4;
const T_vaccess C_inxd = 2;
const T_idclass C_konst = 1;
const T_symbol C_labelsy = 19;
const T_symbol C_lbrack = 10;
const T_integer C_lcaftermarkstack = 32;
const T_operator C_leop = 9;
const T_chtp C_letter = 0;
const T_symbol C_lparent = 8;
const T_operator C_ltop = 8;
const T_integer C_majorver = 1;
const T_integer C_marksize = 32;
const T_integer C_maxaddr = 2147483647;
const T_integer C_maxids = 250;
const T_integer C_maxins = 74;
const T_integer C_maxlevel = 255;
const T_integer C_maxres = 35;
const T_integer C_maxresult = 8;
const T_integer C_maxsize = 32;
const T_integer C_maxsp = 39;
const T_integer C_maxstack = 1;
const T_integer C_maxstd = 39;
const T_integer C_minorver = 0;
const T_operator C_minus = 6;
const T_operator C_mul = 0;
const T_symbol C_mulop = 5;
const T_operator C_neop = 12;
const T_symbol C_nilsy = 47;
const T_integer C_nilval = 1;
const T_operator C_noop = 15;
const T_symbol C_notsy = 4;
const T_chtp C_number = 1;
const T_symbol C_ofsy = 42;
const T_integer C_ordmaxchar = 255;
const T_integer C_ordminchar = 0;
const T_operator C_orop = 7;
const T_symbol C_othersy = 48;
const T_symbol C_packedsy = 27;
const T_integer C_parmal = 4;
const T_integer C_parmsize = 4;
const T_symbol C_period = 14;
const T_operator C_plus = 5;
const T_structform C_pointer = 2;
const T_structform C_power = 3;
const T_idclass C_proc = 4;
const T_symbol C_procsy = 25;
const T_symbol C_progsy = 24;
const T_integer C_prtlln = 10;
const T_cstclass C_pset = 1;
const T_integer C_ptrsize = 4;
const T_symbol C_range = 18;
const T_symbol C_rbrack = 11;
const T_operator C_rdiv = 1;
const T_integer C_realal = 4;
const T_symbol C_realconst = 2;
const T_integer C_realsize = 8;
const T_where C_rec = 3;
const T_integer C_recal = 4;
const T_structform C_records = 5;
const T_symbol C_recordsy = 29;
const T_cstclass C_reel = 0;
const T_integer C_reldeff = 22;
const T_symbol C_relop = 7;
const T_symbol C_repeatsy = 34;
const T_integer C_reslen = 9;
const T_symbol C_rparent = 9;
const T_structform C_scalar = 0;
const T_symbol C_semicolon = 13;
const T_integer C_setal = 1;
const T_integer C_sethigh = 255;
const T_integer C_setlow = 0;
const T_integer C_setsize = 32;
const T_symbol C_setsy = 26;
const T_chtp C_special = 2;
const T_integer C_stackal = 4;
const T_integer C_stackelsize = 4;
const T_declkind C_standard = 0;
const T_cstclass C_strg = 2;
const T_integer C_strglgth = 250;
const T_symbol C_stringconst = 3;
const T_structform C_subrange = 1;
const T_structform C_tagfld = 7;
const T_symbol C_thensy = 46;
const T_symbol C_tosy = 44;
const T_idclass C_types = 0;
const T_symbol C_typesy = 21;
const T_symbol C_untilsy = 41;
const T_attrkind C_varbl = 1;
const T_structform C_variant = 8;
const T_idclass C_vars = 2;
const T_integer C_varsqt = 10;
const T_symbol C_varsy = 22;
const T_where C_vrec = 2;
const T_symbol C_whilesy = 35;
const T_symbol C_withsy = 37;

// non-local goto targets
const int NL_99 = 1;

// program variables
T_setofsys Blockbegsys;
T_stp Boolptr;
T_array_4 Cdx;
T_char Ch;
T_stp Charptr;
T_array_6 Chartp;
T_integer Chcnt;
T_integer Cipcnt;
T_setofsys Constbegsys;
T_integer Cspcnt;
T_integer Ctpcnt;
T_boolean Debug;
T_array_7 Display;
T_disprange Disx;
T_boolean Dp;
T_boolean Eol;
T_range_9 Errinx;
T_array_10 Errlist;
T_array_13 Errtbl;
T_boolean f;
T_setofsys Facbegsys;
T_extfilep Fextfilep;
T_integer Filcnt;
T_array_14 Frw;
T_ctp Fwptr;
T_attr Gattr;
T_range_16 i;
T_addrrange Ic;
T_idstr Id;
T_text Input;
T_boolean Inputhdf;
T_ctp Inputptr;
T_integer Intlabel;
T_stp Intptr;
T_range_17 Kk;
T_integer Lbpcnt;
T_addrrange Lc;
T_levrange Level;
T_integer Lgth;
T_integer Linecount;
T_boolean List;
T_array_18 Mn;
T_integer Mxint10;
T_array_20 Na;
T_stp Nilptr;
T_operator Op;
T_array_21 Ordint;
T_text Output;
T_boolean Outputhdf;
T_ctp Outputptr;
T_stp Parmptr;
T_array_22 Pdx;
T_boolean Prcode;
T_text Prr;
T_boolean Prtables;
T_stp Realptr;
T_array_24 Rop;
T_array_25 Rsy;
T_array_26 Rw;
T_setofsys Selectsys;
T_setofsys Simptypebegsys;
T_array_27 Sna;
T_array_29 Sop;
T_array_30 Ssy;
T_setofsys Statbegsys;
T_integer Stpcnt;
T_integer Strcnt;
T_symbol Sy;
T_stp Textptr;
T_disprange Top;
T_integer Toterr;
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
    Input.init(0);
    Output.init(1);
    Prr.init(2);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_casesy);
    
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
        #line 5493
        Output << "P5 Pascal compiler vs. " << _format(C_majorver, 1, 0) << '.' << _format(C_minorver, 1, 0) << _WRITELN;
        
        #line 5494
        Output << _WRITELN;
        
        #line 5498
        P_initscalars(nullptr);
        
        #line 5498
        P_initsets(nullptr);
        
        #line 5498
        P_inittables(nullptr);
        
        #line 5503
        Level = 0;
        
        #line 5503
        Top = 0;
        
        #line 5505
        Display[0].Fname = nullptr;
        
        #line 5505
        Display[0].Flabel = nullptr;
        
        #line 5505
        Display[0].Fconst = nullptr;
        
        #line 5505
        Display[0].Fstruct = nullptr;
        
        #line 5506
        Display[0].Occur = C_blck;
        
        #line 5506
        Display[0].Bname = nullptr;
        
        #line 5507
        P_enterstdtypes(nullptr);
        
        #line 5507
        P_stdnames(nullptr);
        
        #line 5507
        P_entstdnames(nullptr);
        
        #line 5507
        P_enterundecl(nullptr);
        
        #line 5508
        Top = 1;
        
        #line 5508
        Level = 1;
        
        #line 5510
        Display[1].Fname = nullptr;
        
        #line 5510
        Display[1].Flabel = nullptr;
        
        #line 5510
        Display[1].Fconst = nullptr;
        
        #line 5510
        Display[1].Fstruct = nullptr;
        
        #line 5511
        Display[1].Occur = C_blck;
        
        #line 5511
        Display[1].Bname = nullptr;
        
        #line 5517
        _rewrite(Prr);
        
        #line 5520
        Prr << 'i' << _WRITELN;
        
        #line 5521
        Prr << "i Pascal intermediate file Generated by P5 Pascal compiler vs. " << _format(C_majorver, 1, 0) << '.' << _format(C_minorver, 1, 0) << _WRITELN;
        
        #line 5523
        Prr << 'i' << _WRITELN;
        
        #line 5524
        P_insymbol(nullptr);
        
        #line 5525
        P_programme(nullptr, T_setofsys::C(((Blockbegsys + Statbegsys) - _setLiteral1)));
        
        #line 5528
        P_putdsp(nullptr, T_disprange::C(1));
        
        #line 5529
        P_putdsp(nullptr, T_disprange::C(0));
        
        #line 5532
        P_exitundecl(nullptr);
        
        #line 5534
        Output << _WRITELN;
        
        #line 5535
        Output << "Errors in program: " << _format(Toterr, 1, 0) << _WRITELN;
        
        #line 5537
        f = C_true;
        
        #line 5538
        _FOR_TO(i, 1, 500)
        {
            #line 5538
            if(Errtbl[i])
            {
                #line 5539
                if(f)
                {
                    #line 5540
                    Output << _WRITELN;
                    
                    #line 5541
                    Output << "Error numbers in listing:" << _WRITELN;
                    
                    #line 5542
                    Output << "-------------------------" << _WRITELN;
                    
                    #line 5543
                    f = C_false;
                }
                
                #line 5545
                Output << _format(i, 3, 0) << "  ";
                
                #line 5545
                P_errmsg(nullptr, i);
                
                #line 5545
                Output << _WRITELN;
            }
        }
        _FOR_END(i)
        
        #line 5547
        if((!f))
        {
            #line 5547
            Output << _WRITELN;
        }
        
        #line 5549
        if(C_doprtryc)
        {
            #line 5551
            Output << _WRITELN;
            
            #line 5552
            Output << "Recycling tracking counts:" << _WRITELN;
            
            #line 5553
            Output << _WRITELN;
            
            #line 5554
            Output << "string quants:              " << _format(Strcnt, 1, 0) << _WRITELN;
            
            #line 5555
            Output << "constants:                  " << _format(Cspcnt, 1, 0) << _WRITELN;
            
            #line 5556
            Output << "structures:                 " << _format(Stpcnt, 1, 0) << _WRITELN;
            
            #line 5557
            Output << "identifiers:                " << _format(Ctpcnt, 1, 0) << _WRITELN;
            
            #line 5558
            Output << "label counts:               " << _format(Lbpcnt, 1, 0) << _WRITELN;
            
            #line 5559
            Output << "file tracking counts:       " << _format(Filcnt, 1, 0) << _WRITELN;
            
            #line 5560
            Output << "case entry tracking counts: " << _format(Cipcnt, 1, 0) << _WRITELN;
            
            #line 5561
            Output << _WRITELN;
            
            { /* NOP */ }
        }
        
        #line 5567
        if((Strcnt != 0))
        {
            #line 5568
            Output << "*** Error: Compiler internal error: string recycle balance: " << _format(Strcnt, 1, 0) << _WRITELN;
        }
        
        #line 5570
        if((Cspcnt != 0))
        {
            #line 5571
            Output << "*** Error: Compiler internal error: constant recycle balance: " << _format(Cspcnt, 1, 0) << _WRITELN;
        }
        
        #line 5573
        if((Stpcnt != 0))
        {
            #line 5574
            Output << "*** Error: Compiler internal error: structure recycle balance: " << _format(Stpcnt, 1, 0) << _WRITELN;
        }
        
        #line 5576
        if((Ctpcnt != 0))
        {
            #line 5577
            Output << "*** Error: Compiler internal error: identifier recycle balance: " << _format(Ctpcnt, 1, 0) << _WRITELN;
        }
        
        #line 5579
        if((Lbpcnt != 0))
        {
            #line 5580
            Output << "*** Error: Compiler internal error: label recycle balance: " << _format(Lbpcnt, 1, 0) << _WRITELN;
        }
        
        #line 5582
        if((Filcnt != 0))
        {
            #line 5583
            Output << "*** Error: Compiler internal error: file recycle balance: " << _format(Filcnt, 1, 0) << _WRITELN;
        }
        
        #line 5585
        if((Cipcnt != 0))
        {
            #line 5586
            Output << "*** Error: Compiler internal error: case recycle balance: " << _format(Cipcnt, 1, 0) << _WRITELN;
        }
        
        L_99:
        { /* NOP */ }
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


#line 628
//================================================================================
// scope: getstr (level : 2)

// activation record
struct Frame_getstr
{
    // parameters
    T_strvsp& p;
};

// function body
void P_getstr(void* _slink, T_strvsp& p)
{
    // prologue/frame definition
    Frame_getstr _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 630
    _new(_F.p._ptr);
    
    #line 631
    Strcnt = (Strcnt + 1);
}


#line 635
//================================================================================
// scope: putstrs (level : 2)

// activation record
struct Frame_putstrs
{
    // parameters
    T_strvsp p;

    // locals
    T_strvsp P1;
};

// function body
void P_putstrs(void* _slink, T_strvsp p)
{
    // prologue/frame definition
    Frame_putstrs _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 638
    while((_F.p != nullptr))
    {
        #line 639
        _F.P1 = _F.p;
        
        #line 639
        _F.p = (*_F.p._ptr).Next;
        
        #line 639
        _dispose(_F.P1._ptr);
        
        #line 639
        Strcnt = (Strcnt - 1);
    }
}


#line 644
//================================================================================
// scope: getlab (level : 2)

// activation record
struct Frame_getlab
{
    // parameters
    T_lbp& p;
};

// function body
void P_getlab(void* _slink, T_lbp& p)
{
    // prologue/frame definition
    Frame_getlab _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 646
    _new(_F.p._ptr);
    
    #line 647
    Lbpcnt = (Lbpcnt + 1);
}


#line 651
//================================================================================
// scope: putlab (level : 2)

// activation record
struct Frame_putlab
{
    // parameters
    T_lbp p;
};

// function body
void P_putlab(void* _slink, T_lbp p)
{
    // prologue/frame definition
    Frame_putlab _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 653
    _dispose(_F.p._ptr);
    
    #line 654
    Lbpcnt = (Lbpcnt - 1);
}


#line 658
//================================================================================
// scope: pshcst (level : 2)

// activation record
struct Frame_pshcst
{
    // parameters
    T_csp p;
};

// function body
void P_pshcst(void* _slink, T_csp p)
{
    // prologue/frame definition
    Frame_pshcst _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 661
    (*_F.p._ptr).Next = Display[Top].Fconst;
    
    #line 662
    Display[Top].Fconst = _F.p;
    
    #line 663
    Cspcnt = (Cspcnt + 1);
}


#line 667
//================================================================================
// scope: putcst (level : 2)

// activation record
struct Frame_putcst
{
    // parameters
    T_csp p;
};

// function body
void P_putcst(void* _slink, T_csp p)
{
    // prologue/frame definition
    Frame_putcst _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 670
    if(((*_F.p._ptr).Cclass == C_strg))
    {
        #line 670
        P_putstrs(nullptr, (*_F.p._ptr).Sval);
    }
    else
    {
        #line 671
        if(((*_F.p._ptr).Cclass == C_reel))
        {
            #line 671
            P_putstrs(nullptr, (*_F.p._ptr).Rval);
        }
    }
    
    #line 672
    _dispose(_F.p._ptr);
    
    #line 673
    Cspcnt = (Cspcnt - 1);
}


#line 677
//================================================================================
// scope: pshstc (level : 2)

// activation record
struct Frame_pshstc
{
    // parameters
    T_stp p;
};

// function body
void P_pshstc(void* _slink, T_stp p)
{
    // prologue/frame definition
    Frame_pshstc _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 680
    (*_F.p._ptr).Next = Display[Top].Fstruct;
    
    #line 681
    Display[Top].Fstruct = _F.p;
    
    #line 682
    Stpcnt = (Stpcnt + 1);
}


#line 686
//================================================================================
// scope: putstc (level : 2)

// activation record
struct Frame_putstc
{
    // parameters
    T_stp p;
};

// function body
void P_putstc(void* _slink, T_stp p)
{
    // prologue/frame definition
    Frame_putstc _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 688
    _dispose(_F.p._ptr);
    
    #line 689
    Stpcnt = (Stpcnt - 1);
}


#line 693
//================================================================================
// scope: ininam (level : 2)

// activation record
struct Frame_ininam
{
    // parameters
    T_ctp p;
};

// function body
void P_ininam(void* _slink, T_ctp p)
{
    // prologue/frame definition
    Frame_ininam _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 695
    Ctpcnt = (Ctpcnt + 1);
    
    #line 696
    (*_F.p._ptr).Keep = C_false;
}


#line 700
//================================================================================
// scope: putnam (level : 2)

// activation record
struct Frame_putnam
{
    // parameters
    T_ctp p;

    // locals
    T_ctp P1;
};

// function body
void P_putnam(void* _slink, T_ctp p)
{
    // prologue/frame definition
    Frame_putnam _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 703
    if((((*_F.p._ptr).Klass == C_proc) || ((*_F.p._ptr).Klass == C_func)))
    {
        #line 704
        while(((*_F.p._ptr).Pflist != nullptr))
        {
            #line 706
            _F.P1 = (*_F.p._ptr).Pflist;
            
            #line 706
            (*_F.p._ptr).Pflist = (*_F.P1._ptr).Next;
            
            #line 707
            P_putnam(nullptr, _F.P1);
        }
    }
    
    #line 709
    P_putstrs(nullptr, (*_F.p._ptr).Name);
    
    #line 710
    _dispose(_F.p._ptr);
    
    #line 711
    Ctpcnt = (Ctpcnt - 1);
}


#line 715
//================================================================================
// scope: putnams (level : 2)

// activation record
struct Frame_putnams
{
    // parameters
    T_ctp p;
};

// function body
void P_putnams(void* _slink, T_ctp p)
{
    // prologue/frame definition
    Frame_putnams _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 717
    if((_F.p != nullptr))
    {
        #line 718
        P_putnams(nullptr, (*_F.p._ptr).Llink);
        
        #line 719
        P_putnams(nullptr, (*_F.p._ptr).Rlink);
        
        #line 722
        if((!(*_F.p._ptr).Keep))
        {
            #line 722
            P_putnam(nullptr, _F.p);
        }
    }
}


#line 727
//================================================================================
// scope: putdsp (level : 2)

// forward declarations
void P_putdsp_putsub(void* _slink, T_stp p);

// activation record
struct Frame_putdsp
{
    // parameters
    T_disprange l;

    // locals
    T_lbp Llp;
    T_stp Lsp;
    T_csp Lvp;
};

// function body
void P_putdsp(void* _slink, T_disprange l)
{
    // prologue/frame definition
    Frame_putdsp _F = {l };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 748
    P_putnams(nullptr, Display[_F.l].Fname);
    
    #line 750
    while((Display[_F.l].Flabel != nullptr))
    {
        #line 751
        _F.Llp = Display[_F.l].Flabel;
        
        #line 751
        Display[_F.l].Flabel = (*_F.Llp._ptr).Nextlab;
        
        #line 751
        P_putlab(nullptr, _F.Llp);
    }
    
    #line 754
    while((Display[_F.l].Fconst != nullptr))
    {
        #line 755
        _F.Lvp = Display[_F.l].Fconst;
        
        #line 755
        Display[_F.l].Fconst = (*_F.Lvp._ptr).Next;
        
        #line 755
        P_putcst(nullptr, _F.Lvp);
    }
    
    #line 758
    while((Display[_F.l].Fstruct != nullptr))
    {
        #line 760
        _F.Lsp = Display[_F.l].Fstruct;
        
        #line 760
        Display[_F.l].Fstruct = (*_F.Lsp._ptr).Next;
        
        #line 760
        P_putdsp_putsub(&_F, _F.Lsp);
    }
}


#line 730
//================================================================================
// scope: putdsp_putsub (level : 3)

// activation record
struct Frame_putdsp_putsub
{
   Frame_putdsp* _slink;

    // parameters
    T_stp p;

    // locals
    T_stp P1;
};

// function body
void P_putdsp_putsub(void* _slink, T_stp p)
{
    // prologue/frame definition
    Frame_putdsp_putsub _F = { (Frame_putdsp*)_slink, p };
    
    // subroutine body
    #line 734
    if(((*_F.p._ptr).Form == C_records))
    {
        #line 736
        while(((*_F.p._ptr).Recyc != nullptr))
        {
            #line 738
            _F.P1 = (*_F.p._ptr).Recyc;
            
            #line 738
            (*_F.p._ptr).Recyc = (*_F.P1._ptr).Next;
            
            #line 739
            P_putdsp_putsub(_F._slink, _F.P1);
        }
        
        #line 741
        P_putnams(nullptr, (*_F.p._ptr).Fstfld);
    }
    else
    {
        #line 742
        if(((*_F.p._ptr).Form == C_tagfld))
        {
            #line 744
            if(((*(*_F.p._ptr).Tagfieldp._ptr).Name == nullptr))
            {
                #line 744
                P_putnam(nullptr, (*_F.p._ptr).Tagfieldp);
            }
        }
    }
    
    #line 745
    P_putstc(nullptr, _F.p);
}


#line 765
//================================================================================
// scope: putdsps (level : 2)

// activation record
struct Frame_putdsps
{
    // parameters
    T_disprange l;

    // locals
    T_disprange t;
};

// function body
void P_putdsps(void* _slink, T_disprange l)
{
    // prologue/frame definition
    Frame_putdsps _F = {l };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 768
    if((_F.l > Top))
    {
        #line 769
        Output << "*** Error: Compiler internal error" << _WRITELN;
        
        #line 770
        throw NL_99;
    }
    
    #line 772
    _F.t = Top;
    
    #line 773
    while((_F.t > _F.l))
    {
        #line 774
        P_putdsp(nullptr, _F.t);
        
        #line 774
        _F.t = (_F.t - 1);
    }
}


#line 779
//================================================================================
// scope: getfil (level : 2)

// activation record
struct Frame_getfil
{
    // parameters
    T_extfilep& p;
};

// function body
void P_getfil(void* _slink, T_extfilep& p)
{
    // prologue/frame definition
    Frame_getfil _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 781
    _new(_F.p._ptr);
    
    #line 782
    Filcnt = (Filcnt + 1);
}


#line 786
//================================================================================
// scope: putfil (level : 2)

// activation record
struct Frame_putfil
{
    // parameters
    T_extfilep p;
};

// function body
void P_putfil(void* _slink, T_extfilep p)
{
    // prologue/frame definition
    Frame_putfil _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 788
    _dispose(_F.p._ptr);
    
    #line 789
    Filcnt = (Filcnt - 1);
}


#line 793
//================================================================================
// scope: getcas (level : 2)

// activation record
struct Frame_getcas
{
    // parameters
    T_cip& p;
};

// function body
void P_getcas(void* _slink, T_cip& p)
{
    // prologue/frame definition
    Frame_getcas _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 795
    _new(_F.p._ptr);
    
    #line 796
    Cipcnt = (Cipcnt + 1);
}


#line 800
//================================================================================
// scope: putcas (level : 2)

// activation record
struct Frame_putcas
{
    // parameters
    T_cip p;
};

// function body
void P_putcas(void* _slink, T_cip p)
{
    // prologue/frame definition
    Frame_putcas _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 802
    _dispose(_F.p._ptr);
    
    #line 803
    Cipcnt = (Cipcnt - 1);
}


#line 813
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
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('A', 'Z');
    
    // subroutine body
    #line 815
    if((_setLiteral1 & _F.c))
    {
        #line 815
        _F.c = _chr(((_ord(_F.c) - _ord('A')) + _ord('a')));
    }
    
    #line 816
    _F._fnvalue = _F.c;
    
    // epilogue
    return _F._fnvalue;
}


#line 820
//================================================================================
// scope: lcases (level : 2)

// activation record
struct Frame_lcases
{
    // parameters
    T_idstr& s;

    // locals
    T_integer i;
};

// function body
void P_lcases(void* _slink, T_idstr& s)
{
    // prologue/frame definition
    Frame_lcases _F = {s };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 823
    _FOR_TO(_F.i, 1, C_maxids)
    {
        #line 823
        _F.s[_F.i] = F_lcase(nullptr, _F.s[_F.i]);
    }
    _FOR_END(_F.i)
    
    { /* NOP */ }
}


#line 827
//================================================================================
// scope: strequri (level : 2)

// activation record
struct Frame_strequri
{
    // parameters
    T_restr a;
    T_idstr& b;

    // locals
    T_boolean _fnvalue;
    T_integer i;
    T_boolean m;
};

// function body
T_boolean F_strequri(void* _slink, T_restr a, T_idstr& b)
{
    // prologue/frame definition
    Frame_strequri _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 830
    _F.m = C_true;
    
    #line 831
    _FOR_TO(_F.i, 1, C_reslen)
    {
        #line 831
        if((F_lcase(nullptr, _F.a[_F.i]) != F_lcase(nullptr, _F.b[_F.i])))
        {
            #line 831
            _F.m = C_false;
        }
    }
    _FOR_END(_F.i)
    
    #line 832
    _FOR_TO(_F.i, (C_reslen + 1), C_maxids)
    {
        #line 832
        if((_F.b[_F.i] != ' '))
        {
            #line 832
            _F.m = C_false;
        }
    }
    _FOR_END(_F.i)
    
    #line 833
    _F._fnvalue = _F.m;
    
    // epilogue
    return _F._fnvalue;
}


#line 837
//================================================================================
// scope: writev (level : 2)

// activation record
struct Frame_writev
{
    // parameters
    T_text& f;
    T_strvsp s;
    T_integer Fl;

    // locals
    T_char c;
    T_integer i;
};

// function body
void P_writev(void* _slink, T_text& f, T_strvsp s, T_integer Fl)
{
    // prologue/frame definition
    Frame_writev _F = {f, s, Fl };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 839
    _F.i = 1;
    
    #line 840
    while((_F.Fl > 0))
    {
        #line 841
        _F.c = ' ';
        
        #line 841
        if((_F.s != nullptr))
        {
            #line 841
            _F.c = (*_F.s._ptr).Str[_F.i];
            
            #line 841
            _F.i = (_F.i + 1);
        }
        
        #line 842
        _F.f << _F.c;
        
        #line 842
        _F.Fl = (_F.Fl - 1);
        
        #line 843
        if((_F.i > C_varsqt))
        {
            #line 843
            _F.s = (*_F.s._ptr).Next;
            
            #line 843
            _F.i = 1;
        }
    }
}


#line 848
//================================================================================
// scope: lenpv (level : 2)

// activation record
struct Frame_lenpv
{
    // parameters
    T_strvsp s;

    // locals
    T_integer _fnvalue;
    T_integer i;
    T_integer l;
    T_integer Lc;
};

// function body
T_integer F_lenpv(void* _slink, T_strvsp s)
{
    // prologue/frame definition
    Frame_lenpv _F = {s };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 850
    _F.l = 1;
    
    #line 850
    _F.Lc = 0;
    
    #line 851
    while((_F.s != nullptr))
    {
        #line 852
        _FOR_TO(_F.i, 1, C_varsqt)
        {
            #line 853
            if(((*_F.s._ptr).Str[_F.i] != ' '))
            {
                #line 853
                _F.Lc = _F.l;
            }
            
            #line 854
            _F.l = (_F.l + 1);
            
            { /* NOP */ }
        }
        _FOR_END(_F.i)
        
        #line 856
        _F.s = (*_F.s._ptr).Next;
    }
    
    #line 858
    _F._fnvalue = _F.Lc;
    
    // epilogue
    return _F._fnvalue;
}


#line 862
//================================================================================
// scope: strassvf (level : 2)

// activation record
struct Frame_strassvf
{
    // parameters
    T_strvsp& a;
    T_idstr& b;

    // locals
    T_integer i;
    T_integer j;
    T_integer l;
    T_strvsp Lp;
    T_strvsp p;
};

// function body
void P_strassvf(void* _slink, T_strvsp& a, T_idstr& b)
{
    // prologue/frame definition
    Frame_strassvf _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 864
    _F.l = C_maxids;
    
    #line 864
    _F.p = nullptr;
    
    #line 864
    _F.a = nullptr;
    
    #line 864
    _F.j = 1;
    
    #line 865
    while(((_F.l > 1) && (_F.b[_F.l] == ' ')))
    {
        #line 865
        _F.l = (_F.l - 1);
    }
    
    #line 866
    if((_F.b[_F.l] == ' '))
    {
        #line 866
        _F.l = 0;
    }
    
    #line 867
    _FOR_TO(_F.i, 1, _F.l)
    {
        #line 868
        if((_F.j > C_varsqt))
        {
            #line 868
            _F.p = nullptr;
        }
        
        #line 869
        if((_F.p == nullptr))
        {
            #line 870
            P_getstr(nullptr, _F.p);
            
            #line 870
            (*_F.p._ptr).Next = nullptr;
            
            #line 870
            _F.j = 1;
            
            #line 871
            if((_F.a == nullptr))
            {
                #line 871
                _F.a = _F.p;
            }
            else
            {
                #line 871
                (*_F.Lp._ptr).Next = _F.p;
            }
            
            #line 871
            _F.Lp = _F.p;
        }
        
        #line 873
        (*_F.p._ptr).Str[_F.j] = _F.b[_F.i];
        
        #line 873
        _F.j = (_F.j + 1);
    }
    _FOR_END(_F.i)
    
    #line 875
    if((_F.p != nullptr))
    {
        #line 875
        _FOR_TO(_F.j, _F.j, C_varsqt)
        {
            #line 875
            (*_F.p._ptr).Str[_F.j] = ' ';
        }
        _FOR_END(_F.j)
    }
}


#line 879
//================================================================================
// scope: strassvr (level : 2)

// activation record
struct Frame_strassvr
{
    // parameters
    T_strvsp& a;
    T_restr b;

    // locals
    T_integer i;
    T_integer j;
    T_integer l;
    T_strvsp Lp;
    T_strvsp p;
};

// function body
void P_strassvr(void* _slink, T_strvsp& a, T_restr b)
{
    // prologue/frame definition
    Frame_strassvr _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 881
    _F.l = C_reslen;
    
    #line 881
    _F.p = nullptr;
    
    #line 881
    _F.a = nullptr;
    
    #line 881
    _F.Lp = nullptr;
    
    #line 881
    _F.j = 1;
    
    #line 882
    while(((_F.l > 1) && (_F.b[_F.l] == ' ')))
    {
        #line 882
        _F.l = (_F.l - 1);
    }
    
    #line 883
    if((_F.b[_F.l] == ' '))
    {
        #line 883
        _F.l = 0;
    }
    
    #line 884
    _FOR_TO(_F.i, 1, _F.l)
    {
        #line 885
        if((_F.j > C_varsqt))
        {
            #line 885
            _F.p = nullptr;
        }
        
        #line 886
        if((_F.p == nullptr))
        {
            #line 887
            P_getstr(nullptr, _F.p);
            
            #line 887
            (*_F.p._ptr).Next = nullptr;
            
            #line 887
            _F.j = 1;
            
            #line 888
            if((_F.a == nullptr))
            {
                #line 888
                _F.a = _F.p;
            }
            else
            {
                #line 888
                (*_F.Lp._ptr).Next = _F.p;
            }
            
            #line 888
            _F.Lp = _F.p;
        }
        
        #line 890
        (*_F.p._ptr).Str[_F.j] = _F.b[_F.i];
        
        #line 890
        _F.j = (_F.j + 1);
    }
    _FOR_END(_F.i)
    
    #line 892
    if((_F.p != nullptr))
    {
        #line 892
        _FOR_TO(_F.j, _F.j, C_varsqt)
        {
            #line 892
            (*_F.p._ptr).Str[_F.j] = ' ';
        }
        _FOR_END(_F.j)
    }
}


#line 896
//================================================================================
// scope: strassvd (level : 2)

// activation record
struct Frame_strassvd
{
    // parameters
    T_strvsp& a;
    T_nmstr b;

    // locals
    T_integer i;
    T_integer j;
    T_integer l;
    T_strvsp Lp;
    T_strvsp p;
};

// function body
void P_strassvd(void* _slink, T_strvsp& a, T_nmstr b)
{
    // prologue/frame definition
    Frame_strassvd _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 898
    _F.l = C_digmax;
    
    #line 898
    _F.p = nullptr;
    
    #line 898
    _F.a = nullptr;
    
    #line 898
    _F.Lp = nullptr;
    
    #line 898
    _F.j = 1;
    
    #line 899
    while(((_F.l > 1) && (_F.b[_F.l] == ' ')))
    {
        #line 899
        _F.l = (_F.l - 1);
    }
    
    #line 900
    if((_F.b[_F.l] == ' '))
    {
        #line 900
        _F.l = 0;
    }
    
    #line 901
    _FOR_TO(_F.i, 1, _F.l)
    {
        #line 902
        if((_F.j > C_varsqt))
        {
            #line 902
            _F.p = nullptr;
        }
        
        #line 903
        if((_F.p == nullptr))
        {
            #line 904
            P_getstr(nullptr, _F.p);
            
            #line 904
            (*_F.p._ptr).Next = nullptr;
            
            #line 904
            _F.j = 1;
            
            #line 905
            if((_F.a == nullptr))
            {
                #line 905
                _F.a = _F.p;
            }
            else
            {
                #line 905
                (*_F.Lp._ptr).Next = _F.p;
            }
            
            #line 905
            _F.Lp = _F.p;
        }
        
        #line 907
        (*_F.p._ptr).Str[_F.j] = _F.b[_F.i];
        
        #line 907
        _F.j = (_F.j + 1);
    }
    _FOR_END(_F.i)
    
    #line 909
    if((_F.p != nullptr))
    {
        #line 909
        _FOR_TO(_F.j, _F.j, C_varsqt)
        {
            #line 909
            (*_F.p._ptr).Str[_F.j] = ' ';
        }
        _FOR_END(_F.j)
    }
}


#line 913
//================================================================================
// scope: strassvc (level : 2)

// activation record
struct Frame_strassvc
{
    // parameters
    T_strvsp& a;
    T_csstr b;
    T_integer l;

    // locals
    T_integer i;
    T_integer j;
    T_strvsp Lp;
    T_strvsp p;
};

// function body
void P_strassvc(void* _slink, T_strvsp& a, T_csstr b, T_integer l)
{
    // prologue/frame definition
    Frame_strassvc _F = {a, b, l };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 915
    _F.p = nullptr;
    
    #line 915
    _F.a = nullptr;
    
    #line 915
    _F.Lp = nullptr;
    
    #line 915
    _F.j = 1;
    
    #line 916
    _FOR_TO(_F.i, 1, _F.l)
    {
        #line 917
        if((_F.j > C_varsqt))
        {
            #line 917
            _F.p = nullptr;
        }
        
        #line 918
        if((_F.p == nullptr))
        {
            #line 919
            P_getstr(nullptr, _F.p);
            
            #line 919
            (*_F.p._ptr).Next = nullptr;
            
            #line 919
            _F.j = 1;
            
            #line 920
            if((_F.a == nullptr))
            {
                #line 920
                _F.a = _F.p;
            }
            else
            {
                #line 920
                (*_F.Lp._ptr).Next = _F.p;
            }
            
            #line 920
            _F.Lp = _F.p;
        }
        
        #line 922
        (*_F.p._ptr).Str[_F.j] = _F.b[_F.i];
        
        #line 922
        _F.j = (_F.j + 1);
    }
    _FOR_END(_F.i)
    
    #line 924
    if((_F.p != nullptr))
    {
        #line 924
        _FOR_TO(_F.j, _F.j, C_varsqt)
        {
            #line 924
            (*_F.p._ptr).Str[_F.j] = ' ';
        }
        _FOR_END(_F.j)
    }
}


#line 928
//================================================================================
// scope: strassfv (level : 2)

// activation record
struct Frame_strassfv
{
    // parameters
    T_idstr& a;
    T_strvsp b;

    // locals
    T_integer i;
    T_integer j;
};

// function body
void P_strassfv(void* _slink, T_idstr& a, T_strvsp b)
{
    // prologue/frame definition
    Frame_strassfv _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 930
    _FOR_TO(_F.i, 1, C_maxids)
    {
        #line 930
        _F.a[_F.i] = ' ';
    }
    _FOR_END(_F.i)
    
    #line 930
    _F.i = 1;
    
    #line 931
    while((_F.b != nullptr))
    {
        #line 932
        _FOR_TO(_F.j, 1, C_varsqt)
        {
            #line 932
            _F.a[_F.i] = (*_F.b._ptr).Str[_F.j];
            
            #line 932
            _F.i = (_F.i + 1);
        }
        _FOR_END(_F.j)
        
        #line 933
        _F.b = (*_F.b._ptr).Next;
    }
}


#line 938
//================================================================================
// scope: strequvv (level : 2)

// activation record
struct Frame_strequvv
{
    // parameters
    T_strvsp a;
    T_strvsp b;

    // locals
    T_boolean _fnvalue;
    T_integer i;
    T_boolean m;
};

// function body
T_boolean F_strequvv(void* _slink, T_strvsp a, T_strvsp b)
{
    // prologue/frame definition
    Frame_strequvv _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 941
    _F.m = C_true;
    
    #line 942
    while(((_F.a != nullptr) && (_F.b != nullptr)))
    {
        #line 943
        _FOR_TO(_F.i, 1, C_varsqt)
        {
            #line 943
            if((F_lcase(nullptr, (*_F.a._ptr).Str[_F.i]) != F_lcase(nullptr, (*_F.b._ptr).Str[_F.i])))
            {
                #line 943
                _F.m = C_false;
            }
        }
        _FOR_END(_F.i)
        
        #line 944
        _F.a = (*_F.a._ptr).Next;
        
        #line 944
        _F.b = (*_F.b._ptr).Next;
    }
    
    #line 946
    if((_F.a != _F.b))
    {
        #line 946
        _F.m = C_false;
    }
    
    #line 947
    _F._fnvalue = _F.m;
    
    // epilogue
    return _F._fnvalue;
}


#line 951
//================================================================================
// scope: strltnvv (level : 2)

// activation record
struct Frame_strltnvv
{
    // parameters
    T_strvsp a;
    T_strvsp b;

    // locals
    T_boolean _fnvalue;
    T_char Ca;
    T_char Cb;
    T_integer i;
};

// function body
T_boolean F_strltnvv(void* _slink, T_strvsp a, T_strvsp b)
{
    // prologue/frame definition
    Frame_strltnvv _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 953
    _F.Ca = ' ';
    
    #line 953
    _F.Cb = ' ';
    
    #line 954
    while(((_F.a != nullptr) || (_F.b != nullptr)))
    {
        #line 955
        _F.i = 1;
        
        #line 956
        while(((_F.i <= C_varsqt) && ((_F.a != nullptr) || (_F.b != nullptr))))
        {
            #line 957
            if((_F.a != nullptr))
            {
                #line 957
                _F.Ca = F_lcase(nullptr, (*_F.a._ptr).Str[_F.i]);
            }
            else
            {
                #line 957
                _F.Ca = ' ';
            }
            
            #line 958
            if((_F.b != nullptr))
            {
                #line 958
                _F.Cb = F_lcase(nullptr, (*_F.b._ptr).Str[_F.i]);
            }
            else
            {
                #line 958
                _F.Cb = ' ';
            }
            
            #line 959
            if((_F.Ca != _F.Cb))
            {
                #line 959
                _F.a = nullptr;
                
                #line 959
                _F.b = nullptr;
            }
            
            #line 960
            _F.i = (_F.i + 1);
        }
        
        #line 962
        if((_F.a != nullptr))
        {
            #line 962
            _F.a = (*_F.a._ptr).Next;
        }
        
        #line 962
        if((_F.b != nullptr))
        {
            #line 962
            _F.b = (*_F.b._ptr).Next;
        }
    }
    
    #line 964
    _F._fnvalue = (_F.Ca < _F.Cb);
    
    // epilogue
    return _F._fnvalue;
}


#line 968
//================================================================================
// scope: strequvf (level : 2)

// activation record
struct Frame_strequvf
{
    // parameters
    T_strvsp a;
    T_idstr& b;

    // locals
    T_boolean _fnvalue;
    T_char c;
    T_integer i;
    T_integer j;
    T_boolean m;
};

// function body
T_boolean F_strequvf(void* _slink, T_strvsp a, T_idstr& b)
{
    // prologue/frame definition
    Frame_strequvf _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 971
    _F.m = C_true;
    
    #line 971
    _F.j = 1;
    
    #line 972
    _FOR_TO(_F.i, 1, C_maxids)
    {
        #line 973
        _F.c = ' ';
        
        #line 973
        if((_F.a != nullptr))
        {
            #line 973
            _F.c = (*_F.a._ptr).Str[_F.j];
            
            #line 973
            _F.j = (_F.j + 1);
        }
        
        #line 974
        if((F_lcase(nullptr, _F.c) != F_lcase(nullptr, _F.b[_F.i])))
        {
            #line 974
            _F.m = C_false;
        }
        
        #line 975
        if((_F.j > C_varsqt))
        {
            #line 975
            _F.a = (*_F.a._ptr).Next;
            
            #line 975
            _F.j = 1;
        }
    }
    _FOR_END(_F.i)
    
    #line 977
    _F._fnvalue = _F.m;
    
    // epilogue
    return _F._fnvalue;
}


#line 981
//================================================================================
// scope: strltnvf (level : 2)

// activation record
struct Frame_strltnvf
{
    // parameters
    T_strvsp a;
    T_idstr& b;

    // locals
    T_boolean _fnvalue;
    T_char c;
    T_integer f;
    T_integer i;
    T_integer j;
    T_boolean m;
};

// function body
T_boolean F_strltnvf(void* _slink, T_strvsp a, T_idstr& b)
{
    // prologue/frame definition
    Frame_strltnvf _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 984
    _F.m = C_true;
    
    #line 984
    _F.i = 1;
    
    #line 984
    _F.j = 1;
    
    #line 985
    while((_F.i < C_maxids))
    {
        #line 986
        _F.c = ' ';
        
        #line 986
        if((_F.a != nullptr))
        {
            #line 986
            _F.c = (*_F.a._ptr).Str[_F.j];
            
            #line 986
            _F.j = (_F.j + 1);
        }
        
        #line 987
        if((F_lcase(nullptr, _F.c) != F_lcase(nullptr, _F.b[_F.i])))
        {
            #line 987
            _F.f = _F.i;
            
            #line 987
            _F.i = C_maxids;
        }
        else
        {
            #line 987
            _F.i = (_F.i + 1);
        }
        
        #line 988
        if((_F.j > C_varsqt))
        {
            #line 988
            _F.a = (*_F.a._ptr).Next;
            
            #line 988
            _F.j = 1;
        }
    }
    
    #line 990
    _F._fnvalue = (F_lcase(nullptr, _F.c) < F_lcase(nullptr, _F.b[_F.f]));
    
    // epilogue
    return _F._fnvalue;
}


#line 995
//================================================================================
// scope: strchr (level : 2)

// activation record
struct Frame_strchr
{
    // parameters
    T_strvsp a;
    T_integer x;

    // locals
    T_char _fnvalue;
    T_char c;
    T_integer i;
    T_integer q;
};

// function body
T_char F_strchr(void* _slink, T_strvsp a, T_integer x)
{
    // prologue/frame definition
    Frame_strchr _F = {a, x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 998
    _F.c = ' ';
    
    #line 998
    _F.i = 1;
    
    #line 998
    _F.q = 1;
    
    #line 999
    while((_F.i < _F.x))
    {
        #line 1000
        if((_F.q >= C_varsqt))
        {
            #line 1000
            _F.q = 1;
            
            #line 1000
            if((_F.a != nullptr))
            {
                #line 1000
                _F.a = (*_F.a._ptr).Next;
            }
        }
        else
        {
            #line 1001
            _F.q = (_F.q + 1);
        }
        
        #line 1002
        _F.i = (_F.i + 1);
    }
    
    #line 1004
    if((_F.a != nullptr))
    {
        #line 1004
        _F.c = (*_F.a._ptr).Str[_F.q];
    }
    
    #line 1005
    _F._fnvalue = _F.c;
    
    // epilogue
    return _F._fnvalue;
}


#line 1010
//================================================================================
// scope: strchrass (level : 2)

// forward declarations
void P_strchrass_getsqt(void* _slink);

// activation record
struct Frame_strchrass
{
    // parameters
    T_strvsp& a;
    T_integer x;
    T_char c;

    // locals
    T_integer i;
    T_strvsp l;
    T_strvsp p;
    T_integer q;
};

// function body
void P_strchrass(void* _slink, T_strvsp& a, T_integer x, T_char c)
{
    // prologue/frame definition
    Frame_strchrass _F = {a, x, c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1020
    _F.i = 1;
    
    #line 1020
    _F.q = 1;
    
    #line 1020
    _F.p = _F.a;
    
    #line 1020
    _F.l = nullptr;
    
    #line 1021
    P_strchrass_getsqt(&_F);
    
    #line 1022
    while((_F.i < _F.x))
    {
        #line 1023
        if((_F.q >= C_varsqt))
        {
            #line 1023
            _F.q = 1;
            
            #line 1023
            _F.l = _F.p;
            
            #line 1023
            _F.p = (*_F.p._ptr).Next;
            
            #line 1023
            P_strchrass_getsqt(&_F);
        }
        else
        {
            #line 1024
            _F.q = (_F.q + 1);
        }
        
        #line 1025
        _F.i = (_F.i + 1);
    }
    
    #line 1027
    (*_F.p._ptr).Str[_F.q] = _F.c;
}


#line 1012
//================================================================================
// scope: strchrass_getsqt (level : 3)

// activation record
struct Frame_strchrass_getsqt
{
   Frame_strchrass* _slink;

    // locals
    T_integer y;
};

// function body
void P_strchrass_getsqt(void* _slink)
{
    // prologue/frame definition
    Frame_strchrass_getsqt _F = { (Frame_strchrass*)_slink };
    
    // subroutine body
    #line 1015
    if((_F._slink->p == nullptr))
    {
        #line 1015
        P_getstr(nullptr, _F._slink->p);
        
        #line 1015
        _FOR_TO(_F.y, 1, C_varsqt)
        {
            #line 1015
            (*_F._slink->p._ptr).Str[_F.y] = ' ';
        }
        _FOR_END(_F.y)
        
        #line 1016
        (*_F._slink->p._ptr).Next = nullptr;
        
        #line 1016
        if((_F._slink->a == nullptr))
        {
            #line 1016
            _F._slink->a = _F._slink->p;
        }
        else
        {
            #line 1016
            (*_F._slink->l._ptr).Next = _F._slink->p;
        }
    }
}


#line 1033
//================================================================================
// scope: prtdsp (level : 2)

// forward declarations
void P_prtdsp_prtlnk(void* _slink, T_ctp p, T_integer f);

// activation record
struct Frame_prtdsp
{
    // locals
    T_integer i;
};

// function body
void P_prtdsp(void* _slink)
{
    // prologue/frame definition
    Frame_prtdsp _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1046
    Output << _WRITELN;
    
    #line 1047
    Output << "Display:" << _WRITELN;
    
    #line 1048
    Output << _WRITELN;
    
    #line 1049
    _FOR_TO(_F.i, 0, C_displimit)
    {
        #line 1049
        if((Display[_F.i].Fname != nullptr))
        {
            #line 1051
            Output << "level " << _format(_F.i, 1, 0) << _WRITELN;
            
            #line 1052
            Output << _WRITELN;
            
            #line 1053
            P_prtdsp_prtlnk(&_F, Display[_F.i].Fname, 0);
            
            #line 1054
            Output << _WRITELN;
        }
    }
    _FOR_END(_F.i)
    
    #line 1057
    Output << _WRITELN;
    
    { /* NOP */ }
}


#line 1035
//================================================================================
// scope: prtdsp_prtlnk (level : 3)

// activation record
struct Frame_prtdsp_prtlnk
{
   Frame_prtdsp* _slink;

    // parameters
    T_ctp p;
    T_integer f;

    // locals
    T_integer i;
};

// function body
void P_prtdsp_prtlnk(void* _slink, T_ctp p, T_integer f)
{
    // prologue/frame definition
    Frame_prtdsp_prtlnk _F = { (Frame_prtdsp*)_slink, p, f };
    
    // subroutine body
    #line 1038
    if((_F.p != nullptr))
    {
        #line 1039
        _FOR_TO(_F.i, 1, _F.f)
        {
            #line 1039
            Output << ' ';
        }
        _FOR_END(_F.i)
        
        #line 1040
        P_writev(nullptr, Output, (*_F.p._ptr).Name, 10);
        
        #line 1040
        Output << _WRITELN;
        
        #line 1041
        if(((*_F.p._ptr).Llink != nullptr))
        {
            #line 1041
            P_prtdsp_prtlnk(_F._slink, (*_F.p._ptr).Llink, (_F.f + 3));
        }
        
        #line 1042
        if(((*_F.p._ptr).Rlink != nullptr))
        {
            #line 1042
            P_prtdsp_prtlnk(_F._slink, (*_F.p._ptr).Rlink, (_F.f + 3));
        }
    }
}


#line 1060
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
    #line 1063
    if((Errinx > 0))
    {
        #line 1064
        Output << _format(Linecount, 6, 0) << _format(" ****  ", 9, 0);
        
        #line 1065
        _F.Lastpos = 0;
        
        #line 1065
        _F.Freepos = 1;
        
        #line 1066
        _FOR_TO(_F.k, 1, Errinx)
        {
            #line 1069
            _F.Currpos = Errlist[_F.k].Pos;
            
            #line 1069
            _F.Currnmr = Errlist[_F.k].Nmr;
            
            #line 1070
            if((_F.Currpos == _F.Lastpos))
            {
                #line 1070
                Output << ',';
            }
            else
            {
                #line 1073
                while((_F.Freepos < _F.Currpos))
                {
                    #line 1074
                    Output << ' ';
                    
                    #line 1074
                    _F.Freepos = (_F.Freepos + 1);
                }
                
                #line 1075
                Output << '^';
                
                #line 1076
                _F.Lastpos = _F.Currpos;
            }
            
            #line 1078
            if((_F.Currnmr < 10))
            {
                #line 1078
                _F.f = 1;
            }
            else
            {
                #line 1079
                if((_F.Currnmr < 100))
                {
                    #line 1079
                    _F.f = 2;
                }
                else
                {
                    #line 1080
                    _F.f = 3;
                }
            }
            
            #line 1081
            Output << _format(_F.Currnmr, _F.f, 0);
            
            #line 1082
            _F.Freepos = ((_F.Freepos + _F.f) + 1);
        }
        _FOR_END(_F.k)
        
        #line 1084
        Output << _WRITELN;
        
        #line 1084
        Errinx = 0;
    }
    
    #line 1086
    Linecount = (Linecount + 1);
    
    #line 1087
    if((List && (!_eof(Input))))
    {
        #line 1088
        Output << _format(Linecount, 6, 0) << _format("  ", 2, 0);
        
        #line 1089
        if(Dp)
        {
            #line 1089
            Output << _format(Lc, 7, 0);
        }
        else
        {
            #line 1089
            Output << _format(Ic, 7, 0);
        }
        
        #line 1090
        Output << ' ';
    }
    
    #line 1093
    if((!_eof(Input)))
    {
        #line 1094
        Prr << ':' << _format(Linecount, 1, 0) << _WRITELN;
        
        { /* NOP */ }
    }
    
    #line 1096
    Chcnt = 0;
}


#line 1099
//================================================================================
// scope: errmsg (level : 2)

// activation record
struct Frame_errmsg
{
    // parameters
    T_integer Ferrnr;
};

// function body
void P_errmsg(void* _slink, T_integer Ferrnr)
{
    // prologue/frame definition
    Frame_errmsg _F = {Ferrnr };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1100
    switch(_F.Ferrnr)
    {
    case 1:
        #line 1101
        Output << "Error in simple type";
        break;
    
    case 2:
        #line 1102
        Output << "Identifier expected";
        break;
    
    case 3:
        #line 1103
        Output << "'program' expected";
        break;
    
    case 4:
        #line 1104
        Output << "')' expected";
        break;
    
    case 5:
        #line 1105
        Output << "':' expected";
        break;
    
    case 6:
        #line 1106
        Output << "Illegal symbol";
        break;
    
    case 7:
        #line 1107
        Output << "Error in parameter list";
        break;
    
    case 8:
        #line 1108
        Output << "'of' expected";
        break;
    
    case 9:
        #line 1109
        Output << "'(' expected";
        break;
    
    case 10:
        #line 1110
        Output << "Error in type";
        break;
    
    case 11:
        #line 1111
        Output << "'[' expected";
        break;
    
    case 12:
        #line 1112
        Output << "']' expected";
        break;
    
    case 13:
        #line 1113
        Output << "'end' expected";
        break;
    
    case 14:
        #line 1114
        Output << "':' expected";
        break;
    
    case 15:
        #line 1115
        Output << "Integer expected";
        break;
    
    case 16:
        #line 1116
        Output << "'=' expected";
        break;
    
    case 17:
        #line 1117
        Output << "'begin' expected";
        break;
    
    case 18:
        #line 1118
        Output << "Error in declaration part";
        break;
    
    case 19:
        #line 1119
        Output << "Error in field-list";
        break;
    
    case 20:
        #line 1120
        Output << "',' expected";
        break;
    
    case 21:
        #line 1121
        Output << "'*' expected";
        break;
    
    case 50:
        #line 1123
        Output << "Error in constant";
        break;
    
    case 51:
        #line 1124
        Output << "':=' expected";
        break;
    
    case 52:
        #line 1125
        Output << "'then' expected";
        break;
    
    case 53:
        #line 1126
        Output << "'until' expected";
        break;
    
    case 54:
        #line 1127
        Output << "'do' expected";
        break;
    
    case 55:
        #line 1128
        Output << "'to'/'downto' expected";
        break;
    
    case 56:
        #line 1129
        Output << "'if' expected";
        break;
    
    case 57:
        #line 1130
        Output << "'file' expected";
        break;
    
    case 58:
        #line 1131
        Output << "Error in factor";
        break;
    
    case 59:
        #line 1132
        Output << "Error in variable";
        break;
    
    case 101:
        #line 1134
        Output << "Identifier declared twice";
        break;
    
    case 102:
        #line 1135
        Output << "Low bound exceeds highbound";
        break;
    
    case 103:
        #line 1136
        Output << "Identifier is not of appropriate class";
        break;
    
    case 104:
        #line 1137
        Output << "Identifier not declared";
        break;
    
    case 105:
        #line 1138
        Output << "Sign not allowed";
        break;
    
    case 106:
        #line 1139
        Output << "Number expected";
        break;
    
    case 107:
        #line 1140
        Output << "Incompatible subrange types";
        break;
    
    case 109:
        #line 1141
        Output << "Type must not be real";
        break;
    
    case 110:
        #line 1142
        Output << "Tagfield type must be scalar or subrange";
        break;
    
    case 111:
        #line 1143
        Output << "Incompatible with tagfield type";
        break;
    
    case 112:
        #line 1144
        Output << "Index type must not be real";
        break;
    
    case 113:
        #line 1145
        Output << "Index type must be scalar or subrange";
        break;
    
    case 114:
        #line 1146
        Output << "Base type must not be real";
        break;
    
    case 115:
        #line 1147
        Output << "Base type must be scalar or subrange";
        break;
    
    case 116:
        #line 1148
        Output << "Error in type of standard procedure parameter";
        break;
    
    case 117:
        #line 1149
        Output << "Unsatisfied forward reference";
        break;
    
    case 118:
        #line 1150
        Output << "Forward reference type identifier in variable declaration";
        break;
    
    case 119:
        #line 1151
        Output << "Forward declared; repetition of parameter list not allowed";
        break;
    
    case 120:
        #line 1152
        Output << "Function result type must be scalar, subrange or point";
        break;
    
    case 121:
        #line 1153
        Output << "File value parameter not allowed";
        break;
    
    case 122:
        #line 1154
        Output << "Forward declared function; repetition of result type not allowed";
        break;
    
    case 123:
        #line 1155
        Output << "Missing result type in function declaration";
        break;
    
    case 124:
        #line 1156
        Output << "F-format for real only";
        break;
    
    case 125:
        #line 1157
        Output << "Error in type of standard function parameter";
        break;
    
    case 126:
        #line 1158
        Output << "Number of parameters does not agree with declaration";
        break;
    
    case 127:
        #line 1159
        Output << "Illegal parameter substitution";
        break;
    
    case 128:
        #line 1160
        Output << "Result type of parameter function does not agree with declaration";
        break;
    
    case 129:
        #line 1161
        Output << "Type conflict of operands";
        break;
    
    case 130:
        #line 1162
        Output << "Expression is not of set type";
        break;
    
    case 131:
        #line 1163
        Output << "Tests on equality allowed only";
        break;
    
    case 132:
        #line 1164
        Output << "Strict inclusion not allowed";
        break;
    
    case 133:
        #line 1165
        Output << "File comparison not allowed";
        break;
    
    case 134:
        #line 1166
        Output << "Illegal type of operand(s)";
        break;
    
    case 135:
        #line 1167
        Output << "Type of operand must be Boolean";
        break;
    
    case 136:
        #line 1168
        Output << "Set element type must be scalar nr subrange";
        break;
    
    case 137:
        #line 1169
        Output << "Set element types not compatible";
        break;
    
    case 138:
        #line 1170
        Output << "Type of variable is not array";
        break;
    
    case 139:
        #line 1171
        Output << "Index type is not compatible with declaration";
        break;
    
    case 140:
        #line 1172
        Output << "Type of variable is not record";
        break;
    
    case 141:
        #line 1173
        Output << "Type of variable must be file or pointer";
        break;
    
    case 142:
        #line 1174
        Output << "Illegal parameter substitution";
        break;
    
    case 143:
        #line 1175
        Output << "Illegal type of loop control variable";
        break;
    
    case 144:
        #line 1176
        Output << "Illegal type of expression";
        break;
    
    case 145:
        #line 1177
        Output << "Type conflict";
        break;
    
    case 146:
        #line 1178
        Output << "Assignment of files not allowed";
        break;
    
    case 147:
        #line 1179
        Output << "Label type incompatible with selecting expression";
        break;
    
    case 148:
        #line 1180
        Output << "Subrange bounds must be scalar";
        break;
    
    case 149:
        #line 1181
        Output << "Index type must not be integer";
        break;
    
    case 150:
        #line 1182
        Output << "Assignment to standard function is not allowed";
        break;
    
    case 151:
        #line 1183
        Output << "Assignment to formal function is not allowed";
        break;
    
    case 152:
        #line 1184
        Output << "No such field in this record";
        break;
    
    case 153:
        #line 1185
        Output << "Type error in read";
        break;
    
    case 154:
        #line 1186
        Output << "Actual parameter must be a variable";
        break;
    
    case 155:
        #line 1187
        Output << "Control variable must ~ot be declared on intermediate";
        break;
    
    case 156:
        #line 1188
        Output << "Multidefined case label";
        break;
    
    case 157:
        #line 1189
        Output << "Too many cases in case statement";
        break;
    
    case 158:
        #line 1190
        Output << "Missing corresponding variant declaration";
        break;
    
    case 159:
        #line 1191
        Output << "Real or string tagfields not allowed";
        break;
    
    case 160:
        #line 1192
        Output << "Previous declaration was not forward";
        break;
    
    case 161:
        #line 1193
        Output << "Again forward declared";
        break;
    
    case 162:
        #line 1194
        Output << "Parameter size must be constant";
        break;
    
    case 163:
        #line 1195
        Output << "Missing variant in declaration";
        break;
    
    case 164:
        #line 1196
        Output << "Substitution of standard proc/func not allowed";
        break;
    
    case 165:
        #line 1197
        Output << "Multidefined label";
        break;
    
    case 166:
        #line 1198
        Output << "Multideclared label";
        break;
    
    case 167:
        #line 1199
        Output << "Undeclared label";
        break;
    
    case 168:
        #line 1200
        Output << "Undefined label";
        break;
    
    case 169:
        #line 1201
        Output << "Error in base set";
        break;
    
    case 170:
        #line 1202
        Output << "Value parameter expected";
        break;
    
    case 171:
        #line 1203
        Output << "Standard file was redeclared";
        break;
    
    case 172:
        #line 1204
        Output << "Undeclared external file";
        break;
    
    case 173:
        #line 1205
        Output << "Fortran procedure or function expected";
        break;
    
    case 174:
        #line 1206
        Output << "Pascal procedure or function expected";
        break;
    
    case 175:
        #line 1207
        Output << "Missing file \"input\" in program heading";
        break;
    
    case 176:
        #line 1208
        Output << "Missing file \"output\" in program heading";
        break;
    
    case 177:
        #line 1209
        Output << "Assiqnment to function identifier not allowed here";
        break;
    
    case 178:
        #line 1210
        Output << "Multidefined record variant";
        break;
    
    case 179:
        #line 1211
        Output << "X-opt of actual proc/funcdoes not match formal declaration";
        break;
    
    case 180:
        #line 1212
        Output << "Control variable must not be formal";
        break;
    
    case 181:
        #line 1213
        Output << "Constant part of address out of ranqe";
        break;
    
    case 182:
        #line 1214
        Output << "identifier too long";
        break;
    
    case 183:
        #line 1215
        Output << "For index variable must be local to this block";
        break;
    
    case 184:
        #line 1216
        Output << "Interprocedure goto does not reference outter block of destination";
        break;
    
    case 185:
        #line 1217
        Output << "Goto references deeper nested statement";
        break;
    
    case 186:
        #line 1218
        Output << "Label referenced by goto at lesser statement level";
        break;
    
    case 187:
        #line 1219
        Output << "Goto references label in different nested statement";
        break;
    
    case 188:
        #line 1220
        Output << "Label referenced by goto in different nested statement";
        break;
    
    case 189:
        #line 1221
        Output << "Parameter lists of formal and actual parameters not congruous";
        break;
    
    case 190:
        #line 1222
        Output << "File component may not contain other files";
        break;
    
    case 191:
        #line 1223
        Output << "Cannot assign from file or component containing files";
        break;
    
    case 192:
        #line 1224
        Output << "Assignment to function that is not active";
        break;
    
    case 201:
        #line 1226
        Output << "Error in real constant: digit expected";
        break;
    
    case 202:
        #line 1227
        Output << "String constant must not exceed source line";
        break;
    
    case 203:
        #line 1228
        Output << "Integer constant exceeds range";
        break;
    
    case 204:
        #line 1229
        Output << "8 or 9 in octal number";
        break;
    
    case 205:
        #line 1230
        Output << "Zero strinq not allowed";
        break;
    
    case 206:
        #line 1231
        Output << "Integer part of real constant exceeds ranqe";
        break;
    
    case 250:
        #line 1233
        Output << "Too many nestedscopes of identifiers";
        break;
    
    case 251:
        #line 1234
        Output << "Too many nested procedures and/or functions";
        break;
    
    case 252:
        #line 1235
        Output << "Too many forward references of procedure entries";
        break;
    
    case 253:
        #line 1236
        Output << "Procedure too long";
        break;
    
    case 254:
        #line 1237
        Output << "Too many long constants in this procedure";
        break;
    
    case 255:
        #line 1238
        Output << "Too many errors on this source line";
        break;
    
    case 256:
        #line 1239
        Output << "Too many external references";
        break;
    
    case 257:
        #line 1240
        Output << "Too many externals";
        break;
    
    case 258:
        #line 1241
        Output << "Too many local files";
        break;
    
    case 259:
        #line 1242
        Output << "Expression too complicated";
        break;
    
    case 260:
        #line 1243
        Output << "Too many exit labels";
        break;
    
    case 300:
        #line 1245
        Output << "Division by zero";
        break;
    
    case 301:
        #line 1246
        Output << "No case provided for this value";
        break;
    
    case 302:
        #line 1247
        Output << "Index expression out of bounds";
        break;
    
    case 303:
        #line 1248
        Output << "Value to be assigned is out of bounds";
        break;
    
    case 304:
        #line 1249
        Output << "Element expression out of range";
        break;
    
    case 398:
        #line 1251
        Output << "Implementation restriction";
        break;
    
    case 399:
        #line 1252
        Output << "Feature not implemented";
        break;
    
    case 400:
    case 500:
        #line 1255
        Output << "Compiler internal error";
        break;
    }
}


#line 1259
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
    #line 1271
    Errtbl[_F.Ferrnr] = C_true;
    
    #line 1272
    if((Errinx >= 9))
    {
        #line 1273
        Errlist[10].Nmr = 255;
        
        #line 1273
        Errinx = 10;
    }
    else
    {
        #line 1275
        Errinx = (Errinx + 1);
        
        #line 1276
        Errlist[Errinx].Nmr = _F.Ferrnr;
    }
    
    #line 1278
    Errlist[Errinx].Pos = Chcnt;
    
    #line 1279
    Toterr = (Toterr + 1);
}


#line 1282
//================================================================================
// scope: insymbol (level : 2)

// forward declarations
void P_insymbol_nextch(void* _slink);
void P_insymbol_options(void* _slink);

// activation record
struct Frame_insymbol
{
    // locals
    T_nmstr Digit;
    T_boolean Ferr;
    T_integer i;
    T_boolean Iscmte;
    T_integer j;
    T_integer k;
    T_csp Lvp;
    T_nmstr Rvalb;
    T_csstr String;
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
    _setLiteral1.set(C_chlcmt);
    
    // subroutine body
    #line 1335
    L_1:
    do
    {
        #line 1335
        while(((Ch <= ' ') && (!Eol)))
        {
            #line 1335
            P_insymbol_nextch(&_F);
        }
        
        #line 1336
        _F.Test = Eol;
        
        #line 1337
        if(_F.Test)
        {
            #line 1337
            P_insymbol_nextch(&_F);
        }
    }
    while(!(!_F.Test));
    
    #line 1339
    if((Chartp[Ch] == C_illegal))
    {
        #line 1340
        Sy = C_othersy;
        
        #line 1340
        Op = C_noop;
        
        #line 1341
        P_error(nullptr, 399);
        
        #line 1341
        P_insymbol_nextch(&_F);
    }
    else
    {
        #line 1344
        switch(Chartp[Ch])
        {
        case C_letter:
            #line 1346
            _F.k = 0;
            
            #line 1346
            _F.Ferr = C_true;
            
            #line 1347
            do
            {
                #line 1348
                if((_F.k < C_maxids))
                {
                    #line 1349
                    _F.k = (_F.k + 1);
                    
                    #line 1349
                    Id[_F.k] = Ch;
                }
                else
                {
                    #line 1350
                    if(_F.Ferr)
                    {
                        #line 1350
                        P_error(nullptr, 182);
                        
                        #line 1350
                        _F.Ferr = C_false;
                    }
                }
                
                #line 1351
                P_insymbol_nextch(&_F);
            }
            while(!(_setLiteral1 & Chartp[Ch]));
            
            #line 1354
            if((_F.k >= Kk))
            {
                #line 1354
                Kk = _F.k;
            }
            else
            {
                #line 1356
                do
                {
                    #line 1356
                    Id[Kk] = ' ';
                    
                    #line 1356
                    Kk = (Kk - 1);
                }
                while(!(Kk == _F.k));
            }
            
            #line 1358
            Sy = C_ident;
            
            #line 1358
            Op = C_noop;
            
            #line 1359
            if((_F.k <= C_reslen))
            {
                #line 1360
                _FOR_TO(_F.i, Frw[_F.k], (Frw[(_F.k + 1)] - 1))
                {
                    #line 1361
                    if(F_strequri(nullptr, Rw[_F.i], Id))
                    {
                        #line 1362
                        Sy = Rsy[_F.i];
                        
                        #line 1362
                        Op = Rop[_F.i];
                    }
                }
                _FOR_END(_F.i)
            }
            
            { /* NOP */ }
            break;
        
        case C_number:
            #line 1365
            Op = C_noop;
            
            #line 1365
            _F.i = 0;
            
            #line 1366
            do
            {
                #line 1366
                _F.i = (_F.i + 1);
                
                #line 1366
                if((_F.i <= C_digmax))
                {
                    #line 1366
                    _F.Digit[_F.i] = Ch;
                }
                
                #line 1366
                P_insymbol_nextch(&_F);
            }
            while(!(Chartp[Ch] != C_number));
            
            #line 1368
            if(((((Ch == '.') && (Input.bufferVar() != '.')) && (Input.bufferVar() != ')')) || (F_lcase(nullptr, Ch) == 'e')))
            {
                #line 1371
                _F.k = _F.i;
                
                #line 1372
                if((Ch == '.'))
                {
                    #line 1373
                    _F.k = (_F.k + 1);
                    
                    #line 1373
                    if((_F.k <= C_digmax))
                    {
                        #line 1373
                        _F.Digit[_F.k] = Ch;
                    }
                    
                    #line 1374
                    P_insymbol_nextch(&_F);
                    
                    #line 1375
                    if((Chartp[Ch] != C_number))
                    {
                        #line 1375
                        P_error(nullptr, 201);
                    }
                    else
                    {
                        #line 1377
                        do
                        {
                            #line 1377
                            _F.k = (_F.k + 1);
                            
                            #line 1378
                            if((_F.k <= C_digmax))
                            {
                                #line 1378
                                _F.Digit[_F.k] = Ch;
                            }
                            
                            #line 1378
                            P_insymbol_nextch(&_F);
                        }
                        while(!(Chartp[Ch] != C_number));
                    }
                }
                
                #line 1381
                if((F_lcase(nullptr, Ch) == 'e'))
                {
                    #line 1382
                    _F.k = (_F.k + 1);
                    
                    #line 1382
                    if((_F.k <= C_digmax))
                    {
                        #line 1382
                        _F.Digit[_F.k] = Ch;
                    }
                    
                    #line 1383
                    P_insymbol_nextch(&_F);
                    
                    #line 1384
                    if(((Ch == '+') || (Ch == '-')))
                    {
                        #line 1385
                        _F.k = (_F.k + 1);
                        
                        #line 1385
                        if((_F.k <= C_digmax))
                        {
                            #line 1385
                            _F.Digit[_F.k] = Ch;
                        }
                        
                        #line 1386
                        P_insymbol_nextch(&_F);
                    }
                    
                    #line 1388
                    if((Chartp[Ch] != C_number))
                    {
                        #line 1388
                        P_error(nullptr, 201);
                    }
                    else
                    {
                        #line 1390
                        do
                        {
                            #line 1390
                            _F.k = (_F.k + 1);
                            
                            #line 1391
                            if((_F.k <= C_digmax))
                            {
                                #line 1391
                                _F.Digit[_F.k] = Ch;
                            }
                            
                            #line 1391
                            P_insymbol_nextch(&_F);
                        }
                        while(!(Chartp[Ch] != C_number));
                    }
                }
                
                #line 1394
                {
                    _new(_F.Lvp._ptr);
                    _setValue(_F.Lvp._ptr->Cclass, C_reel);
                }
                
                #line 1394
                P_pshcst(nullptr, _F.Lvp);
                
                #line 1394
                Sy = C_realconst;
                
                #line 1395
                (*_F.Lvp._ptr).Cclass = C_reel;
                
                #line 1397
                _FOR_TO(_F.i, 1, C_digmax)
                {
                    #line 1397
                    _F.Rvalb[_F.i] = ' ';
                }
                _FOR_END(_F.i)
                
                #line 1398
                if((_F.k <= C_digmax))
                {
                    #line 1399
                    _FOR_TO(_F.i, 2, (_F.k + 1))
                    {
                        #line 1399
                        _F.Rvalb[_F.i] = _F.Digit[(_F.i - 1)];
                    }
                    _FOR_END(_F.i)
                }
                else
                {
                    #line 1400
                    P_error(nullptr, 203);
                    
                    #line 1400
                    _F.Rvalb[2] = '0';
                    
                    #line 1401
                    _F.Rvalb[3] = '.';
                    
                    #line 1401
                    _F.Rvalb[4] = '0';
                }
                
                #line 1404
                P_strassvd(nullptr, (*_F.Lvp._ptr).Rval, _F.Rvalb);
                
                #line 1406
                Val.Valp = _F.Lvp;
            }
            else
            {
                #line 1410
                if((_F.i > C_digmax))
                {
                    #line 1410
                    P_error(nullptr, 203);
                    
                    #line 1410
                    Val.Ival = 0;
                }
                else
                {
                    #line 1413
                    Val.Ival = 0;
                    
                    #line 1414
                    _FOR_TO(_F.k, 1, _F.i)
                    {
                        #line 1416
                        if((Val.Ival <= Mxint10))
                        {
                            #line 1417
                            Val.Ival = ((Val.Ival * 10) + Ordint[_F.Digit[_F.k]]);
                        }
                        else
                        {
                            #line 1418
                            P_error(nullptr, 203);
                            
                            #line 1418
                            Val.Ival = 0;
                        }
                    }
                    _FOR_END(_F.k)
                    
                    #line 1420
                    Sy = C_intconst;
                }
            }
            break;
        
        case C_chstrquo:
            #line 1425
            Lgth = 0;
            
            #line 1425
            Sy = C_stringconst;
            
            #line 1425
            Op = C_noop;
            
            #line 1426
            _FOR_TO(_F.i, 1, C_strglgth)
            {
                #line 1426
                _F.String[_F.i] = ' ';
            }
            _FOR_END(_F.i)
            
            #line 1427
            do
            {
                #line 1428
                do
                {
                    #line 1428
                    P_insymbol_nextch(&_F);
                    
                    #line 1428
                    Lgth = (Lgth + 1);
                    
                    #line 1429
                    if((Lgth <= C_strglgth))
                    {
                        #line 1429
                        _F.String[Lgth] = Ch;
                    }
                }
                while(!(Eol || (Ch == '\'')));
                
                #line 1431
                if(Eol)
                {
                    #line 1431
                    P_error(nullptr, 202);
                }
                else
                {
                    #line 1431
                    P_insymbol_nextch(&_F);
                }
            }
            while(!(Ch != '\''));
            
            #line 1433
            _F.String[Lgth] = ' ';
            
            #line 1434
            Lgth = (Lgth - 1);
            
            #line 1435
            if((Lgth == 0))
            {
                #line 1435
                P_error(nullptr, 205);
            }
            else
            {
                #line 1436
                if((Lgth == 1))
                {
                    #line 1436
                    Val.Ival = _ord(_F.String[1]);
                }
                else
                {
                    #line 1438
                    {
                        _new(_F.Lvp._ptr);
                        _setValue(_F.Lvp._ptr->Cclass, C_strg);
                    }
                    
                    #line 1438
                    P_pshcst(nullptr, _F.Lvp);
                    
                    #line 1439
                    (*_F.Lvp._ptr).Cclass = C_strg;
                    
                    #line 1440
                    if((Lgth > C_strglgth))
                    {
                        #line 1441
                        P_error(nullptr, 399);
                        
                        #line 1441
                        Lgth = C_strglgth;
                    }
                    
                    #line 1443
                    (*_F.Lvp._ptr).Slgth = Lgth;
                    
                    #line 1443
                    P_strassvc(nullptr, (*_F.Lvp._ptr).Sval, _F.String, C_strglgth);
                    
                    #line 1444
                    Val.Valp = _F.Lvp;
                }
            }
            break;
        
        case C_chcolon:
            #line 1448
            Op = C_noop;
            
            #line 1448
            P_insymbol_nextch(&_F);
            
            #line 1449
            if((Ch == '='))
            {
                #line 1450
                Sy = C_becomes;
                
                #line 1450
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 1451
                Sy = C_colon;
            }
            break;
        
        case C_chperiod:
            #line 1454
            Op = C_noop;
            
            #line 1454
            P_insymbol_nextch(&_F);
            
            #line 1455
            if((Ch == '.'))
            {
                #line 1455
                Sy = C_range;
                
                #line 1455
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 1456
                if((Ch == ')'))
                {
                    #line 1456
                    Sy = C_rbrack;
                    
                    #line 1456
                    P_insymbol_nextch(&_F);
                }
                else
                {
                    #line 1457
                    Sy = C_period;
                }
            }
            break;
        
        case C_chlt:
            #line 1460
            P_insymbol_nextch(&_F);
            
            #line 1460
            Sy = C_relop;
            
            #line 1461
            if((Ch == '='))
            {
                #line 1462
                Op = C_leop;
                
                #line 1462
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 1464
                if((Ch == '>'))
                {
                    #line 1465
                    Op = C_neop;
                    
                    #line 1465
                    P_insymbol_nextch(&_F);
                }
                else
                {
                    #line 1466
                    Op = C_ltop;
                }
            }
            break;
        
        case C_chgt:
            #line 1469
            P_insymbol_nextch(&_F);
            
            #line 1469
            Sy = C_relop;
            
            #line 1470
            if((Ch == '='))
            {
                #line 1471
                Op = C_geop;
                
                #line 1471
                P_insymbol_nextch(&_F);
            }
            else
            {
                #line 1472
                Op = C_gtop;
            }
            break;
        
        case C_chlparen:
            #line 1475
            P_insymbol_nextch(&_F);
            
            #line 1476
            if((Ch == '*'))
            {
                #line 1477
                P_insymbol_nextch(&_F);
                
                #line 1478
                if((Ch == '$'))
                {
                    #line 1478
                    P_insymbol_options(&_F);
                }
                
                #line 1479
                do
                {
                    #line 1480
                    while((((Ch != '}') && (Ch != '*')) && (!_eof(Input))))
                    {
                        #line 1480
                        P_insymbol_nextch(&_F);
                    }
                    
                    #line 1481
                    _F.Iscmte = (Ch == '}');
                    
                    #line 1481
                    P_insymbol_nextch(&_F);
                }
                while(!((_F.Iscmte || (Ch == ')')) || _eof(Input)));
                
                #line 1483
                if((!_F.Iscmte))
                {
                    #line 1483
                    P_insymbol_nextch(&_F);
                }
                
                #line 1483
                goto L_1;
            }
            else
            {
                #line 1485
                if((Ch == '.'))
                {
                    #line 1485
                    Sy = C_lbrack;
                    
                    #line 1485
                    P_insymbol_nextch(&_F);
                }
                else
                {
                    #line 1486
                    Sy = C_lparent;
                }
            }
            
            #line 1487
            Op = C_noop;
            break;
        
        case C_chlcmt:
            #line 1490
            P_insymbol_nextch(&_F);
            
            #line 1491
            if((Ch == '$'))
            {
                #line 1491
                P_insymbol_options(&_F);
            }
            
            #line 1492
            do
            {
                #line 1493
                while((((Ch != '}') && (Ch != '*')) && (!_eof(Input))))
                {
                    #line 1493
                    P_insymbol_nextch(&_F);
                }
                
                #line 1494
                _F.Iscmte = (Ch == '}');
                
                #line 1494
                P_insymbol_nextch(&_F);
            }
            while(!((_F.Iscmte || (Ch == ')')) || _eof(Input)));
            
            #line 1496
            if((!_F.Iscmte))
            {
                #line 1496
                P_insymbol_nextch(&_F);
            }
            
            #line 1496
            goto L_1;
            break;
        
        case C_special:
            #line 1499
            Sy = Ssy[Ch];
            
            #line 1499
            Op = Sop[Ch];
            
            #line 1500
            P_insymbol_nextch(&_F);
            break;
        
        case C_chspace:
            #line 1502
            Sy = C_othersy;
            break;
        }
    }
    
    #line 1505
    if(C_dodmplex)
    {
        #line 1507
        Output << _WRITELN;
        
        #line 1508
        Output << "symbol: ";
        
        #line 1509
        switch(Sy)
        {
        case C_ident:
            #line 1510
            Output << "ident: " << _format(Id, 10, 0);
            break;
        
        case C_intconst:
            #line 1511
            Output << "int const: " << _format(Val.Ival, 1, 0);
            break;
        
        case C_realconst:
            #line 1512
            Output << "real const: ";
            
            #line 1513
            P_writev(nullptr, Output, (*Val.Valp._ptr).Rval, 9);
            break;
        
        case C_stringconst:
            #line 1514
            Output << "string const: '";
            
            #line 1515
            P_writev(nullptr, Output, (*Val.Valp._ptr).Sval, (*Val.Valp._ptr).Slgth);
            break;
        
        case C_notsy:
            #line 1516
            Output << "not";
            break;
        
        case C_mulop:
            #line 1516
            Output << '*';
            break;
        
        case C_addop:
            #line 1516
            Output << '+';
            break;
        
        case C_relop:
            #line 1517
            Output << '<';
            break;
        
        case C_lparent:
            #line 1517
            Output << '(';
            break;
        
        case C_rparent:
            #line 1517
            Output << ')';
            break;
        
        case C_lbrack:
            #line 1518
            Output << '[';
            break;
        
        case C_rbrack:
            #line 1518
            Output << ']';
            break;
        
        case C_comma:
            #line 1518
            Output << ',';
            break;
        
        case C_semicolon:
            #line 1519
            Output << ';';
            break;
        
        case C_period:
            #line 1519
            Output << '.';
            break;
        
        case C_arrow:
            #line 1519
            Output << '^';
            break;
        
        case C_colon:
            #line 1520
            Output << ':';
            break;
        
        case C_becomes:
            #line 1520
            Output << ":=";
            break;
        
        case C_range:
            #line 1520
            Output << "..";
            break;
        
        case C_labelsy:
            #line 1521
            Output << "label";
            break;
        
        case C_constsy:
            #line 1521
            Output << "const";
            break;
        
        case C_typesy:
            #line 1521
            Output << "type";
            break;
        
        case C_varsy:
            #line 1522
            Output << "var";
            break;
        
        case C_funcsy:
            #line 1522
            Output << "function";
            break;
        
        case C_progsy:
            #line 1522
            Output << "program";
            break;
        
        case C_procsy:
            #line 1523
            Output << "procedure";
            break;
        
        case C_setsy:
            #line 1523
            Output << "set";
            break;
        
        case C_packedsy:
            #line 1524
            Output << "packed";
            break;
        
        case C_arraysy:
            #line 1524
            Output << "array";
            break;
        
        case C_recordsy:
            #line 1525
            Output << "record";
            break;
        
        case C_filesy:
            #line 1525
            Output << "file";
            break;
        
        case C_beginsy:
            #line 1526
            Output << "begin";
            break;
        
        case C_ifsy:
            #line 1526
            Output << "if";
            break;
        
        case C_casesy:
            #line 1526
            Output << "case";
            break;
        
        case C_repeatsy:
            #line 1527
            Output << "repeat";
            break;
        
        case C_whilesy:
            #line 1527
            Output << "while";
            break;
        
        case C_forsy:
            #line 1528
            Output << "for";
            break;
        
        case C_withsy:
            #line 1528
            Output << "with";
            break;
        
        case C_gotosy:
            #line 1528
            Output << "goto";
            break;
        
        case C_endsy:
            #line 1529
            Output << "end";
            break;
        
        case C_elsesy:
            #line 1529
            Output << "else";
            break;
        
        case C_untilsy:
            #line 1529
            Output << "until";
            break;
        
        case C_ofsy:
            #line 1530
            Output << "of";
            break;
        
        case C_dosy:
            #line 1530
            Output << "do";
            break;
        
        case C_tosy:
            #line 1530
            Output << "to";
            break;
        
        case C_downtosy:
            #line 1531
            Output << "downto";
            break;
        
        case C_thensy:
            #line 1531
            Output << "then";
            break;
        
        case C_othersy:
            #line 1532
            Output << "<other>";
            break;
        }
        
        #line 1534
        Output << _WRITELN;
    }
}


#line 1293
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
    #line 1294
    if(Eol)
    {
        #line 1295
        if(List)
        {
            #line 1295
            Output << _WRITELN;
        }
        
        #line 1295
        P_endofline(nullptr);
    }
    
    #line 1297
    if((!_eof(Input)))
    {
        #line 1298
        Eol = _eoln(Input);
        
        #line 1298
        Input >> Ch;
        
        #line 1299
        if(List)
        {
            #line 1299
            Output << Ch;
        }
        
        #line 1300
        Chcnt = (Chcnt + 1);
    }
    else
    {
        #line 1303
        Output << "   *** eof " << "encountered" << _WRITELN;
        
        #line 1304
        _F._slink->Test = C_false;
    }
}


#line 1308
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
    #line 1310
    do
    {
        #line 1310
        P_insymbol_nextch(_F._slink);
        
        #line 1311
        if((Ch != '*'))
        {
            #line 1313
            if((Ch == 't'))
            {
                #line 1314
                P_insymbol_nextch(_F._slink);
                
                #line 1314
                Prtables = (Ch == '+');
            }
            else
            {
                #line 1316
                if((Ch == 'l'))
                {
                    #line 1317
                    P_insymbol_nextch(_F._slink);
                    
                    #line 1317
                    List = (Ch == '+');
                    
                    #line 1318
                    if((!List))
                    {
                        #line 1318
                        Output << _WRITELN;
                    }
                }
                else
                {
                    #line 1321
                    if((Ch == 'd'))
                    {
                        #line 1322
                        P_insymbol_nextch(_F._slink);
                        
                        #line 1322
                        Debug = (Ch == '+');
                    }
                    else
                    {
                        #line 1324
                        if((Ch == 'c'))
                        {
                            #line 1325
                            P_insymbol_nextch(_F._slink);
                            
                            #line 1325
                            Prcode = (Ch == '+');
                        }
                    }
                }
            }
            
            #line 1326
            P_insymbol_nextch(_F._slink);
        }
    }
    while(!(Ch != ','));
}


#line 1540
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
};

// function body
void P_enterid(void* _slink, T_ctp Fcp)
{
    // prologue/frame definition
    Frame_enterid _F = {Fcp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1546
    _F.Lcp = Display[Top].Fname;
    
    #line 1547
    if((_F.Lcp == nullptr))
    {
        #line 1548
        Display[Top].Fname = _F.Fcp;
    }
    else
    {
        #line 1551
        do
        {
            #line 1551
            _F.Lcp1 = _F.Lcp;
            
            #line 1552
            if(F_strequvv(nullptr, (*_F.Lcp._ptr).Name, (*_F.Fcp._ptr).Name))
            {
                #line 1553
                P_error(nullptr, 101);
                
                #line 1553
                _F.Lcp = (*_F.Lcp._ptr).Rlink;
                
                #line 1553
                _F.Lleft = C_false;
            }
            else
            {
                #line 1555
                if(F_strltnvv(nullptr, (*_F.Lcp._ptr).Name, (*_F.Fcp._ptr).Name))
                {
                    #line 1556
                    _F.Lcp = (*_F.Lcp._ptr).Rlink;
                    
                    #line 1556
                    _F.Lleft = C_false;
                }
                else
                {
                    #line 1557
                    _F.Lcp = (*_F.Lcp._ptr).Llink;
                    
                    #line 1557
                    _F.Lleft = C_true;
                }
            }
        }
        while(!(_F.Lcp == nullptr));
        
        #line 1559
        if(_F.Lleft)
        {
            #line 1559
            (*_F.Lcp1._ptr).Llink = _F.Fcp;
        }
        else
        {
            #line 1559
            (*_F.Lcp1._ptr).Rlink = _F.Fcp;
        }
    }
    
    #line 1561
    (*_F.Fcp._ptr).Llink = nullptr;
    
    #line 1561
    (*_F.Fcp._ptr).Rlink = nullptr;
}


#line 1564
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
    #line 1570
    while((_F.Fcp != nullptr))
    {
        #line 1571
        if(F_strequvf(nullptr, (*_F.Fcp._ptr).Name, Id))
        {
            #line 1571
            goto L_1;
        }
        else
        {
            #line 1572
            if(F_strltnvf(nullptr, (*_F.Fcp._ptr).Name, Id))
            {
                #line 1572
                _F.Fcp = (*_F.Fcp._ptr).Rlink;
            }
            else
            {
                #line 1573
                _F.Fcp = (*_F.Fcp._ptr).Llink;
            }
        }
    }
    
    #line 1574
    L_1:
    _F.Fcp1 = _F.Fcp;
}


#line 1577
//================================================================================
// scope: searchidnenm (level : 2)

// activation record
struct Frame_searchidnenm
{
    // parameters
    T_setofids Fidcls;
    T_ctp& Fcp;
    T_boolean& Mm;

    // locals
    T_disprange Disxl;
    T_ctp Lcp;
};

// function body
void P_searchidnenm(void* _slink, T_setofids Fidcls, T_ctp& Fcp, T_boolean& Mm)
{
    // prologue/frame definition
    Frame_searchidnenm _F = {Fidcls, Fcp, Mm };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1582
    _F.Mm = C_false;
    
    #line 1583
    _FOR_DOWNTO(_F.Disxl, Top, 0)
    {
        #line 1584
        _F.Lcp = Display[_F.Disxl].Fname;
        
        #line 1585
        while((_F.Lcp != nullptr))
        {
            #line 1586
            if(F_strequvf(nullptr, (*_F.Lcp._ptr).Name, Id))
            {
                #line 1587
                if((_F.Fidcls & (*_F.Lcp._ptr).Klass))
                {
                    #line 1587
                    Disx = _F.Disxl;
                    
                    #line 1587
                    goto L_1;
                }
                else
                {
                    #line 1589
                    _F.Mm = C_true;
                    
                    #line 1590
                    _F.Lcp = (*_F.Lcp._ptr).Rlink;
                }
            }
            else
            {
                #line 1593
                if(F_strltnvf(nullptr, (*_F.Lcp._ptr).Name, Id))
                {
                    #line 1594
                    _F.Lcp = (*_F.Lcp._ptr).Rlink;
                }
                else
                {
                    #line 1595
                    _F.Lcp = (*_F.Lcp._ptr).Llink;
                }
            }
        }
    }
    _FOR_END(_F.Disxl)
    
    #line 1598
    Disx = 0;
    
    #line 1599
    _F.Lcp = nullptr;
    
    #line 1600
    L_1:
    _F.Fcp = _F.Lcp;
}


#line 1603
//================================================================================
// scope: searchidne (level : 2)

// activation record
struct Frame_searchidne
{
    // parameters
    T_setofids Fidcls;
    T_ctp& Fcp;

    // locals
    T_boolean Mm;
};

// function body
void P_searchidne(void* _slink, T_setofids Fidcls, T_ctp& Fcp)
{
    // prologue/frame definition
    Frame_searchidne _F = {Fidcls, Fcp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1606
    P_searchidnenm(nullptr, _F.Fidcls, _F.Fcp, _F.Mm);
    
    #line 1607
    if(_F.Mm)
    {
        #line 1607
        P_error(nullptr, 103);
    }
}


#line 1610
//================================================================================
// scope: searchid (level : 2)

// activation record
struct Frame_searchid
{
    // parameters
    T_setofids Fidcls;
    T_ctp& Fcp;

    // locals
    T_ctp Lcp;
};

// function body
void P_searchid(void* _slink, T_setofids Fidcls, T_ctp& Fcp)
{
    // prologue/frame definition
    Frame_searchid _F = {Fidcls, Fcp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1614
    P_searchidne(nullptr, _F.Fidcls, _F.Lcp);
    
    #line 1615
    if((_F.Lcp != nullptr))
    {
        #line 1615
        goto L_1;
    }
    
    #line 1618
    P_error(nullptr, 104);
    
    #line 1622
    if((_F.Fidcls & C_types))
    {
        #line 1622
        _F.Lcp = Utypptr;
    }
    else
    {
        #line 1624
        if((_F.Fidcls & C_vars))
        {
            #line 1624
            _F.Lcp = Uvarptr;
        }
        else
        {
            #line 1626
            if((_F.Fidcls & C_field))
            {
                #line 1626
                _F.Lcp = Ufldptr;
            }
            else
            {
                #line 1628
                if((_F.Fidcls & C_konst))
                {
                    #line 1628
                    _F.Lcp = Ucstptr;
                }
                else
                {
                    #line 1630
                    if((_F.Fidcls & C_proc))
                    {
                        #line 1630
                        _F.Lcp = Uprcptr;
                    }
                    else
                    {
                        #line 1631
                        _F.Lcp = Ufctptr;
                    }
                }
            }
        }
    }
    
    #line 1632
    L_1:
    _F.Fcp = _F.Lcp;
}


#line 1635
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
    #line 1639
    _F.Fmin = 0;
    
    #line 1639
    _F.Fmax = 0;
    
    #line 1640
    if((_F.Fsp != nullptr))
    {
        #line 1642
        if(((*_F.Fsp._ptr).Form == C_subrange))
        {
            #line 1643
            _F.Fmin = (*_F.Fsp._ptr).Min.Ival;
            
            #line 1643
            _F.Fmax = (*_F.Fsp._ptr).Max.Ival;
        }
        else
        {
            #line 1645
            if((_F.Fsp == Charptr))
            {
                #line 1646
                _F.Fmin = C_ordminchar;
                
                #line 1646
                _F.Fmax = C_ordmaxchar;
            }
            else
            {
                #line 1649
                if(((*_F.Fsp._ptr).Fconst != nullptr))
                {
                    #line 1650
                    _F.Fmax = (*(*_F.Fsp._ptr).Fconst._ptr).Values.Ival;
                }
            }
        }
    }
}


#line 1654
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
    #line 1656
    _F._fnvalue = 1;
    
    #line 1657
    if((_F.Fsp != nullptr))
    {
        #line 1659
        switch((*_F.Fsp._ptr).Form)
        {
        case C_scalar:
            #line 1660
            if((_F.Fsp == Intptr))
            {
                #line 1660
                _F._fnvalue = C_intal;
            }
            else
            {
                #line 1661
                if((_F.Fsp == Boolptr))
                {
                    #line 1661
                    _F._fnvalue = C_boolal;
                }
                else
                {
                    #line 1662
                    if(((*_F.Fsp._ptr).Scalkind == C_declared))
                    {
                        #line 1662
                        _F._fnvalue = C_intal;
                    }
                    else
                    {
                        #line 1663
                        if((_F.Fsp == Charptr))
                        {
                            #line 1663
                            _F._fnvalue = C_charal;
                        }
                        else
                        {
                            #line 1664
                            if((_F.Fsp == Realptr))
                            {
                                #line 1664
                                _F._fnvalue = C_realal;
                            }
                            else
                            {
                                #line 1665
                                _F._fnvalue = C_parmal;
                            }
                        }
                    }
                }
            }
            break;
        
        case C_subrange:
            #line 1666
            _F._fnvalue = F_alignquot(nullptr, (*_F.Fsp._ptr).Rangetype);
            break;
        
        case C_pointer:
            #line 1667
            _F._fnvalue = C_adral;
            break;
        
        case C_power:
            #line 1668
            _F._fnvalue = C_setal;
            break;
        
        case C_files:
            #line 1669
            _F._fnvalue = C_fileal;
            break;
        
        case C_arrays:
            #line 1670
            _F._fnvalue = F_alignquot(nullptr, (*_F.Fsp._ptr).Aeltype);
            break;
        
        case C_records:
            #line 1671
            _F._fnvalue = C_recal;
            break;
        
        case C_variant:
        case C_tagfld:
            #line 1672
            P_error(nullptr, 501);
            break;
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1676
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
    #line 1679
    _F.k = F_alignquot(nullptr, _F.Fsp);
    
    #line 1680
    _F.l = (_F.Flc - 1);
    
    #line 1681
    _F.Flc = ((_F.l + _F.k) - _mod((_F.k + _F.l) , _F.k));
}


#line 1684
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
    #line 1859
    Output << _WRITELN;
    
    #line 1859
    Output << _WRITELN;
    
    #line 1859
    Output << _WRITELN;
    
    #line 1860
    if(_F.Fb)
    {
        #line 1860
        _F.Lim = 0;
    }
    else
    {
        #line 1861
        _F.Lim = Top;
        
        #line 1861
        Output << " local";
    }
    
    #line 1862
    Output << " tables " << _WRITELN;
    
    #line 1862
    Output << _WRITELN;
    
    #line 1863
    P_printtables_marker(&_F);
    
    #line 1864
    _FOR_DOWNTO(_F.i, Top, _F.Lim)
    {
        #line 1865
        P_printtables_followctp(&_F, Display[_F.i].Fname);
    }
    _FOR_END(_F.i)
    
    #line 1866
    Output << _WRITELN;
    
    #line 1867
    if((!Eol))
    {
        #line 1867
        Output << _format(' ', (Chcnt + 16), 0);
    }
}


#line 1694
//================================================================================
// scope: printtables_stptoint (level : 3)

// types
struct T_printtables_stptoint_record_31
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
    T_printtables_stptoint_record_31 r;
};

// function body
T_integer F_printtables_stptoint(void* _slink, T_stp p)
{
    // prologue/frame definition
    Frame_printtables_stptoint _F = { (Frame_printtables*)_slink, p };
    
    // subroutine body
    #line 1696
    _F.r.p = _F.p;
    
    #line 1696
    _F._fnvalue = _F.r.i;
    
    // epilogue
    return _F._fnvalue;
}


#line 1698
//================================================================================
// scope: printtables_ctptoint (level : 3)

// types
struct T_printtables_ctptoint_record_32
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
    T_printtables_ctptoint_record_32 r;
};

// function body
T_integer F_printtables_ctptoint(void* _slink, T_ctp p)
{
    // prologue/frame definition
    Frame_printtables_ctptoint _F = { (Frame_printtables*)_slink, p };
    
    // subroutine body
    #line 1700
    _F.r.p = _F.p;
    
    #line 1700
    _F._fnvalue = _F.r.i;
    
    // epilogue
    return _F._fnvalue;
}


#line 1702
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
    #line 1739
    _FOR_DOWNTO(_F.i, Top, _F._slink->Lim)
    {
        #line 1740
        P_printtables_marker_markctp(&_F, Display[_F.i].Fname);
    }
    _FOR_END(_F.i)
}


#line 1708
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
    #line 1711
    if((_F.Fp != nullptr))
    {
        #line 1713
        (*_F.Fp._ptr).Marked = C_true;
        
        #line 1714
        switch((*_F.Fp._ptr).Form)
        {
        case C_scalar:
            { /* NOP */ }
            break;
        
        case C_subrange:
            #line 1716
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Rangetype);
            break;
        
        case C_pointer:
            { /* NOP */ }
            break;
        
        case C_power:
            #line 1719
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Elset);
            break;
        
        case C_arrays:
            #line 1720
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Aeltype);
            
            #line 1720
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Inxtype);
            break;
        
        case C_records:
            #line 1721
            P_printtables_marker_markctp(_F._slink, (*_F.Fp._ptr).Fstfld);
            
            #line 1721
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Recvar);
            break;
        
        case C_files:
            #line 1722
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Filtype);
            break;
        
        case C_tagfld:
            #line 1723
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Fstvar);
            break;
        
        case C_variant:
            #line 1724
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Nxtvar);
            
            #line 1724
            P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Subvar);
            break;
        }
    }
}


#line 1729
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
    #line 1731
    if((_F.Fp != nullptr))
    {
        #line 1733
        P_printtables_marker_markctp(_F._slink, (*_F.Fp._ptr).Llink);
        
        #line 1733
        P_printtables_marker_markctp(_F._slink, (*_F.Fp._ptr).Rlink);
        
        #line 1734
        P_printtables_marker_markstp(_F._slink, (*_F.Fp._ptr).Idtype);
    }
}


#line 1745
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
    #line 1747
    if((_F.Fp != nullptr))
    {
        #line 1749
        if((*_F.Fp._ptr).Marked)
        {
            #line 1750
            (*_F.Fp._ptr).Marked = C_false;
            
            #line 1750
            Output << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, _F.Fp), C_printtables_intsize, 0) << _format((*_F.Fp._ptr).Size, 10, 0);
            
            #line 1751
            switch((*_F.Fp._ptr).Form)
            {
            case C_scalar:
                #line 1752
                Output << _format("scalar", 10, 0);
                
                #line 1753
                if(((*_F.Fp._ptr).Scalkind == C_standard))
                {
                    #line 1754
                    Output << _format("standard", 10, 0);
                }
                else
                {
                    #line 1755
                    Output << _format("declared", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Fconst), C_printtables_intsize, 0);
                }
                
                #line 1756
                Output << _WRITELN;
                break;
            
            case C_subrange:
                #line 1759
                Output << _format("subrange", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Rangetype), 6, 0);
                
                #line 1760
                if(((*_F.Fp._ptr).Rangetype != Realptr))
                {
                    #line 1761
                    Output << (*_F.Fp._ptr).Min.Ival << (*_F.Fp._ptr).Max.Ival;
                }
                else
                {
                    #line 1763
                    if((((*_F.Fp._ptr).Min.Valp != nullptr) && ((*_F.Fp._ptr).Max.Valp != nullptr)))
                    {
                        #line 1764
                        Output << ' ';
                        
                        #line 1764
                        P_writev(nullptr, Output, (*(*_F.Fp._ptr).Min.Valp._ptr).Rval, 9);
                        
                        #line 1765
                        Output << ' ';
                        
                        #line 1765
                        P_writev(nullptr, Output, (*(*_F.Fp._ptr).Max.Valp._ptr).Rval, 9);
                    }
                }
                
                #line 1767
                Output << _WRITELN;
                
                #line 1767
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Rangetype);
                
                { /* NOP */ }
                break;
            
            case C_pointer:
                #line 1769
                Output << _format("pointer", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Eltype), C_printtables_intsize, 0) << _WRITELN;
                break;
            
            case C_power:
                #line 1770
                Output << _format("set", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Elset), C_printtables_intsize, 0) << _WRITELN;
                
                #line 1771
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Elset);
                break;
            
            case C_arrays:
                #line 1774
                Output << _format("array", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Aeltype), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Inxtype), 6, 0) << _WRITELN;
                
                #line 1776
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Aeltype);
                
                #line 1776
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Inxtype);
                break;
            
            case C_records:
                #line 1779
                Output << _format("record", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Fstfld), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Recvar), C_printtables_intsize, 0) << _WRITELN;
                
                #line 1780
                P_printtables_followctp(_F._slink, (*_F.Fp._ptr).Fstfld);
                
                #line 1781
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Recvar);
                break;
            
            case C_files:
                #line 1783
                Output << _format("file", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Filtype), C_printtables_intsize, 0);
                
                #line 1784
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Filtype);
                break;
            
            case C_tagfld:
                #line 1786
                Output << _format("tagfld", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Tagfieldp), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Fstvar), C_printtables_intsize, 0) << _WRITELN;
                
                #line 1788
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Fstvar);
                break;
            
            case C_variant:
                #line 1790
                Output << _format("variant", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Nxtvar), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Subvar), C_printtables_intsize, 0) << (*_F.Fp._ptr).Varval.Ival << _WRITELN;
                
                #line 1792
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Nxtvar);
                
                #line 1792
                P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Subvar);
                break;
            }
        }
    }
}


#line 1798
//================================================================================
// scope: printtables_followctp (level : 3)

// activation record
struct Frame_printtables_followctp
{
   Frame_printtables* _slink;

    // parameters
    T_ctp Fp;
};

// function body
void P_printtables_followctp(void* _slink, T_ctp Fp)
{
    // prologue/frame definition
    Frame_printtables_followctp _F = { (Frame_printtables*)_slink, Fp };
    
    // subroutine body
    #line 1800
    if((_F.Fp != nullptr))
    {
        #line 1802
        Output << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, _F.Fp), C_printtables_intsize, 0) << ' ';
        
        #line 1803
        P_writev(nullptr, Output, (*_F.Fp._ptr).Name, 9);
        
        #line 1803
        Output << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Llink), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Rlink), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format(F_printtables_stptoint(_F._slink, (*_F.Fp._ptr).Idtype), C_printtables_intsize, 0);
        
        #line 1805
        switch((*_F.Fp._ptr).Klass)
        {
        case C_types:
            #line 1806
            Output << _format("type", 10, 0);
            break;
        
        case C_konst:
            #line 1807
            Output << _format("constant", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0);
            
            #line 1808
            if(((*_F.Fp._ptr).Idtype != nullptr))
            {
                #line 1809
                if(((*_F.Fp._ptr).Idtype == Realptr))
                {
                    #line 1811
                    if(((*_F.Fp._ptr).Values.Valp != nullptr))
                    {
                        #line 1812
                        Output << ' ';
                        
                        #line 1812
                        P_writev(nullptr, Output, (*(*_F.Fp._ptr).Values.Valp._ptr).Rval, 9);
                    }
                }
                else
                {
                    #line 1816
                    if(((*(*_F.Fp._ptr).Idtype._ptr).Form == C_arrays))
                    {
                        #line 1818
                        if(((*_F.Fp._ptr).Values.Valp != nullptr))
                        {
                            #line 1819
                            Output << ' ';
                            
                            #line 1821
                            P_writev(nullptr, Output, (*(*_F.Fp._ptr).Values.Valp._ptr).Sval, (*(*_F.Fp._ptr).Values.Valp._ptr).Slgth);
                        }
                    }
                    else
                    {
                        #line 1824
                        Output << (*_F.Fp._ptr).Values.Ival;
                    }
                }
            }
            break;
        
        case C_vars:
            #line 1826
            Output << _format("variable", 10, 0);
            
            #line 1827
            if(((*_F.Fp._ptr).Vkind == C_actual))
            {
                #line 1827
                Output << _format("actual", 10, 0);
            }
            else
            {
                #line 1828
                Output << _format("formal", 10, 0);
            }
            
            #line 1829
            Output << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0) << (*_F.Fp._ptr).Vlev << _format(' ', 4, 0) << _format((*_F.Fp._ptr).Vaddr, 6, 0);
            
            { /* NOP */ }
            break;
        
        case C_field:
            #line 1831
            Output << _format("field", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0) << _format(' ', 4, 0) << _format((*_F.Fp._ptr).Fldaddr, 6, 0);
            break;
        
        case C_proc:
        case C_func:
            #line 1834
            if(((*_F.Fp._ptr).Klass == C_proc))
            {
                #line 1834
                Output << _format("procedure", 10, 0);
            }
            else
            {
                #line 1835
                Output << _format("function", 10, 0);
            }
            
            #line 1836
            if(((*_F.Fp._ptr).Pfdeckind == C_standard))
            {
                #line 1837
                Output << _format("standard", 10, 0) << _format((*_F.Fp._ptr).Key, 10, 0);
            }
            else
            {
                #line 1839
                Output << _format("declared", 10, 0) << _format(' ', 4, 0) << _format(F_printtables_ctptoint(_F._slink, (*_F.Fp._ptr).Next), C_printtables_intsize, 0);
                
                #line 1840
                Output << (*_F.Fp._ptr).Pflev << _format(' ', 4, 0) << _format((*_F.Fp._ptr).Pfname, 6, 0);
                
                #line 1841
                if(((*_F.Fp._ptr).Pfkind == C_actual))
                {
                    #line 1842
                    Output << _format("actual", 10, 0);
                    
                    #line 1843
                    if((*_F.Fp._ptr).Forwdecl)
                    {
                        #line 1843
                        Output << _format("forward", 10, 0);
                    }
                    else
                    {
                        #line 1844
                        Output << _format("notforward", 10, 0);
                    }
                    
                    #line 1845
                    if((*_F.Fp._ptr).Externl)
                    {
                        #line 1845
                        Output << _format("extern", 10, 0);
                    }
                    else
                    {
                        #line 1846
                        Output << _format("not extern", 10, 0);
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 1848
                    Output << _format("formal", 10, 0);
                }
            }
            break;
        }
        
        #line 1852
        Output << _WRITELN;
        
        #line 1853
        P_printtables_followctp(_F._slink, (*_F.Fp._ptr).Llink);
        
        #line 1853
        P_printtables_followctp(_F._slink, (*_F.Fp._ptr).Rlink);
        
        #line 1854
        P_printtables_followstp(_F._slink, (*_F.Fp._ptr).Idtype);
    }
}


#line 1870
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
    #line 1871
    Intlabel = (Intlabel + 1);
    
    #line 1872
    _F.Nxtlab = Intlabel;
}


#line 1875
//================================================================================
// scope: searchlabel (level : 2)

// activation record
struct Frame_searchlabel
{
    // parameters
    T_lbp& Llp;
    T_disprange Level;

    // locals
    T_lbp Fllp;
};

// function body
void P_searchlabel(void* _slink, T_lbp& Llp, T_disprange Level)
{
    // prologue/frame definition
    Frame_searchlabel _F = {Llp, Level };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1878
    _F.Fllp = nullptr;
    
    #line 1879
    _F.Llp = Display[_F.Level].Flabel;
    
    #line 1880
    while((_F.Llp != nullptr))
    {
        #line 1881
        if(((*_F.Llp._ptr).Labval == Val.Ival))
        {
            #line 1882
            _F.Fllp = _F.Llp;
            
            #line 1883
            _F.Llp = nullptr;
        }
        else
        {
            #line 1884
            _F.Llp = (*_F.Llp._ptr).Nextlab;
        }
    }
    
    #line 1886
    _F.Llp = _F.Fllp;
}


#line 1889
//================================================================================
// scope: newlabel (level : 2)

// activation record
struct Frame_newlabel
{
    // parameters
    T_lbp& Llp;

    // locals
    T_integer Lbname;
};

// function body
void P_newlabel(void* _slink, T_lbp& Llp)
{
    // prologue/frame definition
    Frame_newlabel _F = {Llp };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1893
    P_getlab(nullptr, _F.Llp);
    
    #line 1895
    (*_F.Llp._ptr).Labval = Val.Ival;
    
    #line 1895
    P_genlabel(nullptr, _F.Lbname);
    
    #line 1896
    (*_F.Llp._ptr).Defined = C_false;
    
    #line 1896
    (*_F.Llp._ptr).Nextlab = Display[Top].Flabel;
    
    #line 1896
    (*_F.Llp._ptr).Labname = _F.Lbname;
    
    #line 1897
    (*_F.Llp._ptr).Vlevel = Level;
    
    #line 1897
    (*_F.Llp._ptr).Slevel = 0;
    
    #line 1897
    (*_F.Llp._ptr).Ipcref = C_false;
    
    #line 1897
    (*_F.Llp._ptr).Minlvl = C_maxint;
    
    #line 1898
    (*_F.Llp._ptr).Bact = C_false;
    
    { /* NOP */ }
    
    #line 1900
    Display[Top].Flabel = _F.Llp;
}


#line 1904
//================================================================================
// scope: prtlabels (level : 2)

// activation record
struct Frame_prtlabels
{
    // locals
    T_lbp Llp;
};

// function body
void P_prtlabels(void* _slink)
{
    // prologue/frame definition
    Frame_prtlabels _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1907
    Output << _WRITELN;
    
    #line 1908
    Output << "Labels: " << _WRITELN;
    
    #line 1909
    Output << _WRITELN;
    
    #line 1910
    _F.Llp = Display[Level].Flabel;
    
    #line 1911
    while((_F.Llp != nullptr))
    {
        #line 1912
        Output << "label: " << _format((*_F.Llp._ptr).Labval, 1, 0) << " defined: " << _str((*_F.Llp._ptr).Defined) << " internal: " << _format((*_F.Llp._ptr).Labname, 1, 0) << " vlevel: " << _format((*_F.Llp._ptr).Vlevel, 1, 0) << " slevel: " << _format((*_F.Llp._ptr).Slevel, 1, 0) << " ipcref: " << _format(_str((*_F.Llp._ptr).Ipcref), 1, 0) << " minlvl: " << _format((*_F.Llp._ptr).Minlvl, 1, 0) << _WRITELN;
        
        #line 1916
        Output << "   bact: " << _str((*_F.Llp._ptr).Bact) << _WRITELN;
        
        #line 1917
        _F.Llp = (*_F.Llp._ptr).Nextlab;
    }
}


#line 1921
//================================================================================
// scope: block (level : 2)

// forward declarations
void P_block_skip(void* _slink, T_setofsys Fsys);
void P_block_constant(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_valu& Fvalu);
T_boolean F_block_comptypes(void* _slink, T_stp Fsp1, T_stp Fsp2);
T_boolean F_block_filecomponent(void* _slink, T_stp Fsp);
T_boolean F_block_string(void* _slink, T_stp Fsp);
void P_block_resolvep(void* _slink);
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
    T_integer Stalvl;
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
    #line 4993
    _F.Stalvl = 0;
    
    #line 4994
    Dp = C_true;
    
    #line 4995
    do
    {
        #line 4996
        if((Sy == C_labelsy))
        {
            #line 4997
            P_insymbol(nullptr);
            
            #line 4997
            P_block_labeldeclaration(&_F);
        }
        
        #line 4998
        if((Sy == C_constsy))
        {
            #line 4999
            P_insymbol(nullptr);
            
            #line 4999
            P_block_constdeclaration(&_F);
        }
        
        #line 5000
        if((Sy == C_typesy))
        {
            #line 5001
            P_insymbol(nullptr);
            
            #line 5001
            P_block_typedeclaration(&_F);
        }
        
        #line 5002
        if((Sy == C_varsy))
        {
            #line 5003
            P_insymbol(nullptr);
            
            #line 5003
            P_block_vardeclaration(&_F);
        }
        
        #line 5004
        while((_setLiteral1 & Sy))
        {
            #line 5005
            _F.Lsy = Sy;
            
            #line 5005
            P_insymbol(nullptr);
            
            #line 5005
            P_block_procdeclaration(&_F, _F.Lsy);
        }
        
        #line 5006
        if((Sy != C_beginsy))
        {
            #line 5007
            P_error(nullptr, 18);
            
            #line 5007
            P_block_skip(&_F, _F.Fsys);
        }
    }
    while(!((Statbegsys & Sy) || _eof(Input)));
    
    #line 5009
    Dp = C_false;
    
    #line 5010
    if((Sy == C_beginsy))
    {
        #line 5010
        P_insymbol(nullptr);
    }
    else
    {
        #line 5010
        P_error(nullptr, 17);
    }
    
    #line 5011
    do
    {
        #line 5011
        P_block_body(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)));
        
        #line 5012
        if((Sy != _F.Fsy))
        {
            #line 5013
            P_error(nullptr, 6);
            
            #line 5013
            P_block_skip(&_F, _F.Fsys);
        }
    }
    while(!(((Sy == _F.Fsy) || (Blockbegsys & Sy)) || _eof(Input)));
    
    { /* NOP */ }
}


#line 1925
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
    #line 1928
    if((!_eof(Input)))
    {
        #line 1929
        while(((!(_F.Fsys & Sy)) && (!_eof(Input))))
        {
            #line 1929
            P_insymbol(nullptr);
        }
        
        #line 1930
        if((!(_F.Fsys & Sy)))
        {
            #line 1930
            P_insymbol(nullptr);
        }
    }
}


#line 1934
//================================================================================
// scope: block_constant (level : 3)

// types
typedef _T_Range<2, 250, unsigned __int8> T_block_constant_range_33;
typedef int T_block_constant_enum_34;

// constants
const T_block_constant_enum_34 C_block_constant_neg = 2;
const T_block_constant_enum_34 C_block_constant_none = 0;
const T_block_constant_enum_34 C_block_constant_pos = 1;

// activation record
struct Frame_block_constant
{
   Frame_block* _slink;

    // parameters
    T_setofsys Fsys;
    T_stp& Fsp;
    T_valu& Fvalu;

    // locals
    T_block_constant_range_33 i;
    T_ctp Lcp;
    T_stp Lsp;
    T_csp Lvp;
    T_block_constant_enum_34 Sign;
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
    #line 1937
    _F.Lsp = nullptr;
    
    #line 1937
    _F.Fvalu.Ival = 0;
    
    #line 1938
    if((!(Constbegsys & Sy)))
    {
        #line 1939
        P_error(nullptr, 50);
        
        #line 1939
        P_block_skip(_F._slink, (_F.Fsys + Constbegsys));
    }
    
    #line 1940
    if((Constbegsys & Sy))
    {
        #line 1942
        if((Sy == C_stringconst))
        {
            #line 1944
            if((Lgth == 1))
            {
                #line 1944
                _F.Lsp = Charptr;
            }
            else
            {
                #line 1947
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_arrays);
                }
                
                #line 1947
                P_pshstc(nullptr, _F.Lsp);
                
                #line 1949
                (*_F.Lsp._ptr).Aeltype = Charptr;
                
                #line 1949
                (*_F.Lsp._ptr).Inxtype = nullptr;
                
                #line 1950
                (*_F.Lsp._ptr).Size = (Lgth * C_charsize);
                
                #line 1950
                (*_F.Lsp._ptr).Form = C_arrays;
                
                #line 1951
                (*_F.Lsp._ptr).Packing = C_true;
            }
            
            #line 1954
            _F.Fvalu = Val;
            
            #line 1954
            P_insymbol(nullptr);
        }
        else
        {
            #line 1958
            _F.Sign = C_block_constant_none;
            
            #line 1959
            if(((Sy == C_addop) && (_setLiteral1 & Op)))
            {
                #line 1960
                if((Op == C_plus))
                {
                    #line 1960
                    _F.Sign = C_block_constant_pos;
                }
                else
                {
                    #line 1960
                    _F.Sign = C_block_constant_neg;
                }
                
                #line 1961
                P_insymbol(nullptr);
            }
            
            #line 1963
            if((Sy == C_ident))
            {
                #line 1964
                P_searchid(nullptr, T_setofids::C(_setLiteral2), _F.Lcp);
                
                #line 1966
                _F.Lsp = (*_F.Lcp._ptr).Idtype;
                
                #line 1966
                _F.Fvalu = (*_F.Lcp._ptr).Values;
                
                #line 1967
                if((_F.Sign != C_block_constant_none))
                {
                    #line 1968
                    if((_F.Lsp == Intptr))
                    {
                        #line 1969
                        if((_F.Sign == C_block_constant_neg))
                        {
                            #line 1969
                            _F.Fvalu.Ival = (-_F.Fvalu.Ival);
                        }
                    }
                    else
                    {
                        #line 1971
                        if((_F.Lsp == Realptr))
                        {
                            #line 1973
                            if((_F.Sign == C_block_constant_neg))
                            {
                                #line 1974
                                {
                                    _new(_F.Lvp._ptr);
                                    _setValue(_F.Lvp._ptr->Cclass, C_reel);
                                }
                                
                                #line 1974
                                P_pshcst(nullptr, _F.Lvp);
                                
                                #line 1975
                                if((F_strchr(nullptr, (*_F.Fvalu.Valp._ptr).Rval, 1) == '-'))
                                {
                                    #line 1976
                                    P_strchrass(nullptr, (*_F.Lvp._ptr).Rval, 1, '+');
                                }
                                else
                                {
                                    #line 1977
                                    P_strchrass(nullptr, (*_F.Lvp._ptr).Rval, 1, '-');
                                }
                                
                                #line 1978
                                _FOR_TO(_F.i, 2, C_digmax)
                                {
                                    #line 1979
                                    P_strchrass(nullptr, (*_F.Lvp._ptr).Rval, _F.i, F_strchr(nullptr, (*_F.Fvalu.Valp._ptr).Rval, _F.i));
                                }
                                _FOR_END(_F.i)
                                
                                #line 1980
                                _F.Fvalu.Valp = _F.Lvp;
                                
                                { /* NOP */ }
                            }
                        }
                        else
                        {
                            #line 1983
                            P_error(nullptr, 105);
                        }
                    }
                }
                
                #line 1984
                P_insymbol(nullptr);
                
                { /* NOP */ }
            }
            else
            {
                #line 1987
                if((Sy == C_intconst))
                {
                    #line 1988
                    if((_F.Sign == C_block_constant_neg))
                    {
                        #line 1988
                        Val.Ival = (-Val.Ival);
                    }
                    
                    #line 1989
                    _F.Lsp = Intptr;
                    
                    #line 1989
                    _F.Fvalu = Val;
                    
                    #line 1989
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1992
                    if((Sy == C_realconst))
                    {
                        #line 1993
                        if((_F.Sign == C_block_constant_neg))
                        {
                            #line 1993
                            P_strchrass(nullptr, (*Val.Valp._ptr).Rval, 1, '-');
                        }
                        
                        #line 1994
                        _F.Lsp = Realptr;
                        
                        #line 1994
                        _F.Fvalu = Val;
                        
                        #line 1994
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1997
                        P_error(nullptr, 106);
                        
                        #line 1997
                        P_block_skip(_F._slink, _F.Fsys);
                    }
                }
            }
        }
        
        #line 1999
        if((!(_F.Fsys & Sy)))
        {
            #line 2000
            P_error(nullptr, 6);
            
            #line 2000
            P_block_skip(_F._slink, _F.Fsys);
        }
    }
    
    #line 2002
    _F.Fsp = _F.Lsp;
}


#line 2007
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
};

// function body
T_boolean F_block_comptypes(void* _slink, T_stp Fsp1, T_stp Fsp2)
{
    // prologue/frame definition
    Frame_block_comptypes _F = { (Frame_block*)_slink, Fsp1, Fsp2 };
    
    // subroutine body
    #line 2010
    _F._fnvalue = C_false;
    
    #line 2012
    if((_F.Fsp1 == _F.Fsp2))
    {
        #line 2012
        _F._fnvalue = C_true;
    }
    else
    {
        #line 2014
        if(((_F.Fsp1 != nullptr) && (_F.Fsp2 != nullptr)))
        {
            #line 2015
            if(((*_F.Fsp1._ptr).Form == (*_F.Fsp2._ptr).Form))
            {
                #line 2016
                switch((*_F.Fsp1._ptr).Form)
                {
                case C_scalar:
                    { /* NOP */ }
                    break;
                
                case C_subrange:
                    #line 2020
                    _F._fnvalue = ((((*_F.Fsp1._ptr).Rangetype == _F.Fsp2) || ((*_F.Fsp2._ptr).Rangetype == _F.Fsp1)) || ((*_F.Fsp1._ptr).Rangetype == (*_F.Fsp2._ptr).Rangetype));
                    break;
                
                case C_power:
                    #line 2031
                    _F._fnvalue = (((F_block_comptypes(_F._slink, (*_F.Fsp1._ptr).Elset, (*_F.Fsp2._ptr).Elset) && ((((*_F.Fsp1._ptr).Packing == (*_F.Fsp2._ptr).Packing) || (!(*_F.Fsp1._ptr).Matchpack)) || (!(*_F.Fsp2._ptr).Matchpack))) || ((*_F.Fsp1._ptr).Elset == nullptr)) || ((*_F.Fsp2._ptr).Elset == nullptr));
                    break;
                
                case C_arrays:
                    #line 2037
                    _F._fnvalue = ((F_block_string(_F._slink, _F.Fsp1) && F_block_string(_F._slink, _F.Fsp2)) && ((*_F.Fsp1._ptr).Size == (*_F.Fsp2._ptr).Size));
                    break;
                
                case C_pointer:
                    #line 2043
                    _F._fnvalue = (((*_F.Fsp1._ptr).Eltype == nullptr) || ((*_F.Fsp2._ptr).Eltype == nullptr));
                    break;
                
                case C_records:
                    { /* NOP */ }
                    break;
                
                case C_files:
                    { /* NOP */ }
                    break;
                }
            }
            else
            {
                #line 2051
                if(((*_F.Fsp1._ptr).Form == C_subrange))
                {
                    #line 2052
                    _F._fnvalue = ((*_F.Fsp1._ptr).Rangetype == _F.Fsp2);
                }
                else
                {
                    #line 2054
                    if(((*_F.Fsp2._ptr).Form == C_subrange))
                    {
                        #line 2055
                        _F._fnvalue = (_F.Fsp1 == (*_F.Fsp2._ptr).Rangetype);
                    }
                    else
                    {
                        #line 2056
                        _F._fnvalue = C_false;
                    }
                }
            }
        }
        else
        {
            #line 2057
            _F._fnvalue = C_true;
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 2061
//================================================================================
// scope: block_filecomponent (level : 3)

// forward declarations
T_boolean F_block_filecomponent_filecomponentre(void* _slink, T_ctp Lcp);

// activation record
struct Frame_block_filecomponent
{
   Frame_block* _slink;

    // parameters
    T_stp Fsp;

    // locals
    T_boolean _fnvalue;
    T_boolean f;
};

// function body
T_boolean F_block_filecomponent(void* _slink, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_filecomponent _F = { (Frame_block*)_slink, Fsp };
    
    // subroutine body
    #line 2076
    _F.f = C_false;
    
    #line 2077
    if((_F.Fsp != nullptr))
    {
        #line 2077
        switch((*_F.Fsp._ptr).Form)
        {
        case C_scalar:
            { /* NOP */ }
            break;
        
        case C_subrange:
            { /* NOP */ }
            break;
        
        case C_pointer:
            { /* NOP */ }
            break;
        
        case C_power:
            { /* NOP */ }
            break;
        
        case C_arrays:
            #line 2082
            if(F_block_filecomponent(_F._slink, (*_F.Fsp._ptr).Aeltype))
            {
                #line 2082
                _F.f = C_true;
            }
            break;
        
        case C_records:
            #line 2083
            if(F_block_filecomponent_filecomponentre(&_F, (*_F.Fsp._ptr).Fstfld))
            {
                #line 2083
                _F.f = C_true;
            }
            break;
        
        case C_files:
            #line 2084
            _F.f = C_true;
            break;
        
        case C_tagfld:
            { /* NOP */ }
            break;
        
        case C_variant:
            { /* NOP */ }
            break;
        }
    }
    
    #line 2088
    _F._fnvalue = _F.f;
    
    // epilogue
    return _F._fnvalue;
}


#line 2064
//================================================================================
// scope: block_filecomponent_filecomponentre (level : 4)

// activation record
struct Frame_block_filecomponent_filecomponentre
{
   Frame_block_filecomponent* _slink;

    // parameters
    T_ctp Lcp;

    // locals
    T_boolean _fnvalue;
    T_boolean f;
};

// function body
T_boolean F_block_filecomponent_filecomponentre(void* _slink, T_ctp Lcp)
{
    // prologue/frame definition
    Frame_block_filecomponent_filecomponentre _F = { (Frame_block_filecomponent*)_slink, Lcp };
    
    // subroutine body
    #line 2067
    _F.f = C_false;
    
    #line 2068
    if((_F.Lcp != nullptr))
    {
        #line 2069
        if(F_block_filecomponent(_F._slink->_slink, (*_F.Lcp._ptr).Idtype))
        {
            #line 2069
            _F.f = C_true;
        }
        
        #line 2070
        if(F_block_filecomponent_filecomponentre(_F._slink, (*_F.Lcp._ptr).Llink))
        {
            #line 2070
            _F.f = C_true;
        }
        
        #line 2071
        if(F_block_filecomponent_filecomponentre(_F._slink, (*_F.Lcp._ptr).Rlink))
        {
            #line 2071
            _F.f = C_true;
        }
    }
    
    #line 2073
    _F._fnvalue = _F.f;
    
    // epilogue
    return _F._fnvalue;
}


#line 2091
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
    T_integer Fmax;
    T_integer Fmin;
};

// function body
T_boolean F_block_string(void* _slink, T_stp Fsp)
{
    // prologue/frame definition
    Frame_block_string _F = { (Frame_block*)_slink, Fsp };
    
    // subroutine body
    #line 2093
    _F._fnvalue = C_false;
    
    #line 2094
    if((_F.Fsp != nullptr))
    {
        #line 2095
        if((((*_F.Fsp._ptr).Form == C_arrays) && (*_F.Fsp._ptr).Packing))
        {
            #line 2098
            if(((*_F.Fsp._ptr).Inxtype == nullptr))
            {
                #line 2098
                _F.Fmin = 1;
            }
            else
            {
                #line 2099
                P_getbounds(nullptr, (*_F.Fsp._ptr).Inxtype, _F.Fmin, _F.Fmax);
            }
            
            #line 2100
            if((F_block_comptypes(_F._slink, (*_F.Fsp._ptr).Aeltype, Charptr) && (_F.Fmin == 1)))
            {
                #line 2100
                _F._fnvalue = C_true;
            }
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 2105
//================================================================================
// scope: block_resolvep (level : 3)

// activation record
struct Frame_block_resolvep
{
   Frame_block* _slink;

    // locals
    T_boolean Fe;
    T_idstr Ids;
    T_ctp Lcp1;
    T_ctp Lcp2;
    T_boolean Mm;
};

// function body
void P_block_resolvep(void* _slink)
{
    // prologue/frame definition
    Frame_block_resolvep _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_types);
    
    // subroutine body
    #line 2108
    _F.Ids = Id;
    
    #line 2109
    _F.Fe = C_true;
    
    #line 2110
    while((Fwptr != nullptr))
    {
        #line 2111
        _F.Lcp1 = Fwptr;
        
        #line 2112
        Fwptr = (*_F.Lcp1._ptr).Next;
        
        #line 2113
        P_strassfv(nullptr, Id, (*_F.Lcp1._ptr).Name);
        
        #line 2114
        P_searchidnenm(nullptr, T_setofids::C(_setLiteral1), _F.Lcp2, _F.Mm);
        
        #line 2115
        if((_F.Lcp2 != nullptr))
        {
            #line 2115
            (*(*_F.Lcp1._ptr).Idtype._ptr).Eltype = (*_F.Lcp2._ptr).Idtype;
        }
        else
        {
            #line 2117
            if(_F.Fe)
            {
                #line 2117
                P_error(nullptr, 117);
                
                #line 2117
                Output << _WRITELN;
            }
            
            #line 2118
            Output << "*** undefined type-id forward reference: ";
            
            #line 2119
            P_writev(nullptr, Output, (*_F.Lcp1._ptr).Name, C_prtlln);
            
            #line 2119
            Output << _WRITELN;
            
            #line 2120
            _F.Fe = C_false;
        }
        
        #line 2122
        P_putnam(nullptr, _F.Lcp1);
    }
    
    #line 2124
    Id = _F.Ids;
}


#line 2127
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
    T_boolean Ispacked;
    T_ctp Lcp;
    T_integer Lmax;
    T_integer Lmin;
    T_addrrange Lsize;
    T_stp Lsp;
    T_stp Lsp1;
    T_stp Lsp2;
    T_disprange Oldtop;
    T_boolean Test;
};

// function body
void P_block_typ(void* _slink, T_setofsys Fsys, T_stp& Fsp, T_addrrange& Fsize)
{
    // prologue/frame definition
    Frame_block_typ _F = { (Frame_block*)_slink, Fsys, Fsp, Fsize };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rbrack);
    _setLiteral1.set(C_ofsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_endsy);
    
    // subroutine body
    #line 2362
    if((!(Typebegsys & Sy)))
    {
        #line 2363
        P_error(nullptr, 10);
        
        #line 2363
        P_block_skip(_F._slink, (_F.Fsys + Typebegsys));
    }
    
    #line 2364
    if((Typebegsys & Sy))
    {
        #line 2366
        if((Simptypebegsys & Sy))
        {
            #line 2366
            P_block_typ_simpletype(&_F, _F.Fsys, _F.Fsp, _F.Fsize);
        }
        else
        {
            #line 2368
            if((Sy == C_arrow))
            {
                #line 2369
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_pointer);
                }
                
                #line 2369
                P_pshstc(nullptr, _F.Lsp);
                
                #line 2369
                _F.Fsp = _F.Lsp;
                
                #line 2371
                (*_F.Lsp._ptr).Eltype = nullptr;
                
                #line 2371
                (*_F.Lsp._ptr).Size = C_ptrsize;
                
                #line 2371
                (*_F.Lsp._ptr).Form = C_pointer;
                
                #line 2372
                P_insymbol(nullptr);
                
                #line 2373
                if((Sy == C_ident))
                {
                    #line 2375
                    {
                        _new(_F.Lcp._ptr);
                        _setValue(_F.Lcp._ptr->Klass, C_types);
                    }
                    
                    #line 2375
                    P_ininam(nullptr, _F.Lcp);
                    
                    #line 2377
                    P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                    
                    #line 2377
                    (*_F.Lcp._ptr).Idtype = _F.Lsp;
                    
                    #line 2378
                    (*_F.Lcp._ptr).Next = Fwptr;
                    
                    #line 2378
                    (*_F.Lcp._ptr).Klass = C_types;
                    
                    #line 2380
                    Fwptr = _F.Lcp;
                    
                    #line 2381
                    P_insymbol(nullptr);
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 2383
                    P_error(nullptr, 2);
                }
                
                { /* NOP */ }
            }
            else
            {
                #line 2387
                _F.Ispacked = C_false;
                
                #line 2388
                if((Sy == C_packedsy))
                {
                    #line 2389
                    P_insymbol(nullptr);
                    
                    #line 2389
                    _F.Ispacked = C_true;
                    
                    #line 2390
                    if((!(Typedels & Sy)))
                    {
                        #line 2392
                        P_error(nullptr, 10);
                        
                        #line 2392
                        P_block_skip(_F._slink, (_F.Fsys + Typedels));
                    }
                }
                
                #line 2395
                if((Sy == C_arraysy))
                {
                    #line 2396
                    P_insymbol(nullptr);
                    
                    #line 2397
                    if((Sy == C_lbrack))
                    {
                        #line 2397
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 2397
                        P_error(nullptr, 11);
                    }
                    
                    #line 2398
                    _F.Lsp1 = nullptr;
                    
                    #line 2399
                    do
                    {
                        #line 2399
                        {
                            _new(_F.Lsp._ptr);
                            _setValue(_F.Lsp._ptr->Form, C_arrays);
                        }
                        
                        #line 2399
                        P_pshstc(nullptr, _F.Lsp);
                        
                        #line 2401
                        (*_F.Lsp._ptr).Aeltype = _F.Lsp1;
                        
                        #line 2401
                        (*_F.Lsp._ptr).Inxtype = nullptr;
                        
                        #line 2401
                        (*_F.Lsp._ptr).Form = C_arrays;
                        
                        #line 2402
                        (*_F.Lsp._ptr).Packing = _F.Ispacked;
                        
                        #line 2403
                        _F.Lsp1 = _F.Lsp;
                        
                        #line 2404
                        P_block_typ_simpletype(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)), _F.Lsp2, _F.Lsize);
                        
                        #line 2405
                        (*_F.Lsp1._ptr).Size = _F.Lsize;
                        
                        #line 2406
                        if((_F.Lsp2 != nullptr))
                        {
                            #line 2407
                            if(((*_F.Lsp2._ptr).Form <= C_subrange))
                            {
                                #line 2409
                                if((_F.Lsp2 == Realptr))
                                {
                                    #line 2410
                                    P_error(nullptr, 109);
                                    
                                    #line 2410
                                    _F.Lsp2 = nullptr;
                                }
                                else
                                {
                                    #line 2412
                                    if((_F.Lsp2 == Intptr))
                                    {
                                        #line 2413
                                        P_error(nullptr, 149);
                                        
                                        #line 2413
                                        _F.Lsp2 = nullptr;
                                    }
                                }
                                
                                #line 2414
                                (*_F.Lsp._ptr).Inxtype = _F.Lsp2;
                            }
                            else
                            {
                                #line 2416
                                P_error(nullptr, 113);
                                
                                #line 2416
                                _F.Lsp2 = nullptr;
                            }
                        }
                        
                        #line 2417
                        _F.Test = (Sy != C_comma);
                        
                        #line 2418
                        if((!_F.Test))
                        {
                            #line 2418
                            P_insymbol(nullptr);
                        }
                    }
                    while(!_F.Test);
                    
                    #line 2420
                    if((Sy == C_rbrack))
                    {
                        #line 2420
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 2420
                        P_error(nullptr, 12);
                    }
                    
                    #line 2421
                    if((Sy == C_ofsy))
                    {
                        #line 2421
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 2421
                        P_error(nullptr, 8);
                    }
                    
                    #line 2422
                    P_block_typ(_F._slink, _F.Fsys, _F.Lsp, _F.Lsize);
                    
                    #line 2423
                    do
                    {
                        #line 2425
                        _F.Lsp2 = (*_F.Lsp1._ptr).Aeltype;
                        
                        #line 2425
                        (*_F.Lsp1._ptr).Aeltype = _F.Lsp;
                        
                        #line 2426
                        if(((*_F.Lsp1._ptr).Inxtype != nullptr))
                        {
                            #line 2427
                            P_getbounds(nullptr, (*_F.Lsp1._ptr).Inxtype, _F.Lmin, _F.Lmax);
                            
                            #line 2428
                            P_align(nullptr, _F.Lsp, _F.Lsize);
                            
                            #line 2429
                            _F.Lsize = (_F.Lsize * ((_F.Lmax - _F.Lmin) + 1));
                            
                            #line 2430
                            (*_F.Lsp1._ptr).Size = _F.Lsize;
                        }
                        
                        #line 2433
                        _F.Lsp = _F.Lsp1;
                        
                        #line 2433
                        _F.Lsp1 = _F.Lsp2;
                    }
                    while(!(_F.Lsp1 == nullptr));
                }
                else
                {
                    #line 2437
                    if((Sy == C_recordsy))
                    {
                        #line 2438
                        P_insymbol(nullptr);
                        
                        #line 2439
                        _F.Oldtop = Top;
                        
                        #line 2440
                        if((Top < C_displimit))
                        {
                            #line 2441
                            Top = (Top + 1);
                            
                            #line 2443
                            Display[Top].Fname = nullptr;
                            
                            #line 2444
                            Display[Top].Flabel = nullptr;
                            
                            #line 2445
                            Display[Top].Fconst = nullptr;
                            
                            #line 2446
                            Display[Top].Fstruct = nullptr;
                            
                            #line 2447
                            Display[Top].Occur = C_rec;
                        }
                        else
                        {
                            #line 2450
                            P_error(nullptr, 250);
                        }
                        
                        #line 2451
                        _F.Displ = 0;
                        
                        #line 2452
                        P_block_typ_fieldlist(&_F, T_setofsys::C(((_F.Fsys - _setLiteral2) + _setLiteral3)), _F.Lsp1);
                        
                        #line 2453
                        {
                            _new(_F.Lsp._ptr);
                            _setValue(_F.Lsp._ptr->Form, C_records);
                        }
                        
                        #line 2455
                        (*_F.Lsp._ptr).Fstfld = Display[Top].Fname;
                        
                        #line 2456
                        Display[Top].Fname = nullptr;
                        
                        #line 2457
                        (*_F.Lsp._ptr).Recvar = _F.Lsp1;
                        
                        #line 2457
                        (*_F.Lsp._ptr).Size = _F.Displ;
                        
                        #line 2457
                        (*_F.Lsp._ptr).Form = C_records;
                        
                        #line 2458
                        (*_F.Lsp._ptr).Packing = _F.Ispacked;
                        
                        #line 2459
                        (*_F.Lsp._ptr).Recyc = Display[Top].Fstruct;
                        
                        #line 2460
                        Display[Top].Fstruct = nullptr;
                        
                        #line 2462
                        P_putdsps(nullptr, _F.Oldtop);
                        
                        #line 2462
                        Top = _F.Oldtop;
                        
                        #line 2464
                        P_pshstc(nullptr, _F.Lsp);
                        
                        #line 2465
                        if((Sy == C_endsy))
                        {
                            #line 2465
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 2465
                            P_error(nullptr, 13);
                        }
                    }
                    else
                    {
                        #line 2468
                        if((Sy == C_setsy))
                        {
                            #line 2469
                            P_insymbol(nullptr);
                            
                            #line 2470
                            if((Sy == C_ofsy))
                            {
                                #line 2470
                                P_insymbol(nullptr);
                            }
                            else
                            {
                                #line 2470
                                P_error(nullptr, 8);
                            }
                            
                            #line 2471
                            P_block_typ_simpletype(&_F, _F.Fsys, _F.Lsp1, _F.Lsize);
                            
                            #line 2472
                            if((_F.Lsp1 != nullptr))
                            {
                                #line 2473
                                if(((*_F.Lsp1._ptr).Form > C_subrange))
                                {
                                    #line 2474
                                    P_error(nullptr, 115);
                                    
                                    #line 2474
                                    _F.Lsp1 = nullptr;
                                }
                                else
                                {
                                    #line 2476
                                    if((_F.Lsp1 == Realptr))
                                    {
                                        #line 2477
                                        P_error(nullptr, 114);
                                        
                                        #line 2477
                                        _F.Lsp1 = nullptr;
                                    }
                                    else
                                    {
                                        #line 2478
                                        if((_F.Lsp1 == Intptr))
                                        {
                                            #line 2479
                                            P_error(nullptr, 169);
                                            
                                            #line 2479
                                            _F.Lsp1 = nullptr;
                                        }
                                        else
                                        {
                                            #line 2481
                                            P_getbounds(nullptr, _F.Lsp1, _F.Lmin, _F.Lmax);
                                            
                                            #line 2482
                                            if(((_F.Lmin < C_setlow) || (_F.Lmax > C_sethigh)))
                                            {
                                                #line 2483
                                                P_error(nullptr, 169);
                                            }
                                            
                                            { /* NOP */ }
                                        }
                                    }
                                }
                            }
                            
                            #line 2485
                            {
                                _new(_F.Lsp._ptr);
                                _setValue(_F.Lsp._ptr->Form, C_power);
                            }
                            
                            #line 2485
                            P_pshstc(nullptr, _F.Lsp);
                            
                            #line 2487
                            (*_F.Lsp._ptr).Elset = _F.Lsp1;
                            
                            #line 2487
                            (*_F.Lsp._ptr).Size = C_setsize;
                            
                            #line 2487
                            (*_F.Lsp._ptr).Form = C_power;
                            
                            #line 2488
                            (*_F.Lsp._ptr).Packing = _F.Ispacked;
                            
                            #line 2488
                            (*_F.Lsp._ptr).Matchpack = C_true;
                            
                            { /* NOP */ }
                        }
                        else
                        {
                            #line 2491
                            if((Sy == C_filesy))
                            {
                                #line 2492
                                P_insymbol(nullptr);
                                
                                #line 2493
                                if((Sy == C_ofsy))
                                {
                                    #line 2493
                                    P_insymbol(nullptr);
                                }
                                else
                                {
                                    #line 2493
                                    P_error(nullptr, 8);
                                }
                                
                                #line 2494
                                P_block_typ(_F._slink, _F.Fsys, _F.Lsp1, _F.Lsize);
                                
                                #line 2495
                                if(F_block_filecomponent(_F._slink, _F.Lsp1))
                                {
                                    #line 2495
                                    P_error(nullptr, 190);
                                }
                                
                                #line 2496
                                {
                                    _new(_F.Lsp._ptr);
                                    _setValue(_F.Lsp._ptr->Form, C_files);
                                }
                                
                                #line 2496
                                P_pshstc(nullptr, _F.Lsp);
                                
                                #line 2498
                                (*_F.Lsp._ptr).Filtype = _F.Lsp1;
                                
                                #line 2498
                                (*_F.Lsp._ptr).Size = (C_filesize + _F.Lsize);
                                
                                #line 2499
                                (*_F.Lsp._ptr).Form = C_files;
                                
                                #line 2499
                                (*_F.Lsp._ptr).Packing = _F.Ispacked;
                            }
                        }
                    }
                }
                
                #line 2502
                _F.Fsp = _F.Lsp;
            }
        }
        
        #line 2504
        if((!(_F.Fsys & Sy)))
        {
            #line 2505
            P_error(nullptr, 6);
            
            #line 2505
            P_block_skip(_F._slink, _F.Fsys);
        }
    }
    else
    {
        #line 2507
        _F.Fsp = nullptr;
    }
    
    #line 2508
    if((_F.Fsp == nullptr))
    {
        #line 2508
        _F.Fsize = 1;
    }
    else
    {
        #line 2508
        _F.Fsize = (*_F.Fsp._ptr).Size;
    }
}


#line 2132
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
    _setLiteral4.set(C_range);
    
    // subroutine body
    #line 2135
    _F.Fsize = 1;
    
    #line 2136
    if((!(Simptypebegsys & Sy)))
    {
        #line 2137
        P_error(nullptr, 1);
        
        #line 2137
        P_block_skip(_F._slink->_slink, (_F.Fsys + Simptypebegsys));
    }
    
    #line 2138
    if((Simptypebegsys & Sy))
    {
        #line 2140
        if((Sy == C_lparent))
        {
            #line 2141
            _F.Ttop = Top;
            
            #line 2142
            while((Display[Top].Occur != C_blck))
            {
                #line 2142
                Top = (Top - 1);
            }
            
            #line 2143
            {
                _new(_F.Lsp._ptr);
                _setValue(_F.Lsp._ptr->Form, C_scalar);
                _setValue(_F.Lsp._ptr->Scalkind, C_declared);
            }
            
            #line 2143
            P_pshstc(nullptr, _F.Lsp);
            
            #line 2145
            (*_F.Lsp._ptr).Size = C_intsize;
            
            #line 2145
            (*_F.Lsp._ptr).Form = C_scalar;
            
            #line 2146
            (*_F.Lsp._ptr).Scalkind = C_declared;
            
            #line 2148
            _F.Lcp1 = nullptr;
            
            #line 2148
            _F.Lcnt = 0;
            
            #line 2149
            do
            {
                #line 2149
                P_insymbol(nullptr);
                
                #line 2150
                if((Sy == C_ident))
                {
                    #line 2151
                    {
                        _new(_F.Lcp._ptr);
                        _setValue(_F.Lcp._ptr->Klass, C_konst);
                    }
                    
                    #line 2151
                    P_ininam(nullptr, _F.Lcp);
                    
                    #line 2153
                    P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                    
                    #line 2153
                    (*_F.Lcp._ptr).Idtype = _F.Lsp;
                    
                    #line 2153
                    (*_F.Lcp._ptr).Next = _F.Lcp1;
                    
                    #line 2154
                    (*_F.Lcp._ptr).Values.Ival = _F.Lcnt;
                    
                    #line 2154
                    (*_F.Lcp._ptr).Klass = C_konst;
                    
                    #line 2156
                    P_enterid(nullptr, _F.Lcp);
                    
                    #line 2157
                    _F.Lcnt = (_F.Lcnt + 1);
                    
                    #line 2158
                    _F.Lcp1 = _F.Lcp;
                    
                    #line 2158
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2160
                    P_error(nullptr, 2);
                }
                
                #line 2161
                if((!((_F.Fsys + _setLiteral1) & Sy)))
                {
                    #line 2162
                    P_error(nullptr, 6);
                    
                    #line 2162
                    P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral2)));
                }
            }
            while(!(Sy != C_comma));
            
            #line 2164
            (*_F.Lsp._ptr).Fconst = _F.Lcp1;
            
            #line 2164
            Top = _F.Ttop;
            
            #line 2165
            if((Sy == C_rparent))
            {
                #line 2165
                P_insymbol(nullptr);
            }
            else
            {
                #line 2165
                P_error(nullptr, 4);
            }
        }
        else
        {
            #line 2169
            if((Sy == C_ident))
            {
                #line 2170
                P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp);
                
                #line 2171
                P_insymbol(nullptr);
                
                #line 2172
                if(((*_F.Lcp._ptr).Klass == C_konst))
                {
                    #line 2173
                    {
                        _new(_F.Lsp._ptr);
                        _setValue(_F.Lsp._ptr->Form, C_subrange);
                    }
                    
                    #line 2173
                    P_pshstc(nullptr, _F.Lsp);
                    
                    #line 2175
                    (*_F.Lsp._ptr).Rangetype = (*_F.Lcp._ptr).Idtype;
                    
                    #line 2175
                    (*_F.Lsp._ptr).Form = C_subrange;
                    
                    #line 2176
                    if(F_block_string(_F._slink->_slink, (*_F.Lsp._ptr).Rangetype))
                    {
                        #line 2177
                        P_error(nullptr, 148);
                        
                        #line 2177
                        (*_F.Lsp._ptr).Rangetype = nullptr;
                    }
                    
                    #line 2178
                    (*_F.Lsp._ptr).Min = (*_F.Lcp._ptr).Values;
                    
                    #line 2178
                    (*_F.Lsp._ptr).Size = C_intsize;
                    
                    #line 2180
                    if((Sy == C_range))
                    {
                        #line 2180
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 2180
                        P_error(nullptr, 5);
                    }
                    
                    #line 2181
                    P_block_constant(_F._slink->_slink, _F.Fsys, _F.Lsp1, _F.Lvalu);
                    
                    #line 2182
                    (*_F.Lsp._ptr).Max = _F.Lvalu;
                    
                    #line 2183
                    if(((*_F.Lsp._ptr).Rangetype != _F.Lsp1))
                    {
                        #line 2183
                        P_error(nullptr, 107);
                    }
                }
                else
                {
                    #line 2186
                    _F.Lsp = (*_F.Lcp._ptr).Idtype;
                    
                    #line 2187
                    if((_F.Lsp != nullptr))
                    {
                        #line 2187
                        _F.Fsize = (*_F.Lsp._ptr).Size;
                    }
                }
            }
            else
            {
                #line 2191
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_subrange);
                }
                
                #line 2191
                P_pshstc(nullptr, _F.Lsp);
                
                #line 2192
                (*_F.Lsp._ptr).Form = C_subrange;
                
                #line 2193
                P_block_constant(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral4)), _F.Lsp1, _F.Lvalu);
                
                #line 2194
                if(F_block_string(_F._slink->_slink, _F.Lsp1))
                {
                    #line 2195
                    P_error(nullptr, 148);
                    
                    #line 2195
                    _F.Lsp1 = nullptr;
                }
                
                #line 2197
                (*_F.Lsp._ptr).Rangetype = _F.Lsp1;
                
                #line 2197
                (*_F.Lsp._ptr).Min = _F.Lvalu;
                
                #line 2197
                (*_F.Lsp._ptr).Size = C_intsize;
                
                #line 2198
                if((Sy == C_range))
                {
                    #line 2198
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2198
                    P_error(nullptr, 5);
                }
                
                #line 2199
                P_block_constant(_F._slink->_slink, _F.Fsys, _F.Lsp1, _F.Lvalu);
                
                #line 2200
                (*_F.Lsp._ptr).Max = _F.Lvalu;
                
                #line 2201
                if(((*_F.Lsp._ptr).Rangetype != _F.Lsp1))
                {
                    #line 2201
                    P_error(nullptr, 107);
                }
            }
            
            #line 2203
            if((_F.Lsp != nullptr))
            {
                #line 2205
                if(((*_F.Lsp._ptr).Form == C_subrange))
                {
                    #line 2206
                    if(((*_F.Lsp._ptr).Rangetype != nullptr))
                    {
                        #line 2207
                        if(((*_F.Lsp._ptr).Rangetype == Realptr))
                        {
                            #line 2207
                            P_error(nullptr, 399);
                        }
                        else
                        {
                            #line 2209
                            if(((*_F.Lsp._ptr).Min.Ival > (*_F.Lsp._ptr).Max.Ival))
                            {
                                #line 2209
                                P_error(nullptr, 102);
                            }
                        }
                    }
                }
            }
        }
        
        #line 2211
        _F.Fsp = _F.Lsp;
        
        #line 2212
        if((!(_F.Fsys & Sy)))
        {
            #line 2213
            P_error(nullptr, 6);
            
            #line 2213
            P_block_skip(_F._slink->_slink, _F.Fsys);
        }
    }
    else
    {
        #line 2215
        _F.Fsp = nullptr;
    }
}


#line 2218
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
    T_boolean Mm;
    T_ctp Nxt;
    T_ctp Nxt1;
    T_boolean Test;
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
    _setLiteral9.set(C_types);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(C_ofsy);
    _setLiteral10.set(C_lparent);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_ofsy);
    _setLiteral11.set(C_lparent);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(C_semicolon);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(C_comma);
    _setLiteral13.set(C_colon);
    _setLiteral13.set(C_lparent);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_rparent);
    _setLiteral14.set(C_semicolon);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_semicolon);
    
    _T_GenericSet _setLiteral16;
    _setLiteral16.set(C_semicolon);
    
    // subroutine body
    #line 2222
    _F.Nxt1 = nullptr;
    
    #line 2222
    _F.Lsp = nullptr;
    
    #line 2223
    if((!((_F.Fsys + _setLiteral1) & Sy)))
    {
        #line 2224
        P_error(nullptr, 19);
        
        #line 2224
        P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral2)));
    }
    
    #line 2225
    while((Sy == C_ident))
    {
        #line 2226
        _F.Nxt = _F.Nxt1;
        
        #line 2227
        do
        {
            #line 2228
            if((Sy == C_ident))
            {
                #line 2229
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_field);
                }
                
                #line 2229
                P_ininam(nullptr, _F.Lcp);
                
                #line 2231
                P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                
                #line 2231
                (*_F.Lcp._ptr).Idtype = nullptr;
                
                #line 2231
                (*_F.Lcp._ptr).Next = _F.Nxt;
                
                #line 2232
                (*_F.Lcp._ptr).Klass = C_field;
                
                #line 2234
                _F.Nxt = _F.Lcp;
                
                #line 2235
                P_enterid(nullptr, _F.Lcp);
                
                #line 2236
                P_insymbol(nullptr);
            }
            else
            {
                #line 2238
                P_error(nullptr, 2);
            }
            
            #line 2239
            if((!(_setLiteral3 & Sy)))
            {
                #line 2240
                P_error(nullptr, 6);
                
                #line 2240
                P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral4)));
            }
            
            #line 2242
            _F.Test = (Sy != C_comma);
            
            #line 2243
            if((!_F.Test))
            {
                #line 2243
                P_insymbol(nullptr);
            }
        }
        while(!_F.Test);
        
        #line 2245
        if((Sy == C_colon))
        {
            #line 2245
            P_insymbol(nullptr);
        }
        else
        {
            #line 2245
            P_error(nullptr, 5);
        }
        
        #line 2246
        P_block_typ(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral5)), _F.Lsp, _F.Lsize);
        
        #line 2247
        while((_F.Nxt != _F.Nxt1))
        {
            #line 2249
            P_align(nullptr, _F.Lsp, _F._slink->Displ);
            
            #line 2250
            (*_F.Nxt._ptr).Idtype = _F.Lsp;
            
            #line 2250
            (*_F.Nxt._ptr).Fldaddr = _F._slink->Displ;
            
            #line 2251
            _F.Nxt = (*_F.Nxt._ptr).Next;
            
            #line 2251
            _F._slink->Displ = (_F._slink->Displ + _F.Lsize);
        }
        
        #line 2253
        _F.Nxt1 = _F.Lcp;
        
        #line 2254
        while((Sy == C_semicolon))
        {
            #line 2255
            P_insymbol(nullptr);
            
            #line 2256
            if((!((_F.Fsys + _setLiteral6) & Sy)))
            {
                #line 2257
                P_error(nullptr, 19);
                
                #line 2257
                P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral7)));
            }
        }
    }
    
    #line 2260
    _F.Nxt = nullptr;
    
    #line 2261
    while((_F.Nxt1 != nullptr))
    {
        #line 2263
        _F.Lcp = (*_F.Nxt1._ptr).Next;
        
        #line 2263
        (*_F.Nxt1._ptr).Next = _F.Nxt;
        
        #line 2263
        _F.Nxt = _F.Nxt1;
        
        #line 2263
        _F.Nxt1 = _F.Lcp;
    }
    
    #line 2264
    if((Sy == C_casesy))
    {
        #line 2265
        {
            _new(_F.Lsp._ptr);
            _setValue(_F.Lsp._ptr->Form, C_tagfld);
        }
        
        #line 2265
        P_pshstc(nullptr, _F.Lsp);
        
        #line 2267
        (*_F.Lsp._ptr).Tagfieldp = nullptr;
        
        #line 2267
        (*_F.Lsp._ptr).Fstvar = nullptr;
        
        #line 2267
        (*_F.Lsp._ptr).Form = C_tagfld;
        
        #line 2268
        _F.Frecvar = _F.Lsp;
        
        #line 2269
        P_insymbol(nullptr);
        
        #line 2270
        if((Sy == C_ident))
        {
            #line 2273
            P_searchidnenm(nullptr, T_setofids::C(_setLiteral8), _F.Lcp1, _F.Mm);
            
            #line 2275
            {
                _new(_F.Lcp._ptr);
                _setValue(_F.Lcp._ptr->Klass, C_field);
            }
            
            #line 2275
            P_ininam(nullptr, _F.Lcp);
            
            #line 2277
            P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
            
            #line 2277
            (*_F.Lcp._ptr).Idtype = nullptr;
            
            #line 2277
            (*_F.Lcp._ptr).Klass = C_field;
            
            #line 2278
            (*_F.Lcp._ptr).Next = nullptr;
            
            #line 2278
            (*_F.Lcp._ptr).Fldaddr = _F._slink->Displ;
            
            #line 2280
            P_insymbol(nullptr);
            
            #line 2282
            if((Sy == C_colon))
            {
                #line 2283
                P_enterid(nullptr, _F.Lcp);
                
                #line 2283
                P_insymbol(nullptr);
                
                #line 2284
                if((Sy == C_ident))
                {
                    #line 2284
                    P_searchid(nullptr, T_setofids::C(_setLiteral9), _F.Lcp1);
                    
                    #line 2284
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2285
                    P_error(nullptr, 2);
                    
                    #line 2285
                    P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral10)));
                    
                    #line 2285
                    _F.Lcp1 = nullptr;
                }
            }
            else
            {
                #line 2287
                if(_F.Mm)
                {
                    #line 2287
                    P_error(nullptr, 103);
                }
                
                #line 2288
                P_putstrs(nullptr, (*_F.Lcp._ptr).Name);
                
                #line 2289
                (*_F.Lcp._ptr).Name = nullptr;
            }
            
            #line 2291
            if((_F.Lcp1 != nullptr))
            {
                #line 2292
                _F.Lsp1 = (*_F.Lcp1._ptr).Idtype;
                
                #line 2293
                if((_F.Lsp1 != nullptr))
                {
                    #line 2294
                    P_align(nullptr, _F.Lsp1, _F._slink->Displ);
                    
                    #line 2295
                    (*_F.Lcp._ptr).Fldaddr = _F._slink->Displ;
                    
                    #line 2297
                    if(((*_F.Lcp._ptr).Name != nullptr))
                    {
                        #line 2297
                        _F._slink->Displ = (_F._slink->Displ + (*_F.Lsp1._ptr).Size);
                    }
                    
                    #line 2298
                    if((((*_F.Lsp1._ptr).Form <= C_subrange) || F_block_string(_F._slink->_slink, _F.Lsp1)))
                    {
                        #line 2299
                        if(F_block_comptypes(_F._slink->_slink, Realptr, _F.Lsp1))
                        {
                            #line 2299
                            P_error(nullptr, 109);
                        }
                        else
                        {
                            #line 2300
                            if(F_block_string(_F._slink->_slink, _F.Lsp1))
                            {
                                #line 2300
                                P_error(nullptr, 399);
                            }
                        }
                        
                        #line 2301
                        (*_F.Lcp._ptr).Idtype = _F.Lsp1;
                        
                        #line 2301
                        (*_F.Lsp._ptr).Tagfieldp = _F.Lcp;
                        
                        { /* NOP */ }
                    }
                    else
                    {
                        #line 2303
                        P_error(nullptr, 110);
                    }
                    
                    { /* NOP */ }
                }
            }
        }
        else
        {
            #line 2307
            P_error(nullptr, 2);
            
            #line 2307
            P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral11)));
        }
        
        #line 2308
        (*_F.Lsp._ptr).Size = _F._slink->Displ;
        
        #line 2309
        if((Sy == C_ofsy))
        {
            #line 2309
            P_insymbol(nullptr);
        }
        else
        {
            #line 2309
            P_error(nullptr, 8);
        }
        
        #line 2310
        _F.Lsp1 = nullptr;
        
        #line 2310
        _F.Minsize = _F._slink->Displ;
        
        #line 2310
        _F.Maxsize = _F._slink->Displ;
        
        #line 2311
        do
        {
            #line 2311
            _F.Lsp2 = nullptr;
            
            #line 2312
            if((!((_F.Fsys + _setLiteral12) & Sy)))
            {
                #line 2314
                do
                {
                    #line 2314
                    P_block_constant(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral13)), _F.Lsp3, _F.Lvalu);
                    
                    #line 2315
                    if(((*_F.Lsp._ptr).Tagfieldp != nullptr))
                    {
                        #line 2316
                        if((!F_block_comptypes(_F._slink->_slink, (*(*_F.Lsp._ptr).Tagfieldp._ptr).Idtype, _F.Lsp3)))
                        {
                            #line 2316
                            P_error(nullptr, 111);
                        }
                    }
                    
                    #line 2317
                    {
                        _new(_F.Lsp3._ptr);
                        _setValue(_F.Lsp3._ptr->Form, C_variant);
                    }
                    
                    #line 2317
                    P_pshstc(nullptr, _F.Lsp3);
                    
                    #line 2319
                    (*_F.Lsp3._ptr).Nxtvar = _F.Lsp1;
                    
                    #line 2319
                    (*_F.Lsp3._ptr).Subvar = _F.Lsp2;
                    
                    #line 2319
                    (*_F.Lsp3._ptr).Varval = _F.Lvalu;
                    
                    #line 2320
                    (*_F.Lsp3._ptr).Form = C_variant;
                    
                    #line 2322
                    _F.Lsp4 = _F.Lsp1;
                    
                    #line 2323
                    while((_F.Lsp4 != nullptr))
                    {
                        #line 2326
                        if(((*_F.Lsp4._ptr).Varval.Ival == _F.Lvalu.Ival))
                        {
                            #line 2326
                            P_error(nullptr, 178);
                        }
                        
                        #line 2327
                        _F.Lsp4 = (*_F.Lsp4._ptr).Nxtvar;
                    }
                    
                    #line 2329
                    _F.Lsp1 = _F.Lsp3;
                    
                    #line 2329
                    _F.Lsp2 = _F.Lsp3;
                    
                    #line 2330
                    _F.Test = (Sy != C_comma);
                    
                    #line 2331
                    if((!_F.Test))
                    {
                        #line 2331
                        P_insymbol(nullptr);
                    }
                }
                while(!_F.Test);
                
                #line 2333
                if((Sy == C_colon))
                {
                    #line 2333
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2333
                    P_error(nullptr, 5);
                }
                
                #line 2334
                if((Sy == C_lparent))
                {
                    #line 2334
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2334
                    P_error(nullptr, 9);
                }
                
                #line 2335
                P_block_typ_fieldlist(_F._slink, T_setofsys::C((_F.Fsys + _setLiteral14)), _F.Lsp2);
                
                #line 2336
                if((_F._slink->Displ > _F.Maxsize))
                {
                    #line 2336
                    _F.Maxsize = _F._slink->Displ;
                }
                
                #line 2337
                while((_F.Lsp3 != nullptr))
                {
                    #line 2338
                    _F.Lsp4 = (*_F.Lsp3._ptr).Subvar;
                    
                    #line 2338
                    (*_F.Lsp3._ptr).Subvar = _F.Lsp2;
                    
                    #line 2339
                    (*_F.Lsp3._ptr).Size = _F._slink->Displ;
                    
                    #line 2340
                    _F.Lsp3 = _F.Lsp4;
                }
                
                #line 2342
                if((Sy == C_rparent))
                {
                    #line 2343
                    P_insymbol(nullptr);
                    
                    #line 2344
                    if((!((_F.Fsys + _setLiteral15) & Sy)))
                    {
                        #line 2345
                        P_error(nullptr, 6);
                        
                        #line 2345
                        P_block_skip(_F._slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral16)));
                    }
                }
                else
                {
                    #line 2347
                    P_error(nullptr, 4);
                }
                
                { /* NOP */ }
            }
            
            #line 2349
            _F.Test = (Sy != C_semicolon);
            
            #line 2350
            if((!_F.Test))
            {
                #line 2351
                _F._slink->Displ = _F.Minsize;
                
                #line 2352
                P_insymbol(nullptr);
            }
        }
        while(!_F.Test);
        
        #line 2355
        _F._slink->Displ = _F.Maxsize;
        
        #line 2356
        (*_F.Lsp._ptr).Fstvar = _F.Lsp1;
        
        { /* NOP */ }
    }
    else
    {
        #line 2358
        _F.Frecvar = nullptr;
    }
}


#line 2511
//================================================================================
// scope: block_labeldeclaration (level : 3)

// activation record
struct Frame_block_labeldeclaration
{
   Frame_block* _slink;

    // locals
    T_lbp Llp;
    T_boolean Test;
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
    #line 2515
    do
    {
        #line 2516
        if((Sy == C_intconst))
        {
            #line 2517
            P_searchlabel(nullptr, _F.Llp, Top);
            
            #line 2518
            if((_F.Llp != nullptr))
            {
                #line 2518
                P_error(nullptr, 166);
            }
            else
            {
                #line 2519
                P_newlabel(nullptr, _F.Llp);
            }
            
            #line 2520
            P_insymbol(nullptr);
        }
        else
        {
            #line 2521
            P_error(nullptr, 15);
        }
        
        #line 2522
        if((!((_F._slink->Fsys + _setLiteral1) & Sy)))
        {
            #line 2523
            P_error(nullptr, 6);
            
            #line 2523
            P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
        }
        
        #line 2524
        _F.Test = (Sy != C_comma);
        
        #line 2525
        if((!_F.Test))
        {
            #line 2525
            P_insymbol(nullptr);
        }
    }
    while(!_F.Test);
    
    #line 2527
    if((Sy == C_semicolon))
    {
        #line 2527
        P_insymbol(nullptr);
    }
    else
    {
        #line 2527
        P_error(nullptr, 14);
    }
}


#line 2530
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
    #line 2533
    if((Sy != C_ident))
    {
        #line 2534
        P_error(nullptr, 2);
        
        #line 2534
        P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    }
    
    #line 2535
    while((Sy == C_ident))
    {
        #line 2536
        {
            _new(_F.Lcp._ptr);
            _setValue(_F.Lcp._ptr->Klass, C_konst);
        }
        
        #line 2536
        P_ininam(nullptr, _F.Lcp);
        
        #line 2538
        P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
        
        #line 2538
        (*_F.Lcp._ptr).Idtype = nullptr;
        
        #line 2538
        (*_F.Lcp._ptr).Next = nullptr;
        
        #line 2538
        (*_F.Lcp._ptr).Klass = C_konst;
        
        #line 2539
        P_insymbol(nullptr);
        
        #line 2540
        if(((Sy == C_relop) && (Op == C_eqop)))
        {
            #line 2540
            P_insymbol(nullptr);
        }
        else
        {
            #line 2540
            P_error(nullptr, 16);
        }
        
        #line 2541
        P_block_constant(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lsp, _F.Lvalu);
        
        #line 2542
        P_enterid(nullptr, _F.Lcp);
        
        #line 2543
        (*_F.Lcp._ptr).Idtype = _F.Lsp;
        
        #line 2543
        (*_F.Lcp._ptr).Values = _F.Lvalu;
        
        #line 2544
        if((Sy == C_semicolon))
        {
            #line 2545
            P_insymbol(nullptr);
            
            #line 2546
            if((!((_F._slink->Fsys + _setLiteral3) & Sy)))
            {
                #line 2547
                P_error(nullptr, 6);
                
                #line 2547
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
            }
        }
        else
        {
            #line 2549
            P_error(nullptr, 14);
        }
    }
}


#line 2553
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
    T_ctp Lcp3;
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
    #line 2556
    if((Sy != C_ident))
    {
        #line 2557
        P_error(nullptr, 2);
        
        #line 2557
        P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    }
    
    #line 2558
    while((Sy == C_ident))
    {
        #line 2559
        {
            _new(_F.Lcp._ptr);
            _setValue(_F.Lcp._ptr->Klass, C_types);
        }
        
        #line 2559
        P_ininam(nullptr, _F.Lcp);
        
        #line 2561
        P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
        
        #line 2561
        (*_F.Lcp._ptr).Idtype = nullptr;
        
        #line 2561
        (*_F.Lcp._ptr).Klass = C_types;
        
        #line 2562
        P_insymbol(nullptr);
        
        #line 2563
        if(((Sy == C_relop) && (Op == C_eqop)))
        {
            #line 2563
            P_insymbol(nullptr);
        }
        else
        {
            #line 2563
            P_error(nullptr, 16);
        }
        
        #line 2564
        P_block_typ(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lsp, _F.Lsize);
        
        #line 2565
        P_enterid(nullptr, _F.Lcp);
        
        #line 2566
        (*_F.Lcp._ptr).Idtype = _F.Lsp;
        
        #line 2567
        if((Sy == C_semicolon))
        {
            #line 2568
            P_insymbol(nullptr);
            
            #line 2569
            if((!((_F._slink->Fsys + _setLiteral3) & Sy)))
            {
                #line 2570
                P_error(nullptr, 6);
                
                #line 2570
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
            }
        }
        else
        {
            #line 2572
            P_error(nullptr, 14);
        }
    }
    
    #line 2574
    P_block_resolvep(_F._slink);
}


#line 2577
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
    T_boolean Test;
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
    #line 2580
    _F.Nxt = nullptr;
    
    #line 2581
    do
    {
        #line 2582
        do
        {
            #line 2583
            if((Sy == C_ident))
            {
                #line 2584
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_vars);
                }
                
                #line 2584
                P_ininam(nullptr, _F.Lcp);
                
                #line 2586
                P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                
                #line 2586
                (*_F.Lcp._ptr).Next = _F.Nxt;
                
                #line 2586
                (*_F.Lcp._ptr).Klass = C_vars;
                
                #line 2587
                (*_F.Lcp._ptr).Idtype = nullptr;
                
                #line 2587
                (*_F.Lcp._ptr).Vkind = C_actual;
                
                #line 2587
                (*_F.Lcp._ptr).Vlev = Level;
                
                #line 2589
                P_enterid(nullptr, _F.Lcp);
                
                #line 2590
                _F.Nxt = _F.Lcp;
                
                #line 2591
                P_insymbol(nullptr);
                
                { /* NOP */ }
            }
            else
            {
                #line 2593
                P_error(nullptr, 2);
            }
            
            #line 2594
            if((!(((_F._slink->Fsys + _setLiteral1) + Typedels) & Sy)))
            {
                #line 2595
                P_error(nullptr, 6);
                
                #line 2595
                P_block_skip(_F._slink, T_setofsys::C(((_F._slink->Fsys + _setLiteral2) + Typedels)));
            }
            
            #line 2596
            _F.Test = (Sy != C_comma);
            
            #line 2597
            if((!_F.Test))
            {
                #line 2597
                P_insymbol(nullptr);
            }
        }
        while(!_F.Test);
        
        #line 2599
        if((Sy == C_colon))
        {
            #line 2599
            P_insymbol(nullptr);
        }
        else
        {
            #line 2599
            P_error(nullptr, 5);
        }
        
        #line 2600
        P_block_typ(_F._slink, T_setofsys::C(((_F._slink->Fsys + _setLiteral3) + Typedels)), _F.Lsp, _F.Lsize);
        
        #line 2601
        while((_F.Nxt != nullptr))
        {
            #line 2603
            P_align(nullptr, _F.Lsp, Lc);
            
            #line 2604
            (*_F.Nxt._ptr).Idtype = _F.Lsp;
            
            #line 2604
            (*_F.Nxt._ptr).Vaddr = Lc;
            
            #line 2605
            Lc = (Lc + _F.Lsize);
            
            #line 2605
            _F.Nxt = (*_F.Nxt._ptr).Next;
        }
        
        #line 2607
        if((Sy == C_semicolon))
        {
            #line 2608
            P_insymbol(nullptr);
            
            #line 2609
            if((!((_F._slink->Fsys + _setLiteral4) & Sy)))
            {
                #line 2610
                P_error(nullptr, 6);
                
                #line 2610
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral5)));
            }
        }
        else
        {
            #line 2612
            P_error(nullptr, 14);
        }
    }
    while(!((Sy != C_ident) && (!(Typedels & Sy))));
    
    #line 2614
    P_block_resolvep(_F._slink);
}


#line 2617
//================================================================================
// scope: block_procdeclaration (level : 3)

// types
typedef _T_Range<0, 255, unsigned __int8> T_block_procdeclaration_range_35;

// forward declarations
void P_block_procdeclaration_pushlvl(void* _slink, T_boolean Forw, T_ctp Lcp);
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
    T_block_procdeclaration_range_35 Oldlev;
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
    #line 2815
    _F.Llc = Lc;
    
    #line 2815
    Lc = C_lcaftermarkstack;
    
    #line 2815
    _F.Forw = C_false;
    
    #line 2816
    if((Sy == C_ident))
    {
        #line 2817
        P_searchsection(nullptr, Display[Top].Fname, _F.Lcp);
        
        #line 2818
        if((_F.Lcp != nullptr))
        {
            #line 2820
            if(((*_F.Lcp._ptr).Klass == C_proc))
            {
                #line 2821
                _F.Forw = (((*_F.Lcp._ptr).Forwdecl && (_F.Fsy == C_procsy)) && ((*_F.Lcp._ptr).Pfkind == C_actual));
            }
            else
            {
                #line 2823
                if(((*_F.Lcp._ptr).Klass == C_func))
                {
                    #line 2824
                    _F.Forw = (((*_F.Lcp._ptr).Forwdecl && (_F.Fsy == C_funcsy)) && ((*_F.Lcp._ptr).Pfkind == C_actual));
                }
                else
                {
                    #line 2825
                    _F.Forw = C_false;
                }
            }
            
            #line 2826
            if((!_F.Forw))
            {
                #line 2826
                P_error(nullptr, 160);
            }
        }
        
        #line 2828
        if((!_F.Forw))
        {
            #line 2830
            if((_F.Fsy == C_procsy))
            {
                #line 2830
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_proc);
                    _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                    _setValue(_F.Lcp._ptr->Pfkind, C_actual);
                }
            }
            else
            {
                #line 2831
                {
                    _new(_F.Lcp._ptr);
                    _setValue(_F.Lcp._ptr->Klass, C_func);
                    _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                    _setValue(_F.Lcp._ptr->Pfkind, C_actual);
                }
            }
            
            #line 2831
            P_ininam(nullptr, _F.Lcp);
            
            #line 2833
            P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
            
            #line 2833
            (*_F.Lcp._ptr).Idtype = nullptr;
            
            #line 2834
            (*_F.Lcp._ptr).Externl = C_false;
            
            #line 2834
            (*_F.Lcp._ptr).Pflev = Level;
            
            #line 2834
            P_genlabel(nullptr, _F.Lbname);
            
            #line 2835
            (*_F.Lcp._ptr).Pfdeckind = C_declared;
            
            #line 2835
            (*_F.Lcp._ptr).Pfkind = C_actual;
            
            #line 2835
            (*_F.Lcp._ptr).Pfname = _F.Lbname;
            
            #line 2836
            if((_F.Fsy == C_procsy))
            {
                #line 2836
                (*_F.Lcp._ptr).Klass = C_proc;
            }
            else
            {
                #line 2837
                (*_F.Lcp._ptr).Klass = C_func;
            }
            
            #line 2839
            P_enterid(nullptr, _F.Lcp);
        }
        else
        {
            #line 2842
            _F.Lcp1 = (*_F.Lcp._ptr).Pflist;
            
            #line 2843
            while((_F.Lcp1 != nullptr))
            {
                #line 2846
                if(((*_F.Lcp1._ptr).Klass == C_vars))
                {
                    #line 2847
                    if(((*_F.Lcp1._ptr).Idtype != nullptr))
                    {
                        #line 2848
                        _F.Lcm = ((*_F.Lcp1._ptr).Vaddr + (*(*_F.Lcp1._ptr).Idtype._ptr).Size);
                        
                        #line 2849
                        if((_F.Lcm > Lc))
                        {
                            #line 2849
                            Lc = _F.Lcm;
                        }
                    }
                }
                
                #line 2851
                _F.Lcp1 = (*_F.Lcp1._ptr).Next;
            }
        }
        
        #line 2854
        P_insymbol(nullptr);
    }
    else
    {
        #line 2857
        P_error(nullptr, 2);
        
        #line 2857
        _F.Lcp = Ufctptr;
    }
    
    #line 2858
    _F.Oldlev = Level;
    
    #line 2858
    _F.Oldtop = Top;
    
    #line 2859
    P_block_procdeclaration_pushlvl(&_F, _F.Forw, _F.Lcp);
    
    #line 2860
    if((_F.Fsy == C_procsy))
    {
        #line 2861
        P_block_procdeclaration_parameterlist(&_F, T_setofsys::C(_setLiteral1), _F.Lcp1);
        
        #line 2862
        if((!_F.Forw))
        {
            #line 2862
            (*_F.Lcp._ptr).Pflist = _F.Lcp1;
        }
    }
    else
    {
        #line 2865
        P_block_procdeclaration_parameterlist(&_F, T_setofsys::C(_setLiteral2), _F.Lcp1);
        
        #line 2866
        if((!_F.Forw))
        {
            #line 2866
            (*_F.Lcp._ptr).Pflist = _F.Lcp1;
        }
        
        #line 2867
        if((Sy == C_colon))
        {
            #line 2868
            P_insymbol(nullptr);
            
            #line 2869
            if((Sy == C_ident))
            {
                #line 2870
                if(_F.Forw)
                {
                    #line 2870
                    P_error(nullptr, 122);
                }
                
                #line 2871
                P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp1);
                
                #line 2872
                _F.Lsp = (*_F.Lcp1._ptr).Idtype;
                
                #line 2873
                (*_F.Lcp._ptr).Idtype = _F.Lsp;
                
                #line 2874
                if((_F.Lsp != nullptr))
                {
                    #line 2875
                    if((!(_setLiteral4 & (*_F.Lsp._ptr).Form)))
                    {
                        #line 2876
                        P_error(nullptr, 120);
                        
                        #line 2876
                        (*_F.Lcp._ptr).Idtype = nullptr;
                    }
                }
                
                #line 2877
                P_insymbol(nullptr);
            }
            else
            {
                #line 2879
                P_error(nullptr, 2);
                
                #line 2879
                P_block_skip(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral5)));
            }
        }
        else
        {
            #line 2882
            if((!_F.Forw))
            {
                #line 2882
                P_error(nullptr, 123);
            }
        }
    }
    
    #line 2884
    if((Sy == C_semicolon))
    {
        #line 2884
        P_insymbol(nullptr);
    }
    else
    {
        #line 2884
        P_error(nullptr, 14);
    }
    
    #line 2885
    if(((Sy == C_ident) && F_strequri(nullptr, T_restr::C("forward  "), Id)))
    {
        #line 2887
        if(_F.Forw)
        {
            #line 2887
            P_error(nullptr, 161);
        }
        else
        {
            #line 2888
            (*_F.Lcp._ptr).Forwdecl = C_true;
        }
        
        #line 2889
        P_insymbol(nullptr);
        
        #line 2890
        if((Sy == C_semicolon))
        {
            #line 2890
            P_insymbol(nullptr);
        }
        else
        {
            #line 2890
            P_error(nullptr, 14);
        }
        
        #line 2891
        if((!(_F._slink->Fsys & Sy)))
        {
            #line 2892
            P_error(nullptr, 6);
            
            #line 2892
            P_block_skip(_F._slink, _F._slink->Fsys);
        }
    }
    else
    {
        #line 2895
        (*_F.Lcp._ptr).Forwdecl = C_false;
        
        #line 2897
        do
        {
            #line 2897
            P_block(nullptr, _F._slink->Fsys, C_semicolon, _F.Lcp);
            
            #line 2898
            if((Sy == C_semicolon))
            {
                #line 2899
                if(Prtables)
                {
                    #line 2899
                    P_printtables(nullptr, C_false);
                }
                
                #line 2899
                P_insymbol(nullptr);
                
                #line 2900
                if((!(_setLiteral6 & Sy)))
                {
                    #line 2901
                    P_error(nullptr, 6);
                    
                    #line 2901
                    P_block_skip(_F._slink, _F._slink->Fsys);
                }
            }
            else
            {
                #line 2903
                P_error(nullptr, 14);
            }
        }
        while(!((_setLiteral7 & Sy) || _eof(Input)));
        
        { /* NOP */ }
    }
    
    #line 2907
    Level = _F.Oldlev;
    
    #line 2907
    P_putdsps(nullptr, _F.Oldtop);
    
    #line 2907
    Top = _F.Oldtop;
    
    #line 2907
    Lc = _F.Llc;
    
    { /* NOP */ }
}


#line 2622
//================================================================================
// scope: block_procdeclaration_pushlvl (level : 4)

// activation record
struct Frame_block_procdeclaration_pushlvl
{
   Frame_block_procdeclaration* _slink;

    // parameters
    T_boolean Forw;
    T_ctp Lcp;
};

// function body
void P_block_procdeclaration_pushlvl(void* _slink, T_boolean Forw, T_ctp Lcp)
{
    // prologue/frame definition
    Frame_block_procdeclaration_pushlvl _F = { (Frame_block_procdeclaration*)_slink, Forw, Lcp };
    
    // subroutine body
    #line 2624
    if((Level < C_maxlevel))
    {
        #line 2624
        Level = (Level + 1);
    }
    else
    {
        #line 2624
        P_error(nullptr, 251);
    }
    
    #line 2625
    if((Top < C_displimit))
    {
        #line 2626
        Top = (Top + 1);
        
        #line 2629
        if(_F.Forw)
        {
            #line 2629
            Display[Top].Fname = (*_F.Lcp._ptr).Pflist;
        }
        else
        {
            #line 2630
            Display[Top].Fname = nullptr;
        }
        
        #line 2631
        Display[Top].Flabel = nullptr;
        
        #line 2631
        Display[Top].Fconst = nullptr;
        
        #line 2631
        Display[Top].Fstruct = nullptr;
        
        #line 2632
        Display[Top].Occur = C_blck;
        
        #line 2633
        Display[Top].Bname = _F.Lcp;
    }
    else
    {
        #line 2636
        P_error(nullptr, 250);
    }
    
    { /* NOP */ }
}


#line 2639
//================================================================================
// scope: block_procdeclaration_parameterlist (level : 4)

// types
typedef _T_Range<0, 255, unsigned __int8> T_block_procdeclaration_parameterlist_range_36;

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
    T_addrrange Lcs;
    T_idkind Lkind;
    T_addrrange Llc;
    T_addrrange Lsize;
    T_stp Lsp;
    T_block_procdeclaration_parameterlist_range_36 Oldlev;
    T_disprange Oldtop;
    T_boolean Test;
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
    _setLiteral5.set(C_semicolon);
    _setLiteral5.set(C_rparent);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_semicolon);
    _setLiteral6.set(C_rparent);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_semicolon);
    _setLiteral7.set(C_rparent);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_colon);
    _setLiteral8.set(C_semicolon);
    _setLiteral8.set(C_rparent);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_colon);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(C_comma);
    _setLiteral10.set(C_semicolon);
    _setLiteral10.set(C_rparent);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_types);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(C_scalar);
    _setLiteral12.set(C_subrange);
    _setLiteral12.set(C_pointer);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(C_semicolon);
    _setLiteral13.set(C_rparent);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_semicolon);
    _setLiteral14.set(C_rparent);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_comma);
    _setLiteral15.set(C_colon);
    
    _T_GenericSet _setLiteral16;
    _setLiteral16.set(C_comma);
    _setLiteral16.set(C_semicolon);
    _setLiteral16.set(C_rparent);
    
    _T_GenericSet _setLiteral17;
    _setLiteral17.set(C_types);
    
    _T_GenericSet _setLiteral18;
    _setLiteral18.set(C_semicolon);
    _setLiteral18.set(C_rparent);
    
    _T_GenericSet _setLiteral19;
    _setLiteral19.set(C_semicolon);
    _setLiteral19.set(C_rparent);
    
    _T_GenericSet _setLiteral20;
    _setLiteral20.set(C_ident);
    _setLiteral20.set(C_varsy);
    _setLiteral20.set(C_procsy);
    _setLiteral20.set(C_funcsy);
    
    _T_GenericSet _setLiteral21;
    _setLiteral21.set(C_ident);
    _setLiteral21.set(C_rparent);
    
    _T_GenericSet _setLiteral22;
    _setLiteral22.set(C_ident);
    _setLiteral22.set(C_varsy);
    _setLiteral22.set(C_procsy);
    _setLiteral22.set(C_funcsy);
    
    // subroutine body
    #line 2645
    _F.Lcp1 = nullptr;
    
    #line 2646
    if((!((_F.Fsy + _setLiteral1) & Sy)))
    {
        #line 2647
        P_error(nullptr, 7);
        
        #line 2647
        P_block_skip(_F._slink->_slink, T_setofsys::C(((_F._slink->_slink->Fsys + _F.Fsy) + _setLiteral2)));
    }
    
    #line 2648
    if((Sy == C_lparent))
    {
        #line 2649
        if(_F._slink->Forw)
        {
            #line 2649
            P_error(nullptr, 119);
        }
        
        #line 2650
        P_insymbol(nullptr);
        
        #line 2651
        if((!(_setLiteral3 & Sy)))
        {
            #line 2652
            P_error(nullptr, 7);
            
            #line 2652
            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral4)));
        }
        
        #line 2653
        while((_setLiteral22 & Sy))
        {
            #line 2655
            if((Sy == C_procsy))
            {
                #line 2657
                P_insymbol(nullptr);
                
                #line 2657
                _F.Lcp = nullptr;
                
                #line 2658
                if((Sy == C_ident))
                {
                    #line 2659
                    {
                        _new(_F.Lcp._ptr);
                        _setValue(_F.Lcp._ptr->Klass, C_proc);
                        _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                        _setValue(_F.Lcp._ptr->Pfkind, C_formal);
                    }
                    
                    #line 2659
                    P_ininam(nullptr, _F.Lcp);
                    
                    #line 2661
                    P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                    
                    #line 2661
                    (*_F.Lcp._ptr).Idtype = nullptr;
                    
                    #line 2661
                    (*_F.Lcp._ptr).Next = _F.Lcp1;
                    
                    #line 2662
                    (*_F.Lcp._ptr).Pflev = Level;
                    
                    #line 2663
                    (*_F.Lcp._ptr).Klass = C_proc;
                    
                    #line 2663
                    (*_F.Lcp._ptr).Pfdeckind = C_declared;
                    
                    #line 2664
                    (*_F.Lcp._ptr).Pfkind = C_formal;
                    
                    #line 2664
                    (*_F.Lcp._ptr).Pfaddr = Lc;
                    
                    #line 2664
                    (*_F.Lcp._ptr).Keep = C_true;
                    
                    #line 2666
                    P_enterid(nullptr, _F.Lcp);
                    
                    #line 2667
                    _F.Lcp1 = _F.Lcp;
                    
                    #line 2668
                    P_align(nullptr, Parmptr, Lc);
                    
                    #line 2669
                    Lc = (Lc + (C_ptrsize * 2));
                    
                    #line 2670
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 2672
                    P_error(nullptr, 2);
                }
                
                #line 2673
                _F.Oldlev = Level;
                
                #line 2673
                _F.Oldtop = Top;
                
                #line 2673
                P_block_procdeclaration_pushlvl(_F._slink, C_false, _F.Lcp);
                
                #line 2674
                _F.Lcs = Lc;
                
                #line 2674
                P_block_procdeclaration_parameterlist(_F._slink, T_setofsys::C(_setLiteral5), _F.Lcp2);
                
                #line 2674
                Lc = _F.Lcs;
                
                #line 2675
                if((_F.Lcp != nullptr))
                {
                    #line 2675
                    (*_F.Lcp._ptr).Pflist = _F.Lcp2;
                }
                
                #line 2676
                if((!((_F._slink->_slink->Fsys + _setLiteral6) & Sy)))
                {
                    #line 2677
                    P_error(nullptr, 7);
                    
                    #line 2677
                    P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral7)));
                }
                
                #line 2678
                Level = _F.Oldlev;
                
                #line 2678
                P_putdsps(nullptr, _F.Oldtop);
                
                #line 2678
                Top = _F.Oldtop;
            }
            else
            {
                #line 2682
                if((Sy == C_funcsy))
                {
                    #line 2683
                    _F.Lcp2 = nullptr;
                    
                    #line 2684
                    P_insymbol(nullptr);
                    
                    #line 2685
                    if((Sy == C_ident))
                    {
                        #line 2686
                        {
                            _new(_F.Lcp._ptr);
                            _setValue(_F.Lcp._ptr->Klass, C_func);
                            _setValue(_F.Lcp._ptr->Pfdeckind, C_declared);
                            _setValue(_F.Lcp._ptr->Pfkind, C_formal);
                        }
                        
                        #line 2686
                        P_ininam(nullptr, _F.Lcp);
                        
                        #line 2688
                        P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                        
                        #line 2688
                        (*_F.Lcp._ptr).Idtype = nullptr;
                        
                        #line 2688
                        (*_F.Lcp._ptr).Next = _F.Lcp1;
                        
                        #line 2689
                        (*_F.Lcp._ptr).Pflev = Level;
                        
                        #line 2690
                        (*_F.Lcp._ptr).Klass = C_func;
                        
                        #line 2690
                        (*_F.Lcp._ptr).Pfdeckind = C_declared;
                        
                        #line 2691
                        (*_F.Lcp._ptr).Pfkind = C_formal;
                        
                        #line 2691
                        (*_F.Lcp._ptr).Pfaddr = Lc;
                        
                        #line 2691
                        (*_F.Lcp._ptr).Keep = C_true;
                        
                        #line 2693
                        P_enterid(nullptr, _F.Lcp);
                        
                        #line 2694
                        _F.Lcp1 = _F.Lcp;
                        
                        #line 2695
                        P_align(nullptr, Parmptr, Lc);
                        
                        #line 2696
                        Lc = (Lc + (C_ptrsize * 2));
                        
                        #line 2697
                        P_insymbol(nullptr);
                        
                        { /* NOP */ }
                    }
                    else
                    {
                        #line 2699
                        P_error(nullptr, 2);
                    }
                    
                    #line 2700
                    _F.Oldlev = Level;
                    
                    #line 2700
                    _F.Oldtop = Top;
                    
                    #line 2700
                    P_block_procdeclaration_pushlvl(_F._slink, C_false, _F.Lcp);
                    
                    #line 2701
                    _F.Lcs = Lc;
                    
                    #line 2701
                    P_block_procdeclaration_parameterlist(_F._slink, T_setofsys::C(_setLiteral8), _F.Lcp2);
                    
                    #line 2701
                    Lc = _F.Lcs;
                    
                    #line 2702
                    if((_F.Lcp != nullptr))
                    {
                        #line 2702
                        (*_F.Lcp._ptr).Pflist = _F.Lcp2;
                    }
                    
                    #line 2703
                    if((!((_F._slink->_slink->Fsys + _setLiteral9) & Sy)))
                    {
                        #line 2704
                        P_error(nullptr, 7);
                        
                        #line 2704
                        P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral10)));
                    }
                    
                    #line 2705
                    if((Sy == C_colon))
                    {
                        #line 2706
                        P_insymbol(nullptr);
                        
                        #line 2707
                        if((Sy == C_ident))
                        {
                            #line 2708
                            P_searchid(nullptr, T_setofids::C(_setLiteral11), _F.Lcp2);
                            
                            #line 2709
                            _F.Lsp = (*_F.Lcp2._ptr).Idtype;
                            
                            #line 2710
                            (*_F.Lcp._ptr).Idtype = _F.Lsp;
                            
                            #line 2711
                            if((_F.Lsp != nullptr))
                            {
                                #line 2712
                                if((!(_setLiteral12 & (*_F.Lsp._ptr).Form)))
                                {
                                    #line 2713
                                    P_error(nullptr, 120);
                                    
                                    #line 2713
                                    _F.Lsp = nullptr;
                                }
                            }
                            
                            #line 2714
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 2716
                            P_error(nullptr, 2);
                        }
                        
                        #line 2717
                        if((!((_F._slink->_slink->Fsys + _setLiteral13) & Sy)))
                        {
                            #line 2718
                            P_error(nullptr, 7);
                            
                            #line 2718
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral14)));
                        }
                    }
                    else
                    {
                        #line 2720
                        P_error(nullptr, 5);
                    }
                    
                    #line 2721
                    Level = _F.Oldlev;
                    
                    #line 2721
                    P_putdsps(nullptr, _F.Oldtop);
                    
                    #line 2721
                    Top = _F.Oldtop;
                }
                else
                {
                    #line 2725
                    if((Sy == C_varsy))
                    {
                        #line 2726
                        _F.Lkind = C_formal;
                        
                        #line 2726
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 2727
                        _F.Lkind = C_actual;
                    }
                    
                    #line 2728
                    _F.Lcp2 = nullptr;
                    
                    #line 2729
                    _F.Count = 0;
                    
                    #line 2730
                    do
                    {
                        #line 2731
                        if((Sy == C_ident))
                        {
                            #line 2732
                            {
                                _new(_F.Lcp._ptr);
                                _setValue(_F.Lcp._ptr->Klass, C_vars);
                            }
                            
                            #line 2732
                            P_ininam(nullptr, _F.Lcp);
                            
                            #line 2734
                            P_strassvf(nullptr, (*_F.Lcp._ptr).Name, Id);
                            
                            #line 2734
                            (*_F.Lcp._ptr).Idtype = nullptr;
                            
                            #line 2734
                            (*_F.Lcp._ptr).Klass = C_vars;
                            
                            #line 2735
                            (*_F.Lcp._ptr).Vkind = _F.Lkind;
                            
                            #line 2735
                            (*_F.Lcp._ptr).Next = _F.Lcp2;
                            
                            #line 2735
                            (*_F.Lcp._ptr).Vlev = Level;
                            
                            #line 2736
                            (*_F.Lcp._ptr).Keep = C_true;
                            
                            #line 2738
                            P_enterid(nullptr, _F.Lcp);
                            
                            #line 2739
                            _F.Lcp2 = _F.Lcp;
                            
                            #line 2739
                            _F.Count = (_F.Count + 1);
                            
                            #line 2740
                            P_insymbol(nullptr);
                            
                            { /* NOP */ }
                        }
                        
                        #line 2742
                        if((!((_setLiteral15 + _F._slink->_slink->Fsys) & Sy)))
                        {
                            #line 2743
                            P_error(nullptr, 7);
                            
                            #line 2743
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral16)));
                        }
                        
                        #line 2745
                        _F.Test = (Sy != C_comma);
                        
                        #line 2746
                        if((!_F.Test))
                        {
                            #line 2746
                            P_insymbol(nullptr);
                        }
                    }
                    while(!_F.Test);
                    
                    #line 2748
                    if((Sy == C_colon))
                    {
                        #line 2749
                        P_insymbol(nullptr);
                        
                        #line 2750
                        if((Sy == C_ident))
                        {
                            #line 2751
                            P_searchid(nullptr, T_setofids::C(_setLiteral17), _F.Lcp);
                            
                            #line 2752
                            _F.Lsp = (*_F.Lcp._ptr).Idtype;
                            
                            #line 2753
                            _F.Lsize = C_ptrsize;
                            
                            #line 2754
                            if((_F.Lsp != nullptr))
                            {
                                #line 2755
                                if((_F.Lkind == C_actual))
                                {
                                    #line 2756
                                    if(((*_F.Lsp._ptr).Form <= C_power))
                                    {
                                        #line 2756
                                        _F.Lsize = (*_F.Lsp._ptr).Size;
                                    }
                                    else
                                    {
                                        #line 2757
                                        if(((*_F.Lsp._ptr).Form == C_files))
                                        {
                                            #line 2757
                                            P_error(nullptr, 121);
                                        }
                                    }
                                }
                            }
                            
                            #line 2758
                            P_align(nullptr, Parmptr, _F.Lsize);
                            
                            #line 2759
                            _F.Lcp3 = _F.Lcp2;
                            
                            #line 2760
                            P_align(nullptr, Parmptr, Lc);
                            
                            #line 2761
                            Lc = (Lc + (_F.Count * _F.Lsize));
                            
                            #line 2762
                            _F.Llc = Lc;
                            
                            #line 2763
                            while((_F.Lcp2 != nullptr))
                            {
                                #line 2764
                                _F.Lcp = _F.Lcp2;
                                
                                #line 2766
                                (*_F.Lcp2._ptr).Idtype = _F.Lsp;
                                
                                #line 2767
                                _F.Llc = (_F.Llc - _F.Lsize);
                                
                                #line 2768
                                (*_F.Lcp2._ptr).Vaddr = _F.Llc;
                                
                                { /* NOP */ }
                                
                                #line 2770
                                _F.Lcp2 = (*_F.Lcp2._ptr).Next;
                            }
                            
                            #line 2772
                            (*_F.Lcp._ptr).Next = _F.Lcp1;
                            
                            #line 2772
                            _F.Lcp1 = _F.Lcp3;
                            
                            #line 2773
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 2775
                            P_error(nullptr, 2);
                        }
                        
                        #line 2776
                        if((!((_F._slink->_slink->Fsys + _setLiteral18) & Sy)))
                        {
                            #line 2777
                            P_error(nullptr, 7);
                            
                            #line 2777
                            P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral19)));
                        }
                    }
                    else
                    {
                        #line 2779
                        P_error(nullptr, 5);
                    }
                    
                    { /* NOP */ }
                }
                
                { /* NOP */ }
            }
            
            #line 2782
            if((Sy == C_semicolon))
            {
                #line 2783
                P_insymbol(nullptr);
                
                #line 2784
                if((!((_F._slink->_slink->Fsys + _setLiteral20) & Sy)))
                {
                    #line 2785
                    P_error(nullptr, 7);
                    
                    #line 2785
                    P_block_skip(_F._slink->_slink, T_setofsys::C((_F._slink->_slink->Fsys + _setLiteral21)));
                }
            }
        }
        
        #line 2788
        if((Sy == C_rparent))
        {
            #line 2789
            P_insymbol(nullptr);
            
            #line 2790
            if((!((_F.Fsy + _F._slink->_slink->Fsys) & Sy)))
            {
                #line 2791
                P_error(nullptr, 6);
                
                #line 2791
                P_block_skip(_F._slink->_slink, (_F.Fsy + _F._slink->_slink->Fsys));
            }
        }
        else
        {
            #line 2793
            P_error(nullptr, 4);
        }
        
        #line 2794
        _F.Lcp3 = nullptr;
        
        #line 2797
        while((_F.Lcp1 != nullptr))
        {
            #line 2799
            _F.Lcp2 = (*_F.Lcp1._ptr).Next;
            
            #line 2799
            (*_F.Lcp1._ptr).Next = _F.Lcp3;
            
            #line 2800
            if(((*_F.Lcp1._ptr).Klass == C_vars))
            {
                #line 2801
                if(((*_F.Lcp1._ptr).Idtype != nullptr))
                {
                    #line 2802
                    if((((*_F.Lcp1._ptr).Vkind == C_actual) && ((*(*_F.Lcp1._ptr).Idtype._ptr).Form > C_power)))
                    {
                        #line 2803
                        P_align(nullptr, (*_F.Lcp1._ptr).Idtype, Lc);
                        
                        #line 2804
                        (*_F.Lcp1._ptr).Vaddr = Lc;
                        
                        #line 2805
                        Lc = (Lc + (*(*_F.Lcp1._ptr).Idtype._ptr).Size);
                        
                        { /* NOP */ }
                    }
                }
            }
            
            #line 2807
            _F.Lcp3 = _F.Lcp1;
            
            #line 2807
            _F.Lcp1 = _F.Lcp2;
        }
        
        #line 2809
        _F.Fpar = _F.Lcp3;
    }
    else
    {
        #line 2811
        _F.Fpar = nullptr;
    }
}


#line 2910
//================================================================================
// scope: block_body (level : 3)

// types
typedef _T_Array< 1, 4000, T_csp > T_block_body_array_37;
typedef _T_Range<0, 4000, signed __int16> T_block_body_range_38;
typedef _T_Range<0, 74, signed __int8> T_block_body_oprange;

// forward declarations
void P_block_body_addlvl(void* _slink);
void P_block_body_sublvl(void* _slink);
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
void P_block_body_genipj(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2);
void P_block_body_gencupent(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2);
void P_block_body_genlpa(void* _slink, T_integer Fp1, T_integer Fp2);
void P_block_body_checkbnds(void* _slink, T_stp Fsp);
void P_block_body_putlabel(void* _slink, T_integer Labname);
void P_block_body_statement(void* _slink, T_setofsys Fsys);

// constants
const T_integer C_block_body_cixmax = 10000;
const T_integer C_block_body_cstoccmax = 4000;

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
    T_extfilep Fp;
    T_addrrange Lcmax;
    T_ctp Lcp;
    T_addrrange Llc1;
    T_ctp Llcp;
    T_lbp Llp;
    T_idstr Saveid;
    T_integer Segsize;
    T_integer Stacktop;
    T_boolean Test;
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
    #line 4877
    if((_F._slink->Fprocp != nullptr))
    {
        #line 4877
        _F.Entname = (*_F._slink->Fprocp._ptr).Pfname;
    }
    else
    {
        #line 4878
        P_genlabel(nullptr, _F.Entname);
    }
    
    #line 4879
    _F.Cstptrix = 0;
    
    #line 4879
    _F.Topnew = C_lcaftermarkstack;
    
    #line 4879
    _F.Topmax = C_lcaftermarkstack;
    
    #line 4880
    P_block_body_putlabel(&_F, _F.Entname);
    
    #line 4880
    P_genlabel(nullptr, _F.Segsize);
    
    #line 4880
    P_genlabel(nullptr, _F.Stacktop);
    
    #line 4881
    P_block_body_gencupent(&_F, T_block_body_oprange::C(32), 1, _F.Segsize);
    
    #line 4881
    P_block_body_gencupent(&_F, T_block_body_oprange::C(32), 2, _F.Stacktop);
    
    #line 4882
    if((_F._slink->Fprocp != nullptr))
    {
        #line 4883
        _F.Llc1 = C_lcaftermarkstack;
        
        #line 4884
        _F.Lcp = (*_F._slink->Fprocp._ptr).Pflist;
        
        #line 4885
        while((_F.Lcp != nullptr))
        {
            #line 4888
            P_align(nullptr, Parmptr, _F.Llc1);
            
            #line 4889
            if(((*_F.Lcp._ptr).Klass == C_vars))
            {
                #line 4890
                if(((*_F.Lcp._ptr).Idtype != nullptr))
                {
                    #line 4891
                    if(((*(*_F.Lcp._ptr).Idtype._ptr).Form > C_power))
                    {
                        #line 4893
                        if(((*_F.Lcp._ptr).Vkind == C_actual))
                        {
                            #line 4895
                            P_block_body_gen2(&_F, T_block_body_oprange::C(50), 0, (*_F.Lcp._ptr).Vaddr);
                            
                            #line 4896
                            P_block_body_gen2t(&_F, T_block_body_oprange::C(54), 0, _F.Llc1, Nilptr);
                            
                            #line 4897
                            P_block_body_gen1(&_F, T_block_body_oprange::C(40), (*(*_F.Lcp._ptr).Idtype._ptr).Size);
                            
                            { /* NOP */ }
                        }
                        
                        #line 4899
                        _F.Llc1 = (_F.Llc1 + C_ptrsize);
                    }
                    else
                    {
                        #line 4901
                        _F.Llc1 = (_F.Llc1 + (*(*_F.Lcp._ptr).Idtype._ptr).Size);
                    }
                }
            }
            
            #line 4902
            _F.Lcp = (*_F.Lcp._ptr).Next;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    #line 4905
    _F.Lcmax = Lc;
    
    #line 4906
    P_block_body_addlvl(&_F);
    
    #line 4907
    do
    {
        #line 4908
        do
        {
            #line 4908
            P_block_body_statement(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)));
        }
        while(!(!(Statbegsys & Sy)));
        
        #line 4910
        _F.Test = (Sy != C_semicolon);
        
        #line 4911
        if((!_F.Test))
        {
            #line 4911
            P_insymbol(nullptr);
        }
    }
    while(!_F.Test);
    
    #line 4913
    P_block_body_sublvl(&_F);
    
    #line 4914
    if((Sy == C_endsy))
    {
        #line 4914
        P_insymbol(nullptr);
    }
    else
    {
        #line 4914
        P_error(nullptr, 13);
    }
    
    #line 4915
    _F.Llp = Display[Top].Flabel;
    
    #line 4916
    while((_F.Llp != nullptr))
    {
        #line 4919
        if((!(*_F.Llp._ptr).Defined))
        {
            #line 4920
            P_error(nullptr, 168);
            
            #line 4921
            Output << _WRITELN;
            
            #line 4921
            Output << " label " << (*_F.Llp._ptr).Labval << _WRITELN;
            
            #line 4922
            Output << _format(' ', (Chcnt + 16), 0);
        }
        
        #line 4924
        _F.Llp = (*_F.Llp._ptr).Nextlab;
    }
    
    #line 4926
    if((_F._slink->Fprocp != nullptr))
    {
        #line 4928
        if(((*_F._slink->Fprocp._ptr).Idtype == nullptr))
        {
            #line 4928
            P_block_body_gen1(&_F, T_block_body_oprange::C(42), _ord('p'));
        }
        else
        {
            #line 4929
            P_block_body_gen0t(&_F, T_block_body_oprange::C(42), (*_F._slink->Fprocp._ptr).Idtype);
        }
        
        #line 4930
        P_align(nullptr, Parmptr, _F.Lcmax);
        
        #line 4931
        if(Prcode)
        {
            #line 4932
            Prr << 'l' << _format(_F.Segsize, 4, 0) << '=' << _F.Lcmax << _WRITELN;
            
            #line 4933
            Prr << 'l' << _format(_F.Stacktop, 4, 0) << '=' << _F.Topmax << _WRITELN;
        }
    }
    else
    {
        #line 4937
        P_block_body_gen1(&_F, T_block_body_oprange::C(42), _ord('p'));
        
        #line 4938
        P_align(nullptr, Parmptr, _F.Lcmax);
        
        #line 4939
        if(Prcode)
        {
            #line 4940
            Prr << 'l' << _format(_F.Segsize, 4, 0) << '=' << _F.Lcmax << _WRITELN;
            
            #line 4941
            Prr << 'l' << _format(_F.Stacktop, 4, 0) << '=' << _F.Topmax << _WRITELN;
            
            #line 4942
            Prr << 'q' << _WRITELN;
        }
        
        #line 4944
        Ic = 0;
        
        #line 4947
        P_block_body_gen1(&_F, T_block_body_oprange::C(41), 0);
        
        #line 4947
        P_block_body_gencupent(&_F, T_block_body_oprange::C(46), 0, _F.Entname);
        
        #line 4947
        P_block_body_gen0(&_F, T_block_body_oprange::C(29));
        
        #line 4948
        if(Prcode)
        {
            #line 4949
            Prr << 'q' << _WRITELN;
        }
        
        #line 4950
        _F.Saveid = Id;
        
        #line 4951
        while((Fextfilep != nullptr))
        {
            #line 4954
            if((!(((F_strequri(nullptr, T_restr::C("input    "), (*Fextfilep._ptr).Filename) || F_strequri(nullptr, T_restr::C("output   "), (*Fextfilep._ptr).Filename)) || F_strequri(nullptr, T_restr::C("prd      "), (*Fextfilep._ptr).Filename)) || F_strequri(nullptr, T_restr::C("prr      "), (*Fextfilep._ptr).Filename))))
            {
                #line 4958
                Id = (*Fextfilep._ptr).Filename;
                
                #line 4960
                Output << _WRITELN;
                
                #line 4961
                Output << "**** Error: external file unknown '" << _format((*Fextfilep._ptr).Filename, 8, 0) << '\'' << _WRITELN;
                
                #line 4963
                Toterr = (Toterr + 1);
                
                #line 4966
                P_searchidne(nullptr, T_setofids::C(_setLiteral2), _F.Llcp);
                
                #line 4967
                if((_F.Llcp == nullptr))
                {
                    #line 4969
                    Output << _WRITELN;
                    
                    #line 4970
                    Output << "**** Error: Undeclared external file '" << _format((*Fextfilep._ptr).Filename, 8, 0) << '\'' << _WRITELN;
                    
                    #line 4972
                    Toterr = (Toterr + 1);
                    
                    #line 4973
                    _F.Llcp = Uvarptr;
                }
                
                #line 4975
                if(((*_F.Llcp._ptr).Idtype != nullptr))
                {
                    #line 4976
                    if(((*(*_F.Llcp._ptr).Idtype._ptr).Form != C_files))
                    {
                        #line 4977
                        Output << _WRITELN;
                        
                        #line 4978
                        Output << "**** Error: Undeclared external file '" << _format((*Fextfilep._ptr).Filename, 8, 0) << '\'' << _WRITELN;
                        
                        #line 4980
                        Toterr = (Toterr + 1);
                    }
                }
            }
            
            #line 4983
            _F.Fp = Fextfilep;
            
            #line 4983
            Fextfilep = (*Fextfilep._ptr).Nextfile;
            
            #line 4983
            P_putfil(nullptr, _F.Fp);
            
            { /* NOP */ }
        }
        
        #line 4985
        Id = _F.Saveid;
        
        #line 4986
        if(Prtables)
        {
            #line 4987
            Output << _WRITELN;
            
            #line 4987
            P_printtables(nullptr, C_true);
        }
    }
    
    { /* NOP */ }
}


#line 2929
//================================================================================
// scope: block_body_addlvl (level : 4)

// activation record
struct Frame_block_body_addlvl
{
   Frame_block_body* _slink;
};

// function body
void P_block_body_addlvl(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_addlvl _F = { (Frame_block_body*)_slink };
    
    // subroutine body
    #line 2931
    _F._slink->_slink->Stalvl = (_F._slink->_slink->Stalvl + 1);
}


#line 2935
//================================================================================
// scope: block_body_sublvl (level : 4)

// activation record
struct Frame_block_body_sublvl
{
   Frame_block_body* _slink;

    // locals
    T_lbp Llp;
};

// function body
void P_block_body_sublvl(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_sublvl _F = { (Frame_block_body*)_slink };
    
    // subroutine body
    #line 2938
    _F._slink->_slink->Stalvl = (_F._slink->_slink->Stalvl - 1);
    
    #line 2941
    _F.Llp = Display[Top].Flabel;
    
    #line 2942
    while((_F.Llp != nullptr))
    {
        #line 2943
        if(((*_F.Llp._ptr).Slevel > _F._slink->_slink->Stalvl))
        {
            #line 2943
            (*_F.Llp._ptr).Bact = C_false;
        }
        
        #line 2944
        _F.Llp = (*_F.Llp._ptr).Nextlab;
    }
}


#line 2948
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
    #line 2949
    _F._slink->Topnew = (_F._slink->Topnew + (Cdx[_F.i] * C_maxstack));
    
    #line 2950
    if((_F._slink->Topnew > _F._slink->Topmax))
    {
        #line 2950
        _F._slink->Topmax = _F._slink->Topnew;
    }
}


#line 2953
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
    #line 2954
    if((_mod(Ic , 10) == 0))
    {
        #line 2954
        Prr << 'i' << _format(Ic, 5, 0) << _WRITELN;
    }
}


#line 2956
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
    #line 2958
    if(Prcode)
    {
        #line 2958
        P_block_body_putic(_F._slink);
        
        #line 2958
        Prr << _format(Mn[_F.Fop], 4, 0) << _WRITELN;
    }
    
    #line 2959
    Ic = (Ic + 1);
    
    #line 2959
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 2962
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
    T_integer j;
    T_integer k;
    T_strvsp p;
};

// function body
void P_block_body_gen1(void* _slink, T_block_body_oprange Fop, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_gen1 _F = { (Frame_block_body*)_slink, Fop, Fp2 };
    
    // subroutine body
    #line 2965
    if(Prcode)
    {
        #line 2966
        P_block_body_putic(_F._slink);
        
        #line 2966
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 2967
        if((_F.Fop == 30))
        {
            #line 2968
            Prr << _format(Sna[_F.Fp2], 12, 0) << _WRITELN;
            
            #line 2969
            _F._slink->Topnew = (_F._slink->Topnew + (Pdx[_F.Fp2] * C_maxstack));
            
            #line 2970
            if((_F._slink->Topnew > _F._slink->Topmax))
            {
                #line 2970
                _F._slink->Topmax = _F._slink->Topnew;
            }
        }
        else
        {
            #line 2974
            if((_F.Fop == 38))
            {
                #line 2975
                _F.p = (*_F._slink->Cstptr[_F.Fp2]._ptr).Sval;
                
                #line 2975
                _F.j = 1;
                
                #line 2976
                Prr << ' ' << _format((*_F._slink->Cstptr[_F.Fp2]._ptr).Slgth, 4, 0) << " '";
                
                #line 2977
                _FOR_TO(_F.k, 1, F_lenpv(nullptr, _F.p))
                {
                    #line 2978
                    if(((*_F.p._ptr).Str[_F.j] == '\''))
                    {
                        #line 2978
                        Prr << "''";
                    }
                    else
                    {
                        #line 2979
                        Prr << _format((*_F.p._ptr).Str[_F.j], 1, 0);
                    }
                    
                    #line 2980
                    _F.j = (_F.j + 1);
                    
                    #line 2980
                    if((_F.j > C_varsqt))
                    {
                        #line 2981
                        _F.p = (*_F.p._ptr).Next;
                        
                        #line 2981
                        _F.j = 1;
                    }
                }
                _FOR_END(_F.k)
                
                #line 2985
                Prr << '\'' << _WRITELN;
            }
            else
            {
                #line 2987
                if((_F.Fop == 42))
                {
                    #line 2987
                    Prr << _chr(_F.Fp2) << _WRITELN;
                }
                else
                {
                    #line 2988
                    if((_F.Fop == 67))
                    {
                        #line 2988
                        Prr << _format(_F.Fp2, 4, 0) << _WRITELN;
                    }
                    else
                    {
                        #line 2989
                        Prr << _format(_F.Fp2, 12, 0) << _WRITELN;
                    }
                }
            }
            
            #line 2990
            P_block_body_mes(_F._slink, _F.Fop);
        }
    }
    
    #line 2993
    Ic = (Ic + 1);
}


#line 2996
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
    #line 2999
    if(Prcode)
    {
        #line 3000
        P_block_body_putic(_F._slink);
        
        #line 3000
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 3001
        switch(_F.Fop)
        {
        case 45:
        case 50:
        case 54:
        case 56:
        case 74:
        case 62:
        case 63:
            #line 3003
            Prr << ' ' << _format(_F.Fp1, 3, 0) << _format(_F.Fp2, 8, 0) << _WRITELN;
            break;
        
        case 47:
        case 48:
        case 49:
        case 52:
        case 53:
        case 55:
            #line 3005
            Prr << _chr(_F.Fp1);
            
            #line 3006
            if((_chr(_F.Fp1) == 'm'))
            {
                #line 3006
                Prr << ' ' << _format(_F.Fp2, 11, 0);
            }
            
            #line 3007
            Prr << _WRITELN;
            break;
        
        case 51:
            #line 3010
            switch(_F.Fp1)
            {
            case 1:
                #line 3011
                Prr << "i " << _F.Fp2 << _WRITELN;
                break;
            
            case 2:
                #line 3012
                Prr << "r ";
                
                #line 3013
                P_writev(nullptr, Prr, (*_F._slink->Cstptr[_F.Fp2]._ptr).Rval, F_lenpv(nullptr, (*_F._slink->Cstptr[_F.Fp2]._ptr).Rval));
                
                #line 3014
                Prr << _WRITELN;
                break;
            
            case 3:
                #line 3016
                Prr << "b " << _F.Fp2 << _WRITELN;
                break;
            
            case 4:
                #line 3017
                Prr << 'n' << _WRITELN;
                break;
            
            case 6:
                #line 3018
                Prr << _format("c '", 3, 0) << _chr(_F.Fp2) << '\'' << _WRITELN;
                break;
            
            case 5:
                #line 3019
                Prr << '(';
                
                #line 3021
                _FOR_TO(_F.k, C_setlow, C_sethigh)
                {
                    #line 3023
                    if(((*_F._slink->Cstptr[_F.Fp2]._ptr).Pval & _F.k))
                    {
                        #line 3023
                        Prr << _format(_F.k, 7, 0);
                    }
                }
                _FOR_END(_F.k)
                
                #line 3024
                Prr << ')' << _WRITELN;
                break;
            }
            break;
        }
        
        { /* NOP */ }
    }
    
    #line 3029
    Ic = (Ic + 1);
    
    #line 3029
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3032
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
    #line 3034
    if((_F.Fsp != nullptr))
    {
        #line 3036
        switch((*_F.Fsp._ptr).Form)
        {
        case C_scalar:
            #line 3037
            if((_F.Fsp == Intptr))
            {
                #line 3037
                Prr << 'i';
            }
            else
            {
                #line 3039
                if((_F.Fsp == Boolptr))
                {
                    #line 3039
                    Prr << 'b';
                }
                else
                {
                    #line 3041
                    if((_F.Fsp == Charptr))
                    {
                        #line 3041
                        Prr << 'c';
                    }
                    else
                    {
                        #line 3043
                        if(((*_F.Fsp._ptr).Scalkind == C_declared))
                        {
                            #line 3043
                            Prr << 'i';
                        }
                        else
                        {
                            #line 3044
                            Prr << 'r';
                        }
                    }
                }
            }
            break;
        
        case C_subrange:
            #line 3045
            P_block_body_gentypindicator(_F._slink, (*_F.Fsp._ptr).Rangetype);
            break;
        
        case C_pointer:
            #line 3046
            Prr << 'a';
            break;
        
        case C_power:
            #line 3047
            Prr << 's';
            break;
        
        case C_records:
        case C_arrays:
            #line 3048
            Prr << 'm';
            break;
        
        case C_files:
            #line 3049
            Prr << 'a';
            break;
        
        case C_tagfld:
        case C_variant:
            #line 3050
            P_error(nullptr, 500);
            break;
        }
    }
}


#line 3054
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
    #line 3056
    if(Prcode)
    {
        #line 3057
        P_block_body_putic(_F._slink);
        
        #line 3058
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 3059
        P_block_body_gentypindicator(_F._slink, _F.Fsp);
        
        #line 3060
        Prr << _WRITELN;
        
        { /* NOP */ }
    }
    
    #line 3062
    Ic = (Ic + 1);
    
    #line 3062
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3065
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
    #line 3067
    if(Prcode)
    {
        #line 3068
        P_block_body_putic(_F._slink);
        
        #line 3069
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 3070
        P_block_body_gentypindicator(_F._slink, _F.Fsp);
        
        #line 3071
        Prr << ' ' << _format(_F.Fp2, 11, 0) << _WRITELN;
    }
    
    #line 3073
    Ic = (Ic + 1);
    
    #line 3073
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3076
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
    #line 3078
    if(Prcode)
    {
        #line 3079
        P_block_body_putic(_F._slink);
        
        #line 3080
        Prr << _format(Mn[_F.Fop], 4, 0);
        
        #line 3081
        P_block_body_gentypindicator(_F._slink, _F.Fsp);
        
        #line 3082
        Prr << ' ' << _format(_F.Fp1, (3 + (5 * _ord((_abs(_F.Fp1) > 99)))), 0) << _format(_F.Fp2, 11, 0) << _WRITELN;
        
        { /* NOP */ }
    }
    
    #line 3084
    Ic = (Ic + 1);
    
    #line 3084
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3087
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
    #line 3090
    if((Gattr.Typtr != nullptr))
    {
        #line 3092
        switch(Gattr.Kind)
        {
        case C_cst:
            #line 3093
            if((((*Gattr.Typtr._ptr).Form == C_scalar) && (Gattr.Typtr != Realptr)))
            {
                #line 3094
                if((Gattr.Typtr == Boolptr))
                {
                    #line 3094
                    P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 3, Gattr.Cval.Ival);
                }
                else
                {
                    #line 3096
                    if((Gattr.Typtr == Charptr))
                    {
                        #line 3097
                        P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 6, Gattr.Cval.Ival);
                    }
                    else
                    {
                        #line 3098
                        P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 1, Gattr.Cval.Ival);
                    }
                }
            }
            else
            {
                #line 3100
                if((Gattr.Typtr == Nilptr))
                {
                    #line 3100
                    P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 4, 0);
                }
                else
                {
                    #line 3102
                    if((_F._slink->Cstptrix >= C_block_body_cstoccmax))
                    {
                        #line 3102
                        P_error(nullptr, 254);
                    }
                    else
                    {
                        #line 3104
                        _F._slink->Cstptrix = (_F._slink->Cstptrix + 1);
                        
                        #line 3105
                        _F._slink->Cstptr[_F._slink->Cstptrix] = Gattr.Cval.Valp;
                        
                        #line 3106
                        if((Gattr.Typtr == Realptr))
                        {
                            #line 3107
                            P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 2, _F._slink->Cstptrix);
                        }
                        else
                        {
                            #line 3109
                            P_block_body_gen2(_F._slink, T_block_body_oprange::C(51), 5, _F._slink->Cstptrix);
                        }
                    }
                }
            }
            break;
        
        case C_varbl:
            #line 3111
            switch(Gattr.Access)
            {
            case C_drct:
                #line 3112
                if((Gattr.Vlevel <= 1))
                {
                    #line 3112
                    P_block_body_gen1t(_F._slink, T_block_body_oprange::C(39), Gattr.Dplmt, Gattr.Typtr);
                }
                else
                {
                    #line 3113
                    P_block_body_gen2t(_F._slink, T_block_body_oprange::C(54), (Level - Gattr.Vlevel), Gattr.Dplmt, Gattr.Typtr);
                }
                break;
            
            case C_indrct:
                #line 3114
                P_block_body_gen1t(_F._slink, T_block_body_oprange::C(35), Gattr.Idplmt, Gattr.Typtr);
                break;
            
            case C_inxd:
                #line 3115
                P_error(nullptr, 400);
                break;
            }
            break;
        
        case C_expr:
            { /* NOP */ }
            break;
        }
        
        #line 3119
        Gattr.Kind = C_expr;
    }
}


#line 3123
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
    #line 3126
    if((_F.Fattr.Typtr != nullptr))
    {
        #line 3127
        switch(_F.Fattr.Access)
        {
        case C_drct:
            #line 3128
            if((_F.Fattr.Vlevel <= 1))
            {
                #line 3128
                P_block_body_gen1t(_F._slink, T_block_body_oprange::C(43), _F.Fattr.Dplmt, _F.Fattr.Typtr);
            }
            else
            {
                #line 3129
                P_block_body_gen2t(_F._slink, T_block_body_oprange::C(56), (Level - _F.Fattr.Vlevel), _F.Fattr.Dplmt, _F.Fattr.Typtr);
            }
            break;
        
        case C_indrct:
            #line 3130
            if((_F.Fattr.Idplmt != 0))
            {
                #line 3130
                P_error(nullptr, 400);
            }
            else
            {
                #line 3131
                P_block_body_gen0t(_F._slink, T_block_body_oprange::C(26), _F.Fattr.Typtr);
            }
            break;
        
        case C_inxd:
            #line 3132
            P_error(nullptr, 400);
            break;
        }
    }
}


#line 3136
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
    #line 3139
    if((Gattr.Typtr != nullptr))
    {
        #line 3141
        switch(Gattr.Kind)
        {
        case C_cst:
            #line 3142
            if(F_block_string(_F._slink->_slink, Gattr.Typtr))
            {
                #line 3143
                if((_F._slink->Cstptrix >= C_block_body_cstoccmax))
                {
                    #line 3143
                    P_error(nullptr, 254);
                }
                else
                {
                    #line 3145
                    _F._slink->Cstptrix = (_F._slink->Cstptrix + 1);
                    
                    #line 3146
                    _F._slink->Cstptr[_F._slink->Cstptrix] = Gattr.Cval.Valp;
                    
                    #line 3147
                    P_block_body_gen1(_F._slink, T_block_body_oprange::C(38), _F._slink->Cstptrix);
                }
            }
            else
            {
                #line 3149
                P_error(nullptr, 400);
            }
            break;
        
        case C_varbl:
            #line 3150
            switch(Gattr.Access)
            {
            case C_drct:
                #line 3151
                if((Gattr.Vlevel <= 1))
                {
                    #line 3151
                    P_block_body_gen1(_F._slink, T_block_body_oprange::C(37), Gattr.Dplmt);
                }
                else
                {
                    #line 3152
                    P_block_body_gen2(_F._slink, T_block_body_oprange::C(50), (Level - Gattr.Vlevel), Gattr.Dplmt);
                }
                break;
            
            case C_indrct:
                #line 3153
                if((Gattr.Idplmt != 0))
                {
                    #line 3154
                    P_block_body_gen1t(_F._slink, T_block_body_oprange::C(34), Gattr.Idplmt, Nilptr);
                }
                break;
            
            case C_inxd:
                #line 3155
                P_error(nullptr, 400);
                break;
            }
            break;
        
        case C_expr:
            #line 3157
            P_error(nullptr, 400);
            break;
        }
        
        #line 3159
        Gattr.Kind = C_varbl;
        
        #line 3159
        Gattr.Access = C_indrct;
        
        #line 3159
        Gattr.Idplmt = 0;
    }
}


#line 3164
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
    #line 3165
    P_block_body_load(_F._slink);
    
    #line 3166
    if((Gattr.Typtr != nullptr))
    {
        #line 3167
        if((Gattr.Typtr != Boolptr))
        {
            #line 3167
            P_error(nullptr, 144);
        }
    }
    
    #line 3168
    if(Prcode)
    {
        #line 3168
        P_block_body_putic(_F._slink);
        
        #line 3168
        Prr << _format(Mn[33], 4, 0) << _format(" l", 8, 0) << _format(_F.Faddr, 4, 0) << _WRITELN;
    }
    
    #line 3169
    Ic = (Ic + 1);
    
    #line 3169
    P_block_body_mes(_F._slink, 33);
}


#line 3172
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
    #line 3174
    if(Prcode)
    {
        #line 3175
        P_block_body_putic(_F._slink);
        
        #line 3175
        Prr << _format(Mn[_F.Fop], 4, 0) << _format(" l", 8, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
    }
    
    #line 3176
    Ic = (Ic + 1);
    
    #line 3176
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3179
//================================================================================
// scope: block_body_genipj (level : 4)

// activation record
struct Frame_block_body_genipj
{
   Frame_block_body* _slink;

    // parameters
    T_block_body_oprange Fop;
    T_integer Fp1;
    T_integer Fp2;
};

// function body
void P_block_body_genipj(void* _slink, T_block_body_oprange Fop, T_integer Fp1, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_genipj _F = { (Frame_block_body*)_slink, Fop, Fp1, Fp2 };
    
    // subroutine body
    #line 3181
    if(Prcode)
    {
        #line 3182
        P_block_body_putic(_F._slink);
        
        #line 3182
        Prr << _format(Mn[_F.Fop], 4, 0) << _format(_F.Fp1, 4, 0) << _format(" l", 8, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
    }
    
    #line 3183
    Ic = (Ic + 1);
    
    #line 3183
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3186
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
    #line 3188
    if(Prcode)
    {
        #line 3189
        P_block_body_putic(_F._slink);
        
        #line 3190
        if((_F.Fop == 32))
        {
            #line 3191
            if((_F.Fp1 == 1))
            {
                #line 3191
                Prr << _format(Mn[_F.Fop], 4, 0) << 's' << _format('l', 8, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
            }
            else
            {
                #line 3192
                Prr << _format(Mn[_F.Fop], 4, 0) << 'e' << _format('l', 8, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
            }
        }
        else
        {
            #line 3193
            Prr << _format(Mn[_F.Fop], 4, 0) << _format(_F.Fp1, 4, 0) << _format('l', 4, 0) << _format(_F.Fp2, 4, 0) << _WRITELN;
        }
    }
    
    #line 3195
    Ic = (Ic + 1);
    
    #line 3195
    P_block_body_mes(_F._slink, _F.Fop);
}


#line 3198
//================================================================================
// scope: block_body_genlpa (level : 4)

// activation record
struct Frame_block_body_genlpa
{
   Frame_block_body* _slink;

    // parameters
    T_integer Fp1;
    T_integer Fp2;
};

// function body
void P_block_body_genlpa(void* _slink, T_integer Fp1, T_integer Fp2)
{
    // prologue/frame definition
    Frame_block_body_genlpa _F = { (Frame_block_body*)_slink, Fp1, Fp2 };
    
    // subroutine body
    #line 3200
    if(Prcode)
    {
        #line 3201
        P_block_body_putic(_F._slink);
        
        #line 3202
        Prr << _format(Mn[68], 4, 0) << _format(_F.Fp2, 4, 0) << _format('l', 4, 0) << _format(_F.Fp1, 4, 0) << _WRITELN;
    }
    
    #line 3204
    Ic = (Ic + 1);
    
    #line 3204
    P_block_body_mes(_F._slink, 68);
}


#line 3207
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
    #line 3210
    if((_F.Fsp != nullptr))
    {
        #line 3211
        if((_F.Fsp != Intptr))
        {
            #line 3212
            if((_F.Fsp != Realptr))
            {
                #line 3213
                if(((*_F.Fsp._ptr).Form <= C_subrange))
                {
                    #line 3215
                    P_getbounds(nullptr, _F.Fsp, _F.Lmin, _F.Lmax);
                    
                    #line 3216
                    P_block_body_gen2t(_F._slink, T_block_body_oprange::C(45), _F.Lmin, _F.Lmax, _F.Fsp);
                }
            }
        }
    }
}


#line 3220
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
    #line 3221
    if(Prcode)
    {
        #line 3221
        Prr << 'l' << _format(_F.Labname, 4, 0) << _WRITELN;
    }
}


#line 3224
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
    #line 4833
    if((Sy == C_intconst))
    {
        #line 4835
        P_searchlabel(nullptr, _F.Llp, T_disprange::C(Level));
        
        #line 4836
        if((_F.Llp != nullptr))
        {
            #line 4837
            if((*_F.Llp._ptr).Defined)
            {
                #line 4837
                P_error(nullptr, 165);
            }
            
            #line 4838
            (*_F.Llp._ptr).Bact = C_true;
            
            #line 4839
            (*_F.Llp._ptr).Slevel = _F._slink->_slink->Stalvl;
            
            #line 4840
            (*_F.Llp._ptr).Defined = C_true;
            
            #line 4841
            if(((*_F.Llp._ptr).Ipcref && (_F._slink->_slink->Stalvl > 1)))
            {
                #line 4842
                P_error(nullptr, 184);
            }
            else
            {
                #line 4843
                if(((*_F.Llp._ptr).Minlvl < _F._slink->_slink->Stalvl))
                {
                    #line 4844
                    P_error(nullptr, 186);
                }
            }
            
            #line 4845
            P_block_body_putlabel(_F._slink, (*_F.Llp._ptr).Labname);
            
            { /* NOP */ }
        }
        else
        {
            #line 4847
            P_error(nullptr, 167);
            
            #line 4848
            P_newlabel(nullptr, _F.Llp);
        }
        
        #line 4850
        P_insymbol(nullptr);
        
        #line 4851
        if((Sy == C_colon))
        {
            #line 4851
            P_insymbol(nullptr);
        }
        else
        {
            #line 4851
            P_error(nullptr, 5);
        }
    }
    
    #line 4853
    if((!((_F.Fsys + _setLiteral1) & Sy)))
    {
        #line 4854
        P_error(nullptr, 6);
        
        #line 4854
        P_block_skip(_F._slink->_slink, _F.Fsys);
    }
    
    #line 4855
    if(((Statbegsys + _setLiteral2) & Sy))
    {
        #line 4857
        switch(Sy)
        {
        case C_ident:
            #line 4858
            P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp);
            
            #line 4858
            P_insymbol(nullptr);
            
            #line 4859
            if(((*_F.Lcp._ptr).Klass == C_proc))
            {
                #line 4859
                P_block_body_statement_call(&_F, _F.Fsys, _F.Lcp);
            }
            else
            {
                #line 4860
                P_block_body_statement_assignment(&_F, _F.Lcp);
            }
            break;
        
        case C_beginsy:
            #line 4862
            P_insymbol(nullptr);
            
            #line 4862
            P_block_body_statement_compoundstatement(&_F);
            break;
        
        case C_gotosy:
            #line 4863
            P_insymbol(nullptr);
            
            #line 4863
            P_block_body_statement_gotostatement(&_F);
            break;
        
        case C_ifsy:
            #line 4864
            P_insymbol(nullptr);
            
            #line 4864
            P_block_body_statement_ifstatement(&_F);
            break;
        
        case C_casesy:
            #line 4865
            P_insymbol(nullptr);
            
            #line 4865
            P_block_body_statement_casestatement(&_F);
            break;
        
        case C_whilesy:
            #line 4866
            P_insymbol(nullptr);
            
            #line 4866
            P_block_body_statement_whilestatement(&_F);
            break;
        
        case C_repeatsy:
            #line 4867
            P_insymbol(nullptr);
            
            #line 4867
            P_block_body_statement_repeatstatement(&_F);
            break;
        
        case C_forsy:
            #line 4868
            P_insymbol(nullptr);
            
            #line 4868
            P_block_body_statement_forstatement(&_F);
            break;
        
        case C_withsy:
            #line 4869
            P_insymbol(nullptr);
            
            #line 4869
            P_block_body_statement_withstatement(&_F);
            break;
        }
        
        #line 4871
        if((!(_setLiteral4 & Sy)))
        {
            #line 4872
            P_error(nullptr, 6);
            
            #line 4872
            P_block_skip(_F._slink->_slink, _F.Fsys);
        }
    }
}


#line 3229
//================================================================================
// scope: block_body_statement_selector (level : 5)

// forward declarations
T_boolean F_block_body_statement_selector_schblk(void* _slink, T_ctp Fcp);

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
    #line 3240
    Gattr.Typtr = (*_F.Fcp._ptr).Idtype;
    
    #line 3240
    Gattr.Kind = C_varbl;
    
    #line 3241
    switch((*_F.Fcp._ptr).Klass)
    {
    case C_vars:
        #line 3243
        if(((*_F.Fcp._ptr).Vkind == C_actual))
        {
            #line 3244
            Gattr.Access = C_drct;
            
            #line 3244
            Gattr.Vlevel = (*_F.Fcp._ptr).Vlev;
            
            #line 3245
            Gattr.Dplmt = (*_F.Fcp._ptr).Vaddr;
        }
        else
        {
            #line 3248
            P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), (Level - (*_F.Fcp._ptr).Vlev), (*_F.Fcp._ptr).Vaddr, Nilptr);
            
            #line 3249
            Gattr.Access = C_indrct;
            
            #line 3249
            Gattr.Idplmt = 0;
        }
        break;
    
    case C_field:
        #line 3253
        if((Display[Disx].Occur == C_crec))
        {
            #line 3254
            Gattr.Access = C_drct;
            
            #line 3254
            Gattr.Vlevel = Display[Disx].Clev;
            
            #line 3255
            Gattr.Dplmt = (Display[Disx].Cdspl + (*_F.Fcp._ptr).Fldaddr);
        }
        else
        {
            #line 3259
            if((Level == 1))
            {
                #line 3259
                P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(39), Display[Disx].Vdspl, Nilptr);
            }
            else
            {
                #line 3260
                P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), 0, Display[Disx].Vdspl, Nilptr);
            }
            
            #line 3261
            Gattr.Access = C_indrct;
            
            #line 3261
            Gattr.Idplmt = (*_F.Fcp._ptr).Fldaddr;
        }
        break;
    
    case C_func:
        #line 3264
        if(((*_F.Fcp._ptr).Pfdeckind == C_standard))
        {
            #line 3265
            P_error(nullptr, 150);
            
            #line 3265
            Gattr.Typtr = nullptr;
        }
        else
        {
            #line 3268
            if(((*_F.Fcp._ptr).Pfkind == C_formal))
            {
                #line 3268
                P_error(nullptr, 151);
            }
            else
            {
                #line 3270
                if((!F_block_body_statement_selector_schblk(&_F, _F.Fcp)))
                {
                    #line 3270
                    P_error(nullptr, 192);
                }
            }
            
            #line 3271
            Gattr.Access = C_drct;
            
            #line 3271
            Gattr.Vlevel = ((*_F.Fcp._ptr).Pflev + 1);
            
            #line 3272
            Gattr.Dplmt = 0;
        }
        break;
    }
    
    #line 3277
    if((!((Selectsys + _F.Fsys) & Sy)))
    {
        #line 3278
        P_error(nullptr, 59);
        
        #line 3278
        P_block_skip(_F._slink->_slink->_slink, (Selectsys + _F.Fsys));
    }
    
    #line 3279
    while((Selectsys & Sy))
    {
        #line 3281
        if((Sy == C_lbrack))
        {
            #line 3283
            do
            {
                #line 3283
                _F.Lattr = Gattr;
                
                #line 3285
                if((_F.Lattr.Typtr != nullptr))
                {
                    #line 3286
                    if(((*_F.Lattr.Typtr._ptr).Form != C_arrays))
                    {
                        #line 3287
                        P_error(nullptr, 138);
                        
                        #line 3287
                        _F.Lattr.Typtr = nullptr;
                    }
                }
                
                #line 3288
                P_block_body_loadaddress(_F._slink->_slink);
                
                #line 3289
                P_insymbol(nullptr);
                
                #line 3289
                P_block_body_statement_expression(_F._slink, T_setofsys::C((_F.Fsys + _setLiteral1)));
                
                #line 3290
                P_block_body_load(_F._slink->_slink);
                
                #line 3291
                if((Gattr.Typtr != nullptr))
                {
                    #line 3292
                    if(((*Gattr.Typtr._ptr).Form != C_scalar))
                    {
                        #line 3292
                        P_error(nullptr, 113);
                    }
                    else
                    {
                        #line 3293
                        if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
                        {
                            #line 3294
                            P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                        }
                    }
                }
                
                #line 3295
                if((_F.Lattr.Typtr != nullptr))
                {
                    #line 3298
                    if(F_block_comptypes(_F._slink->_slink->_slink, (*_F.Lattr.Typtr._ptr).Inxtype, Gattr.Typtr))
                    {
                        #line 3300
                        if(((*_F.Lattr.Typtr._ptr).Inxtype != nullptr))
                        {
                            #line 3301
                            P_getbounds(nullptr, (*_F.Lattr.Typtr._ptr).Inxtype, _F.Lmin, _F.Lmax);
                            
                            #line 3302
                            if(Debug)
                            {
                                #line 3303
                                P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), _F.Lmin, _F.Lmax, Intptr);
                            }
                            
                            #line 3304
                            if((_F.Lmin > 0))
                            {
                                #line 3304
                                P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(31), _F.Lmin, Intptr);
                            }
                            else
                            {
                                #line 3305
                                if((_F.Lmin < 0))
                                {
                                    #line 3306
                                    P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(34), (-_F.Lmin), Intptr);
                                }
                            }
                            
                            { /* NOP */ }
                        }
                    }
                    else
                    {
                        #line 3310
                        P_error(nullptr, 139);
                    }
                    
                    #line 3312
                    Gattr.Typtr = (*_F.Lattr.Typtr._ptr).Aeltype;
                    
                    #line 3312
                    Gattr.Kind = C_varbl;
                    
                    #line 3313
                    Gattr.Access = C_indrct;
                    
                    #line 3313
                    Gattr.Idplmt = 0;
                    
                    #line 3315
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 3317
                        _F.Lsize = (*Gattr.Typtr._ptr).Size;
                        
                        #line 3318
                        P_align(nullptr, Gattr.Typtr, _F.Lsize);
                        
                        #line 3319
                        P_block_body_gen1(_F._slink->_slink, T_block_body_oprange::C(36), _F.Lsize);
                    }
                }
            }
            while(!(Sy != C_comma));
            
            #line 3323
            if((Sy == C_rbrack))
            {
                #line 3323
                P_insymbol(nullptr);
            }
            else
            {
                #line 3323
                P_error(nullptr, 12);
            }
        }
        else
        {
            #line 3326
            if((Sy == C_period))
            {
                #line 3330
                if((Gattr.Typtr != nullptr))
                {
                    #line 3331
                    if(((*Gattr.Typtr._ptr).Form != C_records))
                    {
                        #line 3332
                        P_error(nullptr, 140);
                        
                        #line 3332
                        Gattr.Typtr = nullptr;
                    }
                }
                
                #line 3333
                P_insymbol(nullptr);
                
                #line 3334
                if((Sy == C_ident))
                {
                    #line 3336
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 3337
                        P_searchsection(nullptr, (*Gattr.Typtr._ptr).Fstfld, _F.Lcp);
                        
                        #line 3338
                        if((_F.Lcp == nullptr))
                        {
                            #line 3339
                            P_error(nullptr, 152);
                            
                            #line 3339
                            Gattr.Typtr = nullptr;
                        }
                        else
                        {
                            #line 3342
                            Gattr.Typtr = (*_F.Lcp._ptr).Idtype;
                            
                            #line 3343
                            switch(Gattr.Access)
                            {
                            case C_drct:
                                #line 3344
                                Gattr.Dplmt = (Gattr.Dplmt + (*_F.Lcp._ptr).Fldaddr);
                                break;
                            
                            case C_indrct:
                                #line 3345
                                Gattr.Idplmt = (Gattr.Idplmt + (*_F.Lcp._ptr).Fldaddr);
                                break;
                            
                            case C_inxd:
                                #line 3346
                                P_error(nullptr, 400);
                                break;
                            }
                        }
                    }
                    
                    #line 3350
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 3352
                    P_error(nullptr, 2);
                }
            }
            else
            {
                #line 3357
                if((Gattr.Typtr != nullptr))
                {
                    #line 3359
                    if(((*Gattr.Typtr._ptr).Form == C_pointer))
                    {
                        #line 3360
                        P_block_body_load(_F._slink->_slink);
                        
                        #line 3360
                        Gattr.Typtr = (*Gattr.Typtr._ptr).Eltype;
                        
                        #line 3361
                        if(Debug)
                        {
                            #line 3361
                            P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), 1, C_maxaddr, Nilptr);
                        }
                        
                        #line 3363
                        Gattr.Kind = C_varbl;
                        
                        #line 3363
                        Gattr.Access = C_indrct;
                        
                        #line 3364
                        Gattr.Idplmt = 0;
                    }
                    else
                    {
                        #line 3368
                        if(((*Gattr.Typtr._ptr).Form == C_files))
                        {
                            #line 3368
                            P_block_body_loadaddress(_F._slink->_slink);
                            
                            #line 3370
                            if((Gattr.Typtr == Textptr))
                            {
                                #line 3370
                                P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(65));
                            }
                            else
                            {
                                #line 3372
                                P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(51), 1, (*(*Gattr.Typtr._ptr).Filtype._ptr).Size);
                                
                                #line 3373
                                P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(70));
                            }
                            
                            #line 3376
                            P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(34), C_fileidsize, Gattr.Typtr);
                            
                            #line 3377
                            Gattr.Typtr = (*Gattr.Typtr._ptr).Filtype;
                            
                            { /* NOP */ }
                        }
                        else
                        {
                            #line 3378
                            P_error(nullptr, 141);
                        }
                    }
                }
                
                #line 3379
                P_insymbol(nullptr);
            }
        }
        
        #line 3381
        if((!((_F.Fsys + Selectsys) & Sy)))
        {
            #line 3382
            P_error(nullptr, 6);
            
            #line 3382
            P_block_skip(_F._slink->_slink->_slink, (_F.Fsys + Selectsys));
        }
    }
}


#line 3231
//================================================================================
// scope: block_body_statement_selector_schblk (level : 6)

// activation record
struct Frame_block_body_statement_selector_schblk
{
   Frame_block_body_statement_selector* _slink;

    // parameters
    T_ctp Fcp;

    // locals
    T_boolean _fnvalue;
    T_boolean f;
    T_disprange i;
};

// function body
T_boolean F_block_body_statement_selector_schblk(void* _slink, T_ctp Fcp)
{
    // prologue/frame definition
    Frame_block_body_statement_selector_schblk _F = { (Frame_block_body_statement_selector*)_slink, Fcp };
    
    // subroutine body
    #line 3234
    _F.f = C_false;
    
    #line 3235
    _FOR_DOWNTO(_F.i, Level, 2)
    {
        #line 3235
        if((Display[_F.i].Bname == _F.Fcp))
        {
            #line 3235
            _F.f = C_true;
        }
    }
    _FOR_END(_F.i)
    
    #line 3236
    _F._fnvalue = _F.f;
    
    // epilogue
    return _F._fnvalue;
}


#line 3386
//================================================================================
// scope: block_body_statement_call (level : 5)

// types
typedef _T_Range<1, 18, signed __int8> T_block_body_statement_call_range_39;

// forward declarations
void P_block_body_statement_call_variable(void* _slink, T_setofsys Fsys);
void P_block_body_statement_call_getputresetrewriteprocedure(void* _slink);
void P_block_body_statement_call_pageprocedure(void* _slink);
void P_block_body_statement_call_readprocedure(void* _slink);
void P_block_body_statement_call_writeprocedure(void* _slink);
void P_block_body_statement_call_packprocedure(void* _slink);
void P_block_body_statement_call_unpackprocedure(void* _slink);
void P_block_body_statement_call_newdisposeprocedure(void* _slink);
void P_block_body_statement_call_absfunction(void* _slink);
void P_block_body_statement_call_sqrfunction(void* _slink);
void P_block_body_statement_call_truncfunction(void* _slink);
void P_block_body_statement_call_roundfunction(void* _slink);
void P_block_body_statement_call_oddfunction(void* _slink);
void P_block_body_statement_call_ordfunction(void* _slink);
void P_block_body_statement_call_chrfunction(void* _slink);
void P_block_body_statement_call_predsuccfunction(void* _slink);
void P_block_body_statement_call_eofeolnfunction(void* _slink);
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
    _setLiteral1.set(17);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(5);
    _setLiteral2.set(6);
    _setLiteral2.set(11);
    _setLiteral2.set(12);
    _setLiteral2.set(17);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_rparent);
    
    // subroutine body
    #line 3972
    if(((*_F.Fcp._ptr).Pfdeckind == C_standard))
    {
        #line 3973
        _F.Lkey = (*_F.Fcp._ptr).Key;
        
        #line 3974
        if(((*_F.Fcp._ptr).Klass == C_proc))
        {
            #line 3976
            if((!(_setLiteral1 & _F.Lkey)))
            {
                #line 3977
                if((Sy == C_lparent))
                {
                    #line 3977
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 3977
                    P_error(nullptr, 9);
                }
            }
            
            #line 3978
            switch(_F.Lkey)
            {
            case 1:
            case 2:
            case 3:
            case 4:
                #line 3980
                P_block_body_statement_call_getputresetrewriteprocedure(&_F);
                break;
            
            case 17:
                #line 3981
                P_block_body_statement_call_pageprocedure(&_F);
                break;
            
            case 5:
            case 11:
                #line 3982
                P_block_body_statement_call_readprocedure(&_F);
                break;
            
            case 6:
            case 12:
                #line 3983
                P_block_body_statement_call_writeprocedure(&_F);
                break;
            
            case 7:
                #line 3984
                P_block_body_statement_call_packprocedure(&_F);
                break;
            
            case 8:
                #line 3985
                P_block_body_statement_call_unpackprocedure(&_F);
                break;
            
            case 9:
            case 18:
                #line 3986
                P_block_body_statement_call_newdisposeprocedure(&_F);
                break;
            
            case 10:
            case 13:
                #line 3987
                P_error(nullptr, 399);
                break;
            }
            
            #line 3989
            if((!(_setLiteral2 & _F.Lkey)))
            {
                #line 3990
                if((Sy == C_rparent))
                {
                    #line 3990
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 3990
                    P_error(nullptr, 4);
                }
            }
        }
        else
        {
            #line 3994
            if(((_F.Lkey <= 8) || (_F.Lkey == 16)))
            {
                #line 3996
                if((Sy == C_lparent))
                {
                    #line 3996
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 3996
                    P_error(nullptr, 9);
                }
                
                #line 3997
                P_block_body_statement_expression(_F._slink, T_setofsys::C((_F.Fsys + _setLiteral3)));
                
                #line 3997
                P_block_body_load(_F._slink->_slink);
            }
            
            #line 3999
            switch(_F.Lkey)
            {
            case 1:
                #line 4000
                P_block_body_statement_call_absfunction(&_F);
                break;
            
            case 2:
                #line 4001
                P_block_body_statement_call_sqrfunction(&_F);
                break;
            
            case 3:
                #line 4002
                P_block_body_statement_call_truncfunction(&_F);
                break;
            
            case 16:
                #line 4003
                P_block_body_statement_call_roundfunction(&_F);
                break;
            
            case 4:
                #line 4004
                P_block_body_statement_call_oddfunction(&_F);
                break;
            
            case 5:
                #line 4005
                P_block_body_statement_call_ordfunction(&_F);
                break;
            
            case 6:
                #line 4006
                P_block_body_statement_call_chrfunction(&_F);
                break;
            
            case 7:
            case 8:
                #line 4007
                P_block_body_statement_call_predsuccfunction(&_F);
                break;
            
            case 9:
            case 10:
                #line 4008
                P_block_body_statement_call_eofeolnfunction(&_F);
                break;
            }
            
            #line 4010
            if(((_F.Lkey <= 8) || (_F.Lkey == 16)))
            {
                #line 4011
                if((Sy == C_rparent))
                {
                    #line 4011
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 4011
                    P_error(nullptr, 4);
                }
            }
        }
        
        { /* NOP */ }
    }
    else
    {
        #line 4014
        P_block_body_statement_call_callnonstandard(&_F);
    }
}


#line 3389
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
    #line 3392
    if((Sy == C_ident))
    {
        #line 3393
        P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
        
        #line 3393
        P_insymbol(nullptr);
    }
    else
    {
        #line 3394
        P_error(nullptr, 2);
        
        #line 3394
        _F.Lcp = Uvarptr;
    }
    
    #line 3395
    P_block_body_statement_selector(_F._slink->_slink, _F.Fsys, _F.Lcp);
}


#line 3398
//================================================================================
// scope: block_body_statement_call_getputresetrewriteprocedure (level : 6)

// activation record
struct Frame_block_body_statement_call_getputresetrewriteprocedure
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_getputresetrewriteprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_getputresetrewriteprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 3399
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3399
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3400
    if((Gattr.Typtr != nullptr))
    {
        #line 3401
        if(((*Gattr.Typtr._ptr).Form != C_files))
        {
            #line 3401
            P_error(nullptr, 116);
        }
    }
    
    #line 3402
    if((_F._slink->Lkey <= 2))
    {
        #line 3403
        if((Gattr.Typtr == Textptr))
        {
            #line 3403
            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), _F._slink->Lkey);
        }
        else
        {
            #line 3405
            if((Gattr.Typtr != nullptr))
            {
                #line 3406
                P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, (*(*Gattr.Typtr._ptr).Filtype._ptr).Size);
            }
            
            #line 3407
            if((_F._slink->Lkey == 1))
            {
                #line 3407
                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 38);
            }
            else
            {
                #line 3408
                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 39);
            }
        }
    }
    else
    {
        #line 3411
        if((Gattr.Typtr == Textptr))
        {
            #line 3412
            if((_F._slink->Lkey == 3))
            {
                #line 3412
                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 25);
            }
            else
            {
                #line 3413
                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 26);
            }
        }
        else
        {
            #line 3415
            if((_F._slink->Lkey == 3))
            {
                #line 3415
                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 36);
            }
            else
            {
                #line 3416
                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 37);
            }
        }
    }
}


#line 3420
//================================================================================
// scope: block_body_statement_call_pageprocedure (level : 6)

// activation record
struct Frame_block_body_statement_call_pageprocedure
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_levrange Llev;
};

// function body
void P_block_body_statement_call_pageprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_pageprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 3423
    _F.Llev = 1;
    
    #line 3424
    if((Sy == C_lparent))
    {
        #line 3425
        P_insymbol(nullptr);
        
        #line 3426
        P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 3426
        P_block_body_loadaddress(_F._slink->_slink->_slink);
        
        #line 3427
        if((Gattr.Typtr != nullptr))
        {
            #line 3428
            if((Gattr.Typtr != Textptr))
            {
                #line 3428
                P_error(nullptr, 116);
            }
        }
        
        #line 3429
        if((Sy == C_rparent))
        {
            #line 3429
            P_insymbol(nullptr);
        }
        else
        {
            #line 3429
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 3431
        if((!Outputhdf))
        {
            #line 3431
            P_error(nullptr, 176);
        }
        
        #line 3432
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - (*Outputptr._ptr).Vlev), (*Outputptr._ptr).Vaddr);
        
        { /* NOP */ }
    }
    
    #line 3434
    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 24);
}


#line 3437
//================================================================================
// scope: block_body_statement_call_readprocedure (level : 6)

// activation record
struct Frame_block_body_statement_call_readprocedure
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_boolean Deffil;
    T_stp Lsp;
    T_boolean Test;
    T_boolean Txt;
};

// function body
void P_block_body_statement_call_readprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_readprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
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
    #line 3443
    _F.Txt = C_true;
    
    #line 3443
    _F.Deffil = C_true;
    
    #line 3444
    if((Sy == C_lparent))
    {
        #line 3445
        P_insymbol(nullptr);
        
        #line 3446
        P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 3447
        _F.Lsp = Gattr.Typtr;
        
        #line 3447
        _F.Test = C_false;
        
        #line 3448
        if((_F.Lsp != nullptr))
        {
            #line 3449
            if(((*_F.Lsp._ptr).Form == C_files))
            {
                #line 3452
                _F.Txt = (_F.Lsp == Textptr);
                
                #line 3453
                if(((!_F.Txt) && (_F._slink->Lkey == 11)))
                {
                    #line 3453
                    P_error(nullptr, 116);
                }
                
                #line 3454
                P_block_body_loadaddress(_F._slink->_slink->_slink);
                
                #line 3454
                _F.Deffil = C_false;
                
                #line 3455
                if((Sy == C_rparent))
                {
                    #line 3456
                    if((_F._slink->Lkey == 5))
                    {
                        #line 3456
                        P_error(nullptr, 116);
                    }
                    
                    #line 3457
                    _F.Test = C_true;
                }
                else
                {
                    #line 3460
                    if((Sy != C_comma))
                    {
                        #line 3461
                        P_error(nullptr, 116);
                        
                        #line 3461
                        P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
                    }
                }
                
                #line 3462
                if((Sy == C_comma))
                {
                    #line 3463
                    P_insymbol(nullptr);
                    
                    #line 3463
                    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
                }
                else
                {
                    #line 3465
                    _F.Test = C_true;
                }
            }
            else
            {
                #line 3467
                if((!Inputhdf))
                {
                    #line 3467
                    P_error(nullptr, 175);
                }
            }
        }
        
        #line 3468
        if((!_F.Test))
        {
            #line 3469
            do
            {
                #line 3469
                P_block_body_loadaddress(_F._slink->_slink->_slink);
                
                #line 3470
                if(_F.Deffil)
                {
                    #line 3473
                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - (*Inputptr._ptr).Vlev), (*Inputptr._ptr).Vaddr);
                    
                    #line 3474
                    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(72), C_ptrsize);
                    
                    #line 3475
                    _F.Deffil = C_false;
                }
                
                #line 3477
                if(_F.Txt)
                {
                    #line 3478
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 3479
                        if(((*Gattr.Typtr._ptr).Form <= C_subrange))
                        {
                            #line 3480
                            if(F_block_comptypes(_F._slink->_slink->_slink->_slink, Intptr, Gattr.Typtr))
                            {
                                #line 3481
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 3);
                            }
                            else
                            {
                                #line 3483
                                if(F_block_comptypes(_F._slink->_slink->_slink->_slink, Realptr, Gattr.Typtr))
                                {
                                    #line 3484
                                    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 4);
                                }
                                else
                                {
                                    #line 3486
                                    if(F_block_comptypes(_F._slink->_slink->_slink->_slink, Charptr, Gattr.Typtr))
                                    {
                                        #line 3487
                                        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 5);
                                    }
                                    else
                                    {
                                        #line 3488
                                        P_error(nullptr, 399);
                                    }
                                }
                            }
                        }
                        else
                        {
                            #line 3489
                            P_error(nullptr, 116);
                        }
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 3491
                    if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, Gattr.Typtr, (*_F.Lsp._ptr).Filtype)))
                    {
                        #line 3491
                        P_error(nullptr, 129);
                    }
                    
                    #line 3492
                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, (*(*_F.Lsp._ptr).Filtype._ptr).Size);
                    
                    #line 3493
                    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 35);
                }
                
                #line 3495
                _F.Test = (Sy != C_comma);
                
                #line 3496
                if((!_F.Test))
                {
                    #line 3497
                    P_insymbol(nullptr);
                    
                    #line 3497
                    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
                }
            }
            while(!_F.Test);
        }
        
        #line 3500
        if((Sy == C_rparent))
        {
            #line 3500
            P_insymbol(nullptr);
        }
        else
        {
            #line 3500
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 3503
        if((!Inputhdf))
        {
            #line 3503
            P_error(nullptr, 175);
        }
        
        #line 3504
        if((_F._slink->Lkey == 5))
        {
            #line 3504
            P_error(nullptr, 116);
        }
        
        #line 3505
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - (*Inputptr._ptr).Vlev), (*Inputptr._ptr).Vaddr);
    }
    
    #line 3507
    if((_F._slink->Lkey == 11))
    {
        #line 3507
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 21);
    }
    
    #line 3509
    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(71), C_ptrsize);
    
    { /* NOP */ }
}


#line 3512
//================================================================================
// scope: block_body_statement_call_writeprocedure (level : 6)

// types
typedef _T_Range<1, 15, signed __int8> T_block_body_statement_call_writeprocedure_range_40;

// activation record
struct Frame_block_body_statement_call_writeprocedure
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_boolean Default;
    T_boolean Default1;
    T_boolean Deffil;
    T_addrrange Len;
    T_block_body_statement_call_writeprocedure_range_40 Llkey;
    T_stp Lsp;
    T_stp Lsp1;
    T_boolean Test;
    T_boolean Txt;
};

// function body
void P_block_body_statement_call_writeprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_writeprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
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
    #line 3518
    _F.Llkey = _F._slink->Lkey;
    
    #line 3518
    _F.Txt = C_true;
    
    #line 3518
    _F.Deffil = C_true;
    
    #line 3519
    if((Sy == C_lparent))
    {
        #line 3520
        P_insymbol(nullptr);
        
        #line 3521
        P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 3522
        _F.Lsp = Gattr.Typtr;
        
        #line 3522
        _F.Test = C_false;
        
        #line 3523
        if((_F.Lsp != nullptr))
        {
            #line 3524
            if(((*_F.Lsp._ptr).Form == C_files))
            {
                #line 3526
                _F.Lsp1 = _F.Lsp;
                
                #line 3527
                _F.Txt = (_F.Lsp == Textptr);
                
                #line 3528
                if(((!_F.Txt) && (_F._slink->Lkey == 12)))
                {
                    #line 3528
                    P_error(nullptr, 116);
                }
                
                #line 3529
                P_block_body_loadaddress(_F._slink->_slink->_slink);
                
                #line 3529
                _F.Deffil = C_false;
                
                #line 3530
                if((Sy == C_rparent))
                {
                    #line 3531
                    if((_F.Llkey == 6))
                    {
                        #line 3531
                        P_error(nullptr, 116);
                    }
                    
                    #line 3532
                    _F.Test = C_true;
                }
                else
                {
                    #line 3535
                    if((Sy != C_comma))
                    {
                        #line 3536
                        P_error(nullptr, 116);
                        
                        #line 3536
                        P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
                    }
                }
                
                #line 3537
                if((Sy == C_comma))
                {
                    #line 3538
                    P_insymbol(nullptr);
                    
                    #line 3538
                    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
                }
                else
                {
                    #line 3540
                    _F.Test = C_true;
                }
            }
            else
            {
                #line 3542
                if((!Outputhdf))
                {
                    #line 3542
                    P_error(nullptr, 176);
                }
            }
        }
        
        #line 3543
        if((!_F.Test))
        {
            #line 3544
            do
            {
                #line 3545
                _F.Lsp = Gattr.Typtr;
                
                #line 3546
                if((_F.Lsp != nullptr))
                {
                    #line 3547
                    if(((*_F.Lsp._ptr).Form <= C_subrange))
                    {
                        #line 3547
                        P_block_body_load(_F._slink->_slink->_slink);
                    }
                    else
                    {
                        #line 3547
                        P_block_body_loadaddress(_F._slink->_slink->_slink);
                    }
                }
                
                #line 3548
                if(_F.Deffil)
                {
                    #line 3551
                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - (*Outputptr._ptr).Vlev), (*Outputptr._ptr).Vaddr);
                    
                    #line 3552
                    if((_F.Lsp != nullptr))
                    {
                        #line 3553
                        if(((*_F.Lsp._ptr).Form <= C_subrange))
                        {
                            #line 3554
                            if(((*_F.Lsp._ptr).Size < C_stackelsize))
                            {
                                #line 3555
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(72), C_stackelsize);
                            }
                            else
                            {
                                #line 3557
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(72), (*_F.Lsp._ptr).Size);
                            }
                        }
                        else
                        {
                            #line 3559
                            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(72), C_ptrsize);
                        }
                    }
                    
                    #line 3560
                    _F.Deffil = C_false;
                }
                
                #line 3562
                if(_F.Txt)
                {
                    #line 3563
                    if((Sy == C_colon))
                    {
                        #line 3564
                        P_insymbol(nullptr);
                        
                        #line 3564
                        P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
                        
                        #line 3565
                        if((Gattr.Typtr != nullptr))
                        {
                            #line 3566
                            if((Gattr.Typtr != Intptr))
                            {
                                #line 3566
                                P_error(nullptr, 116);
                            }
                        }
                        
                        #line 3567
                        P_block_body_load(_F._slink->_slink->_slink);
                        
                        #line 3567
                        _F.Default = C_false;
                    }
                    else
                    {
                        #line 3569
                        _F.Default = C_true;
                    }
                    
                    #line 3570
                    if((Sy == C_colon))
                    {
                        #line 3571
                        P_insymbol(nullptr);
                        
                        #line 3571
                        P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral5)));
                        
                        #line 3572
                        if((Gattr.Typtr != nullptr))
                        {
                            #line 3573
                            if((Gattr.Typtr != Intptr))
                            {
                                #line 3573
                                P_error(nullptr, 116);
                            }
                        }
                        
                        #line 3574
                        if((_F.Lsp != Realptr))
                        {
                            #line 3574
                            P_error(nullptr, 124);
                        }
                        
                        #line 3575
                        P_block_body_load(_F._slink->_slink->_slink);
                        
                        #line 3575
                        _F.Default1 = C_false;
                    }
                    else
                    {
                        #line 3576
                        _F.Default1 = C_true;
                    }
                    
                    #line 3577
                    if((_F.Lsp == Intptr))
                    {
                        #line 3578
                        if(_F.Default)
                        {
                            #line 3578
                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, C_intdeff);
                        }
                        
                        #line 3579
                        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 6);
                    }
                    else
                    {
                        #line 3582
                        if((_F.Lsp == Realptr))
                        {
                            #line 3584
                            if(_F.Default1)
                            {
                                #line 3585
                                if(_F.Default)
                                {
                                    #line 3585
                                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, C_reldeff);
                                }
                                
                                #line 3586
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 8);
                            }
                            else
                            {
                                #line 3588
                                if(_F.Default)
                                {
                                    #line 3588
                                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, C_reldeff);
                                }
                                
                                #line 3589
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 28);
                            }
                        }
                        else
                        {
                            #line 3593
                            if((_F.Lsp == Charptr))
                            {
                                #line 3594
                                if(_F.Default)
                                {
                                    #line 3594
                                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, C_chrdeff);
                                }
                                
                                #line 3595
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 9);
                            }
                            else
                            {
                                #line 3598
                                if((_F.Lsp == Boolptr))
                                {
                                    #line 3599
                                    if(_F.Default)
                                    {
                                        #line 3599
                                        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, C_boldeff);
                                    }
                                    
                                    #line 3600
                                    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 27);
                                }
                                else
                                {
                                    #line 3603
                                    if((_F.Lsp != nullptr))
                                    {
                                        #line 3605
                                        if(((*_F.Lsp._ptr).Form == C_scalar))
                                        {
                                            #line 3605
                                            P_error(nullptr, 399);
                                        }
                                        else
                                        {
                                            #line 3607
                                            if(F_block_string(_F._slink->_slink->_slink->_slink, _F.Lsp))
                                            {
                                                #line 3608
                                                _F.Len = ((*_F.Lsp._ptr).Size / C_charmax);
                                                
                                                #line 3609
                                                if(_F.Default)
                                                {
                                                    #line 3610
                                                    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Len);
                                                }
                                                
                                                #line 3611
                                                P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Len);
                                                
                                                #line 3612
                                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 10);
                                            }
                                            else
                                            {
                                                #line 3614
                                                P_error(nullptr, 116);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    #line 3617
                    if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*_F.Lsp1._ptr).Filtype, _F.Lsp)))
                    {
                        #line 3617
                        P_error(nullptr, 129);
                    }
                    
                    #line 3618
                    if((_F.Lsp == Intptr))
                    {
                        #line 3618
                        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 31);
                    }
                    else
                    {
                        #line 3620
                        if((_F.Lsp == Realptr))
                        {
                            #line 3620
                            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 32);
                        }
                        else
                        {
                            #line 3622
                            if((_F.Lsp == Charptr))
                            {
                                #line 3622
                                P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 33);
                            }
                            else
                            {
                                #line 3624
                                if((_F.Lsp == Boolptr))
                                {
                                    #line 3624
                                    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 34);
                                }
                                else
                                {
                                    #line 3626
                                    if(((*_F.Lsp._ptr).Form <= C_subrange))
                                    {
                                        #line 3626
                                        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 31);
                                    }
                                    else
                                    {
                                        #line 3628
                                        if((_F.Lsp != nullptr))
                                        {
                                            #line 3630
                                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, (*(*_F.Lsp1._ptr).Filtype._ptr).Size);
                                            
                                            #line 3631
                                            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 30);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
                #line 3634
                _F.Test = (Sy != C_comma);
                
                #line 3635
                if((!_F.Test))
                {
                    #line 3636
                    P_insymbol(nullptr);
                    
                    #line 3636
                    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral6)));
                }
            }
            while(!_F.Test);
        }
        
        #line 3639
        if((Sy == C_rparent))
        {
            #line 3639
            P_insymbol(nullptr);
        }
        else
        {
            #line 3639
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 3641
        if((!Outputhdf))
        {
            #line 3641
            P_error(nullptr, 176);
        }
        
        #line 3642
        if((_F._slink->Lkey == 6))
        {
            #line 3642
            P_error(nullptr, 116);
        }
        
        #line 3643
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - (*Outputptr._ptr).Vlev), (*Outputptr._ptr).Vaddr);
    }
    
    #line 3645
    if((_F.Llkey == 12))
    {
        #line 3646
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 22);
    }
    
    #line 3648
    P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(71), C_ptrsize);
    
    { /* NOP */ }
}


#line 3651
//================================================================================
// scope: block_body_statement_call_packprocedure (level : 6)

// activation record
struct Frame_block_body_statement_call_packprocedure
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_integer Bs;
    T_attr Lattr;
    T_integer Lb;
    T_stp Lsp;
    T_stp Lsp1;
};

// function body
void P_block_body_statement_call_packprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_packprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
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
    #line 3653
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3653
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3654
    _F.Lsp = nullptr;
    
    #line 3654
    _F.Lsp1 = nullptr;
    
    #line 3654
    _F.Lb = 1;
    
    #line 3654
    _F.Bs = 1;
    
    #line 3655
    _F.Lattr = Gattr;
    
    #line 3656
    if((Gattr.Typtr != nullptr))
    {
        #line 3658
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 3659
            _F.Lsp = (*Gattr.Typtr._ptr).Inxtype;
            
            #line 3659
            _F.Lsp1 = (*Gattr.Typtr._ptr).Aeltype;
            
            #line 3660
            if((((*Gattr.Typtr._ptr).Inxtype == Charptr) || ((*Gattr.Typtr._ptr).Inxtype == Boolptr)))
            {
                #line 3660
                _F.Lb = 0;
            }
            else
            {
                #line 3661
                if(((*(*Gattr.Typtr._ptr).Inxtype._ptr).Form == C_subrange))
                {
                    #line 3661
                    _F.Lb = (*(*Gattr.Typtr._ptr).Inxtype._ptr).Min.Ival;
                }
            }
            
            #line 3662
            _F.Bs = (*(*Gattr.Typtr._ptr).Aeltype._ptr).Size;
        }
        else
        {
            #line 3664
            P_error(nullptr, 116);
        }
    }
    
    #line 3665
    if((Sy == C_comma))
    {
        #line 3665
        P_insymbol(nullptr);
    }
    else
    {
        #line 3665
        P_error(nullptr, 20);
    }
    
    #line 3666
    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    
    #line 3666
    P_block_body_load(_F._slink->_slink->_slink);
    
    #line 3667
    if((Gattr.Typtr != nullptr))
    {
        #line 3668
        if(((*Gattr.Typtr._ptr).Form != C_scalar))
        {
            #line 3668
            P_error(nullptr, 116);
        }
        else
        {
            #line 3670
            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lsp, Gattr.Typtr)))
            {
                #line 3670
                P_error(nullptr, 116);
            }
        }
    }
    
    #line 3671
    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Lb);
    
    #line 3672
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(21));
    
    #line 3673
    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Bs);
    
    #line 3674
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(15));
    
    #line 3675
    if((Sy == C_comma))
    {
        #line 3675
        P_insymbol(nullptr);
    }
    else
    {
        #line 3675
        P_error(nullptr, 20);
    }
    
    #line 3676
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
    
    #line 3676
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3677
    if((Gattr.Typtr != nullptr))
    {
        #line 3679
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 3681
            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*Gattr.Typtr._ptr).Aeltype, _F.Lsp1)))
            {
                #line 3681
                P_error(nullptr, 116);
            }
        }
        else
        {
            #line 3683
            P_error(nullptr, 116);
        }
    }
    
    #line 3684
    if(((Gattr.Typtr != nullptr) && (_F.Lattr.Typtr != nullptr)))
    {
        #line 3685
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(62), (*Gattr.Typtr._ptr).Size, (*_F.Lattr.Typtr._ptr).Size);
    }
}


#line 3688
//================================================================================
// scope: block_body_statement_call_unpackprocedure (level : 6)

// activation record
struct Frame_block_body_statement_call_unpackprocedure
{
   Frame_block_body_statement_call* _slink;

    // locals
    T_integer Bs;
    T_attr Lattr;
    T_attr Lattr1;
    T_integer Lb;
    T_stp Lsp;
    T_stp Lsp1;
};

// function body
void P_block_body_statement_call_unpackprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_unpackprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
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
    #line 3690
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3690
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3691
    _F.Lattr = Gattr;
    
    #line 3692
    _F.Lsp = nullptr;
    
    #line 3692
    _F.Lsp1 = nullptr;
    
    #line 3692
    _F.Lb = 1;
    
    #line 3692
    _F.Bs = 1;
    
    #line 3693
    if((Gattr.Typtr != nullptr))
    {
        #line 3695
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 3695
            _F.Lsp1 = (*Gattr.Typtr._ptr).Aeltype;
        }
        else
        {
            #line 3696
            P_error(nullptr, 116);
        }
    }
    
    #line 3697
    if((Sy == C_comma))
    {
        #line 3697
        P_insymbol(nullptr);
    }
    else
    {
        #line 3697
        P_error(nullptr, 20);
    }
    
    #line 3698
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    
    #line 3698
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3699
    _F.Lattr1 = Gattr;
    
    #line 3700
    if((Gattr.Typtr != nullptr))
    {
        #line 3702
        if(((*Gattr.Typtr._ptr).Form == C_arrays))
        {
            #line 3704
            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*Gattr.Typtr._ptr).Aeltype, _F.Lsp1)))
            {
                #line 3704
                P_error(nullptr, 116);
            }
            
            #line 3705
            if((((*Gattr.Typtr._ptr).Inxtype == Charptr) || ((*Gattr.Typtr._ptr).Inxtype == Boolptr)))
            {
                #line 3705
                _F.Lb = 0;
            }
            else
            {
                #line 3706
                if(((*(*Gattr.Typtr._ptr).Inxtype._ptr).Form == C_subrange))
                {
                    #line 3706
                    _F.Lb = (*(*Gattr.Typtr._ptr).Inxtype._ptr).Min.Ival;
                }
            }
            
            #line 3707
            _F.Bs = (*(*Gattr.Typtr._ptr).Aeltype._ptr).Size;
            
            #line 3708
            _F.Lsp = (*Gattr.Typtr._ptr).Inxtype;
            
            { /* NOP */ }
        }
        else
        {
            #line 3710
            P_error(nullptr, 116);
        }
    }
    
    #line 3711
    if((Sy == C_comma))
    {
        #line 3711
        P_insymbol(nullptr);
    }
    else
    {
        #line 3711
        P_error(nullptr, 20);
    }
    
    #line 3712
    P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
    
    #line 3712
    P_block_body_load(_F._slink->_slink->_slink);
    
    #line 3713
    if((Gattr.Typtr != nullptr))
    {
        #line 3714
        if(((*Gattr.Typtr._ptr).Form != C_scalar))
        {
            #line 3714
            P_error(nullptr, 116);
        }
        else
        {
            #line 3716
            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lsp, Gattr.Typtr)))
            {
                #line 3716
                P_error(nullptr, 116);
            }
        }
    }
    
    #line 3717
    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Lb);
    
    #line 3718
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(21));
    
    #line 3719
    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Bs);
    
    #line 3720
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(15));
    
    #line 3721
    if(((Gattr.Typtr != nullptr) && (_F.Lattr.Typtr != nullptr)))
    {
        #line 3722
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(63), (*_F.Lattr.Typtr._ptr).Size, (*_F.Lattr1.Typtr._ptr).Size);
    }
}


#line 3725
//================================================================================
// scope: block_body_statement_call_newdisposeprocedure (level : 6)

// activation record
struct Frame_block_body_statement_call_newdisposeprocedure
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
void P_block_body_statement_call_newdisposeprocedure(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_newdisposeprocedure _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    // subroutine body
    #line 3729
    P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 3729
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3730
    _F.Lsp = nullptr;
    
    #line 3730
    _F.Varts = 0;
    
    #line 3730
    _F.Lsize = 0;
    
    #line 3731
    if((Gattr.Typtr != nullptr))
    {
        #line 3733
        if(((*Gattr.Typtr._ptr).Form == C_pointer))
        {
            #line 3735
            if(((*Gattr.Typtr._ptr).Eltype != nullptr))
            {
                #line 3736
                _F.Lsize = (*(*Gattr.Typtr._ptr).Eltype._ptr).Size;
                
                #line 3737
                if(((*(*Gattr.Typtr._ptr).Eltype._ptr).Form == C_records))
                {
                    #line 3737
                    _F.Lsp = (*(*Gattr.Typtr._ptr).Eltype._ptr).Recvar;
                }
            }
        }
        else
        {
            #line 3740
            P_error(nullptr, 116);
        }
    }
    
    #line 3741
    while((Sy == C_comma))
    {
        #line 3742
        P_insymbol(nullptr);
        
        #line 3742
        P_block_constant(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lsp1, _F.Lval);
        
        #line 3743
        _F.Varts = (_F.Varts + 1);
        
        #line 3745
        if((_F.Lsp == nullptr))
        {
            #line 3745
            P_error(nullptr, 158);
        }
        else
        {
            #line 3747
            if(((*_F.Lsp._ptr).Form != C_tagfld))
            {
                #line 3747
                P_error(nullptr, 162);
            }
            else
            {
                #line 3749
                if(((*_F.Lsp._ptr).Tagfieldp != nullptr))
                {
                    #line 3750
                    if((F_block_string(_F._slink->_slink->_slink->_slink, _F.Lsp1) || (_F.Lsp1 == Realptr)))
                    {
                        #line 3750
                        P_error(nullptr, 159);
                    }
                    else
                    {
                        #line 3752
                        if(F_block_comptypes(_F._slink->_slink->_slink->_slink, (*(*_F.Lsp._ptr).Tagfieldp._ptr).Idtype, _F.Lsp1))
                        {
                            #line 3754
                            _F.Lsp1 = (*_F.Lsp._ptr).Fstvar;
                            
                            #line 3755
                            while((_F.Lsp1 != nullptr))
                            {
                                #line 3757
                                if(((*_F.Lsp1._ptr).Varval.Ival == _F.Lval.Ival))
                                {
                                    #line 3758
                                    _F.Lsize = (*_F.Lsp1._ptr).Size;
                                    
                                    #line 3758
                                    _F.Lsp = (*_F.Lsp1._ptr).Subvar;
                                    
                                    #line 3759
                                    goto L_1;
                                }
                                else
                                {
                                    #line 3761
                                    _F.Lsp1 = (*_F.Lsp1._ptr).Nxtvar;
                                }
                            }
                            
                            #line 3762
                            _F.Lsize = (*_F.Lsp._ptr).Size;
                            
                            #line 3762
                            _F.Lsp = nullptr;
                            
                            { /* NOP */ }
                        }
                        else
                        {
                            #line 3764
                            P_error(nullptr, 116);
                        }
                    }
                }
            }
        }
        
        L_1:
        { /* NOP */ }
    }
    
    #line 3766
    P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(51), 1, _F.Lsize);
    
    #line 3767
    if((_F._slink->Lkey == 9))
    {
        #line 3767
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 12);
    }
    else
    {
        #line 3768
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 29);
    }
}


#line 3771
//================================================================================
// scope: block_body_statement_call_absfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_absfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_absfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_absfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3773
    if((Gattr.Typtr != nullptr))
    {
        #line 3774
        if((Gattr.Typtr == Intptr))
        {
            #line 3774
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(0));
        }
        else
        {
            #line 3776
            if((Gattr.Typtr == Realptr))
            {
                #line 3776
                P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(1));
            }
            else
            {
                #line 3777
                P_error(nullptr, 125);
                
                #line 3777
                Gattr.Typtr = Intptr;
            }
        }
    }
}


#line 3780
//================================================================================
// scope: block_body_statement_call_sqrfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_sqrfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_sqrfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_sqrfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3782
    if((Gattr.Typtr != nullptr))
    {
        #line 3783
        if((Gattr.Typtr == Intptr))
        {
            #line 3783
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(24));
        }
        else
        {
            #line 3785
            if((Gattr.Typtr == Realptr))
            {
                #line 3785
                P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(25));
            }
            else
            {
                #line 3786
                P_error(nullptr, 125);
                
                #line 3786
                Gattr.Typtr = Intptr;
            }
        }
    }
}


#line 3789
//================================================================================
// scope: block_body_statement_call_truncfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_truncfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_truncfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_truncfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3791
    if((Gattr.Typtr != nullptr))
    {
        #line 3792
        if((Gattr.Typtr != Realptr))
        {
            #line 3792
            P_error(nullptr, 125);
        }
    }
    
    #line 3793
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(27));
    
    #line 3794
    Gattr.Typtr = Intptr;
}


#line 3797
//================================================================================
// scope: block_body_statement_call_roundfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_roundfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_roundfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_roundfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3799
    if((Gattr.Typtr != nullptr))
    {
        #line 3800
        if((Gattr.Typtr != Realptr))
        {
            #line 3800
            P_error(nullptr, 125);
        }
    }
    
    #line 3801
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(61));
    
    #line 3802
    Gattr.Typtr = Intptr;
}


#line 3805
//================================================================================
// scope: block_body_statement_call_oddfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_oddfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_oddfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_oddfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3807
    if((Gattr.Typtr != nullptr))
    {
        #line 3808
        if((Gattr.Typtr != Intptr))
        {
            #line 3808
            P_error(nullptr, 125);
        }
    }
    
    #line 3809
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(20));
    
    #line 3810
    Gattr.Typtr = Boolptr;
}


#line 3813
//================================================================================
// scope: block_body_statement_call_ordfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_ordfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_ordfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_ordfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3815
    if((Gattr.Typtr != nullptr))
    {
        #line 3816
        if(((*Gattr.Typtr._ptr).Form >= C_power))
        {
            #line 3816
            P_error(nullptr, 125);
        }
    }
    
    #line 3817
    P_block_body_gen0t(_F._slink->_slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
    
    #line 3818
    Gattr.Typtr = Intptr;
}


#line 3821
//================================================================================
// scope: block_body_statement_call_chrfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_chrfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_chrfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_chrfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3823
    if((Gattr.Typtr != nullptr))
    {
        #line 3824
        if((Gattr.Typtr != Intptr))
        {
            #line 3824
            P_error(nullptr, 125);
        }
    }
    
    #line 3825
    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(59));
    
    #line 3826
    Gattr.Typtr = Charptr;
}


#line 3829
//================================================================================
// scope: block_body_statement_call_predsuccfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_predsuccfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_predsuccfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_predsuccfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // subroutine body
    #line 3831
    if((Gattr.Typtr != nullptr))
    {
        #line 3832
        if(((*Gattr.Typtr._ptr).Form != C_scalar))
        {
            #line 3832
            P_error(nullptr, 125);
        }
    }
    
    #line 3833
    if((_F._slink->Lkey == 7))
    {
        #line 3833
        P_block_body_gen1t(_F._slink->_slink->_slink, T_block_body_oprange::C(31), 1, Gattr.Typtr);
    }
    else
    {
        #line 3834
        P_block_body_gen1t(_F._slink->_slink->_slink, T_block_body_oprange::C(34), 1, Gattr.Typtr);
    }
}


#line 3837
//================================================================================
// scope: block_body_statement_call_eofeolnfunction (level : 6)

// activation record
struct Frame_block_body_statement_call_eofeolnfunction
{
   Frame_block_body_statement_call* _slink;
};

// function body
void P_block_body_statement_call_eofeolnfunction(void* _slink)
{
    // prologue/frame definition
    Frame_block_body_statement_call_eofeolnfunction _F = { (Frame_block_body_statement_call*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    // subroutine body
    #line 3839
    if((Sy == C_lparent))
    {
        #line 3840
        P_insymbol(nullptr);
        
        #line 3840
        P_block_body_statement_call_variable(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 3841
        if((Sy == C_rparent))
        {
            #line 3841
            P_insymbol(nullptr);
        }
        else
        {
            #line 3841
            P_error(nullptr, 4);
        }
    }
    else
    {
        #line 3844
        if((!Inputhdf))
        {
            #line 3844
            P_error(nullptr, 175);
        }
        
        #line 3846
        Gattr.Typtr = Textptr;
        
        #line 3846
        Gattr.Kind = C_varbl;
        
        #line 3846
        Gattr.Access = C_drct;
        
        #line 3847
        Gattr.Vlevel = (*Inputptr._ptr).Vlev;
        
        #line 3847
        Gattr.Dplmt = (*Inputptr._ptr).Vaddr;
    }
    
    #line 3850
    P_block_body_loadaddress(_F._slink->_slink->_slink);
    
    #line 3851
    if((Gattr.Typtr != nullptr))
    {
        #line 3852
        if(((*Gattr.Typtr._ptr).Form != C_files))
        {
            #line 3852
            P_error(nullptr, 125);
        }
        else
        {
            #line 3853
            if(((_F._slink->Lkey == 10) && (Gattr.Typtr != Textptr)))
            {
                #line 3853
                P_error(nullptr, 116);
            }
        }
    }
    
    #line 3854
    if((_F._slink->Lkey == 9))
    {
        #line 3855
        if((Gattr.Typtr == Textptr))
        {
            #line 3855
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(8));
        }
        else
        {
            #line 3856
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(69));
        }
    }
    else
    {
        #line 3857
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), 14);
    }
    
    #line 3858
    Gattr.Typtr = Boolptr;
}


#line 3861
//================================================================================
// scope: block_body_statement_call_callnonstandard (level : 6)

// forward declarations
void P_block_body_statement_call_callnonstandard_compparam(void* _slink, T_ctp Pla, T_ctp Plb);

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
    _setLiteral5.set(C_proc);
    _setLiteral5.set(C_func);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_proc);
    _setLiteral6.set(C_func);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_comma);
    _setLiteral7.set(C_rparent);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_comma);
    _setLiteral8.set(C_rparent);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_comma);
    _setLiteral9.set(C_rparent);
    
    // subroutine body
    #line 3874
    _F.Locpar = 0;
    
    #line 3876
    _F.Nxt = (*_F._slink->Fcp._ptr).Pflist;
    
    #line 3876
    _F.Lkind = (*_F._slink->Fcp._ptr).Pfkind;
    
    #line 3877
    if(((*_F._slink->Fcp._ptr).Pfkind == C_actual))
    {
        #line 3878
        if((!(*_F._slink->Fcp._ptr).Externl))
        {
            #line 3878
            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(41), (Level - (*_F._slink->Fcp._ptr).Pflev));
        }
    }
    else
    {
        #line 3879
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(41), (Level - (*_F._slink->Fcp._ptr).Pflev));
    }
    
    #line 3881
    if((Sy == C_lparent))
    {
        #line 3882
        _F.Llc = Lc;
        
        #line 3883
        do
        {
            #line 3883
            _F.Lb = C_false;
            
            #line 3884
            if((_F.Nxt == nullptr))
            {
                #line 3884
                P_error(nullptr, 126);
            }
            else
            {
                #line 3885
                _F.Lb = (_setLiteral1 & (*_F.Nxt._ptr).Klass);
            }
            
            #line 3886
            P_insymbol(nullptr);
            
            #line 3887
            if(_F.Lb)
            {
                #line 3889
                if((Sy != C_ident))
                {
                    #line 3890
                    P_error(nullptr, 2);
                    
                    #line 3890
                    P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
                }
                else
                {
                    #line 3891
                    if((_F.Nxt != nullptr))
                    {
                        #line 3893
                        if(((*_F.Nxt._ptr).Klass == C_proc))
                        {
                            #line 3893
                            P_searchid(nullptr, T_setofids::C(_setLiteral3), _F.Lcp);
                        }
                        else
                        {
                            #line 3895
                            P_searchid(nullptr, T_setofids::C(_setLiteral4), _F.Lcp);
                            
                            #line 3897
                            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, (*_F.Lcp._ptr).Idtype, (*_F.Nxt._ptr).Idtype)))
                            {
                                #line 3898
                                P_error(nullptr, 128);
                            }
                        }
                        
                        #line 3901
                        if(((_setLiteral5 & (*_F.Nxt._ptr).Klass) && (_setLiteral6 & (*_F.Lcp._ptr).Klass)))
                        {
                            #line 3903
                            P_block_body_statement_call_callnonstandard_compparam(&_F, (*_F.Nxt._ptr).Pflist, (*_F.Lcp._ptr).Pflist);
                        }
                        
                        #line 3904
                        if(((*_F.Lcp._ptr).Pfkind == C_actual))
                        {
                            #line 3904
                            P_block_body_genlpa(_F._slink->_slink->_slink, (*_F.Lcp._ptr).Pfname, (Level - (*_F.Lcp._ptr).Pflev));
                        }
                        else
                        {
                            #line 3905
                            P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(74), (Level - (*_F.Lcp._ptr).Pflev), (*_F.Lcp._ptr).Pfaddr);
                        }
                        
                        #line 3906
                        _F.Locpar = (_F.Locpar + (C_ptrsize * 2));
                        
                        #line 3907
                        P_insymbol(nullptr);
                        
                        #line 3908
                        if((!((_F._slink->Fsys + _setLiteral7) & Sy)))
                        {
                            #line 3909
                            P_error(nullptr, 6);
                            
                            #line 3909
                            P_block_skip(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral8)));
                        }
                    }
                }
            }
            else
            {
                #line 3913
                P_block_body_statement_expression(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral9)));
                
                #line 3914
                if((Gattr.Typtr != nullptr))
                {
                    #line 3916
                    if((_F.Nxt != nullptr))
                    {
                        #line 3917
                        _F.Lsp = (*_F.Nxt._ptr).Idtype;
                        
                        #line 3918
                        if((_F.Lsp != nullptr))
                        {
                            #line 3920
                            if(((*_F.Nxt._ptr).Vkind == C_actual))
                            {
                                #line 3921
                                if(((*_F.Lsp._ptr).Form <= C_power))
                                {
                                    #line 3922
                                    P_block_body_load(_F._slink->_slink->_slink);
                                    
                                    #line 3923
                                    if(Debug)
                                    {
                                        #line 3923
                                        P_block_body_checkbnds(_F._slink->_slink->_slink, _F.Lsp);
                                    }
                                    
                                    #line 3924
                                    if((F_block_comptypes(_F._slink->_slink->_slink->_slink, Realptr, _F.Lsp) && (Gattr.Typtr == Intptr)))
                                    {
                                        #line 3926
                                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(10));
                                        
                                        #line 3927
                                        Gattr.Typtr = Realptr;
                                    }
                                    
                                    #line 3929
                                    _F.Locpar = (_F.Locpar + (*_F.Lsp._ptr).Size);
                                    
                                    #line 3930
                                    P_align(nullptr, Parmptr, _F.Locpar);
                                    
                                    { /* NOP */ }
                                }
                                else
                                {
                                    #line 3934
                                    P_block_body_loadaddress(_F._slink->_slink->_slink);
                                    
                                    #line 3935
                                    _F.Locpar = (_F.Locpar + C_ptrsize);
                                    
                                    #line 3936
                                    P_align(nullptr, Parmptr, _F.Locpar);
                                }
                            }
                            else
                            {
                                #line 3939
                                if((Gattr.Kind == C_varbl))
                                {
                                    #line 3940
                                    P_block_body_loadaddress(_F._slink->_slink->_slink);
                                    
                                    #line 3941
                                    _F.Locpar = (_F.Locpar + C_ptrsize);
                                    
                                    #line 3942
                                    P_align(nullptr, Parmptr, _F.Locpar);
                                    
                                    { /* NOP */ }
                                }
                                else
                                {
                                    #line 3944
                                    P_error(nullptr, 154);
                                }
                            }
                            
                            #line 3945
                            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lsp, Gattr.Typtr)))
                            {
                                #line 3946
                                P_error(nullptr, 142);
                            }
                        }
                    }
                }
            }
            
            #line 3951
            if((_F.Nxt != nullptr))
            {
                #line 3951
                _F.Nxt = (*_F.Nxt._ptr).Next;
            }
        }
        while(!(Sy != C_comma));
        
        #line 3953
        Lc = _F.Llc;
        
        #line 3954
        if((Sy == C_rparent))
        {
            #line 3954
            P_insymbol(nullptr);
        }
        else
        {
            #line 3954
            P_error(nullptr, 4);
        }
    }
    
    #line 3956
    if((_F.Lkind == C_actual))
    {
        #line 3957
        if((_F.Nxt != nullptr))
        {
            #line 3957
            P_error(nullptr, 126);
        }
        
        #line 3960
        if((*_F._slink->Fcp._ptr).Externl)
        {
            #line 3960
            P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(30), (*_F._slink->Fcp._ptr).Pfname);
        }
        else
        {
            #line 3961
            P_block_body_gencupent(_F._slink->_slink->_slink, T_block_body_oprange::C(46), _F.Locpar, (*_F._slink->Fcp._ptr).Pfname);
        }
        
        { /* NOP */ }
    }
    else
    {
        #line 3965
        P_block_body_gen2(_F._slink->_slink->_slink, T_block_body_oprange::C(50), (Level - (*_F._slink->Fcp._ptr).Pflev), (*_F._slink->Fcp._ptr).Pfaddr);
        
        #line 3966
        P_block_body_gen1(_F._slink->_slink->_slink, T_block_body_oprange::C(67), _F.Locpar);
    }
    
    #line 3968
    Gattr.Typtr = (*_F._slink->Fcp._ptr).Idtype;
}


#line 3865
//================================================================================
// scope: block_body_statement_call_callnonstandard_compparam (level : 7)

// activation record
struct Frame_block_body_statement_call_callnonstandard_compparam
{
   Frame_block_body_statement_call_callnonstandard* _slink;

    // parameters
    T_ctp Pla;
    T_ctp Plb;
};

// function body
void P_block_body_statement_call_callnonstandard_compparam(void* _slink, T_ctp Pla, T_ctp Plb)
{
    // prologue/frame definition
    Frame_block_body_statement_call_callnonstandard_compparam _F = { (Frame_block_body_statement_call_callnonstandard*)_slink, Pla, Plb };
    
    // subroutine body
    #line 3867
    while(((_F.Pla != nullptr) && (_F.Plb != nullptr)))
    {
        #line 3868
        if((!F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink, (*_F.Pla._ptr).Idtype, (*_F.Plb._ptr).Idtype)))
        {
            #line 3868
            P_error(nullptr, 189);
        }
        
        #line 3869
        _F.Pla = (*_F.Pla._ptr).Next;
        
        #line 3869
        _F.Plb = (*_F.Plb._ptr).Next;
    }
    
    #line 3871
    if(((_F.Pla != nullptr) || (_F.Plb != nullptr)))
    {
        #line 3871
        P_error(nullptr, 189);
    }
}


#line 4017
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
    #line 4355
    P_block_body_statement_expression_simpleexpression(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)));
    
    #line 4356
    if((Sy == C_relop))
    {
        #line 4358
        if((Gattr.Typtr != nullptr))
        {
            #line 4359
            if(((*Gattr.Typtr._ptr).Form <= C_power))
            {
                #line 4359
                P_block_body_load(_F._slink->_slink);
            }
            else
            {
                #line 4360
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 4361
        _F.Lattr = Gattr;
        
        #line 4361
        _F.Lop = Op;
        
        #line 4362
        if((_F.Lop == C_inop))
        {
            #line 4363
            if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
            {
                #line 4364
                P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
            }
        }
        
        #line 4365
        P_insymbol(nullptr);
        
        #line 4365
        P_block_body_statement_expression_simpleexpression(&_F, _F.Fsys);
        
        #line 4366
        if((Gattr.Typtr != nullptr))
        {
            #line 4367
            if(((*Gattr.Typtr._ptr).Form <= C_power))
            {
                #line 4367
                P_block_body_load(_F._slink->_slink);
            }
            else
            {
                #line 4368
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 4369
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 4370
            if((_F.Lop == C_inop))
            {
                #line 4371
                if(((*Gattr.Typtr._ptr).Form == C_power))
                {
                    #line 4372
                    if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, (*Gattr.Typtr._ptr).Elset))
                    {
                        #line 4373
                        P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(11));
                    }
                    else
                    {
                        #line 4374
                        P_error(nullptr, 129);
                        
                        #line 4374
                        Gattr.Typtr = nullptr;
                    }
                }
                else
                {
                    #line 4375
                    P_error(nullptr, 130);
                    
                    #line 4375
                    Gattr.Typtr = nullptr;
                }
            }
            else
            {
                #line 4378
                if((_F.Lattr.Typtr != Gattr.Typtr))
                {
                    #line 4379
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 4380
                        P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 4381
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 4384
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 4385
                            P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 4386
                            Gattr.Typtr = Realptr;
                        }
                    }
                }
                
                #line 4388
                if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
                {
                    #line 4389
                    _F.Lsize = (*_F.Lattr.Typtr._ptr).Size;
                    
                    #line 4390
                    switch((*_F.Lattr.Typtr._ptr).Form)
                    {
                    case C_scalar:
                        #line 4392
                        if((_F.Lattr.Typtr == Realptr))
                        {
                            #line 4392
                            _F.Typind = 'r';
                        }
                        else
                        {
                            #line 4394
                            if((_F.Lattr.Typtr == Boolptr))
                            {
                                #line 4394
                                _F.Typind = 'b';
                            }
                            else
                            {
                                #line 4396
                                if((_F.Lattr.Typtr == Charptr))
                                {
                                    #line 4396
                                    _F.Typind = 'c';
                                }
                                else
                                {
                                    #line 4397
                                    _F.Typind = 'i';
                                }
                            }
                        }
                        break;
                    
                    case C_pointer:
                        #line 4400
                        if((_setLiteral2 & _F.Lop))
                        {
                            #line 4400
                            P_error(nullptr, 131);
                        }
                        
                        #line 4401
                        _F.Typind = 'a';
                        break;
                    
                    case C_power:
                        #line 4404
                        if((_setLiteral3 & _F.Lop))
                        {
                            #line 4404
                            P_error(nullptr, 132);
                        }
                        
                        #line 4405
                        _F.Typind = 's';
                        break;
                    
                    case C_arrays:
                        #line 4409
                        if((!F_block_string(_F._slink->_slink->_slink, _F.Lattr.Typtr)))
                        {
                            #line 4410
                            P_error(nullptr, 134);
                        }
                        
                        #line 4411
                        _F.Typind = 'm';
                        break;
                    
                    case C_records:
                        #line 4415
                        P_error(nullptr, 134);
                        
                        #line 4416
                        _F.Typind = 'm';
                        break;
                    
                    case C_files:
                        #line 4419
                        P_error(nullptr, 133);
                        
                        #line 4419
                        _F.Typind = 'f';
                        break;
                    }
                    
                    #line 4421
                    switch(_F.Lop)
                    {
                    case C_ltop:
                        #line 4422
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(53), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_leop:
                        #line 4423
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(52), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_gtop:
                        #line 4424
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(49), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_geop:
                        #line 4425
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(48), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_neop:
                        #line 4426
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(55), _ord(_F.Typind), _F.Lsize);
                        break;
                    
                    case C_eqop:
                        #line 4427
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(47), _ord(_F.Typind), _F.Lsize);
                        break;
                    }
                }
                else
                {
                    #line 4430
                    P_error(nullptr, 129);
                }
            }
        }
        
        #line 4432
        Gattr.Typtr = Boolptr;
        
        #line 4432
        Gattr.Kind = C_expr;
    }
}


#line 4020
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
    #line 4286
    _F.Signed = C_false;
    
    #line 4287
    if(((Sy == C_addop) && (_setLiteral1 & Op)))
    {
        #line 4288
        _F.Signed = (Op == C_minus);
        
        #line 4288
        P_insymbol(nullptr);
    }
    
    #line 4289
    P_block_body_statement_expression_simpleexpression_term(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)));
    
    #line 4290
    if(_F.Signed)
    {
        #line 4291
        P_block_body_load(_F._slink->_slink->_slink);
        
        #line 4292
        if((Gattr.Typtr == Intptr))
        {
            #line 4292
            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(17));
        }
        else
        {
            #line 4294
            if((Gattr.Typtr == Realptr))
            {
                #line 4294
                P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(18));
            }
            else
            {
                #line 4295
                P_error(nullptr, 134);
                
                #line 4295
                Gattr.Typtr = nullptr;
            }
        }
    }
    
    #line 4297
    while((Sy == C_addop))
    {
        #line 4298
        P_block_body_load(_F._slink->_slink->_slink);
        
        #line 4298
        _F.Lattr = Gattr;
        
        #line 4298
        _F.Lop = Op;
        
        #line 4299
        P_insymbol(nullptr);
        
        #line 4299
        P_block_body_statement_expression_simpleexpression_term(&_F, T_setofsys::C((_F.Fsys + _setLiteral3)));
        
        #line 4299
        P_block_body_load(_F._slink->_slink->_slink);
        
        #line 4300
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 4301
            switch(_F.Lop)
            {
            case C_plus:
                #line 4303
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 4304
                    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(2));
                }
                else
                {
                    #line 4307
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 4308
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 4309
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 4312
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 4313
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 4314
                            Gattr.Typtr = Realptr;
                        }
                    }
                    
                    #line 4316
                    if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                    {
                        #line 4317
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(3));
                    }
                    else
                    {
                        #line 4318
                        if((((*_F.Lattr.Typtr._ptr).Form == C_power) && F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr)))
                        {
                            #line 4320
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(28));
                        }
                        else
                        {
                            #line 4321
                            P_error(nullptr, 134);
                            
                            #line 4321
                            Gattr.Typtr = nullptr;
                        }
                    }
                }
                break;
            
            case C_minus:
                #line 4324
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 4325
                    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(21));
                }
                else
                {
                    #line 4328
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 4329
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 4330
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 4333
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 4334
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 4335
                            Gattr.Typtr = Realptr;
                        }
                    }
                    
                    #line 4337
                    if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                    {
                        #line 4338
                        P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(22));
                    }
                    else
                    {
                        #line 4340
                        if((((*_F.Lattr.Typtr._ptr).Form == C_power) && F_block_comptypes(_F._slink->_slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr)))
                        {
                            #line 4342
                            P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(5));
                        }
                        else
                        {
                            #line 4343
                            P_error(nullptr, 134);
                            
                            #line 4343
                            Gattr.Typtr = nullptr;
                        }
                    }
                }
                break;
            
            case C_orop:
                #line 4346
                if(((_F.Lattr.Typtr == Boolptr) && (Gattr.Typtr == Boolptr)))
                {
                    #line 4347
                    P_block_body_gen0(_F._slink->_slink->_slink, T_block_body_oprange::C(13));
                }
                else
                {
                    #line 4348
                    P_error(nullptr, 134);
                    
                    #line 4348
                    Gattr.Typtr = nullptr;
                }
                break;
            }
        }
        else
        {
            #line 4350
            Gattr.Typtr = nullptr;
        }
    }
}


#line 4023
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
    #line 4231
    P_block_body_statement_expression_simpleexpression_term_factor(&_F, T_setofsys::C((_F.Fsys + _setLiteral1)));
    
    #line 4232
    while((Sy == C_mulop))
    {
        #line 4233
        P_block_body_load(_F._slink->_slink->_slink->_slink);
        
        #line 4233
        _F.Lattr = Gattr;
        
        #line 4233
        _F.Lop = Op;
        
        #line 4234
        P_insymbol(nullptr);
        
        #line 4234
        P_block_body_statement_expression_simpleexpression_term_factor(&_F, T_setofsys::C((_F.Fsys + _setLiteral2)));
        
        #line 4234
        P_block_body_load(_F._slink->_slink->_slink->_slink);
        
        #line 4235
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 4236
            switch(_F.Lop)
            {
            case C_mul:
                #line 4237
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 4238
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(15));
                }
                else
                {
                    #line 4241
                    if((_F.Lattr.Typtr == Intptr))
                    {
                        #line 4242
                        P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(9));
                        
                        #line 4243
                        _F.Lattr.Typtr = Realptr;
                    }
                    else
                    {
                        #line 4246
                        if((Gattr.Typtr == Intptr))
                        {
                            #line 4247
                            P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(10));
                            
                            #line 4248
                            Gattr.Typtr = Realptr;
                        }
                    }
                    
                    #line 4250
                    if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                    {
                        #line 4251
                        P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(16));
                    }
                    else
                    {
                        #line 4253
                        if((((*_F.Lattr.Typtr._ptr).Form == C_power) && F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr)))
                        {
                            #line 4255
                            P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(12));
                        }
                        else
                        {
                            #line 4256
                            P_error(nullptr, 134);
                            
                            #line 4256
                            Gattr.Typtr = nullptr;
                        }
                    }
                }
                break;
            
            case C_rdiv:
                #line 4259
                if((Gattr.Typtr == Intptr))
                {
                    #line 4260
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(10));
                    
                    #line 4261
                    Gattr.Typtr = Realptr;
                }
                
                #line 4263
                if((_F.Lattr.Typtr == Intptr))
                {
                    #line 4264
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(9));
                    
                    #line 4265
                    _F.Lattr.Typtr = Realptr;
                }
                
                #line 4267
                if(((_F.Lattr.Typtr == Realptr) && (Gattr.Typtr == Realptr)))
                {
                    #line 4268
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(7));
                }
                else
                {
                    #line 4269
                    P_error(nullptr, 134);
                    
                    #line 4269
                    Gattr.Typtr = nullptr;
                }
                break;
            
            case C_idiv:
                #line 4271
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 4272
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(6));
                }
                else
                {
                    #line 4273
                    P_error(nullptr, 134);
                    
                    #line 4273
                    Gattr.Typtr = nullptr;
                }
                break;
            
            case C_imod:
                #line 4274
                if(((_F.Lattr.Typtr == Intptr) && (Gattr.Typtr == Intptr)))
                {
                    #line 4275
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(14));
                }
                else
                {
                    #line 4276
                    P_error(nullptr, 134);
                    
                    #line 4276
                    Gattr.Typtr = nullptr;
                }
                break;
            
            case C_andop:
                #line 4277
                if(((_F.Lattr.Typtr == Boolptr) && (Gattr.Typtr == Boolptr)))
                {
                    #line 4278
                    P_block_body_gen0(_F._slink->_slink->_slink->_slink, T_block_body_oprange::C(4));
                }
                else
                {
                    #line 4279
                    P_error(nullptr, 134);
                    
                    #line 4279
                    Gattr.Typtr = nullptr;
                }
                break;
            }
        }
        else
        {
            #line 4281
            Gattr.Typtr = nullptr;
        }
    }
}


#line 4026
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
    T_attr Rattr;
    T_attr Tattr;
    T_boolean Test;
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
    _setLiteral4.set(C_range);
    _setLiteral4.set(C_rbrack);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_comma);
    _setLiteral5.set(C_rbrack);
    
    _T_GenericSet _setLiteral8;
    
    // subroutine body
    #line 4032
    if((!(Facbegsys & Sy)))
    {
        #line 4033
        P_error(nullptr, 58);
        
        #line 4033
        P_block_skip(_F._slink->_slink->_slink->_slink->_slink->_slink, (_F.Fsys + Facbegsys));
        
        #line 4034
        Gattr.Typtr = nullptr;
    }
    
    #line 4036
    while((Facbegsys & Sy))
    {
        #line 4038
        switch(Sy)
        {
        case C_ident:
            #line 4040
            P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
            
            #line 4041
            P_insymbol(nullptr);
            
            #line 4042
            if(((*_F.Lcp._ptr).Klass == C_func))
            {
                #line 4043
                P_block_body_statement_call(_F._slink->_slink->_slink->_slink, _F.Fsys, _F.Lcp);
                
                #line 4045
                Gattr.Kind = C_expr;
                
                #line 4046
                if((Gattr.Typtr != nullptr))
                {
                    #line 4047
                    if(((*Gattr.Typtr._ptr).Form == C_subrange))
                    {
                        #line 4048
                        Gattr.Typtr = (*Gattr.Typtr._ptr).Rangetype;
                    }
                }
            }
            else
            {
                #line 4052
                if(((*_F.Lcp._ptr).Klass == C_konst))
                {
                    #line 4054
                    Gattr.Typtr = (*_F.Lcp._ptr).Idtype;
                    
                    #line 4054
                    Gattr.Kind = C_cst;
                    
                    #line 4055
                    Gattr.Cval = (*_F.Lcp._ptr).Values;
                }
                else
                {
                    #line 4058
                    P_block_body_statement_selector(_F._slink->_slink->_slink->_slink, _F.Fsys, _F.Lcp);
                    
                    #line 4059
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 4061
                        if(((*Gattr.Typtr._ptr).Form == C_subrange))
                        {
                            #line 4062
                            Gattr.Typtr = (*Gattr.Typtr._ptr).Rangetype;
                        }
                    }
                }
            }
            break;
        
        case C_intconst:
            #line 4068
            Gattr.Typtr = Intptr;
            
            #line 4068
            Gattr.Kind = C_cst;
            
            #line 4069
            Gattr.Cval = Val;
            
            #line 4071
            P_insymbol(nullptr);
            break;
        
        case C_realconst:
            #line 4076
            Gattr.Typtr = Realptr;
            
            #line 4076
            Gattr.Kind = C_cst;
            
            #line 4077
            Gattr.Cval = Val;
            
            #line 4079
            P_insymbol(nullptr);
            break;
        
        case C_stringconst:
            #line 4085
            if((Lgth == 1))
            {
                #line 4085
                Gattr.Typtr = Charptr;
            }
            else
            {
                #line 4087
                {
                    _new(_F.Lsp._ptr);
                    _setValue(_F.Lsp._ptr->Form, C_arrays);
                }
                
                #line 4087
                P_pshstc(nullptr, _F.Lsp);
                
                #line 4089
                (*_F.Lsp._ptr).Aeltype = Charptr;
                
                #line 4089
                (*_F.Lsp._ptr).Form = C_arrays;
                
                #line 4090
                (*_F.Lsp._ptr).Packing = C_true;
                
                #line 4091
                (*_F.Lsp._ptr).Inxtype = nullptr;
                
                #line 4091
                (*_F.Lsp._ptr).Size = (Lgth * C_charsize);
                
                #line 4093
                Gattr.Typtr = _F.Lsp;
            }
            
            #line 4095
            Gattr.Kind = C_cst;
            
            #line 4095
            Gattr.Cval = Val;
            
            #line 4097
            P_insymbol(nullptr);
            break;
        
        case C_lparent:
            #line 4100
            P_insymbol(nullptr);
            
            #line 4100
            P_block_body_statement_expression(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral2)));
            
            #line 4101
            if((Sy == C_rparent))
            {
                #line 4101
                P_insymbol(nullptr);
            }
            else
            {
                #line 4101
                P_error(nullptr, 4);
            }
            break;
        
        case C_notsy:
            #line 4104
            P_insymbol(nullptr);
            
            #line 4104
            P_block_body_statement_expression_simpleexpression_term_factor(_F._slink, _F.Fsys);
            
            #line 4105
            P_block_body_load(_F._slink->_slink->_slink->_slink->_slink);
            
            #line 4105
            P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(19));
            
            #line 4106
            if((Gattr.Typtr != nullptr))
            {
                #line 4107
                if((Gattr.Typtr != Boolptr))
                {
                    #line 4108
                    P_error(nullptr, 135);
                    
                    #line 4108
                    Gattr.Typtr = nullptr;
                }
            }
            
            { /* NOP */ }
            break;
        
        case C_lbrack:
            #line 4111
            P_insymbol(nullptr);
            
            #line 4111
            _F.Cstpart = _setLiteral3;
            
            #line 4111
            _F.Varpart = C_false;
            
            #line 4112
            {
                _new(_F.Lsp._ptr);
                _setValue(_F.Lsp._ptr->Form, C_power);
            }
            
            #line 4112
            P_pshstc(nullptr, _F.Lsp);
            
            #line 4114
            (*_F.Lsp._ptr).Elset = nullptr;
            
            #line 4114
            (*_F.Lsp._ptr).Size = C_setsize;
            
            #line 4114
            (*_F.Lsp._ptr).Form = C_power;
            
            #line 4115
            (*_F.Lsp._ptr).Packing = C_false;
            
            #line 4115
            (*_F.Lsp._ptr).Matchpack = C_false;
            
            #line 4116
            if((Sy == C_rbrack))
            {
                #line 4119
                Gattr.Typtr = _F.Lsp;
                
                #line 4119
                Gattr.Kind = C_cst;
                
                #line 4120
                P_insymbol(nullptr);
            }
            else
            {
                #line 4124
                do
                {
                    #line 4124
                    P_block_body_statement_expression(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral4)));
                    
                    #line 4125
                    _F.Rattr.Typtr = nullptr;
                    
                    #line 4126
                    if((Sy == C_range))
                    {
                        #line 4126
                        P_insymbol(nullptr);
                        
                        #line 4129
                        if((Gattr.Kind != C_cst))
                        {
                            #line 4130
                            P_block_body_load(_F._slink->_slink->_slink->_slink->_slink);
                            
                            #line 4131
                            if((!F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, Gattr.Typtr, Intptr)))
                            {
                                #line 4132
                                P_block_body_gen0t(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                            }
                            
                            { /* NOP */ }
                        }
                        
                        #line 4134
                        _F.Tattr = Gattr;
                        
                        #line 4134
                        P_block_body_statement_expression(_F._slink->_slink->_slink->_slink, T_setofsys::C((_F.Fsys + _setLiteral5)));
                        
                        #line 4135
                        _F.Rattr = Gattr;
                        
                        #line 4135
                        Gattr = _F.Tattr;
                        
                        { /* NOP */ }
                    }
                    
                    #line 4137
                    if((Gattr.Typtr != nullptr))
                    {
                        #line 4138
                        if(((*Gattr.Typtr._ptr).Form != C_scalar))
                        {
                            #line 4139
                            P_error(nullptr, 136);
                            
                            #line 4139
                            Gattr.Typtr = nullptr;
                        }
                        else
                        {
                            #line 4141
                            if(F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, (*_F.Lsp._ptr).Elset, Gattr.Typtr))
                            {
                                #line 4143
                                if((_F.Rattr.Typtr != nullptr))
                                {
                                    #line 4144
                                    if(((*_F.Rattr.Typtr._ptr).Form != C_scalar))
                                    {
                                        #line 4145
                                        P_error(nullptr, 136);
                                        
                                        #line 4145
                                        _F.Rattr.Typtr = nullptr;
                                    }
                                    else
                                    {
                                        #line 4147
                                        if(F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, (*_F.Lsp._ptr).Elset, _F.Rattr.Typtr))
                                        {
                                            #line 4149
                                            if(((Gattr.Kind == C_cst) && (_F.Rattr.Kind == C_cst)))
                                            {
                                                #line 4151
                                                if(((((_F._slink->Lattr.Cval.Ival < C_setlow) || (_F._slink->Lattr.Cval.Ival > C_sethigh)) || (Gattr.Cval.Ival < C_setlow)) || (Gattr.Cval.Ival > C_sethigh)))
                                                {
                                                    #line 4155
                                                    P_error(nullptr, 304);
                                                }
                                                else
                                                {
                                                    #line 4157
                                                    {
                                                        _T_GenericSet _setLiteral6;
                                                        _setLiteral6.set(Gattr.Cval.Ival, _F.Rattr.Cval.Ival);
                                                        
                                                        _F.Cstpart = (_F.Cstpart + _setLiteral6);
                                                    }
                                                }
                                            }
                                            else
                                            {
                                                #line 4161
                                                _F.Tattr = Gattr;
                                                
                                                #line 4161
                                                Gattr = _F.Rattr;
                                                
                                                #line 4162
                                                P_block_body_load(_F._slink->_slink->_slink->_slink->_slink);
                                                
                                                #line 4163
                                                Gattr = _F.Tattr;
                                                
                                                #line 4164
                                                if((!F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, _F.Rattr.Typtr, Intptr)))
                                                {
                                                    #line 4165
                                                    P_block_body_gen0t(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(58), _F.Rattr.Typtr);
                                                }
                                                
                                                #line 4166
                                                P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(64));
                                                
                                                #line 4167
                                                if(_F.Varpart)
                                                {
                                                    #line 4167
                                                    P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(28));
                                                }
                                                else
                                                {
                                                    #line 4168
                                                    _F.Varpart = C_true;
                                                }
                                            }
                                        }
                                        else
                                        {
                                            #line 4171
                                            P_error(nullptr, 137);
                                        }
                                    }
                                }
                                else
                                {
                                    #line 4173
                                    if((Gattr.Kind == C_cst))
                                    {
                                        #line 4174
                                        if(((Gattr.Cval.Ival < C_setlow) || (Gattr.Cval.Ival > C_sethigh)))
                                        {
                                            #line 4176
                                            P_error(nullptr, 304);
                                        }
                                        else
                                        {
                                            #line 4178
                                            {
                                                _T_GenericSet _setLiteral7;
                                                _setLiteral7.set(Gattr.Cval.Ival);
                                                
                                                _F.Cstpart = (_F.Cstpart + _setLiteral7);
                                            }
                                        }
                                    }
                                    else
                                    {
                                        #line 4180
                                        P_block_body_load(_F._slink->_slink->_slink->_slink->_slink);
                                        
                                        #line 4181
                                        if((!F_block_comptypes(_F._slink->_slink->_slink->_slink->_slink->_slink, Gattr.Typtr, Intptr)))
                                        {
                                            #line 4182
                                            P_block_body_gen0t(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                                        }
                                        
                                        #line 4183
                                        P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(23));
                                        
                                        #line 4184
                                        if(_F.Varpart)
                                        {
                                            #line 4184
                                            P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(28));
                                        }
                                        else
                                        {
                                            #line 4185
                                            _F.Varpart = C_true;
                                        }
                                    }
                                }
                                
                                #line 4188
                                (*_F.Lsp._ptr).Elset = Gattr.Typtr;
                                
                                #line 4189
                                Gattr.Typtr = _F.Lsp;
                            }
                            else
                            {
                                #line 4191
                                P_error(nullptr, 137);
                            }
                        }
                    }
                    
                    #line 4192
                    _F.Test = (Sy != C_comma);
                    
                    #line 4193
                    if((!_F.Test))
                    {
                        #line 4193
                        P_insymbol(nullptr);
                    }
                }
                while(!_F.Test);
                
                #line 4195
                if((Sy == C_rbrack))
                {
                    #line 4195
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 4195
                    P_error(nullptr, 12);
                }
            }
            
            #line 4197
            if(_F.Varpart)
            {
                #line 4199
                if((_F.Cstpart != _setLiteral8))
                {
                    #line 4200
                    {
                        _new(_F.Lvp._ptr);
                        _setValue(_F.Lvp._ptr->Cclass, C_pset);
                    }
                    
                    #line 4200
                    P_pshcst(nullptr, _F.Lvp);
                    
                    #line 4201
                    (*_F.Lvp._ptr).Pval = _F.Cstpart;
                    
                    #line 4202
                    (*_F.Lvp._ptr).Cclass = C_pset;
                    
                    #line 4203
                    if((_F._slink->_slink->_slink->_slink->_slink->Cstptrix == C_block_body_cstoccmax))
                    {
                        #line 4203
                        P_error(nullptr, 254);
                    }
                    else
                    {
                        #line 4205
                        _F._slink->_slink->_slink->_slink->_slink->Cstptrix = (_F._slink->_slink->_slink->_slink->_slink->Cstptrix + 1);
                        
                        #line 4206
                        _F._slink->_slink->_slink->_slink->_slink->Cstptr[_F._slink->_slink->_slink->_slink->_slink->Cstptrix] = _F.Lvp;
                        
                        #line 4207
                        P_block_body_gen2(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(51), 5, _F._slink->_slink->_slink->_slink->_slink->Cstptrix);
                        
                        #line 4208
                        P_block_body_gen0(_F._slink->_slink->_slink->_slink->_slink, T_block_body_oprange::C(28));
                        
                        #line 4208
                        Gattr.Kind = C_expr;
                    }
                }
            }
            else
            {
                #line 4213
                {
                    _new(_F.Lvp._ptr);
                    _setValue(_F.Lvp._ptr->Cclass, C_pset);
                }
                
                #line 4213
                P_pshcst(nullptr, _F.Lvp);
                
                #line 4214
                (*_F.Lvp._ptr).Pval = _F.Cstpart;
                
                #line 4215
                (*_F.Lvp._ptr).Cclass = C_pset;
                
                #line 4216
                Gattr.Cval.Valp = _F.Lvp;
            }
            break;
        
        case C_nilsy:
            #line 4220
            Gattr.Typtr = Nilptr;
            
            #line 4220
            Gattr.Kind = C_cst;
            
            #line 4221
            Gattr.Cval.Ival = C_nilval;
            
            #line 4222
            P_insymbol(nullptr);
            break;
        }
        
        #line 4225
        if((!(_F.Fsys & Sy)))
        {
            #line 4226
            P_error(nullptr, 6);
            
            #line 4226
            P_block_skip(_F._slink->_slink->_slink->_slink->_slink->_slink, (_F.Fsys + Facbegsys));
        }
    }
}


#line 4436
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
    #line 4438
    P_block_body_statement_selector(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)), _F.Fcp);
    
    #line 4439
    if((Sy == C_becomes))
    {
        #line 4441
        if((Gattr.Typtr != nullptr))
        {
            #line 4442
            if(((Gattr.Access != C_drct) || ((*Gattr.Typtr._ptr).Form > C_power)))
            {
                #line 4443
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 4444
        _F.Lattr = Gattr;
        
        #line 4445
        P_insymbol(nullptr);
        
        #line 4445
        P_block_body_statement_expression(_F._slink, _F._slink->Fsys);
        
        #line 4446
        if((Gattr.Typtr != nullptr))
        {
            #line 4447
            if(((*Gattr.Typtr._ptr).Form <= C_power))
            {
                #line 4447
                P_block_body_load(_F._slink->_slink);
            }
            else
            {
                #line 4448
                P_block_body_loadaddress(_F._slink->_slink);
            }
        }
        
        #line 4449
        if(((_F.Lattr.Typtr != nullptr) && (Gattr.Typtr != nullptr)))
        {
            #line 4451
            if((F_block_comptypes(_F._slink->_slink->_slink, Realptr, _F.Lattr.Typtr) && (Gattr.Typtr == Intptr)))
            {
                #line 4452
                P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(10));
                
                #line 4453
                Gattr.Typtr = Realptr;
            }
            
            #line 4455
            if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
            {
                #line 4456
                if(F_block_filecomponent(_F._slink->_slink->_slink, Gattr.Typtr))
                {
                    #line 4456
                    P_error(nullptr, 191);
                }
                
                #line 4457
                switch((*_F.Lattr.Typtr._ptr).Form)
                {
                case C_scalar:
                case C_subrange:
                    #line 4460
                    if(Debug)
                    {
                        #line 4460
                        P_block_body_checkbnds(_F._slink->_slink, _F.Lattr.Typtr);
                    }
                    
                    #line 4461
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    break;
                
                case C_pointer:
                    #line 4464
                    if(Debug)
                    {
                        #line 4465
                        P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), 0, C_maxaddr, Nilptr);
                    }
                    
                    #line 4466
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    break;
                
                case C_power:
                    #line 4468
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    break;
                
                case C_arrays:
                case C_records:
                    #line 4470
                    P_block_body_gen1(_F._slink->_slink, T_block_body_oprange::C(40), (*_F.Lattr.Typtr._ptr).Size);
                    break;
                
                case C_files:
                    #line 4471
                    P_error(nullptr, 146);
                    break;
                }
            }
            else
            {
                #line 4473
                P_error(nullptr, 129);
            }
        }
    }
    else
    {
        #line 4476
        P_error(nullptr, 51);
    }
}


#line 4479
//================================================================================
// scope: block_body_statement_gotostatement (level : 5)

// activation record
struct Frame_block_body_statement_gotostatement
{
   Frame_block_body_statement* _slink;

    // locals
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
    #line 4483
    if((Sy == C_intconst))
    {
        #line 4485
        _F.Ttop = Top;
        
        #line 4486
        while((Display[_F.Ttop].Occur != C_blck))
        {
            #line 4486
            _F.Ttop = (_F.Ttop - 1);
        }
        
        #line 4487
        _F.Ttop1 = _F.Ttop;
        
        #line 4488
        do
        {
            #line 4489
            P_searchlabel(nullptr, _F.Llp, _F.Ttop);
            
            #line 4490
            if((_F.Llp != nullptr))
            {
                #line 4491
                if((*_F.Llp._ptr).Defined)
                {
                    #line 4492
                    if(((*_F.Llp._ptr).Slevel > _F._slink->_slink->_slink->Stalvl))
                    {
                        #line 4494
                        P_error(nullptr, 185);
                    }
                    else
                    {
                        #line 4495
                        if((((*_F.Llp._ptr).Slevel > 1) && (!(*_F.Llp._ptr).Bact)))
                        {
                            #line 4496
                            P_error(nullptr, 187);
                        }
                    }
                }
                
                #line 4499
                if(((*_F.Llp._ptr).Minlvl > _F._slink->_slink->_slink->Stalvl))
                {
                    #line 4499
                    (*_F.Llp._ptr).Minlvl = _F._slink->_slink->_slink->Stalvl;
                }
                
                #line 4500
                if((_F.Ttop == _F.Ttop1))
                {
                    #line 4501
                    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), (*_F.Llp._ptr).Labname);
                }
                else
                {
                    #line 4503
                    P_block_body_genipj(_F._slink->_slink, T_block_body_oprange::C(66), (Level - (*_F.Llp._ptr).Vlevel), (*_F.Llp._ptr).Labname);
                    
                    #line 4504
                    (*_F.Llp._ptr).Ipcref = C_true;
                }
            }
            
            #line 4507
            _F.Ttop = (_F.Ttop - 1);
        }
        while(!((_F.Llp != nullptr) || (_F.Ttop == 0)));
        
        #line 4509
        if((_F.Llp == nullptr))
        {
            #line 4510
            P_error(nullptr, 167);
            
            #line 4511
            P_newlabel(nullptr, _F.Llp);
        }
        
        #line 4513
        P_insymbol(nullptr);
    }
    else
    {
        #line 4515
        P_error(nullptr, 15);
    }
}


#line 4518
//================================================================================
// scope: block_body_statement_compoundstatement (level : 5)

// activation record
struct Frame_block_body_statement_compoundstatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_boolean Test;
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
    #line 4521
    P_block_body_addlvl(_F._slink->_slink);
    
    #line 4522
    do
    {
        #line 4523
        do
        {
            #line 4523
            P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        }
        while(!(!(Statbegsys & Sy)));
        
        #line 4525
        _F.Test = (Sy != C_semicolon);
        
        #line 4526
        if((!_F.Test))
        {
            #line 4526
            P_insymbol(nullptr);
        }
    }
    while(!_F.Test);
    
    #line 4528
    if((Sy == C_endsy))
    {
        #line 4528
        P_insymbol(nullptr);
    }
    else
    {
        #line 4528
        P_error(nullptr, 13);
    }
    
    #line 4529
    P_block_body_sublvl(_F._slink->_slink);
}


#line 4532
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
    #line 4534
    P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 4535
    P_genlabel(nullptr, _F.Lcix1);
    
    #line 4535
    P_block_body_genfjp(_F._slink->_slink, _F.Lcix1);
    
    #line 4536
    if((Sy == C_thensy))
    {
        #line 4536
        P_insymbol(nullptr);
    }
    else
    {
        #line 4536
        P_error(nullptr, 52);
    }
    
    #line 4537
    P_block_body_addlvl(_F._slink->_slink);
    
    #line 4538
    P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    
    #line 4539
    P_block_body_sublvl(_F._slink->_slink);
    
    #line 4540
    if((Sy == C_elsesy))
    {
        #line 4541
        P_genlabel(nullptr, _F.Lcix2);
        
        #line 4541
        P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Lcix2);
        
        #line 4542
        P_block_body_putlabel(_F._slink->_slink, _F.Lcix1);
        
        #line 4543
        P_insymbol(nullptr);
        
        #line 4544
        P_block_body_addlvl(_F._slink->_slink);
        
        #line 4545
        P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
        
        #line 4546
        P_block_body_sublvl(_F._slink->_slink);
        
        #line 4547
        P_block_body_putlabel(_F._slink->_slink, _F.Lcix2);
    }
    else
    {
        #line 4549
        P_block_body_putlabel(_F._slink->_slink, _F.Lcix1);
    }
}


#line 4552
//================================================================================
// scope: block_body_statement_casestatement (level : 5)

// activation record
struct Frame_block_body_statement_casestatement
{
   Frame_block_body_statement* _slink;

    // locals
    T_cip Fstptr;
    T_integer Laddr;
    T_integer Lcix;
    T_integer Lcix1;
    T_integer Lmax;
    T_integer Lmin;
    T_cip Lpt1;
    T_cip Lpt2;
    T_cip Lpt3;
    T_stp Lsp;
    T_stp Lsp1;
    T_valu Lval;
    T_boolean Test;
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
    #line 4557
    P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 4558
    P_block_body_load(_F._slink->_slink);
    
    #line 4558
    P_genlabel(nullptr, _F.Lcix);
    
    #line 4559
    _F.Lsp = Gattr.Typtr;
    
    #line 4560
    if((_F.Lsp != nullptr))
    {
        #line 4561
        if((((*_F.Lsp._ptr).Form != C_scalar) || (_F.Lsp == Realptr)))
        {
            #line 4562
            P_error(nullptr, 144);
            
            #line 4562
            _F.Lsp = nullptr;
        }
        else
        {
            #line 4563
            if((!F_block_comptypes(_F._slink->_slink->_slink, _F.Lsp, Intptr)))
            {
                #line 4563
                P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), _F.Lsp);
            }
        }
    }
    
    #line 4564
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Lcix);
    
    #line 4565
    if((Sy == C_ofsy))
    {
        #line 4565
        P_insymbol(nullptr);
    }
    else
    {
        #line 4565
        P_error(nullptr, 8);
    }
    
    #line 4566
    _F.Fstptr = nullptr;
    
    #line 4566
    P_genlabel(nullptr, _F.Laddr);
    
    #line 4567
    do
    {
        #line 4568
        _F.Lpt3 = nullptr;
        
        #line 4568
        P_genlabel(nullptr, _F.Lcix1);
        
        #line 4569
        if((!(_setLiteral2 & Sy)))
        {
            #line 4571
            do
            {
                #line 4571
                P_block_constant(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)), _F.Lsp1, _F.Lval);
                
                #line 4572
                if((_F.Lsp != nullptr))
                {
                    #line 4573
                    if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lsp, _F.Lsp1))
                    {
                        #line 4574
                        _F.Lpt1 = _F.Fstptr;
                        
                        #line 4574
                        _F.Lpt2 = nullptr;
                        
                        #line 4575
                        while((_F.Lpt1 != nullptr))
                        {
                            #line 4578
                            if(((*_F.Lpt1._ptr).Cslab <= _F.Lval.Ival))
                            {
                                #line 4579
                                if(((*_F.Lpt1._ptr).Cslab == _F.Lval.Ival))
                                {
                                    #line 4579
                                    P_error(nullptr, 156);
                                }
                                
                                #line 4580
                                goto L_1;
                            }
                            
                            #line 4582
                            _F.Lpt2 = _F.Lpt1;
                            
                            #line 4582
                            _F.Lpt1 = (*_F.Lpt1._ptr).Next;
                        }
                        
                        #line 4584
                        L_1:
                        P_getcas(nullptr, _F.Lpt3);
                        
                        #line 4586
                        (*_F.Lpt3._ptr).Next = _F.Lpt1;
                        
                        #line 4586
                        (*_F.Lpt3._ptr).Cslab = _F.Lval.Ival;
                        
                        #line 4587
                        (*_F.Lpt3._ptr).Csstart = _F.Lcix1;
                        
                        #line 4589
                        if((_F.Lpt2 == nullptr))
                        {
                            #line 4589
                            _F.Fstptr = _F.Lpt3;
                        }
                        else
                        {
                            #line 4590
                            (*_F.Lpt2._ptr).Next = _F.Lpt3;
                        }
                    }
                    else
                    {
                        #line 4592
                        P_error(nullptr, 147);
                    }
                }
                
                #line 4593
                _F.Test = (Sy != C_comma);
                
                #line 4594
                if((!_F.Test))
                {
                    #line 4594
                    P_insymbol(nullptr);
                }
            }
            while(!_F.Test);
            
            #line 4596
            if((Sy == C_colon))
            {
                #line 4596
                P_insymbol(nullptr);
            }
            else
            {
                #line 4596
                P_error(nullptr, 5);
            }
            
            #line 4597
            P_block_body_putlabel(_F._slink->_slink, _F.Lcix1);
            
            #line 4598
            do
            {
                #line 4599
                P_block_body_addlvl(_F._slink->_slink);
                
                #line 4600
                P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
                
                #line 4601
                P_block_body_sublvl(_F._slink->_slink);
            }
            while(!(!(Statbegsys & Sy)));
            
            #line 4603
            if((_F.Lpt3 != nullptr))
            {
                #line 4604
                P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Laddr);
            }
            
            { /* NOP */ }
        }
        
        #line 4606
        _F.Test = (Sy != C_semicolon);
        
        #line 4607
        if((!_F.Test))
        {
            #line 4607
            P_insymbol(nullptr);
        }
    }
    while(!_F.Test);
    
    #line 4609
    P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
    
    #line 4610
    if((_F.Fstptr != nullptr))
    {
        #line 4611
        _F.Lmax = (*_F.Fstptr._ptr).Cslab;
        
        #line 4613
        _F.Lpt1 = _F.Fstptr;
        
        #line 4613
        _F.Fstptr = nullptr;
        
        #line 4614
        do
        {
            #line 4614
            _F.Lpt2 = (*_F.Lpt1._ptr).Next;
            
            #line 4614
            (*_F.Lpt1._ptr).Next = _F.Fstptr;
            
            #line 4615
            _F.Fstptr = _F.Lpt1;
            
            #line 4615
            _F.Lpt1 = _F.Lpt2;
        }
        while(!(_F.Lpt1 == nullptr));
        
        #line 4617
        _F.Lmin = (*_F.Fstptr._ptr).Cslab;
        
        #line 4618
        if(((_F.Lmax - _F.Lmin) < C_block_body_cixmax))
        {
            #line 4620
            P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(45), _F.Lmin, _F.Lmax, Intptr);
            
            #line 4621
            P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(51), 1, _F.Lmin);
            
            #line 4621
            P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(21));
            
            #line 4621
            P_genlabel(nullptr, _F.Lcix);
            
            #line 4622
            P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(44), _F.Lcix);
            
            #line 4622
            P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
            
            #line 4623
            do
            {
                #line 4626
                while(((*_F.Fstptr._ptr).Cslab > _F.Lmin))
                {
                    #line 4627
                    P_block_body_gen0(_F._slink->_slink, T_block_body_oprange::C(60));
                    
                    #line 4628
                    _F.Lmin = (_F.Lmin + 1);
                }
                
                #line 4630
                P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), (*_F.Fstptr._ptr).Csstart);
                
                #line 4631
                _F.Lpt1 = _F.Fstptr;
                
                #line 4631
                _F.Fstptr = (*_F.Fstptr._ptr).Next;
                
                #line 4631
                _F.Lmin = (_F.Lmin + 1);
                
                #line 4632
                P_putcas(nullptr, _F.Lpt1);
                
                { /* NOP */ }
            }
            while(!(_F.Fstptr == nullptr));
            
            #line 4635
            P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
        }
        else
        {
            #line 4638
            P_error(nullptr, 157);
            
            #line 4639
            do
            {
                #line 4642
                _F.Lpt1 = _F.Fstptr;
                
                #line 4642
                _F.Fstptr = (*_F.Fstptr._ptr).Next;
                
                #line 4643
                P_putcas(nullptr, _F.Lpt1);
                
                { /* NOP */ }
            }
            while(!(_F.Fstptr == nullptr));
        }
    }
    
    #line 4648
    if((Sy == C_endsy))
    {
        #line 4648
        P_insymbol(nullptr);
    }
    else
    {
        #line 4648
        P_error(nullptr, 13);
    }
}


#line 4651
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
    #line 4653
    P_genlabel(nullptr, _F.Laddr);
    
    #line 4653
    P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
    
    #line 4654
    do
    {
        #line 4655
        P_block_body_addlvl(_F._slink->_slink);
        
        #line 4656
        P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
        
        #line 4657
        P_block_body_sublvl(_F._slink->_slink);
        
        #line 4658
        if((Statbegsys & Sy))
        {
            #line 4658
            P_error(nullptr, 14);
        }
    }
    while(!(!(Statbegsys & Sy)));
    
    #line 4660
    while((Sy == C_semicolon))
    {
        #line 4661
        P_insymbol(nullptr);
        
        #line 4662
        do
        {
            #line 4663
            P_block_body_addlvl(_F._slink->_slink);
            
            #line 4664
            P_block_body_statement(_F._slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
            
            #line 4665
            if((Statbegsys & Sy))
            {
                #line 4665
                P_error(nullptr, 14);
            }
            
            #line 4666
            P_block_body_sublvl(_F._slink->_slink);
        }
        while(!(!(Statbegsys & Sy)));
        
        { /* NOP */ }
    }
    
    #line 4669
    if((Sy == C_untilsy))
    {
        #line 4670
        P_insymbol(nullptr);
        
        #line 4670
        P_block_body_statement_expression(_F._slink, _F._slink->Fsys);
        
        #line 4670
        P_block_body_genfjp(_F._slink->_slink, _F.Laddr);
    }
    else
    {
        #line 4672
        P_error(nullptr, 53);
    }
    
    { /* NOP */ }
}


#line 4675
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
    #line 4677
    P_genlabel(nullptr, _F.Laddr);
    
    #line 4677
    P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
    
    #line 4678
    P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral1)));
    
    #line 4678
    P_genlabel(nullptr, _F.Lcix);
    
    #line 4678
    P_block_body_genfjp(_F._slink->_slink, _F.Lcix);
    
    #line 4679
    if((Sy == C_dosy))
    {
        #line 4679
        P_insymbol(nullptr);
    }
    else
    {
        #line 4679
        P_error(nullptr, 54);
    }
    
    #line 4680
    P_block_body_addlvl(_F._slink->_slink);
    
    #line 4681
    P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 4682
    P_block_body_sublvl(_F._slink->_slink);
    
    #line 4683
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Laddr);
    
    #line 4683
    P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
}


#line 4686
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
    T_addrrange Lcs;
    T_addrrange Llc;
    T_symbol Lsy;
    T_char Typind;
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
    #line 4691
    _F.Llc = Lc;
    
    #line 4693
    _F.Lattr.Typtr = nullptr;
    
    #line 4693
    _F.Lattr.Kind = C_varbl;
    
    #line 4694
    _F.Lattr.Access = C_drct;
    
    #line 4694
    _F.Lattr.Vlevel = Level;
    
    #line 4694
    _F.Lattr.Dplmt = 0;
    
    #line 4696
    _F.Typind = 'i';
    
    #line 4697
    if((Sy == C_ident))
    {
        #line 4698
        P_searchid(nullptr, T_setofids::C(_setLiteral1), _F._slink->Lcp);
        
        #line 4700
        _F.Lattr.Typtr = (*_F._slink->Lcp._ptr).Idtype;
        
        #line 4700
        _F.Lattr.Kind = C_varbl;
        
        #line 4701
        if(((*_F._slink->Lcp._ptr).Vkind == C_actual))
        {
            #line 4702
            _F.Lattr.Access = C_drct;
            
            #line 4702
            _F.Lattr.Vlevel = (*_F._slink->Lcp._ptr).Vlev;
            
            #line 4703
            if(((*_F._slink->Lcp._ptr).Vlev != Level))
            {
                #line 4703
                P_error(nullptr, 183);
            }
            
            #line 4704
            _F.Lattr.Dplmt = (*_F._slink->Lcp._ptr).Vaddr;
        }
        else
        {
            #line 4706
            P_error(nullptr, 155);
            
            #line 4706
            _F.Lattr.Typtr = nullptr;
        }
        
        #line 4709
        if((_F.Lattr.Typtr == Boolptr))
        {
            #line 4709
            _F.Typind = 'b';
        }
        else
        {
            #line 4710
            if((_F.Lattr.Typtr == Charptr))
            {
                #line 4710
                _F.Typind = 'c';
            }
        }
        
        #line 4711
        if((_F.Lattr.Typtr != nullptr))
        {
            #line 4712
            if((((*_F.Lattr.Typtr._ptr).Form > C_subrange) || F_block_comptypes(_F._slink->_slink->_slink, Realptr, _F.Lattr.Typtr)))
            {
                #line 4714
                P_error(nullptr, 143);
                
                #line 4714
                _F.Lattr.Typtr = nullptr;
            }
        }
        
        #line 4715
        P_insymbol(nullptr);
    }
    else
    {
        #line 4718
        P_error(nullptr, 2);
        
        #line 4718
        P_block_skip(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)));
    }
    
    #line 4719
    if((Sy == C_becomes))
    {
        #line 4720
        P_insymbol(nullptr);
        
        #line 4720
        P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral3)));
        
        #line 4721
        if((Gattr.Typtr != nullptr))
        {
            #line 4722
            if(((*Gattr.Typtr._ptr).Form != C_scalar))
            {
                #line 4722
                P_error(nullptr, 144);
            }
            else
            {
                #line 4724
                if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
                {
                    #line 4725
                    P_block_body_load(_F._slink->_slink);
                    
                    #line 4725
                    P_align(nullptr, Intptr, Lc);
                    
                    #line 4727
                    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(56), 0, Lc, Intptr);
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 4728
                    P_error(nullptr, 145);
                }
            }
        }
    }
    else
    {
        #line 4731
        P_error(nullptr, 51);
        
        #line 4731
        P_block_skip(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral4)));
    }
    
    #line 4732
    if((_setLiteral5 & Sy))
    {
        #line 4733
        _F.Lsy = Sy;
        
        #line 4733
        P_insymbol(nullptr);
        
        #line 4733
        P_block_body_statement_expression(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral6)));
        
        #line 4734
        if((Gattr.Typtr != nullptr))
        {
            #line 4735
            if(((*Gattr.Typtr._ptr).Form != C_scalar))
            {
                #line 4735
                P_error(nullptr, 144);
            }
            else
            {
                #line 4737
                if(F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Gattr.Typtr))
                {
                    #line 4739
                    P_block_body_load(_F._slink->_slink);
                    
                    #line 4739
                    P_align(nullptr, Intptr, Lc);
                    
                    #line 4740
                    if((!F_block_comptypes(_F._slink->_slink->_slink, _F.Lattr.Typtr, Intptr)))
                    {
                        #line 4741
                        P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                    }
                    
                    #line 4742
                    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(56), 0, (Lc + C_intsize), Intptr);
                    
                    #line 4744
                    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), 0, Lc, Intptr);
                    
                    #line 4745
                    P_block_body_store(_F._slink->_slink, _F.Lattr);
                    
                    #line 4746
                    P_genlabel(nullptr, _F.Laddr);
                    
                    #line 4746
                    P_block_body_putlabel(_F._slink->_slink, _F.Laddr);
                    
                    #line 4747
                    Gattr = _F.Lattr;
                    
                    #line 4747
                    P_block_body_load(_F._slink->_slink);
                    
                    #line 4748
                    if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
                    {
                        #line 4749
                        P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
                    }
                    
                    #line 4750
                    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), 0, (Lc + C_intsize), Intptr);
                    
                    #line 4751
                    _F.Lcs = Lc;
                    
                    #line 4752
                    Lc = ((Lc + C_intsize) + C_intsize);
                    
                    #line 4753
                    if((Lc > _F._slink->_slink->Lcmax))
                    {
                        #line 4753
                        _F._slink->_slink->Lcmax = Lc;
                    }
                    
                    #line 4754
                    if((_F.Lsy == C_tosy))
                    {
                        #line 4754
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(52), _ord(_F.Typind), 1);
                    }
                    else
                    {
                        #line 4755
                        P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(48), _ord(_F.Typind), 1);
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 4757
                    P_error(nullptr, 145);
                }
            }
        }
    }
    else
    {
        #line 4759
        P_error(nullptr, 55);
        
        #line 4759
        P_block_skip(_F._slink->_slink->_slink, T_setofsys::C((_F._slink->Fsys + _setLiteral7)));
    }
    
    #line 4760
    P_genlabel(nullptr, _F.Lcix);
    
    #line 4760
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(33), _F.Lcix);
    
    #line 4761
    if((Sy == C_dosy))
    {
        #line 4761
        P_insymbol(nullptr);
    }
    else
    {
        #line 4761
        P_error(nullptr, 54);
    }
    
    #line 4762
    P_block_body_addlvl(_F._slink->_slink);
    
    #line 4763
    P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 4764
    P_block_body_sublvl(_F._slink->_slink);
    
    #line 4765
    Gattr = _F.Lattr;
    
    #line 4765
    P_block_body_load(_F._slink->_slink);
    
    #line 4766
    if((!F_block_comptypes(_F._slink->_slink->_slink, Gattr.Typtr, Intptr)))
    {
        #line 4767
        P_block_body_gen0t(_F._slink->_slink, T_block_body_oprange::C(58), Gattr.Typtr);
    }
    
    #line 4768
    P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(54), 0, (_F.Lcs + C_intsize), Intptr);
    
    #line 4769
    P_block_body_gen2(_F._slink->_slink, T_block_body_oprange::C(47), _ord(_F.Typind), 1);
    
    #line 4770
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(73), _F.Lcix);
    
    #line 4771
    Gattr = _F.Lattr;
    
    #line 4771
    P_block_body_load(_F._slink->_slink);
    
    #line 4772
    if((_F.Lsy == C_tosy))
    {
        #line 4772
        P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(34), 1, Gattr.Typtr);
    }
    else
    {
        #line 4773
        P_block_body_gen1t(_F._slink->_slink, T_block_body_oprange::C(31), 1, Gattr.Typtr);
    }
    
    #line 4774
    P_block_body_store(_F._slink->_slink, _F.Lattr);
    
    #line 4774
    P_block_body_genujpxjp(_F._slink->_slink, T_block_body_oprange::C(57), _F.Laddr);
    
    #line 4774
    P_block_body_putlabel(_F._slink->_slink, _F.Lcix);
    
    #line 4775
    Lc = _F.Llc;
    
    { /* NOP */ }
}


#line 4778
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
    T_boolean Test;
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
    #line 4781
    _F.Lcnt1 = 0;
    
    #line 4781
    _F.Llc = Lc;
    
    #line 4782
    do
    {
        #line 4783
        if((Sy == C_ident))
        {
            #line 4784
            P_searchid(nullptr, T_setofids::C(_setLiteral1), _F.Lcp);
            
            #line 4784
            P_insymbol(nullptr);
        }
        else
        {
            #line 4785
            P_error(nullptr, 2);
            
            #line 4785
            _F.Lcp = Uvarptr;
        }
        
        #line 4786
        P_block_body_statement_selector(_F._slink, T_setofsys::C((_F._slink->Fsys + _setLiteral2)), _F.Lcp);
        
        #line 4787
        if((Gattr.Typtr != nullptr))
        {
            #line 4788
            if(((*Gattr.Typtr._ptr).Form == C_records))
            {
                #line 4789
                if((Top < C_displimit))
                {
                    #line 4790
                    Top = (Top + 1);
                    
                    #line 4790
                    _F.Lcnt1 = (_F.Lcnt1 + 1);
                    
                    #line 4792
                    Display[Top].Fname = (*Gattr.Typtr._ptr).Fstfld;
                    
                    #line 4793
                    Display[Top].Flabel = nullptr;
                    
                    #line 4794
                    Display[Top].Flabel = nullptr;
                    
                    #line 4795
                    Display[Top].Fconst = nullptr;
                    
                    #line 4796
                    Display[Top].Fstruct = nullptr;
                    
                    { /* NOP */ }
                    
                    #line 4798
                    if((Gattr.Access == C_drct))
                    {
                        #line 4800
                        Display[Top].Occur = C_crec;
                        
                        #line 4800
                        Display[Top].Clev = Gattr.Vlevel;
                        
                        #line 4801
                        Display[Top].Cdspl = Gattr.Dplmt;
                    }
                    else
                    {
                        #line 4804
                        P_block_body_loadaddress(_F._slink->_slink);
                        
                        #line 4805
                        P_align(nullptr, Nilptr, Lc);
                        
                        #line 4806
                        P_block_body_gen2t(_F._slink->_slink, T_block_body_oprange::C(56), 0, Lc, Nilptr);
                        
                        #line 4808
                        Display[Top].Occur = C_vrec;
                        
                        #line 4808
                        Display[Top].Vdspl = Lc;
                        
                        #line 4809
                        Lc = (Lc + C_ptrsize);
                        
                        #line 4810
                        if((Lc > _F._slink->_slink->Lcmax))
                        {
                            #line 4810
                            _F._slink->_slink->Lcmax = Lc;
                        }
                    }
                }
                else
                {
                    #line 4813
                    P_error(nullptr, 250);
                }
            }
            else
            {
                #line 4814
                P_error(nullptr, 140);
            }
        }
        
        #line 4815
        _F.Test = (Sy != C_comma);
        
        #line 4816
        if((!_F.Test))
        {
            #line 4816
            P_insymbol(nullptr);
        }
    }
    while(!_F.Test);
    
    #line 4818
    if((Sy == C_dosy))
    {
        #line 4818
        P_insymbol(nullptr);
    }
    else
    {
        #line 4818
        P_error(nullptr, 54);
    }
    
    #line 4819
    P_block_body_addlvl(_F._slink->_slink);
    
    #line 4820
    P_block_body_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 4821
    P_block_body_sublvl(_F._slink->_slink);
    
    #line 4823
    while((_F.Lcnt1 > 0))
    {
        #line 4825
        Display[Top].Fname = nullptr;
        
        #line 4826
        P_putdsp(nullptr, Top);
        
        #line 4827
        Top = (Top - 1);
        
        #line 4827
        _F.Lcnt1 = (_F.Lcnt1 - 1);
        
        { /* NOP */ }
    }
    
    #line 4829
    Lc = _F.Llc;
    
    { /* NOP */ }
}


#line 5017
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
    #line 5020
    if((Sy == C_progsy))
    {
        #line 5021
        P_insymbol(nullptr);
        
        #line 5021
        if((Sy != C_ident))
        {
            #line 5021
            P_error(nullptr, 2);
        }
        
        #line 5021
        P_insymbol(nullptr);
        
        #line 5022
        if((!(_setLiteral1 & Sy)))
        {
            #line 5022
            P_error(nullptr, 14);
        }
        
        #line 5023
        if((Sy == C_lparent))
        {
            #line 5025
            do
            {
                #line 5025
                P_insymbol(nullptr);
                
                #line 5026
                if((Sy == C_ident))
                {
                    #line 5027
                    P_getfil(nullptr, _F.Extfp);
                    
                    #line 5029
                    (*_F.Extfp._ptr).Filename = Id;
                    
                    #line 5029
                    (*_F.Extfp._ptr).Nextfile = Fextfilep;
                    
                    #line 5030
                    Fextfilep = _F.Extfp;
                    
                    #line 5032
                    if(F_strequri(nullptr, T_restr::C("input    "), Id))
                    {
                        #line 5032
                        Inputhdf = C_true;
                    }
                    else
                    {
                        #line 5033
                        if(F_strequri(nullptr, T_restr::C("output   "), Id))
                        {
                            #line 5033
                            Outputhdf = C_true;
                        }
                    }
                    
                    #line 5034
                    P_insymbol(nullptr);
                    
                    #line 5035
                    if((!(_setLiteral2 & Sy)))
                    {
                        #line 5035
                        P_error(nullptr, 20);
                    }
                }
                else
                {
                    #line 5037
                    P_error(nullptr, 2);
                }
            }
            while(!(Sy != C_comma));
            
            #line 5039
            if((Sy != C_rparent))
            {
                #line 5039
                P_error(nullptr, 4);
            }
            
            #line 5040
            P_insymbol(nullptr);
        }
        
        #line 5042
        if((Sy != C_semicolon))
        {
            #line 5042
            P_error(nullptr, 14);
        }
        else
        {
            #line 5043
            P_insymbol(nullptr);
        }
        
        { /* NOP */ }
    }
    else
    {
        #line 5044
        P_error(nullptr, 3);
    }
    
    #line 5045
    do
    {
        #line 5045
        P_block(nullptr, _F.Fsys, C_period, T_ctp::C(nullptr));
        
        #line 5046
        if((Sy != C_period))
        {
            #line 5046
            P_error(nullptr, 21);
        }
    }
    while(!((Sy == C_period) || _eof(Input)));
    
    #line 5048
    if(List)
    {
        #line 5048
        Output << _WRITELN;
    }
    
    #line 5049
    if((Errinx != 0))
    {
        #line 5050
        List = C_false;
        
        #line 5050
        P_endofline(nullptr);
    }
    
    { /* NOP */ }
}


#line 5054
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
    #line 5057
    Na[1] = "false    ";
    
    #line 5057
    Na[2] = "true     ";
    
    #line 5057
    Na[3] = "input    ";
    
    #line 5058
    Na[4] = "output   ";
    
    #line 5058
    Na[5] = "get      ";
    
    #line 5058
    Na[6] = "put      ";
    
    #line 5059
    Na[7] = "reset    ";
    
    #line 5059
    Na[8] = "rewrite  ";
    
    #line 5059
    Na[9] = "read     ";
    
    #line 5060
    Na[10] = "write    ";
    
    #line 5060
    Na[11] = "pack     ";
    
    #line 5060
    Na[12] = "unpack   ";
    
    #line 5061
    Na[13] = "new      ";
    
    #line 5061
    Na[14] = "---      ";
    
    #line 5061
    Na[15] = "readln   ";
    
    #line 5062
    Na[16] = "writeln  ";
    
    #line 5063
    Na[17] = "abs      ";
    
    #line 5063
    Na[18] = "sqr      ";
    
    #line 5063
    Na[19] = "trunc    ";
    
    #line 5064
    Na[20] = "odd      ";
    
    #line 5064
    Na[21] = "ord      ";
    
    #line 5064
    Na[22] = "chr      ";
    
    #line 5065
    Na[23] = "pred     ";
    
    #line 5065
    Na[24] = "succ     ";
    
    #line 5065
    Na[25] = "eof      ";
    
    #line 5066
    Na[26] = "eoln     ";
    
    #line 5067
    Na[27] = "sin      ";
    
    #line 5067
    Na[28] = "cos      ";
    
    #line 5067
    Na[29] = "exp      ";
    
    #line 5068
    Na[30] = "sqrt     ";
    
    #line 5068
    Na[31] = "ln       ";
    
    #line 5068
    Na[32] = "arctan   ";
    
    #line 5069
    Na[33] = "prd      ";
    
    #line 5069
    Na[34] = "prr      ";
    
    #line 5069
    Na[35] = "---      ";
    
    #line 5070
    Na[36] = "maxint   ";
    
    #line 5070
    Na[37] = "round    ";
    
    #line 5070
    Na[38] = "page     ";
    
    #line 5071
    Na[39] = "dispose  ";
    
    { /* NOP */ }
}


#line 5074
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
    #line 5079
    {
        _new(Intptr._ptr);
        _setValue(Intptr._ptr->Form, C_scalar);
        _setValue(Intptr._ptr->Scalkind, C_standard);
    }
    
    #line 5079
    P_pshstc(nullptr, Intptr);
    
    #line 5081
    (*Intptr._ptr).Size = C_intsize;
    
    #line 5081
    (*Intptr._ptr).Form = C_scalar;
    
    #line 5081
    (*Intptr._ptr).Scalkind = C_standard;
    
    #line 5082
    {
        _new(Realptr._ptr);
        _setValue(Realptr._ptr->Form, C_scalar);
        _setValue(Realptr._ptr->Scalkind, C_standard);
    }
    
    #line 5082
    P_pshstc(nullptr, Realptr);
    
    #line 5084
    (*Realptr._ptr).Size = C_realsize;
    
    #line 5084
    (*Realptr._ptr).Form = C_scalar;
    
    #line 5084
    (*Realptr._ptr).Scalkind = C_standard;
    
    #line 5085
    {
        _new(Charptr._ptr);
        _setValue(Charptr._ptr->Form, C_scalar);
        _setValue(Charptr._ptr->Scalkind, C_standard);
    }
    
    #line 5085
    P_pshstc(nullptr, Charptr);
    
    #line 5087
    (*Charptr._ptr).Size = C_charsize;
    
    #line 5087
    (*Charptr._ptr).Form = C_scalar;
    
    #line 5087
    (*Charptr._ptr).Scalkind = C_standard;
    
    #line 5088
    {
        _new(Boolptr._ptr);
        _setValue(Boolptr._ptr->Form, C_scalar);
        _setValue(Boolptr._ptr->Scalkind, C_declared);
    }
    
    #line 5088
    P_pshstc(nullptr, Boolptr);
    
    #line 5090
    (*Boolptr._ptr).Size = C_boolsize;
    
    #line 5090
    (*Boolptr._ptr).Form = C_scalar;
    
    #line 5090
    (*Boolptr._ptr).Scalkind = C_declared;
    
    #line 5091
    {
        _new(Nilptr._ptr);
        _setValue(Nilptr._ptr->Form, C_pointer);
    }
    
    #line 5091
    P_pshstc(nullptr, Nilptr);
    
    #line 5093
    (*Nilptr._ptr).Eltype = nullptr;
    
    #line 5093
    (*Nilptr._ptr).Size = C_ptrsize;
    
    #line 5093
    (*Nilptr._ptr).Form = C_pointer;
    
    #line 5095
    {
        _new(Parmptr._ptr);
        _setValue(Parmptr._ptr->Form, C_scalar);
        _setValue(Parmptr._ptr->Scalkind, C_standard);
    }
    
    #line 5095
    P_pshstc(nullptr, Parmptr);
    
    #line 5097
    (*Parmptr._ptr).Size = C_parmsize;
    
    #line 5097
    (*Parmptr._ptr).Form = C_scalar;
    
    #line 5097
    (*Parmptr._ptr).Scalkind = C_standard;
    
    #line 5098
    {
        _new(Textptr._ptr);
        _setValue(Textptr._ptr->Form, C_files);
    }
    
    #line 5098
    P_pshstc(nullptr, Textptr);
    
    #line 5100
    (*Textptr._ptr).Filtype = Charptr;
    
    #line 5100
    (*Textptr._ptr).Size = (C_filesize + C_charsize);
    
    #line 5100
    (*Textptr._ptr).Form = C_files;
}


#line 5103
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
    #line 5109
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 5109
    P_ininam(nullptr, _F.Cp);
    
    #line 5111
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, T_restr::C("integer  "));
    
    #line 5111
    (*_F.Cp._ptr).Idtype = Intptr;
    
    #line 5111
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 5112
    P_enterid(nullptr, _F.Cp);
    
    #line 5113
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 5113
    P_ininam(nullptr, _F.Cp);
    
    #line 5115
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, T_restr::C("real     "));
    
    #line 5115
    (*_F.Cp._ptr).Idtype = Realptr;
    
    #line 5115
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 5116
    P_enterid(nullptr, _F.Cp);
    
    #line 5117
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 5117
    P_ininam(nullptr, _F.Cp);
    
    #line 5119
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, T_restr::C("char     "));
    
    #line 5119
    (*_F.Cp._ptr).Idtype = Charptr;
    
    #line 5119
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 5120
    P_enterid(nullptr, _F.Cp);
    
    #line 5121
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 5121
    P_ininam(nullptr, _F.Cp);
    
    #line 5123
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, T_restr::C("boolean  "));
    
    #line 5123
    (*_F.Cp._ptr).Idtype = Boolptr;
    
    #line 5123
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 5124
    P_enterid(nullptr, _F.Cp);
    
    #line 5125
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_types);
    }
    
    #line 5125
    P_ininam(nullptr, _F.Cp);
    
    #line 5127
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, T_restr::C("text     "));
    
    #line 5127
    (*_F.Cp._ptr).Idtype = Textptr;
    
    #line 5127
    (*_F.Cp._ptr).Klass = C_types;
    
    #line 5128
    P_enterid(nullptr, _F.Cp);
    
    #line 5129
    _F.Cp1 = nullptr;
    
    #line 5130
    _FOR_TO(_F.i, 1, 2)
    {
        #line 5131
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_konst);
        }
        
        #line 5131
        P_ininam(nullptr, _F.Cp);
        
        #line 5133
        P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[_F.i]);
        
        #line 5133
        (*_F.Cp._ptr).Idtype = Boolptr;
        
        #line 5134
        (*_F.Cp._ptr).Next = _F.Cp1;
        
        #line 5134
        (*_F.Cp._ptr).Values.Ival = (_F.i - 1);
        
        #line 5134
        (*_F.Cp._ptr).Klass = C_konst;
        
        #line 5136
        P_enterid(nullptr, _F.Cp);
        
        #line 5136
        _F.Cp1 = _F.Cp;
    }
    _FOR_END(_F.i)
    
    #line 5138
    (*Boolptr._ptr).Fconst = _F.Cp;
    
    #line 5139
    _FOR_TO(_F.i, 3, 4)
    {
        #line 5140
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_vars);
        }
        
        #line 5140
        P_ininam(nullptr, _F.Cp);
        
        #line 5142
        P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[_F.i]);
        
        #line 5142
        (*_F.Cp._ptr).Idtype = Textptr;
        
        #line 5142
        (*_F.Cp._ptr).Klass = C_vars;
        
        #line 5143
        (*_F.Cp._ptr).Vkind = C_actual;
        
        #line 5143
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 5143
        (*_F.Cp._ptr).Vlev = 1;
        
        #line 5144
        (*_F.Cp._ptr).Vaddr = (C_lcaftermarkstack + ((_F.i - 3) * (C_filesize + C_charsize)));
        
        { /* NOP */ }
        
        #line 5146
        P_enterid(nullptr, _F.Cp);
        
        #line 5147
        if((_F.i == 3))
        {
            #line 5147
            Inputptr = _F.Cp;
        }
        else
        {
            #line 5147
            Outputptr = _F.Cp;
        }
    }
    _FOR_END(_F.i)
    
    #line 5149
    _FOR_TO(_F.i, 33, 34)
    {
        #line 5150
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_vars);
        }
        
        #line 5150
        P_ininam(nullptr, _F.Cp);
        
        #line 5152
        P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[_F.i]);
        
        #line 5152
        (*_F.Cp._ptr).Idtype = Textptr;
        
        #line 5152
        (*_F.Cp._ptr).Klass = C_vars;
        
        #line 5153
        (*_F.Cp._ptr).Vkind = C_actual;
        
        #line 5153
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 5153
        (*_F.Cp._ptr).Vlev = 1;
        
        #line 5154
        (*_F.Cp._ptr).Vaddr = (C_lcaftermarkstack + ((_F.i - 31) * (C_filesize + C_charsize)));
        
        { /* NOP */ }
        
        #line 5156
        P_enterid(nullptr, _F.Cp);
    }
    _FOR_END(_F.i)
    
    #line 5158
    _FOR_TO(_F.i, 5, 16)
    {
        #line 5158
        if((_F.i != 14))
        {
            #line 5159
            {
                _new(_F.Cp._ptr);
                _setValue(_F.Cp._ptr->Klass, C_proc);
                _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
            }
            
            #line 5159
            P_ininam(nullptr, _F.Cp);
            
            #line 5161
            P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[_F.i]);
            
            #line 5161
            (*_F.Cp._ptr).Idtype = nullptr;
            
            #line 5162
            (*_F.Cp._ptr).Pflist = nullptr;
            
            #line 5162
            (*_F.Cp._ptr).Next = nullptr;
            
            #line 5162
            (*_F.Cp._ptr).Key = (_F.i - 4);
            
            #line 5163
            (*_F.Cp._ptr).Klass = C_proc;
            
            #line 5163
            (*_F.Cp._ptr).Pfdeckind = C_standard;
            
            #line 5165
            P_enterid(nullptr, _F.Cp);
        }
    }
    _FOR_END(_F.i)
    
    #line 5167
    _FOR_TO(_F.i, 17, 26)
    {
        #line 5168
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_func);
            _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
        }
        
        #line 5168
        P_ininam(nullptr, _F.Cp);
        
        #line 5170
        P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[_F.i]);
        
        #line 5170
        (*_F.Cp._ptr).Idtype = nullptr;
        
        #line 5171
        (*_F.Cp._ptr).Pflist = nullptr;
        
        #line 5171
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 5171
        (*_F.Cp._ptr).Key = (_F.i - 16);
        
        #line 5172
        (*_F.Cp._ptr).Klass = C_func;
        
        #line 5172
        (*_F.Cp._ptr).Pfdeckind = C_standard;
        
        #line 5174
        P_enterid(nullptr, _F.Cp);
    }
    _FOR_END(_F.i)
    
    #line 5176
    _FOR_TO(_F.i, 27, 32)
    {
        #line 5178
        {
            _new(_F.Cp._ptr);
            _setValue(_F.Cp._ptr->Klass, C_vars);
        }
        
        #line 5178
        P_ininam(nullptr, _F.Cp);
        
        #line 5180
        P_strassvr(nullptr, (*_F.Cp._ptr).Name, T_restr::C("         "));
        
        #line 5180
        (*_F.Cp._ptr).Idtype = Realptr;
        
        #line 5180
        (*_F.Cp._ptr).Klass = C_vars;
        
        #line 5181
        (*_F.Cp._ptr).Vkind = C_actual;
        
        #line 5181
        (*_F.Cp._ptr).Next = nullptr;
        
        #line 5181
        (*_F.Cp._ptr).Vlev = 1;
        
        #line 5181
        (*_F.Cp._ptr).Vaddr = 0;
        
        #line 5183
        {
            _new(_F.Cp1._ptr);
            _setValue(_F.Cp1._ptr->Klass, C_func);
            _setValue(_F.Cp1._ptr->Pfdeckind, C_declared);
            _setValue(_F.Cp1._ptr->Pfkind, C_actual);
        }
        
        #line 5183
        P_ininam(nullptr, _F.Cp1);
        
        #line 5185
        P_strassvr(nullptr, (*_F.Cp1._ptr).Name, Na[_F.i]);
        
        #line 5185
        (*_F.Cp1._ptr).Idtype = Realptr;
        
        #line 5185
        (*_F.Cp1._ptr).Pflist = _F.Cp;
        
        #line 5186
        (*_F.Cp1._ptr).Forwdecl = C_false;
        
        #line 5186
        (*_F.Cp1._ptr).Externl = C_true;
        
        #line 5186
        (*_F.Cp1._ptr).Pflev = 0;
        
        #line 5186
        (*_F.Cp1._ptr).Pfname = (_F.i - 12);
        
        #line 5187
        (*_F.Cp1._ptr).Klass = C_func;
        
        #line 5187
        (*_F.Cp1._ptr).Pfdeckind = C_declared;
        
        #line 5187
        (*_F.Cp1._ptr).Pfkind = C_actual;
        
        #line 5189
        P_enterid(nullptr, _F.Cp1);
    }
    _FOR_END(_F.i)
    
    #line 5191
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_konst);
    }
    
    #line 5191
    P_ininam(nullptr, _F.Cp);
    
    #line 5193
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[36]);
    
    #line 5193
    (*_F.Cp._ptr).Idtype = Intptr;
    
    #line 5194
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 5194
    (*_F.Cp._ptr).Values.Ival = C_maxint;
    
    #line 5194
    (*_F.Cp._ptr).Klass = C_konst;
    
    #line 5195
    P_enterid(nullptr, _F.Cp);
    
    #line 5196
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_func);
        _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
    }
    
    #line 5196
    P_ininam(nullptr, _F.Cp);
    
    #line 5198
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[37]);
    
    #line 5198
    (*_F.Cp._ptr).Idtype = nullptr;
    
    #line 5199
    (*_F.Cp._ptr).Pflist = nullptr;
    
    #line 5199
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 5199
    (*_F.Cp._ptr).Key = 16;
    
    #line 5200
    (*_F.Cp._ptr).Klass = C_func;
    
    #line 5200
    (*_F.Cp._ptr).Pfdeckind = C_standard;
    
    #line 5201
    P_enterid(nullptr, _F.Cp);
    
    #line 5202
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_proc);
        _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
    }
    
    #line 5202
    P_ininam(nullptr, _F.Cp);
    
    #line 5204
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[38]);
    
    #line 5204
    (*_F.Cp._ptr).Idtype = nullptr;
    
    #line 5205
    (*_F.Cp._ptr).Pflist = nullptr;
    
    #line 5205
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 5205
    (*_F.Cp._ptr).Key = 17;
    
    #line 5206
    (*_F.Cp._ptr).Klass = C_proc;
    
    #line 5206
    (*_F.Cp._ptr).Pfdeckind = C_standard;
    
    #line 5207
    P_enterid(nullptr, _F.Cp);
    
    #line 5208
    {
        _new(_F.Cp._ptr);
        _setValue(_F.Cp._ptr->Klass, C_proc);
        _setValue(_F.Cp._ptr->Pfdeckind, C_standard);
    }
    
    #line 5208
    P_ininam(nullptr, _F.Cp);
    
    #line 5210
    P_strassvr(nullptr, (*_F.Cp._ptr).Name, Na[39]);
    
    #line 5210
    (*_F.Cp._ptr).Idtype = nullptr;
    
    #line 5211
    (*_F.Cp._ptr).Pflist = nullptr;
    
    #line 5211
    (*_F.Cp._ptr).Next = nullptr;
    
    #line 5211
    (*_F.Cp._ptr).Key = 18;
    
    #line 5212
    (*_F.Cp._ptr).Klass = C_proc;
    
    #line 5212
    (*_F.Cp._ptr).Pfdeckind = C_standard;
    
    #line 5213
    P_enterid(nullptr, _F.Cp);
}


#line 5216
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
    #line 5218
    {
        _new(Utypptr._ptr);
        _setValue(Utypptr._ptr->Klass, C_types);
    }
    
    #line 5218
    P_ininam(nullptr, Utypptr);
    
    #line 5220
    P_strassvr(nullptr, (*Utypptr._ptr).Name, T_restr::C("         "));
    
    #line 5220
    (*Utypptr._ptr).Idtype = nullptr;
    
    #line 5220
    (*Utypptr._ptr).Klass = C_types;
    
    #line 5221
    {
        _new(Ucstptr._ptr);
        _setValue(Ucstptr._ptr->Klass, C_konst);
    }
    
    #line 5221
    P_ininam(nullptr, Ucstptr);
    
    #line 5223
    P_strassvr(nullptr, (*Ucstptr._ptr).Name, T_restr::C("         "));
    
    #line 5223
    (*Ucstptr._ptr).Idtype = nullptr;
    
    #line 5223
    (*Ucstptr._ptr).Next = nullptr;
    
    #line 5224
    (*Ucstptr._ptr).Values.Ival = 0;
    
    #line 5224
    (*Ucstptr._ptr).Klass = C_konst;
    
    #line 5226
    {
        _new(Uvarptr._ptr);
        _setValue(Uvarptr._ptr->Klass, C_vars);
    }
    
    #line 5226
    P_ininam(nullptr, Uvarptr);
    
    #line 5228
    P_strassvr(nullptr, (*Uvarptr._ptr).Name, T_restr::C("         "));
    
    #line 5228
    (*Uvarptr._ptr).Idtype = nullptr;
    
    #line 5228
    (*Uvarptr._ptr).Vkind = C_actual;
    
    #line 5229
    (*Uvarptr._ptr).Next = nullptr;
    
    #line 5229
    (*Uvarptr._ptr).Vlev = 0;
    
    #line 5229
    (*Uvarptr._ptr).Vaddr = 0;
    
    #line 5229
    (*Uvarptr._ptr).Klass = C_vars;
    
    #line 5231
    {
        _new(Ufldptr._ptr);
        _setValue(Ufldptr._ptr->Klass, C_field);
    }
    
    #line 5231
    P_ininam(nullptr, Ufldptr);
    
    #line 5233
    P_strassvr(nullptr, (*Ufldptr._ptr).Name, T_restr::C("         "));
    
    #line 5233
    (*Ufldptr._ptr).Idtype = nullptr;
    
    #line 5233
    (*Ufldptr._ptr).Next = nullptr;
    
    #line 5233
    (*Ufldptr._ptr).Fldaddr = 0;
    
    #line 5234
    (*Ufldptr._ptr).Klass = C_field;
    
    #line 5236
    {
        _new(Uprcptr._ptr);
        _setValue(Uprcptr._ptr->Klass, C_proc);
        _setValue(Uprcptr._ptr->Pfdeckind, C_declared);
        _setValue(Uprcptr._ptr->Pfkind, C_actual);
    }
    
    #line 5236
    P_ininam(nullptr, Uprcptr);
    
    #line 5238
    P_strassvr(nullptr, (*Uprcptr._ptr).Name, T_restr::C("         "));
    
    #line 5238
    (*Uprcptr._ptr).Idtype = nullptr;
    
    #line 5238
    (*Uprcptr._ptr).Forwdecl = C_false;
    
    #line 5239
    (*Uprcptr._ptr).Next = nullptr;
    
    #line 5239
    (*Uprcptr._ptr).Externl = C_false;
    
    #line 5239
    (*Uprcptr._ptr).Pflev = 0;
    
    #line 5239
    P_genlabel(nullptr, (*Uprcptr._ptr).Pfname);
    
    #line 5240
    (*Uprcptr._ptr).Klass = C_proc;
    
    #line 5240
    (*Uprcptr._ptr).Pflist = nullptr;
    
    #line 5240
    (*Uprcptr._ptr).Pfdeckind = C_declared;
    
    #line 5240
    (*Uprcptr._ptr).Pfkind = C_actual;
    
    #line 5242
    {
        _new(Ufctptr._ptr);
        _setValue(Ufctptr._ptr->Klass, C_func);
        _setValue(Ufctptr._ptr->Pfdeckind, C_declared);
        _setValue(Ufctptr._ptr->Pfkind, C_actual);
    }
    
    #line 5242
    P_ininam(nullptr, Ufctptr);
    
    #line 5244
    P_strassvr(nullptr, (*Ufctptr._ptr).Name, T_restr::C("         "));
    
    #line 5244
    (*Ufctptr._ptr).Idtype = nullptr;
    
    #line 5244
    (*Ufctptr._ptr).Next = nullptr;
    
    #line 5245
    (*Ufctptr._ptr).Forwdecl = C_false;
    
    #line 5245
    (*Ufctptr._ptr).Externl = C_false;
    
    #line 5245
    (*Ufctptr._ptr).Pflev = 0;
    
    #line 5245
    P_genlabel(nullptr, (*Ufctptr._ptr).Pfname);
    
    #line 5246
    (*Ufctptr._ptr).Klass = C_func;
    
    #line 5246
    (*Ufctptr._ptr).Pflist = nullptr;
    
    #line 5246
    (*Ufctptr._ptr).Pfdeckind = C_declared;
    
    #line 5246
    (*Ufctptr._ptr).Pfkind = C_actual;
}


#line 5251
//================================================================================
// scope: exitundecl (level : 2)

// activation record
struct Frame_exitundecl
{};

// function body
void P_exitundecl(void* _slink)
{
    // prologue/frame definition
    Frame_exitundecl _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 5253
    P_putnam(nullptr, Utypptr);
    
    #line 5254
    P_putnam(nullptr, Ucstptr);
    
    #line 5255
    P_putnam(nullptr, Uvarptr);
    
    #line 5256
    P_putnam(nullptr, Ufldptr);
    
    #line 5257
    P_putnam(nullptr, Uprcptr);
    
    #line 5258
    P_putnam(nullptr, Ufctptr);
    
    { /* NOP */ }
}


#line 5261
//================================================================================
// scope: initscalars (level : 2)

// activation record
struct Frame_initscalars
{
    // locals
    T_integer i;
};

// function body
void P_initscalars(void* _slink)
{
    // prologue/frame definition
    Frame_initscalars _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 5263
    Fwptr = nullptr;
    
    #line 5264
    Prtables = C_false;
    
    #line 5264
    List = C_true;
    
    #line 5264
    Prcode = C_true;
    
    #line 5264
    Debug = C_true;
    
    #line 5265
    Dp = C_true;
    
    #line 5265
    Errinx = 0;
    
    #line 5266
    Intlabel = 0;
    
    #line 5266
    Kk = C_maxids;
    
    #line 5266
    Fextfilep = nullptr;
    
    #line 5267
    Lc = (C_lcaftermarkstack + (C_filebuffer * (C_filesize + C_charsize)));
    
    #line 5269
    Ic = 3;
    
    #line 5269
    Eol = C_true;
    
    #line 5269
    Linecount = 0;
    
    #line 5270
    Ch = ' ';
    
    #line 5270
    Chcnt = 0;
    
    #line 5271
    Mxint10 = (C_maxint / 10);
    
    #line 5272
    Inputhdf = C_false;
    
    #line 5273
    Outputhdf = C_false;
    
    #line 5274
    _FOR_TO(_F.i, 1, 500)
    {
        #line 5274
        Errtbl[_F.i] = C_false;
    }
    _FOR_END(_F.i)
    
    #line 5275
    Toterr = 0;
    
    #line 5277
    Strcnt = 0;
    
    #line 5278
    Cspcnt = 0;
    
    #line 5279
    Stpcnt = 0;
    
    #line 5280
    Ctpcnt = 0;
    
    #line 5281
    Lbpcnt = 0;
    
    #line 5282
    Filcnt = 0;
    
    #line 5283
    Cipcnt = 0;
}


#line 5286
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
    _setLiteral7.set(C_nilsy);
    
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
    #line 5288
    Constbegsys = _setLiteral1;
    
    #line 5289
    Simptypebegsys = (_setLiteral2 + Constbegsys);
    
    #line 5290
    Typebegsys = (_setLiteral3 + Simptypebegsys);
    
    #line 5291
    Typedels = _setLiteral4;
    
    #line 5292
    Blockbegsys = _setLiteral5;
    
    #line 5293
    Selectsys = _setLiteral6;
    
    #line 5294
    Facbegsys = _setLiteral7;
    
    #line 5295
    Statbegsys = _setLiteral8;
    
    { /* NOP */ }
}


#line 5298
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
    #line 5486
    P_inittables_reswords(&_F);
    
    #line 5486
    P_inittables_symbols(&_F);
    
    #line 5486
    P_inittables_rators(&_F);
    
    #line 5487
    P_inittables_instrmnemonics(&_F);
    
    #line 5487
    P_inittables_procmnemonics(&_F);
    
    #line 5488
    P_inittables_chartypes(&_F);
    
    #line 5488
    P_inittables_initdx(&_F);
    
    { /* NOP */ }
}


#line 5299
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
    #line 5301
    Rw[1] = "if       ";
    
    #line 5301
    Rw[2] = "do       ";
    
    #line 5301
    Rw[3] = "of       ";
    
    #line 5302
    Rw[4] = "to       ";
    
    #line 5302
    Rw[5] = "in       ";
    
    #line 5302
    Rw[6] = "or       ";
    
    #line 5303
    Rw[7] = "end      ";
    
    #line 5303
    Rw[8] = "for      ";
    
    #line 5303
    Rw[9] = "var      ";
    
    #line 5304
    Rw[10] = "div      ";
    
    #line 5304
    Rw[11] = "mod      ";
    
    #line 5304
    Rw[12] = "set      ";
    
    #line 5305
    Rw[13] = "and      ";
    
    #line 5305
    Rw[14] = "not      ";
    
    #line 5305
    Rw[15] = "nil      ";
    
    #line 5306
    Rw[16] = "then     ";
    
    #line 5306
    Rw[17] = "else     ";
    
    #line 5306
    Rw[18] = "with     ";
    
    #line 5307
    Rw[19] = "goto     ";
    
    #line 5307
    Rw[20] = "case     ";
    
    #line 5307
    Rw[21] = "type     ";
    
    #line 5308
    Rw[22] = "file     ";
    
    #line 5308
    Rw[23] = "begin    ";
    
    #line 5308
    Rw[24] = "until    ";
    
    #line 5309
    Rw[25] = "while    ";
    
    #line 5309
    Rw[26] = "array    ";
    
    #line 5309
    Rw[27] = "const    ";
    
    #line 5310
    Rw[28] = "label    ";
    
    #line 5310
    Rw[29] = "repeat   ";
    
    #line 5310
    Rw[30] = "record   ";
    
    #line 5311
    Rw[31] = "downto   ";
    
    #line 5311
    Rw[32] = "packed   ";
    
    #line 5311
    Rw[33] = "program  ";
    
    #line 5312
    Rw[34] = "function ";
    
    #line 5312
    Rw[35] = "procedure";
    
    #line 5313
    Frw[1] = 1;
    
    #line 5313
    Frw[2] = 1;
    
    #line 5313
    Frw[3] = 7;
    
    #line 5313
    Frw[4] = 16;
    
    #line 5313
    Frw[5] = 23;
    
    #line 5314
    Frw[6] = 29;
    
    #line 5314
    Frw[7] = 33;
    
    #line 5314
    Frw[8] = 34;
    
    #line 5314
    Frw[9] = 35;
    
    #line 5314
    Frw[10] = 36;
    
    { /* NOP */ }
}


#line 5317
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
    #line 5319
    Rsy[1] = C_ifsy;
    
    #line 5319
    Rsy[2] = C_dosy;
    
    #line 5319
    Rsy[3] = C_ofsy;
    
    #line 5320
    Rsy[4] = C_tosy;
    
    #line 5320
    Rsy[5] = C_relop;
    
    #line 5320
    Rsy[6] = C_addop;
    
    #line 5321
    Rsy[7] = C_endsy;
    
    #line 5321
    Rsy[8] = C_forsy;
    
    #line 5321
    Rsy[9] = C_varsy;
    
    #line 5322
    Rsy[10] = C_mulop;
    
    #line 5322
    Rsy[11] = C_mulop;
    
    #line 5322
    Rsy[12] = C_setsy;
    
    #line 5323
    Rsy[13] = C_mulop;
    
    #line 5323
    Rsy[14] = C_notsy;
    
    #line 5323
    Rsy[15] = C_nilsy;
    
    #line 5324
    Rsy[16] = C_thensy;
    
    #line 5324
    Rsy[17] = C_elsesy;
    
    #line 5324
    Rsy[18] = C_withsy;
    
    #line 5325
    Rsy[19] = C_gotosy;
    
    #line 5325
    Rsy[20] = C_casesy;
    
    #line 5325
    Rsy[21] = C_typesy;
    
    #line 5326
    Rsy[22] = C_filesy;
    
    #line 5326
    Rsy[23] = C_beginsy;
    
    #line 5326
    Rsy[24] = C_untilsy;
    
    #line 5327
    Rsy[25] = C_whilesy;
    
    #line 5327
    Rsy[26] = C_arraysy;
    
    #line 5327
    Rsy[27] = C_constsy;
    
    #line 5328
    Rsy[28] = C_labelsy;
    
    #line 5328
    Rsy[29] = C_repeatsy;
    
    #line 5328
    Rsy[30] = C_recordsy;
    
    #line 5329
    Rsy[31] = C_downtosy;
    
    #line 5329
    Rsy[32] = C_packedsy;
    
    #line 5329
    Rsy[33] = C_progsy;
    
    #line 5330
    Rsy[34] = C_funcsy;
    
    #line 5330
    Rsy[35] = C_procsy;
    
    #line 5331
    Ssy['+'] = C_addop;
    
    #line 5331
    Ssy['-'] = C_addop;
    
    #line 5331
    Ssy['*'] = C_mulop;
    
    #line 5332
    Ssy['/'] = C_mulop;
    
    #line 5332
    Ssy['('] = C_lparent;
    
    #line 5332
    Ssy[')'] = C_rparent;
    
    #line 5333
    Ssy['$'] = C_othersy;
    
    #line 5333
    Ssy['='] = C_relop;
    
    #line 5333
    Ssy[' '] = C_othersy;
    
    #line 5334
    Ssy[','] = C_comma;
    
    #line 5334
    Ssy['.'] = C_period;
    
    #line 5334
    Ssy['\''] = C_othersy;
    
    #line 5335
    Ssy['['] = C_lbrack;
    
    #line 5335
    Ssy[']'] = C_rbrack;
    
    #line 5335
    Ssy[':'] = C_colon;
    
    #line 5336
    Ssy['^'] = C_arrow;
    
    #line 5336
    Ssy['<'] = C_relop;
    
    #line 5336
    Ssy['>'] = C_relop;
    
    #line 5337
    Ssy[';'] = C_semicolon;
    
    #line 5337
    Ssy['@'] = C_arrow;
    
    { /* NOP */ }
}


#line 5340
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
    #line 5343
    _FOR_TO(_F.i, 1, C_maxres)
    {
        #line 5343
        Rop[_F.i] = C_noop;
    }
    _FOR_END(_F.i)
    
    #line 5344
    Rop[5] = C_inop;
    
    #line 5344
    Rop[10] = C_idiv;
    
    #line 5344
    Rop[11] = C_imod;
    
    #line 5345
    Rop[6] = C_orop;
    
    #line 5345
    Rop[13] = C_andop;
    
    #line 5346
    _FOR_TO(_F.i, C_ordminchar, C_ordmaxchar)
    {
        #line 5346
        Sop[_chr(_F.i)] = C_noop;
    }
    _FOR_END(_F.i)
    
    #line 5347
    Sop['+'] = C_plus;
    
    #line 5347
    Sop['-'] = C_minus;
    
    #line 5347
    Sop['*'] = C_mul;
    
    #line 5347
    Sop['/'] = C_rdiv;
    
    #line 5348
    Sop['='] = C_eqop;
    
    #line 5348
    Sop['<'] = C_ltop;
    
    #line 5348
    Sop['>'] = C_gtop;
    
    { /* NOP */ }
}


#line 5351
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
    #line 5356
    Sna[1] = " get";
    
    #line 5356
    Sna[2] = " put";
    
    #line 5356
    Sna[3] = " rdi";
    
    #line 5356
    Sna[4] = " rdr";
    
    #line 5357
    Sna[5] = " rdc";
    
    #line 5357
    Sna[6] = " wri";
    
    #line 5357
    Sna[7] = " wro";
    
    #line 5357
    Sna[8] = " wrr";
    
    #line 5358
    Sna[9] = " wrc";
    
    #line 5358
    Sna[10] = " wrs";
    
    #line 5358
    Sna[11] = " pak";
    
    #line 5358
    Sna[12] = " new";
    
    #line 5359
    Sna[13] = " rst";
    
    #line 5359
    Sna[14] = " eln";
    
    #line 5359
    Sna[15] = " sin";
    
    #line 5359
    Sna[16] = " cos";
    
    #line 5360
    Sna[17] = " exp";
    
    #line 5360
    Sna[18] = " sqt";
    
    #line 5360
    Sna[19] = " log";
    
    #line 5360
    Sna[20] = " atn";
    
    #line 5361
    Sna[21] = " rln";
    
    #line 5361
    Sna[22] = " wln";
    
    #line 5361
    Sna[23] = " sav";
    
    #line 5363
    Sna[24] = " pag";
    
    #line 5363
    Sna[25] = " rsf";
    
    #line 5363
    Sna[26] = " rwf";
    
    #line 5363
    Sna[27] = " wrb";
    
    #line 5364
    Sna[28] = " wrf";
    
    #line 5364
    Sna[29] = " dsp";
    
    #line 5364
    Sna[30] = " wbf";
    
    #line 5364
    Sna[31] = " wbi";
    
    #line 5365
    Sna[32] = " wbr";
    
    #line 5365
    Sna[33] = " wbc";
    
    #line 5365
    Sna[34] = " wbb";
    
    #line 5365
    Sna[35] = " rbf";
    
    #line 5366
    Sna[36] = " rsb";
    
    #line 5366
    Sna[37] = " rwb";
    
    #line 5366
    Sna[38] = " gbf";
    
    #line 5366
    Sna[39] = " pbf";
    
    { /* NOP */ }
}


#line 5370
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
    #line 5372
    Mn[0] = " abi";
    
    #line 5372
    Mn[1] = " abr";
    
    #line 5372
    Mn[2] = " adi";
    
    #line 5372
    Mn[3] = " adr";
    
    #line 5373
    Mn[4] = " and";
    
    #line 5373
    Mn[5] = " dif";
    
    #line 5373
    Mn[6] = " dvi";
    
    #line 5373
    Mn[7] = " dvr";
    
    #line 5374
    Mn[8] = " eof";
    
    #line 5374
    Mn[9] = " flo";
    
    #line 5374
    Mn[10] = " flt";
    
    #line 5374
    Mn[11] = " inn";
    
    #line 5375
    Mn[12] = " int";
    
    #line 5375
    Mn[13] = " ior";
    
    #line 5375
    Mn[14] = " mod";
    
    #line 5375
    Mn[15] = " mpi";
    
    #line 5376
    Mn[16] = " mpr";
    
    #line 5376
    Mn[17] = " ngi";
    
    #line 5376
    Mn[18] = " ngr";
    
    #line 5376
    Mn[19] = " not";
    
    #line 5377
    Mn[20] = " odd";
    
    #line 5377
    Mn[21] = " sbi";
    
    #line 5377
    Mn[22] = " sbr";
    
    #line 5377
    Mn[23] = " sgs";
    
    #line 5378
    Mn[24] = " sqi";
    
    #line 5378
    Mn[25] = " sqr";
    
    #line 5378
    Mn[26] = " sto";
    
    #line 5378
    Mn[27] = " trc";
    
    #line 5379
    Mn[28] = " uni";
    
    #line 5379
    Mn[29] = " stp";
    
    #line 5379
    Mn[30] = " csp";
    
    #line 5379
    Mn[31] = " dec";
    
    #line 5380
    Mn[32] = " ent";
    
    #line 5380
    Mn[33] = " fjp";
    
    #line 5380
    Mn[34] = " inc";
    
    #line 5380
    Mn[35] = " ind";
    
    #line 5381
    Mn[36] = " ixa";
    
    #line 5381
    Mn[37] = " lao";
    
    #line 5381
    Mn[38] = " lca";
    
    #line 5381
    Mn[39] = " ldo";
    
    #line 5382
    Mn[40] = " mov";
    
    #line 5382
    Mn[41] = " mst";
    
    #line 5382
    Mn[42] = " ret";
    
    #line 5382
    Mn[43] = " sro";
    
    #line 5383
    Mn[44] = " xjp";
    
    #line 5383
    Mn[45] = " chk";
    
    #line 5383
    Mn[46] = " cup";
    
    #line 5383
    Mn[47] = " equ";
    
    #line 5384
    Mn[48] = " geq";
    
    #line 5384
    Mn[49] = " grt";
    
    #line 5384
    Mn[50] = " lda";
    
    #line 5384
    Mn[51] = " ldc";
    
    #line 5385
    Mn[52] = " leq";
    
    #line 5385
    Mn[53] = " les";
    
    #line 5385
    Mn[54] = " lod";
    
    #line 5385
    Mn[55] = " neq";
    
    #line 5386
    Mn[56] = " str";
    
    #line 5386
    Mn[57] = " ujp";
    
    #line 5386
    Mn[58] = " ord";
    
    #line 5386
    Mn[59] = " chr";
    
    #line 5387
    Mn[60] = " ujc";
    
    #line 5389
    Mn[61] = " rnd";
    
    #line 5389
    Mn[62] = " pck";
    
    #line 5389
    Mn[63] = " upk";
    
    #line 5389
    Mn[64] = " rgs";
    
    #line 5390
    Mn[65] = " fbv";
    
    #line 5390
    Mn[66] = " ipj";
    
    #line 5390
    Mn[67] = " cip";
    
    #line 5390
    Mn[68] = " lpa";
    
    #line 5391
    Mn[69] = " efb";
    
    #line 5391
    Mn[70] = " fvb";
    
    #line 5391
    Mn[71] = " dmp";
    
    #line 5391
    Mn[72] = " swp";
    
    #line 5392
    Mn[73] = " tjp";
    
    #line 5392
    Mn[74] = " lip";
    
    { /* NOP */ }
}


#line 5395
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
    #line 5398
    _FOR_TO(_F.i, C_ordminchar, C_ordmaxchar)
    {
        #line 5398
        Chartp[_chr(_F.i)] = C_illegal;
    }
    _FOR_END(_F.i)
    
    #line 5399
    Chartp['a'] = C_letter;
    
    #line 5400
    Chartp['b'] = C_letter;
    
    #line 5400
    Chartp['c'] = C_letter;
    
    #line 5401
    Chartp['d'] = C_letter;
    
    #line 5401
    Chartp['e'] = C_letter;
    
    #line 5402
    Chartp['f'] = C_letter;
    
    #line 5402
    Chartp['g'] = C_letter;
    
    #line 5403
    Chartp['h'] = C_letter;
    
    #line 5403
    Chartp['i'] = C_letter;
    
    #line 5404
    Chartp['j'] = C_letter;
    
    #line 5404
    Chartp['k'] = C_letter;
    
    #line 5405
    Chartp['l'] = C_letter;
    
    #line 5405
    Chartp['m'] = C_letter;
    
    #line 5406
    Chartp['n'] = C_letter;
    
    #line 5406
    Chartp['o'] = C_letter;
    
    #line 5407
    Chartp['p'] = C_letter;
    
    #line 5407
    Chartp['q'] = C_letter;
    
    #line 5408
    Chartp['r'] = C_letter;
    
    #line 5408
    Chartp['s'] = C_letter;
    
    #line 5409
    Chartp['t'] = C_letter;
    
    #line 5409
    Chartp['u'] = C_letter;
    
    #line 5410
    Chartp['v'] = C_letter;
    
    #line 5410
    Chartp['w'] = C_letter;
    
    #line 5411
    Chartp['x'] = C_letter;
    
    #line 5411
    Chartp['y'] = C_letter;
    
    #line 5412
    Chartp['z'] = C_letter;
    
    #line 5413
    Chartp['A'] = C_letter;
    
    #line 5414
    Chartp['B'] = C_letter;
    
    #line 5414
    Chartp['C'] = C_letter;
    
    #line 5415
    Chartp['D'] = C_letter;
    
    #line 5415
    Chartp['E'] = C_letter;
    
    #line 5416
    Chartp['F'] = C_letter;
    
    #line 5416
    Chartp['G'] = C_letter;
    
    #line 5417
    Chartp['H'] = C_letter;
    
    #line 5417
    Chartp['I'] = C_letter;
    
    #line 5418
    Chartp['J'] = C_letter;
    
    #line 5418
    Chartp['K'] = C_letter;
    
    #line 5419
    Chartp['L'] = C_letter;
    
    #line 5419
    Chartp['M'] = C_letter;
    
    #line 5420
    Chartp['N'] = C_letter;
    
    #line 5420
    Chartp['O'] = C_letter;
    
    #line 5421
    Chartp['P'] = C_letter;
    
    #line 5421
    Chartp['Q'] = C_letter;
    
    #line 5422
    Chartp['R'] = C_letter;
    
    #line 5422
    Chartp['S'] = C_letter;
    
    #line 5423
    Chartp['T'] = C_letter;
    
    #line 5423
    Chartp['U'] = C_letter;
    
    #line 5424
    Chartp['V'] = C_letter;
    
    #line 5424
    Chartp['W'] = C_letter;
    
    #line 5425
    Chartp['X'] = C_letter;
    
    #line 5425
    Chartp['Y'] = C_letter;
    
    #line 5426
    Chartp['Z'] = C_letter;
    
    #line 5427
    Chartp['0'] = C_number;
    
    #line 5428
    Chartp['1'] = C_number;
    
    #line 5428
    Chartp['2'] = C_number;
    
    #line 5429
    Chartp['3'] = C_number;
    
    #line 5429
    Chartp['4'] = C_number;
    
    #line 5430
    Chartp['5'] = C_number;
    
    #line 5430
    Chartp['6'] = C_number;
    
    #line 5431
    Chartp['7'] = C_number;
    
    #line 5431
    Chartp['8'] = C_number;
    
    #line 5432
    Chartp['9'] = C_number;
    
    #line 5432
    Chartp['+'] = C_special;
    
    #line 5433
    Chartp['-'] = C_special;
    
    #line 5433
    Chartp['*'] = C_special;
    
    #line 5434
    Chartp['/'] = C_special;
    
    #line 5434
    Chartp['('] = C_chlparen;
    
    #line 5435
    Chartp[')'] = C_special;
    
    #line 5435
    Chartp['$'] = C_special;
    
    #line 5436
    Chartp['='] = C_special;
    
    #line 5436
    Chartp[' '] = C_chspace;
    
    #line 5437
    Chartp[','] = C_special;
    
    #line 5437
    Chartp['.'] = C_chperiod;
    
    #line 5438
    Chartp['\''] = C_chstrquo;
    
    #line 5438
    Chartp['['] = C_special;
    
    #line 5439
    Chartp[']'] = C_special;
    
    #line 5439
    Chartp[':'] = C_chcolon;
    
    #line 5440
    Chartp['^'] = C_special;
    
    #line 5440
    Chartp[';'] = C_special;
    
    #line 5441
    Chartp['<'] = C_chlt;
    
    #line 5441
    Chartp['>'] = C_chgt;
    
    #line 5442
    Chartp['{'] = C_chlcmt;
    
    #line 5442
    Chartp['}'] = C_special;
    
    #line 5443
    Chartp['@'] = C_special;
    
    #line 5445
    Ordint['0'] = 0;
    
    #line 5445
    Ordint['1'] = 1;
    
    #line 5445
    Ordint['2'] = 2;
    
    #line 5446
    Ordint['3'] = 3;
    
    #line 5446
    Ordint['4'] = 4;
    
    #line 5446
    Ordint['5'] = 5;
    
    #line 5447
    Ordint['6'] = 6;
    
    #line 5447
    Ordint['7'] = 7;
    
    #line 5447
    Ordint['8'] = 8;
    
    #line 5448
    Ordint['9'] = 9;
    
    { /* NOP */ }
}


#line 5451
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
    #line 5453
    Cdx[0] = 0;
    
    #line 5453
    Cdx[1] = 0;
    
    #line 5453
    Cdx[2] = (-1);
    
    #line 5453
    Cdx[3] = (-1);
    
    #line 5454
    Cdx[4] = (-1);
    
    #line 5454
    Cdx[5] = (-1);
    
    #line 5454
    Cdx[6] = (-1);
    
    #line 5454
    Cdx[7] = (-1);
    
    #line 5455
    Cdx[8] = 0;
    
    #line 5455
    Cdx[9] = 0;
    
    #line 5455
    Cdx[10] = 0;
    
    #line 5455
    Cdx[11] = (-1);
    
    #line 5456
    Cdx[12] = (-1);
    
    #line 5456
    Cdx[13] = (-1);
    
    #line 5456
    Cdx[14] = (-1);
    
    #line 5456
    Cdx[15] = (-1);
    
    #line 5457
    Cdx[16] = (-1);
    
    #line 5457
    Cdx[17] = 0;
    
    #line 5457
    Cdx[18] = 0;
    
    #line 5457
    Cdx[19] = 0;
    
    #line 5458
    Cdx[20] = 0;
    
    #line 5458
    Cdx[21] = (-1);
    
    #line 5458
    Cdx[22] = (-1);
    
    #line 5458
    Cdx[23] = 0;
    
    #line 5459
    Cdx[24] = 0;
    
    #line 5459
    Cdx[25] = 0;
    
    #line 5459
    Cdx[26] = (-2);
    
    #line 5459
    Cdx[27] = 0;
    
    #line 5460
    Cdx[28] = (-1);
    
    #line 5460
    Cdx[29] = 0;
    
    #line 5460
    Cdx[30] = 0;
    
    #line 5460
    Cdx[31] = 0;
    
    #line 5461
    Cdx[32] = 0;
    
    #line 5461
    Cdx[33] = (-1);
    
    #line 5461
    Cdx[34] = 0;
    
    #line 5461
    Cdx[35] = 0;
    
    #line 5462
    Cdx[36] = (-1);
    
    #line 5462
    Cdx[37] = (+1);
    
    #line 5462
    Cdx[38] = (+1);
    
    #line 5462
    Cdx[39] = (+1);
    
    #line 5463
    Cdx[40] = (-2);
    
    #line 5463
    Cdx[41] = 0;
    
    #line 5463
    Cdx[42] = 0;
    
    #line 5463
    Cdx[43] = (-1);
    
    #line 5464
    Cdx[44] = (-1);
    
    #line 5464
    Cdx[45] = 0;
    
    #line 5464
    Cdx[46] = 0;
    
    #line 5464
    Cdx[47] = (-1);
    
    #line 5465
    Cdx[48] = (-1);
    
    #line 5465
    Cdx[49] = (-1);
    
    #line 5465
    Cdx[50] = (+1);
    
    #line 5465
    Cdx[51] = (+1);
    
    #line 5466
    Cdx[52] = (-1);
    
    #line 5466
    Cdx[53] = (-1);
    
    #line 5466
    Cdx[54] = (+1);
    
    #line 5466
    Cdx[55] = (-1);
    
    #line 5467
    Cdx[56] = (-1);
    
    #line 5467
    Cdx[57] = 0;
    
    #line 5467
    Cdx[58] = 0;
    
    #line 5467
    Cdx[59] = 0;
    
    #line 5468
    Cdx[60] = 0;
    
    #line 5468
    Cdx[61] = 0;
    
    #line 5468
    Cdx[62] = (-3);
    
    #line 5468
    Cdx[63] = (-3);
    
    #line 5469
    Cdx[64] = (-1);
    
    #line 5469
    Cdx[65] = 0;
    
    #line 5469
    Cdx[66] = 0;
    
    #line 5469
    Cdx[67] = (-1);
    
    #line 5470
    Cdx[68] = (+2);
    
    #line 5470
    Cdx[69] = 0;
    
    #line 5470
    Cdx[70] = (-1);
    
    #line 5470
    Cdx[71] = (-1);
    
    #line 5471
    Cdx[72] = 0;
    
    #line 5471
    Cdx[73] = (-1);
    
    #line 5471
    Cdx[74] = (+2);
    
    #line 5473
    Pdx[1] = (-1);
    
    #line 5473
    Pdx[2] = (-1);
    
    #line 5473
    Pdx[3] = (-1);
    
    #line 5473
    Pdx[4] = (-1);
    
    #line 5474
    Pdx[5] = (-1);
    
    #line 5474
    Pdx[6] = (-2);
    
    #line 5474
    Pdx[7] = (-3);
    
    #line 5474
    Pdx[8] = (-2);
    
    #line 5475
    Pdx[9] = (-2);
    
    #line 5475
    Pdx[10] = (-3);
    
    #line 5475
    Pdx[11] = 0;
    
    #line 5475
    Pdx[12] = (-2);
    
    #line 5476
    Pdx[13] = (-1);
    
    #line 5476
    Pdx[14] = 0;
    
    #line 5476
    Pdx[15] = 0;
    
    #line 5476
    Pdx[16] = 0;
    
    #line 5477
    Pdx[17] = 0;
    
    #line 5477
    Pdx[18] = 0;
    
    #line 5477
    Pdx[19] = 0;
    
    #line 5477
    Pdx[20] = 0;
    
    #line 5478
    Pdx[21] = 0;
    
    #line 5478
    Pdx[22] = 0;
    
    #line 5478
    Pdx[23] = (-1);
    
    #line 5478
    Pdx[24] = (-1);
    
    #line 5479
    Pdx[25] = (-1);
    
    #line 5479
    Pdx[26] = (-1);
    
    #line 5479
    Pdx[27] = (-2);
    
    #line 5479
    Pdx[28] = (-3);
    
    #line 5480
    Pdx[29] = (-2);
    
    #line 5480
    Pdx[30] = (-2);
    
    #line 5480
    Pdx[31] = (-1);
    
    #line 5480
    Pdx[32] = (-1);
    
    #line 5481
    Pdx[33] = (-1);
    
    #line 5481
    Pdx[34] = (-1);
    
    #line 5481
    Pdx[35] = (-2);
    
    #line 5481
    Pdx[36] = (-1);
    
    #line 5482
    Pdx[37] = (-1);
    
    #line 5482
    Pdx[38] = (-2);
    
    #line 5482
    Pdx[39] = (-2);
    
    { /* NOP */ }
}

