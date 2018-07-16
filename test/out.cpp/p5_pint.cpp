
#include <lpcRuntime.h>

// "p5_pint.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "input" },
    { "output" },
    { "prd" },
    { "prr" },
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

// line 262
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Range<-200000, 200000, signed __int32> T_address;
typedef int T_datatype;
typedef _T_Array< 1, 10, T_char > T_alfa;
typedef _T_Range<1, 10, signed __int8> T_alfainx;
typedef _T_Array< 1, 25, T_char > T_beta;
typedef _T_Range<0, 255, unsigned __int8> T_byte;
typedef _T_Text T_bytfil;
typedef _T_Array< 1, 100, T_bytfil > T_array_1;
typedef int T_enum_2;
typedef _T_Array< 1, 100, T_boolean > T_array_3;
typedef _T_Range<0, 100, signed __int8> T_fileno;
typedef _T_Array< 1, 100, T_enum_2 > T_array_4;
typedef _T_Array< 1, 100, T_text > T_array_5;
typedef _T_Array< 0, 255, T_boolean > T_array_6;
typedef _T_Range<0, 16, signed __int8> T_range_8;
typedef _T_Array< 0, 255, T_range_8 > T_array_7;
typedef _T_Array< 0, 255, T_alfa > T_array_9;
typedef _T_Range<0, 255, unsigned __int8> T_instyp;
typedef _T_Range<0, 255, unsigned __int8> T_lvltyp;
typedef _T_Set<0, 255> T_settype;
typedef _T_Array< 0, 36, T_alfa > T_array_10;
typedef _T_Array< 0, 200000, T_byte > T_array_11;

// forward declarations
T_integer F_getint(void* _slink, T_address a);
void P_putint(void* _slink, T_address a, T_integer x);
T_real F_getrel(void* _slink, T_address a);
void P_putrel(void* _slink, T_address a, T_real f);
T_boolean F_getbol(void* _slink, T_address a);
void P_putbol(void* _slink, T_address a, T_boolean b);
void P_getset(void* _slink, T_address a, T_settype& s);
void P_putset(void* _slink, T_address a, T_settype s);
T_char F_getchr(void* _slink, T_address a);
void P_putchr(void* _slink, T_address a, T_char c);
T_address F_getadr(void* _slink, T_address a);
void P_putadr(void* _slink, T_address a, T_address Ad);
void P_swpstk(void* _slink, T_address l);
void P_popint(void* _slink, T_integer& i);
void P_pshint(void* _slink, T_integer i);
void P_poprel(void* _slink, T_real& r);
void P_pshrel(void* _slink, T_real r);
void P_popset(void* _slink, T_settype& s);
void P_pshset(void* _slink, T_settype s);
void P_popadr(void* _slink, T_address& a);
void P_pshadr(void* _slink, T_address a);
void P_wrthex(void* _slink, T_integer v, T_integer f);
void P_lstins(void* _slink, T_address& Ad);
void P_dmpins(void* _slink);
void P_alignu(void* _slink, T_address Algn, T_address& Flc);
void P_alignd(void* _slink, T_address Algn, T_address& Flc);
void P_load(void* _slink);
void P_pmd(void* _slink);
void P_errori(void* _slink, T_beta String);
T_address F_base(void* _slink, T_integer Ld);
void P_compare(void* _slink);
void P_valfil(void* _slink, T_address Fa);
void P_valfilwm(void* _slink, T_address Fa);
void P_valfilrm(void* _slink, T_address Fa);
void P_getop(void* _slink);
void P_getp(void* _slink);
void P_getq(void* _slink);
void P_getq1(void* _slink);
void P_repspc(void* _slink);
void P_fndfre(void* _slink, T_address Len, T_address& Blk);
void P_cscspc(void* _slink);
void P_newspc(void* _slink, T_address Len, T_address& Blk);
void P_dspspc(void* _slink, T_address Len, T_address Blk);
T_boolean F_isfree(void* _slink, T_address Blk);
void P_callsp(void* _slink);

// constants
const T_datatype C_adr = 5;
const T_integer C_adral = 4;
const T_integer C_adrsize = 4;
const T_integer C_begincode = 9;
const T_datatype C_bool = 3;
const T_integer C_boolal = 1;
const T_integer C_boolsize = 1;
const T_datatype C_car = 7;
const T_integer C_charal = 1;
const T_integer C_charmax = 1;
const T_integer C_charsize = 1;
const T_integer C_codemax = 200000;
const T_boolean C_dochkrpt = 0;
const T_boolean C_dodmpins = 0;
const T_boolean C_dodmplab = 0;
const T_boolean C_dodmpspc = 0;
const T_boolean C_dodmpsto = 0;
const T_boolean C_dopmd = 0;
const T_boolean C_dorecycl = 1;
const T_boolean C_dosrclin = 1;
const T_boolean C_dotrcins = 0;
const T_boolean C_dotrcrot = 0;
const T_boolean C_dotrcsrc = 0;
const T_enum_2 C_fclosed = 0;
const T_integer C_fileidsize = 1;
const T_integer C_filesize = 1;
const T_enum_2 C_fread = 1;
const T_enum_2 C_fwrite = 2;
const T_integer C_heapal = 4;
const T_integer C_inputfn = 1;
const T_integer C_inputoff = 32;
const T_datatype C_int = 1;
const T_integer C_intal = 4;
const T_integer C_intsize = 4;
const T_integer C_majorver = 1;
const T_datatype C_mark = 6;
const T_integer C_markdl = 12;
const T_integer C_markep = 16;
const T_integer C_market = 24;
const T_integer C_markfv = 0;
const T_integer C_markra = 28;
const T_integer C_marksb = 20;
const T_integer C_marksize = 32;
const T_integer C_marksl = 8;
const T_integer C_maxalfa = 10;
const T_integer C_maxdigd = 8;
const T_integer C_maxdigh = 6;
const T_integer C_maxfil = 100;
const T_integer C_maxins = 255;
const T_integer C_maxlabel = 5000;
const T_integer C_maxresult = 8;
const T_integer C_maxsize = 32;
const T_integer C_maxsp = 36;
const T_integer C_maxstr = 200000;
const T_integer C_minorver = 0;
const T_integer C_nilval = 1;
const T_integer C_ordmaxchar = 255;
const T_integer C_ordminchar = 0;
const T_integer C_outputfn = 2;
const T_integer C_outputoff = 34;
const T_integer C_pcmax = 200000;
const T_integer C_prdfn = 3;
const T_integer C_prdoff = 36;
const T_integer C_prrfn = 4;
const T_integer C_prroff = 38;
const T_integer C_ptrsize = 4;
const T_integer C_realal = 4;
const T_integer C_realsize = 8;
const T_datatype C_reel = 2;
const T_integer C_resspc = 0;
const T_integer C_setal = 1;
const T_integer C_sethigh = 255;
const T_integer C_setlow = 0;
const T_integer C_setsize = 32;
const T_datatype C_sett = 4;
const T_integer C_stackal = 4;
const T_integer C_stackelsize = 4;
const T_integer C_stringlgth = 1000;
const T_integer C_ujplen = 5;
const T_datatype C_undef = 0;

// non-local goto targets
const int NL_1 = 1;

// program variables
T_address A1;
T_address A2;
T_address A3;
T_address Ad;
T_address Ad1;
T_boolean b;
T_boolean B1;
T_boolean B2;
T_array_1 Bfiltable;
T_char c;
T_char C1;
T_char C2;
T_address Cp;
T_address Ep;
T_array_3 Filbuff;
T_array_4 Filstate;
T_array_5 Filtable;
T_fileno Fn;
T_integer i;
T_integer I1;
T_integer I2;
T_integer I3;
T_integer I4;
T_text Input;
T_array_6 Insp;
T_array_7 Insq;
T_array_9 Instr;
T_boolean Interpreting;
T_integer j;
T_address Mp;
T_address Np;
T_instyp Op;
T_text Output;
T_lvltyp p;
T_integer Pa;
T_address Pc;
T_address Pcs;
T_address Pctop;
T_text Prd;
T_text Prr;
T_address q;
T_address Q1;
T_real R1;
T_real R2;
T_settype S1;
T_settype S2;
T_address Sp;
T_array_10 Sptable;
T_integer Srclin;
T_array_11 Store;

