
#include <lpcRuntime.h>

// "chess05ISO.pas"

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
typedef _T_Set<0, 31> T_SX;
typedef _T_Array< 0, 1, T_SX > T_array_1;
typedef _T_Array< 0, 1, T_integer > T_array_2;
struct T_RS
{
    // variable fields
    union
    {
        T_array_1 RSSS;
        T_array_2 RSTI;
    };
};
typedef _T_Array< 0, 2, T_RS > T_arraytmofrs;
typedef _T_Array< 0, 16, T_RS > T_arraytkofrs;
typedef _T_Array< 0, 7, T_RS > T_arraytfofrs;
typedef _T_Range<1, 500, signed __int16> T_TW;
typedef _T_Array< 0, 16, T_TW > T_arraytkoftw;
typedef int T_TE;
typedef _T_Array< 0, 12, T_TE > T_arraytpofte;
typedef _T_Array< 0, 3, T_RS > T_arraytqofrs;
typedef _T_Array< 0, 7, T_RS > T_arraytrofrs;
typedef _T_Array< 0, 63, T_RS > T_RX;
typedef int T_TM;
typedef _T_Range<-1, 63, signed __int8> T_TT;
typedef _T_Set<0, 3> T_SQ;
typedef int T_TP;
typedef _T_Array< 0, 63, T_TP > T_RC;
typedef _T_Array< 0, 7, T_TP > T_array_4;
typedef _T_Array< 0, 7, T_array_4 > T_array_3;
struct T_RB
{
    T_TM RBTM;
    T_TT RBTS;
    T_integer RBTI;
    T_SQ RBSQ;
    // variable fields
    union
    {
        T_RC RBIS;
        T_array_3 RBIRF;
    };
};
typedef _T_Range<-32767, 32767, signed __int16> T_TV;
typedef _T_Array< -2, 17, T_TV > T_array_5;
typedef int T_TQ;
typedef int T_TU;
typedef _T_Array< 0, 15, T_RS > T_array_6;
typedef int T_TF;
typedef _T_Array< 0, 7, T_integer > T_array_7;
typedef int T_TH;
typedef _T_Array< 0, 73, T_char > T_RJ;
typedef _T_Array< 0, 17, T_TW > T_array_8;
typedef _T_Range<0, 73, signed __int8> T_TJ;
typedef _T_Range<0, 16, signed __int8> T_TK;
typedef _T_Range<0, 63, signed __int8> T_TS;
typedef int T_TG;
struct T_RM
{
    T_TS RMFR;
    T_TS RMTO;
    T_TP RMCP;
    T_boolean RMCA;
    T_boolean RMAC;
    T_boolean RMCH;
    T_boolean RMMT;
    T_boolean RMIL;
    T_boolean RMSU;
    // variable fields selector
    T_boolean RMPR;
    // variable fields
    union
    {
        struct
        {
            // variable fields selector
            T_boolean RMOO;
            // variable fields
            union
            {
                T_boolean RMEP;
                T_boolean RMQS;
            };
        };
        T_TG RMPP;
    };
};
typedef _T_Array< 0, 16, T_RM > T_array_9;
typedef _T_Array< 0, 2, T_integer > T_array_10;
typedef _T_Array< 0, 16, T_TV > T_array_11;
typedef _T_Array< 1, 500, T_RM > T_RF;
typedef _T_Array< 1, 30, T_char > T_RN;
typedef _T_Array< 0, 16, T_integer > T_array_12;
typedef _T_Array< 0, 2, T_TM > T_array_13;
typedef int T_TR;
typedef _T_Array< 1, 10, T_char > T_RA;
struct T_RD
{
    T_boolean RDPC;
    T_boolean RDSL;
    T_boolean RDKQ;
    T_boolean RDNB;
    T_boolean RDRK;
};
typedef _T_Array< 1, 500, T_TV > T_RE;
struct T_RY
{
    T_RD RYLS;
    T_char RYCH;
    T_RD RYRS;
};
typedef _T_Set<0, 255> T_SC;
typedef _T_Set<0, 7> T_SF;
typedef _T_Set<0, 7> T_SR;
typedef _T_Array< 0, 16, T_TH > T_array_14;
typedef _T_Array< 1, 47, T_RY > T_array_15;
typedef _T_Range<1, 10, signed __int8> T_TA;
typedef _T_Range<-21, 21, signed __int8> T_TD;
typedef _T_Range<0, 119, signed __int8> T_TL;
typedef _T_Range<1, 30, signed __int8> T_TN;
typedef _T_Array< 0, 12, T_RS > T_array_16;
typedef _T_Range<0, 31, signed __int8> T_TX;
typedef _T_Range<0, 1, signed __int8> T_TY;
typedef _T_Array< -119, 119, T_TD > T_array_17;
typedef _T_Array< 0, 3, T_RM > T_array_18;
typedef _T_Array< 0, 12, T_boolean > T_array_19;
typedef _T_Array< 0, 63, T_SX > T_array_20;
typedef _T_Array< 0, 1, T_char > T_array_21;
typedef _T_Array< 0, 15, T_TD > T_array_22;
typedef _T_Array< 0, 3, T_char > T_array_23;
typedef _T_Array< 0, 2, T_TP > T_array_25;
typedef _T_Array< 0, 3, T_array_25 > T_array_24;
typedef _T_Array< 0, 119, T_TT > T_array_26;
typedef _T_Array< 0, 2, T_RA > T_array_27;
typedef _T_Array< 0, 2, T_TQ > T_array_28;
typedef _T_Array< 0, 2, T_TV > T_array_29;
typedef _T_Array< 0, 12, T_char > T_array_30;
typedef _T_Array< 0, 12, T_TM > T_array_31;
typedef _T_Array< 0, 12, T_TU > T_array_32;
typedef _T_Array< 0, 12, T_TV > T_array_33;
typedef _T_Array< 0, 3, T_RA > T_array_34;
typedef _T_Array< 0, 3, T_TS > T_array_35;
typedef _T_Array< 0, 7, T_TS > T_array_37;
typedef _T_Array< 0, 7, T_array_37 > T_array_36;
typedef _T_Array< 0, 63, T_TF > T_array_38;
typedef _T_Array< 0, 63, T_TL > T_array_39;
typedef _T_Array< 0, 63, T_TR > T_array_40;
typedef _T_Array< 0, 63, T_TX > T_array_41;
typedef _T_Array< 0, 63, T_TY > T_array_42;
typedef _T_Array< 0, 5, T_char > T_array_43;
typedef _T_Array< 0, 2, T_TP > T_array_45;
typedef _T_Array< 0, 5, T_array_45 > T_array_44;

// forward declarations
T_integer F_MAX(void* _slink, T_integer A, T_integer B);
T_integer F_MIN(void* _slink, T_integer A, T_integer B);
T_integer F_SIGN(void* _slink, T_integer A, T_integer B);
void P_SORTIT(void* _slink, T_RE& A, T_RF& B, T_TW C);
void P_ANDRS(void* _slink, T_RS& C, T_RS A, T_RS B);
void P_CLRRS(void* _slink, T_RS& C, T_TS A);
void P_CPYRS(void* _slink, T_RS& C, T_RS A);
void P_IORRS(void* _slink, T_RS& C, T_RS A, T_RS B);
void P_NEWRS(void* _slink, T_RS& A);
void P_NOTRS(void* _slink, T_RS& C, T_RS A);
T_boolean F_NXTTS(void* _slink, T_RS& A, T_TS& B);
T_TS F_CNTRS(void* _slink, T_RS A);
void P_SETRS(void* _slink, T_RS& C, T_TS A);
void P_SFTRS(void* _slink, T_RS& A, T_RS B, T_TE C);
T_boolean F_INRSTB(void* _slink, T_RS A, T_TS B);
T_boolean F_NULRS(void* _slink, T_RS A);
T_boolean F_NULMVB(void* _slink, T_RM A);
void P_INICON(void* _slink);
void P_INITAL(void* _slink, T_RB& A);
void P_PAUSER(void* _slink);
void P_PRIMOV(void* _slink, T_RM A);
void P_PRINTB(void* _slink, T_RC A);
void P_PRINAM(void* _slink, T_RX A);
void P_PRISWI(void* _slink, T_RA A, T_boolean B);
void P_MBEVAL(void* _slink);
void P_MBCAPT(void* _slink, T_TP A);
void P_MBTPAC(void* _slink, T_TP A);
void P_MBPROM(void* _slink, T_TP A);
void P_MBMORP(void* _slink, T_TP A);
void P_ADDATK(void* _slink, T_TS A);
void P_ADDLOC(void* _slink, T_TS A, T_TP B);
void P_CLSTAT(void* _slink);
void P_CUTATK(void* _slink, T_TS A);
void P_DELATK(void* _slink, T_TS A);
void P_PRPATK(void* _slink, T_TS A);
void P_GAINIT(void* _slink, T_RM A);
void P_LOSEIT(void* _slink, T_RM A);
void P_MOVEIT(void* _slink, T_RM A);
void P_RTRKIT(void* _slink, T_RM A);
void P_PAWNIT(void* _slink, T_RM A);
void P_PROACA(void* _slink, T_TS A);
void P_PROACS(void* _slink, T_RM A);
void P_PROMOT(void* _slink, T_RM A);
void P_CREATE(void* _slink);
void P_DNDATE(void* _slink, T_RM A);
T_boolean F_UPDATE(void* _slink, T_RM& A);
void P_GENONE(void* _slink, T_TT A, T_TS B);
void P_PWNPRO(void* _slink);
void P_GENPWN(void* _slink, T_RS A, T_RS B);
void P_GENFSL(void* _slink, T_RS A);
void P_GENTSL(void* _slink, T_RS A);
void P_GENCAP(void* _slink);
void P_GENCAS(void* _slink);
void P_GENALL(void* _slink);
void P_LSTMOV(void* _slink);
void P_THEMOV(void* _slink, T_RM A);
void P_EVALU8(void* _slink);
T_TW F_SEARCH(void* _slink);
void P_READER(void* _slink);
void P_MINENG(void* _slink, T_RM A, T_RA B);
void P_MYMOVE(void* _slink);
void P_YRMOVE(void* _slink);

// constants
const T_integer C_AA = 1;
const T_integer C_AD = -21;
const T_integer C_AJ = 0;
const T_integer C_AK = 0;
const T_integer C_AKM2 = -2;
const T_integer C_AL = 0;
const T_integer C_AN = 1;
const T_integer C_AS = 0;
const T_integer C_AT = -1;
const T_integer C_AV = -32767;
const T_integer C_AW = 1;
const T_integer C_AX = 0;
const T_integer C_AY = 0;
const T_integer C_AZL = -119;
const T_TE C_B1 = 0;
const T_TE C_B2 = 1;
const T_TE C_B3 = 2;
const T_TE C_B4 = 3;
const T_TM C_DARK = 1;
const T_TP C_DB = 9;
const T_TP C_DK = 11;
const T_TQ C_DL = 3;
const T_TP C_DN = 8;
const T_TP C_DP = 6;
const T_TP C_DQ = 10;
const T_TP C_DR = 7;
const T_TQ C_DS = 2;
const T_TU C_EB = 3;
const T_TU C_EK = 5;
const T_TU C_EN = 2;
const T_TU C_EP = 0;
const T_TU C_EQ = 4;
const T_TU C_ER = 1;
const T_TF C_F1 = 0;
const T_TF C_F2 = 1;
const T_TF C_F3 = 2;
const T_TF C_F4 = 3;
const T_TF C_F5 = 4;
const T_TF C_F6 = 5;
const T_TF C_F7 = 6;
const T_TF C_F8 = 7;
const T_TH C_H0 = 0;
const T_TH C_H1 = 1;
const T_TH C_H2 = 2;
const T_TH C_H3 = 3;
const T_TH C_H4 = 4;
const T_TH C_H5 = 5;
const T_TH C_H6 = 6;
const T_TH C_H7 = 7;
const T_TP C_LB = 3;
const T_TM C_LITE = 0;
const T_TP C_LK = 5;
const T_TQ C_LL = 1;
const T_TP C_LN = 2;
const T_TP C_LP = 0;
const T_integer C_LPP = 20;
const T_TP C_LQ = 4;
const T_TP C_LR = 1;
const T_TQ C_LS = 0;
const T_TP C_MT = 12;
const T_TE C_N1 = 8;
const T_TE C_N2 = 9;
const T_TE C_N3 = 10;
const T_TE C_N4 = 11;
const T_TE C_N5 = 12;
const T_TE C_N6 = 13;
const T_TE C_N7 = 14;
const T_TE C_N8 = 15;
const T_TM C_NONE = 2;
const T_TG C_PB = 3;
const T_TG C_PN = 2;
const T_TG C_PQ = 0;
const T_TG C_PR = 1;
const T_TR C_R1 = 0;
const T_TR C_R2 = 1;
const T_TR C_R3 = 2;
const T_TR C_R4 = 3;
const T_TR C_R5 = 4;
const T_TR C_R6 = 5;
const T_TR C_R7 = 6;
const T_TR C_R8 = 7;
const T_TE C_S1 = 4;
const T_TE C_S2 = 5;
const T_TE C_S3 = 6;
const T_TE C_S4 = 7;
const T_integer C_SYNCF = 1;
const T_integer C_SYNCL = 36;
const T_integer C_SYNMF = 37;
const T_integer C_SYNML = 47;
const T_integer C_ZA = 10;
const T_integer C_ZAL = 119;
const T_char C_ZC = ',';
const T_integer C_ZD = 21;
const T_integer C_ZJ = 73;
const T_integer C_ZK = 16;
const T_integer C_ZKP1 = 17;
const T_integer C_ZL = 119;
const T_integer C_ZN = 30;
const T_integer C_ZS = 63;
const T_integer C_ZT = 63;
const T_integer C_ZV = 32767;
const T_integer C_ZW = 500;
const T_integer C_ZX = 31;
const T_integer C_ZY = 1;

// non-local goto targets
const int NL_1 = 6;
const int NL_2 = 5;
const int NL_9 = 4;

// program variables
T_arraytmofrs ALATK;
T_arraytkofrs ALLOC;
T_RX ATKFR;
T_RX ATKTO;
T_RB BOARD;
T_arraytkoftw BSTMV;
T_array_5 BSTVL;
T_RS CORNR;
T_arraytkofrs CSTAT;
T_array_6 EDGE;
T_arraytkofrs ENPAS;
T_integer FKPSHD;
T_integer FKSANQ;
T_integer FMAXMT;
T_integer FNODEL;
T_array_7 FPADCR;
T_integer FPBLOK;
T_integer FPCONN;
T_integer FPFLNX;
T_integer FRDUBL;
T_integer FRK7TH;
T_integer FTRADE;
T_integer FTRDSL;
T_integer FTRPDK;
T_integer FTRPWN;
T_integer FWKING;
T_integer FWMAJM;
T_integer FWMINM;
T_integer FWPAWN;
T_integer FWROOK;
T_arraytkofrs GENFR;
T_arraytkofrs GENPN;
T_arraytkofrs GENTO;
T_integer GOING;
T_RJ ICARD;
T_RJ ILINE;
T_array_8 INDEX;
T_text Input;
T_TJ JMTJ;
T_TK JMTK;
T_TJ JNTJ;
T_TK JNTK;
T_TM JNTM;
T_TW JNTW;
T_boolean Jumpin;
T_array_9 KILLR;
T_arraytkoftw LINDX;
T_RM LSTMV;
T_TV MAXPS;
T_TV MBLTE;
T_RC MBORD;
T_array_10 MBPWN;
T_TV MBTOT;
T_array_11 MBVAL;
T_RF MOVES;
T_RN MOVMS;
T_array_12 MVSEL;
T_integer NODES;
T_RM NULMV;
T_array_13 OTHER;
T_text Output;
T_array_14 SRCHM;
T_boolean SWEC;
T_boolean SWPA;
T_boolean SWPS;
T_boolean SWRE;
T_boolean SWSU;
T_boolean SWTR;
T_array_15 SYNTX;
T_arraytmofrs TMLOC;
T_array_16 TPLOC;
T_RE VALUE;
T_integer WINDOW;
T_arraytpofte XFPE;
T_array_17 XLLD;
T_arraytpofte XLPE;
T_arraytfofrs XNFS;
T_arraytrofrs XNRS;
T_arraytfofrs XRFS;
T_array_18 XRQM;
T_arraytqofrs XRQSA;
T_arraytqofrs XRQSO;
T_arraytrofrs XRRS;
T_RX XRSS;
T_array_19 XSPB;
T_arraytqofrs XSQS;
T_array_20 XSSX;
T_array_21 XTBC;
T_array_22 XTED;
T_array_23 XTGC;
T_array_24 XTGMP;
T_array_26 XTLS;
T_array_27 XTMA;
T_array_28 XTMQ;
T_array_29 XTMV;
T_array_30 XTPC;
T_array_31 XTPM;
T_array_32 XTPU;
T_array_33 XTPV;
T_array_34 XTQA;
T_array_35 XTQS;
T_array_36 XTRFS;
T_array_38 XTSF;
T_array_39 XTSL;
T_array_40 XTSR;
T_array_41 XTSX;
T_array_42 XTSY;
T_array_43 XTUC;
T_array_44 XTUMP;

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
        case NL_1: goto L_1;
        case NL_2: goto L_2;
        case NL_9: goto L_9;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 4041
        Jumpin = C_false;
        
        // line 4043
        Output << " HI.  THIS IS CHESS .5" << _WRITELN;
        
        // line 4044
        P_INICON(nullptr);
        
        // line 4046
        L_1:
        P_INITAL(nullptr, BOARD);
        
        // line 4048
        L_2:
        do
        {
            // line 4050
            if(Jumpin)
            {
                // line 4050
                goto L_3;
            }
            
            // line 4052
            do
            {
                // line 4053
                P_YRMOVE(nullptr);
                
                { /* NOP */ }
            }
            while(!SWRE);
            
            // line 4058
            L_3:
            Jumpin = C_false;
            
            // line 4060
            do
            {
                // line 4061
                P_MYMOVE(nullptr);
                
                // line 4062
                if((GOING > 0))
                {
                    // line 4063
                    GOING = (GOING - 1);
                }
            }
            while(!(GOING == 0));
            
            { /* NOP */ }
        }
        while(!C_false);
        
        L_9:
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_1:
        case NL_2:
        case NL_9:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 290
//================================================================================
// scope: MAX (level : 2)