// function body
void P_()
{
    
    // initializers
    Input.init(0);
    Output.init(1);
    Prd.init(2);
    Prr.init(3);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_1: goto L_1;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 2065
        Output << "P5 Pascal interpreter vs. " << _format(C_majorver, 1, 0) << '.' << _format(C_minorver, 1, 0) << _WRITELN;
        
        // line 2066
        Output << _WRITELN;
        
        // line 2069
        _rewrite(Prr);
        
        // line 2071
        Output << "Assembling/loading program" << _WRITELN;
        
        // line 2072
        P_load(nullptr);
        
        // line 2073
        Pc = 0;
        
        // line 2073
        Sp = Pctop;
        
        // line 2073
        Mp = Pctop;
        
        // line 2073
        Np = Cp;
        
        // line 2073
        Ep = 5;
        
        // line 2073
        Srclin = 0;
        
        // line 2075
        Interpreting = C_true;
        
        // line 2077
        Output << "Running program" << _WRITELN;
        
        // line 2078
        Output << _WRITELN;
        
        // line 2079
        while(Interpreting)
        {
            // line 2083
            Pcs = Pc;
            
            // line 2084
            P_getop(nullptr);
            
            // line 2089
            if(C_dotrcins)
            {
                // line 2091
                P_wrthex(nullptr, Pcs, C_maxdigh);
                
                // line 2092
                Output << '/';
                
                // line 2093
                P_wrthex(nullptr, Sp, C_maxdigh);
                
                // line 2094
                P_lstins(nullptr, Pcs);
                
                // line 2095
                Output << _WRITELN;
            }
            
            // line 2098
            switch(Op)
            {
            case 0:
                // line 2100
                P_getp(nullptr);
                
                // line 2100
                P_getq(nullptr);
                
                // line 2100
                P_pshint(nullptr, F_getint(nullptr, T_address::C((F_base(nullptr, p) + q))));
                break;
            
            case 105:
                // line 2101
                P_getp(nullptr);
                
                // line 2101
                P_getq(nullptr);
                
                // line 2101
                P_pshadr(nullptr, F_getadr(nullptr, T_address::C((F_base(nullptr, p) + q))));
                break;
            
            case 106:
                // line 2102
                P_getp(nullptr);
                
                // line 2102
                P_getq(nullptr);
                
                // line 2102
                P_pshrel(nullptr, F_getrel(nullptr, T_address::C((F_base(nullptr, p) + q))));
                break;
            
            case 107:
                // line 2103
                P_getp(nullptr);
                
                // line 2103
                P_getq(nullptr);
                
                // line 2103
                P_getset(nullptr, T_address::C((F_base(nullptr, p) + q)), S1);
                
                // line 2103
                P_pshset(nullptr, S1);
                break;
            
            case 108:
                // line 2104
                P_getp(nullptr);
                
                // line 2104
                P_getq(nullptr);
                
                // line 2104
                P_pshint(nullptr, _ord(F_getbol(nullptr, T_address::C((F_base(nullptr, p) + q)))));
                break;
            
            case 109:
                // line 2105
                P_getp(nullptr);
                
                // line 2105
                P_getq(nullptr);
                
                // line 2105
                P_pshint(nullptr, _ord(F_getchr(nullptr, T_address::C((F_base(nullptr, p) + q)))));
                break;
            
            case 1:
                // line 2107
                P_getq(nullptr);
                
                // line 2107
                P_pshint(nullptr, F_getint(nullptr, T_address::C((Pctop + q))));
                break;
            
            case 65:
                // line 2108
                P_getq(nullptr);
                
                // line 2108
                P_pshadr(nullptr, F_getadr(nullptr, T_address::C((Pctop + q))));
                break;
            
            case 66:
                // line 2109
                P_getq(nullptr);
                
                // line 2109
                P_pshrel(nullptr, F_getrel(nullptr, T_address::C((Pctop + q))));
                break;
            
            case 67:
                // line 2110
                P_getq(nullptr);
                
                // line 2110
                P_getset(nullptr, T_address::C((Pctop + q)), S1);
                
                // line 2110
                P_pshset(nullptr, S1);
                break;
            
            case 68:
                // line 2111
                P_getq(nullptr);
                
                // line 2111
                P_pshint(nullptr, _ord(F_getbol(nullptr, T_address::C((Pctop + q)))));
                break;
            
            case 69:
                // line 2112
                P_getq(nullptr);
                
                // line 2112
                P_pshint(nullptr, _ord(F_getchr(nullptr, T_address::C((Pctop + q)))));
                break;
            
            case 2:
                // line 2114
                P_getp(nullptr);
                
                // line 2114
                P_getq(nullptr);
                
                // line 2114
                P_popint(nullptr, i);
                
                // line 2114
                P_putint(nullptr, T_address::C((F_base(nullptr, p) + q)), i);
                break;
            
            case 70:
                // line 2115
                P_getp(nullptr);
                
                // line 2115
                P_getq(nullptr);
                
                // line 2115
                P_popadr(nullptr, Ad);
                
                // line 2115
                P_putadr(nullptr, T_address::C((F_base(nullptr, p) + q)), Ad);
                break;
            
            case 71:
                // line 2116
                P_getp(nullptr);
                
                // line 2116
                P_getq(nullptr);
                
                // line 2116
                P_poprel(nullptr, R1);
                
                // line 2116
                P_putrel(nullptr, T_address::C((F_base(nullptr, p) + q)), R1);
                break;
            
            case 72:
                // line 2117
                P_getp(nullptr);
                
                // line 2117
                P_getq(nullptr);
                
                // line 2117
                P_popset(nullptr, S1);
                
                // line 2117
                P_putset(nullptr, T_address::C((F_base(nullptr, p) + q)), S1);
                break;
            
            case 73:
                // line 2118
                P_getp(nullptr);
                
                // line 2118
                P_getq(nullptr);
                
                // line 2118
                P_popint(nullptr, I1);
                
                // line 2118
                B1 = (I1 != 0);
                
                // line 2119
                P_putbol(nullptr, T_address::C((F_base(nullptr, p) + q)), B1);
                break;
            
            case 74:
                // line 2120
                P_getp(nullptr);
                
                // line 2120
                P_getq(nullptr);
                
                // line 2120
                P_popint(nullptr, I1);
                
                // line 2120
                C1 = _chr(I1);
                
                // line 2121
                P_putchr(nullptr, T_address::C((F_base(nullptr, p) + q)), C1);
                break;
            
            case 3:
                // line 2123
                P_getq(nullptr);
                
                // line 2123
                P_popint(nullptr, i);
                
                // line 2123
                P_putint(nullptr, T_address::C((Pctop + q)), i);
                
                { /* NOP */ }
                break;
            
            case 75:
                // line 2124
                P_getq(nullptr);
                
                // line 2124
                P_popadr(nullptr, Ad);
                
                // line 2124
                P_putadr(nullptr, T_address::C((Pctop + q)), Ad);
                
                { /* NOP */ }
                break;
            
            case 76:
                // line 2125
                P_getq(nullptr);
                
                // line 2125
                P_poprel(nullptr, R1);
                
                // line 2125
                P_putrel(nullptr, T_address::C((Pctop + q)), R1);
                
                { /* NOP */ }
                break;
            
            case 77:
                // line 2126
                P_getq(nullptr);
                
                // line 2126
                P_popset(nullptr, S1);
                
                // line 2126
                P_putset(nullptr, T_address::C((Pctop + q)), S1);
                
                { /* NOP */ }
                break;
            
            case 78:
                // line 2127
                P_getq(nullptr);
                
                // line 2127
                P_popint(nullptr, I1);
                
                // line 2127
                B1 = (I1 != 0);
                
                // line 2127
                P_putbol(nullptr, T_address::C((Pctop + q)), B1);
                
                { /* NOP */ }
                break;
            
            case 79:
                // line 2128
                P_getq(nullptr);
                
                // line 2128
                P_popint(nullptr, I1);
                
                // line 2128
                C1 = _chr(I1);
                
                // line 2128
                P_putchr(nullptr, T_address::C((Pctop + q)), C1);
                
                { /* NOP */ }
                break;
            
            case 4:
                // line 2130
                P_getp(nullptr);
                
                // line 2130
                P_getq(nullptr);
                
                // line 2130
                P_pshadr(nullptr, T_address::C((F_base(nullptr, p) + q)));
                break;
            
            case 5:
                // line 2131
                P_getq(nullptr);
                
                // line 2131
                P_pshadr(nullptr, T_address::C((Pctop + q)));
                break;
            
            case 6:
                // line 2133
                P_popint(nullptr, i);
                
                // line 2133
                P_popadr(nullptr, Ad);
                
                // line 2133
                P_putint(nullptr, Ad, i);
                break;
            
            case 80:
                // line 2134
                P_popadr(nullptr, Ad1);
                
                // line 2134
                P_popadr(nullptr, Ad);
                
                // line 2134
                P_putadr(nullptr, Ad, Ad1);
                break;
            
            case 81:
                // line 2135
                P_poprel(nullptr, R1);
                
                // line 2135
                P_popadr(nullptr, Ad);
                
                // line 2135
                P_putrel(nullptr, Ad, R1);
                break;
            
            case 82:
                // line 2136
                P_popset(nullptr, S1);
                
                // line 2136
                P_popadr(nullptr, Ad);
                
                // line 2136
                P_putset(nullptr, Ad, S1);
                break;
            
            case 83:
                // line 2137
                P_popint(nullptr, I1);
                
                // line 2137
                B1 = (I1 != 0);
                
                // line 2137
                P_popadr(nullptr, Ad);
                
                // line 2138
                P_putbol(nullptr, Ad, B1);
                break;
            
            case 84:
                // line 2139
                P_popint(nullptr, I1);
                
                // line 2139
                C1 = _chr(I1);
                
                // line 2139
                P_popadr(nullptr, Ad);
                
                // line 2140
                P_putchr(nullptr, Ad, C1);
                break;
            
            case 127:
                // line 2142
                P_pshint(nullptr, _ord(F_getchr(nullptr, Pc)));
                
                // line 2142
                Pc = (Pc + 1);
                break;
            
            case 126:
                // line 2143
                P_pshint(nullptr, _ord(F_getbol(nullptr, Pc)));
                
                // line 2143
                Pc = (Pc + 1);
                break;
            
            case 123:
                // line 2144
                i = F_getint(nullptr, Pc);
                
                // line 2144
                Pc = (Pc + C_intsize);
                
                // line 2144
                P_pshint(nullptr, i);
                break;
            
            case 125:
                // line 2145
                P_pshadr(nullptr, T_address::C(C_nilval));
                break;
            
            case 124:
                // line 2146
                P_getq(nullptr);
                
                // line 2146
                P_pshrel(nullptr, F_getrel(nullptr, q));
                break;
            
            case 7:
                // line 2147
                P_getq(nullptr);
                
                // line 2147
                P_getset(nullptr, q, S1);
                
                // line 2147
                P_pshset(nullptr, S1);
                break;
            
            case 9:
                // line 2149
                P_getq(nullptr);
                
                // line 2149
                P_popadr(nullptr, Ad);
                
                // line 2149
                P_pshint(nullptr, F_getint(nullptr, T_address::C((Ad + q))));
                break;
            
            case 85:
                // line 2150
                P_getq(nullptr);
                
                // line 2150
                P_popadr(nullptr, Ad);
                
                // line 2150
                Ad1 = F_getadr(nullptr, T_address::C((Ad + q)));
                
                // line 2150
                P_pshadr(nullptr, Ad1);
                break;
            
            case 86:
                // line 2151
                P_getq(nullptr);
                
                // line 2151
                P_popadr(nullptr, Ad);
                
                // line 2151
                P_pshrel(nullptr, F_getrel(nullptr, T_address::C((Ad + q))));
                break;
            
            case 87:
                // line 2152
                P_getq(nullptr);
                
                // line 2152
                P_popadr(nullptr, Ad);
                
                // line 2152
                P_getset(nullptr, T_address::C((Ad + q)), S1);
                
                // line 2152
                P_pshset(nullptr, S1);
                break;
            
            case 88:
                // line 2153
                P_getq(nullptr);
                
                // line 2153
                P_popadr(nullptr, Ad);
                
                // line 2153
                P_pshint(nullptr, _ord(F_getbol(nullptr, T_address::C((Ad + q)))));
                break;
            
            case 89:
                // line 2154
                P_getq(nullptr);
                
                // line 2154
                P_popadr(nullptr, Ad);
                
                // line 2154
                P_pshint(nullptr, _ord(F_getchr(nullptr, T_address::C((Ad + q)))));
                break;
            
            case 93:
            case 94:
            case 10:
                // line 2158
                P_getq(nullptr);
                
                // line 2158
                P_popint(nullptr, I1);
                
                // line 2158
                P_pshint(nullptr, (I1 + q));
                break;
            
            case 90:
                // line 2159
                P_getq(nullptr);
                
                // line 2159
                P_popadr(nullptr, A1);
                
                // line 2159
                P_pshadr(nullptr, T_address::C((A1 + q)));
                break;
            
            case 91:
            case 92:
                // line 2161
                P_errori(nullptr, T_beta::C("Instruction error        "));
                break;
            
            case 11:
                // line 2167
                P_getp(nullptr);
                
                // line 2168
                Ad = Sp;
                
                // line 2169
                Sp = (Sp + C_marksize);
                
                // line 2170
                P_putadr(nullptr, T_address::C((Ad + C_marksl)), F_base(nullptr, p));
                
                // line 2172
                P_putadr(nullptr, T_address::C((Ad + C_markdl)), Mp);
                
                // line 2174
                P_putadr(nullptr, T_address::C((Ad + C_markep)), Ep);
                
                { /* NOP */ }
                break;
            
            case 12:
                // line 2179
                P_getp(nullptr);
                
                // line 2179
                P_getq(nullptr);
                
                // line 2180
                Mp = (Sp - (p + C_marksize));
                
                // line 2181
                P_putadr(nullptr, T_address::C((Mp + C_markra)), Pc);
                
                // line 2182
                Pc = q;
                break;
            
            case 13:
                // line 2185
                P_getq(nullptr);
                
                // line 2185
                Ad = (Mp + q);
                
                // line 2186
                if((Sp >= Np))
                {
                    // line 2186
                    P_errori(nullptr, T_beta::C("store overflow           "));
                }
                
                // line 2188
                while((Sp < Ad))
                {
                    // line 2188
                    Store[Sp] = 0;
                    
                    // line 2188
                    Sp = (Sp + 1);
                }
                
                // line 2189
                P_putadr(nullptr, T_address::C((Mp + C_marksb)), Sp);
                break;
            
            case 173:
                // line 2192
                P_getq(nullptr);
                
                // line 2192
                Ep = (Sp + q);
                
                // line 2193
                if((Ep >= Np))
                {
                    // line 2193
                    P_errori(nullptr, T_beta::C("store overflow           "));
                }
                
                // line 2194
                P_putadr(nullptr, T_address::C((Mp + C_market)), Ep);
                break;
            
            case 14:
                // line 2199
                Sp = Mp;
                
                // line 2200
                Pc = F_getadr(nullptr, T_address::C((Mp + C_markra)));
                
                // line 2201
                Ep = F_getadr(nullptr, T_address::C((Mp + C_markep)));
                
                // line 2202
                Mp = F_getadr(nullptr, T_address::C((Mp + C_markdl)));
                break;
            
            case 130:
                // line 2207
                P_putint(nullptr, Mp, _ord(F_getchr(nullptr, Mp)));
                
                // line 2208
                Sp = (Mp + C_intsize);
                
                // line 2209
                Pc = F_getadr(nullptr, T_address::C((Mp + C_markra)));
                
                // line 2210
                Ep = F_getadr(nullptr, T_address::C((Mp + C_markep)));
                
                // line 2211
                Mp = F_getadr(nullptr, T_address::C((Mp + C_markdl)));
                break;
            
            case 131:
                // line 2214
                P_putint(nullptr, Mp, _ord(F_getbol(nullptr, Mp)));
                
                // line 2215
                Sp = (Mp + C_intsize);
                
                // line 2216
                Pc = F_getadr(nullptr, T_address::C((Mp + C_markra)));
                
                // line 2217
                Ep = F_getadr(nullptr, T_address::C((Mp + C_markep)));
                
                // line 2218
                Mp = F_getadr(nullptr, T_address::C((Mp + C_markdl)));
                break;
            
            case 128:
                // line 2221
                Sp = (Mp + C_intsize);
                
                // line 2222
                Pc = F_getadr(nullptr, T_address::C((Mp + C_markra)));
                
                // line 2223
                Ep = F_getadr(nullptr, T_address::C((Mp + C_markep)));
                
                // line 2224
                Mp = F_getadr(nullptr, T_address::C((Mp + C_markdl)));
                break;
            
            case 129:
                // line 2227
                Sp = (Mp + C_realsize);
                
                // line 2228
                Pc = F_getadr(nullptr, T_address::C((Mp + C_markra)));
                
                // line 2229
                Ep = F_getadr(nullptr, T_address::C((Mp + C_markep)));
                
                // line 2230
                Mp = F_getadr(nullptr, T_address::C((Mp + C_markdl)));
                break;
            
            case 132:
                // line 2233
                Sp = (Mp + C_adrsize);
                
                // line 2234
                Pc = F_getadr(nullptr, T_address::C((Mp + C_markra)));
                
                // line 2235
                Ep = F_getadr(nullptr, T_address::C((Mp + C_markep)));
                
                // line 2236
                Mp = F_getadr(nullptr, T_address::C((Mp + C_markdl)));
                break;
            
            case 15:
                // line 2239
                P_getq(nullptr);
                
                // line 2239
                P_callsp(nullptr);
                break;
            
            case 16:
                // line 2241
                P_getq(nullptr);
                
                // line 2241
                P_popint(nullptr, i);
                
                // line 2241
                P_popadr(nullptr, A1);
                
                // line 2241
                P_pshadr(nullptr, T_address::C(((q * i) + A1)));
                break;
            
            case 17:
                // line 2243
                P_popadr(nullptr, A2);
                
                // line 2243
                P_popadr(nullptr, A1);
                
                // line 2243
                P_pshint(nullptr, _ord((A1 == A2)));
                break;
            
            case 139:
            case 141:
            case 137:
                // line 2246
                P_popint(nullptr, I2);
                
                // line 2246
                P_popint(nullptr, I1);
                
                // line 2246
                P_pshint(nullptr, _ord((I1 == I2)));
                break;
            
            case 138:
                // line 2247
                P_poprel(nullptr, R2);
                
                // line 2247
                P_poprel(nullptr, R1);
                
                // line 2247
                P_pshint(nullptr, _ord((R1 == R2)));
                break;
            
            case 140:
                // line 2248
                P_popset(nullptr, S2);
                
                // line 2248
                P_popset(nullptr, S1);
                
                // line 2248
                P_pshint(nullptr, _ord((S1 == S2)));
                break;
            
            case 142:
                // line 2249
                P_getq(nullptr);
                
                // line 2249
                P_compare(nullptr);
                
                // line 2249
                P_pshint(nullptr, _ord(b));
                break;
            
            case 18:
                // line 2251
                P_popadr(nullptr, A2);
                
                // line 2251
                P_popadr(nullptr, A1);
                
                // line 2251
                P_pshint(nullptr, _ord((A1 != A2)));
                break;
            
            case 145:
            case 147:
            case 143:
                // line 2254
                P_popint(nullptr, I2);
                
                // line 2254
                P_popint(nullptr, I1);
                
                // line 2254
                P_pshint(nullptr, _ord((I1 != I2)));
                break;
            
            case 144:
                // line 2255
                P_poprel(nullptr, R2);
                
                // line 2255
                P_poprel(nullptr, R1);
                
                // line 2255
                P_pshint(nullptr, _ord((R1 != R2)));
                break;
            
            case 146:
                // line 2256
                P_popset(nullptr, S2);
                
                // line 2256
                P_popset(nullptr, S1);
                
                // line 2256
                P_pshint(nullptr, _ord((S1 != S2)));
                break;
            
            case 148:
                // line 2257
                P_getq(nullptr);
                
                // line 2257
                P_compare(nullptr);
                
                // line 2257
                P_pshint(nullptr, _ord((!b)));
                break;
            
            case 19:
                // line 2259
                P_errori(nullptr, T_beta::C("<,<=,>,>= for address    "));
                break;
            
            case 151:
            case 153:
            case 149:
                // line 2262
                P_popint(nullptr, I2);
                
                // line 2262
                P_popint(nullptr, I1);
                
                // line 2262
                P_pshint(nullptr, _ord((I1 >= I2)));
                break;
            
            case 150:
                // line 2263
                P_poprel(nullptr, R2);
                
                // line 2263
                P_poprel(nullptr, R1);
                
                // line 2263
                P_pshint(nullptr, _ord((R1 >= R2)));
                break;
            
            case 152:
                // line 2264
                P_popset(nullptr, S2);
                
                // line 2264
                P_popset(nullptr, S1);
                
                // line 2264
                P_pshint(nullptr, _ord((S1 >= S2)));
                break;
            
            case 154:
                // line 2265
                P_getq(nullptr);
                
                // line 2265
                P_compare(nullptr);
                
                // line 2265
                P_pshint(nullptr, _ord((b || (Store[(A1 + i)] >= Store[(A2 + i)]))));
                break;
            
            case 20:
                // line 2267
                P_errori(nullptr, T_beta::C("<,<=,>,>= for address    "));
                break;
            
            case 157:
            case 159:
            case 155:
                // line 2270
                P_popint(nullptr, I2);
                
                // line 2270
                P_popint(nullptr, I1);
                
                // line 2270
                P_pshint(nullptr, _ord((I1 > I2)));
                break;
            
            case 156:
                // line 2271
                P_poprel(nullptr, R2);
                
                // line 2271
                P_poprel(nullptr, R1);
                
                // line 2271
                P_pshint(nullptr, _ord((R1 > R2)));
                break;
            
            case 158:
                // line 2272
                P_errori(nullptr, T_beta::C("set inclusion            "));
                break;
            
            case 160:
                // line 2273
                P_getq(nullptr);
                
                // line 2273
                P_compare(nullptr);
                
                // line 2273
                P_pshint(nullptr, _ord(((!b) && (Store[(A1 + i)] > Store[(A2 + i)]))));
                break;
            
            case 21:
                // line 2275
                P_errori(nullptr, T_beta::C("<,<=,>,>= for address    "));
                break;
            
            case 163:
            case 165:
            case 161:
                // line 2278
                P_popint(nullptr, I2);
                
                // line 2278
                P_popint(nullptr, I1);
                
                // line 2278
                P_pshint(nullptr, _ord((I1 <= I2)));
                break;
            
            case 162:
                // line 2279
                P_poprel(nullptr, R2);
                
                // line 2279
                P_poprel(nullptr, R1);
                
                // line 2279
                P_pshint(nullptr, _ord((R1 <= R2)));
                break;
            
            case 164:
                // line 2280
                P_popset(nullptr, S2);
                
                // line 2280
                P_popset(nullptr, S1);
                
                // line 2280
                P_pshint(nullptr, _ord((S1 <= S2)));
                break;
            
            case 166:
                // line 2281
                P_getq(nullptr);
                
                // line 2281
                P_compare(nullptr);
                
                // line 2281
                P_pshint(nullptr, _ord((b || (Store[(A1 + i)] <= Store[(A2 + i)]))));
                break;
            
            case 22:
                // line 2283
                P_errori(nullptr, T_beta::C("<,<=,>,>= for address    "));
                break;
            
            case 169:
            case 171:
            case 167:
                // line 2286
                P_popint(nullptr, I2);
                
                // line 2286
                P_popint(nullptr, I1);
                
                // line 2286
                P_pshint(nullptr, _ord((I1 < I2)));
                break;
            
            case 168:
                // line 2287
                P_poprel(nullptr, R2);
                
                // line 2287
                P_poprel(nullptr, R1);
                
                // line 2287
                P_pshint(nullptr, _ord((R1 < R2)));
                break;
            
            case 170:
                // line 2288
                P_errori(nullptr, T_beta::C("set inclusion            "));
                break;
            
            case 172:
                // line 2289
                P_getq(nullptr);
                
                // line 2289
                P_compare(nullptr);
                
                // line 2289
                P_pshint(nullptr, _ord(((!b) && (Store[(A1 + i)] < Store[(A2 + i)]))));
                break;
            
            case 23:
                // line 2291
                P_getq(nullptr);
                
                // line 2291
                Pc = q;
                break;
            
            case 24:
                // line 2292
                P_getq(nullptr);
                
                // line 2292
                P_popint(nullptr, i);
                
                // line 2292
                if((i == 0))
                {
                    // line 2292
                    Pc = q;
                }
                break;
            
            case 25:
                // line 2293
                P_getq(nullptr);
                
                // line 2293
                P_popint(nullptr, I1);
                
                // line 2293
                Pc = ((I1 * C_ujplen) + q);
                break;
            
            case 95:
                // line 2295
                P_getq(nullptr);
                
                // line 2295
                P_popadr(nullptr, A1);
                
                // line 2295
                P_pshadr(nullptr, A1);
                
                // line 2298
                if((A1 == 0))
                {
                    // line 2300
                    P_errori(nullptr, T_beta::C("uninitialized pointer    "));
                }
                else
                {
                    // line 2301
                    if(((q != 0) && (A1 == C_nilval)))
                    {
                        // line 2304
                        P_errori(nullptr, T_beta::C("Dereference of nil ptr   "));
                    }
                    else
                    {
                        // line 2305
                        if((((A1 < Np) || (A1 >= Cp)) && (A1 != C_nilval)))
                        {
                            // line 2309
                            P_errori(nullptr, T_beta::C("bad pointer value        "));
                        }
                        else
                        {
                            // line 2310
                            if((C_dochkrpt && (A1 != C_nilval)))
                            {
                                // line 2312
                                if(F_isfree(nullptr, A1))
                                {
                                    // line 2315
                                    P_errori(nullptr, T_beta::C("Ptr used after dispose op"));
                                }
                            }
                        }
                    }
                }
                break;
            
            case 96:
            case 97:
                // line 2319
                P_errori(nullptr, T_beta::C("Instruction error        "));
                break;
            
            case 98:
            case 99:
            case 26:
                // line 2322
                P_getq(nullptr);
                
                // line 2322
                P_popint(nullptr, I1);
                
                // line 2322
                P_pshint(nullptr, I1);
                
                // line 2323
                if(((I1 < F_getint(nullptr, q)) || (I1 > F_getint(nullptr, T_address::C((q + C_intsize))))))
                {
                    // line 2324
                    P_errori(nullptr, T_beta::C("value out of range       "));
                }
                break;
            
            case 27:
                // line 2327
                P_popadr(nullptr, Ad);
                
                // line 2327
                P_valfil(nullptr, Ad);
                
                // line 2327
                Fn = Store[Ad];
                
                // line 2328
                if((Fn <= C_prrfn))
                {
                    // line 2328
                    switch(Fn)
                    {
                    case C_inputfn:
                        // line 2329
                        P_pshint(nullptr, _ord(_eof(Input)));
                        break;
                    
                    case C_prdfn:
                        // line 2330
                        P_pshint(nullptr, _ord(_eof(Prd)));
                        break;
                    
                    case C_outputfn:
                    case C_prrfn:
                        // line 2332
                        P_errori(nullptr, T_beta::C("eof test on output file  "));
                        break;
                    }
                }
                else
                {
                    // line 2334
                    if((Filstate[Fn] == C_fwrite))
                    {
                        // line 2334
                        P_pshint(nullptr, _ord(C_true));
                    }
                    else
                    {
                        // line 2335
                        if((Filstate[Fn] == C_fread))
                        {
                            // line 2336
                            P_pshint(nullptr, _ord((_eof(Filtable[Fn]) && (!Filbuff[Fn]))));
                        }
                        else
                        {
                            // line 2337
                            P_errori(nullptr, T_beta::C("file is not open         "));
                        }
                    }
                }
                break;
            
            case 28:
                // line 2341
                P_popint(nullptr, I2);
                
                // line 2341
                P_popint(nullptr, I1);
                
                // line 2341
                P_pshint(nullptr, (I1 + I2));
                break;
            
            case 29:
                // line 2342
                P_poprel(nullptr, R2);
                
                // line 2342
                P_poprel(nullptr, R1);
                
                // line 2342
                P_pshrel(nullptr, (R1 + R2));
                break;
            
            case 30:
                // line 2343
                P_popint(nullptr, I2);
                
                // line 2343
                P_popint(nullptr, I1);
                
                // line 2343
                P_pshint(nullptr, (I1 - I2));
                break;
            
            case 31:
                // line 2344
                P_poprel(nullptr, R2);
                
                // line 2344
                P_poprel(nullptr, R1);
                
                // line 2344
                P_pshrel(nullptr, (R1 - R2));
                break;
            
            case 32:
                // line 2345
                P_popint(nullptr, I1);
                
                // line 2345
                {
                    _T_GenericSet _setLiteral1;
                    _setLiteral1.set(I1);
                    
                    P_pshset(nullptr, T_settype::C(_setLiteral1));
                }
                
                { /* NOP */ }
                break;
            
            case 33:
                // line 2346
                P_popint(nullptr, I1);
                
                // line 2346
                P_pshrel(nullptr, I1);
                break;
            
            case 34:
                // line 2349
                P_poprel(nullptr, R1);
                
                // line 2349
                P_popint(nullptr, I1);
                
                // line 2349
                P_pshrel(nullptr, I1);
                
                // line 2349
                P_pshrel(nullptr, R1);
                break;
            
            case 35:
                // line 2351
                P_poprel(nullptr, R1);
                
                // line 2351
                P_pshint(nullptr, _trunc(R1));
                break;
            
            case 36:
                // line 2352
                P_popint(nullptr, I1);
                
                // line 2352
                P_pshint(nullptr, (-I1));
                break;
            
            case 37:
                // line 2353
                P_poprel(nullptr, R1);
                
                // line 2353
                P_pshrel(nullptr, (-R1));
                break;
            
            case 38:
                // line 2354
                P_popint(nullptr, I1);
                
                // line 2354
                P_pshint(nullptr, _sqr(I1));
                break;
            
            case 39:
                // line 2355
                P_poprel(nullptr, R1);
                
                // line 2355
                P_pshrel(nullptr, _sqr(R1));
                break;
            
            case 40:
                // line 2356
                P_popint(nullptr, I1);
                
                // line 2356
                P_pshint(nullptr, _abs(I1));
                break;
            
            case 41:
                // line 2357
                P_poprel(nullptr, R1);
                
                // line 2357
                P_pshrel(nullptr, _abs(R1));
                break;
            
            case 42:
                // line 2358
                P_popint(nullptr, I1);
                
                // line 2358
                B1 = (I1 != 0);
                
                // line 2358
                P_pshint(nullptr, _ord((!B1)));
                break;
            
            case 43:
                // line 2359
                P_popint(nullptr, I2);
                
                // line 2359
                B2 = (I2 != 0);
                
                // line 2360
                P_popint(nullptr, I1);
                
                // line 2360
                B1 = (I1 != 0);
                
                // line 2361
                P_pshint(nullptr, _ord((B1 && B2)));
                break;
            
            case 44:
                // line 2362
                P_popint(nullptr, I2);
                
                // line 2362
                B2 = (I2 != 0);
                
                // line 2363
                P_popint(nullptr, I1);
                
                // line 2363
                B1 = (I1 != 0);
                
                // line 2364
                P_pshint(nullptr, _ord((B1 || B2)));
                break;
            
            case 45:
                // line 2365
                P_popset(nullptr, S2);
                
                // line 2365
                P_popset(nullptr, S1);
                
                // line 2365
                P_pshset(nullptr, (S1 - S2));
                break;
            
            case 46:
                // line 2366
                P_popset(nullptr, S2);
                
                // line 2366
                P_popset(nullptr, S1);
                
                // line 2366
                P_pshset(nullptr, (S1 * S2));
                break;
            
            case 47:
                // line 2367
                P_popset(nullptr, S2);
                
                // line 2367
                P_popset(nullptr, S1);
                
                // line 2367
                P_pshset(nullptr, (S1 + S2));
                break;
            
            case 48:
                // line 2368
                P_popset(nullptr, S1);
                
                // line 2368
                P_popint(nullptr, I1);
                
                // line 2368
                P_pshint(nullptr, _ord((S1 & I1)));
                break;
            
            case 49:
                // line 2369
                P_popint(nullptr, I2);
                
                // line 2369
                P_popint(nullptr, I1);
                
                // line 2369
                P_pshint(nullptr, _mod(I1 , I2));
                break;
            
            case 50:
                // line 2370
                P_popint(nullptr, I1);
                
                // line 2370
                P_pshint(nullptr, _ord(_odd(I1)));
                break;
            
            case 51:
                // line 2371
                P_popint(nullptr, I2);
                
                // line 2371
                P_popint(nullptr, I1);
                
                // line 2371
                P_pshint(nullptr, (I1 * I2));
                break;
            
            case 52:
                // line 2372
                P_poprel(nullptr, R2);
                
                // line 2372
                P_poprel(nullptr, R1);
                
                // line 2372
                P_pshrel(nullptr, (R1 * R2));
                break;
            
            case 53:
                // line 2373
                P_popint(nullptr, I2);
                
                // line 2373
                P_popint(nullptr, I1);
                
                // line 2374
                if((I2 == 0))
                {
                    // line 2374
                    P_errori(nullptr, T_beta::C("Zero divide              "));
                }
                
                // line 2375
                P_pshint(nullptr, (I1 / I2));
                break;
            
            case 54:
                // line 2376
                P_poprel(nullptr, R2);
                
                // line 2376
                P_poprel(nullptr, R1);
                
                // line 2377
                if((R2 == 0.000000))
                {
                    // line 2377
                    P_errori(nullptr, T_beta::C("Zero divide              "));
                }
                
                // line 2378
                P_pshrel(nullptr, ((double)R1 / R2));
                break;
            
            case 55:
                // line 2379
                P_getq(nullptr);
                
                // line 2379
                P_popint(nullptr, I2);
                
                // line 2379
                P_popint(nullptr, I1);
                
                // line 2380
                _FOR_TO(I3, 0, (q - 1))
                {
                    // line 2380
                    Store[(I1 + I3)] = Store[(I2 + I3)];
                }
                _FOR_END(I3)
                break;
            
            case 56:
                // line 2383
                P_getq(nullptr);
                
                // line 2383
                P_pshadr(nullptr, q);
                break;
            
            case 103:
            case 104:
            case 57:
                // line 2387
                P_getq(nullptr);
                
                // line 2387
                P_popint(nullptr, I1);
                
                // line 2387
                P_pshint(nullptr, (I1 - q));
                break;
            
            case 100:
            case 101:
            case 102:
                // line 2390
                P_errori(nullptr, T_beta::C("Instruction error        "));
                break;
            
            case 58:
                // line 2392
                Interpreting = C_false;
                break;
            
            case 134:
            case 136:
            case 59:
                { /* NOP */ }
                break;
            
            case 133:
            case 135:
                // line 2398
                P_errori(nullptr, T_beta::C("Instruction error        "));
                break;
            
            case 60:
                { /* NOP */ }
                break;
            
            case 61:
                // line 2402
                P_errori(nullptr, T_beta::C("case - error             "));
                break;
            
            case 62:
                // line 2403
                P_poprel(nullptr, R1);
                
                // line 2403
                P_pshint(nullptr, _round(R1));
                break;
            
            case 63:
                // line 2405
                P_getq(nullptr);
                
                // line 2405
                P_getq1(nullptr);
                
                // line 2405
                P_popadr(nullptr, A3);
                
                // line 2405
                P_popadr(nullptr, A2);
                
                // line 2405
                P_popadr(nullptr, A1);
                
                // line 2406
                if(((A2 + q) > Q1))
                {
                    // line 2406
                    P_errori(nullptr, T_beta::C("pack elements out of bnds"));
                }
                
                // line 2407
                _FOR_TO(I4, 0, (q - 1))
                {
                    // line 2408
                    Store[(A3 + I4)] = Store[(A1 + A2)];
                    
                    // line 2409
                    A2 = (A2 + 1);
                }
                _FOR_END(I4)
                break;
            
            case 64:
                // line 2412
                P_getq(nullptr);
                
                // line 2412
                P_getq1(nullptr);
                
                // line 2412
                P_popadr(nullptr, A3);
                
                // line 2412
                P_popadr(nullptr, A2);
                
                // line 2412
                P_popadr(nullptr, A1);
                
                // line 2413
                if(((A3 + q) > Q1))
                {
                    // line 2413
                    P_errori(nullptr, T_beta::C("unpack elem out of bnds  "));
                }
                
                // line 2414
                _FOR_TO(I4, 0, (q - 1))
                {
                    // line 2415
                    Store[(A2 + A3)] = Store[(A1 + I4)];
                    
                    // line 2416
                    A3 = (A3 + 1);
                }
                _FOR_END(I4)
                break;
            
            case 110:
                // line 2420
                P_popint(nullptr, I2);
                
                // line 2420
                P_popint(nullptr, I1);
                
                // line 2420
                {
                    _T_GenericSet _setLiteral2;
                    _setLiteral2.set(I1, I2);
                    
                    P_pshset(nullptr, T_settype::C(_setLiteral2));
                }
                break;
            
            case 111:
                // line 2421
                P_popadr(nullptr, Ad);
                
                // line 2421
                P_pshadr(nullptr, Ad);
                
                // line 2421
                P_valfil(nullptr, Ad);
                
                // line 2421
                Fn = Store[Ad];
                
                // line 2422
                if((Fn == C_inputfn))
                {
                    // line 2422
                    P_putchr(nullptr, T_address::C((Ad + C_fileidsize)), Input.bufferVar());
                }
                else
                {
                    // line 2423
                    if((Fn == C_prdfn))
                    {
                        // line 2423
                        P_putchr(nullptr, T_address::C((Ad + C_fileidsize)), Prd.bufferVar());
                    }
                    else
                    {
                        // line 2425
                        if((Filstate[Fn] == C_fread))
                        {
                            // line 2426
                            P_putchr(nullptr, T_address::C((Ad + C_fileidsize)), Filtable[Fn].bufferVar());
                        }
                    }
                }
                break;
            
            case 112:
                // line 2429
                P_getp(nullptr);
                
                // line 2429
                P_getq(nullptr);
                
                // line 2429
                Pc = q;
                
                // line 2430
                Mp = F_base(nullptr, p);
                
                // line 2432
                Sp = F_getadr(nullptr, T_address::C((Mp + C_marksb)));
                
                // line 2433
                Ep = F_getadr(nullptr, T_address::C((Mp + C_market)));
                break;
            
            case 113:
                // line 2435
                P_getp(nullptr);
                
                // line 2435
                P_popadr(nullptr, Ad);
                
                // line 2436
                Mp = (Sp - (p + C_marksize));
                
                // line 2438
                P_putadr(nullptr, T_address::C((Mp + C_marksl)), F_getadr(nullptr, Ad));
                
                // line 2439
                P_putadr(nullptr, T_address::C((Mp + C_markra)), Pc);
                
                // line 2440
                Pc = F_getadr(nullptr, T_address::C((Ad + (1 * C_ptrsize))));
                break;
            
            case 114:
                // line 2442
                P_getp(nullptr);
                
                // line 2442
                P_getq(nullptr);
                
                // line 2443
                P_pshadr(nullptr, F_base(nullptr, p));
                
                // line 2444
                P_pshadr(nullptr, q);
                break;
            
            case 115:
                // line 2447
                P_popadr(nullptr, Ad);
                
                // line 2447
                P_pshadr(nullptr, Ad);
                
                // line 2447
                P_valfilrm(nullptr, Ad);
                
                // line 2447
                Fn = Store[Ad];
                
                // line 2449
                P_pshint(nullptr, _ord((_eof(Bfiltable[Fn]) && (!Filbuff[Fn]))));
                break;
            
            case 116:
                // line 2451
                P_popint(nullptr, i);
                
                // line 2451
                P_popadr(nullptr, Ad);
                
                // line 2451
                P_pshadr(nullptr, Ad);
                
                // line 2451
                P_valfil(nullptr, Ad);
                
                // line 2452
                Fn = Store[Ad];
                
                // line 2454
                if(((Filstate[Fn] == C_fread) && (!Filbuff[Fn])))
                {
                    // line 2455
                    _FOR_TO(j, 1, i)
                    {
                        // line 2456
                        Bfiltable[Fn] >> Store[(((Ad + C_fileidsize) + j) - 1)];
                    }
                    _FOR_END(j)
                    
                    // line 2457
                    Filbuff[Fn] = C_true;
                }
                break;
            
            case 117:
                // line 2460
                P_getq(nullptr);
                
                // line 2460
                Sp = (Sp - q);
                break;
            
            case 118:
                // line 2462
                P_getq(nullptr);
                
                // line 2462
                P_swpstk(nullptr, q);
                break;
            
            case 119:
                // line 2464
                P_getq(nullptr);
                
                // line 2464
                P_popint(nullptr, i);
                
                // line 2464
                if((i != 0))
                {
                    // line 2464
                    Pc = q;
                }
                break;
            
            case 120:
                // line 2466
                P_getp(nullptr);
                
                // line 2466
                P_getq(nullptr);
                
                // line 2466
                Ad = (F_base(nullptr, p) + q);
                
                // line 2467
                i = F_getadr(nullptr, Ad);
                
                // line 2467
                A1 = F_getadr(nullptr, T_address::C((Ad + (1 * C_ptrsize))));
                
                // line 2468
                P_pshadr(nullptr, T_address::C(i));
                
                // line 2468
                P_pshadr(nullptr, A1);
                break;
            
            case 174:
                // line 2471
                P_getq(nullptr);
                
                // line 2471
                Srclin = q;
                
                // line 2472
                if(C_dotrcsrc)
                {
                    // line 2473
                    Output << "Source line executed: " << _format(q, 1, 0) << _WRITELN;
                }
                break;
            
            case 8:
            case 121:
            case 122:
            case 175:
            case 176:
            case 177:
            case 178:
            case 180:
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
            case 197:
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case 204:
            case 205:
            case 206:
            case 207:
            case 208:
            case 209:
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
            case 215:
            case 216:
            case 217:
            case 218:
            case 219:
            case 220:
            case 221:
            case 222:
            case 223:
            case 224:
            case 225:
            case 226:
            case 227:
            case 228:
            case 229:
            case 230:
            case 231:
            case 232:
            case 233:
            case 234:
            case 235:
            case 236:
            case 237:
            case 238:
            case 239:
            case 240:
            case 241:
            case 242:
            case 243:
            case 244:
            case 245:
            case 246:
            case 247:
            case 248:
            case 249:
            case 250:
            case 251:
            case 252:
            case 253:
            case 254:
            case 255:
                // line 2486
                P_errori(nullptr, T_beta::C("illegal instruction      "));
                break;
            }
        }
        
        // line 2492
        if(C_dodmpspc)
        {
            // line 2492
            P_repspc(nullptr);
        }
        
        // line 2496
        L_1:
        Output << _WRITELN;
        
        // line 2497
        Output << "program complete" << _WRITELN;
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_1:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 499
//================================================================================
// scope: getint (level : 2)

// types
typedef _T_Range<1, 4, signed __int8> T_getint_range_12;
typedef _T_Array< 1, 4, T_byte > T_getint_array_14;
struct T_getint_record_13
{
    // variable fields
    union
    {
        T_integer i;
        T_getint_array_14 b;
    };
};

// activation record
struct Frame_getint
{
    // parameters
    T_address a;

    // locals
    T_integer _fnvalue;
    T_getint_range_12 i;
    T_getint_record_13 r;
};

// function body
T_integer F_getint(void* _slink, T_address a)
{
    // prologue/frame definition
    Frame_getint _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 511
    _FOR_TO(_F.i, 1, C_intsize)
    {
        // line 511
        _F.r.b[_F.i] = Store[((_F.a + _F.i) - 1)];
    }
    _FOR_END(_F.i)
    
    // line 513
    _F._fnvalue = _F.r.i;
    
    // epilogue
    return _F._fnvalue;
}


// line 517
//================================================================================
// scope: putint (level : 2)

// types
typedef _T_Range<1, 4, signed __int8> T_putint_range_15;
typedef _T_Array< 1, 4, T_byte > T_putint_array_17;
struct T_putint_record_16
{
    // variable fields
    union
    {
        T_integer i;
        T_putint_array_17 b;
    };
};

// activation record
struct Frame_putint
{
    // parameters
    T_address a;
    T_integer x;

    // locals
    T_putint_range_15 i;
    T_putint_record_16 r;
};

// function body
void P_putint(void* _slink, T_address a, T_integer x)
{
    // prologue/frame definition
    Frame_putint _F = {a, x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 529
    _F.r.i = _F.x;
    
    // line 530
    _FOR_TO(_F.i, 1, C_intsize)
    {
        // line 530
        Store[((_F.a + _F.i) - 1)] = _F.r.b[_F.i];
    }
    _FOR_END(_F.i)
}


// line 534
//================================================================================
// scope: getrel (level : 2)

// types
typedef _T_Range<1, 8, signed __int8> T_getrel_range_18;
typedef _T_Array< 1, 8, T_byte > T_getrel_array_20;
struct T_getrel_record_19
{
    // variable fields
    union
    {
        T_real r;
        T_getrel_array_20 b;
    };
};

// activation record
struct Frame_getrel
{
    // parameters
    T_address a;

    // locals
    T_real _fnvalue;
    T_getrel_range_18 i;
    T_getrel_record_19 r;
};

// function body
T_real F_getrel(void* _slink, T_address a)
{
    // prologue/frame definition
    Frame_getrel _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 546
    _FOR_TO(_F.i, 1, C_realsize)
    {
        // line 546
        _F.r.b[_F.i] = Store[((_F.a + _F.i) - 1)];
    }
    _FOR_END(_F.i)
    
    // line 547
    _F._fnvalue = _F.r.r;
    
    // epilogue
    return _F._fnvalue;
}


// line 551
//================================================================================
// scope: putrel (level : 2)

// types
typedef _T_Range<1, 8, signed __int8> T_putrel_range_21;
typedef _T_Array< 1, 8, T_byte > T_putrel_array_23;
struct T_putrel_record_22
{
    // variable fields
    union
    {
        T_real r;
        T_putrel_array_23 b;
    };
};

// activation record
struct Frame_putrel
{
    // parameters
    T_address a;
    T_real f;

    // locals
    T_putrel_range_21 i;
    T_putrel_record_22 r;
};

// function body
void P_putrel(void* _slink, T_address a, T_real f)
{
    // prologue/frame definition
    Frame_putrel _F = {a, f };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 563
    _F.r.r = _F.f;
    
    // line 564
    _FOR_TO(_F.i, 1, C_realsize)
    {
        // line 564
        Store[((_F.a + _F.i) - 1)] = _F.r.b[_F.i];
    }
    _FOR_END(_F.i)
}


// line 568
//================================================================================
// scope: getbol (level : 2)

// activation record
struct Frame_getbol
{
    // parameters
    T_address a;

    // locals
    T_boolean _fnvalue;
    T_boolean b;
};

// function body
T_boolean F_getbol(void* _slink, T_address a)
{
    // prologue/frame definition
    Frame_getbol _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 574
    if((Store[_F.a] == 0))
    {
        // line 574
        _F.b = C_false;
    }
    else
    {
        // line 574
        _F.b = C_true;
    }
    
    // line 575
    _F._fnvalue = _F.b;
    
    // epilogue
    return _F._fnvalue;
}


// line 579
//================================================================================
// scope: putbol (level : 2)

// activation record
struct Frame_putbol
{
    // parameters
    T_address a;
    T_boolean b;
};

// function body
void P_putbol(void* _slink, T_address a, T_boolean b)
{
    // prologue/frame definition
    Frame_putbol _F = {a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 583
    Store[_F.a] = _ord(_F.b);
}


// line 587
//================================================================================
// scope: getset (level : 2)

// types
typedef _T_Range<1, 32, signed __int8> T_getset_range_24;
typedef _T_Array< 1, 32, T_byte > T_getset_array_26;
struct T_getset_record_25
{
    // variable fields
    union
    {
        T_settype s;
        T_getset_array_26 b;
    };
};

// activation record
struct Frame_getset
{
    // parameters
    T_address a;
    T_settype& s;

    // locals
    T_getset_range_24 i;
    T_getset_record_25 r;
};

// function body
void P_getset(void* _slink, T_address a, T_settype& s)
{
    // prologue/frame definition
    Frame_getset _F = {a, s };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 599
    _FOR_TO(_F.i, 1, C_setsize)
    {
        // line 599
        _F.r.b[_F.i] = Store[((_F.a + _F.i) - 1)];
    }
    _FOR_END(_F.i)
    
    // line 600
    _F.s = _F.r.s;
}


// line 604
//================================================================================
// scope: putset (level : 2)

// types
typedef _T_Range<1, 32, signed __int8> T_putset_range_27;
typedef _T_Array< 1, 32, T_byte > T_putset_array_29;
struct T_putset_record_28
{
    // variable fields
    union
    {
        T_settype s;
        T_putset_array_29 b;
    };
};

// activation record
struct Frame_putset
{
    // parameters
    T_address a;
    T_settype s;

    // locals
    T_putset_range_27 i;
    T_putset_record_28 r;
};

// function body
void P_putset(void* _slink, T_address a, T_settype s)
{
    // prologue/frame definition
    Frame_putset _F = {a, s };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 616
    _F.r.s = _F.s;
    
    // line 617
    _FOR_TO(_F.i, 1, C_setsize)
    {
        // line 617
        Store[((_F.a + _F.i) - 1)] = _F.r.b[_F.i];
    }
    _FOR_END(_F.i)
}


// line 621
//================================================================================
// scope: getchr (level : 2)

// activation record
struct Frame_getchr
{
    // parameters
    T_address a;

    // locals
    T_char _fnvalue;
};

// function body
T_char F_getchr(void* _slink, T_address a)
{
    // prologue/frame definition
    Frame_getchr _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 625
    _F._fnvalue = _chr(Store[_F.a]);
    
    // epilogue
    return _F._fnvalue;
}


// line 629
//================================================================================
// scope: putchr (level : 2)

// activation record
struct Frame_putchr
{
    // parameters
    T_address a;
    T_char c;
};

// function body
void P_putchr(void* _slink, T_address a, T_char c)
{
    // prologue/frame definition
    Frame_putchr _F = {a, c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 633
    Store[_F.a] = _ord(_F.c);
}


// line 637
//================================================================================
// scope: getadr (level : 2)

// types
typedef _T_Range<1, 4, signed __int8> T_getadr_range_30;
typedef _T_Array< 1, 4, T_byte > T_getadr_array_32;
struct T_getadr_record_31
{
    // variable fields
    union
    {
        T_address a;
        T_getadr_array_32 b;
    };
};

// activation record
struct Frame_getadr
{
    // parameters
    T_address a;

    // locals
    T_address _fnvalue;
    T_getadr_range_30 i;
    T_getadr_record_31 r;
};

// function body
T_address F_getadr(void* _slink, T_address a)
{
    // prologue/frame definition
    Frame_getadr _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 649
    _FOR_TO(_F.i, 1, C_adrsize)
    {
        // line 649
        _F.r.b[_F.i] = Store[((_F.a + _F.i) - 1)];
    }
    _FOR_END(_F.i)
    
    // line 650
    _F._fnvalue = _F.r.a;
    
    // epilogue
    return _F._fnvalue;
}


// line 654
//================================================================================
// scope: putadr (level : 2)

// types
typedef _T_Range<1, 4, signed __int8> T_putadr_range_33;
typedef _T_Array< 1, 4, T_byte > T_putadr_array_35;
struct T_putadr_record_34
{
    // variable fields
    union
    {
        T_address a;
        T_putadr_array_35 b;
    };
};

// activation record
struct Frame_putadr
{
    // parameters
    T_address a;
    T_address Ad;

    // locals
    T_putadr_range_33 i;
    T_putadr_record_34 r;
};

// function body
void P_putadr(void* _slink, T_address a, T_address Ad)
{
    // prologue/frame definition
    Frame_putadr _F = {a, Ad };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 666
    _F.r.a = _F.Ad;
    
    // line 667
    _FOR_TO(_F.i, 1, C_adrsize)
    {
        // line 667
        Store[((_F.a + _F.i) - 1)] = _F.r.b[_F.i];
    }
    _FOR_END(_F.i)
}


// line 673
//================================================================================
// scope: swpstk (level : 2)

// types
typedef _T_Range<1, 32, signed __int8> T_swpstk_range_36;
typedef _T_Array< 1, 32, T_byte > T_swpstk_array_37;

// activation record
struct Frame_swpstk
{
    // parameters
    T_address l;

    // locals
    T_swpstk_range_36 i;
    T_address p;
    T_swpstk_array_37 Sb;
};

// function body
void P_swpstk(void* _slink, T_address l)
{
    // prologue/frame definition
    Frame_swpstk _F = {l };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 682
    _F.p = F_getadr(nullptr, T_address::C((Sp - C_adrsize)));
    
    // line 684
    _FOR_TO(_F.i, 1, _F.l)
    {
        // line 684
        _F.Sb[_F.i] = Store[((((Sp - C_adrsize) - _F.l) + _F.i) - 1)];
    }
    _FOR_END(_F.i)
    
    // line 685
    P_putadr(nullptr, T_address::C(((Sp - C_adrsize) - _F.l)), _F.p);
    
    // line 686
    _FOR_TO(_F.i, 1, _F.l)
    {
        // line 686
        Store[(((Sp - _F.l) + _F.i) - 1)] = _F.Sb[_F.i];
    }
    _FOR_END(_F.i)
}


// line 700
//================================================================================
// scope: popint (level : 2)

// activation record
struct Frame_popint
{
    // parameters
    T_integer& i;
};

// function body
void P_popint(void* _slink, T_integer& i)
{
    // prologue/frame definition
    Frame_popint _F = {i };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 700
    Sp = (Sp - C_intsize);
    
    // line 700
    _F.i = F_getint(nullptr, Sp);
}


// line 701
//================================================================================
// scope: pshint (level : 2)

// activation record
struct Frame_pshint
{
    // parameters
    T_integer i;
};

// function body
void P_pshint(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_pshint _F = {i };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 701
    P_putint(nullptr, Sp, _F.i);
    
    // line 701
    Sp = (Sp + C_intsize);
}


// line 702
//================================================================================
// scope: poprel (level : 2)

// activation record
struct Frame_poprel
{
    // parameters
    T_real& r;
};

// function body
void P_poprel(void* _slink, T_real& r)
{
    // prologue/frame definition
    Frame_poprel _F = {r };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 702
    Sp = (Sp - C_realsize);
    
    // line 702
    _F.r = F_getrel(nullptr, Sp);
}


// line 703
//================================================================================
// scope: pshrel (level : 2)

// activation record
struct Frame_pshrel
{
    // parameters
    T_real r;
};

// function body
void P_pshrel(void* _slink, T_real r)
{
    // prologue/frame definition
    Frame_pshrel _F = {r };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 703
    P_putrel(nullptr, Sp, _F.r);
    
    // line 703
    Sp = (Sp + C_realsize);
    
    { /* NOP */ }
}


// line 704
//================================================================================
// scope: popset (level : 2)

// activation record
struct Frame_popset
{
    // parameters
    T_settype& s;
};

// function body
void P_popset(void* _slink, T_settype& s)
{
    // prologue/frame definition
    Frame_popset _F = {s };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 704
    Sp = (Sp - C_setsize);
    
    // line 704
    P_getset(nullptr, Sp, _F.s);
}


// line 705
//================================================================================
// scope: pshset (level : 2)

// activation record
struct Frame_pshset
{
    // parameters
    T_settype s;
};

// function body
void P_pshset(void* _slink, T_settype s)
{
    // prologue/frame definition
    Frame_pshset _F = {s };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 705
    P_putset(nullptr, Sp, _F.s);
    
    // line 705
    Sp = (Sp + C_setsize);
}


// line 706
//================================================================================
// scope: popadr (level : 2)

// activation record
struct Frame_popadr
{
    // parameters
    T_address& a;
};

// function body
void P_popadr(void* _slink, T_address& a)
{
    // prologue/frame definition
    Frame_popadr _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 706
    Sp = (Sp - C_adrsize);
    
    // line 706
    _F.a = F_getadr(nullptr, Sp);
}


// line 707
//================================================================================
// scope: pshadr (level : 2)

// activation record
struct Frame_pshadr
{
    // parameters
    T_address a;
};

// function body
void P_pshadr(void* _slink, T_address a)
{
    // prologue/frame definition
    Frame_pshadr _F = {a };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 707
    P_putadr(nullptr, Sp, _F.a);
    
    // line 707
    Sp = (Sp + C_adrsize);
}


// line 711
//================================================================================
// scope: wrthex (level : 2)

// activation record
struct Frame_wrthex
{
    // parameters
    T_integer v;
    T_integer f;

    // locals
    T_integer d;
    T_integer i;
    T_integer p;
};

// function body
void P_wrthex(void* _slink, T_integer v, T_integer f)
{
    // prologue/frame definition
    Frame_wrthex _F = {v, f };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 714
    _F.p = 1;
    
    // line 715
    _FOR_TO(_F.i, 1, (_F.f - 1))
    {
        // line 715
        _F.p = (_F.p * 16);
    }
    _FOR_END(_F.i)
    
    // line 716
    while((_F.p > 0))
    {
        // line 717
        _F.d = _mod((_F.v / _F.p) , 16);
        
        // line 718
        if((_F.d < 10))
        {
            // line 718
            Output << _chr((_F.d + _ord('0')));
        }
        else
        {
            // line 719
            Output << _chr(((_F.d - 10) + _ord('A')));
        }
        
        // line 720
        _F.p = (_F.p / 16);
    }
}


// line 726
//================================================================================
// scope: lstins (level : 2)

// activation record
struct Frame_lstins
{
    // parameters
    T_address& Ad;

    // locals
    T_address Ads;
    T_instyp Op;
    T_lvltyp p;
    T_address q;
};

// function body
void P_lstins(void* _slink, T_address& Ad)
{
    // prologue/frame definition
    Frame_lstins _F = {Ad };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 734
    _F.Ads = _F.Ad;
    
    // line 735
    _F.Op = Store[_F.Ad];
    
    // line 735
    _F.Ad = (_F.Ad + 1);
    
    // line 736
    if(Insp[_F.Op])
    {
        // line 736
        _F.p = Store[_F.Ad];
        
        // line 736
        _F.Ad = (_F.Ad + 1);
    }
    
    // line 737
    if((Insq[_F.Op] > 0))
    {
        // line 739
        switch(Insq[_F.Op])
        {
        case 1:
            // line 741
            _F.q = Store[_F.Ad];
            break;
        
        case C_intsize:
            // line 742
            _F.q = F_getint(nullptr, _F.Ad);
            break;
        }
        
        // line 745
        _F.Ad = (_F.Ad + Insq[_F.Op]);
    }
    
    // line 748
    Output << ": ";
    
    // line 749
    P_wrthex(nullptr, _F.Op, 2);
    
    // line 750
    Output << ' ' << _format(Instr[_F.Op], 10, 0) << "  ";
    
    // line 751
    if(Insp[_F.Op])
    {
        // line 753
        P_wrthex(nullptr, _F.p, 2);
        
        // line 754
        if((Insq[_F.Op] > 0))
        {
            // line 754
            Output << ',';
            
            // line 754
            P_wrthex(nullptr, _F.q, C_maxdigh);
        }
    }
    else
    {
        // line 756
        if((Insq[_F.Op] > 0))
        {
            // line 756
            Output << "   ";
            
            // line 756
            P_wrthex(nullptr, _F.q, C_maxdigh);
        }
    }
}


// line 762
//================================================================================
// scope: dmpins (level : 2)

// activation record
struct Frame_dmpins
{
    // locals
    T_address i;
};

// function body
void P_dmpins(void* _slink)
{
    // prologue/frame definition
    Frame_dmpins _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 768
    Output << _WRITELN;
    
    // line 769
    Output << "Contents of instruction memory" << _WRITELN;
    
    // line 770
    Output << _WRITELN;
    
    // line 771
    Output << "  Addr  Opc Ins          P       Q" << _WRITELN;
    
    // line 772
    Output << "----------------------------------" << _WRITELN;
    
    // line 773
    _F.i = 0;
    
    // line 774
    while((_F.i < Pctop))
    {
        // line 776
        P_wrthex(nullptr, _F.i, C_maxdigh);
        
        // line 777
        P_lstins(nullptr, _F.i);
        
        // line 778
        Output << _WRITELN;
    }
    
    // line 781
    Output << _WRITELN;
}


// line 787
//================================================================================
// scope: alignu (level : 2)

// activation record
struct Frame_alignu
{
    // parameters
    T_address Algn;
    T_address& Flc;

    // locals
    T_integer l;
};

// function body
void P_alignu(void* _slink, T_address Algn, T_address& Flc)
{
    // prologue/frame definition
    Frame_alignu _F = {Algn, Flc };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 790
    _F.l = (_F.Flc - 1);
    
    // line 791
    _F.Flc = ((_F.l + _F.Algn) - _mod((_F.Algn + _F.l) , _F.Algn));
}


// line 796
//================================================================================
// scope: alignd (level : 2)

// activation record
struct Frame_alignd
{
    // parameters
    T_address Algn;
    T_address& Flc;

    // locals
    T_integer l;
};

// function body
void P_alignd(void* _slink, T_address Algn, T_address& Flc)
{
    // prologue/frame definition
    Frame_alignd _F = {Algn, Flc };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 799
    _F.l = (_F.Flc + 1);
    
    // line 800
    _F.Flc = ((_F.l - _F.Algn) + _mod((_F.Algn - _F.l) , _F.Algn));
}


// line 807
//================================================================================
// scope: load (level : 2)

// types
typedef int T_load_labelst;
struct T_load_labelrec
{
    T_address Val;
    T_load_labelst St;
};
typedef _T_Range<0, 5000, signed __int16> T_load_labelrg;
typedef _T_Array< 0, 5000, T_load_labelrec > T_load_array_38;
typedef _T_Array< 1, 10, T_char > T_load_array_39;

// forward declarations
void P_load_init(void* _slink);
void P_load_errorl(void* _slink, T_beta String);
void P_load_dmplabs(void* _slink);
void P_load_update(void* _slink, T_load_labelrg x);
void P_load_getnxt(void* _slink);
void P_load_skpspc(void* _slink);
void P_load_getlin(void* _slink);
void P_load_generate(void* _slink);
void P_load_assemble(void* _slink);

// constants
const T_load_labelst C_load_defined = 1;
const T_load_labelst C_load_entered = 0;

// activation record
struct Frame_load
{
    // locals
    T_char Ch;
    T_integer Iline;
    T_load_array_38 Labeltab;
    T_address Labelvalue;
    T_load_array_39 Word;
};

// function body
void P_load(void* _slink)
{
    // prologue/frame definition
    Frame_load _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1407
    P_load_init(&_F);
    
    // line 1408
    P_load_generate(&_F);
    
    // line 1409
    Pctop = Pc;
    
    // line 1410
    Pc = 0;
    
    // line 1411
    P_load_generate(&_F);
    
    // line 1412
    P_alignu(nullptr, T_address::C(C_stackal), Pctop);
    
    // line 1413
    P_alignd(nullptr, T_address::C(C_heapal), Cp);
    
    // line 1415
    if(C_dodmpsto)
    {
        // line 1417
        Output << _WRITELN;
        
        // line 1418
        Output << "Storage areas occupied" << _WRITELN;
        
        // line 1419
        Output << _WRITELN;
        
        // line 1420
        Output << "Program     ";
        
        // line 1420
        P_wrthex(nullptr, 0, C_maxdigh);
        
        // line 1420
        Output << '-';
        
        // line 1420
        P_wrthex(nullptr, (Pctop - 1), C_maxdigh);
        
        // line 1421
        Output << " (" << _format(Pctop, C_maxdigd, 0) << ')' << _WRITELN;
        
        // line 1422
        Output << "Stack/Heap  ";
        
        // line 1422
        P_wrthex(nullptr, Pctop, C_maxdigh);
        
        // line 1422
        Output << '-';
        
        // line 1422
        P_wrthex(nullptr, (Cp - 1), C_maxdigh);
        
        // line 1423
        Output << " (" << _format(((Cp - Pctop) + 1), C_maxdigd, 0) << ')' << _WRITELN;
        
        // line 1424
        Output << "Constants   ";
        
        // line 1424
        P_wrthex(nullptr, Cp, C_maxdigh);
        
        // line 1424
        Output << '-';
        
        // line 1424
        P_wrthex(nullptr, C_maxstr, C_maxdigh);
        
        // line 1425
        Output << " (" << _format((C_maxstr - Cp), C_maxdigd, 0) << ')' << _WRITELN;
        
        // line 1426
        Output << _WRITELN;
    }
    
    // line 1429
    if(C_dodmpins)
    {
        // line 1429
        P_dmpins(nullptr);
    }
    
    // line 1430
    if(C_dodmplab)
    {
        // line 1430
        P_load_dmplabs(&_F);
    }
}


// line 819
//================================================================================
// scope: load_init (level : 3)

// activation record
struct Frame_load_init
{
   Frame_load* _slink;

    // locals
    T_integer i;
};

// function body
void P_load_init(void* _slink)
{
    // prologue/frame definition
    Frame_load_init _F = { (Frame_load*)_slink };
    
    // subroutine body
    // line 821
    _FOR_TO(_F.i, 0, C_maxins)
    {
        // line 821
        Instr[_F.i] = "          ";
    }
    _FOR_END(_F.i)
    
    // line 836
    Instr[0] = "lodi      ";
    
    // line 836
    Insp[0] = C_true;
    
    // line 836
    Insq[0] = C_intsize;
    
    // line 837
    Instr[1] = "ldoi      ";
    
    // line 837
    Insp[1] = C_false;
    
    // line 837
    Insq[1] = C_intsize;
    
    // line 838
    Instr[2] = "stri      ";
    
    // line 838
    Insp[2] = C_true;
    
    // line 838
    Insq[2] = C_intsize;
    
    // line 839
    Instr[3] = "sroi      ";
    
    // line 839
    Insp[3] = C_false;
    
    // line 839
    Insq[3] = C_intsize;
    
    // line 840
    Instr[4] = "lda       ";
    
    // line 840
    Insp[4] = C_true;
    
    // line 840
    Insq[4] = C_intsize;
    
    // line 841
    Instr[5] = "lao       ";
    
    // line 841
    Insp[5] = C_false;
    
    // line 841
    Insq[5] = C_intsize;
    
    // line 842
    Instr[6] = "stoi      ";
    
    // line 842
    Insp[6] = C_false;
    
    // line 842
    Insq[6] = 0;
    
    // line 843
    Instr[7] = "ldc       ";
    
    // line 843
    Insp[7] = C_false;
    
    // line 843
    Insq[7] = C_intsize;
    
    // line 844
    Instr[8] = "---       ";
    
    // line 844
    Insp[8] = C_false;
    
    // line 844
    Insq[8] = 0;
    
    // line 845
    Instr[9] = "indi      ";
    
    // line 845
    Insp[9] = C_false;
    
    // line 845
    Insq[9] = C_intsize;
    
    // line 846
    Instr[10] = "inci      ";
    
    // line 846
    Insp[10] = C_false;
    
    // line 846
    Insq[10] = C_intsize;
    
    // line 847
    Instr[11] = "mst       ";
    
    // line 847
    Insp[11] = C_true;
    
    // line 847
    Insq[11] = 0;
    
    // line 848
    Instr[12] = "cup       ";
    
    // line 848
    Insp[12] = C_true;
    
    // line 848
    Insq[12] = C_intsize;
    
    // line 849
    Instr[13] = "ents      ";
    
    // line 849
    Insp[13] = C_false;
    
    // line 849
    Insq[13] = C_intsize;
    
    // line 850
    Instr[14] = "retp      ";
    
    // line 850
    Insp[14] = C_false;
    
    // line 850
    Insq[14] = 0;
    
    // line 851
    Instr[15] = "csp       ";
    
    // line 851
    Insp[15] = C_false;
    
    // line 851
    Insq[15] = C_intsize;
    
    // line 852
    Instr[16] = "ixa       ";
    
    // line 852
    Insp[16] = C_false;
    
    // line 852
    Insq[16] = C_intsize;
    
    // line 853
    Instr[17] = "equa      ";
    
    // line 853
    Insp[17] = C_false;
    
    // line 853
    Insq[17] = 0;
    
    // line 854
    Instr[18] = "neqa      ";
    
    // line 854
    Insp[18] = C_false;
    
    // line 854
    Insq[18] = 0;
    
    // line 855
    Instr[19] = "geqa      ";
    
    // line 855
    Insp[19] = C_false;
    
    // line 855
    Insq[19] = 0;
    
    // line 856
    Instr[20] = "grta      ";
    
    // line 856
    Insp[20] = C_false;
    
    // line 856
    Insq[20] = 0;
    
    // line 857
    Instr[21] = "leqa      ";
    
    // line 857
    Insp[21] = C_false;
    
    // line 857
    Insq[21] = 0;
    
    // line 858
    Instr[22] = "lesa      ";
    
    // line 858
    Insp[22] = C_false;
    
    // line 858
    Insq[22] = 0;
    
    // line 859
    Instr[23] = "ujp       ";
    
    // line 859
    Insp[23] = C_false;
    
    // line 859
    Insq[23] = C_intsize;
    
    // line 860
    Instr[24] = "fjp       ";
    
    // line 860
    Insp[24] = C_false;
    
    // line 860
    Insq[24] = C_intsize;
    
    // line 861
    Instr[25] = "xjp       ";
    
    // line 861
    Insp[25] = C_false;
    
    // line 861
    Insq[25] = C_intsize;
    
    // line 862
    Instr[26] = "chki      ";
    
    // line 862
    Insp[26] = C_false;
    
    // line 862
    Insq[26] = C_intsize;
    
    // line 863
    Instr[27] = "eof       ";
    
    // line 863
    Insp[27] = C_false;
    
    // line 863
    Insq[27] = 0;
    
    // line 864
    Instr[28] = "adi       ";
    
    // line 864
    Insp[28] = C_false;
    
    // line 864
    Insq[28] = 0;
    
    // line 865
    Instr[29] = "adr       ";
    
    // line 865
    Insp[29] = C_false;
    
    // line 865
    Insq[29] = 0;
    
    // line 866
    Instr[30] = "sbi       ";
    
    // line 866
    Insp[30] = C_false;
    
    // line 866
    Insq[30] = 0;
    
    // line 867
    Instr[31] = "sbr       ";
    
    // line 867
    Insp[31] = C_false;
    
    // line 867
    Insq[31] = 0;
    
    // line 868
    Instr[32] = "sgs       ";
    
    // line 868
    Insp[32] = C_false;
    
    // line 868
    Insq[32] = 0;
    
    // line 869
    Instr[33] = "flt       ";
    
    // line 869
    Insp[33] = C_false;
    
    // line 869
    Insq[33] = 0;
    
    // line 870
    Instr[34] = "flo       ";
    
    // line 870
    Insp[34] = C_false;
    
    // line 870
    Insq[34] = 0;
    
    // line 871
    Instr[35] = "trc       ";
    
    // line 871
    Insp[35] = C_false;
    
    // line 871
    Insq[35] = 0;
    
    // line 872
    Instr[36] = "ngi       ";
    
    // line 872
    Insp[36] = C_false;
    
    // line 872
    Insq[36] = 0;
    
    // line 873
    Instr[37] = "ngr       ";
    
    // line 873
    Insp[37] = C_false;
    
    // line 873
    Insq[37] = 0;
    
    // line 874
    Instr[38] = "sqi       ";
    
    // line 874
    Insp[38] = C_false;
    
    // line 874
    Insq[38] = 0;
    
    // line 875
    Instr[39] = "sqr       ";
    
    // line 875
    Insp[39] = C_false;
    
    // line 875
    Insq[39] = 0;
    
    // line 876
    Instr[40] = "abi       ";
    
    // line 876
    Insp[40] = C_false;
    
    // line 876
    Insq[40] = 0;
    
    // line 877
    Instr[41] = "abr       ";
    
    // line 877
    Insp[41] = C_false;
    
    // line 877
    Insq[41] = 0;
    
    // line 878
    Instr[42] = "not       ";
    
    // line 878
    Insp[42] = C_false;
    
    // line 878
    Insq[42] = 0;
    
    // line 879
    Instr[43] = "and       ";
    
    // line 879
    Insp[43] = C_false;
    
    // line 879
    Insq[43] = 0;
    
    // line 880
    Instr[44] = "ior       ";
    
    // line 880
    Insp[44] = C_false;
    
    // line 880
    Insq[44] = 0;
    
    // line 881
    Instr[45] = "dif       ";
    
    // line 881
    Insp[45] = C_false;
    
    // line 881
    Insq[45] = 0;
    
    // line 882
    Instr[46] = "int       ";
    
    // line 882
    Insp[46] = C_false;
    
    // line 882
    Insq[46] = 0;
    
    // line 883
    Instr[47] = "uni       ";
    
    // line 883
    Insp[47] = C_false;
    
    // line 883
    Insq[47] = 0;
    
    // line 884
    Instr[48] = "inn       ";
    
    // line 884
    Insp[48] = C_false;
    
    // line 884
    Insq[48] = 0;
    
    // line 885
    Instr[49] = "mod       ";
    
    // line 885
    Insp[49] = C_false;
    
    // line 885
    Insq[49] = 0;
    
    // line 886
    Instr[50] = "odd       ";
    
    // line 886
    Insp[50] = C_false;
    
    // line 886
    Insq[50] = 0;
    
    // line 887
    Instr[51] = "mpi       ";
    
    // line 887
    Insp[51] = C_false;
    
    // line 887
    Insq[51] = 0;
    
    // line 888
    Instr[52] = "mpr       ";
    
    // line 888
    Insp[52] = C_false;
    
    // line 888
    Insq[52] = 0;
    
    // line 889
    Instr[53] = "dvi       ";
    
    // line 889
    Insp[53] = C_false;
    
    // line 889
    Insq[53] = 0;
    
    // line 890
    Instr[54] = "dvr       ";
    
    // line 890
    Insp[54] = C_false;
    
    // line 890
    Insq[54] = 0;
    
    // line 891
    Instr[55] = "mov       ";
    
    // line 891
    Insp[55] = C_false;
    
    // line 891
    Insq[55] = C_intsize;
    
    // line 892
    Instr[56] = "lca       ";
    
    // line 892
    Insp[56] = C_false;
    
    // line 892
    Insq[56] = C_intsize;
    
    // line 893
    Instr[57] = "deci      ";
    
    // line 893
    Insp[57] = C_false;
    
    // line 893
    Insq[57] = C_intsize;
    
    // line 894
    Instr[58] = "stp       ";
    
    // line 894
    Insp[58] = C_false;
    
    // line 894
    Insq[58] = 0;
    
    // line 895
    Instr[59] = "ordi      ";
    
    // line 895
    Insp[59] = C_false;
    
    // line 895
    Insq[59] = 0;
    
    // line 896
    Instr[60] = "chr       ";
    
    // line 896
    Insp[60] = C_false;
    
    // line 896
    Insq[60] = 0;
    
    // line 897
    Instr[61] = "ujc       ";
    
    // line 897
    Insp[61] = C_false;
    
    // line 897
    Insq[61] = C_intsize;
    
    // line 898
    Instr[62] = "rnd       ";
    
    // line 898
    Insp[62] = C_false;
    
    // line 898
    Insq[62] = 0;
    
    // line 899
    Instr[63] = "pck       ";
    
    // line 899
    Insp[63] = C_false;
    
    // line 899
    Insq[63] = C_intsize;
    
    // line 900
    Instr[64] = "upk       ";
    
    // line 900
    Insp[64] = C_false;
    
    // line 900
    Insq[64] = C_intsize;
    
    // line 901
    Instr[65] = "ldoa      ";
    
    // line 901
    Insp[65] = C_false;
    
    // line 901
    Insq[65] = C_intsize;
    
    // line 902
    Instr[66] = "ldor      ";
    
    // line 902
    Insp[66] = C_false;
    
    // line 902
    Insq[66] = C_intsize;
    
    // line 903
    Instr[67] = "ldos      ";
    
    // line 903
    Insp[67] = C_false;
    
    // line 903
    Insq[67] = C_intsize;
    
    // line 904
    Instr[68] = "ldob      ";
    
    // line 904
    Insp[68] = C_false;
    
    // line 904
    Insq[68] = C_intsize;
    
    // line 905
    Instr[69] = "ldoc      ";
    
    // line 905
    Insp[69] = C_false;
    
    // line 905
    Insq[69] = C_intsize;
    
    // line 906
    Instr[70] = "stra      ";
    
    // line 906
    Insp[70] = C_true;
    
    // line 906
    Insq[70] = C_intsize;
    
    // line 907
    Instr[71] = "strr      ";
    
    // line 907
    Insp[71] = C_true;
    
    // line 907
    Insq[71] = C_intsize;
    
    // line 908
    Instr[72] = "strs      ";
    
    // line 908
    Insp[72] = C_true;
    
    // line 908
    Insq[72] = C_intsize;
    
    // line 909
    Instr[73] = "strb      ";
    
    // line 909
    Insp[73] = C_true;
    
    // line 909
    Insq[73] = C_intsize;
    
    // line 910
    Instr[74] = "strc      ";
    
    // line 910
    Insp[74] = C_true;
    
    // line 910
    Insq[74] = C_intsize;
    
    // line 911
    Instr[75] = "sroa      ";
    
    // line 911
    Insp[75] = C_false;
    
    // line 911
    Insq[75] = C_intsize;
    
    // line 912
    Instr[76] = "sror      ";
    
    // line 912
    Insp[76] = C_false;
    
    // line 912
    Insq[76] = C_intsize;
    
    // line 913
    Instr[77] = "sros      ";
    
    // line 913
    Insp[77] = C_false;
    
    // line 913
    Insq[77] = C_intsize;
    
    // line 914
    Instr[78] = "srob      ";
    
    // line 914
    Insp[78] = C_false;
    
    // line 914
    Insq[78] = C_intsize;
    
    // line 915
    Instr[79] = "sroc      ";
    
    // line 915
    Insp[79] = C_false;
    
    // line 915
    Insq[79] = C_intsize;
    
    // line 916
    Instr[80] = "stoa      ";
    
    // line 916
    Insp[80] = C_false;
    
    // line 916
    Insq[80] = 0;
    
    // line 917
    Instr[81] = "stor      ";
    
    // line 917
    Insp[81] = C_false;
    
    // line 917
    Insq[81] = 0;
    
    // line 918
    Instr[82] = "stos      ";
    
    // line 918
    Insp[82] = C_false;
    
    // line 918
    Insq[82] = 0;
    
    // line 919
    Instr[83] = "stob      ";
    
    // line 919
    Insp[83] = C_false;
    
    // line 919
    Insq[83] = 0;
    
    // line 920
    Instr[84] = "stoc      ";
    
    // line 920
    Insp[84] = C_false;
    
    // line 920
    Insq[84] = 0;
    
    // line 921
    Instr[85] = "inda      ";
    
    // line 921
    Insp[85] = C_false;
    
    // line 921
    Insq[85] = C_intsize;
    
    // line 922
    Instr[86] = "indr      ";
    
    // line 922
    Insp[86] = C_false;
    
    // line 922
    Insq[86] = C_intsize;
    
    // line 923
    Instr[87] = "inds      ";
    
    // line 923
    Insp[87] = C_false;
    
    // line 923
    Insq[87] = C_intsize;
    
    // line 924
    Instr[88] = "indb      ";
    
    // line 924
    Insp[88] = C_false;
    
    // line 924
    Insq[88] = C_intsize;
    
    // line 925
    Instr[89] = "indc      ";
    
    // line 925
    Insp[89] = C_false;
    
    // line 925
    Insq[89] = C_intsize;
    
    // line 926
    Instr[90] = "inca      ";
    
    // line 926
    Insp[90] = C_false;
    
    // line 926
    Insq[90] = C_intsize;
    
    // line 927
    Instr[91] = "incr      ";
    
    // line 927
    Insp[91] = C_false;
    
    // line 927
    Insq[91] = C_intsize;
    
    // line 928
    Instr[92] = "incs      ";
    
    // line 928
    Insp[92] = C_false;
    
    // line 928
    Insq[92] = C_intsize;
    
    // line 929
    Instr[93] = "incb      ";
    
    // line 929
    Insp[93] = C_false;
    
    // line 929
    Insq[93] = C_intsize;
    
    // line 930
    Instr[94] = "incc      ";
    
    // line 930
    Insp[94] = C_false;
    
    // line 930
    Insq[94] = C_intsize;
    
    // line 931
    Instr[95] = "chka      ";
    
    // line 931
    Insp[95] = C_false;
    
    // line 931
    Insq[95] = C_intsize;
    
    // line 932
    Instr[96] = "chkr      ";
    
    // line 932
    Insp[96] = C_false;
    
    // line 932
    Insq[96] = C_intsize;
    
    // line 933
    Instr[97] = "chks      ";
    
    // line 933
    Insp[97] = C_false;
    
    // line 933
    Insq[97] = C_intsize;
    
    // line 934
    Instr[98] = "chkb      ";
    
    // line 934
    Insp[98] = C_false;
    
    // line 934
    Insq[98] = C_intsize;
    
    // line 935
    Instr[99] = "chkc      ";
    
    // line 935
    Insp[99] = C_false;
    
    // line 935
    Insq[99] = C_intsize;
    
    // line 936
    Instr[100] = "deca      ";
    
    // line 936
    Insp[100] = C_false;
    
    // line 936
    Insq[100] = C_intsize;
    
    // line 937
    Instr[101] = "decr      ";
    
    // line 937
    Insp[101] = C_false;
    
    // line 937
    Insq[101] = C_intsize;
    
    // line 938
    Instr[102] = "decs      ";
    
    // line 938
    Insp[102] = C_false;
    
    // line 938
    Insq[102] = C_intsize;
    
    // line 939
    Instr[103] = "decb      ";
    
    // line 939
    Insp[103] = C_false;
    
    // line 939
    Insq[103] = C_intsize;
    
    // line 940
    Instr[104] = "decc      ";
    
    // line 940
    Insp[104] = C_false;
    
    // line 940
    Insq[104] = C_intsize;
    
    // line 941
    Instr[105] = "loda      ";
    
    // line 941
    Insp[105] = C_true;
    
    // line 941
    Insq[105] = C_intsize;
    
    // line 942
    Instr[106] = "lodr      ";
    
    // line 942
    Insp[106] = C_true;
    
    // line 942
    Insq[106] = C_intsize;
    
    // line 943
    Instr[107] = "lods      ";
    
    // line 943
    Insp[107] = C_true;
    
    // line 943
    Insq[107] = C_intsize;
    
    // line 944
    Instr[108] = "lodb      ";
    
    // line 944
    Insp[108] = C_true;
    
    // line 944
    Insq[108] = C_intsize;
    
    // line 945
    Instr[109] = "lodc      ";
    
    // line 945
    Insp[109] = C_true;
    
    // line 945
    Insq[109] = C_intsize;
    
    // line 946
    Instr[110] = "rgs       ";
    
    // line 946
    Insp[110] = C_false;
    
    // line 946
    Insq[110] = 0;
    
    // line 947
    Instr[111] = "fbv       ";
    
    // line 947
    Insp[111] = C_false;
    
    // line 947
    Insq[111] = 0;
    
    // line 948
    Instr[112] = "ipj       ";
    
    // line 948
    Insp[112] = C_true;
    
    // line 948
    Insq[112] = C_intsize;
    
    // line 949
    Instr[113] = "cip       ";
    
    // line 949
    Insp[113] = C_true;
    
    // line 949
    Insq[113] = 0;
    
    // line 950
    Instr[114] = "lpa       ";
    
    // line 950
    Insp[114] = C_true;
    
    // line 950
    Insq[114] = C_intsize;
    
    // line 951
    Instr[115] = "efb       ";
    
    // line 951
    Insp[115] = C_false;
    
    // line 951
    Insq[115] = 0;
    
    // line 952
    Instr[116] = "fvb       ";
    
    // line 952
    Insp[116] = C_false;
    
    // line 952
    Insq[116] = 0;
    
    // line 953
    Instr[117] = "dmp       ";
    
    // line 953
    Insp[117] = C_false;
    
    // line 953
    Insq[117] = C_intsize;
    
    // line 954
    Instr[118] = "swp       ";
    
    // line 954
    Insp[118] = C_false;
    
    // line 954
    Insq[118] = C_intsize;
    
    // line 955
    Instr[119] = "tjp       ";
    
    // line 955
    Insp[119] = C_false;
    
    // line 955
    Insq[119] = C_intsize;
    
    // line 956
    Instr[120] = "lip       ";
    
    // line 956
    Insp[120] = C_true;
    
    // line 956
    Insq[120] = C_intsize;
    
    // line 957
    Instr[121] = "---       ";
    
    // line 957
    Insp[121] = C_false;
    
    // line 957
    Insq[121] = 0;
    
    // line 958
    Instr[122] = "---       ";
    
    // line 958
    Insp[122] = C_false;
    
    // line 958
    Insq[122] = 0;
    
    // line 959
    Instr[123] = "ldci      ";
    
    // line 959
    Insp[123] = C_false;
    
    // line 959
    Insq[123] = C_intsize;
    
    // line 960
    Instr[124] = "ldcr      ";
    
    // line 960
    Insp[124] = C_false;
    
    // line 960
    Insq[124] = C_intsize;
    
    // line 961
    Instr[125] = "ldcn      ";
    
    // line 961
    Insp[125] = C_false;
    
    // line 961
    Insq[125] = 0;
    
    // line 962
    Instr[126] = "ldcb      ";
    
    // line 962
    Insp[126] = C_false;
    
    // line 962
    Insq[126] = C_boolsize;
    
    // line 963
    Instr[127] = "ldcc      ";
    
    // line 963
    Insp[127] = C_false;
    
    // line 963
    Insq[127] = C_charsize;
    
    // line 964
    Instr[128] = "reti      ";
    
    // line 964
    Insp[128] = C_false;
    
    // line 964
    Insq[128] = 0;
    
    // line 965
    Instr[129] = "retr      ";
    
    // line 965
    Insp[129] = C_false;
    
    // line 965
    Insq[129] = 0;
    
    // line 966
    Instr[130] = "retc      ";
    
    // line 966
    Insp[130] = C_false;
    
    // line 966
    Insq[130] = 0;
    
    // line 967
    Instr[131] = "retb      ";
    
    // line 967
    Insp[131] = C_false;
    
    // line 967
    Insq[131] = 0;
    
    // line 968
    Instr[132] = "reta      ";
    
    // line 968
    Insp[132] = C_false;
    
    // line 968
    Insq[132] = 0;
    
    // line 969
    Instr[133] = "ordr      ";
    
    // line 969
    Insp[133] = C_false;
    
    // line 969
    Insq[133] = 0;
    
    // line 970
    Instr[134] = "ordb      ";
    
    // line 970
    Insp[134] = C_false;
    
    // line 970
    Insq[134] = 0;
    
    // line 971
    Instr[135] = "ords      ";
    
    // line 971
    Insp[135] = C_false;
    
    // line 971
    Insq[135] = 0;
    
    // line 972
    Instr[136] = "ordc      ";
    
    // line 972
    Insp[136] = C_false;
    
    // line 972
    Insq[136] = 0;
    
    // line 973
    Instr[137] = "equi      ";
    
    // line 973
    Insp[137] = C_false;
    
    // line 973
    Insq[137] = 0;
    
    // line 974
    Instr[138] = "equr      ";
    
    // line 974
    Insp[138] = C_false;
    
    // line 974
    Insq[138] = 0;
    
    // line 975
    Instr[139] = "equb      ";
    
    // line 975
    Insp[139] = C_false;
    
    // line 975
    Insq[139] = 0;
    
    // line 976
    Instr[140] = "equs      ";
    
    // line 976
    Insp[140] = C_false;
    
    // line 976
    Insq[140] = 0;
    
    // line 977
    Instr[141] = "equc      ";
    
    // line 977
    Insp[141] = C_false;
    
    // line 977
    Insq[141] = 0;
    
    // line 978
    Instr[142] = "equm      ";
    
    // line 978
    Insp[142] = C_false;
    
    // line 978
    Insq[142] = C_intsize;
    
    // line 979
    Instr[143] = "neqi      ";
    
    // line 979
    Insp[143] = C_false;
    
    // line 979
    Insq[143] = 0;
    
    // line 980
    Instr[144] = "neqr      ";
    
    // line 980
    Insp[144] = C_false;
    
    // line 980
    Insq[144] = 0;
    
    // line 981
    Instr[145] = "neqb      ";
    
    // line 981
    Insp[145] = C_false;
    
    // line 981
    Insq[145] = 0;
    
    // line 982
    Instr[146] = "neqs      ";
    
    // line 982
    Insp[146] = C_false;
    
    // line 982
    Insq[146] = 0;
    
    // line 983
    Instr[147] = "neqc      ";
    
    // line 983
    Insp[147] = C_false;
    
    // line 983
    Insq[147] = 0;
    
    // line 984
    Instr[148] = "neqm      ";
    
    // line 984
    Insp[148] = C_false;
    
    // line 984
    Insq[148] = C_intsize;
    
    // line 985
    Instr[149] = "geqi      ";
    
    // line 985
    Insp[149] = C_false;
    
    // line 985
    Insq[149] = 0;
    
    // line 986
    Instr[150] = "geqr      ";
    
    // line 986
    Insp[150] = C_false;
    
    // line 986
    Insq[150] = 0;
    
    // line 987
    Instr[151] = "geqb      ";
    
    // line 987
    Insp[151] = C_false;
    
    // line 987
    Insq[151] = 0;
    
    // line 988
    Instr[152] = "geqs      ";
    
    // line 988
    Insp[152] = C_false;
    
    // line 988
    Insq[152] = 0;
    
    // line 989
    Instr[153] = "geqc      ";
    
    // line 989
    Insp[153] = C_false;
    
    // line 989
    Insq[153] = 0;
    
    // line 990
    Instr[154] = "geqm      ";
    
    // line 990
    Insp[154] = C_false;
    
    // line 990
    Insq[154] = C_intsize;
    
    // line 991
    Instr[155] = "grti      ";
    
    // line 991
    Insp[155] = C_false;
    
    // line 991
    Insq[155] = 0;
    
    // line 992
    Instr[156] = "grtr      ";
    
    // line 992
    Insp[156] = C_false;
    
    // line 992
    Insq[156] = 0;
    
    // line 993
    Instr[157] = "grtb      ";
    
    // line 993
    Insp[157] = C_false;
    
    // line 993
    Insq[157] = 0;
    
    // line 994
    Instr[158] = "grts      ";
    
    // line 994
    Insp[158] = C_false;
    
    // line 994
    Insq[158] = 0;
    
    // line 995
    Instr[159] = "grtc      ";
    
    // line 995
    Insp[159] = C_false;
    
    // line 995
    Insq[159] = 0;
    
    // line 996
    Instr[160] = "grtm      ";
    
    // line 996
    Insp[160] = C_false;
    
    // line 996
    Insq[160] = C_intsize;
    
    // line 997
    Instr[161] = "leqi      ";
    
    // line 997
    Insp[161] = C_false;
    
    // line 997
    Insq[161] = 0;
    
    // line 998
    Instr[162] = "leqr      ";
    
    // line 998
    Insp[162] = C_false;
    
    // line 998
    Insq[162] = 0;
    
    // line 999
    Instr[163] = "leqb      ";
    
    // line 999
    Insp[163] = C_false;
    
    // line 999
    Insq[163] = 0;
    
    // line 1000
    Instr[164] = "leqs      ";
    
    // line 1000
    Insp[164] = C_false;
    
    // line 1000
    Insq[164] = 0;
    
    // line 1001
    Instr[165] = "leqc      ";
    
    // line 1001
    Insp[165] = C_false;
    
    // line 1001
    Insq[165] = 0;
    
    // line 1002
    Instr[166] = "leqm      ";
    
    // line 1002
    Insp[166] = C_false;
    
    // line 1002
    Insq[166] = C_intsize;
    
    // line 1003
    Instr[167] = "lesi      ";
    
    // line 1003
    Insp[167] = C_false;
    
    // line 1003
    Insq[167] = 0;
    
    // line 1004
    Instr[168] = "lesr      ";
    
    // line 1004
    Insp[168] = C_false;
    
    // line 1004
    Insq[168] = 0;
    
    // line 1005
    Instr[169] = "lesb      ";
    
    // line 1005
    Insp[169] = C_false;
    
    // line 1005
    Insq[169] = 0;
    
    // line 1006
    Instr[170] = "less      ";
    
    // line 1006
    Insp[170] = C_false;
    
    // line 1006
    Insq[170] = 0;
    
    // line 1007
    Instr[171] = "lesc      ";
    
    // line 1007
    Insp[171] = C_false;
    
    // line 1007
    Insq[171] = 0;
    
    // line 1008
    Instr[172] = "lesm      ";
    
    // line 1008
    Insp[172] = C_false;
    
    // line 1008
    Insq[172] = C_intsize;
    
    // line 1009
    Instr[173] = "ente      ";
    
    // line 1009
    Insp[173] = C_false;
    
    // line 1009
    Insq[173] = C_intsize;
    
    // line 1010
    Instr[174] = "mrkl*     ";
    
    // line 1010
    Insp[174] = C_false;
    
    // line 1010
    Insq[174] = C_intsize;
    
    // line 1013
    Sptable[0] = "get       ";
    
    // line 1013
    Sptable[1] = "put       ";
    
    // line 1014
    Sptable[2] = "---       ";
    
    // line 1014
    Sptable[3] = "rln       ";
    
    // line 1015
    Sptable[4] = "new       ";
    
    // line 1015
    Sptable[5] = "wln       ";
    
    // line 1016
    Sptable[6] = "wrs       ";
    
    // line 1016
    Sptable[7] = "eln       ";
    
    // line 1017
    Sptable[8] = "wri       ";
    
    // line 1017
    Sptable[9] = "wrr       ";
    
    // line 1018
    Sptable[10] = "wrc       ";
    
    // line 1018
    Sptable[11] = "rdi       ";
    
    // line 1019
    Sptable[12] = "rdr       ";
    
    // line 1019
    Sptable[13] = "rdc       ";
    
    // line 1020
    Sptable[14] = "sin       ";
    
    // line 1020
    Sptable[15] = "cos       ";
    
    // line 1021
    Sptable[16] = "exp       ";
    
    // line 1021
    Sptable[17] = "log       ";
    
    // line 1022
    Sptable[18] = "sqt       ";
    
    // line 1022
    Sptable[19] = "atn       ";
    
    // line 1023
    Sptable[20] = "---       ";
    
    // line 1023
    Sptable[21] = "pag       ";
    
    // line 1024
    Sptable[22] = "rsf       ";
    
    // line 1024
    Sptable[23] = "rwf       ";
    
    // line 1025
    Sptable[24] = "wrb       ";
    
    // line 1025
    Sptable[25] = "wrf       ";
    
    // line 1026
    Sptable[26] = "dsp       ";
    
    // line 1026
    Sptable[27] = "wbf       ";
    
    // line 1027
    Sptable[28] = "wbi       ";
    
    // line 1027
    Sptable[29] = "wbr       ";
    
    // line 1028
    Sptable[30] = "wbc       ";
    
    // line 1028
    Sptable[31] = "wbb       ";
    
    // line 1029
    Sptable[32] = "rbf       ";
    
    // line 1029
    Sptable[33] = "rsb       ";
    
    // line 1030
    Sptable[34] = "rwb       ";
    
    // line 1030
    Sptable[35] = "gbf       ";
    
    // line 1031
    Sptable[36] = "pbf       ";
    
    // line 1033
    Pc = C_begincode;
    
    // line 1034
    Cp = C_maxstr;
    
    // line 1035
    _FOR_TO(_F.i, 1, 10)
    {
        // line 1035
        _F._slink->Word[_F.i] = ' ';
    }
    _FOR_END(_F.i)
    
    // line 1036
    _FOR_TO(_F.i, 0, C_maxlabel)
    {
        // line 1037
        _F._slink->Labeltab[_F.i].Val = (-1);
        
        // line 1037
        _F._slink->Labeltab[_F.i].St = C_load_entered;
    }
    _FOR_END(_F.i)
    
    // line 1039
    _FOR_TO(_F.i, 1, C_maxfil)
    {
        // line 1039
        Filstate[_F.i] = C_fclosed;
    }
    _FOR_END(_F.i)
    
    // line 1042
    _reset(Prd);
    
    // line 1044
    _F._slink->Iline = 1;
}


// line 1047
//================================================================================
// scope: load_errorl (level : 3)

// activation record
struct Frame_load_errorl
{
   Frame_load* _slink;

    // parameters
    T_beta String;
};

// function body
void P_load_errorl(void* _slink, T_beta String)
{
    // prologue/frame definition
    Frame_load_errorl _F = { (Frame_load*)_slink, String };
    
    // subroutine body
    // line 1048
    Output << _WRITELN;
    
    // line 1049
    Output << "*** Program load error: [" << _format(_F._slink->Iline, 1, 0) << "] " << _F.String << _WRITELN;
    
    // line 1050
    throw NL_1;
}


// line 1053
//================================================================================
// scope: load_dmplabs (level : 3)

// activation record
struct Frame_load_dmplabs
{
   Frame_load* _slink;

    // locals
    T_load_labelrg i;
};

// function body
void P_load_dmplabs(void* _slink)
{
    // prologue/frame definition
    Frame_load_dmplabs _F = { (Frame_load*)_slink };
    
    // subroutine body
    // line 1059
    Output << _WRITELN;
    
    // line 1060
    Output << "Label table" << _WRITELN;
    
    // line 1061
    Output << _WRITELN;
    
    // line 1062
    _FOR_TO(_F.i, 1, C_maxlabel)
    {
        // line 1062
        if((_F._slink->Labeltab[_F.i].Val != (-1)))
        {
            // line 1064
            Output << "Label: " << _format(_F.i, 5, 0) << " value: " << _F._slink->Labeltab[_F.i].Val << ' ';
            
            // line 1065
            if((_F._slink->Labeltab[_F.i].St == C_load_entered))
            {
                // line 1065
                Output << "Entered" << _WRITELN;
            }
            else
            {
                // line 1066
                Output << "Defined" << _WRITELN;
            }
        }
    }
    _FOR_END(_F.i)
    
    // line 1069
    Output << _WRITELN;
}


// line 1073
//================================================================================
// scope: load_update (level : 3)

// activation record
struct Frame_load_update
{
   Frame_load* _slink;

    // parameters
    T_load_labelrg x;

    // locals
    T_address Ad;
    T_address Curr;
    T_boolean Endlist;
    T_instyp Op;
    T_address q;
    T_address Succ;
};

// function body
void P_load_update(void* _slink, T_load_labelrg x)
{
    // prologue/frame definition
    Frame_load_update _F = { (Frame_load*)_slink, x };
    
    // subroutine body
    // line 1079
    if((_F._slink->Labeltab[_F.x].St == C_load_defined))
    {
        // line 1079
        P_load_errorl(_F._slink, T_beta::C("duplicated label         "));
    }
    else
    {
        // line 1081
        if((_F._slink->Labeltab[_F.x].Val != (-1)))
        {
            // line 1082
            _F.Curr = _F._slink->Labeltab[_F.x].Val;
            
            // line 1082
            _F.Endlist = C_false;
            
            // line 1083
            while((!_F.Endlist))
            {
                // line 1084
                _F.Ad = _F.Curr;
                
                // line 1085
                _F.Op = Store[_F.Ad];
                
                // line 1086
                _F.q = F_getadr(nullptr, T_address::C(((_F.Ad + 1) + _ord(Insp[_F.Op]))));
                
                // line 1087
                _F.Succ = _F.q;
                
                // line 1088
                _F.q = _F._slink->Labelvalue;
                
                // line 1089
                _F.Ad = _F.Curr;
                
                // line 1090
                P_putadr(nullptr, T_address::C(((_F.Ad + 1) + _ord(Insp[_F.Op]))), _F.q);
                
                // line 1091
                if((_F.Succ == (-1)))
                {
                    // line 1091
                    _F.Endlist = C_true;
                }
                else
                {
                    // line 1092
                    _F.Curr = _F.Succ;
                }
            }
        }
        
        // line 1095
        _F._slink->Labeltab[_F.x].St = C_load_defined;
        
        // line 1096
        _F._slink->Labeltab[_F.x].Val = _F._slink->Labelvalue;
        
        { /* NOP */ }
    }
}


// line 1100
//================================================================================
// scope: load_getnxt (level : 3)

// activation record
struct Frame_load_getnxt
{
   Frame_load* _slink;
};

// function body
void P_load_getnxt(void* _slink)
{
    // prologue/frame definition
    Frame_load_getnxt _F = { (Frame_load*)_slink };
    
    // subroutine body
    // line 1102
    _F._slink->Ch = ' ';
    
    // line 1103
    if((!_eoln(Prd)))
    {
        // line 1103
        Prd >> _F._slink->Ch;
    }
}


// line 1106
//================================================================================
// scope: load_skpspc (level : 3)

// activation record
struct Frame_load_skpspc
{
   Frame_load* _slink;
};

// function body
void P_load_skpspc(void* _slink)
{
    // prologue/frame definition
    Frame_load_skpspc _F = { (Frame_load*)_slink };
    
    // subroutine body
    // line 1108
    while(((_F._slink->Ch == ' ') && (!_eoln(Prd))))
    {
        // line 1108
        P_load_getnxt(_F._slink);
    }
}


// line 1111
//================================================================================
// scope: load_getlin (level : 3)

// activation record
struct Frame_load_getlin
{
   Frame_load* _slink;
};

// function body
void P_load_getlin(void* _slink)
{
    // prologue/frame definition
    Frame_load_getlin _F = { (Frame_load*)_slink };
    
    // subroutine body
    // line 1113
    Prd >> _READLN;
    
    // line 1114
    _F._slink->Iline = (_F._slink->Iline + 1);
}


// line 1119
//================================================================================
// scope: load_generate (level : 3)

// activation record
struct Frame_load_generate
{
   Frame_load* _slink;

    // locals
    T_boolean Again;
    T_integer x;
};

// function body
void P_load_generate(void* _slink)
{
    // prologue/frame definition
    Frame_load_generate _F = { (Frame_load*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('i');
    _setLiteral1.set('l');
    _setLiteral1.set('q');
    _setLiteral1.set(' ');
    _setLiteral1.set('!');
    _setLiteral1.set(':');
    
    // subroutine body
    // line 1123
    _F.Again = C_true;
    
    // line 1124
    while(_F.Again)
    {
        // line 1125
        if(_eof(Prd))
        {
            // line 1125
            P_load_errorl(_F._slink, T_beta::C("unexpected eof on input  "));
        }
        
        // line 1126
        P_load_getnxt(_F._slink);
        
        // line 1127
        if((!(_setLiteral1 & _F._slink->Ch)))
        {
            // line 1128
            P_load_errorl(_F._slink, T_beta::C("unexpected line start    "));
        }
        
        // line 1129
        switch(_F._slink->Ch)
        {
        case 'i':
            // line 1130
            P_load_getlin(_F._slink);
            break;
        
        case 'l':
            // line 1131
            Prd >> _F.x;
            
            // line 1132
            P_load_getnxt(_F._slink);
            
            // line 1133
            if((_F._slink->Ch == '='))
            {
                // line 1133
                Prd >> _F._slink->Labelvalue;
            }
            else
            {
                // line 1134
                _F._slink->Labelvalue = Pc;
            }
            
            // line 1135
            P_load_update(_F._slink, T_load_labelrg::C(_F.x));
            
            // line 1135
            P_load_getlin(_F._slink);
            break;
        
        case 'q':
            // line 1137
            _F.Again = C_false;
            
            // line 1137
            P_load_getlin(_F._slink);
            break;
        
        case ' ':
            // line 1138
            P_load_getnxt(_F._slink);
            
            // line 1138
            P_load_assemble(_F._slink);
            break;
        
        case ':':
            // line 1141
            Prd >> _F.x;
            
            // line 1142
            if(C_dosrclin)
            {
                // line 1145
                Store[Pc] = 174;
                
                // line 1145
                Pc = (Pc + 1);
                
                // line 1146
                P_putint(nullptr, Pc, _F.x);
                
                // line 1146
                Pc = (Pc + C_intsize);
            }
            
            // line 1151
            while((!_eoln(Prd)))
            {
                // line 1152
                Prd >> c;
            }
            
            // line 1153
            P_load_getlin(_F._slink);
            break;
        }
        
        { /* NOP */ }
    }
}


// line 1160
//================================================================================
// scope: load_assemble (level : 3)

// types
typedef _T_Array< 1, 1000, T_char > T_load_assemble_array_40;

// forward declarations
void P_load_assemble_lookup(void* _slink, T_load_labelrg x);
void P_load_assemble_labelsearch(void* _slink);
void P_load_assemble_getname(void* _slink);
void P_load_assemble_storeop(void* _slink);
void P_load_assemble_storep(void* _slink);
void P_load_assemble_storeq(void* _slink);
void P_load_assemble_storeq1(void* _slink);

// activation record
struct Frame_load_assemble
{
   Frame_load* _slink;

    // locals
    T_char c;
    T_integer i;
    T_integer l;
    T_integer Lb;
    T_alfa Name;
    T_real r;
    T_settype s;
    T_integer S1;
    T_load_assemble_array_40 Str;
    T_integer t;
    T_integer Ub;
    T_integer x;
};

// function body
void P_load_assemble(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble _F = { (Frame_load*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    
    // subroutine body
    // line 1220
    p = 0;
    
    // line 1220
    q = 0;
    
    // line 1220
    Op = 0;
    
    // line 1221
    P_load_assemble_getname(&_F);
    
    // line 1223
    while((_strcmpNE<10>(Instr[Op], _F.Name) && (Op < C_maxins)))
    {
        // line 1223
        Op = (Op + 1);
    }
    
    // line 1224
    if((Op == C_maxins))
    {
        // line 1224
        P_load_errorl(_F._slink, T_beta::C("illegal instruction      "));
    }
    
    // line 1226
    switch(Op)
    {
    case 0:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 2:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 4:
    case 120:
        // line 1230
        Prd >> p >> q;
        
        // line 1230
        P_load_assemble_storeop(&_F);
        
        // line 1230
        P_load_assemble_storep(&_F);
        
        // line 1231
        P_load_assemble_storeq(&_F);
        break;
    
    case 12:
        // line 1236
        Prd >> _F.t;
        
        // line 1236
        p = _F.t;
        
        // line 1236
        P_load_assemble_labelsearch(&_F);
        
        // line 1236
        P_load_assemble_storeop(&_F);
        
        // line 1237
        P_load_assemble_storep(&_F);
        
        // line 1237
        P_load_assemble_storeq(&_F);
        break;
    
    case 11:
    case 113:
        // line 1240
        Prd >> p;
        
        // line 1240
        P_load_assemble_storeop(&_F);
        
        // line 1240
        P_load_assemble_storep(&_F);
        break;
    
    case 142:
    case 148:
    case 154:
    case 160:
    case 166:
    case 172:
    case 5:
    case 16:
    case 55:
    case 117:
    case 118:
    case 1:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 3:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 9:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 10:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 57:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
        // line 1253
        Prd >> q;
        
        // line 1253
        P_load_assemble_storeop(&_F);
        
        // line 1253
        P_load_assemble_storeq(&_F);
        break;
    
    case 63:
    case 64:
        // line 1256
        Prd >> q;
        
        // line 1256
        Prd >> Q1;
        
        // line 1256
        P_load_assemble_storeop(&_F);
        
        // line 1256
        P_load_assemble_storeq(&_F);
        
        // line 1256
        P_load_assemble_storeq1(&_F);
        break;
    
    case 23:
    case 24:
    case 25:
    case 119:
    case 13:
    case 173:
        // line 1262
        P_load_assemble_labelsearch(&_F);
        
        // line 1262
        P_load_assemble_storeop(&_F);
        
        // line 1262
        P_load_assemble_storeq(&_F);
        break;
    
    case 112:
    case 114:
        // line 1265
        Prd >> p;
        
        // line 1265
        P_load_assemble_labelsearch(&_F);
        
        // line 1265
        P_load_assemble_storeop(&_F);
        
        // line 1265
        P_load_assemble_storep(&_F);
        
        // line 1265
        P_load_assemble_storeq(&_F);
        break;
    
    case 15:
        // line 1267
        P_load_skpspc(_F._slink);
        
        // line 1267
        P_load_assemble_getname(&_F);
        
        // line 1268
        while(_strcmpNE<10>(_F.Name, Sptable[q]))
        {
            // line 1269
            q = (q + 1);
            
            // line 1269
            if((q > C_maxsp))
            {
                // line 1270
                P_load_errorl(_F._slink, T_beta::C("std proc/func not found  "));
            }
        }
        
        // line 1272
        P_load_assemble_storeop(&_F);
        
        // line 1272
        P_load_assemble_storeq(&_F);
        break;
    
    case 7:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
        // line 1275
        switch(Op)
        {
        case 123:
            // line 1276
            Prd >> _F.i;
            
            // line 1276
            P_load_assemble_storeop(&_F);
            
            // line 1277
            if(((Pc + C_intsize) > Cp))
            {
                // line 1278
                P_load_errorl(_F._slink, T_beta::C("Program code overflow    "));
            }
            
            // line 1279
            P_putint(nullptr, Pc, _F.i);
            
            // line 1279
            Pc = (Pc + C_intsize);
            break;
        
        case 124:
            // line 1282
            Prd >> _F.r;
            
            // line 1283
            Cp = (Cp - C_realsize);
            
            // line 1284
            P_alignd(nullptr, T_address::C(C_realal), Cp);
            
            // line 1285
            if((Cp <= 0))
            {
                // line 1286
                P_load_errorl(_F._slink, T_beta::C("constant table overflow  "));
            }
            
            // line 1287
            P_putrel(nullptr, Cp, _F.r);
            
            // line 1287
            q = Cp;
            
            // line 1288
            P_load_assemble_storeop(&_F);
            
            // line 1288
            P_load_assemble_storeq(&_F);
            break;
        
        case 125:
            // line 1291
            P_load_assemble_storeop(&_F);
            break;
        
        case 126:
            // line 1293
            Prd >> q;
            
            // line 1293
            P_load_assemble_storeop(&_F);
            
            // line 1294
            if(((Pc + 1) > Cp))
            {
                // line 1295
                P_load_errorl(_F._slink, T_beta::C("Program code overflow    "));
            }
            
            // line 1296
            P_putbol(nullptr, Pc, (q != 0));
            
            // line 1296
            Pc = (Pc + 1);
            break;
        
        case 127:
            // line 1299
            P_load_skpspc(_F._slink);
            
            // line 1300
            if((_F._slink->Ch != '\''))
            {
                // line 1301
                P_load_errorl(_F._slink, T_beta::C("illegal character        "));
            }
            
            // line 1302
            P_load_getnxt(_F._slink);
            
            // line 1302
            _F.c = _F._slink->Ch;
            
            // line 1303
            P_load_getnxt(_F._slink);
            
            // line 1304
            if((_F._slink->Ch != '\''))
            {
                // line 1305
                P_load_errorl(_F._slink, T_beta::C("illegal character        "));
            }
            
            // line 1306
            P_load_assemble_storeop(&_F);
            
            // line 1307
            if(((Pc + 1) > Cp))
            {
                // line 1308
                P_load_errorl(_F._slink, T_beta::C("Program code overflow    "));
            }
            
            // line 1309
            P_putchr(nullptr, Pc, _F.c);
            
            // line 1309
            Pc = (Pc + 1);
            break;
        
        case 7:
            // line 1311
            P_load_skpspc(_F._slink);
            
            // line 1312
            if((_F._slink->Ch != '('))
            {
                // line 1312
                P_load_errorl(_F._slink, T_beta::C("ldc() expected           "));
            }
            
            // line 1313
            _F.s = _setLiteral1;
            
            // line 1313
            P_load_getnxt(_F._slink);
            
            // line 1314
            while((_F._slink->Ch != ')'))
            {
                // line 1315
                Prd >> _F.S1;
                
                // line 1315
                P_load_getnxt(_F._slink);
                
                // line 1315
                {
                    _T_GenericSet _setLiteral2;
                    _setLiteral2.set(_F.S1);
                    
                    _F.s = (_F.s + _setLiteral2);
                }
            }
            
            // line 1317
            Cp = (Cp - C_setsize);
            
            // line 1318
            P_alignd(nullptr, T_address::C(C_setal), Cp);
            
            // line 1319
            if((Cp <= 0))
            {
                // line 1320
                P_load_errorl(_F._slink, T_beta::C("constant table overflow  "));
            }
            
            // line 1321
            P_putset(nullptr, Cp, _F.s);
            
            // line 1322
            q = Cp;
            
            // line 1323
            P_load_assemble_storeop(&_F);
            
            // line 1323
            P_load_assemble_storeq(&_F);
            break;
        }
        break;
    
    case 26:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
        // line 1329
        Prd >> _F.Lb >> _F.Ub;
        
        // line 1330
        if((Op == 95))
        {
            // line 1330
            q = _F.Lb;
        }
        else
        {
            // line 1333
            Cp = (Cp - C_intsize);
            
            // line 1334
            P_alignd(nullptr, T_address::C(C_intal), Cp);
            
            // line 1335
            if((Cp <= 0))
            {
                // line 1335
                P_load_errorl(_F._slink, T_beta::C("constant table overflow  "));
            }
            
            // line 1336
            P_putint(nullptr, Cp, _F.Ub);
            
            // line 1337
            Cp = (Cp - C_intsize);
            
            // line 1338
            P_alignd(nullptr, T_address::C(C_intal), Cp);
            
            // line 1339
            if((Cp <= 0))
            {
                // line 1339
                P_load_errorl(_F._slink, T_beta::C("constant table overflow  "));
            }
            
            // line 1340
            P_putint(nullptr, Cp, _F.Lb);
            
            // line 1340
            q = Cp;
        }
        
        // line 1342
        P_load_assemble_storeop(&_F);
        
        // line 1342
        P_load_assemble_storeq(&_F);
        break;
    
    case 56:
        // line 1345
        Prd >> _F.l;
        
        // line 1345
        P_load_skpspc(_F._slink);
        
        // line 1346
        _FOR_TO(_F.i, 1, C_stringlgth)
        {
            // line 1346
            _F.Str[_F.i] = ' ';
        }
        _FOR_END(_F.i)
        
        // line 1347
        if((_F._slink->Ch != '\''))
        {
            // line 1347
            P_load_errorl(_F._slink, T_beta::C("bad string format        "));
        }
        
        // line 1348
        _F.i = 0;
        
        // line 1349
        do
        {
            // line 1350
            if(_eoln(Prd))
            {
                // line 1350
                P_load_errorl(_F._slink, T_beta::C("unterminated string      "));
            }
            
            // line 1351
            P_load_getnxt(_F._slink);
            
            // line 1352
            _F.c = _F._slink->Ch;
            
            // line 1352
            if(((_F._slink->Ch == '\'') && (Prd.bufferVar() == '\'')))
            {
                // line 1353
                P_load_getnxt(_F._slink);
                
                // line 1353
                _F.c = ' ';
            }
            
            // line 1355
            if((_F.c != '\''))
            {
                // line 1356
                if((_F.i >= C_stringlgth))
                {
                    // line 1356
                    P_load_errorl(_F._slink, T_beta::C("string overflow          "));
                }
                
                // line 1357
                _F.Str[(_F.i + 1)] = _F._slink->Ch;
                
                // line 1358
                _F.i = (_F.i + 1);
            }
        }
        while(!(_F.c == '\''));
        
        // line 1362
        Cp = (Cp - _F.l);
        
        // line 1363
        if((Cp <= 0))
        {
            // line 1363
            P_load_errorl(_F._slink, T_beta::C("constant table overflow  "));
        }
        
        // line 1364
        q = Cp;
        
        // line 1365
        _FOR_TO(_F.x, 1, _F.l)
        {
            // line 1365
            P_putchr(nullptr, T_address::C(((q + _F.x) - 1)), _F.Str[_F.x]);
        }
        _FOR_END(_F.x)
        
        // line 1371
        P_load_assemble_storeop(&_F);
        
        // line 1371
        P_load_assemble_storeq(&_F);
        break;
    
    case 14:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 17:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 18:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 19:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 20:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 21:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 22:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 59:
    case 133:
    case 134:
    case 135:
    case 136:
    case 6:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 58:
    case 60:
    case 62:
    case 110:
    case 111:
    case 115:
    case 116:
        // line 1393
        P_load_assemble_storeop(&_F);
        break;
    
    case 61:
        // line 1397
        P_load_assemble_storeop(&_F);
        
        // line 1397
        q = 0;
        
        // line 1397
        P_load_assemble_storeq(&_F);
        break;
    }
    
    // line 1401
    P_load_getlin(_F._slink);
}


// line 1166
//================================================================================
// scope: load_assemble_lookup (level : 4)

// activation record
struct Frame_load_assemble_lookup
{
   Frame_load_assemble* _slink;

    // parameters
    T_load_labelrg x;
};

// function body
void P_load_assemble_lookup(void* _slink, T_load_labelrg x)
{
    // prologue/frame definition
    Frame_load_assemble_lookup _F = { (Frame_load_assemble*)_slink, x };
    
    // subroutine body
    // line 1167
    switch(_F._slink->_slink->Labeltab[_F.x].St)
    {
    case C_load_entered:
        // line 1168
        q = _F._slink->_slink->Labeltab[_F.x].Val;
        
        // line 1169
        _F._slink->_slink->Labeltab[_F.x].Val = Pc;
        break;
    
    case C_load_defined:
        // line 1171
        q = _F._slink->_slink->Labeltab[_F.x].Val;
        break;
    }
}


// line 1175
//================================================================================
// scope: load_assemble_labelsearch (level : 4)

// activation record
struct Frame_load_assemble_labelsearch
{
   Frame_load_assemble* _slink;

    // locals
    T_load_labelrg x;
};

// function body
void P_load_assemble_labelsearch(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_labelsearch _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    // line 1177
    while(((_F._slink->_slink->Ch != 'l') && (!_eoln(Prd))))
    {
        // line 1177
        Prd >> _F._slink->_slink->Ch;
    }
    
    // line 1178
    Prd >> _F.x;
    
    // line 1178
    P_load_assemble_lookup(_F._slink, _F.x);
}


// line 1181
//================================================================================
// scope: load_assemble_getname (level : 4)

// activation record
struct Frame_load_assemble_getname
{
   Frame_load_assemble* _slink;

    // locals
    T_alfainx i;
};

// function body
void P_load_assemble_getname(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_getname _F = { (Frame_load_assemble*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('a', 'z');
    
    // subroutine body
    // line 1184
    if(_eof(Prd))
    {
        // line 1184
        P_load_errorl(_F._slink->_slink, T_beta::C("unexpected eof on input  "));
    }
    
    // line 1185
    _FOR_TO(_F.i, 1, C_maxalfa)
    {
        // line 1185
        _F._slink->_slink->Word[_F.i] = ' ';
    }
    _FOR_END(_F.i)
    
    // line 1186
    _F.i = 1;
    
    // line 1187
    while((_setLiteral1 & _F._slink->_slink->Ch))
    {
        // line 1188
        if((_F.i == C_maxalfa))
        {
            // line 1188
            P_load_errorl(_F._slink->_slink, T_beta::C("Opcode label is too long "));
        }
        
        // line 1189
        _F._slink->_slink->Word[_F.i] = _F._slink->_slink->Ch;
        
        // line 1190
        _F.i = (_F.i + 1);
        
        // line 1190
        _F._slink->_slink->Ch = ' ';
        
        // line 1191
        if((!_eoln(Prd)))
        {
            // line 1191
            Prd >> _F._slink->_slink->Ch;
        }
        
        { /* NOP */ }
    }
    
    // line 1193
    _pack(_F._slink->_slink->Word, 1, _F._slink->Name);
}


// line 1196
//================================================================================
// scope: load_assemble_storeop (level : 4)

// activation record
struct Frame_load_assemble_storeop
{
   Frame_load_assemble* _slink;
};

// function body
void P_load_assemble_storeop(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_storeop _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    // line 1198
    if(((Pc + 1) > Cp))
    {
        // line 1198
        P_load_errorl(_F._slink->_slink, T_beta::C("Program code overflow    "));
    }
    
    // line 1199
    Store[Pc] = Op;
    
    // line 1199
    Pc = (Pc + 1);
}


// line 1202
//================================================================================
// scope: load_assemble_storep (level : 4)

// activation record
struct Frame_load_assemble_storep
{
   Frame_load_assemble* _slink;
};

// function body
void P_load_assemble_storep(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_storep _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    // line 1204
    if(((Pc + 1) > Cp))
    {
        // line 1204
        P_load_errorl(_F._slink->_slink, T_beta::C("Program code overflow    "));
    }
    
    // line 1205
    Store[Pc] = p;
    
    // line 1205
    Pc = (Pc + 1);
}


// line 1208
//================================================================================
// scope: load_assemble_storeq (level : 4)

// activation record
struct Frame_load_assemble_storeq
{
   Frame_load_assemble* _slink;
};

// function body
void P_load_assemble_storeq(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_storeq _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    // line 1210
    if(((Pc + C_adrsize) > Cp))
    {
        // line 1210
        P_load_errorl(_F._slink->_slink, T_beta::C("Program code overflow    "));
    }
    
    // line 1211
    P_putadr(nullptr, Pc, q);
    
    // line 1211
    Pc = (Pc + C_adrsize);
}


// line 1214
//================================================================================
// scope: load_assemble_storeq1 (level : 4)

// activation record
struct Frame_load_assemble_storeq1
{
   Frame_load_assemble* _slink;
};

// function body
void P_load_assemble_storeq1(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_storeq1 _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    // line 1216
    if(((Pc + C_adrsize) > Cp))
    {
        // line 1216
        P_load_errorl(_F._slink->_slink, T_beta::C("Program code overflow    "));
    }
    
    // line 1217
    P_putadr(nullptr, Pc, Q1);
    
    // line 1217
    Pc = (Pc + C_adrsize);
}


// line 1436
//================================================================================
// scope: pmd (level : 2)

// forward declarations
void P_pmd_pt(void* _slink);

// activation record
struct Frame_pmd
{
    // locals
    T_integer i;
    T_integer s;
};

// function body
void P_pmd(void* _slink)
{
    // prologue/frame definition
    Frame_pmd _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1449
    if(C_dopmd)
    {
        // line 1450
        Output << _WRITELN;
        
        // line 1451
        Output << "pc = ";
        
        // line 1451
        P_wrthex(nullptr, (Pc - 1), C_maxdigh);
        
        // line 1452
        Output << " op = " << _format(Op, 3, 0);
        
        // line 1453
        Output << " sp = ";
        
        // line 1453
        P_wrthex(nullptr, Sp, C_maxdigh);
        
        // line 1454
        Output << " mp = ";
        
        // line 1454
        P_wrthex(nullptr, Mp, C_maxdigh);
        
        // line 1455
        Output << " np = ";
        
        // line 1455
        P_wrthex(nullptr, Np, C_maxdigh);
        
        // line 1456
        Output << " cp = ";
        
        // line 1456
        P_wrthex(nullptr, Cp, C_maxdigh);
        
        // line 1457
        Output << _WRITELN;
        
        // line 1458
        Output << "------------------------------------------------------------";
        
        // line 1459
        Output << "-------------" << _WRITELN;
        
        // line 1461
        Output << _WRITELN;
        
        // line 1462
        Output << "Stack" << _WRITELN;
        
        // line 1463
        Output << _WRITELN;
        
        // line 1464
        _F.s = Sp;
        
        // line 1464
        _F.i = 0;
        
        // line 1465
        while((_F.s >= Pctop))
        {
            // line 1465
            P_pmd_pt(&_F);
        }
        
        // line 1466
        Output << _WRITELN;
        
        // line 1467
        Output << _WRITELN;
        
        // line 1468
        Output << "Constants" << _WRITELN;
        
        // line 1469
        Output << _WRITELN;
        
        // line 1470
        _F.s = C_maxstr;
        
        // line 1470
        _F.i = 0;
        
        // line 1471
        while((_F.s >= Cp))
        {
            // line 1471
            P_pmd_pt(&_F);
        }
        
        // line 1472
        Output << _WRITELN;
        
        // line 1473
        Output << _WRITELN;
        
        // line 1474
        Output << "Heap" << _WRITELN;
        
        // line 1475
        Output << _WRITELN;
        
        // line 1476
        _F.s = (Cp - 1);
        
        // line 1476
        _F.i = 0;
        
        // line 1477
        while((_F.s >= Np))
        {
            // line 1477
            P_pmd_pt(&_F);
        }
        
        // line 1478
        Output << _WRITELN;
        
        { /* NOP */ }
    }
}


// line 1439
//================================================================================
// scope: pmd_pt (level : 3)

// activation record
struct Frame_pmd_pt
{
   Frame_pmd* _slink;
};

// function body
void P_pmd_pt(void* _slink)
{
    // prologue/frame definition
    Frame_pmd_pt _F = { (Frame_pmd*)_slink };
    
    // subroutine body
    // line 1440
    if((_F._slink->i == 0))
    {
        // line 1440
        P_wrthex(nullptr, _F._slink->s, C_maxdigh);
        
        // line 1440
        Output << ": ";
    }
    
    // line 1441
    P_wrthex(nullptr, Store[_F._slink->s], 2);
    
    // line 1441
    Output << ' ';
    
    // line 1442
    _F._slink->s = (_F._slink->s - 1);
    
    // line 1443
    _F._slink->i = (_F._slink->i + 1);
    
    // line 1444
    if((_F._slink->i == 16))
    {
        // line 1445
        Output << _WRITELN;
        
        // line 1445
        _F._slink->i = 0;
    }
    
    { /* NOP */ }
}


// line 1482
//================================================================================
// scope: errori (level : 2)

// activation record
struct Frame_errori
{
    // parameters
    T_beta String;
};

// function body
void P_errori(void* _slink, T_beta String)
{
    // prologue/frame definition
    Frame_errori _F = {String };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1483
    Output << _WRITELN;
    
    // line 1483
    Output << "*** Runtime error";
    
    // line 1484
    if((Srclin > 0))
    {
        // line 1484
        Output << " [" << _format(Srclin, 1, 0) << ']';
    }
    
    // line 1485
    Output << ": " << _F.String << _WRITELN;
    
    // line 1486
    P_pmd(nullptr);
    
    // line 1486
    throw NL_1;
}


// line 1489
//================================================================================
// scope: base (level : 2)

// activation record
struct Frame_base
{
    // parameters
    T_integer Ld;

    // locals
    T_address _fnvalue;
    T_address Ad;
};

// function body
T_address F_base(void* _slink, T_integer Ld)
{
    // prologue/frame definition
    Frame_base _F = {Ld };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1491
    _F.Ad = Mp;
    
    // line 1492
    while((_F.Ld > 0))
    {
        // line 1492
        _F.Ad = F_getadr(nullptr, T_address::C((_F.Ad + C_marksl)));
        
        // line 1492
        _F.Ld = (_F.Ld - 1);
    }
    
    // line 1493
    _F._fnvalue = _F.Ad;
    
    // epilogue
    return _F._fnvalue;
}


// line 1496
//================================================================================
// scope: compare (level : 2)

// activation record
struct Frame_compare
{};

// function body
void P_compare(void* _slink)
{
    // prologue/frame definition
    Frame_compare _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1499
    P_popadr(nullptr, A2);
    
    // line 1500
    P_popadr(nullptr, A1);
    
    // line 1501
    i = 0;
    
    // line 1501
    b = C_true;
    
    // line 1502
    while((b && (i != q)))
    {
        // line 1503
        if((Store[(A1 + i)] == Store[(A2 + i)]))
        {
            // line 1503
            i = (i + 1);
        }
        else
        {
            // line 1504
            b = C_false;
        }
    }
}


// line 1507
//================================================================================
// scope: valfil (level : 2)

// activation record
struct Frame_valfil
{
    // parameters
    T_address Fa;

    // locals
    T_integer Ff;
    T_integer i;
};

// function body
void P_valfil(void* _slink, T_address Fa)
{
    // prologue/frame definition
    Frame_valfil _F = {Fa };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1510
    if((Store[_F.Fa] == 0))
    {
        // line 1511
        if((_F.Fa == (Pctop + C_inputoff)))
        {
            // line 1511
            _F.Ff = C_inputfn;
        }
        else
        {
            // line 1512
            if((_F.Fa == (Pctop + C_outputoff)))
            {
                // line 1512
                _F.Ff = C_outputfn;
            }
            else
            {
                // line 1513
                if((_F.Fa == (Pctop + C_prdoff)))
                {
                    // line 1513
                    _F.Ff = C_prdfn;
                }
                else
                {
                    // line 1514
                    if((_F.Fa == (Pctop + C_prroff)))
                    {
                        // line 1514
                        _F.Ff = C_prrfn;
                    }
                    else
                    {
                        // line 1516
                        _F.i = 5;
                        
                        // line 1517
                        _F.Ff = 0;
                        
                        // line 1518
                        while((_F.i <= C_maxfil))
                        {
                            // line 1519
                            if((Filstate[_F.i] == C_fclosed))
                            {
                                // line 1519
                                _F.Ff = _F.i;
                                
                                // line 1519
                                _F.i = C_maxfil;
                            }
                            
                            // line 1520
                            _F.i = (_F.i + 1);
                        }
                        
                        // line 1522
                        if((_F.Ff == 0))
                        {
                            // line 1522
                            P_errori(nullptr, T_beta::C("To many files            "));
                        }
                        
                        { /* NOP */ }
                    }
                }
            }
        }
        
        // line 1524
        Store[_F.Fa] = _F.Ff;
    }
}


// line 1528
//================================================================================
// scope: valfilwm (level : 2)

// activation record
struct Frame_valfilwm
{
    // parameters
    T_address Fa;
};

// function body
void P_valfilwm(void* _slink, T_address Fa)
{
    // prologue/frame definition
    Frame_valfilwm _F = {Fa };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1530
    P_valfil(nullptr, _F.Fa);
    
    // line 1531
    if((Filstate[Store[_F.Fa]] != C_fwrite))
    {
        // line 1531
        P_errori(nullptr, T_beta::C("File not in write mode   "));
    }
}


// line 1534
//================================================================================
// scope: valfilrm (level : 2)

// activation record
struct Frame_valfilrm
{
    // parameters
    T_address Fa;
};

// function body
void P_valfilrm(void* _slink, T_address Fa)
{
    // prologue/frame definition
    Frame_valfilrm _F = {Fa };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1536
    P_valfil(nullptr, _F.Fa);
    
    // line 1537
    if((Filstate[Store[_F.Fa]] != C_fread))
    {
        // line 1537
        P_errori(nullptr, T_beta::C("File not in read mode    "));
    }
}


// line 1540
//================================================================================
// scope: getop (level : 2)

// activation record
struct Frame_getop
{};

// function body
void P_getop(void* _slink)
{
    // prologue/frame definition
    Frame_getop _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1544
    Op = Store[Pc];
    
    // line 1544
    Pc = (Pc + 1);
}


// line 1548
//================================================================================
// scope: getp (level : 2)

// activation record
struct Frame_getp
{};

// function body
void P_getp(void* _slink)
{
    // prologue/frame definition
    Frame_getp _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1552
    p = Store[Pc];
    
    // line 1552
    Pc = (Pc + 1);
}


// line 1556
//================================================================================
// scope: getq (level : 2)

// activation record
struct Frame_getq
{};

// function body
void P_getq(void* _slink)
{
    // prologue/frame definition
    Frame_getq _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1560
    q = F_getadr(nullptr, Pc);
    
    // line 1560
    Pc = (Pc + C_adrsize);
}


// line 1564
//================================================================================
// scope: getq1 (level : 2)

// activation record
struct Frame_getq1
{};

// function body
void P_getq1(void* _slink)
{
    // prologue/frame definition
    Frame_getq1 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1568
    Q1 = F_getadr(nullptr, Pc);
    
    // line 1568
    Pc = (Pc + C_adrsize);
}


// line 1585
//================================================================================
// scope: repspc (level : 2)

// activation record
struct Frame_repspc
{
    // locals
    T_address Ad;
    T_address l;
};

// function body
void P_repspc(void* _slink)
{
    // prologue/frame definition
    Frame_repspc _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1588
    Output << _WRITELN;
    
    // line 1589
    Output << "Heap space breakdown" << _WRITELN;
    
    // line 1590
    Output << _WRITELN;
    
    // line 1591
    _F.Ad = Np;
    
    // line 1592
    while((_F.Ad < Cp))
    {
        // line 1593
        _F.l = F_getadr(nullptr, _F.Ad);
        
        // line 1594
        Output << "addr: ";
        
        // line 1594
        P_wrthex(nullptr, _F.Ad, C_maxdigh);
        
        // line 1594
        Output << ": " << _format(_abs(_F.l), 6, 0) << ": ";
        
        // line 1595
        if((_F.l >= 0))
        {
            // line 1595
            Output << "free" << _WRITELN;
        }
        else
        {
            // line 1595
            Output << "alloc" << _WRITELN;
        }
        
        // line 1596
        _F.Ad = (_F.Ad + _abs(_F.l));
    }
}


// line 1602
//================================================================================
// scope: fndfre (level : 2)

// activation record
struct Frame_fndfre
{
    // parameters
    T_address Len;
    T_address& Blk;

    // locals
    T_address b;
    T_address l;
};

// function body
void P_fndfre(void* _slink, T_address Len, T_address& Blk)
{
    // prologue/frame definition
    Frame_fndfre _F = {Len, Blk };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1605
    _F.b = 0;
    
    // line 1606
    _F.Blk = Np;
    
    // line 1607
    while((_F.Blk < Cp))
    {
        // line 1608
        _F.l = F_getadr(nullptr, _F.Blk);
        
        // line 1609
        if((_F.l >= (_F.Len + C_adrsize)))
        {
            // line 1609
            _F.b = _F.Blk;
            
            // line 1609
            _F.Blk = Cp;
        }
        else
        {
            // line 1610
            _F.Blk = (_F.Blk + _abs(_F.l));
        }
    }
    
    // line 1612
    if((_F.b > 0))
    {
        // line 1613
        P_putadr(nullptr, _F.b, T_address::C((-(_F.Len + C_adrsize))));
        
        // line 1614
        _F.Blk = (_F.b + C_adrsize);
        
        // line 1615
        if((_F.l > (((_F.Len + C_adrsize) + C_adrsize) + C_resspc)))
        {
            // line 1618
            _F.b = ((_F.b + _F.Len) + C_adrsize);
            
            // line 1619
            P_putadr(nullptr, _F.b, T_address::C((_F.l - (_F.Len + C_adrsize))));
        }
    }
    else
    {
        // line 1621
        _F.Blk = 0;
    }
}


// line 1626
//================================================================================
// scope: cscspc (level : 2)

// activation record
struct Frame_cscspc
{
    // locals
    T_address Ad;
    T_address Ad1;
    T_boolean Done;
    T_address l;
    T_address L1;
};

// function body
void P_cscspc(void* _slink)
{
    // prologue/frame definition
    Frame_cscspc _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1631
    _F.Done = C_false;
    
    // line 1632
    while(((!_F.Done) && (Np < Cp)))
    {
        // line 1633
        _F.l = F_getadr(nullptr, Np);
        
        // line 1634
        if((_F.l >= 0))
        {
            // line 1634
            Np = (Np + F_getadr(nullptr, Np));
        }
        else
        {
            // line 1635
            _F.Done = C_true;
        }
    }
    
    // line 1638
    _F.Ad = Np;
    
    // line 1639
    while((_F.Ad < Cp))
    {
        // line 1640
        _F.l = F_getadr(nullptr, _F.Ad);
        
        // line 1641
        if((_F.l >= 0))
        {
            // line 1642
            _F.Ad1 = (_F.Ad + _F.l);
            
            // line 1643
            if((_F.Ad1 < Cp))
            {
                // line 1644
                _F.L1 = F_getadr(nullptr, _F.Ad1);
                
                // line 1645
                if((_F.L1 >= 0))
                {
                    // line 1646
                    P_putadr(nullptr, _F.Ad, T_address::C((_F.l + _F.L1)));
                }
                else
                {
                    // line 1647
                    _F.Ad = ((_F.Ad + _F.l) + _abs(_F.L1));
                }
            }
            else
            {
                // line 1648
                _F.Ad = ((_F.Ad + _F.l) + _abs(_F.L1));
            }
        }
        else
        {
            // line 1649
            _F.Ad = (_F.Ad + _abs(_F.l));
        }
    }
}


// line 1655
//================================================================================
// scope: newspc (level : 2)

// activation record
struct Frame_newspc
{
    // parameters
    T_address Len;
    T_address& Blk;

    // locals
    T_address Ad;
    T_address Ad1;
};

// function body
void P_newspc(void* _slink, T_address Len, T_address& Blk)
{
    // prologue/frame definition
    Frame_newspc _F = {Len, Blk };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1658
    P_fndfre(nullptr, _F.Len, _F.Blk);
    
    // line 1659
    if((_F.Blk == 0))
    {
        // line 1660
        _F.Ad = (Np - (_F.Len + C_adrsize));
        
        // line 1661
        _F.Ad1 = _F.Ad;
        
        // line 1662
        P_alignd(nullptr, T_address::C(C_heapal), _F.Ad);
        
        // line 1663
        _F.Len = (_F.Len + (_F.Ad1 - _F.Ad));
        
        // line 1664
        if((_F.Ad <= Ep))
        {
            // line 1664
            P_errori(nullptr, T_beta::C("store overflow           "));
        }
        
        // line 1665
        Np = _F.Ad;
        
        // line 1666
        P_putadr(nullptr, _F.Ad, T_address::C((-(_F.Len + C_adrsize))));
        
        // line 1667
        _F.Blk = (_F.Ad + C_adrsize);
    }
}


// line 1673
//================================================================================
// scope: dspspc (level : 2)

// activation record
struct Frame_dspspc
{
    // parameters
    T_address Len;
    T_address Blk;

    // locals
    T_address Ad;
};

// function body
void P_dspspc(void* _slink, T_address Len, T_address Blk)
{
    // prologue/frame definition
    Frame_dspspc _F = {Len, Blk };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1676
    _F.Len = _F.Len;
    
    // line 1677
    if((_F.Blk == 0))
    {
        // line 1677
        P_errori(nullptr, T_beta::C("dispose uninit pointer   "));
    }
    else
    {
        // line 1678
        if((_F.Blk == C_nilval))
        {
            // line 1678
            P_errori(nullptr, T_beta::C("Dispose nil pointer      "));
        }
        else
        {
            // line 1679
            if(((_F.Blk < Np) || (_F.Blk >= Cp)))
            {
                // line 1679
                P_errori(nullptr, T_beta::C("bad pointer value        "));
            }
        }
    }
    
    // line 1680
    _F.Ad = (_F.Blk - C_adrsize);
    
    // line 1681
    if((F_getadr(nullptr, _F.Ad) >= 0))
    {
        // line 1681
        P_errori(nullptr, T_beta::C("block already freed      "));
    }
    
    // line 1682
    if((C_dorecycl && (!C_dochkrpt)))
    {
        // line 1683
        P_putadr(nullptr, _F.Ad, T_address::C(_abs(F_getadr(nullptr, _F.Ad))));
        
        // line 1684
        P_cscspc(nullptr);
    }
}


// line 1690
//================================================================================
// scope: isfree (level : 2)

// activation record
struct Frame_isfree
{
    // parameters
    T_address Blk;

    // locals
    T_boolean _fnvalue;
};

// function body
T_boolean F_isfree(void* _slink, T_address Blk)
{
    // prologue/frame definition
    Frame_isfree _F = {Blk };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1692
    _F._fnvalue = (F_getadr(nullptr, T_address::C((_F.Blk - C_adrsize))) >= 0);
    
    // epilogue
    return _F._fnvalue;
}


// line 1697
//================================================================================
// scope: callsp (level : 2)

// forward declarations
void P_callsp_readi(void* _slink, T_text& f, T_integer& i);
void P_callsp_readr(void* _slink, T_text& f, T_real& r);
void P_callsp_readc(void* _slink, T_text& f, T_char& c);
void P_callsp_writestr(void* _slink, T_text& f, T_address Ad, T_integer w, T_integer l);
void P_callsp_getfile(void* _slink, T_text& f);
void P_callsp_putfile(void* _slink, T_text& f, T_address& Ad);

// activation record
struct Frame_callsp
{
    // locals
    T_address Ad;
    T_address Ad1;
    T_boolean b;
    T_char c;
    T_integer f;
    T_fileno Fn;
    T_integer i;
    T_integer j;
    T_integer l;
    T_boolean Line;
    T_real r;
    T_integer w;
};

// function body
void P_callsp(void* _slink)
{
    // prologue/frame definition
    Frame_callsp _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 1739
    if((q > C_maxsp))
    {
        // line 1739
        P_errori(nullptr, T_beta::C("invalid std proc/func    "));
    }
    
    // line 1742
    if(C_dotrcrot)
    {
        // line 1742
        Output << _format(Pc, 6, 0) << '/' << _format(Sp, 6, 0) << "-> " << _format(q, 2, 0) << _WRITELN;
    }
    
    // line 1744
    switch(q)
    {
    case 0:
        // line 1745
        P_popadr(nullptr, _F.Ad);
        
        // line 1745
        P_valfil(nullptr, _F.Ad);
        
        // line 1745
        _F.Fn = Store[_F.Ad];
        
        // line 1746
        if((_F.Fn <= C_prrfn))
        {
            // line 1746
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1747
                P_callsp_getfile(&_F, Input);
                break;
            
            case C_outputfn:
                // line 1748
                P_errori(nullptr, T_beta::C("get on output file       "));
                break;
            
            case C_prdfn:
                // line 1749
                P_callsp_getfile(&_F, Prd);
                break;
            
            case C_prrfn:
                // line 1750
                P_errori(nullptr, T_beta::C("get on prr file          "));
                break;
            }
        }
        else
        {
            // line 1752
            if((Filstate[_F.Fn] != C_fread))
            {
                // line 1753
                P_errori(nullptr, T_beta::C("File not in read mode    "));
            }
            
            // line 1754
            P_callsp_getfile(&_F, Filtable[_F.Fn]);
        }
        break;
    
    case 1:
        // line 1757
        P_popadr(nullptr, _F.Ad);
        
        // line 1757
        P_valfil(nullptr, _F.Ad);
        
        // line 1757
        _F.Fn = Store[_F.Ad];
        
        // line 1758
        if((_F.Fn <= C_prrfn))
        {
            // line 1758
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1759
                P_errori(nullptr, T_beta::C("put on read file         "));
                break;
            
            case C_outputfn:
                // line 1760
                P_callsp_putfile(&_F, Output, _F.Ad);
                break;
            
            case C_prdfn:
                // line 1761
                P_errori(nullptr, T_beta::C("put on prd file          "));
                break;
            
            case C_prrfn:
                // line 1762
                P_callsp_putfile(&_F, Prr, _F.Ad);
                break;
            }
        }
        else
        {
            // line 1764
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1765
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1766
            P_callsp_putfile(&_F, Filtable[_F.Fn], _F.Ad);
        }
        break;
    
    case 2:
        // line 1770
        P_errori(nullptr, T_beta::C("invalid std proc/func    "));
        break;
    
    case 3:
        // line 1771
        P_popadr(nullptr, _F.Ad);
        
        // line 1771
        P_pshadr(nullptr, _F.Ad);
        
        // line 1771
        P_valfil(nullptr, _F.Ad);
        
        // line 1771
        _F.Fn = Store[_F.Ad];
        
        // line 1772
        if((_F.Fn <= C_prrfn))
        {
            // line 1772
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1774
                if(_eof(Input))
                {
                    // line 1774
                    P_errori(nullptr, T_beta::C("End of file              "));
                }
                
                // line 1775
                Input >> _READLN;
                break;
            
            case C_outputfn:
                // line 1777
                P_errori(nullptr, T_beta::C("readln on output file    "));
                break;
            
            case C_prdfn:
                // line 1779
                if(_eof(Prd))
                {
                    // line 1779
                    P_errori(nullptr, T_beta::C("End of file              "));
                }
                
                // line 1780
                Prd >> _READLN;
                break;
            
            case C_prrfn:
                // line 1782
                P_errori(nullptr, T_beta::C("readln on prr file       "));
                break;
            }
        }
        else
        {
            // line 1784
            if((Filstate[_F.Fn] != C_fread))
            {
                // line 1785
                P_errori(nullptr, T_beta::C("File not in read mode    "));
            }
            
            // line 1786
            if(_eof(Filtable[_F.Fn]))
            {
                // line 1786
                P_errori(nullptr, T_beta::C("End of file              "));
            }
            
            // line 1787
            Filtable[_F.Fn] >> _READLN;
        }
        break;
    
    case 4:
        // line 1790
        P_popadr(nullptr, _F.Ad1);
        
        // line 1790
        P_newspc(nullptr, _F.Ad1, _F.Ad);
        
        // line 1792
        P_popadr(nullptr, _F.Ad1);
        
        // line 1792
        P_putadr(nullptr, _F.Ad1, _F.Ad);
        break;
    
    case 5:
        // line 1794
        P_popadr(nullptr, _F.Ad);
        
        // line 1794
        P_pshadr(nullptr, _F.Ad);
        
        // line 1794
        P_valfil(nullptr, _F.Ad);
        
        // line 1794
        _F.Fn = Store[_F.Ad];
        
        // line 1795
        if((_F.Fn <= C_prrfn))
        {
            // line 1795
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1796
                P_errori(nullptr, T_beta::C("writeln on input file    "));
                break;
            
            case C_outputfn:
                // line 1797
                Output << _WRITELN;
                break;
            
            case C_prdfn:
                // line 1798
                P_errori(nullptr, T_beta::C("writeln on prd file      "));
                break;
            
            case C_prrfn:
                // line 1799
                Prr << _WRITELN;
                break;
            }
        }
        else
        {
            // line 1801
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1802
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1803
            Filtable[_F.Fn] << _WRITELN;
        }
        break;
    
    case 6:
        // line 1806
        P_popint(nullptr, _F.l);
        
        // line 1806
        P_popint(nullptr, _F.w);
        
        // line 1806
        P_popadr(nullptr, _F.Ad1);
        
        // line 1807
        P_popadr(nullptr, _F.Ad);
        
        // line 1807
        P_pshadr(nullptr, _F.Ad);
        
        // line 1807
        P_valfil(nullptr, _F.Ad);
        
        // line 1807
        _F.Fn = Store[_F.Ad];
        
        // line 1808
        if((_F.Fn <= C_prrfn))
        {
            // line 1808
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1809
                P_errori(nullptr, T_beta::C("write on input file      "));
                break;
            
            case C_outputfn:
                // line 1810
                P_callsp_writestr(&_F, Output, _F.Ad1, _F.w, _F.l);
                break;
            
            case C_prdfn:
                // line 1811
                P_errori(nullptr, T_beta::C("write on prd file        "));
                break;
            
            case C_prrfn:
                // line 1812
                P_callsp_writestr(&_F, Prr, _F.Ad1, _F.w, _F.l);
                break;
            }
        }
        else
        {
            // line 1814
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1815
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1816
            P_callsp_writestr(&_F, Filtable[_F.Fn], _F.Ad1, _F.w, _F.l);
        }
        
        { /* NOP */ }
        break;
    
    case 7:
        // line 1819
        P_popadr(nullptr, _F.Ad);
        
        // line 1819
        P_valfil(nullptr, _F.Ad);
        
        // line 1819
        _F.Fn = Store[_F.Ad];
        
        // line 1820
        if((_F.Fn <= C_prrfn))
        {
            // line 1820
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1821
                _F.Line = _eoln(Input);
                break;
            
            case C_outputfn:
                // line 1822
                P_errori(nullptr, T_beta::C("eoln output file         "));
                break;
            
            case C_prdfn:
                // line 1823
                _F.Line = _eoln(Prd);
                break;
            
            case C_prrfn:
                // line 1824
                P_errori(nullptr, T_beta::C("eoln on prr file         "));
                break;
            }
        }
        else
        {
            // line 1827
            if((Filstate[_F.Fn] != C_fread))
            {
                // line 1828
                P_errori(nullptr, T_beta::C("File not in read mode    "));
            }
            
            // line 1829
            _F.Line = _eoln(Filtable[_F.Fn]);
        }
        
        // line 1831
        P_pshint(nullptr, _ord(_F.Line));
        break;
    
    case 8:
        // line 1833
        P_popint(nullptr, _F.w);
        
        // line 1833
        P_popint(nullptr, _F.i);
        
        // line 1833
        P_popadr(nullptr, _F.Ad);
        
        // line 1833
        P_pshadr(nullptr, _F.Ad);
        
        // line 1834
        P_valfil(nullptr, _F.Ad);
        
        // line 1834
        _F.Fn = Store[_F.Ad];
        
        // line 1835
        if((_F.Fn <= C_prrfn))
        {
            // line 1835
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1836
                P_errori(nullptr, T_beta::C("write on input file      "));
                break;
            
            case C_outputfn:
                // line 1837
                Output << _format(_F.i, _F.w, 0);
                break;
            
            case C_prdfn:
                // line 1838
                P_errori(nullptr, T_beta::C("write on prd file        "));
                break;
            
            case C_prrfn:
                // line 1839
                Prr << _format(_F.i, _F.w, 0);
                break;
            }
        }
        else
        {
            // line 1842
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1843
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1844
            Filtable[_F.Fn] << _format(_F.i, _F.w, 0);
        }
        break;
    
    case 9:
        // line 1847
        P_popint(nullptr, _F.w);
        
        // line 1847
        P_poprel(nullptr, _F.r);
        
        // line 1847
        P_popadr(nullptr, _F.Ad);
        
        // line 1847
        P_pshadr(nullptr, _F.Ad);
        
        // line 1848
        P_valfil(nullptr, _F.Ad);
        
        // line 1848
        _F.Fn = Store[_F.Ad];
        
        // line 1849
        if((_F.Fn <= C_prrfn))
        {
            // line 1849
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1850
                P_errori(nullptr, T_beta::C("write on input file      "));
                break;
            
            case C_outputfn:
                // line 1851
                Output << _format(_F.r, _F.w, 0);
                break;
            
            case C_prdfn:
                // line 1852
                P_errori(nullptr, T_beta::C("write on prd file        "));
                break;
            
            case C_prrfn:
                // line 1853
                Prr << _format(_F.r, _F.w, 0);
                break;
            }
        }
        else
        {
            // line 1856
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1857
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1858
            Filtable[_F.Fn] << _format(_F.r, _F.w, 0);
        }
        
        { /* NOP */ }
        break;
    
    case 10:
        // line 1861
        P_popint(nullptr, _F.w);
        
        // line 1861
        P_popint(nullptr, _F.i);
        
        // line 1861
        _F.c = _chr(_F.i);
        
        // line 1861
        P_popadr(nullptr, _F.Ad);
        
        // line 1862
        P_pshadr(nullptr, _F.Ad);
        
        // line 1862
        P_valfil(nullptr, _F.Ad);
        
        // line 1862
        _F.Fn = Store[_F.Ad];
        
        // line 1863
        if((_F.Fn <= C_prrfn))
        {
            // line 1863
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1864
                P_errori(nullptr, T_beta::C("write on input file      "));
                break;
            
            case C_outputfn:
                // line 1865
                Output << _format(_F.c, _F.w, 0);
                break;
            
            case C_prdfn:
                // line 1866
                P_errori(nullptr, T_beta::C("write on prd file        "));
                break;
            
            case C_prrfn:
                // line 1867
                Prr << _format(_F.c, _F.w, 0);
                break;
            }
        }
        else
        {
            // line 1870
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1871
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1872
            Filtable[_F.Fn] << _format(_F.c, _F.w, 0);
        }
        break;
    
    case 11:
        // line 1875
        P_popadr(nullptr, _F.Ad1);
        
        // line 1875
        P_popadr(nullptr, _F.Ad);
        
        // line 1875
        P_pshadr(nullptr, _F.Ad);
        
        // line 1875
        P_valfil(nullptr, _F.Ad);
        
        // line 1876
        _F.Fn = Store[_F.Ad];
        
        // line 1877
        if((_F.Fn <= C_prrfn))
        {
            // line 1877
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1878
                P_callsp_readi(&_F, Input, _F.i);
                
                // line 1878
                P_putint(nullptr, _F.Ad1, _F.i);
                break;
            
            case C_outputfn:
                // line 1879
                P_errori(nullptr, T_beta::C("read on output file      "));
                break;
            
            case C_prdfn:
                // line 1880
                P_callsp_readi(&_F, Prd, _F.i);
                
                // line 1880
                P_putint(nullptr, _F.Ad1, _F.i);
                break;
            
            case C_prrfn:
                // line 1881
                P_errori(nullptr, T_beta::C("read on prr file         "));
                break;
            }
        }
        else
        {
            // line 1884
            if((Filstate[_F.Fn] != C_fread))
            {
                // line 1885
                P_errori(nullptr, T_beta::C("File not in read mode    "));
            }
            
            // line 1886
            P_callsp_readi(&_F, Filtable[_F.Fn], _F.i);
            
            // line 1887
            P_putint(nullptr, _F.Ad1, _F.i);
        }
        break;
    
    case 12:
        // line 1890
        P_popadr(nullptr, _F.Ad1);
        
        // line 1890
        P_popadr(nullptr, _F.Ad);
        
        // line 1890
        P_pshadr(nullptr, _F.Ad);
        
        // line 1890
        P_valfil(nullptr, _F.Ad);
        
        // line 1891
        _F.Fn = Store[_F.Ad];
        
        // line 1892
        if((_F.Fn <= C_prrfn))
        {
            // line 1892
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1893
                P_callsp_readr(&_F, Input, _F.r);
                
                // line 1893
                P_putrel(nullptr, _F.Ad1, _F.r);
                break;
            
            case C_outputfn:
                // line 1894
                P_errori(nullptr, T_beta::C("read on output file      "));
                break;
            
            case C_prdfn:
                // line 1895
                P_callsp_readr(&_F, Prd, _F.r);
                
                // line 1895
                P_putrel(nullptr, _F.Ad1, _F.r);
                break;
            
            case C_prrfn:
                // line 1896
                P_errori(nullptr, T_beta::C("read on prr file         "));
                break;
            }
        }
        else
        {
            // line 1899
            if((Filstate[_F.Fn] != C_fread))
            {
                // line 1900
                P_errori(nullptr, T_beta::C("File not in read mode    "));
            }
            
            // line 1901
            P_callsp_readr(&_F, Filtable[_F.Fn], _F.r);
            
            // line 1902
            P_putrel(nullptr, _F.Ad1, _F.r);
        }
        break;
    
    case 13:
        // line 1905
        P_popadr(nullptr, _F.Ad1);
        
        // line 1905
        P_popadr(nullptr, _F.Ad);
        
        // line 1905
        P_pshadr(nullptr, _F.Ad);
        
        // line 1905
        P_valfil(nullptr, _F.Ad);
        
        // line 1906
        _F.Fn = Store[_F.Ad];
        
        // line 1907
        if((_F.Fn <= C_prrfn))
        {
            // line 1907
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1908
                P_callsp_readc(&_F, Input, _F.c);
                
                // line 1908
                P_putchr(nullptr, _F.Ad1, _F.c);
                break;
            
            case C_outputfn:
                // line 1909
                P_errori(nullptr, T_beta::C("read on output file      "));
                break;
            
            case C_prdfn:
                // line 1910
                P_callsp_readc(&_F, Prd, _F.c);
                
                // line 1910
                P_putchr(nullptr, _F.Ad1, _F.c);
                break;
            
            case C_prrfn:
                // line 1911
                P_errori(nullptr, T_beta::C("read on prr file         "));
                break;
            }
        }
        else
        {
            // line 1914
            if((Filstate[_F.Fn] != C_fread))
            {
                // line 1915
                P_errori(nullptr, T_beta::C("File not in read mode    "));
            }
            
            // line 1916
            P_callsp_readc(&_F, Filtable[_F.Fn], _F.c);
            
            // line 1917
            P_putchr(nullptr, _F.Ad1, _F.c);
        }
        break;
    
    case 14:
        // line 1920
        P_poprel(nullptr, R1);
        
        // line 1920
        P_pshrel(nullptr, _sin(R1));
        break;
    
    case 15:
        // line 1921
        P_poprel(nullptr, R1);
        
        // line 1921
        P_pshrel(nullptr, _cos(R1));
        break;
    
    case 16:
        // line 1922
        P_poprel(nullptr, R1);
        
        // line 1922
        P_pshrel(nullptr, _exp(R1));
        break;
    
    case 17:
        // line 1923
        P_poprel(nullptr, R1);
        
        // line 1923
        P_pshrel(nullptr, _ln(R1));
        break;
    
    case 18:
        // line 1924
        P_poprel(nullptr, R1);
        
        // line 1924
        P_pshrel(nullptr, _sqrt(R1));
        break;
    
    case 19:
        // line 1925
        P_poprel(nullptr, R1);
        
        // line 1925
        P_pshrel(nullptr, _arctan(R1));
        break;
    
    case 20:
        // line 1927
        P_errori(nullptr, T_beta::C("invalid std proc/func    "));
        break;
    
    case 21:
        // line 1928
        P_popadr(nullptr, _F.Ad);
        
        // line 1928
        P_valfil(nullptr, _F.Ad);
        
        // line 1928
        _F.Fn = Store[_F.Ad];
        
        // line 1929
        if((_F.Fn <= C_prrfn))
        {
            // line 1929
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1930
                P_errori(nullptr, T_beta::C("page on read file        "));
                break;
            
            case C_outputfn:
                // line 1931
                _page(Output);
                break;
            
            case C_prdfn:
                // line 1932
                P_errori(nullptr, T_beta::C("page on prd file         "));
                break;
            
            case C_prrfn:
                // line 1933
                _page(Prr);
                break;
            }
        }
        else
        {
            // line 1936
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1937
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1938
            _page(Filtable[_F.Fn]);
        }
        break;
    
    case 22:
        // line 1941
        P_popadr(nullptr, _F.Ad);
        
        // line 1941
        P_valfil(nullptr, _F.Ad);
        
        // line 1941
        _F.Fn = Store[_F.Ad];
        
        // line 1942
        if((_F.Fn <= C_prrfn))
        {
            // line 1942
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1943
                P_errori(nullptr, T_beta::C("reset on input file      "));
                break;
            
            case C_outputfn:
                // line 1944
                P_errori(nullptr, T_beta::C("reset on output file     "));
                break;
            
            case C_prdfn:
                // line 1945
                _reset(Prd);
                break;
            
            case C_prrfn:
                // line 1946
                P_errori(nullptr, T_beta::C("reset on prr file        "));
                break;
            }
        }
        else
        {
            // line 1949
            Filstate[_F.Fn] = C_fread;
            
            // line 1950
            _reset(Filtable[_F.Fn]);
            
            { /* NOP */ }
        }
        break;
    
    case 23:
        // line 1953
        P_popadr(nullptr, _F.Ad);
        
        // line 1953
        P_valfil(nullptr, _F.Ad);
        
        // line 1953
        _F.Fn = Store[_F.Ad];
        
        // line 1954
        if((_F.Fn <= C_prrfn))
        {
            // line 1954
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1955
                P_errori(nullptr, T_beta::C("rewrite on input file    "));
                break;
            
            case C_outputfn:
                // line 1956
                P_errori(nullptr, T_beta::C("rewrite on output file   "));
                break;
            
            case C_prdfn:
                // line 1957
                P_errori(nullptr, T_beta::C("rewrite on prd file      "));
                break;
            
            case C_prrfn:
                // line 1958
                _rewrite(Prr);
                break;
            }
        }
        else
        {
            // line 1961
            Filstate[_F.Fn] = C_fwrite;
            
            // line 1962
            _rewrite(Filtable[_F.Fn]);
            
            { /* NOP */ }
        }
        break;
    
    case 24:
        // line 1965
        P_popint(nullptr, _F.w);
        
        // line 1965
        P_popint(nullptr, _F.i);
        
        // line 1965
        _F.b = (_F.i != 0);
        
        // line 1965
        P_popadr(nullptr, _F.Ad);
        
        // line 1966
        P_pshadr(nullptr, _F.Ad);
        
        // line 1966
        P_valfil(nullptr, _F.Ad);
        
        // line 1966
        _F.Fn = Store[_F.Ad];
        
        // line 1967
        if((_F.Fn <= C_prrfn))
        {
            // line 1967
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1968
                P_errori(nullptr, T_beta::C("write on input file      "));
                break;
            
            case C_outputfn:
                // line 1969
                Output << _format(_str(_F.b), _F.w, 0);
                break;
            
            case C_prdfn:
                // line 1970
                P_errori(nullptr, T_beta::C("write on prd file        "));
                break;
            
            case C_prrfn:
                // line 1971
                Prr << _format(_str(_F.b), _F.w, 0);
                break;
            }
        }
        else
        {
            // line 1974
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1975
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1976
            Filtable[_F.Fn] << _format(_str(_F.b), _F.w, 0);
        }
        break;
    
    case 25:
        // line 1979
        P_popint(nullptr, _F.f);
        
        // line 1979
        P_popint(nullptr, _F.w);
        
        // line 1979
        P_poprel(nullptr, _F.r);
        
        // line 1979
        P_popadr(nullptr, _F.Ad);
        
        // line 1979
        P_pshadr(nullptr, _F.Ad);
        
        // line 1980
        P_valfil(nullptr, _F.Ad);
        
        // line 1980
        _F.Fn = Store[_F.Ad];
        
        // line 1981
        if((_F.Fn <= C_prrfn))
        {
            // line 1981
            switch(_F.Fn)
            {
            case C_inputfn:
                // line 1982
                P_errori(nullptr, T_beta::C("write on input file      "));
                break;
            
            case C_outputfn:
                // line 1983
                Output << _format(_F.r, _F.w, _F.f);
                break;
            
            case C_prdfn:
                // line 1984
                P_errori(nullptr, T_beta::C("write on prd file        "));
                break;
            
            case C_prrfn:
                // line 1985
                Prr << _format(_F.r, _F.w, _F.f);
                break;
            }
        }
        else
        {
            // line 1988
            if((Filstate[_F.Fn] != C_fwrite))
            {
                // line 1989
                P_errori(nullptr, T_beta::C("File not in write mode   "));
            }
            
            // line 1990
            Filtable[_F.Fn] << _format(_F.r, _F.w, _F.f);
        }
        break;
    
    case 26:
        // line 1994
        P_popadr(nullptr, _F.Ad1);
        
        // line 1994
        P_popadr(nullptr, _F.Ad);
        
        // line 1994
        P_dspspc(nullptr, _F.Ad1, F_getadr(nullptr, _F.Ad));
        break;
    
    case 27:
        // line 1996
        P_popint(nullptr, _F.l);
        
        // line 1996
        P_popadr(nullptr, _F.Ad1);
        
        // line 1996
        P_popadr(nullptr, _F.Ad);
        
        // line 1997
        P_valfilwm(nullptr, _F.Ad);
        
        // line 1997
        _F.Fn = Store[_F.Ad];
        
        // line 1998
        _FOR_TO(_F.i, 1, _F.l)
        {
            // line 1999
            Bfiltable[_F.Fn] << Store[_F.Ad1];
            
            // line 2000
            _F.Ad1 = (_F.Ad1 + 1);
        }
        _FOR_END(_F.i)
        break;
    
    case 28:
        // line 2003
        P_popint(nullptr, _F.i);
        
        // line 2003
        P_popadr(nullptr, _F.Ad);
        
        // line 2003
        P_pshadr(nullptr, _F.Ad);
        
        // line 2003
        P_pshint(nullptr, _F.i);
        
        // line 2004
        P_valfilwm(nullptr, _F.Ad);
        
        // line 2004
        _F.Fn = Store[_F.Ad];
        
        // line 2005
        _FOR_TO(_F.i, 1, C_intsize)
        {
            // line 2006
            Bfiltable[_F.Fn] << Store[(((Sp - C_intsize) + _F.i) - 1)];
        }
        _FOR_END(_F.i)
        
        // line 2007
        P_popint(nullptr, _F.i);
        break;
    
    case 29:
        // line 2009
        P_poprel(nullptr, _F.r);
        
        // line 2009
        P_popadr(nullptr, _F.Ad);
        
        // line 2009
        P_pshadr(nullptr, _F.Ad);
        
        // line 2009
        P_pshrel(nullptr, _F.r);
        
        // line 2010
        P_valfilwm(nullptr, _F.Ad);
        
        // line 2010
        _F.Fn = Store[_F.Ad];
        
        // line 2011
        _FOR_TO(_F.i, 1, C_realsize)
        {
            // line 2012
            Bfiltable[_F.Fn] << Store[(((Sp - C_realsize) + _F.i) - 1)];
        }
        _FOR_END(_F.i)
        
        // line 2013
        P_poprel(nullptr, _F.r);
        break;
    
    case 30:
        // line 2015
        P_popint(nullptr, _F.i);
        
        // line 2015
        _F.c = _chr(_F.i);
        
        // line 2015
        P_popadr(nullptr, _F.Ad);
        
        // line 2015
        P_pshadr(nullptr, _F.Ad);
        
        // line 2015
        P_pshint(nullptr, _F.i);
        
        // line 2016
        P_valfilwm(nullptr, _F.Ad);
        
        // line 2016
        _F.Fn = Store[_F.Ad];
        
        // line 2017
        _FOR_TO(_F.i, 1, C_charsize)
        {
            // line 2018
            Bfiltable[_F.Fn] << Store[(((Sp - C_intsize) + _F.i) - 1)];
        }
        _FOR_END(_F.i)
        
        // line 2019
        P_popint(nullptr, _F.i);
        break;
    
    case 31:
        // line 2021
        P_popint(nullptr, _F.i);
        
        // line 2021
        P_popadr(nullptr, _F.Ad);
        
        // line 2021
        P_pshadr(nullptr, _F.Ad);
        
        // line 2021
        P_pshint(nullptr, _F.i);
        
        // line 2022
        P_valfilwm(nullptr, _F.Ad);
        
        // line 2022
        _F.Fn = Store[_F.Ad];
        
        // line 2023
        _FOR_TO(_F.i, 1, C_boolsize)
        {
            // line 2024
            Bfiltable[_F.Fn] << Store[(((Sp - C_intsize) + _F.i) - 1)];
        }
        _FOR_END(_F.i)
        
        // line 2025
        P_popint(nullptr, _F.i);
        break;
    
    case 32:
        // line 2027
        P_popint(nullptr, _F.l);
        
        // line 2027
        P_popadr(nullptr, _F.Ad1);
        
        // line 2027
        P_popadr(nullptr, _F.Ad);
        
        // line 2027
        P_pshadr(nullptr, _F.Ad);
        
        // line 2028
        P_valfilrm(nullptr, _F.Ad);
        
        // line 2028
        _F.Fn = Store[_F.Ad];
        
        // line 2029
        if(Filbuff[_F.Fn])
        {
            // line 2030
            _FOR_TO(_F.i, 1, _F.l)
            {
                // line 2031
                Store[((_F.Ad1 + _F.i) - 1)] = Store[(((_F.Ad + C_fileidsize) + _F.i) - 1)];
            }
            _FOR_END(_F.i)
        }
        else
        {
            // line 2033
            if(_eof(Bfiltable[_F.Fn]))
            {
                // line 2033
                P_errori(nullptr, T_beta::C("End of file              "));
            }
            
            // line 2034
            _FOR_TO(_F.i, 1, _F.l)
            {
                // line 2035
                Bfiltable[_F.Fn] >> Store[_F.Ad1];
                
                // line 2036
                _F.Ad1 = (_F.Ad1 + 1);
            }
            _FOR_END(_F.i)
        }
        break;
    
    case 33:
        // line 2040
        P_popadr(nullptr, _F.Ad);
        
        // line 2040
        P_valfil(nullptr, _F.Ad);
        
        // line 2040
        _F.Fn = Store[_F.Ad];
        
        // line 2041
        Filstate[_F.Fn] = C_fread;
        
        // line 2042
        _reset(Bfiltable[_F.Fn]);
        
        // line 2043
        Filbuff[_F.Fn] = C_false;
        break;
    
    case 34:
        // line 2045
        P_popadr(nullptr, _F.Ad);
        
        // line 2045
        P_valfil(nullptr, _F.Ad);
        
        // line 2045
        _F.Fn = Store[_F.Ad];
        
        // line 2046
        Filstate[_F.Fn] = C_fwrite;
        
        // line 2047
        _rewrite(Bfiltable[_F.Fn]);
        
        // line 2048
        Filbuff[_F.Fn] = C_false;
        break;
    
    case 35:
        // line 2050
        P_popint(nullptr, _F.i);
        
        // line 2050
        P_popadr(nullptr, _F.Ad);
        
        // line 2050
        P_valfilrm(nullptr, _F.Ad);
        
        // line 2050
        _F.Fn = Store[_F.Ad];
        
        // line 2051
        if(Filbuff[_F.Fn])
        {
            // line 2051
            Filbuff[_F.Fn] = C_false;
        }
        else
        {
            // line 2053
            _FOR_TO(_F.j, 1, _F.i)
            {
                // line 2054
                Bfiltable[_F.Fn] >> Store[(((_F.Ad + C_fileidsize) + _F.j) - 1)];
            }
            _FOR_END(_F.j)
        }
        break;
    
    case 36:
        // line 2056
        P_popint(nullptr, _F.i);
        
        // line 2056
        P_popadr(nullptr, _F.Ad);
        
        // line 2056
        P_valfilwm(nullptr, _F.Ad);
        
        // line 2056
        _F.Fn = Store[_F.Ad];
        
        // line 2057
        _FOR_TO(_F.j, 1, _F.i)
        {
            // line 2058
            Bfiltable[_F.Fn] << Store[(((_F.Ad + C_fileidsize) + _F.j) - 1)];
        }
        _FOR_END(_F.j)
        
        { /* NOP */ }
        break;
    }
    
    { /* NOP */ }
}


// line 1706
//================================================================================
// scope: callsp_readi (level : 3)

// activation record
struct Frame_callsp_readi
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;
    T_integer& i;
};

// function body
void P_callsp_readi(void* _slink, T_text& f, T_integer& i)
{
    // prologue/frame definition
    Frame_callsp_readi _F = { (Frame_callsp*)_slink, f, i };
    
    // subroutine body
    // line 1707
    if(_eof(_F.f))
    {
        // line 1707
        P_errori(nullptr, T_beta::C("End of file              "));
    }
    
    // line 1708
    _F.f >> _F.i;
    
    { /* NOP */ }
}


// line 1711
//================================================================================
// scope: callsp_readr (level : 3)

// activation record
struct Frame_callsp_readr
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;
    T_real& r;
};

// function body
void P_callsp_readr(void* _slink, T_text& f, T_real& r)
{
    // prologue/frame definition
    Frame_callsp_readr _F = { (Frame_callsp*)_slink, f, r };
    
    // subroutine body
    // line 1712
    if(_eof(_F.f))
    {
        // line 1712
        P_errori(nullptr, T_beta::C("End of file              "));
    }
    
    // line 1713
    _F.f >> _F.r;
    
    { /* NOP */ }
}


// line 1716
//================================================================================
// scope: callsp_readc (level : 3)