// activation record
struct Frame_MAX
{
    // parameters
    T_integer A;
    T_integer B;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_MAX(void* _slink, T_integer A, T_integer B)
{
    // prologue/frame definition
    Frame_MAX _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 293
    if((_F.A > _F.B))
    {
        // line 294
        _F._fnvalue = _F.A;
    }
    else
    {
        // line 296
        _F._fnvalue = _F.B;
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 300
//================================================================================
// scope: MIN (level : 2)

// activation record
struct Frame_MIN
{
    // parameters
    T_integer A;
    T_integer B;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_MIN(void* _slink, T_integer A, T_integer B)
{
    // prologue/frame definition
    Frame_MIN _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 303
    if((_F.A < _F.B))
    {
        // line 304
        _F._fnvalue = _F.A;
    }
    else
    {
        // line 306
        _F._fnvalue = _F.B;
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 310
//================================================================================
// scope: SIGN (level : 2)

// activation record
struct Frame_SIGN
{
    // parameters
    T_integer A;
    T_integer B;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_SIGN(void* _slink, T_integer A, T_integer B)
{
    // prologue/frame definition
    Frame_SIGN _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 315
    if((_F.B < 0))
    {
        // line 315
        _F._fnvalue = (_abs(_F.A) * (-1));
    }
    else
    {
        // line 315
        _F._fnvalue = (_abs(_F.A) * (+1));
    }
    
    // epilogue
    return _F._fnvalue;
}


// line 320
//================================================================================
// scope: SORTIT (level : 2)

// activation record
struct Frame_SORTIT
{
    // parameters
    T_RE& A;
    T_RF& B;
    T_TW C;

    // locals
    T_RM INRM;
    T_boolean INTB;
    T_integer INTI;
    T_TV INTV;
    T_TW INTW;
};

// function body
void P_SORTIT(void* _slink, T_RE& A, T_RF& B, T_TW C)
{
    // prologue/frame definition
    Frame_SORTIT _F = {A, B, C };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 333
    _FOR_TO(_F.INTW, (C_AW + 2), _F.C)
    {
        // line 335
        _F.INTI = (_F.INTW - 1);
        
        // line 336
        _F.INTV = _F.A[_F.INTW];
        
        // line 337
        _F.INRM = _F.B[_F.INTW];
        
        // line 338
        _F.INTB = C_true;
        
        // line 339
        while(((_F.INTI > C_AW) && _F.INTB))
        {
            // line 340
            if((_F.INTV < _F.A[_F.INTI]))
            {
                // line 342
                _F.A[(_F.INTI + 1)] = _F.A[_F.INTI];
                
                // line 343
                _F.B[(_F.INTI + 1)] = _F.B[_F.INTI];
                
                // line 344
                _F.INTI = (_F.INTI - 1);
                
                { /* NOP */ }
            }
            else
            {
                // line 347
                _F.INTB = C_false;
            }
        }
        
        // line 348
        _F.A[(_F.INTI + 1)] = _F.INTV;
        
        // line 349
        _F.B[(_F.INTI + 1)] = _F.INRM;
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTW)
    
    { /* NOP */ }
}


// line 354
//================================================================================
// scope: ANDRS (level : 2)

// activation record
struct Frame_ANDRS
{
    // parameters
    T_RS& C;
    T_RS A;
    T_RS B;

    // locals
    T_TY INTY;
};

// function body
void P_ANDRS(void* _slink, T_RS& C, T_RS A, T_RS B)
{
    // prologue/frame definition
    Frame_ANDRS _F = {C, A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 363
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 364
        _F.C.RSSS[_F.INTY] = (_F.A.RSSS[_F.INTY] * _F.B.RSSS[_F.INTY]);
    }
    _FOR_END(_F.INTY)
    
    { /* NOP */ }
}


// line 368
//================================================================================
// scope: CLRRS (level : 2)

// activation record
struct Frame_CLRRS
{
    // parameters
    T_RS& C;
    T_TS A;
};

// function body
void P_CLRRS(void* _slink, T_RS& C, T_TS A)
{
    // prologue/frame definition
    Frame_CLRRS _F = {C, A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 373
    _F.C.RSSS[XTSY[_F.A]] = (_F.C.RSSS[XTSY[_F.A]] - XSSX[_F.A]);
    
    { /* NOP */ }
}


// line 377
//================================================================================
// scope: CPYRS (level : 2)

// activation record
struct Frame_CPYRS
{
    // parameters
    T_RS& C;
    T_RS A;

    // locals
    T_TY INTY;
};

// function body
void P_CPYRS(void* _slink, T_RS& C, T_RS A)
{
    // prologue/frame definition
    Frame_CPYRS _F = {C, A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 385
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 386
        _F.C.RSSS[_F.INTY] = _F.A.RSSS[_F.INTY];
    }
    _FOR_END(_F.INTY)
    
    { /* NOP */ }
}


// line 390
//================================================================================
// scope: IORRS (level : 2)

// activation record
struct Frame_IORRS
{
    // parameters
    T_RS& C;
    T_RS A;
    T_RS B;

    // locals
    T_TY INTY;
};

// function body
void P_IORRS(void* _slink, T_RS& C, T_RS A, T_RS B)
{
    // prologue/frame definition
    Frame_IORRS _F = {C, A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 398
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 399
        _F.C.RSSS[_F.INTY] = (_F.A.RSSS[_F.INTY] + _F.B.RSSS[_F.INTY]);
    }
    _FOR_END(_F.INTY)
    
    { /* NOP */ }
}


// line 403
//================================================================================
// scope: NEWRS (level : 2)

// activation record
struct Frame_NEWRS
{
    // parameters
    T_RS& A;

    // locals
    T_TY INTY;
};

// function body
void P_NEWRS(void* _slink, T_RS& A)
{
    // prologue/frame definition
    Frame_NEWRS _F = {A };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    
    // subroutine body
    // line 410
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 411
        _F.A.RSSS[_F.INTY] = _setLiteral1;
    }
    _FOR_END(_F.INTY)
    
    { /* NOP */ }
}


// line 415
//================================================================================
// scope: NOTRS (level : 2)

// activation record
struct Frame_NOTRS
{
    // parameters
    T_RS& C;
    T_RS A;

    // locals
    T_TY INTY;
};

// function body
void P_NOTRS(void* _slink, T_RS& C, T_RS A)
{
    // prologue/frame definition
    Frame_NOTRS _F = {C, A };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_AX, C_ZX);
    
    // subroutine body
    // line 423
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 424
        _F.C.RSSS[_F.INTY] = (_setLiteral1 - _F.A.RSSS[_F.INTY]);
    }
    _FOR_END(_F.INTY)
    
    { /* NOP */ }
}


// line 427
//================================================================================
// scope: NXTTS (level : 2)

// activation record
struct Frame_NXTTS
{
    // parameters
    T_RS& A;
    T_TS& B;

    // locals
    T_boolean _fnvalue;
    T_TX INTX;
    T_TY INTY;
};

// function body
T_boolean F_NXTTS(void* _slink, T_RS& A, T_TS& B)
{
    // prologue/frame definition
    Frame_NXTTS _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 443
    _FOR_DOWNTO(_F.INTY, C_ZY, C_AY)
    {
        // line 444
        if((_F.A.RSTI[_F.INTY] != 0))
        {
            // line 461
            _FOR_DOWNTO(_F.INTX, C_ZX, C_AX)
            {
                // line 462
                if((_F.A.RSSS[_F.INTY] & _F.INTX))
                {
                    // line 464
                    _F.B = (_F.INTX + (_F.INTY * (C_ZX + 1)));
                    
                    // line 465
                    {
                        _T_GenericSet _setLiteral1;
                        _setLiteral1.set(_F.INTX);
                        
                        _F.A.RSSS[_F.INTY] = (_F.A.RSSS[_F.INTY] - _setLiteral1);
                    }
                    
                    // line 467
                    _F._fnvalue = C_true;
                    
                    // line 468
                    goto L_11;
                    
                    { /* NOP */ }
                }
            }
            _FOR_END(_F.INTX)
            
            { /* NOP */ }
        }
    }
    _FOR_END(_F.INTY)
    
    // line 472
    _F._fnvalue = C_false;
    
    L_11:
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 477
//================================================================================
// scope: CNTRS (level : 2)

// activation record
struct Frame_CNTRS
{
    // parameters
    T_RS A;

    // locals
    T_TS _fnvalue;
    T_TS IMTS;
    T_RS INRS;
    T_TS INTS;
};

// function body
T_TS F_CNTRS(void* _slink, T_RS A)
{
    // prologue/frame definition
    Frame_CNTRS _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 486
    _F.INTS = 0;
    
    // line 488
    P_CPYRS(nullptr, _F.INRS, _F.A);
    
    // line 489
    while(F_NXTTS(nullptr, _F.INRS, _F.IMTS))
    {
        // line 490
        _F.INTS = (_F.INTS + 1);
    }
    
    // line 498
    _F._fnvalue = _F.INTS;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 502
//================================================================================
// scope: SETRS (level : 2)

// activation record
struct Frame_SETRS
{
    // parameters
    T_RS& C;
    T_TS A;
};

// function body
void P_SETRS(void* _slink, T_RS& C, T_TS A)
{
    // prologue/frame definition
    Frame_SETRS _F = {C, A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 507
    _F.C.RSSS[XTSY[_F.A]] = (_F.C.RSSS[XTSY[_F.A]] + XSSX[_F.A]);
    
    { /* NOP */ }
}


// line 511
//================================================================================
// scope: SFTRS (level : 2)

// activation record
struct Frame_SFTRS
{
    // parameters
    T_RS& A;
    T_RS B;
    T_TE C;

    // locals
    T_TS INTS;
};

// function body
void P_SFTRS(void* _slink, T_RS& A, T_RS B, T_TE C)
{
    // prologue/frame definition
    Frame_SFTRS _F = {A, B, C };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 521
    P_NEWRS(nullptr, _F.A);
    
    // line 522
    while(F_NXTTS(nullptr, _F.B, _F.INTS))
    {
        // line 523
        if((XTLS[(XTSL[_F.INTS] + XTED[_F.C])] > 0))
        {
            // line 525
            P_SETRS(nullptr, _F.A, T_TS::C(XTLS[(XTSL[_F.INTS] + XTED[_F.C])]));
        }
    }
    
    { /* NOP */ }
}


// line 619
//================================================================================
// scope: INRSTB (level : 2)

// activation record
struct Frame_INRSTB
{
    // parameters
    T_RS A;
    T_TS B;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_INRSTB(void* _slink, T_RS A, T_TS B)
{
    // prologue/frame definition
    Frame_INRSTB _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 624
    _F._fnvalue = (XSSX[_F.B] <= _F.A.RSSS[XTSY[_F.B]]);
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 627
//================================================================================
// scope: NULRS (level : 2)

// activation record
struct Frame_NULRS
{
    // parameters
    T_RS A;

    // locals
    T_boolean _fnvalue;
    T_boolean INTB;
    T_TY INTY;
};

// function body
T_boolean F_NULRS(void* _slink, T_RS A)
{
    // prologue/frame definition
    Frame_NULRS _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 636
    _F.INTB = C_true;
    
    // line 637
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 638
        _F.INTB = (_F.INTB && (_F.A.RSTI[_F.INTY] == 0));
    }
    _FOR_END(_F.INTY)
    
    // line 639
    _F._fnvalue = _F.INTB;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 643
//================================================================================
// scope: NULMVB (level : 2)

// activation record
struct Frame_NULMVB
{
    // parameters
    T_RM A;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_NULMVB(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_NULMVB _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 649
    _F._fnvalue = ((_F.A.RMAC && _F.A.RMPR) && (!_F.A.RMCA));
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 653
//================================================================================
// scope: INICON (level : 2)

// forward declarations
void P_INICON_INISYN(void* _slink, T_RA A);
void P_INICON_INIXTP(void* _slink, T_TP A, T_char B, T_TM C, T_TU D, T_boolean E, T_TE F, T_TE G, T_TV H);

// activation record
struct Frame_INICON
{
    // locals
    T_integer IMTI;
    T_RS INRS;
    T_TD INTD;
    T_TE INTE;
    T_TF INTF;
    T_integer INTI;
    T_integer INTI1;
    T_TL INTL;
    T_TQ INTQ;
    T_TR INTR;
    T_TT INTT;
    T_TX INTX;
    T_TY INTY;
};

// function body
void P_INICON(void* _slink)
{
    // prologue/frame definition
    Frame_INICON _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 726
    P_INICON_INIXTP(&_F, C_LP, 'A', C_LITE, C_EP, C_false, C_B1, C_B2, T_TV::C((1 * 64)));
    
    // line 727
    P_INICON_INIXTP(&_F, C_LR, 'B', C_LITE, C_ER, C_true, C_S1, C_S4, T_TV::C((5 * 64)));
    
    // line 728
    P_INICON_INIXTP(&_F, C_LN, 'C', C_LITE, C_EN, C_false, C_N1, C_N8, T_TV::C((3 * 64)));
    
    // line 729
    P_INICON_INIXTP(&_F, C_LB, 'D', C_LITE, C_EB, C_true, C_B1, C_B4, T_TV::C((3 * 64)));
    
    // line 730
    P_INICON_INIXTP(&_F, C_LQ, 'E', C_LITE, C_EQ, C_true, C_B1, C_S4, T_TV::C((9 * 64)));
    
    // line 731
    P_INICON_INIXTP(&_F, C_LK, 'F', C_LITE, C_EK, C_false, C_B1, C_S4, T_TV::C(0));
    
    // line 732
    P_INICON_INIXTP(&_F, C_DP, '1', C_DARK, C_EP, C_false, C_B3, C_B4, T_TV::C(((-1) * 64)));
    
    // line 733
    P_INICON_INIXTP(&_F, C_DR, '2', C_DARK, C_ER, C_true, C_S1, C_S4, T_TV::C(((-5) * 64)));
    
    // line 734
    P_INICON_INIXTP(&_F, C_DN, '3', C_DARK, C_EN, C_false, C_N1, C_N8, T_TV::C(((-3) * 64)));
    
    // line 735
    P_INICON_INIXTP(&_F, C_DB, '4', C_DARK, C_EB, C_true, C_B1, C_B4, T_TV::C(((-3) * 64)));
    
    // line 736
    P_INICON_INIXTP(&_F, C_DQ, '5', C_DARK, C_EQ, C_true, C_B1, C_S4, T_TV::C(((-9) * 64)));
    
    // line 737
    P_INICON_INIXTP(&_F, C_DK, '6', C_DARK, C_EK, C_false, C_B1, C_S4, T_TV::C(0));
    
    // line 738
    P_INICON_INIXTP(&_F, C_MT, '-', C_NONE, C_EP, C_false, C_B2, C_B1, T_TV::C(0));
    
    // line 740
    XTGMP[C_PQ][C_LITE] = C_LQ;
    
    // line 740
    XTGMP[C_PQ][C_DARK] = C_DQ;
    
    // line 740
    XTGC[C_PQ] = 'Q';
    
    // line 741
    XTGMP[C_PR][C_LITE] = C_LR;
    
    // line 741
    XTGMP[C_PR][C_DARK] = C_DR;
    
    // line 741
    XTGC[C_PR] = 'R';
    
    // line 742
    XTGMP[C_PN][C_LITE] = C_LN;
    
    // line 742
    XTGMP[C_PN][C_DARK] = C_DN;
    
    // line 742
    XTGC[C_PN] = 'N';
    
    // line 743
    XTGMP[C_PB][C_LITE] = C_LB;
    
    // line 743
    XTGMP[C_PB][C_DARK] = C_DB;
    
    // line 743
    XTGC[C_PB] = 'B';
    
    // line 745
    XTUC[C_EK] = 'K';
    
    // line 746
    XTUC[C_EQ] = 'Q';
    
    // line 747
    XTUC[C_ER] = 'R';
    
    // line 748
    XTUC[C_EN] = 'N';
    
    // line 749
    XTUC[C_EB] = 'B';
    
    // line 750
    XTUC[C_EP] = 'P';
    
    // line 754
    XTBC[C_false] = '-';
    
    // line 755
    XTBC[C_true] = '*';
    
    // line 757
    OTHER[C_LITE] = C_DARK;
    
    // line 757
    XTMV[C_LITE] = 1;
    
    // line 758
    OTHER[C_DARK] = C_LITE;
    
    // line 758
    XTMV[C_DARK] = (-1);
    
    // line 759
    OTHER[C_NONE] = C_NONE;
    
    // line 761
    XTMA[C_LITE] = "    WHITE ";
    
    // line 762
    XTMA[C_DARK] = "    BLACK ";
    
    // line 763
    XTMA[C_NONE] = "   NO ONE ";
    
    // line 765
    XTQA[C_LS] = "WHITE KING";
    
    // line 766
    XTQA[C_LL] = "WHITE LONG";
    
    // line 767
    XTQA[C_DS] = "BLACK KING";
    
    // line 768
    XTQA[C_DL] = "BLACK LONG";
    
    // line 772
    _FOR_TO(_F.INTL, C_AL, C_ZL)
    {
        // line 773
        XTLS[_F.INTL] = (-1);
    }
    _FOR_END(_F.INTL)
    
    // line 774
    _F.INTL = 21;
    
    // line 776
    _F.INTT = (-1);
    
    // line 778
    _FOR_TO(_F.INTR, C_R1, C_R8)
    {
        // line 780
        _FOR_TO(_F.INTF, C_F1, C_F8)
        {
            // line 782
            _F.INTT = (_F.INTT + 1);
            
            // line 783
            XTRFS[_F.INTR][_F.INTF] = _F.INTT;
            
            // line 785
            XTLS[_F.INTL] = _F.INTT;
            
            // line 787
            XTSL[_F.INTT] = _F.INTL;
            
            // line 789
            XTSR[_F.INTT] = _F.INTR;
            
            // line 790
            XTSF[_F.INTT] = _F.INTF;
            
            // line 791
            _F.INTL = (_F.INTL + 1);
            
            { /* NOP */ }
        }
        _FOR_END(_F.INTF)
        
        // line 793
        _F.INTL = (_F.INTL + 2);
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTR)
    
    // line 799
    _F.INTT = (-1);
    
    // line 800
    _FOR_TO(_F.INTY, C_AY, C_ZY)
    {
        // line 802
        _FOR_TO(_F.INTX, C_AX, C_ZX)
        {
            // line 804
            _F.INTT = (_F.INTT + 1);
            
            // line 805
            XTSX[_F.INTT] = _F.INTX;
            
            // line 806
            XTSY[_F.INTT] = _F.INTY;
            
            // line 807
            {
                _T_GenericSet _setLiteral1;
                _setLiteral1.set(_F.INTX);
                
                XSSX[_F.INTT] = _setLiteral1;
            }
            
            // line 808
            P_NEWRS(nullptr, XRSS[_F.INTT]);
            
            // line 809
            {
                _T_GenericSet _setLiteral2;
                _setLiteral2.set(_F.INTX);
                
                XRSS[_F.INTT].RSSS[_F.INTY] = _setLiteral2;
            }
            
            { /* NOP */ }
        }
        _FOR_END(_F.INTX)
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTY)
    
    // line 815
    _FOR_TO(_F.INTR, C_R1, C_R8)
    {
        // line 816
        P_NEWRS(nullptr, XRRS[_F.INTR]);
    }
    _FOR_END(_F.INTR)
    
    // line 817
    _FOR_TO(_F.INTF, C_F1, C_F8)
    {
        // line 818
        P_NEWRS(nullptr, XRFS[_F.INTF]);
    }
    _FOR_END(_F.INTF)
    
    // line 820
    _FOR_TO(_F.INTR, C_R1, C_R8)
    {
        // line 821
        _FOR_TO(_F.INTF, C_F1, C_F8)
        {
            // line 823
            P_SETRS(nullptr, XRRS[_F.INTR], XTRFS[_F.INTR][_F.INTF]);
            
            // line 824
            P_SETRS(nullptr, XRFS[_F.INTF], XTRFS[_F.INTR][_F.INTF]);
            
            { /* NOP */ }
        }
        _FOR_END(_F.INTF)
    }
    _FOR_END(_F.INTR)
    
    // line 827
    _FOR_TO(_F.INTF, C_F1, C_F8)
    {
        // line 828
        P_NOTRS(nullptr, XNFS[_F.INTF], XRFS[_F.INTF]);
    }
    _FOR_END(_F.INTF)
    
    // line 830
    _FOR_TO(_F.INTR, C_R1, C_R8)
    {
        // line 831
        P_NOTRS(nullptr, XNRS[_F.INTR], XRRS[_F.INTR]);
    }
    _FOR_END(_F.INTR)
    
    // line 835
    P_CPYRS(nullptr, EDGE[C_S1], XRFS[C_F1]);
    
    // line 836
    P_CPYRS(nullptr, EDGE[C_S2], XRRS[C_R8]);
    
    // line 837
    P_CPYRS(nullptr, EDGE[C_S3], XRFS[C_F8]);
    
    // line 838
    P_CPYRS(nullptr, EDGE[C_S4], XRRS[C_R1]);
    
    // line 839
    P_IORRS(nullptr, EDGE[C_B1], EDGE[C_S1], EDGE[C_S2]);
    
    // line 840
    P_IORRS(nullptr, EDGE[C_B2], EDGE[C_S2], EDGE[C_S3]);
    
    // line 841
    P_IORRS(nullptr, EDGE[C_B3], EDGE[C_S3], EDGE[C_S4]);
    
    // line 842
    P_IORRS(nullptr, EDGE[C_B4], EDGE[C_S4], EDGE[C_S1]);
    
    // line 843
    P_IORRS(nullptr, EDGE[C_N1], EDGE[C_B1], XRRS[C_R7]);
    
    // line 844
    P_IORRS(nullptr, EDGE[C_N2], EDGE[C_B2], XRRS[C_R7]);
    
    // line 845
    P_IORRS(nullptr, EDGE[C_N3], EDGE[C_B2], XRFS[C_F7]);
    
    // line 846
    P_IORRS(nullptr, EDGE[C_N4], EDGE[C_B3], XRFS[C_F7]);
    
    // line 847
    P_IORRS(nullptr, EDGE[C_N5], EDGE[C_B3], XRRS[C_R2]);
    
    // line 848
    P_IORRS(nullptr, EDGE[C_N6], EDGE[C_B4], XRRS[C_R2]);
    
    // line 849
    P_IORRS(nullptr, EDGE[C_N7], EDGE[C_B4], XRFS[C_F2]);
    
    // line 850
    P_IORRS(nullptr, EDGE[C_N8], EDGE[C_B1], XRFS[C_F2]);
    
    // line 854
    P_IORRS(nullptr, _F.INRS, XRRS[C_R1], XRRS[C_R2]);
    
    // line 855
    P_IORRS(nullptr, _F.INRS, _F.INRS, XRRS[C_R7]);
    
    // line 856
    P_IORRS(nullptr, _F.INRS, _F.INRS, XRRS[C_R8]);
    
    // line 857
    P_IORRS(nullptr, CORNR, XRFS[C_F1], XRFS[C_F2]);
    
    // line 858
    P_IORRS(nullptr, CORNR, CORNR, XRFS[C_F7]);
    
    // line 859
    P_IORRS(nullptr, CORNR, CORNR, XRFS[C_F8]);
    
    // line 860
    P_ANDRS(nullptr, CORNR, CORNR, _F.INRS);
    
    // line 864
    XTED[C_N1] = 19;
    
    // line 864
    XTED[C_N2] = 21;
    
    // line 865
    XTED[C_N8] = 8;
    
    // line 865
    XTED[C_B1] = 9;
    
    // line 865
    XTED[C_S2] = 10;
    
    // line 865
    XTED[C_B2] = 11;
    
    // line 865
    XTED[C_N3] = 12;
    
    // line 866
    XTED[C_S1] = (-1);
    
    // line 866
    XTED[C_S3] = 1;
    
    // line 867
    XTED[C_N7] = (-12);
    
    // line 867
    XTED[C_B4] = (-11);
    
    // line 867
    XTED[C_S4] = (-10);
    
    // line 867
    XTED[C_B3] = (-9);
    
    // line 867
    XTED[C_N4] = (-8);
    
    // line 868
    XTED[C_N6] = (-21);
    
    // line 868
    XTED[C_N5] = (-19);
    
    // line 872
    _FOR_TO(_F.INTI1, C_AZL, C_ZAL)
    {
        // line 873
        XLLD[_F.INTI1] = 0;
    }
    _FOR_END(_F.INTI1)
    
    // line 875
    _FOR_TO(_F.INTE, C_B1, C_S4)
    {
        // line 877
        _F.INTD = XTED[_F.INTE];
        
        // line 878
        _FOR_TO(_F.IMTI, 1, 7)
        {
            // line 879
            XLLD[(_F.IMTI * _F.INTD)] = _F.INTD;
        }
        _FOR_END(_F.IMTI)
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTE)
    
    // line 882
    _FOR_TO(_F.INTE, C_N1, C_N8)
    {
        // line 883
        XLLD[XTED[_F.INTE]] = XTED[_F.INTE];
    }
    _FOR_END(_F.INTE)
    
    // line 887
    P_IORRS(nullptr, XSQS[C_LS], XRSS[XTRFS[C_R1][C_F8]], XRSS[XTRFS[C_R1][C_F5]]);
    
    // line 888
    P_IORRS(nullptr, XSQS[C_LL], XRSS[XTRFS[C_R1][C_F1]], XRSS[XTRFS[C_R1][C_F5]]);
    
    // line 889
    P_IORRS(nullptr, XSQS[C_DS], XRSS[XTRFS[C_R8][C_F8]], XRSS[XTRFS[C_R8][C_F5]]);
    
    // line 890
    P_IORRS(nullptr, XSQS[C_DL], XRSS[XTRFS[C_R8][C_F1]], XRSS[XTRFS[C_R8][C_F5]]);
    
    // line 892
    P_IORRS(nullptr, XRQSO[C_LS], XRSS[XTRFS[C_R1][C_F6]], XRSS[XTRFS[C_R1][C_F7]]);
    
    // line 893
    P_IORRS(nullptr, XRQSO[C_LL], XRSS[XTRFS[C_R1][C_F4]], XRSS[XTRFS[C_R1][C_F3]]);
    
    // line 894
    P_IORRS(nullptr, XRQSA[C_LS], XRSS[XTRFS[C_R1][C_F5]], XRQSO[C_LS]);
    
    // line 895
    P_IORRS(nullptr, XRQSA[C_LL], XRSS[XTRFS[C_R1][C_F5]], XRQSO[C_LL]);
    
    // line 896
    P_IORRS(nullptr, XRQSO[C_LL], XRSS[XTRFS[C_R1][C_F2]], XRQSO[C_LL]);
    
    // line 898
    P_IORRS(nullptr, XRQSO[C_DS], XRSS[XTRFS[C_R8][C_F6]], XRSS[XTRFS[C_R8][C_F7]]);
    
    // line 899
    P_IORRS(nullptr, XRQSO[C_DL], XRSS[XTRFS[C_R8][C_F4]], XRSS[XTRFS[C_R8][C_F3]]);
    
    // line 900
    P_IORRS(nullptr, XRQSO[C_DS], XRSS[XTRFS[C_R8][C_F5]], XRQSO[C_DS]);
    
    // line 901
    P_IORRS(nullptr, XRQSA[C_DL], XRSS[XTRFS[C_R8][C_F5]], XRQSO[C_DL]);
    
    // line 902
    P_IORRS(nullptr, XRQSO[C_DL], XRSS[XTRFS[C_R8][C_F2]], XRQSO[C_DL]);
    
    // line 904
    _FOR_TO(_F.INTQ, C_LS, C_DL)
    {
        // line 907
        XRQM[_F.INTQ].RMCP = C_MT;
        
        // line 908
        XRQM[_F.INTQ].RMCA = C_false;
        
        // line 909
        XRQM[_F.INTQ].RMAC = C_true;
        
        // line 910
        XRQM[_F.INTQ].RMCH = C_false;
        
        // line 911
        XRQM[_F.INTQ].RMMT = C_false;
        
        // line 912
        XRQM[_F.INTQ].RMIL = C_false;
        
        // line 913
        XRQM[_F.INTQ].RMSU = C_false;
        
        // line 914
        XRQM[_F.INTQ].RMPR = C_false;
        
        // line 915
        XRQM[_F.INTQ].RMOO = C_true;
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTQ)
    
    // line 918
    XRQM[C_LS].RMFR = XTRFS[C_R1][C_F5];
    
    // line 918
    XRQM[C_LS].RMTO = XTRFS[C_R1][C_F7];
    
    // line 919
    XRQM[C_LL].RMFR = XTRFS[C_R1][C_F5];
    
    // line 919
    XRQM[C_LL].RMTO = XTRFS[C_R1][C_F3];
    
    // line 920
    XRQM[C_DS].RMFR = XTRFS[C_R8][C_F5];
    
    // line 920
    XRQM[C_DS].RMTO = XTRFS[C_R8][C_F7];
    
    // line 921
    XRQM[C_DL].RMFR = XTRFS[C_R8][C_F5];
    
    // line 921
    XRQM[C_DL].RMTO = XTRFS[C_R8][C_F3];
    
    // line 923
    XRQM[C_LS].RMQS = C_false;
    
    // line 924
    XRQM[C_LL].RMQS = C_true;
    
    // line 925
    XRQM[C_DS].RMQS = C_false;
    
    // line 926
    XRQM[C_DL].RMQS = C_true;
    
    // line 928
    XTMQ[C_LITE] = C_LS;
    
    // line 929
    XTMQ[C_DARK] = C_DS;
    
    // line 931
    XTQS[C_LS] = XTRFS[C_R1][C_F8];
    
    // line 932
    XTQS[C_LL] = XTRFS[C_R1][C_F1];
    
    // line 933
    XTQS[C_DS] = XTRFS[C_R8][C_F8];
    
    // line 934
    XTQS[C_DL] = XTRFS[C_R8][C_F1];
    
    // line 940
    NULMV.RMFR = C_AS;
    
    // line 941
    NULMV.RMTO = C_AS;
    
    // line 942
    NULMV.RMCP = C_MT;
    
    // line 943
    NULMV.RMCA = C_false;
    
    // line 944
    NULMV.RMAC = C_true;
    
    // line 945
    NULMV.RMCH = C_false;
    
    // line 946
    NULMV.RMMT = C_false;
    
    // line 947
    NULMV.RMIL = C_false;
    
    // line 948
    NULMV.RMSU = C_false;
    
    // line 949
    NULMV.RMPR = C_true;
    
    // line 950
    NULMV.RMPP = C_PB;
    
    { /* NOP */ }
    
    // line 955
    JMTJ = C_ZJ;
    
    // line 956
    ICARD[C_ZJ] = ';';
    
    // line 957
    ILINE[C_ZJ] = ';';
    
    // line 961
    _F.INTI = C_SYNCF;
    
    // line 962
    P_INICON_INISYN(&_F, T_RA::C("    *P    "));
    
    // line 963
    P_INICON_INISYN(&_F, T_RA::C("    *P/  1"));
    
    // line 964
    P_INICON_INISYN(&_F, T_RA::C("/  1*P    "));
    
    // line 965
    P_INICON_INISYN(&_F, T_RA::C("    *P/ R "));
    
    // line 966
    P_INICON_INISYN(&_F, T_RA::C("/ R *P    "));
    
    // line 967
    P_INICON_INISYN(&_F, T_RA::C("    *P/ R1"));
    
    // line 968
    P_INICON_INISYN(&_F, T_RA::C("/ R1*P    "));
    
    // line 969
    P_INICON_INISYN(&_F, T_RA::C("    *P/KR "));
    
    // line 970
    P_INICON_INISYN(&_F, T_RA::C("/KR *P    "));
    
    // line 971
    P_INICON_INISYN(&_F, T_RA::C("    *P/KR1"));
    
    // line 972
    P_INICON_INISYN(&_F, T_RA::C("/KR1*P    "));
    
    // line 973
    P_INICON_INISYN(&_F, T_RA::C("/  1*P/  1"));
    
    // line 974
    P_INICON_INISYN(&_F, T_RA::C("/ R *P/ R "));
    
    // line 975
    P_INICON_INISYN(&_F, T_RA::C("/  1*P/ R "));
    
    // line 976
    P_INICON_INISYN(&_F, T_RA::C("/ R *P/  1"));
    
    // line 977
    P_INICON_INISYN(&_F, T_RA::C("/ R1*P/  1"));
    
    // line 978
    P_INICON_INISYN(&_F, T_RA::C("/  1*P/ R1"));
    
    // line 979
    P_INICON_INISYN(&_F, T_RA::C("/ R1*P/ R "));
    
    // line 980
    P_INICON_INISYN(&_F, T_RA::C("/ R *P/ R1"));
    
    // line 981
    P_INICON_INISYN(&_F, T_RA::C("/KR *P/  1"));
    
    // line 982
    P_INICON_INISYN(&_F, T_RA::C("/  1*P/KR "));
    
    // line 983
    P_INICON_INISYN(&_F, T_RA::C("/KR *P/ R "));
    
    // line 984
    P_INICON_INISYN(&_F, T_RA::C("/ R *P/KR "));
    
    // line 985
    P_INICON_INISYN(&_F, T_RA::C("/  1*P/KR1"));
    
    // line 986
    P_INICON_INISYN(&_F, T_RA::C("/KR1*P/  1"));
    
    // line 987
    P_INICON_INISYN(&_F, T_RA::C("  R *P/KR1"));
    
    // line 988
    P_INICON_INISYN(&_F, T_RA::C("/KR1*P/ R "));
    
    // line 989
    P_INICON_INISYN(&_F, T_RA::C("/ R1*P/ R1"));
    
    // line 990
    P_INICON_INISYN(&_F, T_RA::C("/KR *P/ R1"));
    
    // line 991
    P_INICON_INISYN(&_F, T_RA::C("/ R1*P/KR "));
    
    // line 992
    P_INICON_INISYN(&_F, T_RA::C("/KR *P/KR "));
    
    // line 993
    P_INICON_INISYN(&_F, T_RA::C("/KR1*P/ R1"));
    
    // line 994
    P_INICON_INISYN(&_F, T_RA::C("/ R1*P/KR1"));
    
    // line 995
    P_INICON_INISYN(&_F, T_RA::C("/KR1*P/KR "));
    
    // line 996
    P_INICON_INISYN(&_F, T_RA::C("/KR *P/KR1"));
    
    // line 997
    P_INICON_INISYN(&_F, T_RA::C("/KR1*P/KR1"));
    
    // line 999
    P_INICON_INISYN(&_F, T_RA::C("    -   R1"));
    
    // line 1000
    P_INICON_INISYN(&_F, T_RA::C("    -  KR1"));
    
    // line 1001
    P_INICON_INISYN(&_F, T_RA::C("/  1-   R1"));
    
    // line 1002
    P_INICON_INISYN(&_F, T_RA::C("/ R -   R1"));
    
    // line 1003
    P_INICON_INISYN(&_F, T_RA::C("/  1-  KR1"));
    
    // line 1004
    P_INICON_INISYN(&_F, T_RA::C("/ R -  KR1"));
    
    // line 1005
    P_INICON_INISYN(&_F, T_RA::C("/ R1-   R1"));
    
    // line 1006
    P_INICON_INISYN(&_F, T_RA::C("/KR -   R1"));
    
    // line 1007
    P_INICON_INISYN(&_F, T_RA::C("/ R1-  KR1"));
    
    // line 1008
    P_INICON_INISYN(&_F, T_RA::C("/KR -  KR1"));
    
    // line 1009
    P_INICON_INISYN(&_F, T_RA::C("/KR1-  KR1"));
    
    // line 1013
    FKPSHD = 10;
    
    // line 1014
    FKSANQ = 150;
    
    // line 1015
    FMAXMT = 256;
    
    // line 1016
    FNODEL = 18;
    
    // line 1017
    FPADCR[C_F1] = 0;
    
    // line 1018
    FPADCR[C_F2] = 0;
    
    // line 1019
    FPADCR[C_F3] = 5;
    
    // line 1020
    FPADCR[C_F4] = 10;
    
    // line 1021
    FPADCR[C_F5] = 15;
    
    // line 1022
    FPADCR[C_F6] = 5;
    
    // line 1023
    FPADCR[C_F7] = 0;
    
    // line 1024
    FPADCR[C_F8] = 0;
    
    // line 1025
    FPBLOK = 20;
    
    // line 1026
    FPCONN = 5;
    
    // line 1027
    FPFLNX = 12;
    
    // line 1028
    FRDUBL = 60;
    
    // line 1029
    FRK7TH = 120;
    
    // line 1030
    FTRADE = 36;
    
    // line 1031
    FTRDSL = 5156;
    
    // line 1032
    FTRPDK = 2;
    
    // line 1033
    FTRPWN = 8;
    
    // line 1034
    FWKING = 50;
    
    // line 1035
    FWMAJM = 1;
    
    // line 1036
    FWMINM = 200;
    
    // line 1037
    FWPAWN = 100;
    
    // line 1038
    FWROOK = 2;
    
    // line 1039
    WINDOW = 30;
    
    // line 1043
    SWEC = C_true;
    
    // line 1044
    SWPA = C_true;
    
    // line 1045
    SWPS = C_false;
    
    // line 1046
    SWRE = C_true;
    
    // line 1047
    SWSU = C_false;
    
    // line 1048
    SWTR = C_false;
    
    // line 1052
    GOING = 0;
    
    { /* NOP */ }
}


// line 670
//================================================================================
// scope: INICON_INISYN (level : 3)

// activation record
struct Frame_INICON_INISYN
{
   Frame_INICON* _slink;

    // parameters
    T_RA A;
};

// function body
void P_INICON_INISYN(void* _slink, T_RA A)
{
    // prologue/frame definition
    Frame_INICON_INISYN _F = { (Frame_INICON*)_slink, A };
    
    // subroutine body
    // line 678
    SYNTX[_F._slink->INTI].RYLS.RDPC = C_true;
    
    // line 679
    SYNTX[_F._slink->INTI].RYLS.RDSL = (_F.A[(C_AA + 0)] != ' ');
    
    // line 680
    SYNTX[_F._slink->INTI].RYLS.RDKQ = (_F.A[(C_AA + 1)] != ' ');
    
    // line 681
    SYNTX[_F._slink->INTI].RYLS.RDNB = (_F.A[(C_AA + 2)] != ' ');
    
    // line 682
    SYNTX[_F._slink->INTI].RYLS.RDRK = (_F.A[(C_AA + 3)] != ' ');
    
    { /* NOP */ }
    
    // line 684
    SYNTX[_F._slink->INTI].RYCH = _F.A[(C_AA + 4)];
    
    // line 687
    SYNTX[_F._slink->INTI].RYRS.RDPC = (_F.A[(C_AA + 5)] != ' ');
    
    // line 688
    SYNTX[_F._slink->INTI].RYRS.RDSL = (_F.A[(C_AA + 6)] != ' ');
    
    // line 689
    SYNTX[_F._slink->INTI].RYRS.RDKQ = (_F.A[(C_AA + 7)] != ' ');
    
    // line 690
    SYNTX[_F._slink->INTI].RYRS.RDNB = (_F.A[(C_AA + 8)] != ' ');
    
    // line 691
    SYNTX[_F._slink->INTI].RYRS.RDRK = (_F.A[(C_AA + 9)] != ' ');
    
    { /* NOP */ }
    
    { /* NOP */ }
    
    // line 694
    _F._slink->INTI = (_F._slink->INTI + 1);
    
    { /* NOP */ }
}


// line 698
//================================================================================
// scope: INICON_INIXTP (level : 3)

// activation record
struct Frame_INICON_INIXTP
{
   Frame_INICON* _slink;

    // parameters
    T_TP A;
    T_char B;
    T_TM C;
    T_TU D;
    T_boolean E;
    T_TE F;
    T_TE G;
    T_TV H;
};

// function body
void P_INICON_INIXTP(void* _slink, T_TP A, T_char B, T_TM C, T_TU D, T_boolean E, T_TE F, T_TE G, T_TV H)
{
    // prologue/frame definition
    Frame_INICON_INIXTP _F = { (Frame_INICON*)_slink, A, B, C, D, E, F, G, H };
    
    // subroutine body
    // line 710
    XTPC[_F.A] = _F.B;
    
    // line 711
    XTPM[_F.A] = _F.C;
    
    // line 712
    XSPB[_F.A] = _F.E;
    
    // line 713
    XFPE[_F.A] = _F.F;
    
    // line 714
    XLPE[_F.A] = _F.G;
    
    // line 715
    XTPU[_F.A] = _F.D;
    
    // line 716
    XTPV[_F.A] = _F.H;
    
    // line 717
    if((_F.A != C_MT))
    {
        // line 718
        XTUMP[_F.D][_F.C] = _F.A;
    }
    
    { /* NOP */ }
}


// line 1057
//================================================================================
// scope: INITAL (level : 2)

// activation record
struct Frame_INITAL
{
    // parameters
    T_RB& A;

    // locals
    T_TF INTF;
    T_TR INTR;
};

// function body
void P_INITAL(void* _slink, T_RB& A)
{
    // prologue/frame definition
    Frame_INITAL _F = {A };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_LS);
    _setLiteral1.set(C_LL);
    _setLiteral1.set(C_DS);
    _setLiteral1.set(C_DL);
    
    // subroutine body
    // line 1066
    _F.A.RBTM = C_LITE;
    
    // line 1067
    _F.A.RBTS = (-1);
    
    // line 1068
    _F.A.RBTI = 0;
    
    // line 1069
    _F.A.RBSQ = _setLiteral1;
    
    // line 1070
    _FOR_TO(_F.INTF, C_F1, C_F8)
    {
        // line 1072
        _F.A.RBIRF[C_R2][_F.INTF] = C_LP;
        
        // line 1073
        _FOR_TO(_F.INTR, C_R3, C_R6)
        {
            // line 1074
            _F.A.RBIRF[_F.INTR][_F.INTF] = C_MT;
        }
        _FOR_END(_F.INTR)
        
        // line 1075
        _F.A.RBIRF[C_R7][_F.INTF] = C_DP;
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTF)
    
    // line 1077
    _F.A.RBIRF[C_R1][C_F1] = C_LR;
    
    // line 1079
    _F.A.RBIRF[C_R1][C_F2] = C_LN;
    
    // line 1080
    _F.A.RBIRF[C_R1][C_F3] = C_LB;
    
    // line 1081
    _F.A.RBIRF[C_R1][C_F4] = C_LQ;
    
    // line 1082
    _F.A.RBIRF[C_R1][C_F5] = C_LK;
    
    // line 1083
    _F.A.RBIRF[C_R1][C_F6] = C_LB;
    
    // line 1084
    _F.A.RBIRF[C_R1][C_F7] = C_LN;
    
    // line 1085
    _F.A.RBIRF[C_R1][C_F8] = C_LR;
    
    // line 1086
    _F.A.RBIRF[C_R8][C_F1] = C_DR;
    
    // line 1087
    _F.A.RBIRF[C_R8][C_F2] = C_DN;
    
    // line 1088
    _F.A.RBIRF[C_R8][C_F3] = C_DB;
    
    // line 1089
    _F.A.RBIRF[C_R8][C_F4] = C_DQ;
    
    // line 1090
    _F.A.RBIRF[C_R8][C_F5] = C_DK;
    
    // line 1091
    _F.A.RBIRF[C_R8][C_F6] = C_DB;
    
    // line 1092
    _F.A.RBIRF[C_R8][C_F7] = C_DN;
    
    // line 1093
    _F.A.RBIRF[C_R8][C_F8] = C_DR;
    
    // line 1094
    MOVMS = " ENTER MOVE OR TYPE GO.       ";
    
    // line 1095
    Output << MOVMS << _WRITELN;
    
    // line 1096
    LSTMV = NULMV;
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1101
//================================================================================
// scope: PAUSER (level : 2)

// activation record
struct Frame_PAUSER
{};

// function body
void P_PAUSER(void* _slink)
{
    // prologue/frame definition
    Frame_PAUSER _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1104
    if(SWPA)
    {
        // line 1106
        Output << " PAUSING " << _WRITELN;
        
        // line 1107
        Input >> _READLN;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 1112
//================================================================================
// scope: PRIMOV (level : 2)

// activation record
struct Frame_PRIMOV
{
    // parameters
    T_RM A;
};

// function body
void P_PRIMOV(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_PRIMOV _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1117
    Output << "   FROM   " << _format(_F.A.RMFR, 2, 0) << "   TO   " << _format(_F.A.RMTO, 2, 0);
    
    // line 1118
    if(F_NULMVB(nullptr, _F.A))
    {
        // line 1119
        Output << ",   NULL   MCVE";
    }
    else
    {
        // line 1122
        if(_F.A.RMCA)
        {
            // line 1123
            Output << ", CAPTURE " << XTPC[_F.A.RMCP] << ',';
        }
        else
        {
            // line 1125
            Output << ", SIMPLE,";
        }
        
        // line 1126
        if((!_F.A.RMAC))
        {
            // line 1127
            Output << " NO";
        }
        
        // line 1128
        Output << " ACS";
        
        // line 1129
        if(_F.A.RMCH)
        {
            // line 1130
            Output << ", CHECK";
        }
        
        // line 1131
        if(_F.A.RMMT)
        {
            // line 1132
            Output << ",  MATE";
        }
        
        // line 1133
        if(_F.A.RMIL)
        {
            // line 1134
            Output << ", ILLEGAL";
        }
        
        // line 1135
        if(_F.A.RMSU)
        {
            // line 1136
            Output << ", SEARCHED";
        }
        
        // line 1137
        switch(_F.A.RMPR)
        {
        case C_false:
            // line 1139
            switch(_F.A.RMOO)
            {
            case C_false:
                // line 1141
                if(_F.A.RMEP)
                {
                    // line 1142
                    Output << ", ENPASSANT";
                }
                break;
            
            case C_true:
                // line 1145
                Output << ", CASTLE ";
                
                // line 1146
                if(_F.A.RMQS)
                {
                    // line 1147
                    Output << "LONG";
                }
                else
                {
                    // line 1148
                    Output << "SHORT";
                }
                
                { /* NOP */ }
                break;
            }
            break;
        
        case C_true:
            // line 1153
            Output << ", PROMOTE TO ";
            
            // line 1154
            switch(_F.A.RMPP)
            {
            case C_PQ:
                // line 1155
                Output << "QUEEN";
                break;
            
            case C_PR:
                // line 1156
                Output << "ROOK";
                break;
            
            case C_PB:
                // line 1157
                Output << "BISHOP";
                break;
            
            case C_PN:
                // line 1158
                Output << "KNIGHT";
                break;
            }
            
            { /* NOP */ }
            break;
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
    
    // line 1164
    Output << '.' << _WRITELN;
    
    { /* NOP */ }
}


// line 1168
//================================================================================
// scope: PRINTB (level : 2)

// activation record
struct Frame_PRINTB
{
    // parameters
    T_RC A;

    // locals
    T_TF INTF;
    T_TR INTR;
};

// function body
void P_PRINTB(void* _slink, T_RC A)
{
    // prologue/frame definition
    Frame_PRINTB _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1175
    Output << _WRITELN;
    
    // line 1176
    _FOR_DOWNTO(_F.INTR, C_R8, C_R1)
    {
        // line 1178
        Output << ' ' << _format((_ord(_F.INTR) + 1), 1, 0) << ' ';
        
        // line 1179
        _FOR_TO(_F.INTF, C_F1, C_F8)
        {
            // line 1180
            Output << XTPC[_F.A[XTRFS[_F.INTR][_F.INTF]]];
        }
        _FOR_END(_F.INTF)
        
        // line 1182
        Output << _WRITELN;
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTR)
    
    // line 1184
    Output << " W RNBQKBNR" << _WRITELN;
    
    { /* NOP */ }
}


// line 1208
//================================================================================
// scope: PRINAM (level : 2)

// activation record
struct Frame_PRINAM
{
    // parameters
    T_RX A;

    // locals
    T_TF INTF;
    T_TR INTR;
    T_TF JNTF;
    T_TR JNTR;
};

// function body
void P_PRINAM(void* _slink, T_RX A)
{
    // prologue/frame definition
    Frame_PRINAM _F = {A };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_R1);
    _setLiteral1.set(C_R3);
    _setLiteral1.set(C_R5);
    _setLiteral1.set(C_R7);
    
    // subroutine body
    // line 1215
    Output << _WRITELN;
    
    // line 1216
    _FOR_DOWNTO(_F.INTR, C_R8, C_R1)
    {
        // line 1218
        _FOR_DOWNTO(_F.JNTR, C_R8, C_R1)
        {
            // line 1220
            _FOR_TO(_F.INTF, C_F1, C_F8)
            {
                // line 1222
                Output << ' ';
                
                // line 1223
                _FOR_TO(_F.JNTF, C_F1, C_F8)
                {
                    // line 1225
                    Output << XTBC[F_INRSTB(nullptr, _F.A[XTRFS[_F.INTR][_F.INTF]], XTRFS[_F.JNTR][_F.JNTF])];
                    
                    { /* NOP */ }
                }
                _FOR_END(_F.JNTF)
                
                // line 1227
                Output << ' ';
                
                { /* NOP */ }
            }
            _FOR_END(_F.INTF)
            
            // line 1229
            Output << _WRITELN;
            
            { /* NOP */ }
        }
        _FOR_END(_F.JNTR)
        
        // line 1231
        Output << _WRITELN;
        
        // line 1232
        if((_setLiteral1 & _F.INTR))
        {
            // line 1232
            P_PAUSER(nullptr);
        }
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTR)
    
    { /* NOP */ }
}


// line 1237
//================================================================================
// scope: PRISWI (level : 2)

// activation record
struct Frame_PRISWI
{
    // parameters
    T_RA A;
    T_boolean B;
};

// function body
void P_PRISWI(void* _slink, T_RA A, T_boolean B)
{
    // prologue/frame definition
    Frame_PRISWI _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1240
    Output << ' ' << _F.A[C_AA] << _F.A[(C_AA + 1)];
    
    // line 1241
    if(_F.B)
    {
        // line 1242
        Output << " ON" << _WRITELN;
    }
    else
    {
        // line 1244
        Output << " OFF" << _WRITELN;
    }
    
    { /* NOP */ }
}


// line 1248
//================================================================================
// scope: MBEVAL (level : 2)

// activation record
struct Frame_MBEVAL
{
    // locals
    T_integer INTI;
};

// function body
void P_MBEVAL(void* _slink)
{
    // prologue/frame definition
    Frame_MBEVAL _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1254
    if((MBLTE != 0))
    {
        // line 1255
        if((MBLTE > 0))
        {
            // line 1256
            _F.INTI = MBPWN[C_LITE];
        }
        else
        {
            // line 1258
            _F.INTI = MBPWN[C_DARK];
        }
    }
    else
    {
        // line 1260
        _F.INTI = 0;
    }
    
    // line 1261
    MBVAL[JNTK] = F_SIGN(nullptr, F_MIN(nullptr, (F_MIN(nullptr, FMAXMT, _abs(MBLTE)) + (((((FTRADE * _abs(MBLTE)) * (FTRDSL - MBTOT)) * ((4 * _F.INTI) + FTRPDK)) / ((4 * _F.INTI) + FTRPWN)) / 262144)), 16320), MBLTE);
    
    { /* NOP */ }
}


// line 1267
//================================================================================
// scope: MBCAPT (level : 2)

// activation record
struct Frame_MBCAPT
{
    // parameters
    T_TP A;
};

// function body
void P_MBCAPT(void* _slink, T_TP A)
{
    // prologue/frame definition
    Frame_MBCAPT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1272
    MBTOT = (MBTOT - _abs(XTPV[_F.A]));
    
    // line 1273
    if((XTPU[_F.A] == C_EP))
    {
        // line 1274
        MBPWN[XTPM[_F.A]] = (MBPWN[XTPM[_F.A]] - 1);
    }
    
    // line 1276
    MBLTE = (MBLTE - XTPV[_F.A]);
    
    // line 1277
    P_MBEVAL(nullptr);
    
    { /* NOP */ }
}


// line 1281
//================================================================================
// scope: MBTPAC (level : 2)

// activation record
struct Frame_MBTPAC
{
    // parameters
    T_TP A;
};

// function body
void P_MBTPAC(void* _slink, T_TP A)
{
    // prologue/frame definition
    Frame_MBTPAC _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1287
    MBTOT = (MBTOT + _abs(XTPV[_F.A]));
    
    // line 1288
    if((XTPU[_F.A] == C_EP))
    {
        // line 1289
        MBPWN[XTPM[_F.A]] = (MBPWN[XTPM[_F.A]] + 1);
    }
    
    // line 1290
    MBLTE = (MBLTE + XTPV[_F.A]);
    
    { /* NOP */ }
}


// line 1294
//================================================================================
// scope: MBPROM (level : 2)

// activation record
struct Frame_MBPROM
{
    // parameters
    T_TP A;
};

// function body
void P_MBPROM(void* _slink, T_TP A)
{
    // prologue/frame definition
    Frame_MBPROM _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1300
    MBTOT = (MBTOT + _abs((XTPV[_F.A] - XTPV[XTUMP[C_EP][XTPM[_F.A]]])));
    
    // line 1302
    MBPWN[XTPM[_F.A]] = (MBPWN[XTPM[_F.A]] - 1);
    
    // line 1303
    MBLTE = ((MBLTE + XTPV[_F.A]) - XTPV[XTUMP[C_EP][XTPM[_F.A]]]);
    
    // line 1304
    P_MBEVAL(nullptr);
    
    { /* NOP */ }
}


// line 1308
//================================================================================
// scope: MBMORP (level : 2)

// activation record
struct Frame_MBMORP
{
    // parameters
    T_TP A;
};

// function body
void P_MBMORP(void* _slink, T_TP A)
{
    // prologue/frame definition
    Frame_MBMORP _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1315
    MBTOT = (MBTOT - _abs((XTPV[_F.A] - XTPV[XTUMP[C_EP][XTPM[_F.A]]])));
    
    // line 1316
    MBPWN[XTPM[_F.A]] = (MBPWN[XTPM[_F.A]] + 1);
    
    // line 1317
    MBLTE = (MBLTE - (XTPV[_F.A] - XTPV[XTUMP[C_EP][XTPM[_F.A]]]));
    
    { /* NOP */ }
}


// line 1321
//================================================================================
// scope: ADDATK (level : 2)

// activation record
struct Frame_ADDATK
{
    // parameters
    T_TS A;

    // locals
    T_boolean INTB;
    T_TD INTD;
    T_TE INTE;
    T_TM INTM;
    T_TP INTP;
    T_TT INTT;
};

// function body
void P_ADDATK(void* _slink, T_TS A)
{
    // prologue/frame definition
    Frame_ADDATK _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1335
    _F.INTP = MBORD[_F.A];
    
    // line 1336
    _F.INTM = XTPM[_F.INTP];
    
    // line 1337
    _FOR_TO(_F.INTE, XFPE[_F.INTP], XLPE[_F.INTP])
    {
        // line 1339
        _F.INTT = _F.A;
        
        // line 1340
        _F.INTB = XSPB[_F.INTP];
        
        // line 1341
        _F.INTD = XTED[_F.INTE];
        
        // line 1342
        do
        {
            // line 1343
            _F.INTT = XTLS[(XTSL[_F.INTT] + _F.INTD)];
            
            // line 1344
            if((_F.INTT >= 0))
            {
                // line 1346
                P_SETRS(nullptr, ATKFR[_F.A], T_TS::C(_F.INTT));
                
                // line 1347
                P_SETRS(nullptr, ATKTO[_F.INTT], _F.A);
                
                // line 1348
                P_SETRS(nullptr, ALATK[_F.INTM], T_TS::C(_F.INTT));
                
                // line 1349
                if((MBORD[_F.INTT] != C_MT))
                {
                    // line 1350
                    _F.INTB = C_false;
                }
                
                { /* NOP */ }
            }
            else
            {
                // line 1353
                _F.INTB = C_false;
            }
            
            { /* NOP */ }
        }
        while(!(!_F.INTB));
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTE)
    
    { /* NOP */ }
}


// line 1359
//================================================================================
// scope: ADDLOC (level : 2)

// activation record
struct Frame_ADDLOC
{
    // parameters
    T_TS A;
    T_TP B;
};

// function body
void P_ADDLOC(void* _slink, T_TS A, T_TP B)
{
    // prologue/frame definition
    Frame_ADDLOC _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1364
    P_CLRRS(nullptr, TPLOC[C_MT], _F.A);
    
    // line 1365
    P_SETRS(nullptr, TPLOC[_F.B], _F.A);
    
    // line 1366
    P_SETRS(nullptr, TMLOC[XTPM[_F.B]], _F.A);
    
    // line 1367
    P_SETRS(nullptr, ALLOC[JNTK], _F.A);
    
    // line 1368
    MBORD[_F.A] = _F.B;
    
    { /* NOP */ }
}


// line 1372
//================================================================================
// scope: CLSTAT (level : 2)

// activation record
struct Frame_CLSTAT
{};

// function body
void P_CLSTAT(void* _slink)
{
    // prologue/frame definition
    Frame_CLSTAT _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    
    // subroutine body
    // line 1377
    BOARD.RBTM = C_LITE;
    
    // line 1378
    BOARD.RBTS = (-1);
    
    // line 1379
    BOARD.RBSQ = _setLiteral1;
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1384
//================================================================================
// scope: CUTATK (level : 2)

// activation record
struct Frame_CUTATK
{
    // parameters
    T_TS A;

    // locals
    T_RS IMRS;
    T_RS INRS;
    T_TD INTD;
    T_TL INTL;
    T_TM INTM;
    T_TS INTS;
    T_TT INTT;
};

// function body
void P_CUTATK(void* _slink, T_TS A)
{
    // prologue/frame definition
    Frame_CUTATK _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1397
    P_CPYRS(nullptr, _F.INRS, ATKTO[_F.A]);
    
    // line 1398
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 1399
        if(XSPB[MBORD[_F.INTS]])
        {
            // line 1401
            _F.INTD = XLLD[(XTSL[_F.A] - XTSL[_F.INTS])];
            
            // line 1403
            _F.INTM = XTPM[MBORD[_F.INTS]];
            
            // line 1404
            _F.INTL = (XTSL[_F.A] + _F.INTD);
            
            // line 1405
            _F.INTT = XTLS[_F.INTL];
            
            // line 1407
            while((_F.INTT > C_AT))
            {
                // line 1409
                P_CLRRS(nullptr, ATKFR[_F.INTS], T_TS::C(_F.INTT));
                
                // line 1410
                P_CLRRS(nullptr, ATKTO[_F.INTT], _F.INTS);
                
                // line 1411
                P_ANDRS(nullptr, _F.IMRS, ATKTO[_F.INTT], TMLOC[_F.INTM]);
                
                // line 1414
                if(F_NULRS(nullptr, _F.IMRS))
                {
                    // line 1415
                    P_CLRRS(nullptr, ALATK[_F.INTM], T_TS::C(_F.INTT));
                }
                
                // line 1416
                if((MBORD[_F.INTT] == C_MT))
                {
                    // line 1418
                    _F.INTL = (_F.INTL + _F.INTD);
                    
                    // line 1419
                    _F.INTT = XTLS[_F.INTL];
                    
                    { /* NOP */ }
                }
                else
                {
                    // line 1422
                    _F.INTT = C_AT;
                }
                
                { /* NOP */ }
            }
            
            { /* NOP */ }
        }
    }
    
    { /* NOP */ }
}


// line 1428
//================================================================================
// scope: DELATK (level : 2)

// activation record
struct Frame_DELATK
{
    // parameters
    T_TS A;

    // locals
    T_RS IMRS;
    T_RS INRS;
    T_TM INTM;
    T_TS INTS;
};

// function body
void P_DELATK(void* _slink, T_TS A)
{
    // prologue/frame definition
    Frame_DELATK _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1440
    P_CPYRS(nullptr, _F.INRS, ATKFR[_F.A]);
    
    // line 1442
    P_NEWRS(nullptr, ATKFR[_F.A]);
    
    // line 1443
    _F.INTM = XTPM[MBORD[_F.A]];
    
    // line 1444
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 1447
        P_CLRRS(nullptr, ATKTO[_F.INTS], _F.A);
        
        // line 1449
        P_ANDRS(nullptr, _F.IMRS, ATKTO[_F.INTS], TMLOC[_F.INTM]);
        
        // line 1451
        if(F_NULRS(nullptr, _F.IMRS))
        {
            // line 1452
            P_CLRRS(nullptr, ALATK[_F.INTM], _F.INTS);
        }
        
        // line 1453
        P_CLRRS(nullptr, TPLOC[MBORD[_F.A]], _F.A);
        
        // line 1454
        P_CLRRS(nullptr, TMLOC[_F.INTM], _F.A);
        
        // line 1455
        P_CLRRS(nullptr, ALLOC[JNTK], _F.A);
        
        // line 1456
        P_SETRS(nullptr, TPLOC[C_MT], _F.A);
        
        // line 1457
        MBORD[_F.A] = C_MT;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 1462
//================================================================================
// scope: PRPATK (level : 2)

// activation record
struct Frame_PRPATK
{
    // parameters
    T_TS A;

    // locals
    T_RS INRS;
    T_TD INTD;
    T_TL INTL;
    T_TM INTM;
    T_TS INTS;
    T_TT INTT;
};

// function body
void P_PRPATK(void* _slink, T_TS A)
{
    // prologue/frame definition
    Frame_PRPATK _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1475
    P_CPYRS(nullptr, _F.INRS, ATKTO[_F.A]);
    
    // line 1476
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 1477
        if(XSPB[MBORD[_F.INTS]])
        {
            // line 1479
            _F.INTD = XLLD[(XTSL[_F.A] - XTSL[_F.INTS])];
            
            // line 1481
            _F.INTM = XTPM[MBORD[_F.INTS]];
            
            // line 1482
            _F.INTL = (XTSL[_F.A] + _F.INTD);
            
            // line 1483
            _F.INTT = XTLS[_F.INTL];
            
            // line 1485
            while((_F.INTT >= 0))
            {
                // line 1487
                P_SETRS(nullptr, ATKFR[_F.INTS], T_TS::C(_F.INTT));
                
                // line 1488
                P_SETRS(nullptr, ATKTO[_F.INTT], _F.INTS);
                
                // line 1489
                P_SETRS(nullptr, ALATK[_F.INTM], T_TS::C(_F.INTT));
                
                // line 1490
                if((MBORD[_F.INTT] == C_MT))
                {
                    // line 1492
                    _F.INTL = (_F.INTL + _F.INTD);
                    
                    // line 1493
                    _F.INTT = XTLS[_F.INTL];
                    
                    { /* NOP */ }
                }
                else
                {
                    // line 1496
                    _F.INTT = (-1);
                }
                
                { /* NOP */ }
            }
            
            { /* NOP */ }
        }
    }
    
    { /* NOP */ }
}


// line 1502
//================================================================================
// scope: GAINIT (level : 2)

// activation record
struct Frame_GAINIT
{
    // parameters
    T_RM A;
};

// function body
void P_GAINIT(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_GAINIT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1508
    P_ADDLOC(nullptr, _F.A.RMFR, MBORD[_F.A.RMTO]);
    
    // line 1509
    P_ADDATK(nullptr, _F.A.RMFR);
    
    // line 1510
    P_CUTATK(nullptr, _F.A.RMFR);
    
    // line 1511
    P_DELATK(nullptr, _F.A.RMTO);
    
    // line 1513
    P_ADDLOC(nullptr, _F.A.RMTO, _F.A.RMCP);
    
    // line 1514
    P_ADDATK(nullptr, _F.A.RMTO);
    
    // line 1515
    P_MBTPAC(nullptr, MBORD[_F.A.RMTO]);
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1520
//================================================================================
// scope: LOSEIT (level : 2)

// activation record
struct Frame_LOSEIT
{
    // parameters
    T_RM A;
};

// function body
void P_LOSEIT(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_LOSEIT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1526
    P_MBCAPT(nullptr, MBORD[_F.A.RMTO]);
    
    // line 1527
    P_DELATK(nullptr, _F.A.RMTO);
    
    // line 1529
    P_ADDLOC(nullptr, _F.A.RMTO, MBORD[_F.A.RMFR]);
    
    // line 1531
    P_DELATK(nullptr, _F.A.RMFR);
    
    // line 1533
    P_PRPATK(nullptr, _F.A.RMFR);
    
    // line 1535
    P_ADDATK(nullptr, _F.A.RMTO);
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1540
//================================================================================
// scope: MOVEIT (level : 2)

// activation record
struct Frame_MOVEIT
{
    // parameters
    T_RM A;
};

// function body
void P_MOVEIT(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_MOVEIT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1546
    P_ADDLOC(nullptr, _F.A.RMTO, MBORD[_F.A.RMFR]);
    
    // line 1547
    P_CUTATK(nullptr, _F.A.RMTO);
    
    // line 1549
    P_DELATK(nullptr, _F.A.RMFR);
    
    // line 1551
    P_PRPATK(nullptr, _F.A.RMFR);
    
    // line 1553
    P_ADDATK(nullptr, _F.A.RMTO);
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1558
//================================================================================
// scope: RTRKIT (level : 2)

// activation record
struct Frame_RTRKIT
{
    // parameters
    T_RM A;
};

// function body
void P_RTRKIT(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_RTRKIT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1564
    P_ADDLOC(nullptr, _F.A.RMFR, MBORD[_F.A.RMTO]);
    
    // line 1566
    P_CUTATK(nullptr, _F.A.RMFR);
    
    // line 1568
    P_DELATK(nullptr, _F.A.RMTO);
    
    // line 1570
    P_PRPATK(nullptr, _F.A.RMTO);
    
    // line 1572
    P_ADDATK(nullptr, _F.A.RMFR);
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1578
//================================================================================
// scope: PAWNIT (level : 2)

// activation record
struct Frame_PAWNIT
{
    // parameters
    T_RM A;
};

// function body
void P_PAWNIT(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_PAWNIT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1584
    P_MBMORP(nullptr, MBORD[_F.A.RMTO]);
    
    // line 1585
    MBORD[_F.A.RMTO] = XTUMP[C_EP][XTPM[MBORD[_F.A.RMTO]]];
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1590
//================================================================================
// scope: PROACA (level : 2)

// activation record
struct Frame_PROACA
{
    // parameters
    T_TS A;

    // locals
    T_RS IMRS;
    T_RS INRS;
};

// function body
void P_PROACA(void* _slink, T_TS A)
{
    // prologue/frame definition
    Frame_PROACA _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1598
    P_CLRRS(nullptr, CSTAT[JNTK], _F.A);
    
    // line 1599
    P_ANDRS(nullptr, _F.INRS, CSTAT[JNTK], XRRS[XTSR[_F.A]]);
    
    // line 1601
    if((!F_INRSTB(nullptr, _F.INRS, XTRFS[XTSR[_F.A]][C_F5])))
    {
        // line 1603
        P_ANDRS(nullptr, CSTAT[JNTK], CSTAT[JNTK], XNRS[XTSR[_F.A]]);
    }
    
    // line 1606
    P_ANDRS(nullptr, _F.IMRS, _F.INRS, XRFS[C_F8]);
    
    // line 1607
    P_ANDRS(nullptr, _F.INRS, _F.INRS, XRFS[C_F1]);
    
    // line 1608
    P_IORRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
    
    // line 1609
    if(F_NULRS(nullptr, _F.INRS))
    {
        // line 1610
        P_ANDRS(nullptr, CSTAT[JNTK], CSTAT[JNTK], XNRS[XTSR[_F.A]]);
    }
    
    { /* NOP */ }
}


// line 1614
//================================================================================
// scope: PROACS (level : 2)

// activation record
struct Frame_PROACS
{
    // parameters
    T_RM A;
};

// function body
void P_PROACS(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_PROACS _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1621
    if(F_INRSTB(nullptr, CSTAT[JNTK], _F.A.RMFR))
    {
        // line 1622
        P_PROACA(nullptr, _F.A.RMFR);
    }
    
    // line 1623
    if(F_INRSTB(nullptr, CSTAT[JNTK], _F.A.RMTO))
    {
        // line 1624
        P_PROACA(nullptr, _F.A.RMTO);
    }
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1629
//================================================================================
// scope: PROMOT (level : 2)

// activation record
struct Frame_PROMOT
{
    // parameters
    T_RM A;
};

// function body
void P_PROMOT(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_PROMOT _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1635
    P_MBPROM(nullptr, XTGMP[_F.A.RMPP][JNTM]);
    
    // line 1636
    MBORD[_F.A.RMFR] = XTGMP[_F.A.RMPP][JNTM];
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1641
//================================================================================
// scope: CREATE (level : 2)

// activation record
struct Frame_CREATE
{
    // locals
    T_RS INRS;
    T_TM INTM;
    T_TP INTP;
    T_TQ INTQ;
    T_TS INTS;
};

// function body
void P_CREATE(void* _slink)
{
    // prologue/frame definition
    Frame_CREATE _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1653
    JNTW = (C_AW + 1);
    
    // line 1655
    JNTK = C_AK;
    
    // line 1656
    JNTM = BOARD.RBTM;
    
    // line 1658
    NODES = 0;
    
    // line 1660
    LINDX[JNTK] = JNTW;
    
    // line 1661
    SRCHM[JNTK] = C_H0;
    
    // line 1663
    _FOR_TO(_F.INTS, C_AS, C_ZS)
    {
        // line 1665
        P_NEWRS(nullptr, ATKFR[_F.INTS]);
        
        // line 1666
        P_NEWRS(nullptr, ATKTO[_F.INTS]);
        
        // line 1667
        MBORD[_F.INTS] = C_MT;
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTS)
    
    // line 1670
    P_NEWRS(nullptr, ALLOC[JNTK]);
    
    // line 1672
    _FOR_TO(_F.INTP, C_LP, C_MT)
    {
        // line 1673
        P_NEWRS(nullptr, TPLOC[_F.INTP]);
    }
    _FOR_END(_F.INTP)
    
    // line 1675
    _FOR_TO(_F.INTM, C_LITE, C_NONE)
    {
        // line 1677
        P_NEWRS(nullptr, TMLOC[_F.INTM]);
        
        // line 1678
        P_NEWRS(nullptr, ALATK[_F.INTM]);
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTM)
    
    // line 1681
    MBTOT = 0;
    
    // line 1682
    MBPWN[C_LITE] = 0;
    
    // line 1683
    MBPWN[C_DARK] = 0;
    
    // line 1684
    MBLTE = 0;
    
    // line 1685
    _FOR_TO(_F.INTS, C_AS, C_ZS)
    {
        // line 1686
        if((BOARD.RBIS[_F.INTS] != C_MT))
        {
            // line 1688
            P_ADDLOC(nullptr, _F.INTS, BOARD.RBIS[_F.INTS]);
            
            // line 1689
            P_MBTPAC(nullptr, BOARD.RBIS[_F.INTS]);
            
            { /* NOP */ }
        }
        else
        {
            // line 1692
            P_SETRS(nullptr, TPLOC[C_MT], _F.INTS);
        }
    }
    _FOR_END(_F.INTS)
    
    // line 1694
    P_MBEVAL(nullptr);
    
    // line 1696
    P_CPYRS(nullptr, _F.INRS, ALLOC[JNTK]);
    
    // line 1698
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 1699
        P_ADDATK(nullptr, _F.INTS);
    }
    
    // line 1701
    P_NEWRS(nullptr, CSTAT[JNTK]);
    
    // line 1702
    _FOR_TO(_F.INTQ, C_LS, C_DL)
    {
        // line 1703
        if((BOARD.RBSQ & _F.INTQ))
        {
            // line 1704
            P_IORRS(nullptr, CSTAT[JNTK], CSTAT[JNTK], XSQS[_F.INTQ]);
        }
    }
    _FOR_END(_F.INTQ)
    
    // line 1706
    P_NEWRS(nullptr, ENPAS[JNTK]);
    
    // line 1707
    if((BOARD.RBTS >= 0))
    {
        // line 1708
        P_SETRS(nullptr, ENPAS[JNTK], T_TS::C(BOARD.RBTS));
    }
    
    // line 1710
    P_CPYRS(nullptr, GENPN[JNTK], TPLOC[XTUMP[C_EP][JNTM]]);
    
    // line 1711
    P_NOTRS(nullptr, GENTO[JNTK], TMLOC[JNTM]);
    
    // line 1712
    P_NOTRS(nullptr, _F.INRS, GENPN[JNTK]);
    
    // line 1713
    P_ANDRS(nullptr, GENFR[JNTK], TMLOC[JNTM], _F.INRS);
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1718
//================================================================================
// scope: DNDATE (level : 2)

// activation record
struct Frame_DNDATE
{
    // parameters
    T_RM A;

    // locals
    T_TF INTF;
    T_TR INTR;
    T_TS INTS;
    T_TS RKFR;
    T_TS RKTO;
};

// function body
void P_DNDATE(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_DNDATE _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1732
    switch((((_ord(_F.A.RMCA) * 4) + (_ord(_F.A.RMAC) * 2)) + _ord(_F.A.RMPR)))
    {
    case 0:
        // line 1734
        P_RTRKIT(nullptr, _F.A);
        break;
    
    case 1:
        // line 1737
        P_PAWNIT(nullptr, _F.A);
        
        // line 1738
        P_RTRKIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    
    case 2:
        // line 1741
        if(_F.A.RMOO)
        {
            // line 1743
            if(_F.A.RMQS)
            {
                // line 1744
                _F.INTF = C_F1;
            }
            else
            {
                // line 1746
                _F.INTF = C_F8;
            }
            
            // line 1747
            _F.INTR = XTSR[_F.A.RMFR];
            
            // line 1748
            _F.RKFR = XTRFS[_F.INTR][_F.INTF];
            
            // line 1749
            _F.RKTO = ((_F.A.RMFR + _F.A.RMTO) / 2);
            
            // line 1750
            P_ADDLOC(nullptr, _F.RKFR, MBORD[_F.RKTO]);
            
            // line 1751
            P_DELATK(nullptr, _F.RKTO);
            
            // line 1752
            P_PRPATK(nullptr, _F.RKTO);
            
            // line 1753
            P_ADDATK(nullptr, _F.RKFR);
            
            // line 1754
            P_RTRKIT(nullptr, _F.A);
            
            { /* NOP */ }
        }
        else
        {
            // line 1757
            P_RTRKIT(nullptr, _F.A);
        }
        break;
    
    case 3:
        { /* NOP */ }
        break;
    
    case 4:
        // line 1760
        if(_F.A.RMEP)
        {
            // line 1762
            _F.INTS = XTRFS[XTSR[_F.A.RMFR]][XTSF[_F.A.RMTO]];
            
            // line 1763
            P_ADDLOC(nullptr, _F.INTS, _F.A.RMCP);
            
            // line 1764
            P_CUTATK(nullptr, _F.INTS);
            
            // line 1765
            P_ADDATK(nullptr, _F.INTS);
            
            // line 1766
            P_RTRKIT(nullptr, _F.A);
            
            // line 1767
            P_MBTPAC(nullptr, MBORD[_F.INTS]);
            
            { /* NOP */ }
        }
        else
        {
            // line 1770
            P_GAINIT(nullptr, _F.A);
        }
        break;
    
    case 5:
        // line 1773
        P_PAWNIT(nullptr, _F.A);
        
        // line 1774
        P_GAINIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    
    case 6:
        // line 1777
        P_GAINIT(nullptr, _F.A);
        break;
    
    case 7:
        // line 1780
        P_PAWNIT(nullptr, _F.A);
        
        // line 1781
        P_GAINIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    }
    
    // line 1784
    JNTW = LINDX[JNTK];
    
    // line 1786
    JNTK = (JNTK - 1);
    
    // line 1787
    JNTM = OTHER[JNTM];
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 1792
//================================================================================
// scope: UPDATE (level : 2)

// activation record
struct Frame_UPDATE
{
    // parameters
    T_RM& A;

    // locals
    T_boolean _fnvalue;
    T_RS IMRS;
    T_RS INRS;
    T_TF INTF;
    T_TR INTR;
    T_TS INTS;
    T_TS RKFR;
    T_TS RKTO;
};

// function body
T_boolean F_UPDATE(void* _slink, T_RM& A)
{
    // prologue/frame definition
    Frame_UPDATE _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1809
    JNTK = (JNTK + 1);
    
    // line 1810
    P_NEWRS(nullptr, ENPAS[JNTK]);
    
    // line 1811
    P_CPYRS(nullptr, CSTAT[JNTK], CSTAT[(JNTK - 1)]);
    
    // line 1812
    P_CPYRS(nullptr, ALLOC[JNTK], ALLOC[(JNTK - 1)]);
    
    // line 1813
    MBVAL[JNTK] = MBVAL[(JNTK - 1)];
    
    // line 1814
    LINDX[JNTK] = JNTW;
    
    // line 1815
    switch((((_ord(_F.A.RMCA) * 4) + (_ord(_F.A.RMAC) * 2)) + _ord(_F.A.RMPR)))
    {
    case 0:
        // line 1817
        if(_F.A.RMEP)
        {
            // line 1819
            P_SFTRS(nullptr, _F.INRS, XRSS[_F.A.RMTO], C_S1);
            
            // line 1820
            P_SFTRS(nullptr, _F.IMRS, XRSS[_F.A.RMTO], C_S3);
            
            // line 1821
            P_IORRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
            
            // line 1822
            P_ANDRS(nullptr, _F.INRS, _F.INRS, TPLOC[XTUMP[C_EP][OTHER[JNTM]]]);
            
            // line 1824
            if((!F_NULRS(nullptr, _F.INRS)))
            {
                // line 1825
                P_SETRS(nullptr, ENPAS[JNTK], T_TS::C(((_F.A.RMTO + _F.A.RMFR) / 2)));
            }
            
            // line 1827
            P_MOVEIT(nullptr, _F.A);
            
            { /* NOP */ }
        }
        else
        {
            // line 1830
            P_MOVEIT(nullptr, _F.A);
        }
        break;
    
    case 1:
        // line 1833
        P_PROMOT(nullptr, _F.A);
        
        // line 1834
        P_MOVEIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    
    case 2:
        // line 1838
        if(_F.A.RMOO)
        {
            // line 1840
            if(_F.A.RMQS)
            {
                // line 1841
                _F.INTF = C_F1;
            }
            else
            {
                // line 1843
                _F.INTF = C_F8;
            }
            
            // line 1844
            _F.INTR = XTSR[_F.A.RMFR];
            
            // line 1845
            _F.RKFR = XTRFS[_F.INTR][_F.INTF];
            
            // line 1846
            _F.RKTO = ((_F.A.RMFR + _F.A.RMTO) / 2);
            
            // line 1847
            P_ANDRS(nullptr, CSTAT[JNTK], CSTAT[JNTK], XNRS[_F.INTR]);
            
            // line 1850
            P_ADDLOC(nullptr, _F.RKTO, MBORD[_F.RKFR]);
            
            // line 1851
            P_ADDATK(nullptr, _F.RKTO);
            
            // line 1852
            P_DELATK(nullptr, _F.RKFR);
            
            // line 1853
            P_MOVEIT(nullptr, _F.A);
            
            { /* NOP */ }
        }
        else
        {
            // line 1857
            P_PROACS(nullptr, _F.A);
            
            // line 1858
            P_MOVEIT(nullptr, _F.A);
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
        break;
    
    case 3:
        { /* NOP */ }
        break;
    
    case 4:
        // line 1864
        if(_F.A.RMEP)
        {
            // line 1866
            _F.INTS = XTRFS[XTSR[_F.A.RMFR]][XTSF[_F.A.RMTO]];
            
            // line 1868
            P_MBCAPT(nullptr, MBORD[_F.INTS]);
            
            // line 1869
            P_DELATK(nullptr, _F.INTS);
            
            // line 1870
            P_PRPATK(nullptr, _F.INTS);
            
            // line 1871
            P_MOVEIT(nullptr, _F.A);
            
            { /* NOP */ }
        }
        else
        {
            // line 1874
            P_LOSEIT(nullptr, _F.A);
        }
        break;
    
    case 5:
        // line 1877
        P_PROMOT(nullptr, _F.A);
        
        // line 1878
        P_LOSEIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    
    case 6:
        // line 1883
        P_PROACS(nullptr, _F.A);
        
        // line 1884
        P_LOSEIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    
    case 7:
        // line 1888
        P_PROMOT(nullptr, _F.A);
        
        // line 1889
        P_PROACS(nullptr, _F.A);
        
        // line 1890
        P_LOSEIT(nullptr, _F.A);
        
        { /* NOP */ }
        break;
    }
    
    // line 1896
    JNTM = OTHER[JNTM];
    
    // line 1897
    P_CPYRS(nullptr, GENPN[JNTK], TPLOC[XTUMP[C_EP][JNTM]]);
    
    // line 1898
    P_NOTRS(nullptr, GENTO[JNTK], TMLOC[JNTM]);
    
    // line 1899
    P_NOTRS(nullptr, _F.INRS, GENPN[JNTK]);
    
    // line 1900
    P_ANDRS(nullptr, GENFR[JNTK], TMLOC[JNTM], _F.INRS);
    
    // line 1904
    P_ANDRS(nullptr, _F.INRS, TPLOC[XTUMP[C_EK][JNTM]], ALATK[OTHER[JNTM]]);
    
    // line 1905
    _F.A.RMCH = (!F_NULRS(nullptr, _F.INRS));
    
    // line 1906
    P_ANDRS(nullptr, _F.INRS, TPLOC[XTUMP[C_EK][OTHER[JNTM]]], ALATK[JNTM]);
    
    // line 1907
    _F.A.RMIL = (!F_NULRS(nullptr, _F.INRS));
    
    // line 1908
    _F._fnvalue = (!_F.A.RMIL);
    
    // line 1909
    if((!_F.A.RMIL))
    {
        // line 1910
        MVSEL[(JNTK - 1)] = (MVSEL[(JNTK - 1)] + 1);
    }
    
    // line 1913
    SRCHM[JNTK] = C_H1;
    
    // line 1914
    NODES = (NODES + 1);
    
    { /* NOP */ }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 1919
//================================================================================
// scope: GENONE (level : 2)

// activation record
struct Frame_GENONE
{
    // parameters
    T_TT A;
    T_TS B;

    // locals
    T_RS INRS;
};

// function body
void P_GENONE(void* _slink, T_TT A, T_TS B)
{
    // prologue/frame definition
    Frame_GENONE _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1929
    MOVES[JNTW].RMFR = _F.A;
    
    // line 1930
    MOVES[JNTW].RMTO = _F.B;
    
    // line 1931
    MOVES[JNTW].RMCP = MBORD[_F.B];
    
    // line 1932
    MOVES[JNTW].RMCA = (MBORD[_F.B] != C_MT);
    
    // line 1933
    P_IORRS(nullptr, _F.INRS, XRSS[_F.A], XRSS[_F.B]);
    
    // line 1934
    P_ANDRS(nullptr, _F.INRS, _F.INRS, CSTAT[JNTK]);
    
    // line 1935
    MOVES[JNTW].RMAC = (!F_NULRS(nullptr, _F.INRS));
    
    // line 1936
    MOVES[JNTW].RMCH = C_false;
    
    // line 1937
    MOVES[JNTW].RMMT = C_false;
    
    // line 1938
    MOVES[JNTW].RMIL = C_false;
    
    // line 1939
    MOVES[JNTW].RMSU = C_false;
    
    // line 1940
    MOVES[JNTW].RMPR = C_false;
    
    // line 1941
    MOVES[JNTW].RMOO = C_false;
    
    // line 1942
    MOVES[JNTW].RMEP = C_false;
    
    { /* NOP */ }
    
    // line 1944
    VALUE[JNTW] = 0;
    
    // line 1945
    if((JNTW < C_ZW))
    {
        // line 1946
        JNTW = (JNTW + 1);
    }
    
    { /* NOP */ }
}


// line 1950
//================================================================================
// scope: PWNPRO (level : 2)

// activation record
struct Frame_PWNPRO
{
    // locals
    T_TG INTG;
};

// function body
void P_PWNPRO(void* _slink)
{
    // prologue/frame definition
    Frame_PWNPRO _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1956
    MOVES[(JNTW - 1)].RMPR = C_true;
    
    // line 1957
    MOVES[(JNTW - 1)].RMPP = C_PQ;
    
    // line 1958
    _FOR_TO(_F.INTG, C_PR, C_PB)
    {
        // line 1960
        MOVES[JNTW] = MOVES[(JNTW - 1)];
        
        // line 1961
        MOVES[JNTW].RMPP = _F.INTG;
        
        // line 1962
        JNTW = (JNTW + 1);
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTG)
    
    { /* NOP */ }
}


// line 1967
//================================================================================
// scope: GENPWN (level : 2)

// activation record
struct Frame_GENPWN
{
    // parameters
    T_RS A;
    T_RS B;

    // locals
    T_RS IMRS;
    T_RS INRS;
    T_TS INTS;
};

// function body
void P_GENPWN(void* _slink, T_RS A, T_RS B)
{
    // prologue/frame definition
    Frame_GENPWN _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1976
    if((JNTM == C_LITE))
    {
        // line 1978
        P_SFTRS(nullptr, _F.INRS, _F.A, C_S2);
        
        // line 1979
        P_ANDRS(nullptr, _F.INRS, TPLOC[C_MT], _F.INRS);
        
        // line 1980
        P_CPYRS(nullptr, _F.IMRS, _F.INRS);
        
        // line 1981
        P_ANDRS(nullptr, _F.INRS, _F.B, _F.INRS);
        
        // line 1982
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 1984
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - XTED[C_S2])], _F.INTS);
            
            // line 1986
            if((_F.INTS >= XTRFS[C_R8][C_F1]))
            {
                // line 1987
                P_PWNPRO(nullptr);
            }
            
            { /* NOP */ }
        }
        
        // line 1989
        P_ANDRS(nullptr, _F.INRS, _F.IMRS, XRRS[C_R3]);
        
        // line 1990
        P_SFTRS(nullptr, _F.INRS, _F.INRS, C_S2);
        
        // line 1991
        P_ANDRS(nullptr, _F.INRS, _F.INRS, TPLOC[C_MT]);
        
        // line 1992
        P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.B);
        
        // line 1993
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 1995
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - (2 * XTED[C_S2]))], _F.INTS);
            
            // line 1997
            MOVES[(JNTW - 1)].RMEP = C_true;
            
            { /* NOP */ }
        }
        
        // line 1999
        P_SFTRS(nullptr, _F.INRS, _F.A, C_B1);
        
        // line 2000
        P_IORRS(nullptr, _F.IMRS, TMLOC[OTHER[JNTM]], ENPAS[JNTK]);
        
        // line 2002
        P_ANDRS(nullptr, _F.IMRS, _F.IMRS, _F.B);
        
        // line 2003
        P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
        
        // line 2004
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 2006
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - XTED[C_B1])], _F.INTS);
            
            // line 2008
            MOVES[(JNTW - 1)].RMCA = C_true;
            
            // line 2009
            MOVES[(JNTW - 1)].RMEP = F_INRSTB(nullptr, ENPAS[JNTK], _F.INTS);
            
            // line 2011
            if(MOVES[(JNTW - 1)].RMEP)
            {
                // line 2012
                MOVES[(JNTW - 1)].RMCP = C_DP;
            }
            
            // line 2013
            if((_F.INTS >= XTRFS[C_R8][C_F1]))
            {
                // line 2014
                P_PWNPRO(nullptr);
            }
            
            { /* NOP */ }
        }
        
        // line 2016
        P_SFTRS(nullptr, _F.INRS, _F.A, C_B2);
        
        // line 2017
        P_IORRS(nullptr, _F.IMRS, TMLOC[OTHER[JNTM]], ENPAS[JNTK]);
        
        // line 2019
        P_ANDRS(nullptr, _F.IMRS, _F.IMRS, _F.B);
        
        // line 2020
        P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
        
        // line 2021
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 2023
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - XTED[C_B2])], _F.INTS);
            
            // line 2025
            MOVES[(JNTW - 1)].RMCA = C_true;
            
            // line 2026
            MOVES[(JNTW - 1)].RMEP = F_INRSTB(nullptr, ENPAS[JNTK], _F.INTS);
            
            // line 2028
            if(MOVES[(JNTW - 1)].RMEP)
            {
                // line 2029
                MOVES[(JNTW - 1)].RMCP = C_DP;
            }
            
            // line 2030
            if((_F.INTS >= XTRFS[C_R8][C_F1]))
            {
                // line 2031
                P_PWNPRO(nullptr);
            }
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    else
    {
        // line 2036
        P_SFTRS(nullptr, _F.INRS, _F.A, C_S4);
        
        // line 2037
        P_ANDRS(nullptr, _F.INRS, TPLOC[C_MT], _F.INRS);
        
        // line 2038
        P_CPYRS(nullptr, _F.IMRS, _F.INRS);
        
        // line 2039
        P_ANDRS(nullptr, _F.INRS, _F.B, _F.INRS);
        
        // line 2040
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 2042
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - XTED[C_S4])], _F.INTS);
            
            // line 2044
            if((_F.INTS <= XTRFS[C_R1][C_F8]))
            {
                // line 2045
                P_PWNPRO(nullptr);
            }
            
            { /* NOP */ }
        }
        
        // line 2047
        P_ANDRS(nullptr, _F.INRS, _F.IMRS, XRRS[C_R6]);
        
        // line 2048
        P_SFTRS(nullptr, _F.INRS, _F.INRS, C_S4);
        
        // line 2049
        P_ANDRS(nullptr, _F.INRS, _F.INRS, TPLOC[C_MT]);
        
        // line 2050
        P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.B);
        
        // line 2051
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 2053
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - (2 * XTED[C_S4]))], _F.INTS);
            
            // line 2055
            MOVES[(JNTW - 1)].RMEP = C_true;
            
            { /* NOP */ }
        }
        
        // line 2057
        P_SFTRS(nullptr, _F.INRS, _F.A, C_B3);
        
        // line 2058
        P_IORRS(nullptr, _F.IMRS, TMLOC[OTHER[JNTM]], ENPAS[JNTK]);
        
        // line 2060
        P_ANDRS(nullptr, _F.IMRS, _F.IMRS, _F.B);
        
        // line 2061
        P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
        
        // line 2062
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 2064
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - XTED[C_B3])], _F.INTS);
            
            // line 2066
            MOVES[(JNTW - 1)].RMCA = C_true;
            
            // line 2067
            MOVES[(JNTW - 1)].RMEP = F_INRSTB(nullptr, ENPAS[JNTK], _F.INTS);
            
            // line 2069
            if(MOVES[(JNTW - 1)].RMEP)
            {
                // line 2070
                MOVES[(JNTW - 1)].RMCP = C_LP;
            }
            
            // line 2071
            if((_F.INTS <= XTRFS[C_R1][C_F8]))
            {
                // line 2072
                P_PWNPRO(nullptr);
            }
            
            { /* NOP */ }
        }
        
        // line 2074
        P_SFTRS(nullptr, _F.INRS, _F.A, C_B4);
        
        // line 2075
        P_IORRS(nullptr, _F.IMRS, TMLOC[OTHER[JNTM]], ENPAS[JNTK]);
        
        // line 2077
        P_ANDRS(nullptr, _F.IMRS, _F.IMRS, _F.B);
        
        // line 2078
        P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
        
        // line 2079
        while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
        {
            // line 2081
            P_GENONE(nullptr, XTLS[(XTSL[_F.INTS] - XTED[C_B4])], _F.INTS);
            
            // line 2083
            MOVES[(JNTW - 1)].RMCA = C_true;
            
            // line 2084
            MOVES[(JNTW - 1)].RMEP = F_INRSTB(nullptr, ENPAS[JNTK], _F.INTS);
            
            // line 2086
            if(MOVES[(JNTW - 1)].RMEP)
            {
                // line 2087
                MOVES[(JNTW - 1)].RMCP = C_LP;
            }
            
            // line 2088
            if((_F.INTS <= XTRFS[C_R1][C_F8]))
            {
                // line 2089
                P_PWNPRO(nullptr);
            }
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 2095
//================================================================================
// scope: GENFSL (level : 2)

// activation record
struct Frame_GENFSL
{
    // parameters
    T_RS A;

    // locals
    T_RS IMRS;
    T_TS IMTS;
    T_RS INRS;
    T_TS INTS;
    T_RS IPRS;
};

// function body
void P_GENFSL(void* _slink, T_RS A)
{
    // prologue/frame definition
    Frame_GENFSL _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2107
    P_ANDRS(nullptr, _F.INRS, _F.A, GENFR[JNTK]);
    
    // line 2108
    P_NOTRS(nullptr, _F.IMRS, _F.A);
    
    // line 2109
    P_ANDRS(nullptr, GENFR[JNTK], GENFR[JNTK], _F.IMRS);
    
    // line 2110
    P_ANDRS(nullptr, _F.IPRS, _F.A, GENPN[JNTK]);
    
    // line 2111
    P_ANDRS(nullptr, GENPN[JNTK], GENPN[JNTK], _F.IMRS);
    
    // line 2112
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 2114
        P_ANDRS(nullptr, _F.IMRS, ATKFR[_F.INTS], GENTO[JNTK]);
        
        // line 2117
        while(F_NXTTS(nullptr, _F.IMRS, _F.IMTS))
        {
            // line 2118
            P_GENONE(nullptr, T_TT::C(_F.INTS), _F.IMTS);
        }
        
        { /* NOP */ }
    }
    
    // line 2120
    P_GENPWN(nullptr, _F.IPRS, GENTO[JNTK]);
    
    { /* NOP */ }
}


// line 2124
//================================================================================
// scope: GENTSL (level : 2)

// activation record
struct Frame_GENTSL
{
    // parameters
    T_RS A;

    // locals
    T_RS IMRS;
    T_TS IMTS;
    T_RS INRS;
    T_TS INTS;
    T_RS IPRS;
};

// function body
void P_GENTSL(void* _slink, T_RS A)
{
    // prologue/frame definition
    Frame_GENTSL _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2136
    P_ANDRS(nullptr, _F.INRS, _F.A, GENTO[JNTK]);
    
    // line 2137
    P_NOTRS(nullptr, _F.IMRS, _F.A);
    
    // line 2138
    P_ANDRS(nullptr, GENTO[JNTK], GENTO[JNTK], _F.IMRS);
    
    // line 2139
    P_CPYRS(nullptr, _F.IPRS, _F.INRS);
    
    // line 2140
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 2142
        P_ANDRS(nullptr, _F.IMRS, ATKTO[_F.INTS], GENFR[JNTK]);
        
        // line 2144
        while(F_NXTTS(nullptr, _F.IMRS, _F.IMTS))
        {
            // line 2145
            P_GENONE(nullptr, T_TT::C(_F.IMTS), _F.INTS);
        }
        
        { /* NOP */ }
    }
    
    // line 2147
    P_GENPWN(nullptr, GENPN[JNTK], _F.IPRS);
    
    { /* NOP */ }
}