// activation record
struct Frame_callsp_readc
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;
    T_char& c;
};

// function body
void P_callsp_readc(void* _slink, T_text& f, T_char& c)
{
    // prologue/frame definition
    Frame_callsp_readc _F = { (Frame_callsp*)_slink, f, c };
    
    // subroutine body
    // line 1717
    if(_eof(_F.f))
    {
        // line 1717
        P_errori(nullptr, T_beta::C("End of file              "));
    }
    
    // line 1718
    _F.f >> _F.c;
    
    { /* NOP */ }
}


// line 1721
//================================================================================
// scope: callsp_writestr (level : 3)

// activation record
struct Frame_callsp_writestr
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;
    T_address Ad;
    T_integer w;
    T_integer l;

    // locals
    T_integer i;
};

// function body
void P_callsp_writestr(void* _slink, T_text& f, T_address Ad, T_integer w, T_integer l)
{
    // prologue/frame definition
    Frame_callsp_writestr _F = { (Frame_callsp*)_slink, f, Ad, w, l };
    
    // subroutine body
    // line 1724
    if((_F.w > _F.l))
    {
        // line 1724
        _FOR_TO(_F.i, 1, (_F.w - _F.l))
        {
            // line 1724
            _F.f << ' ';
        }
        _FOR_END(_F.i)
    }
    else
    {
        // line 1725
        _F.l = _F.w;
    }
    
    // line 1726
    _FOR_TO(_F.i, 0, (_F.l - 1))
    {
        // line 1726
        _F.f << F_getchr(nullptr, T_address::C((_F.Ad + _F.i)));
    }
    _FOR_END(_F.i)
}


// line 1729
//================================================================================
// scope: callsp_getfile (level : 3)

// activation record
struct Frame_callsp_getfile
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;
};

// function body
void P_callsp_getfile(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_getfile _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    // line 1730
    if(_eof(_F.f))
    {
        // line 1730
        P_errori(nullptr, T_beta::C("End of file              "));
    }
    
    // line 1731
    _get(_F.f);
    
    { /* NOP */ }
}


// line 1734
//================================================================================
// scope: callsp_putfile (level : 3)

// activation record
struct Frame_callsp_putfile
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;
    T_address& Ad;
};

// function body
void P_callsp_putfile(void* _slink, T_text& f, T_address& Ad)
{
    // prologue/frame definition
    Frame_callsp_putfile _F = { (Frame_callsp*)_slink, f, Ad };
    
    // subroutine body
    // line 1735
    _F.f.bufferVar() = F_getchr(nullptr, T_address::C((_F.Ad + C_fileidsize)));
    
    // line 1735
    _put(_F.f);
}