// line 2151
//================================================================================
// scope: GENCAP (level : 2)

// activation record
struct Frame_GENCAP
{
    // locals
    T_RS INRS;
};

// function body
void P_GENCAP(void* _slink)
{
    // prologue/frame definition
    Frame_GENCAP _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2157
    P_IORRS(nullptr, _F.INRS, ENPAS[JNTK], TMLOC[OTHER[JNTM]]);
    
    // line 2158
    P_GENTSL(nullptr, _F.INRS);
    
    { /* NOP */ }
}


// line 2163
//================================================================================
// scope: GENCAS (level : 2)

// activation record
struct Frame_GENCAS
{
    // locals
    T_RS IMRS;
    T_RS INRS;
    T_TQ INTQ;
};

// function body
void P_GENCAS(void* _slink)
{
    // prologue/frame definition
    Frame_GENCAS _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2171
    _FOR_TO(_F.INTQ, XTMQ[JNTM], _succ(XTMQ[JNTM]))
    {
        // line 2172
        if(F_INRSTB(nullptr, CSTAT[JNTK], XTQS[_F.INTQ]))
        {
            // line 2175
            P_ANDRS(nullptr, _F.INRS, XRQSO[_F.INTQ], ALLOC[JNTK]);
            
            // line 2177
            P_ANDRS(nullptr, _F.IMRS, XRQSA[_F.INTQ], ALATK[OTHER[JNTM]]);
            
            // line 2179
            if((F_NULRS(nullptr, _F.INRS) && F_NULRS(nullptr, _F.IMRS)))
            {
                // line 2183
                MOVES[JNTW] = XRQM[_F.INTQ];
                
                // line 2184
                VALUE[JNTW] = 0;
                
                // line 2185
                JNTW = (JNTW + 1);
                
                { /* NOP */ }
            }
            
            { /* NOP */ }
        }
    }
    _FOR_END(_F.INTQ)
    
    { /* NOP */ }
}


// line 2191
//================================================================================
// scope: GENALL (level : 2)

// activation record
struct Frame_GENALL
{};

// function body
void P_GENALL(void* _slink)
{
    // prologue/frame definition
    Frame_GENALL _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2194
    P_GENFSL(nullptr, ALLOC[JNTK]);
    
    // line 2195
    P_GENCAS(nullptr);
    
    { /* NOP */ }
}


// line 2199
//================================================================================
// scope: LSTMOV (level : 2)

// activation record
struct Frame_LSTMOV
{
    // locals
    T_TW INTW;
};

// function body
void P_LSTMOV(void* _slink)
{
    // prologue/frame definition
    Frame_LSTMOV _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2205
    P_CREATE(nullptr);
    
    // line 2206
    P_GENALL(nullptr);
    
    // line 2207
    _FOR_TO(_F.INTW, (C_AW + 1), (JNTW - 1))
    {
        // line 2209
        if(F_UPDATE(nullptr, MOVES[_F.INTW]))
        {
            { /* NOP */ }
        }
        
        // line 2210
        P_DNDATE(nullptr, MOVES[_F.INTW]);
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTW)
    
    { /* NOP */ }
}


// line 2215
//================================================================================
// scope: THEMOV (level : 2)

// activation record
struct Frame_THEMOV
{
    // parameters
    T_RM A;

    // locals
    T_RS INRS;
    T_boolean INTB;
    T_TQ INTQ;
    T_TS INTS;
};

// function body
void P_THEMOV(void* _slink, T_RM A)
{
    // prologue/frame definition
    Frame_THEMOV _F = {A };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2225
    LSTMV = _F.A;
    
    // line 2226
    _F.INTB = F_UPDATE(nullptr, _F.A);
    
    // line 2230
    BOARD.RBTM = JNTM;
    
    // line 2231
    P_CPYRS(nullptr, _F.INRS, ENPAS[JNTK]);
    
    // line 2232
    if(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 2233
        BOARD.RBTS = _F.INTS;
    }
    else
    {
        // line 2235
        BOARD.RBTS = C_AT;
    }
    
    // line 2236
    if((JNTM == C_DARK))
    {
        // line 2237
        BOARD.RBTI = (BOARD.RBTI + 1);
    }
    
    // line 2238
    _FOR_TO(_F.INTQ, C_LS, C_DL)
    {
        // line 2239
        if(F_INRSTB(nullptr, CSTAT[JNTK], XTQS[_F.INTQ]))
        {
            // line 2240
            {
                _T_GenericSet _setLiteral1;
                _setLiteral1.set(_F.INTQ);
                
                BOARD.RBSQ = (BOARD.RBSQ + _setLiteral1);
            }
        }
        else
        {
            // line 2242
            {
                _T_GenericSet _setLiteral2;
                _setLiteral2.set(_F.INTQ);
                
                BOARD.RBSQ = (BOARD.RBSQ - _setLiteral2);
            }
        }
    }
    _FOR_END(_F.INTQ)
    
    // line 2243
    _FOR_TO(_F.INTS, C_AS, C_ZS)
    {
        // line 2244
        BOARD.RBIS[_F.INTS] = MBORD[_F.INTS];
    }
    _FOR_END(_F.INTS)
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 2249
//================================================================================
// scope: EVALU8 (level : 2)

// forward declarations
T_TV F_EVALU8_EVKING(void* _slink, T_RS A, T_RS B);
T_TV F_EVALU8_EVMOBL(void* _slink, T_TP A, T_TP B);
T_TV F_EVALU8_EVPAWN(void* _slink, T_RS A, T_TE B, T_TR C);
T_TV F_EVALU8_EVROOK(void* _slink, T_RS A, T_RS B);

// activation record
struct Frame_EVALU8
{
    // locals
    T_TV INTV;
};

// function body
void P_EVALU8(void* _slink)
{
    // prologue/frame definition
    Frame_EVALU8 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2357
    if((((XTMV[JNTM] + MBVAL[JNTK]) + MAXPS) <= BSTVL[(JNTK - 2)]))
    {
        // line 2359
        _F.INTV = (XTMV[JNTM] + MBVAL[JNTK]);
    }
    else
    {
        // line 2362
        _F.INTV = ((((((FWPAWN * (F_EVALU8_EVPAWN(&_F, TPLOC[C_LP], C_S2, C_R2) - F_EVALU8_EVPAWN(&_F, TPLOC[C_DP], C_S4, C_R7))) + (FWMINM * (F_EVALU8_EVMOBL(&_F, C_LB, C_LN) - F_EVALU8_EVMOBL(&_F, C_DB, C_DN)))) + (FWMAJM * (F_EVALU8_EVMOBL(&_F, C_LR, C_LQ) - F_EVALU8_EVMOBL(&_F, C_DR, C_DQ)))) + (FWROOK * (F_EVALU8_EVROOK(&_F, TPLOC[C_LR], XRRS[C_R7]) - F_EVALU8_EVROOK(&_F, TPLOC[C_DR], XRRS[C_R2])))) + (FWKING * (F_EVALU8_EVKING(&_F, TPLOC[C_LK], TPLOC[C_LP]) - F_EVALU8_EVKING(&_F, TPLOC[C_DK], TPLOC[C_DP])))) / 64);
        
        // line 2370
        MAXPS = F_MAX(nullptr, MAXPS, _abs(_F.INTV));
        
        // line 2371
        _F.INTV = (XTMV[JNTM] * (MBVAL[JNTK] + _F.INTV));
        
        { /* NOP */ }
    }
    
    // line 2373
    if(SWTR)
    {
        // line 2375
        Output << " EVALU8" << JNTK << JNTW << INDEX[JNTK] << _F.INTV;
        
        // line 2376
        P_PRIMOV(nullptr, MOVES[INDEX[JNTK]]);
        
        { /* NOP */ }
    }
    
    // line 2378
    VALUE[INDEX[JNTK]] = _F.INTV;
    
    { /* NOP */ }
}


// line 2254
//================================================================================
// scope: EVALU8_EVKING (level : 3)

// activation record
struct Frame_EVALU8_EVKING
{
   Frame_EVALU8* _slink;

    // parameters
    T_RS A;
    T_RS B;

    // locals
    T_TV _fnvalue;
    T_RS INRS;
    T_TS INTS;
    T_TV INTV;
};

// function body
T_TV F_EVALU8_EVKING(void* _slink, T_RS A, T_RS B)
{
    // prologue/frame definition
    Frame_EVALU8_EVKING _F = { (Frame_EVALU8*)_slink, A, B };
    
    // subroutine body
    // line 2264
    P_ANDRS(nullptr, _F.INRS, _F.A, CORNR);
    
    // line 2265
    if(F_NULRS(nullptr, _F.INRS))
    {
        // line 2266
        _F.INTV = 0;
    }
    else
    {
        // line 2268
        _F.INTV = FKSANQ;
    }
    
    // line 2269
    _F.INRS = _F.A;
    
    // line 2270
    if(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 2272
        P_ANDRS(nullptr, _F.INRS, ATKFR[_F.INTS], _F.B);
        
        // line 2273
        _F.INTV = (_F.INTV + (F_CNTRS(nullptr, _F.INRS) * FKPSHD));
        
        { /* NOP */ }
    }
    
    // line 2276
    _F._fnvalue = _F.INTV;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2280
//================================================================================
// scope: EVALU8_EVMOBL (level : 3)

// activation record
struct Frame_EVALU8_EVMOBL
{
   Frame_EVALU8* _slink;

    // parameters
    T_TP A;
    T_TP B;

    // locals
    T_TV _fnvalue;
    T_RS INRS;
    T_TS INTS;
    T_TV INTV;
};

// function body
T_TV F_EVALU8_EVMOBL(void* _slink, T_TP A, T_TP B)
{
    // prologue/frame definition
    Frame_EVALU8_EVMOBL _F = { (Frame_EVALU8*)_slink, A, B };
    
    // subroutine body
    // line 2289
    P_IORRS(nullptr, _F.INRS, TPLOC[_F.A], TPLOC[_F.B]);
    
    // line 2290
    _F.INTV = 0;
    
    // line 2291
    while(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 2292
        _F.INTV = (_F.INTV + F_CNTRS(nullptr, ATKFR[_F.INTS]));
    }
    
    // line 2293
    _F._fnvalue = _F.INTV;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2297
//================================================================================
// scope: EVALU8_EVPAWN (level : 3)

// activation record
struct Frame_EVALU8_EVPAWN
{
   Frame_EVALU8* _slink;

    // parameters
    T_RS A;
    T_TE B;
    T_TR C;

    // locals
    T_TV _fnvalue;
    T_RS IMRS;
    T_RS INRS;
    T_TS INTS;
    T_TV INTV;
};

// function body
T_TV F_EVALU8_EVPAWN(void* _slink, T_RS A, T_TE B, T_TR C)
{
    // prologue/frame definition
    Frame_EVALU8_EVPAWN _F = { (Frame_EVALU8*)_slink, A, B, C };
    
    // subroutine body
    // line 2309
    P_SFTRS(nullptr, _F.INRS, _F.A, C_S1);
    
    // line 2310
    P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.A);
    
    // line 2311
    _F.INTV = (F_CNTRS(nullptr, _F.INRS) * FPFLNX);
    
    // line 2312
    P_SFTRS(nullptr, _F.INRS, _F.A, C_B1);
    
    // line 2313
    P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.A);
    
    // line 2314
    _F.INTV = (_F.INTV + (F_CNTRS(nullptr, _F.INRS) * FPCONN));
    
    // line 2315
    P_SFTRS(nullptr, _F.INRS, _F.A, C_B2);
    
    // line 2316
    P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.A);
    
    // line 2317
    _F.INTV = (_F.INTV + (F_CNTRS(nullptr, _F.INRS) * FPCONN));
    
    // line 2319
    P_SFTRS(nullptr, _F.INRS, _F.A, _F.B);
    
    // line 2320
    P_NOTRS(nullptr, _F.IMRS, TPLOC[C_MT]);
    
    // line 2321
    P_ANDRS(nullptr, _F.INRS, _F.INRS, _F.IMRS);
    
    // line 2322
    _F.INTV = (_F.INTV - (F_CNTRS(nullptr, _F.INRS) * FPBLOK));
    
    // line 2324
    P_CPYRS(nullptr, _F.INRS, _F.A);
    
    // line 2325
    while(F_NXTTS(nullptr, _F.IMRS, _F.INTS))
    {
        // line 2326
        _F.INTV = (_F.INTV + (_abs((_ord(_F.C) - _ord(XTSR[_F.INTS]))) * FPADCR[XTSF[_F.INTS]]));
    }
    
    // line 2328
    _F._fnvalue = _F.INTV;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2332
//================================================================================
// scope: EVALU8_EVROOK (level : 3)

// activation record
struct Frame_EVALU8_EVROOK
{
   Frame_EVALU8* _slink;

    // parameters
    T_RS A;
    T_RS B;

    // locals
    T_TV _fnvalue;
    T_RS INRS;
    T_integer INTI;
    T_TS INTS;
    T_TV INTV;
};

// function body
T_TV F_EVALU8_EVROOK(void* _slink, T_RS A, T_RS B)
{
    // prologue/frame definition
    Frame_EVALU8_EVROOK _F = { (Frame_EVALU8*)_slink, A, B };
    
    // subroutine body
    // line 2343
    _F.INTV = 0;
    
    // line 2344
    _F.INRS = _F.A;
    
    // line 2345
    if(F_NXTTS(nullptr, _F.INRS, _F.INTS))
    {
        // line 2347
        P_ANDRS(nullptr, _F.INRS, _F.A, ATKFR[_F.INTS]);
        
        // line 2348
        if((!F_NULRS(nullptr, _F.INRS)))
        {
            // line 2349
            _F.INTV = (_F.INTV + FRDUBL);
        }
        
        { /* NOP */ }
    }
    
    // line 2351
    P_ANDRS(nullptr, _F.INRS, _F.A, _F.B);
    
    // line 2352
    _F.INTI = F_CNTRS(nullptr, _F.INRS);
    
    // line 2353
    _F._fnvalue = (_F.INTV + ((_F.INTI * _F.INTI) * FRK7TH));
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2382
//================================================================================
// scope: SEARCH (level : 2)

// forward declarations
void P_SEARCH_NEWBST(void* _slink, T_TK A);
T_boolean F_SEARCH_MINMAX(void* _slink, T_TK A);
void P_SEARCH_SCOREM(void* _slink);
T_boolean F_SEARCH_SELECT(void* _slink);

// activation record
struct Frame_SEARCH
{
    // locals
    T_TW _fnvalue;
    T_boolean Jumpin;
};

// function body
T_TW F_SEARCH(void* _slink)
{
    // prologue/frame definition
    Frame_SEARCH _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 2669
    _F.Jumpin = C_false;
    
    // line 2670
    BSTMV[C_AK] = C_AW;
    
    // line 2671
    INDEX[JNTK] = C_AW;
    
    // line 2672
    MOVES[C_AW] = LSTMV;
    
    // line 2673
    P_EVALU8(nullptr);
    
    // line 2674
    BSTVL[(C_AK - 2)] = (VALUE[C_AW] - WINDOW);
    
    // line 2675
    BSTVL[(C_AK - 1)] = ((-VALUE[C_AW]) - WINDOW);
    
    // line 2676
    JMTK = (C_AK + 1);
    
    // line 2677
    while(((NODES < FNODEL) && (JNTK < F_MAX(nullptr, (C_ZK / 2), (C_ZK - 8)))))
    {
        // line 2681
        L_11:
        BSTVL[JNTK] = BSTVL[(JNTK - 2)];
        
        // line 2684
        L_12:
        if(((!F_SEARCH_SELECT(&_F)) && (!_F.Jumpin)))
        {
            // line 2686
            BSTVL[JNTK] = VALUE[INDEX[JNTK]];
            
            // line 2687
            P_SEARCH_NEWBST(&_F, JNTK);
            
            { /* NOP */ }
        }
        else
        {
            // line 2691
            if(_F.Jumpin)
            {
                // line 2691
                goto L_13;
            }
            
            // line 2692
            if(F_UPDATE(nullptr, MOVES[INDEX[(JNTK + 1)]]))
            {
                // line 2693
                goto L_11;
            }
            else
            {
                // line 2696
                P_DNDATE(nullptr, MOVES[INDEX[JNTK]]);
                
                // line 2697
                goto L_12;
                
                { /* NOP */ }
            }
            
            // line 2701
            L_13:
            _F.Jumpin = C_false;
            
            // line 2702
            if(F_SEARCH_MINMAX(&_F, JNTK))
            {
                // line 2703
                goto L_15;
            }
            
            // line 2706
            L_14:
            if(F_SEARCH_SELECT(&_F))
            {
                // line 2707
                if(F_UPDATE(nullptr, MOVES[INDEX[(JNTK + 1)]]))
                {
                    // line 2708
                    goto L_11;
                }
                else
                {
                    // line 2711
                    P_DNDATE(nullptr, MOVES[INDEX[JNTK]]);
                    
                    // line 2712
                    goto L_14;
                    
                    { /* NOP */ }
                }
            }
            
            { /* NOP */ }
        }
        
        // line 2717
        L_15:
        if((JNTK > C_AK))
        {
            // line 2719
            P_DNDATE(nullptr, MOVES[INDEX[JNTK]]);
            
            // line 2720
            _F.Jumpin = C_true;
            
            // line 2721
            goto L_12;
            
            { /* NOP */ }
        }
        
        // line 2725
        if(((BSTVL[C_AK] <= BSTVL[(C_AK - 2)]) || (BSTVL[C_AK] >= (-BSTVL[(C_AK - 1)]))))
        {
            // line 2727
            if((MVSEL[C_AK] == 0))
            {
                // line 2729
                goto L_16;
                
                { /* NOP */ }
            }
            
            // line 2731
            BSTVL[(C_AK - 2)] = (-C_ZV);
            
            // line 2732
            BSTVL[(C_AK - 1)] = (-C_ZV);
            
            // line 2733
            SRCHM[C_AK] = C_H7;
            
            // line 2734
            JNTW = (C_AK + 1);
            
            // line 2735
            goto L_11;
            
            { /* NOP */ }
        }
        
        // line 2737
        BSTVL[(C_AK - 2)] = (BSTVL[C_AK] - WINDOW);
        
        // line 2738
        BSTVL[(C_AK - 1)] = ((-BSTVL[C_AK]) - WINDOW);
        
        // line 2739
        JMTK = (JMTK + 1);
        
        // line 2740
        SRCHM[C_AK] = C_H7;
        
        { /* NOP */ }
    }
    
    // line 2744
    L_16:
    _F._fnvalue = BSTMV[C_AK];
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2395
//================================================================================
// scope: SEARCH_NEWBST (level : 3)

// activation record
struct Frame_SEARCH_NEWBST
{
   Frame_SEARCH* _slink;

    // parameters
    T_TK A;

    // locals
    T_RM INRM;
    T_TW INTW;
};

// function body
void P_SEARCH_NEWBST(void* _slink, T_TK A)
{
    // prologue/frame definition
    Frame_SEARCH_NEWBST _F = { (Frame_SEARCH*)_slink, A };
    
    // subroutine body
    // line 2403
    BSTMV[_F.A] = INDEX[(_F.A + 1)];
    
    // line 2404
    if((_F.A == C_AK))
    {
        // line 2406
        _F.INRM = MOVES[BSTMV[_F.A]];
        
        // line 2407
        _FOR_DOWNTO(_F.INTW, (BSTMV[_F.A] - 1), (C_AW + 1))
        {
            // line 2408
            MOVES[(_F.INTW + 1)] = MOVES[_F.INTW];
        }
        _FOR_END(_F.INTW)
        
        // line 2409
        MOVES[(C_AW + 1)] = _F.INRM;
        
        // line 2410
        BSTMV[C_AK] = (C_AW + 1);
        
        { /* NOP */ }
    }
    else
    {
        // line 2413
        if((!MOVES[BSTMV[_F.A]].RMCA))
        {
            // line 2414
            KILLR[JNTK] = MOVES[BSTMV[_F.A]];
        }
    }
    
    { /* NOP */ }
}


// line 2418
//================================================================================
// scope: SEARCH_MINMAX (level : 3)

// activation record
struct Frame_SEARCH_MINMAX
{
   Frame_SEARCH* _slink;

    // parameters
    T_TK A;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_SEARCH_MINMAX(void* _slink, T_TK A)
{
    // prologue/frame definition
    Frame_SEARCH_MINMAX _F = { (Frame_SEARCH*)_slink, A };
    
    // subroutine body
    // line 2423
    _F._fnvalue = C_false;
    
    // line 2424
    if(SWTR)
    {
        // line 2425
        Output << " MINMAX" << _F.A << (-BSTVL[(_F.A - 1)]) << BSTVL[_F.A] << (-BSTVL[(_F.A + 1)]);
    }
    
    // line 2426
    if(((-BSTVL[(_F.A + 1)]) > BSTVL[_F.A]))
    {
        // line 2428
        BSTVL[_F.A] = (-BSTVL[(_F.A + 1)]);
        
        // line 2429
        P_SEARCH_NEWBST(_F._slink, _F.A);
        
        // line 2430
        _F._fnvalue = (BSTVL[(_F.A + 1)] <= BSTVL[(_F.A - 1)]);
        
        // line 2432
        if(SWTR)
        {
            // line 2433
            Output << " NEW BEST. PRUNE: " << _str((BSTVL[(_F.A + 1)] <= BSTVL[(_F.A - 1)]));
        }
        
        { /* NOP */ }
    }
    
    // line 2435
    if(SWTR)
    {
        // line 2436
        Output << _WRITELN;
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2440
//================================================================================
// scope: SEARCH_SCOREM (level : 3)

// activation record
struct Frame_SEARCH_SCOREM
{
   Frame_SEARCH* _slink;
};

// function body
void P_SEARCH_SCOREM(void* _slink)
{
    // prologue/frame definition
    Frame_SEARCH_SCOREM _F = { (Frame_SEARCH*)_slink };
    
    // subroutine body
    // line 2443
    MOVES[INDEX[JNTK]].RMMT = C_true;
    
    // line 2444
    if(MOVES[INDEX[JNTK]].RMCH)
    {
        // line 2445
        VALUE[INDEX[JNTK]] = ((64 * JNTK) - C_ZV);
    }
    else
    {
        // line 2447
        VALUE[INDEX[JNTK]] = 0;
    }
    
    // line 2448
    if(SWTR)
    {
        // line 2449
        Output << " SCOREM" << JNTK << JNTW << INDEX[JNTK] << VALUE[INDEX[JNTK]] << _WRITELN;
    }
    
    { /* NOP */ }
}


// line 2453
//================================================================================
// scope: SEARCH_SELECT (level : 3)

// forward declarations
void P_SEARCH_SELECT_SELDON(void* _slink);
void P_SEARCH_SELECT_SELMOV(void* _slink, T_TW A);
void P_SEARCH_SELECT_SELNXT(void* _slink, T_TH A);
void P_SEARCH_SELECT_SELANY(void* _slink);

// non-local goto targets
const int NL_SEARCH_SELECT_21 = 2;
const int NL_SEARCH_SELECT_22 = 1;

// activation record
struct Frame_SEARCH_SELECT
{
   Frame_SEARCH* _slink;

    // locals
    T_boolean _fnvalue;
    T_TW IMTW;
    T_boolean INTB;
    T_TK INTK;
    T_TV INTV;
    T_TW INTW;
};

// function body
T_boolean F_SEARCH_SELECT(void* _slink)
{
    // prologue/frame definition
    Frame_SEARCH_SELECT _F = { (Frame_SEARCH*)_slink };
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_SEARCH_SELECT_21: goto L_21;
        case NL_SEARCH_SELECT_22: goto L_22;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 2528
        L_21:
        switch(SRCHM[JNTK])
        {
        case C_H0:
            // line 2532
            MVSEL[JNTK] = 0;
            
            // line 2533
            _F.INTV = BSTVL[(JNTK - 2)];
            
            // line 2534
            BSTVL[(JNTK - 2)] = (-C_ZV);
            
            // line 2535
            MAXPS = 0;
            
            // line 2537
            P_GENALL(nullptr);
            
            // line 2538
            _FOR_TO(_F.INTW, (C_AW + 1), (JNTW - 1))
            {
                // line 2540
                if(F_UPDATE(nullptr, MOVES[_F.INTW]))
                {
                    // line 2542
                    INDEX[JNTK] = _F.INTW;
                    
                    // line 2543
                    P_EVALU8(nullptr);
                    
                    { /* NOP */ }
                }
                
                // line 2545
                P_DNDATE(nullptr, MOVES[_F.INTW]);
                
                { /* NOP */ }
            }
            _FOR_END(_F.INTW)
            
            // line 2547
            BSTVL[(JNTK - 2)] = _F.INTV;
            
            // line 2548
            P_SORTIT(nullptr, VALUE, MOVES, T_TW::C((JNTW - 1)));
            
            // line 2550
            _FOR_TO(_F.INTK, C_AK, C_ZK)
            {
                // line 2551
                KILLR[_F.INTK] = NULMV;
            }
            _FOR_END(_F.INTK)
            
            // line 2552
            if((SWTR || SWPS))
            {
                // line 2553
                _FOR_TO(_F.INTW, (C_AW + 1), (JNTW - 1))
                {
                    // line 2555
                    Output << " PRELIM" << _F.INTW << VALUE[_F.INTW];
                    
                    // line 2556
                    P_PRIMOV(nullptr, MOVES[_F.INTW]);
                    
                    // line 2557
                    if((((double)_F.INTW / C_LPP) == (_F.INTW / C_LPP)))
                    {
                        // line 2558
                        P_PAUSER(nullptr);
                    }
                    
                    { /* NOP */ }
                }
                _FOR_END(_F.INTW)
            }
            
            // line 2560
            P_SEARCH_SELECT_SELNXT(&_F, C_H6);
            
            { /* NOP */ }
            break;
        
        case C_H1:
            // line 2565
            MVSEL[JNTK] = 0;
            
            // line 2566
            if((JNTK > JMTK))
            {
                // line 2568
                P_EVALU8(nullptr);
                
                // line 2569
                INDEX[(JNTK + 1)] = C_AW;
                
                // line 2570
                BSTVL[(JNTK + 1)] = (-VALUE[INDEX[JNTK]]);
                
                // line 2571
                if((F_SEARCH_MINMAX(_F._slink, JNTK) || (JNTK == C_ZK)))
                {
                    // line 2572
                    P_SEARCH_SELECT_SELDON(&_F);
                }
                
                // line 2573
                SRCHM[JNTK] = C_H2;
                
                { /* NOP */ }
            }
            else
            {
                // line 2576
                SRCHM[JNTK] = C_H3;
            }
            
            // line 2577
            P_GENCAP(nullptr);
            
            // line 2578
            P_SEARCH_SELECT_SELNXT(&_F, SRCHM[JNTK]);
            
            { /* NOP */ }
            break;
        
        case C_H2:
            // line 2583
            _F.INTW = C_AW;
            
            // line 2584
            _F.INTV = C_AV;
            
            // line 2585
            _FOR_TO(_F.IMTW, LINDX[JNTK], (JNTW - 1))
            {
                // line 2587
                if((!MOVES[_F.IMTW].RMSU))
                {
                    // line 2588
                    if((_abs(XTPV[MOVES[_F.IMTW].RMCP]) > _F.INTV))
                    {
                        // line 2590
                        _F.INTV = _abs(XTPV[MOVES[_F.IMTW].RMCP]);
                        
                        // line 2591
                        _F.INTW = _F.IMTW;
                        
                        { /* NOP */ }
                    }
                }
            }
            _FOR_END(_F.IMTW)
            
            // line 2593
            if((_F.INTW != C_AW))
            {
                // line 2594
                P_SEARCH_SELECT_SELMOV(&_F, _F.INTW);
            }
            else
            {
                // line 2596
                P_SEARCH_SELECT_SELDON(&_F);
            }
            
            { /* NOP */ }
            break;
        
        case C_H3:
            // line 2601
            _F.INTW = C_AW;
            
            // line 2602
            _F.INTV = C_AV;
            
            // line 2603
            _FOR_TO(_F.IMTW, LINDX[JNTK], (JNTW - 1))
            {
                // line 2605
                if((!MOVES[_F.IMTW].RMSU))
                {
                    // line 2606
                    if((_abs(XTPV[MOVES[_F.IMTW].RMCP]) > _F.INTV))
                    {
                        // line 2608
                        _F.INTV = _abs(XTPV[MOVES[_F.IMTW].RMCP]);
                        
                        // line 2609
                        _F.INTW = _F.IMTW;
                        
                        { /* NOP */ }
                    }
                }
            }
            _FOR_END(_F.IMTW)
            
            // line 2611
            if((_F.INTW != C_AW))
            {
                // line 2612
                P_SEARCH_SELECT_SELMOV(&_F, _F.INTW);
            }
            else
            {
                // line 2614
                if((!F_NULMVB(nullptr, KILLR[JNTK])))
                {
                    // line 2616
                    _F.IMTW = JNTW;
                    
                    // line 2617
                    P_GENFSL(nullptr, XRSS[KILLR[JNTK].RMFR]);
                    
                    // line 2619
                    SRCHM[JNTK] = C_H4;
                    
                    // line 2620
                    _FOR_TO(_F.INTW, _F.IMTW, (JNTW - 1))
                    {
                        // line 2622
                        if((KILLR[JNTK].RMTO == MOVES[_F.INTW].RMTO))
                        {
                            // line 2623
                            P_SEARCH_SELECT_SELMOV(&_F, _F.INTW);
                        }
                    }
                    _FOR_END(_F.INTW)
                    
                    { /* NOP */ }
                }
            }
            
            // line 2625
            P_SEARCH_SELECT_SELNXT(&_F, C_H4);
            
            { /* NOP */ }
            break;
        
        case C_H4:
            // line 2631
            P_GENCAS(nullptr);
            
            // line 2632
            P_SEARCH_SELECT_SELNXT(&_F, C_H5);
            
            { /* NOP */ }
            break;
        
        case C_H5:
            // line 2638
            P_SEARCH_SELECT_SELANY(&_F);
            
            // line 2639
            P_GENFSL(nullptr, ALLOC[JNTK]);
            
            // line 2640
            P_SEARCH_SELECT_SELNXT(&_F, C_H6);
            
            { /* NOP */ }
            break;
        
        case C_H6:
            // line 2645
            P_SEARCH_SELECT_SELANY(&_F);
            
            // line 2646
            if((MVSEL[JNTK] == 0))
            {
                // line 2647
                P_SEARCH_SCOREM(_F._slink);
            }
            
            // line 2648
            P_SEARCH_SELECT_SELDON(&_F);
            
            { /* NOP */ }
            break;
        
        case C_H7:
            // line 2653
            JNTW = LINDX[(C_AK + 1)];
            
            // line 2654
            MVSEL[C_AK] = 0;
            
            // line 2655
            _FOR_TO(_F.INTW, (C_AW + 1), (JNTW - 1))
            {
                // line 2656
                MOVES[_F.INTW].RMSU = C_false;
            }
            _FOR_END(_F.INTW)
            
            // line 2658
            if(SWTR)
            {
                // line 2659
                Output << " REDO " << JNTK << BSTVL[(C_AK - 2)] << BSTVL[(C_AK - 1)] << _WRITELN;
            }
            
            // line 2660
            P_SEARCH_SELECT_SELNXT(&_F, C_H6);
            
            { /* NOP */ }
            break;
        }
        
        // line 2665
        L_22:
        _F._fnvalue = _F.INTB;
        
        { /* NOP */ }
        
        // epilogue
        return _F._fnvalue;
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_SEARCH_SELECT_21:
        case NL_SEARCH_SELECT_22:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 2467
//================================================================================
// scope: SEARCH_SELECT_SELDON (level : 4)

// activation record
struct Frame_SEARCH_SELECT_SELDON
{
   Frame_SEARCH_SELECT* _slink;
};

// function body
void P_SEARCH_SELECT_SELDON(void* _slink)
{
    // prologue/frame definition
    Frame_SEARCH_SELECT_SELDON _F = { (Frame_SEARCH_SELECT*)_slink };
    
    // subroutine body
    // line 2475
    _F._slink->INTB = C_false;
    
    // line 2476
    if(SWTR)
    {
        // line 2477
        Output << " SELECT" << JNTK << " END." << _WRITELN;
    }
    
    // line 2478
    throw NL_SEARCH_SELECT_22;
    
    { /* NOP */ }
}


// line 2482
//================================================================================
// scope: SEARCH_SELECT_SELMOV (level : 4)

// activation record
struct Frame_SEARCH_SELECT_SELMOV
{
   Frame_SEARCH_SELECT* _slink;

    // parameters
    T_TW A;
};

// function body
void P_SEARCH_SELECT_SELMOV(void* _slink, T_TW A)
{
    // prologue/frame definition
    Frame_SEARCH_SELECT_SELMOV _F = { (Frame_SEARCH_SELECT*)_slink, A };
    
    // subroutine body
    // line 2489
    _F._slink->INTB = C_true;
    
    // line 2490
    INDEX[(JNTK + 1)] = _F.A;
    
    // line 2491
    MOVES[_F.A].RMSU = C_true;
    
    // line 2492
    if(SWTR)
    {
        // line 2494
        Output << " SELECT" << JNTK << _ord(SRCHM[JNTK]) << _F.A;
        
        // line 2495
        P_PRIMOV(nullptr, MOVES[_F.A]);
        
        { /* NOP */ }
    }
    
    // line 2497
    throw NL_SEARCH_SELECT_22;
    
    { /* NOP */ }
}


// line 2501
//================================================================================
// scope: SEARCH_SELECT_SELNXT (level : 4)

// activation record
struct Frame_SEARCH_SELECT_SELNXT
{
   Frame_SEARCH_SELECT* _slink;

    // parameters
    T_TH A;
};

// function body
void P_SEARCH_SELECT_SELNXT(void* _slink, T_TH A)
{
    // prologue/frame definition
    Frame_SEARCH_SELECT_SELNXT _F = { (Frame_SEARCH_SELECT*)_slink, A };
    
    // subroutine body
    // line 2507
    INDEX[(JNTK + 1)] = (LINDX[JNTK] - 1);
    
    // line 2508
    SRCHM[JNTK] = _F.A;
    
    // line 2509
    throw NL_SEARCH_SELECT_21;
    
    { /* NOP */ }
}


// line 2513
//================================================================================
// scope: SEARCH_SELECT_SELANY (level : 4)

// activation record
struct Frame_SEARCH_SELECT_SELANY
{
   Frame_SEARCH_SELECT* _slink;

    // locals
    T_TW INTW;
};

// function body
void P_SEARCH_SELECT_SELANY(void* _slink)
{
    // prologue/frame definition
    Frame_SEARCH_SELECT_SELANY _F = { (Frame_SEARCH_SELECT*)_slink };
    
    // subroutine body
    // line 2520
    _FOR_TO(_F.INTW, (INDEX[(JNTK + 1)] + 1), (JNTW - 1))
    {
        // line 2521
        if((!MOVES[_F.INTW].RMSU))
        {
            // line 2522
            P_SEARCH_SELECT_SELMOV(_F._slink, _F.INTW);
        }
    }
    _FOR_END(_F.INTW)
    
    { /* NOP */ }
}


// line 2748
//================================================================================
// scope: READER (level : 2)

// types
typedef _T_Pfn<void (*)(void*)> T_READER_subroutine_46;

// forward declarations
void P_READER_RDRERR(void* _slink, T_RN A);
T_boolean F_READER_RDRGNT(void* _slink, T_RA& A);
void P_READER_RDRSFT(void* _slink);
void P_READER_RDRCMD(void* _slink, T_RA A, T_READER_subroutine_46 XXXCMD);
void P_READER_RDLINE(void* _slink);
T_boolean F_READER_RDRMOV(void* _slink);
T_integer F_READER_RDRNUM(void* _slink);
void P_READER_BOACMD(void* _slink);
void P_READER_ENDCMD(void* _slink);
void P_READER_GONCMD(void* _slink);
void P_READER_INICMD(void* _slink);
void P_READER_LETCMD(void* _slink);
void P_READER_PLECMD(void* _slink);
void P_READER_PRICMD(void* _slink);
void P_READER_PAMCMD(void* _slink);
void P_READER_POPCMD(void* _slink);
void P_READER_PMVCMD(void* _slink);
void P_READER_SWICMD(void* _slink);
void P_READER_STACMD(void* _slink);
void P_READER_WHACMD(void* _slink);

// non-local goto targets
const int NL_READER_11 = 3;

// activation record
struct Frame_READER
{
    // locals
    T_RA INRA;
    T_TJ INTJ;
};

// function body
void P_READER(void* _slink)
{
    // prologue/frame definition
    Frame_READER _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('A', 'W');
    _setLiteral1.set('Y');
    _setLiteral1.set('Z');
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_READER_11: goto L_11;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 3377
        L_11:
        while((!F_READER_RDRMOV(&_F)))
        {
            // line 3378
            P_READER_RDLINE(&_F);
        }
        
        // line 3379
        if(SWEC)
        {
            // line 3381
            Output << ' ';
            
            // line 3382
            _FOR_TO(_F.INTJ, C_AJ, (C_ZJ - 1))
            {
                // line 3383
                Output << ILINE[_F.INTJ];
            }
            _FOR_END(_F.INTJ)
            
            // line 3384
            Output << ' ' << _WRITELN;
            
            { /* NOP */ }
        }
        
        // line 3386
        if((_setLiteral1 & ILINE[(C_AJ + 1)]))
        {
            // line 3388
            _F.INRA = "          ";
            
            // line 3389
            _F.INRA[C_AA] = ILINE[C_AJ];
            
            // line 3390
            _F.INRA[(C_AA + 1)] = ILINE[(C_AJ + 1)];
            
            // line 3391
            P_READER_RDRSFT(&_F);
            
            // line 3392
            P_READER_RDRCMD(&_F, T_RA::C("BO        "), _makePfn(P_READER_BOACMD, &_F));
            
            // line 3393
            P_READER_RDRCMD(&_F, T_RA::C("EN        "), _makePfn(P_READER_ENDCMD, &_F));
            
            // line 3394
            P_READER_RDRCMD(&_F, T_RA::C("GO        "), _makePfn(P_READER_GONCMD, &_F));
            
            // line 3395
            P_READER_RDRCMD(&_F, T_RA::C("IN        "), _makePfn(P_READER_INICMD, &_F));
            
            // line 3396
            P_READER_RDRCMD(&_F, T_RA::C("LE        "), _makePfn(P_READER_LETCMD, &_F));
            
            // line 3397
            P_READER_RDRCMD(&_F, T_RA::C("PB        "), _makePfn(P_READER_PAMCMD, &_F));
            
            // line 3398
            P_READER_RDRCMD(&_F, T_RA::C("PO        "), _makePfn(P_READER_POPCMD, &_F));
            
            // line 3399
            P_READER_RDRCMD(&_F, T_RA::C("PL        "), _makePfn(P_READER_PLECMD, &_F));
            
            // line 3400
            P_READER_RDRCMD(&_F, T_RA::C("PM        "), _makePfn(P_READER_PMVCMD, &_F));
            
            // line 3401
            P_READER_RDRCMD(&_F, T_RA::C("PR        "), _makePfn(P_READER_PRICMD, &_F));
            
            // line 3402
            P_READER_RDRCMD(&_F, T_RA::C("ST        "), _makePfn(P_READER_STACMD, &_F));
            
            // line 3403
            P_READER_RDRCMD(&_F, T_RA::C("SW        "), _makePfn(P_READER_SWICMD, &_F));
            
            // line 3404
            P_READER_RDRCMD(&_F, T_RA::C("WH        "), _makePfn(P_READER_WHACMD, &_F));
            
            // line 3405
            P_READER_RDRERR(&_F, T_RN::C("* IMWALID COMMAND             "));
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_READER_11:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 2757
//================================================================================
// scope: READER_RDRERR (level : 3)

// activation record
struct Frame_READER_RDRERR
{
   Frame_READER* _slink;

    // parameters
    T_RN A;

    // locals
    T_TJ INTJ;
    T_TN INTN;
};

// function body
void P_READER_RDRERR(void* _slink, T_RN A)
{
    // prologue/frame definition
    Frame_READER_RDRERR _F = { (Frame_READER*)_slink, A };
    
    // subroutine body
    // line 2764
    if((!SWEC))
    {
        // line 2767
        Output << ' ';
        
        // line 2768
        _FOR_TO(_F.INTJ, C_AJ, (C_ZJ - 1))
        {
            // line 2769
            Output << ILINE[_F.INTJ];
        }
        _FOR_END(_F.INTJ)
        
        // line 2770
        Output << ' ' << _WRITELN;
        
        { /* NOP */ }
    }
    
    // line 2772
    _FOR_TO(_F.INTJ, C_AJ, JNTJ)
    {
        // line 2773
        Output << ' ';
    }
    _FOR_END(_F.INTJ)
    
    // line 2774
    Output << '^' << _WRITELN;
    
    // line 2775
    _FOR_TO(_F.INTN, C_AN, C_ZN)
    {
        // line 2776
        Output << _F.A[_F.INTN];
    }
    _FOR_END(_F.INTN)
    
    // line 2777
    Output << _WRITELN;
    
    // line 2778
    throw NL_READER_11;
    
    { /* NOP */ }
}


// line 2782
//================================================================================
// scope: READER_RDRGNT (level : 3)

// activation record
struct Frame_READER_RDRGNT
{
   Frame_READER* _slink;

    // parameters
    T_RA& A;

    // locals
    T_boolean _fnvalue;
    T_TJ INTJ;
};

// function body
T_boolean F_READER_RDRGNT(void* _slink, T_RA& A)
{
    // prologue/frame definition
    Frame_READER_RDRGNT _F = { (Frame_READER*)_slink, A };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('A', 'Z');
    _setLiteral1.set('0', '9');
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('A', 'Z');
    _setLiteral2.set('0', '9');
    
    // subroutine body
    // line 2796
    while(((JNTJ < C_ZJ) && (_ord(ILINE[JNTJ]) >= _ord('+'))))
    {
        // line 2797
        JNTJ = (JNTJ + 1);
    }
    
    // line 2798
    _F.A = "          ";
    
    // line 2799
    _F.INTJ = C_AA;
    
    // line 2800
    while((((JNTJ < C_ZJ) && (_F.INTJ < C_ZA)) && (_setLiteral1 & ILINE[JNTJ])))
    {
        // line 2802
        _F.A[_F.INTJ] = ILINE[JNTJ];
        
        // line 2803
        _F.INTJ = (_F.INTJ + 1);
        
        // line 2804
        JNTJ = (JNTJ + 1);
        
        { /* NOP */ }
    }
    
    // line 2806
    _F._fnvalue = (_F.INTJ != C_AA);
    
    // line 2807
    while((((_F.INTJ < C_ZJ) && (JNTJ < C_ZJ)) && (_setLiteral2 & ILINE[JNTJ])))
    {
        // line 2808
        JNTJ = (JNTJ + 1);
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2812
//================================================================================
// scope: READER_RDRSFT (level : 3)

// activation record
struct Frame_READER_RDRSFT
{
   Frame_READER* _slink;

    // locals
    T_RA INRA;
    T_boolean INTB;
};

// function body
void P_READER_RDRSFT(void* _slink)
{
    // prologue/frame definition
    Frame_READER_RDRSFT _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 2820
    JNTJ = C_AJ;
    
    // line 2821
    _F.INTB = F_READER_RDRGNT(_F._slink, _F.INRA);
    
    { /* NOP */ }
}


// line 2825
//================================================================================
// scope: READER_RDRCMD (level : 3)

// activation record
struct Frame_READER_RDRCMD
{
   Frame_READER* _slink;

    // parameters
    T_RA A;
    T_READER_subroutine_46 XXXCMD;
};

// function body
void P_READER_RDRCMD(void* _slink, T_RA A, T_READER_subroutine_46 XXXCMD)
{
    // prologue/frame definition
    Frame_READER_RDRCMD _F = { (Frame_READER*)_slink, A, XXXCMD };
    
    // subroutine body
    // line 2832
    if(_strcmpEQ<10>(_F._slink->INRA, _F.A))
    {
        // line 2834
        (*_F.XXXCMD._pfn)(_F.XXXCMD._slink);
        
        // line 2835
        throw NL_READER_11;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 2840
//================================================================================
// scope: READER_RDLINE (level : 3)

// activation record
struct Frame_READER_RDLINE
{
   Frame_READER* _slink;

    // locals
    T_char INTC;
    T_TJ INTJ;
};

// function body
void P_READER_RDLINE(void* _slink)
{
    // prologue/frame definition
    Frame_READER_RDLINE _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 2848
    Input >> _READLN;
    
    // line 2849
    _F.INTJ = C_AJ;
    
    // line 2850
    while(((!_eoln(Input)) && (_F.INTJ < C_ZJ)))
    {
        // line 2852
        Input >> ICARD[_F.INTJ];
        
        // line 2853
        _F.INTJ = (_F.INTJ + 1);
        
        { /* NOP */ }
    }
    
    // line 2855
    while((!_eoln(Input)))
    {
        // line 2856
        Input >> _F.INTC;
    }
    
    // line 2857
    while((_F.INTJ < C_ZJ))
    {
        // line 2859
        ICARD[_F.INTJ] = ' ';
        
        // line 2860
        _F.INTJ = (_F.INTJ + 1);
        
        { /* NOP */ }
    }
    
    // line 2862
    ICARD[C_ZJ] = ';';
    
    // line 2863
    JMTJ = C_AJ;
    
    { /* NOP */ }
}


// line 2867
//================================================================================
// scope: READER_RDRMOV (level : 3)

// activation record
struct Frame_READER_RDRMOV
{
   Frame_READER* _slink;

    // locals
    T_boolean _fnvalue;
    T_TJ IMTJ;
};

// function body
T_boolean F_READER_RDRMOV(void* _slink)
{
    // prologue/frame definition
    Frame_READER_RDRMOV _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 2876
    while(((JMTJ < C_ZJ) && (ICARD[JMTJ] == ' ')))
    {
        // line 2877
        JMTJ = (JMTJ + 1);
    }
    
    // line 2878
    _F.IMTJ = C_AJ;
    
    // line 2879
    while(((JMTJ < C_ZJ) && (ICARD[JMTJ] != ';')))
    {
        // line 2881
        ILINE[_F.IMTJ] = ICARD[JMTJ];
        
        // line 2882
        _F.IMTJ = (_F.IMTJ + 1);
        
        // line 2883
        JMTJ = (JMTJ + 1);
        
        { /* NOP */ }
    }
    
    // line 2885
    if(((ICARD[JMTJ] == ';') && (JMTJ < C_ZJ)))
    {
        // line 2886
        JMTJ = (JMTJ + 1);
    }
    
    // line 2887
    _F._fnvalue = (_F.IMTJ != C_AJ);
    
    // line 2888
    while((_F.IMTJ < C_ZJ))
    {
        // line 2890
        ILINE[_F.IMTJ] = ' ';
        
        // line 2891
        _F.IMTJ = (_F.IMTJ + 1);
        
        { /* NOP */ }
    }
    
    // line 2893
    ILINE[C_ZJ] = ';';
    
    // line 2894
    JNTJ = C_AJ;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2898
//================================================================================
// scope: READER_RDRNUM (level : 3)

// activation record
struct Frame_READER_RDRNUM
{
   Frame_READER* _slink;

    // locals
    T_integer _fnvalue;
    T_boolean INTB;
    T_integer INTI;
};

// function body
T_integer F_READER_RDRNUM(void* _slink)
{
    // prologue/frame definition
    Frame_READER_RDRNUM _F = { (Frame_READER*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('0', '9');
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('A', 'Z');
    
    // subroutine body
    // line 2908
    while(((JNTJ < C_ZJ) && (ILINE[JNTJ] == ' ')))
    {
        // line 2909
        JNTJ = (JNTJ + 1);
    }
    
    // line 2910
    if((ILINE[JNTJ] == '-'))
    {
        // line 2912
        _F.INTB = C_true;
        
        // line 2913
        JNTJ = (JNTJ + 1);
        
        { /* NOP */ }
    }
    else
    {
        // line 2917
        _F.INTB = C_false;
        
        // line 2918
        if((ILINE[JNTJ] == '+'))
        {
            // line 2919
            JNTJ = (JNTJ + 1);
        }
        
        { /* NOP */ }
    }
    
    // line 2921
    _F.INTI = 0;
    
    // line 2922
    while((_setLiteral1 & ILINE[JNTJ]))
    {
        // line 2924
        if((_F.INTI < ((double)C_maxint / 10)))
        {
            // line 2925
            _F.INTI = (((10 * _F.INTI) + _ord(ILINE[JNTJ])) - _ord('0'));
        }
        else
        {
            // line 2927
            P_READER_RDRERR(_F._slink, T_RN::C(" NUMBER TOO LARGE             "));
        }
        
        // line 2928
        JNTJ = (JNTJ + 1);
        
        { /* NOP */ }
    }
    
    // line 2930
    if((_setLiteral2 & ILINE[JNTJ]))
    {
        // line 2931
        P_READER_RDRERR(_F._slink, T_RN::C(" DIGIT EXPECTED               "));
    }
    
    // line 2932
    if(_F.INTB)
    {
        // line 2933
        _F.INTI = (-_F.INTI);
    }
    
    // line 2934
    _F._fnvalue = _F.INTI;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 2938
//================================================================================
// scope: READER_BOACMD (level : 3)

// forward declarations
void P_READER_BOACMD_BOAADV(void* _slink, T_integer A);
void P_READER_BOACMD_BOASTO(void* _slink, T_TP A);

// activation record
struct Frame_READER_BOACMD
{
   Frame_READER* _slink;

    // locals
    T_TM INTM;
    T_TS INTS;
    T_TS INTS1;
};

// function body
void P_READER_BOACMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_BOACMD _F = { (Frame_READER*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('P');
    _setLiteral1.set('R');
    _setLiteral1.set('N');
    _setLiteral1.set('B');
    _setLiteral1.set('Q');
    _setLiteral1.set('K');
    _setLiteral1.set('L');
    _setLiteral1.set('D');
    _setLiteral1.set('1', '8');
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('A', 'Z');
    _setLiteral2.set('0', '9');
    
    // subroutine body
    // line 2964
    P_CLSTAT(nullptr);
    
    // line 2965
    LSTMV = NULMV;
    
    // line 2966
    _FOR_TO(_F.INTS1, C_AS, C_ZS)
    {
        // line 2967
        BOARD.RBIS[_F.INTS1] = C_MT;
    }
    _FOR_END(_F.INTS1)
    
    // line 2968
    _F.INTM = C_LITE;
    
    // line 2969
    _F.INTS = 0;
    
    // line 2970
    do
    {
        // line 2971
        if((_setLiteral1 & ILINE[JNTJ]))
        {
            // line 2972
            switch(ILINE[JNTJ])
            {
            case 'P':
                // line 2973
                P_READER_BOACMD_BOASTO(&_F, XTUMP[C_EP][_F.INTM]);
                break;
            
            case 'R':
                // line 2974
                P_READER_BOACMD_BOASTO(&_F, XTUMP[C_ER][_F.INTM]);
                break;
            
            case 'N':
                // line 2975
                P_READER_BOACMD_BOASTO(&_F, XTUMP[C_EN][_F.INTM]);
                break;
            
            case 'B':
                // line 2976
                P_READER_BOACMD_BOASTO(&_F, XTUMP[C_EB][_F.INTM]);
                break;
            
            case 'Q':
                // line 2977
                P_READER_BOACMD_BOASTO(&_F, XTUMP[C_EQ][_F.INTM]);
                break;
            
            case 'K':
                // line 2978
                P_READER_BOACMD_BOASTO(&_F, XTUMP[C_EK][_F.INTM]);
                break;
            
            case 'L':
                // line 2979
                _F.INTM = C_LITE;
                break;
            
            case 'D':
                // line 2980
                _F.INTM = C_DARK;
                break;
            
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
                // line 2981
                P_READER_BOACMD_BOAADV(&_F, (_ord(ILINE[JNTJ]) - _ord('0')));
                break;
            }
        }
        else
        {
            // line 2984
            if((_setLiteral2 & ILINE[JNTJ]))
            {
                // line 2986
                _FOR_TO(_F.INTS1, C_AS, C_ZS)
                {
                    // line 2987
                    BOARD.RBIS[_F.INTS1] = C_MT;
                }
                _FOR_END(_F.INTS1)
                
                // line 2988
                P_CLSTAT(nullptr);
                
                // line 2989
                P_READER_RDRERR(_F._slink, T_RN::C(" ILLEGAL BOARD OPTION         "));
                
                { /* NOP */ }
            }
        }
        
        // line 2991
        JNTJ = (JNTJ + 1);
        
        { /* NOP */ }
    }
    while(!(JNTJ == C_ZJ));
    
    { /* NOP */ }
}


// line 2946
//================================================================================
// scope: READER_BOACMD_BOAADV (level : 4)

// activation record
struct Frame_READER_BOACMD_BOAADV
{
   Frame_READER_BOACMD* _slink;

    // parameters
    T_integer A;
};

// function body
void P_READER_BOACMD_BOAADV(void* _slink, T_integer A)
{
    // prologue/frame definition
    Frame_READER_BOACMD_BOAADV _F = { (Frame_READER_BOACMD*)_slink, A };
    
    // subroutine body
    // line 2949
    if(((_F._slink->INTS + _F.A) < C_ZS))
    {
        // line 2950
        _F._slink->INTS = (_F._slink->INTS + _F.A);
    }
    else
    {
        // line 2952
        _F._slink->INTS = C_ZS;
    }
    
    { /* NOP */ }
}


// line 2956
//================================================================================
// scope: READER_BOACMD_BOASTO (level : 4)

// activation record
struct Frame_READER_BOACMD_BOASTO
{
   Frame_READER_BOACMD* _slink;

    // parameters
    T_TP A;
};

// function body
void P_READER_BOACMD_BOASTO(void* _slink, T_TP A)
{
    // prologue/frame definition
    Frame_READER_BOACMD_BOASTO _F = { (Frame_READER_BOACMD*)_slink, A };
    
    // subroutine body
    // line 2959
    BOARD.RBIS[_F._slink->INTS] = _F.A;
    
    // line 2960
    if((_F._slink->INTS < C_ZS))
    {
        // line 2960
        _F._slink->INTS = (_F._slink->INTS + 1);
    }
    
    { /* NOP */ }
}


// line 2996
//================================================================================
// scope: READER_ENDCMD (level : 3)

// activation record
struct Frame_READER_ENDCMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_ENDCMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_ENDCMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 2999
    throw NL_9;
    
    { /* NOP */ }
}


// line 3003
//================================================================================
// scope: READER_GONCMD (level : 3)

// activation record
struct Frame_READER_GONCMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_GONCMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_GONCMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3006
    GOING = F_READER_RDRNUM(_F._slink);
    
    // line 3007
    if((GOING <= 0))
    {
        // line 3007
        GOING = 1;
    }
    
    // line 3009
    Jumpin = C_true;
    
    // line 3011
    throw NL_2;
    
    { /* NOP */ }
}


// line 3015
//================================================================================
// scope: READER_INICMD (level : 3)

// activation record
struct Frame_READER_INICMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_INICMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_INICMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3018
    throw NL_1;
    
    { /* NOP */ }
}


// line 3022
//================================================================================
// scope: READER_LETCMD (level : 3)

// forward declarations
void P_READER_LETCMD_LETONE(void* _slink, T_RA A, T_integer& B);

// non-local goto targets
const int NL_READER_LETCMD_21 = 7;

// activation record
struct Frame_READER_LETCMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_LETCMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_LETCMD _F = { (Frame_READER*)_slink };
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_READER_LETCMD_21: goto L_21;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 3041
        if(F_READER_RDRGNT(_F._slink, _F._slink->INRA))
        {
            // line 3043
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FKPSHD    "), FKPSHD);
            
            // line 3044
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FKSANQ    "), FKSANQ);
            
            // line 3045
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FMAXMT    "), FMAXMT);
            
            // line 3046
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FNODEL    "), FNODEL);
            
            // line 3047
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADQR    "), FPADCR[C_F1]);
            
            // line 3048
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADQN    "), FPADCR[C_F2]);
            
            // line 3049
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADQB    "), FPADCR[C_F3]);
            
            // line 3050
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADQF    "), FPADCR[C_F4]);
            
            // line 3051
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADKF    "), FPADCR[C_F5]);
            
            // line 3052
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADKB    "), FPADCR[C_F6]);
            
            // line 3053
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADKN    "), FPADCR[C_F7]);
            
            // line 3054
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPADWR    "), FPADCR[C_F8]);
            
            // line 3055
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPBLOK    "), FPBLOK);
            
            // line 3056
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPCONN    "), FPCONN);
            
            // line 3057
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FPFLNX    "), FPFLNX);
            
            // line 3058
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FRDUBL    "), FRDUBL);
            
            // line 3059
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FRK7TH    "), FRK7TH);
            
            // line 3060
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FTRADE    "), FTRADE);
            
            // line 3061
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FTRDSL    "), FTRDSL);
            
            // line 3062
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FTRPDK    "), FTRPDK);
            
            // line 3063
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FTRPWN    "), FTRPWN);
            
            // line 3064
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FWKING    "), FWKING);
            
            // line 3065
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FWMAJM    "), FWMAJM);
            
            // line 3066
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FWMINM    "), FWMINM);
            
            // line 3067
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FWPAWN    "), FWPAWN);
            
            // line 3068
            P_READER_LETCMD_LETONE(&_F, T_RA::C("FWROOK    "), FWROOK);
            
            // line 3069
            P_READER_LETCMD_LETONE(&_F, T_RA::C("WINDOW    "), WINDOW);
            
            // line 3070
            P_READER_RDRERR(_F._slink, T_RN::C("ILLEGAL LET VARIABLE NAME     "));
            
            { /* NOP */ }
        }
        
        L_21:
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_READER_LETCMD_21:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 3027
//================================================================================
// scope: READER_LETCMD_LETONE (level : 4)

// activation record
struct Frame_READER_LETCMD_LETONE
{
   Frame_READER_LETCMD* _slink;

    // parameters
    T_RA A;
    T_integer& B;
};

// function body
void P_READER_LETCMD_LETONE(void* _slink, T_RA A, T_integer& B)
{
    // prologue/frame definition
    Frame_READER_LETCMD_LETONE _F = { (Frame_READER_LETCMD*)_slink, A, B };
    
    // subroutine body
    // line 3032
    if(_strcmpEQ<10>(_F.A, _F._slink->_slink->INRA))
    {
        // line 3034
        _F.B = F_READER_RDRNUM(_F._slink->_slink);
        
        // line 3035
        throw NL_READER_LETCMD_21;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 3076
//================================================================================
// scope: READER_PLECMD (level : 3)

// forward declarations
void P_READER_PLECMD_PRIONE(void* _slink, T_RA A, T_integer B);

// non-local goto targets
const int NL_READER_PLECMD_21 = 8;

// activation record
struct Frame_READER_PLECMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_PLECMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_PLECMD _F = { (Frame_READER*)_slink };
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_READER_PLECMD_21: goto L_21;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 3096
        L_21:
        while(F_READER_RDRGNT(_F._slink, _F._slink->INRA))
        {
            // line 3098
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FKPSHD    "), FKPSHD);
            
            // line 3099
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FKSANQ    "), FKSANQ);
            
            // line 3100
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FMAXMT    "), FMAXMT);
            
            // line 3101
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FNODEL    "), FNODEL);
            
            // line 3102
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADQR    "), FPADCR[C_F1]);
            
            // line 3103
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADQN    "), FPADCR[C_F2]);
            
            // line 3104
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADQB    "), FPADCR[C_F3]);
            
            // line 3105
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADQF    "), FPADCR[C_F4]);
            
            // line 3106
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADKF    "), FPADCR[C_F5]);
            
            // line 3107
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADKB    "), FPADCR[C_F6]);
            
            // line 3108
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADKN    "), FPADCR[C_F7]);
            
            // line 3109
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPADKR    "), FPADCR[C_F8]);
            
            // line 3110
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPBLOK    "), FPBLOK);
            
            // line 3111
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPCONN    "), FPCONN);
            
            // line 3112
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FPFLNX    "), FPFLNX);
            
            // line 3113
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FRDUBL    "), FRDUBL);
            
            // line 3114
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FRK7TH    "), FRK7TH);
            
            // line 3115
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FTRADE    "), FTRADE);
            
            // line 3116
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FTRDSL    "), FTRDSL);
            
            // line 3117
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FTRPDK    "), FTRPDK);
            
            // line 3118
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FTRPWN    "), FTRPWN);
            
            // line 3119
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FWKING    "), FWKING);
            
            // line 3120
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FWMAJM    "), FWMAJM);
            
            // line 3121
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FWMINM    "), FWMINM);
            
            // line 3122
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FWPAWN    "), FWPAWN);
            
            // line 3123
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("FWROOK    "), FWROOK);
            
            // line 3124
            P_READER_PLECMD_PRIONE(&_F, T_RA::C("WINDOW    "), WINDOW);
            
            // line 3125
            P_READER_RDRERR(_F._slink, T_RN::C(" ILLEGAL  VARIABLE NAME       "));
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_READER_PLECMD_21:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 3081
//================================================================================
// scope: READER_PLECMD_PRIONE (level : 4)

// activation record
struct Frame_READER_PLECMD_PRIONE
{
   Frame_READER_PLECMD* _slink;

    // parameters
    T_RA A;
    T_integer B;
};

// function body
void P_READER_PLECMD_PRIONE(void* _slink, T_RA A, T_integer B)
{
    // prologue/frame definition
    Frame_READER_PLECMD_PRIONE _F = { (Frame_READER_PLECMD*)_slink, A, B };
    
    // subroutine body
    // line 3086
    if(_strcmpEQ<10>(_F._slink->_slink->INRA, _F.A))
    {
        // line 3088
        Output << _F.A << _F.B << _WRITELN;
        
        // line 3089
        throw NL_READER_PLECMD_21;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 3131
//================================================================================
// scope: READER_PRICMD (level : 3)

// activation record
struct Frame_READER_PRICMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_PRICMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_PRICMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3134
    if(F_READER_RDRGNT(_F._slink, _F._slink->INRA))
    {
        // line 3135
        P_PRINTB(nullptr, MBORD);
    }
    else
    {
        // line 3137
        P_PRINTB(nullptr, BOARD.RBIS);
    }
    
    { /* NOP */ }
}


// line 3141
//================================================================================
// scope: READER_PAMCMD (level : 3)

// activation record
struct Frame_READER_PAMCMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_PAMCMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_PAMCMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3144
    while(F_READER_RDRGNT(_F._slink, _F._slink->INRA))
    {
        // line 3145
        if((_F._slink->INRA[C_AA] == 'T'))
        {
            // line 3146
            P_PRINAM(nullptr, ATKTO);
        }
        else
        {
            // line 3148
            if((_F._slink->INRA[C_AA] == 'F'))
            {
                // line 3149
                P_PRINAM(nullptr, ATKFR);
            }
            else
            {
                // line 3151
                P_READER_RDRERR(_F._slink, T_RN::C(" ATTACK MAP NOT TO OR FROM    "));
            }
        }
    }
    
    { /* NOP */ }
}


// line 3155
//================================================================================
// scope: READER_POPCMD (level : 3)

// activation record
struct Frame_READER_POPCMD
{
   Frame_READER* _slink;

    // locals
    T_TQ INTQ;
};

// function body
void P_READER_POPCMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_POPCMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3163
    Output << XTMA[BOARD.RBTM] << " TO MOVE." << _WRITELN;
    
    // line 3164
    Output << BOARD.RBTS << " ENPASSANT." << _WRITELN;
    
    // line 3165
    Output << "MOVE NUMBER " << BOARD.RBTI << _WRITELN;
    
    // line 3166
    _FOR_TO(_F.INTQ, C_LS, C_DL)
    {
        // line 3167
        if((BOARD.RBSQ & _F.INTQ))
        {
            // line 3168
            Output << XTQA[_F.INTQ] << " SIDE CASTLE LEGAL." << _WRITELN;
        }
    }
    _FOR_END(_F.INTQ)
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 3173
//================================================================================
// scope: READER_PMVCMD (level : 3)

// activation record
struct Frame_READER_PMVCMD
{
   Frame_READER* _slink;

    // locals
    T_TW INTW;
};

// function body
void P_READER_PMVCMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_PMVCMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3179
    P_LSTMOV(nullptr);
    
    // line 3180
    _FOR_TO(_F.INTW, C_AW, (JNTW - 1))
    {
        // line 3182
        Output << _format(_F.INTW, 4, 0) << "   ";
        
        // line 3183
        P_PRIMOV(nullptr, MOVES[_F.INTW]);
        
        // line 3184
        if((((double)_F.INTW / C_LPP) == (_F.INTW / C_LPP)))
        {
            // line 3185
            P_PAUSER(nullptr);
        }
        
        { /* NOP */ }
    }
    _FOR_END(_F.INTW)
    
    { /* NOP */ }
}


// line 3190
//================================================================================
// scope: READER_SWICMD (level : 3)

// forward declarations
void P_READER_SWICMD_SWIONE(void* _slink, T_RA A, T_boolean& B);

// non-local goto targets
const int NL_READER_SWICMD_21 = 9;

// activation record
struct Frame_READER_SWICMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_SWICMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_SWICMD _F = { (Frame_READER*)_slink };
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_READER_SWICMD_21: goto L_21;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 3228
        L_21:
        while(F_READER_RDRGNT(_F._slink, _F._slink->INRA))
        {
            // line 3230
            P_READER_SWICMD_SWIONE(&_F, T_RA::C("EC        "), SWEC);
            
            // line 3231
            P_READER_SWICMD_SWIONE(&_F, T_RA::C("PA        "), SWPA);
            
            // line 3232
            P_READER_SWICMD_SWIONE(&_F, T_RA::C("PS        "), SWPS);
            
            // line 3233
            P_READER_SWICMD_SWIONE(&_F, T_RA::C("RE        "), SWRE);
            
            // line 3234
            P_READER_SWICMD_SWIONE(&_F, T_RA::C("SU        "), SWSU);
            
            // line 3235
            P_READER_SWICMD_SWIONE(&_F, T_RA::C("TR        "), SWTR);
            
            // line 3236
            P_READER_RDRERR(_F._slink, T_RN::C(" INVALID SWITCH OPTION        "));
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_READER_SWICMD_21:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 3195
//================================================================================
// scope: READER_SWICMD_SWIONE (level : 4)

// activation record
struct Frame_READER_SWICMD_SWIONE
{
   Frame_READER_SWICMD* _slink;

    // parameters
    T_RA A;
    T_boolean& B;

    // locals
    T_TJ IMTJ;
};

// function body
void P_READER_SWICMD_SWIONE(void* _slink, T_RA A, T_boolean& B)
{
    // prologue/frame definition
    Frame_READER_SWICMD_SWIONE _F = { (Frame_READER_SWICMD*)_slink, A, B };
    
    // subroutine body
    // line 3203
    if(_strcmpEQ<10>(_F._slink->_slink->INRA, _F.A))
    {
        // line 3205
        _F.IMTJ = JNTJ;
        
        // line 3206
        if(F_READER_RDRGNT(_F._slink->_slink, _F._slink->_slink->INRA))
        {
            // line 3208
            if(_strcmpEQ<10>(_F._slink->_slink->INRA, "ON        "))
            {
                // line 3209
                _F.B = C_true;
            }
            else
            {
                // line 3211
                if(_strcmpEQ<10>(_F._slink->_slink->INRA, "OFF       "))
                {
                    // line 3212
                    _F.B = C_false;
                }
                else
                {
                    // line 3214
                    JNTJ = _F.IMTJ;
                }
            }
            
            // line 3215
            P_PRISWI(nullptr, _F.A, _F.B);
            
            { /* NOP */ }
        }
        else
        {
            // line 3219
            P_PRISWI(nullptr, _F.A, _F.B);
            
            { /* NOP */ }
        }
        
        // line 3221
        throw NL_READER_SWICMD_21;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 3241
//================================================================================
// scope: READER_STACMD (level : 3)

// types
typedef _T_Pfn<void (*)(void*)> T_READER_STACMD_subroutine_47;

// forward declarations
void P_READER_STACMD_STAEPF(void* _slink, T_RA A, T_TF B);
void P_READER_STACMD_STACAK(void* _slink);
void P_READER_STACMD_STACAQ(void* _slink);
void P_READER_STACMD_STADRK(void* _slink);
void P_READER_STACMD_STAENP(void* _slink);
void P_READER_STACMD_STAGOS(void* _slink);
void P_READER_STACMD_STALIT(void* _slink);
void P_READER_STACMD_STANUM(void* _slink);
void P_READER_STACMD_STAOPT(void* _slink, T_RA A, T_READER_STACMD_subroutine_47 STAXXX);

// non-local goto targets
const int NL_READER_STACMD_21 = 10;

// activation record
struct Frame_READER_STACMD
{
   Frame_READER* _slink;

    // locals
    T_RA INRA;
    T_TM INTM;
};

// function body
void P_READER_STACMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD _F = { (Frame_READER*)_slink };
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_READER_STACMD_21: goto L_21;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 3350
        P_CLSTAT(nullptr);
        
        // line 3351
        _F.INTM = C_LITE;
        
        // line 3353
        L_21:
        while(F_READER_RDRGNT(_F._slink, _F.INRA))
        {
            // line 3355
            P_READER_STACMD_STAOPT(&_F, T_RA::C("D         "), _makePfn(P_READER_STACMD_STADRK, &_F));
            
            // line 3356
            P_READER_STACMD_STAOPT(&_F, T_RA::C("EP        "), _makePfn(P_READER_STACMD_STAENP, &_F));
            
            // line 3357
            P_READER_STACMD_STAOPT(&_F, T_RA::C("G         "), _makePfn(P_READER_STACMD_STAGOS, &_F));
            
            // line 3358
            P_READER_STACMD_STAOPT(&_F, T_RA::C("L         "), _makePfn(P_READER_STACMD_STALIT, &_F));
            
            // line 3359
            P_READER_STACMD_STAOPT(&_F, T_RA::C("N         "), _makePfn(P_READER_STACMD_STANUM, &_F));
            
            // line 3360
            P_READER_STACMD_STAOPT(&_F, T_RA::C("OO        "), _makePfn(P_READER_STACMD_STACAK, &_F));
            
            // line 3361
            P_READER_STACMD_STAOPT(&_F, T_RA::C("OOO       "), _makePfn(P_READER_STACMD_STACAQ, &_F));
            
            // line 3362
            P_CLSTAT(nullptr);
            
            // line 3363
            P_READER_RDRERR(_F._slink, T_RN::C(" INVALID STATUS OPTION        "));
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_READER_STACMD_21:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 3250
//================================================================================
// scope: READER_STACMD_STAEPF (level : 4)

// activation record
struct Frame_READER_STACMD_STAEPF
{
   Frame_READER_STACMD* _slink;

    // parameters
    T_RA A;
    T_TF B;
};

// function body
void P_READER_STACMD_STAEPF(void* _slink, T_RA A, T_TF B)
{
    // prologue/frame definition
    Frame_READER_STACMD_STAEPF _F = { (Frame_READER_STACMD*)_slink, A, B };
    
    // subroutine body
    // line 3255
    if(_strcmpEQ<10>(_F.A, _F._slink->INRA))
    {
        // line 3257
        if((_F._slink->INTM == C_LITE))
        {
            // line 3258
            BOARD.RBTS = XTRFS[C_R6][_F.B];
        }
        else
        {
            // line 3260
            BOARD.RBTS = XTRFS[C_R3][_F.B];
        }
        
        // line 3261
        throw NL_READER_STACMD_21;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 3266
//================================================================================
// scope: READER_STACMD_STACAK (level : 4)

// activation record
struct Frame_READER_STACMD_STACAK
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STACAK(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STACAK _F = { (Frame_READER_STACMD*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_LS);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_DS);
    
    // subroutine body
    // line 3269
    if((_F._slink->INTM == C_LITE))
    {
        // line 3270
        BOARD.RBSQ = (BOARD.RBSQ + _setLiteral1);
    }
    else
    {
        // line 3272
        BOARD.RBSQ = (BOARD.RBSQ + _setLiteral2);
    }
    
    { /* NOP */ }
}


// line 3276
//================================================================================
// scope: READER_STACMD_STACAQ (level : 4)

// activation record
struct Frame_READER_STACMD_STACAQ
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STACAQ(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STACAQ _F = { (Frame_READER_STACMD*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_LL);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_DL);
    
    // subroutine body
    // line 3279
    if((_F._slink->INTM == C_LITE))
    {
        // line 3280
        BOARD.RBSQ = (BOARD.RBSQ + _setLiteral1);
    }
    else
    {
        // line 3282
        BOARD.RBSQ = (BOARD.RBSQ + _setLiteral2);
    }
    
    { /* NOP */ }
}


// line 3286
//================================================================================
// scope: READER_STACMD_STADRK (level : 4)

// activation record
struct Frame_READER_STACMD_STADRK
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STADRK(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STADRK _F = { (Frame_READER_STACMD*)_slink };
    
    // subroutine body
    // line 3289
    _F._slink->INTM = C_DARK;
    
    { /* NOP */ }
}


// line 3293
//================================================================================
// scope: READER_STACMD_STAENP (level : 4)

// activation record
struct Frame_READER_STACMD_STAENP
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STAENP(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STAENP _F = { (Frame_READER_STACMD*)_slink };
    
    // subroutine body
    // line 3296
    if((!F_READER_RDRGNT(_F._slink->_slink, _F._slink->INRA)))
    {
        // line 3298
        P_CLSTAT(nullptr);
        
        // line 3299
        P_READER_RDRERR(_F._slink->_slink, T_RN::C(" ENPASSANT FILE OMITTED       "));
        
        { /* NOP */ }
    }
    
    // line 3301
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("QR        "), C_F1);
    
    // line 3302
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("QN        "), C_F2);
    
    // line 3303
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("QB        "), C_F3);
    
    // line 3304
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("Q         "), C_F4);
    
    // line 3305
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("K         "), C_F5);
    
    // line 3306
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("KB        "), C_F6);
    
    // line 3307
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("KN        "), C_F7);
    
    // line 3308
    P_READER_STACMD_STAEPF(_F._slink, T_RA::C("KR        "), C_F8);
    
    // line 3309
    P_CLSTAT(nullptr);
    
    // line 3310
    P_READER_RDRERR(_F._slink->_slink, T_RN::C(" ILLEGAL ENPASSANT FILE       "));
    
    { /* NOP */ }
}


// line 3314
//================================================================================
// scope: READER_STACMD_STAGOS (level : 4)

// activation record
struct Frame_READER_STACMD_STAGOS
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STAGOS(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STAGOS _F = { (Frame_READER_STACMD*)_slink };
    
    // subroutine body
    // line 3317
    BOARD.RBTM = _F._slink->INTM;
    
    // line 3318
    JNTM = _F._slink->INTM;
    
    { /* NOP */ }
}


// line 3322
//================================================================================
// scope: READER_STACMD_STALIT (level : 4)

// activation record
struct Frame_READER_STACMD_STALIT
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STALIT(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STALIT _F = { (Frame_READER_STACMD*)_slink };
    
    // subroutine body
    // line 3325
    _F._slink->INTM = C_LITE;
    
    { /* NOP */ }
}


// line 3329
//================================================================================
// scope: READER_STACMD_STANUM (level : 4)

// activation record
struct Frame_READER_STACMD_STANUM
{
   Frame_READER_STACMD* _slink;
};

// function body
void P_READER_STACMD_STANUM(void* _slink)
{
    // prologue/frame definition
    Frame_READER_STACMD_STANUM _F = { (Frame_READER_STACMD*)_slink };
    
    // subroutine body
    // line 3332
    BOARD.RBTI = F_READER_RDRNUM(_F._slink->_slink);
    
    { /* NOP */ }
}


// line 3336
//================================================================================
// scope: READER_STACMD_STAOPT (level : 4)

// activation record
struct Frame_READER_STACMD_STAOPT
{
   Frame_READER_STACMD* _slink;

    // parameters
    T_RA A;
    T_READER_STACMD_subroutine_47 STAXXX;
};

// function body
void P_READER_STACMD_STAOPT(void* _slink, T_RA A, T_READER_STACMD_subroutine_47 STAXXX)
{
    // prologue/frame definition
    Frame_READER_STACMD_STAOPT _F = { (Frame_READER_STACMD*)_slink, A, STAXXX };
    
    // subroutine body
    // line 3341
    if(_strcmpEQ<10>(_F._slink->INRA, _F.A))
    {
        // line 3343
        (*_F.STAXXX._pfn)(_F.STAXXX._slink);
        
        // line 3344
        throw NL_READER_STACMD_21;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 3368
//================================================================================
// scope: READER_WHACMD (level : 3)

// activation record
struct Frame_READER_WHACMD
{
   Frame_READER* _slink;
};

// function body
void P_READER_WHACMD(void* _slink)
{
    // prologue/frame definition
    Frame_READER_WHACMD _F = { (Frame_READER*)_slink };
    
    // subroutine body
    // line 3371
    Output << MOVMS << _WRITELN;
    
    { /* NOP */ }
}


// line 3410
//================================================================================
// scope: MINENG (level : 2)

// forward declarations
void P_MINENG_ADDCHR(void* _slink, T_char A);
void P_MINENG_ADDSQR(void* _slink, T_TS A, T_RD B);
void P_MINENG_ADDWRD(void* _slink, T_RA A, T_TA B);
T_boolean F_MINENG_DIFFER(void* _slink, T_RM A, T_RM B);
void P_MINENG_SETSQD(void* _slink, T_TS A, T_RD B, T_SR& C, T_SF& O);
void P_MINENG_MINGEN(void* _slink, T_RM A, T_integer B, T_integer C);

// activation record
struct Frame_MINENG
{
    // parameters
    T_RM A;
    T_RA B;

    // locals
    T_TN INTN;
};

// function body
void P_MINENG(void* _slink, T_RM A, T_RA B)
{
    // prologue/frame definition
    Frame_MINENG _F = {A, B };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 3597
    MOVMS = "                              ";
    
    // line 3599
    _F.INTN = (C_AN + 1);
    
    // line 3600
    P_MINENG_ADDWRD(&_F, _F.B, T_TA::C(C_ZA));
    
    // line 3601
    P_MINENG_ADDWRD(&_F, T_RA::C("-         "), T_TA::C(2));
    
    // line 3604
    if(_F.A.RMOO)
    {
        // line 3606
        P_MINENG_ADDWRD(&_F, T_RA::C("O-O       "), T_TA::C(3));
        
        // line 3607
        if(_F.A.RMQS)
        {
            // line 3608
            P_MINENG_ADDWRD(&_F, T_RA::C("-O        "), T_TA::C(2));
        }
        
        { /* NOP */ }
    }
    else
    {
        // line 3611
        if(_F.A.RMCA)
        {
            // line 3612
            P_MINENG_MINGEN(&_F, _F.A, C_SYNCF, C_SYNCL);
        }
        else
        {
            // line 3614
            P_MINENG_MINGEN(&_F, _F.A, C_SYNMF, C_SYNML);
        }
    }
    
    // line 3615
    if(_F.A.RMPR)
    {
        // line 3617
        P_MINENG_ADDCHR(&_F, '=');
        
        // line 3618
        P_MINENG_ADDCHR(&_F, XTGC[_F.A.RMPP]);
        
        { /* NOP */ }
    }
    
    // line 3620
    P_MINENG_ADDWRD(&_F, T_RA::C(".         "), T_TA::C(3));
    
    // line 3621
    if(_F.A.RMCH)
    {
        // line 3623
        P_MINENG_ADDWRD(&_F, T_RA::C("CHECK     "), T_TA::C(5));
        
        // line 3624
        if(_F.A.RMMT)
        {
            // line 3625
            P_MINENG_ADDWRD(&_F, T_RA::C("MATE      "), T_TA::C(4));
        }
        
        // line 3626
        P_MINENG_ADDCHR(&_F, '.');
        
        { /* NOP */ }
    }
    else
    {
        // line 3629
        if(_F.A.RMMT)
        {
            // line 3630
            P_MINENG_ADDWRD(&_F, T_RA::C("STALEMATE."), T_TA::C(10));
        }
    }
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 3418
//================================================================================
// scope: MINENG_ADDCHR (level : 3)

// activation record
struct Frame_MINENG_ADDCHR
{
   Frame_MINENG* _slink;

    // parameters
    T_char A;
};

// function body
void P_MINENG_ADDCHR(void* _slink, T_char A)
{
    // prologue/frame definition
    Frame_MINENG_ADDCHR _F = { (Frame_MINENG*)_slink, A };
    
    // subroutine body
    // line 3422
    MOVMS[_F._slink->INTN] = _F.A;
    
    // line 3423
    if((_F._slink->INTN < C_ZN))
    {
        // line 3424
        _F._slink->INTN = (_F._slink->INTN + 1);
    }
    
    { /* NOP */ }
}


// line 3428
//================================================================================
// scope: MINENG_ADDSQR (level : 3)

// activation record
struct Frame_MINENG_ADDSQR
{
   Frame_MINENG* _slink;

    // parameters
    T_TS A;
    T_RD B;
};

// function body
void P_MINENG_ADDSQR(void* _slink, T_TS A, T_RD B)
{
    // prologue/frame definition
    Frame_MINENG_ADDSQR _F = { (Frame_MINENG*)_slink, A, B };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_F1, C_F4);
    
    // subroutine body
    // line 3435
    if(_F.B.RDPC)
    {
        // line 3436
        P_MINENG_ADDCHR(_F._slink, XTUC[XTPU[MBORD[_F.A]]]);
    }
    
    // line 3437
    if(_F.B.RDSL)
    {
        // line 3438
        P_MINENG_ADDCHR(_F._slink, '/');
    }
    
    // line 3439
    if(_F.B.RDKQ)
    {
        // line 3440
        if((_setLiteral1 & XTSF[_F.A]))
        {
            // line 3441
            P_MINENG_ADDCHR(_F._slink, 'Q');
        }
        else
        {
            // line 3442
            P_MINENG_ADDCHR(_F._slink, 'K');
        }
    }
    
    // line 3443
    if(_F.B.RDNB)
    {
        // line 3444
        switch(XTSF[_F.A])
        {
        case C_F1:
        case C_F8:
            // line 3445
            P_MINENG_ADDCHR(_F._slink, 'R');
            break;
        
        case C_F2:
        case C_F7:
            // line 3446
            P_MINENG_ADDCHR(_F._slink, 'N');
            break;
        
        case C_F3:
        case C_F6:
            // line 3447
            P_MINENG_ADDCHR(_F._slink, 'B');
            break;
        
        case C_F4:
            // line 3448
            P_MINENG_ADDCHR(_F._slink, 'Q');
            break;
        
        case C_F5:
            // line 3449
            P_MINENG_ADDCHR(_F._slink, 'K');
            break;
        }
    }
    
    // line 3451
    if(_F.B.RDRK)
    {
        // line 3452
        if((JNTM == C_LITE))
        {
            // line 3453
            switch(XTSR[_F.A])
            {
            case C_R1:
                // line 3454
                P_MINENG_ADDCHR(_F._slink, '1');
                break;
            
            case C_R2:
                // line 3455
                P_MINENG_ADDCHR(_F._slink, '2');
                break;
            
            case C_R3:
                // line 3456
                P_MINENG_ADDCHR(_F._slink, '3');
                break;
            
            case C_R4:
                // line 3457
                P_MINENG_ADDCHR(_F._slink, '4');
                break;
            
            case C_R5:
                // line 3458
                P_MINENG_ADDCHR(_F._slink, '5');
                break;
            
            case C_R6:
                // line 3459
                P_MINENG_ADDCHR(_F._slink, '6');
                break;
            
            case C_R7:
                // line 3460
                P_MINENG_ADDCHR(_F._slink, '7');
                break;
            
            case C_R8:
                // line 3461
                P_MINENG_ADDCHR(_F._slink, '8');
                break;
            }
        }
        else
        {
            // line 3464
            switch(XTSR[_F.A])
            {
            case C_R1:
                // line 3465
                P_MINENG_ADDCHR(_F._slink, '8');
                break;
            
            case C_R2:
                // line 3466
                P_MINENG_ADDCHR(_F._slink, '7');
                break;
            
            case C_R3:
                // line 3467
                P_MINENG_ADDCHR(_F._slink, '6');
                break;
            
            case C_R4:
                // line 3468
                P_MINENG_ADDCHR(_F._slink, '5');
                break;
            
            case C_R5:
                // line 3469
                P_MINENG_ADDCHR(_F._slink, '4');
                break;
            
            case C_R6:
                // line 3470
                P_MINENG_ADDCHR(_F._slink, '3');
                break;
            
            case C_R7:
                // line 3471
                P_MINENG_ADDCHR(_F._slink, '2');
                break;
            
            case C_R8:
                // line 3472
                P_MINENG_ADDCHR(_F._slink, '1');
                break;
            }
        }
    }
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 3478
//================================================================================
// scope: MINENG_ADDWRD (level : 3)

// activation record
struct Frame_MINENG_ADDWRD
{
   Frame_MINENG* _slink;

    // parameters
    T_RA A;
    T_TA B;

    // locals
    T_TA INTA;
};

// function body
void P_MINENG_ADDWRD(void* _slink, T_RA A, T_TA B)
{
    // prologue/frame definition
    Frame_MINENG_ADDWRD _F = { (Frame_MINENG*)_slink, A, B };
    
    // subroutine body
    // line 3486
    _FOR_TO(_F.INTA, C_AA, _F.B)
    {
        // line 3487
        P_MINENG_ADDCHR(_F._slink, _F.A[_F.INTA]);
    }
    _FOR_END(_F.INTA)
    
    { /* NOP */ }
}


// line 3491
//================================================================================
// scope: MINENG_DIFFER (level : 3)

// activation record
struct Frame_MINENG_DIFFER
{
   Frame_MINENG* _slink;

    // parameters
    T_RM A;
    T_RM B;

    // locals
    T_boolean _fnvalue;
    T_boolean INTB;
};

// function body
T_boolean F_MINENG_DIFFER(void* _slink, T_RM A, T_RM B)
{
    // prologue/frame definition
    Frame_MINENG_DIFFER _F = { (Frame_MINENG*)_slink, A, B };
    
    // subroutine body
    // line 3499
    _F.INTB = (((_F.A.RMFR != _F.B.RMFR) || (_F.A.RMTO != _F.B.RMTO)) || (_F.A.RMCP != _F.B.RMCP));
    
    // line 3500
    if((_F.A.RMPR == _F.B.RMPR))
    {
        // line 3501
        if(_F.A.RMPR)
        {
            // line 3502
            _F._fnvalue = (_F.INTB || (_F.A.RMPP != _F.B.RMPP));
        }
        else
        {
            // line 3504
            if((_F.A.RMOO == _F.B.RMOO))
            {
                // line 3505
                if(_F.A.RMOO)
                {
                    // line 3506
                    _F._fnvalue = (_F.INTB || (_F.A.RMQS != _F.B.RMQS));
                }
                else
                {
                    // line 3508
                    _F._fnvalue = _F.INTB;
                }
            }
            else
            {
                // line 3510
                _F._fnvalue = C_true;
            }
        }
    }
    else
    {
        // line 3512
        _F._fnvalue = C_true;
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 3516
//================================================================================
// scope: MINENG_SETSQD (level : 3)

// activation record
struct Frame_MINENG_SETSQD
{
   Frame_MINENG* _slink;

    // parameters
    T_TS A;
    T_RD B;
    T_SR& C;
    T_SF& O;
};

// function body
void P_MINENG_SETSQD(void* _slink, T_TS A, T_RD B, T_SR& C, T_SF& O)
{
    // prologue/frame definition
    Frame_MINENG_SETSQD _F = { (Frame_MINENG*)_slink, A, B, C, O };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_R1, C_R8);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_F1, C_F8);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_F1);
    _setLiteral4.set(C_F8);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_F2);
    _setLiteral5.set(C_F7);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_F3);
    _setLiteral6.set(C_F6);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_F4);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_F5);
    
    // subroutine body
    // line 3524
    _F.C = _setLiteral1;
    
    // line 3525
    _F.O = _setLiteral2;
    
    // line 3528
    if((_F.B.RDKQ && _F.B.RDNB))
    {
        // line 3529
        {
            _T_GenericSet _setLiteral3;
            _setLiteral3.set(XTSF[_F.A]);
            
            _F.O = _setLiteral3;
        }
    }
    
    // line 3530
    if(((!_F.B.RDKQ) && _F.B.RDNB))
    {
        // line 3531
        switch(XTSF[_F.A])
        {
        case C_F1:
        case C_F8:
            // line 3532
            _F.O = _setLiteral4;
            break;
        
        case C_F2:
        case C_F7:
            // line 3533
            _F.O = _setLiteral5;
            break;
        
        case C_F3:
        case C_F6:
            // line 3534
            _F.O = _setLiteral6;
            break;
        
        case C_F4:
            // line 3535
            _F.O = _setLiteral7;
            break;
        
        case C_F5:
            // line 3536
            _F.O = _setLiteral8;
            break;
        }
    }
    
    // line 3538
    if(_F.B.RDRK)
    {
        // line 3539
        {
            _T_GenericSet _setLiteral9;
            _setLiteral9.set(XTSR[_F.A]);
            
            _F.C = _setLiteral9;
        }
    }
    
    { /* NOP */ }
    
    { /* NOP */ }
}


// line 3544
//================================================================================
// scope: MINENG_MINGEN (level : 3)

// activation record
struct Frame_MINENG_MINGEN
{
   Frame_MINENG* _slink;

    // parameters
    T_RM A;
    T_integer B;
    T_integer C;

    // locals
    T_SF INLF;
    T_SR INLR;
    T_SF INRF;
    T_SR INRR;
    T_TG INTG;
    T_integer INTI;
    T_TW INTW;
};

// function body
void P_MINENG_MINGEN(void* _slink, T_RM A, T_integer B, T_integer C)
{
    // prologue/frame definition
    Frame_MINENG_MINGEN _F = { (Frame_MINENG*)_slink, A, B, C };
    
    // subroutine body
    // line 3565
    _FOR_TO(_F.INTI, _F.B, _F.C)
    {
        // line 3568
        if(_F.A.RMPR)
        {
            // line 3569
            _F.INTG = _F.A.RMPP;
        }
        else
        {
            // line 3571
            _F.INTG = C_PB;
        }
        
        // line 3572
        P_MINENG_SETSQD(_F._slink, _F.A.RMFR, SYNTX[_F.INTI].RYLS, _F.INLR, _F.INLF);
        
        // line 3573
        P_MINENG_SETSQD(_F._slink, _F.A.RMTO, SYNTX[_F.INTI].RYRS, _F.INRR, _F.INRF);
        
        // line 3574
        _FOR_TO(_F.INTW, (C_AW + 1), (JNTW - 1))
        {
            // line 3575
            if(F_MINENG_DIFFER(_F._slink, MOVES[_F.INTW], _F.A))
            {
                // line 3576
                if(((MBORD[_F.A.RMFR] == MBORD[MOVES[_F.INTW].RMFR]) && (_F.A.RMCP == MOVES[_F.INTW].RMCP)))
                {
                    // line 3579
                    if((((((_F.INLR & XTSR[MOVES[_F.INTW].RMFR]) && (_F.INRR & XTSR[MOVES[_F.INTW].RMTO])) && (_F.INLF & XTSF[MOVES[_F.INTW].RMFR])) && (_F.INRF & XTSF[MOVES[_F.INTW].RMTO])) && ((MOVES[_F.INTW].RMPR && (_F.INTG == MOVES[_F.INTW].RMPP)) || (!MOVES[_F.INTW].RMPR))))
                    {
                        // line 3584
                        goto L_21;
                    }
                }
            }
        }
        _FOR_END(_F.INTW)
        
        // line 3587
        P_MINENG_ADDSQR(_F._slink, _F.A.RMFR, SYNTX[_F.INTI].RYLS);
        
        // line 3588
        P_MINENG_ADDCHR(_F._slink, SYNTX[_F.INTI].RYCH);
        
        // line 3589
        P_MINENG_ADDSQR(_F._slink, _F.A.RMTO, SYNTX[_F.INTI].RYRS);
        
        // line 3590
        goto L_22;
        
        L_21:
        { /* NOP */ }
    }
    _FOR_END(_F.INTI)
    
    L_22:
    { /* NOP */ }
}


// line 3635
//================================================================================
// scope: MYMOVE (level : 2)

// activation record
struct Frame_MYMOVE
{
    // locals
    T_RM INRM;
};

// function body
void P_MYMOVE(void* _slink)
{
    // prologue/frame definition
    Frame_MYMOVE _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 3641
    P_CREATE(nullptr);
    
    // line 3642
    _F.INRM = MOVES[F_SEARCH(nullptr)];
    
    // line 3643
    if(_F.INRM.RMIL)
    {
        // line 3645
        GOING = 0;
        
        // line 3646
        if(LSTMV.RMCH)
        {
            // line 3647
            Output << " CONGRATULATIONS." << _WRITELN;
        }
        else
        {
            // line 3649
            Output << " DRAWN. " << _WRITELN;
        }
        
        { /* NOP */ }
    }
    else
    {
        // line 3653
        P_MINENG(nullptr, _F.INRM, T_RA::C("  MY MOVE "));
        
        // line 3654
        Output << MOVMS << _WRITELN;
        
        // line 3655
        P_THEMOV(nullptr, _F.INRM);
        
        // line 3656
        if(SWSU)
        {
            // line 3657
            Output << BOARD.RBTI << '.' << NODES << " NODES," << BSTVL[C_AK] << _WRITELN;
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 3662
//================================================================================
// scope: YRMOVE (level : 2)

// types
typedef _T_Pfn<void (*)(void*)> T_YRMOVE_subroutine_48;

// forward declarations
void P_YRMOVE_YRMHIT(void* _slink);
void P_YRMOVE_YRMCOM(void* _slink);
void P_YRMOVE_YRMCAP(void* _slink);
void P_YRMOVE_YRMCAS(void* _slink);
void P_YRMOVE_YRMCPC(void* _slink);
void P_YRMOVE_YRMCQS(void* _slink);
void P_YRMOVE_YRMLKQ(void* _slink);
void P_YRMOVE_YRMLRB(void* _slink);
void P_YRMOVE_YRMLRK(void* _slink);
void P_YRMOVE_YRMNUL(void* _slink);
void P_YRMOVE_YRMPCM(void* _slink);
void P_YRMOVE_YRMPRO(void* _slink);
void P_YRMOVE_YRMRKQ(void* _slink);
void P_YRMOVE_YRMRRB(void* _slink);
void P_YRMOVE_YRMRRK(void* _slink);
T_boolean F_YRMOVE_NCHIN(void* _slink, T_SC A, T_YRMOVE_subroutine_48 YRMXXX);

// non-local goto targets
const int NL_YRMOVE_17 = 11;
const int NL_YRMOVE_19 = 12;

// activation record
struct Frame_YRMOVE
{
    // locals
    T_boolean IFCA;
    T_boolean IFLD;
    T_boolean IFLF;
    T_boolean IFMV;
    T_boolean IFOO;
    T_boolean IFPR;
    T_boolean IFQS;
    T_boolean IFRD;
    T_boolean IFRF;
    T_TP INCP;
    T_SF INLF;
    T_SR INLR;
    T_SF INRF;
    T_RM INRM;
    T_SR INRR;
    T_boolean INTB;
    T_char INTC;
    T_TG INTG;
    T_TP INTP;
    T_TJ INTW;
    T_boolean Jumpin;
};

// function body
void P_YRMOVE(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_F1, C_F8);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_F1, C_F8);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_R1, C_R8);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_R1, C_R8);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set('P');
    _setLiteral5.set('R');
    _setLiteral5.set('N');
    _setLiteral5.set('B');
    _setLiteral5.set('Q');
    _setLiteral5.set('K');
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set('/');
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set('K');
    _setLiteral7.set('Q');
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set('R');
    _setLiteral8.set('N');
    _setLiteral8.set('B');
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set('1', '8');
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set('-');
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set('+');
    _setLiteral11.set('X');
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set('P');
    _setLiteral12.set('R');
    _setLiteral12.set('N');
    _setLiteral12.set('B');
    _setLiteral12.set('Q');
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set('/');
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set('K');
    _setLiteral14.set('Q');
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set('R');
    _setLiteral15.set('N');
    _setLiteral15.set('B');
    
    _T_GenericSet _setLiteral16;
    _setLiteral16.set('1', '8');
    
    _T_GenericSet _setLiteral17;
    _setLiteral17.set('=');
    
    _T_GenericSet _setLiteral18;
    _setLiteral18.set('R');
    _setLiteral18.set('N');
    _setLiteral18.set('B');
    _setLiteral18.set('Q');
    
    _T_GenericSet _setLiteral19;
    _setLiteral19.set('O');
    _setLiteral19.set('0');
    
    _T_GenericSet _setLiteral20;
    _setLiteral20.set('-');
    
    _T_GenericSet _setLiteral21;
    _setLiteral21.set('O');
    _setLiteral21.set('0');
    
    _T_GenericSet _setLiteral22;
    _setLiteral22.set('-');
    
    _T_GenericSet _setLiteral23;
    _setLiteral23.set('O');
    _setLiteral23.set('0');
    
    _T_GenericSet _setLiteral24;
    _setLiteral24.set(C_F4);
    _setLiteral24.set(C_F5);
    
    _T_GenericSet _setLiteral25;
    _setLiteral25.set(C_F4);
    _setLiteral25.set(C_F5);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_YRMOVE_17: goto L_17;
        case NL_YRMOVE_19: goto L_19;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 3940
        _F.Jumpin = C_false;
        
        // line 3941
        _F.INTB = C_false;
        
        // line 3943
        L_19:
        while(((!_F.INTB) || _F.Jumpin))
        {
            // line 3946
            if(_F.Jumpin)
            {
                // line 3946
                goto L_15;
            }
            
            // line 3948
            P_READER(nullptr);
            
            // line 3949
            P_LSTMOV(nullptr);
            
            // line 3951
            _F.IFCA = C_false;
            
            // line 3952
            _F.IFPR = C_false;
            
            // line 3953
            _F.IFOO = C_false;
            
            // line 3954
            _F.IFQS = C_false;
            
            // line 3955
            _F.IFLD = C_false;
            
            // line 3956
            _F.IFLF = C_false;
            
            // line 3957
            _F.IFRD = C_false;
            
            // line 3958
            _F.IFRF = C_false;
            
            // line 3959
            _F.INTP = C_MT;
            
            // line 3960
            _F.INCP = C_MT;
            
            // line 3961
            _F.INLF = _setLiteral1;
            
            // line 3962
            _F.INRF = _setLiteral2;
            
            // line 3963
            _F.INLR = _setLiteral3;
            
            // line 3964
            _F.INRR = _setLiteral4;
            
            // line 3965
            _F.INTC = ILINE[JNTJ];
            
            // line 3967
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral5), _makePfn(P_YRMOVE_YRMPCM, &_F)))
            {
                // line 3967
                goto L_14;
            }
            
            // line 3968
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral6), _makePfn(P_YRMOVE_YRMNUL, &_F)))
            {
                // line 3968
                goto L_11;
            }
            
            // line 3969
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral7), _makePfn(P_YRMOVE_YRMLKQ, &_F)))
            {
                { /* NOP */ }
            }
            
            // line 3970
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral8), _makePfn(P_YRMOVE_YRMLRB, &_F)))
            {
                { /* NOP */ }
            }
            
            // line 3971
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral9), _makePfn(P_YRMOVE_YRMLRK, &_F)))
            {
                { /* NOP */ }
            }
            
            // line 3973
            L_11:
            if((!F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral10), _makePfn(P_YRMOVE_YRMNUL, &_F))))
            {
                // line 3973
                goto L_12;
            }
            
            // line 3974
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral11), _makePfn(P_YRMOVE_YRMCAP, &_F)))
            {
                // line 3974
                goto L_16;
            }
            
            // line 3975
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral12), _makePfn(P_YRMOVE_YRMCPC, &_F)))
            {
                // line 3975
                goto L_16;
            }
            
            // line 3976
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral13), _makePfn(P_YRMOVE_YRMNUL, &_F)))
            {
                // line 3976
                goto L_13;
            }
            
            // line 3978
            L_12:
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral14), _makePfn(P_YRMOVE_YRMRKQ, &_F)))
            {
                { /* NOP */ }
            }
            
            // line 3979
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral15), _makePfn(P_YRMOVE_YRMRRB, &_F)))
            {
                { /* NOP */ }
            }
            
            // line 3980
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral16), _makePfn(P_YRMOVE_YRMRRK, &_F)))
            {
                { /* NOP */ }
            }
            
            // line 3982
            L_13:
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral17), _makePfn(P_YRMOVE_YRMNUL, &_F)))
            {
                // line 3982
                goto L_15;
            }
            
            // line 3983
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral18), _makePfn(P_YRMOVE_YRMPRO, &_F)))
            {
                // line 3983
                goto L_16;
            }
            
            // line 3984
            goto L_15;
            
            // line 3987
            L_14:
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral19), _makePfn(P_YRMOVE_YRMNUL, &_F)))
            {
                // line 3987
                goto L_16;
            }
            
            // line 3988
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral20), _makePfn(P_YRMOVE_YRMNUL, &_F)))
            {
                // line 3988
                goto L_16;
            }
            
            // line 3989
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral21), _makePfn(P_YRMOVE_YRMCAS, &_F)))
            {
                // line 3989
                goto L_16;
            }
            
            // line 3990
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral22), _makePfn(P_YRMOVE_YRMCQS, &_F)))
            {
                // line 3990
                goto L_15;
            }
            
            // line 3991
            if(F_YRMOVE_NCHIN(&_F, T_SC::C(_setLiteral23), _makePfn(P_YRMOVE_YRMNUL, &_F)))
            {
                // line 3991
                goto L_16;
            }
            
            // line 3993
            L_15:
            _F.Jumpin = C_false;
            
            // line 3995
            if((_F.IFRF && (!_F.IFRD)))
            {
                // line 3996
                _F.INRF = (_F.INRF * _setLiteral24);
            }
            
            // line 3997
            if((_F.IFLF && (!_F.IFLD)))
            {
                // line 3998
                _F.INLF = (_F.INLF * _setLiteral25);
            }
            
            // line 3999
            _F.IFMV = C_false;
            
            // line 4000
            _F.INTW = C_AW;
            
            // line 4001
            while((_F.INTW < JNTW))
            {
                // line 4004
                if((MOVES[_F.INTW].RMPR == _F.IFPR))
                {
                    // line 4005
                    if(MOVES[_F.INTW].RMPR)
                    {
                        // line 4006
                        if((MOVES[_F.INTW].RMPP == _F.INTG))
                        {
                            // line 4007
                            P_YRMOVE_YRMCOM(&_F);
                        }
                        else
                        {
                            { /* NOP */ }
                        }
                    }
                    else
                    {
                        // line 4010
                        if((MOVES[_F.INTW].RMOO == _F.IFOO))
                        {
                            // line 4011
                            if(MOVES[_F.INTW].RMOO)
                            {
                                // line 4012
                                if((MOVES[_F.INTW].RMQS == _F.IFQS))
                                {
                                    // line 4013
                                    P_YRMOVE_YRMHIT(&_F);
                                }
                                else
                                {
                                    { /* NOP */ }
                                }
                            }
                            else
                            {
                                // line 4016
                                P_YRMOVE_YRMCOM(&_F);
                            }
                        }
                    }
                }
                
                // line 4017
                _F.INTW = (_F.INTW + 1);
                
                { /* NOP */ }
            }
            
            // line 4019
            if(_F.IFMV)
            {
                // line 4021
                P_MINENG(nullptr, _F.INRM, T_RA::C("YOUR MOVE "));
                
                // line 4022
                Output << MOVMS << _WRITELN;
                
                // line 4023
                P_THEMOV(nullptr, _F.INRM);
                
                // line 4024
                _F.INTB = C_true;
                
                { /* NOP */ }
            }
            else
            {
                // line 4027
                Output << "   ILLEGAL MOVE." << _WRITELN;
            }
            
            // line 4028
            goto L_18;
            
            // line 4030
            L_16:
            Output << " SYNTAX ERROR." << _WRITELN;
            
            // line 4031
            goto L_18;
            
            L_18:
            { /* NOP */ }
        }
        
        L_17:
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_YRMOVE_17:
        case NL_YRMOVE_19:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 3696
//================================================================================
// scope: YRMOVE_YRMHIT (level : 3)

// activation record
struct Frame_YRMOVE_YRMHIT
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMHIT(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMHIT _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3703
    if(_F._slink->IFMV)
    {
        // line 3705
        Output << "   AMBIGUOUS MOVE." << _WRITELN;
        
        // line 3706
        throw NL_YRMOVE_17;
        
        { /* NOP */ }
    }
    
    // line 3709
    _F._slink->IFMV = C_true;
    
    // line 3710
    _F._slink->INRM = MOVES[_F._slink->INTW];
    
    { /* NOP */ }
}


// line 3714
//================================================================================
// scope: YRMOVE_YRMCOM (level : 3)

// activation record
struct Frame_YRMOVE_YRMCOM
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMCOM(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMCOM _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3723
    if(((((((_F._slink->INLR & XTSR[MOVES[_F._slink->INTW].RMFR]) && (_F._slink->INLF & XTSF[MOVES[_F._slink->INTW].RMFR])) && (_F._slink->INRR & XTSR[MOVES[_F._slink->INTW].RMTO])) && (_F._slink->INRF & XTSF[MOVES[_F._slink->INTW].RMTO])) && (!MOVES[_F._slink->INTW].RMIL)) && (BOARD.RBIS[MOVES[_F._slink->INTW].RMFR] == _F._slink->INTP)))
    {
        // line 3728
        if((MOVES[_F._slink->INTW].RMCA == _F._slink->IFCA))
        {
            // line 3729
            if(MOVES[_F._slink->INTW].RMCA)
            {
                // line 3730
                if((MOVES[_F._slink->INTW].RMCP == _F._slink->INCP))
                {
                    // line 3731
                    P_YRMOVE_YRMHIT(_F._slink);
                }
                else
                {
                    { /* NOP */ }
                }
            }
            else
            {
                // line 3734
                P_YRMOVE_YRMHIT(_F._slink);
            }
        }
    }
    
    { /* NOP */ }
}


// line 3738
//================================================================================
// scope: YRMOVE_YRMCAP (level : 3)

// activation record
struct Frame_YRMOVE_YRMCAP
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMCAP(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMCAP _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3741
    _F._slink->IFCA = C_true;
    
    { /* NOP */ }
}


// line 3745
//================================================================================
// scope: YRMOVE_YRMCAS (level : 3)

// activation record
struct Frame_YRMOVE_YRMCAS
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMCAS(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMCAS _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3748
    _F._slink->IFOO = C_true;
    
    { /* NOP */ }
}


// line 3752
//================================================================================
// scope: YRMOVE_YRMCPC (level : 3)

// activation record
struct Frame_YRMOVE_YRMCPC
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMCPC(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMCPC _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3755
    switch(_F._slink->INTC)
    {
    case 'P':
        // line 3756
        _F._slink->INCP = XTUMP[C_EP][OTHER[JNTM]];
        break;
    
    case 'R':
        // line 3757
        _F._slink->INCP = XTUMP[C_ER][OTHER[JNTM]];
        break;
    
    case 'N':
        // line 3758
        _F._slink->INCP = XTUMP[C_EN][OTHER[JNTM]];
        break;
    
    case 'B':
        // line 3759
        _F._slink->INCP = XTUMP[C_EB][OTHER[JNTM]];
        break;
    
    case 'Q':
        // line 3760
        _F._slink->INCP = XTUMP[C_EQ][OTHER[JNTM]];
        break;
    }
    
    { /* NOP */ }
}


// line 3765
//================================================================================
// scope: YRMOVE_YRMCQS (level : 3)

// activation record
struct Frame_YRMOVE_YRMCQS
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMCQS(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMCQS _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3768
    _F._slink->IFQS = C_true;
    
    { /* NOP */ }
}


// line 3772
//================================================================================
// scope: YRMOVE_YRMLKQ (level : 3)

// activation record
struct Frame_YRMOVE_YRMLKQ
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMLKQ(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMLKQ _F = { (Frame_YRMOVE*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_F5, C_F8);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_F1, C_F4);
    
    // subroutine body
    // line 3775
    switch(_F._slink->INTC)
    {
    case 'K':
        // line 3776
        _F._slink->INLF = (_setLiteral1 * _F._slink->INLF);
        break;
    
    case 'Q':
        // line 3777
        _F._slink->INLF = (_setLiteral2 * _F._slink->INLF);
        break;
    }
    
    // line 3779
    _F._slink->IFLF = C_true;
    
    { /* NOP */ }
}


// line 3783
//================================================================================
// scope: YRMOVE_YRMLRB (level : 3)

// activation record
struct Frame_YRMOVE_YRMLRB
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMLRB(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMLRB _F = { (Frame_YRMOVE*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_F1);
    _setLiteral1.set(C_F8);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_F2);
    _setLiteral2.set(C_F7);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_F3);
    _setLiteral3.set(C_F6);
    
    // subroutine body
    // line 3786
    switch(_F._slink->INTC)
    {
    case 'R':
        // line 3787
        _F._slink->INLF = (_setLiteral1 * _F._slink->INLF);
        break;
    
    case 'N':
        // line 3788
        _F._slink->INLF = (_setLiteral2 * _F._slink->INLF);
        break;
    
    case 'B':
        // line 3789
        _F._slink->INLF = (_setLiteral3 * _F._slink->INLF);
        break;
    }
    
    // line 3791
    _F._slink->IFLD = C_true;
    
    { /* NOP */ }
}


// line 3795
//================================================================================
// scope: YRMOVE_YRMLRK (level : 3)

// activation record
struct Frame_YRMOVE_YRMLRK
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMLRK(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMLRK _F = { (Frame_YRMOVE*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_R1);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_R2);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_R3);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_R4);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_R5);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_R6);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_R7);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_R8);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_R8);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(C_R7);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_R6);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(C_R5);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(C_R4);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_R3);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_R2);
    
    _T_GenericSet _setLiteral16;
    _setLiteral16.set(C_R1);
    
    // subroutine body
    // line 3798
    if((JNTM == C_LITE))
    {
        // line 3799
        switch(_F._slink->INTC)
        {
        case '1':
            // line 3800
            _F._slink->INLR = _setLiteral1;
            break;
        
        case '2':
            // line 3801
            _F._slink->INLR = _setLiteral2;
            break;
        
        case '3':
            // line 3802
            _F._slink->INLR = _setLiteral3;
            break;
        
        case '4':
            // line 3803
            _F._slink->INLR = _setLiteral4;
            break;
        
        case '5':
            // line 3804
            _F._slink->INLR = _setLiteral5;
            break;
        
        case '6':
            // line 3805
            _F._slink->INLR = _setLiteral6;
            break;
        
        case '7':
            // line 3806
            _F._slink->INLR = _setLiteral7;
            break;
        
        case '8':
            // line 3807
            _F._slink->INLR = _setLiteral8;
            break;
        }
    }
    else
    {
        // line 3810
        switch(_F._slink->INTC)
        {
        case '1':
            // line 3811
            _F._slink->INLR = _setLiteral9;
            break;
        
        case '2':
            // line 3812
            _F._slink->INLR = _setLiteral10;
            break;
        
        case '3':
            // line 3813
            _F._slink->INLR = _setLiteral11;
            break;
        
        case '4':
            // line 3814
            _F._slink->INLR = _setLiteral12;
            break;
        
        case '5':
            // line 3815
            _F._slink->INLR = _setLiteral13;
            break;
        
        case '6':
            // line 3816
            _F._slink->INLR = _setLiteral14;
            break;
        
        case '7':
            // line 3817
            _F._slink->INLR = _setLiteral15;
            break;
        
        case '8':
            // line 3818
            _F._slink->INLR = _setLiteral16;
            break;
        }
    }
    
    { /* NOP */ }
}


// line 3823
//================================================================================
// scope: YRMOVE_YRMNUL (level : 3)

// activation record
struct Frame_YRMOVE_YRMNUL
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMNUL(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMNUL _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    { /* NOP */ }
}


// line 3829
//================================================================================
// scope: YRMOVE_YRMPCM (level : 3)

// activation record
struct Frame_YRMOVE_YRMPCM
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMPCM(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMPCM _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3832
    switch(_F._slink->INTC)
    {
    case 'P':
        // line 3833
        _F._slink->INTP = XTUMP[C_EP][JNTM];
        break;
    
    case 'R':
        // line 3834
        _F._slink->INTP = XTUMP[C_ER][JNTM];
        break;
    
    case 'N':
        // line 3835
        _F._slink->INTP = XTUMP[C_EN][JNTM];
        break;
    
    case 'B':
        // line 3836
        _F._slink->INTP = XTUMP[C_EB][JNTM];
        break;
    
    case 'Q':
        // line 3837
        _F._slink->INTP = XTUMP[C_EQ][JNTM];
        break;
    
    case 'K':
        // line 3838
        _F._slink->INTP = XTUMP[C_EK][JNTM];
        break;
    }
    
    { /* NOP */ }
}


// line 3842
//================================================================================
// scope: YRMOVE_YRMPRO (level : 3)

// activation record
struct Frame_YRMOVE_YRMPRO
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMPRO(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMPRO _F = { (Frame_YRMOVE*)_slink };
    
    // subroutine body
    // line 3845
    switch(_F._slink->INTC)
    {
    case 'R':
        // line 3846
        _F._slink->INTG = C_PR;
        break;
    
    case 'N':
        // line 3847
        _F._slink->INTG = C_PN;
        break;
    
    case 'B':
        // line 3848
        _F._slink->INTG = C_PB;
        break;
    
    case 'Q':
        // line 3849
        _F._slink->INTG = C_PQ;
        break;
    }
    
    // line 3851
    _F._slink->IFPR = C_true;
    
    { /* NOP */ }
}


// line 3855
//================================================================================
// scope: YRMOVE_YRMRKQ (level : 3)

// activation record
struct Frame_YRMOVE_YRMRKQ
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMRKQ(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMRKQ _F = { (Frame_YRMOVE*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_F5, C_F8);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_F1, C_F4);
    
    // subroutine body
    // line 3858
    switch(_F._slink->INTC)
    {
    case 'K':
        // line 3859
        _F._slink->INRF = (_setLiteral1 * _F._slink->INRF);
        break;
    
    case 'Q':
        // line 3860
        _F._slink->INRF = (_setLiteral2 * _F._slink->INRF);
        break;
    }
    
    // line 3862
    _F._slink->IFRF = C_true;
    
    { /* NOP */ }
}


// line 3866
//================================================================================
// scope: YRMOVE_YRMRRB (level : 3)

// activation record
struct Frame_YRMOVE_YRMRRB
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMRRB(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMRRB _F = { (Frame_YRMOVE*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_F1);
    _setLiteral1.set(C_F8);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_F2);
    _setLiteral2.set(C_F7);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_F3);
    _setLiteral3.set(C_F6);
    
    // subroutine body
    // line 3869
    switch(_F._slink->INTC)
    {
    case 'R':
        // line 3870
        _F._slink->INRF = (_setLiteral1 * _F._slink->INRF);
        break;
    
    case 'N':
        // line 3871
        _F._slink->INRF = (_setLiteral2 * _F._slink->INRF);
        break;
    
    case 'B':
        // line 3872
        _F._slink->INRF = (_setLiteral3 * _F._slink->INRF);
        break;
    }
    
    // line 3874
    _F._slink->IFRD = C_true;
    
    { /* NOP */ }
}


// line 3878
//================================================================================
// scope: YRMOVE_YRMRRK (level : 3)

// activation record
struct Frame_YRMOVE_YRMRRK
{
   Frame_YRMOVE* _slink;
};

// function body
void P_YRMOVE_YRMRRK(void* _slink)
{
    // prologue/frame definition
    Frame_YRMOVE_YRMRRK _F = { (Frame_YRMOVE*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_R1);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_R2);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_R3);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_R4);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_R5);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_R6);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_R7);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_R8);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(C_R8);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(C_R7);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(C_R6);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(C_R5);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(C_R4);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(C_R3);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(C_R2);
    
    _T_GenericSet _setLiteral16;
    _setLiteral16.set(C_R1);
    
    // subroutine body
    // line 3881
    if((JNTM == C_LITE))
    {
        // line 3882
        switch(_F._slink->INTC)
        {
        case '1':
            // line 3883
            _F._slink->INRR = _setLiteral1;
            break;
        
        case '2':
            // line 3884
            _F._slink->INRR = _setLiteral2;
            break;
        
        case '3':
            // line 3885
            _F._slink->INRR = _setLiteral3;
            break;
        
        case '4':
            // line 3886
            _F._slink->INRR = _setLiteral4;
            break;
        
        case '5':
            // line 3887
            _F._slink->INRR = _setLiteral5;
            break;
        
        case '6':
            // line 3888
            _F._slink->INRR = _setLiteral6;
            break;
        
        case '7':
            // line 3889
            _F._slink->INRR = _setLiteral7;
            break;
        
        case '8':
            // line 3890
            _F._slink->INRR = _setLiteral8;
            break;
        }
    }
    else
    {
        // line 3893
        switch(_F._slink->INTC)
        {
        case '1':
            // line 3894
            _F._slink->INRR = _setLiteral9;
            break;
        
        case '2':
            // line 3895
            _F._slink->INRR = _setLiteral10;
            break;
        
        case '3':
            // line 3896
            _F._slink->INRR = _setLiteral11;
            break;
        
        case '4':
            // line 3897
            _F._slink->INRR = _setLiteral12;
            break;
        
        case '5':
            // line 3898
            _F._slink->INRR = _setLiteral13;
            break;
        
        case '6':
            // line 3899
            _F._slink->INRR = _setLiteral14;
            break;
        
        case '7':
            // line 3900
            _F._slink->INRR = _setLiteral15;
            break;
        
        case '8':
            // line 3901
            _F._slink->INRR = _setLiteral16;
            break;
        }
    }
    
    { /* NOP */ }
}


// line 3906
//================================================================================
// scope: YRMOVE_NCHIN (level : 3)

// activation record
struct Frame_YRMOVE_NCHIN
{
   Frame_YRMOVE* _slink;

    // parameters
    T_SC A;
    T_YRMOVE_subroutine_48 YRMXXX;

    // locals
    T_boolean _fnvalue;
    T_boolean INTB;
};

// function body
T_boolean F_YRMOVE_NCHIN(void* _slink, T_SC A, T_YRMOVE_subroutine_48 YRMXXX)
{
    // prologue/frame definition
    Frame_YRMOVE_NCHIN _F = { (Frame_YRMOVE*)_slink, A, YRMXXX };
    
    // subroutine body
    // line 3918
    _F.INTB = (!(_F.A & _F._slink->INTC));
    
    // line 3919
    if((!_F.INTB))
    {
        // line 3921
        (*_F.YRMXXX._pfn)(_F.YRMXXX._slink);
        
        // line 3922
        JNTJ = (JNTJ + 1);
        
        // line 3923
        while(((JNTJ < C_ZJ) && ((ILINE[JNTJ] == ' ') || (_ord(ILINE[JNTJ]) > _ord(C_ZC)))))
        {
            // line 3925
            JNTJ = (JNTJ + 1);
        }
        
        // line 3926
        _F._slink->INTC = ILINE[JNTJ];
        
        // line 3927
        if(((_F._slink->INTC == '.') || (_F._slink->INTC == ';')))
        {
            // line 3929
            _F._slink->Jumpin = C_true;
            
            // line 3930
            throw NL_YRMOVE_19;
            
            { /* NOP */ }
        }
    }
    
    // line 3934
    _F._fnvalue = _F.INTB;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}

