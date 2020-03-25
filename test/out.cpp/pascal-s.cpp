
#include <lpcRuntime.h>

#line 0 "pascal-s.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "input" },
    { "output" },
    { "srcfil" },
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
typedef _T_Array< 1, 10, T_char > T_alfa;
typedef int T_symbol;
typedef int T_types;
typedef _T_Range<-131071, 131071, signed __int32> T_index;
struct T_record_2
{
    T_types Inxtyp;
    T_types Eltyp;
    T_index Elref;
    T_index Low;
    T_index High;
    T_index Elsize;
    T_index Size;
};
typedef _T_Array< 1, 100, T_record_2 > T_array_1;
typedef _T_Set<0, 50> T_symset;
struct T_record_4
{
    T_index Last;
    T_index Lastpar;
    T_index Psize;
    T_index Vsize;
};
typedef _T_Array< 1, 100, T_record_4 > T_array_3;
typedef _T_Range<-63, 63, signed __int8> T_range_6;
typedef _T_Range<-100, 100, signed __int8> T_range_7;
typedef _T_Range<-2147483647, 2147483647, signed __int32> T_range_8;
struct T_order
{
    T_range_6 f;
    T_range_7 x;
    T_range_8 y;
};
typedef _T_Array< 0, 10000, T_order > T_array_5;
typedef _T_Array< 0, 100, T_integer > T_array_9;
typedef _T_Set<0, 58> T_set_10;
typedef int T_object;
struct T_item
{
    T_types Typ;
    T_index Ref;
};
typedef _T_Array< 1, 27, T_alfa > T_array_11;
typedef _T_Array< 1, 27, T_symbol > T_array_12;
typedef _T_Array< 1, 250, T_char > T_array_13;
typedef _T_Array< 1, 100, T_real > T_array_14;
typedef _T_Array< 0, 255, T_symbol > T_array_15;
typedef _T_Array< 0, 10000, T_char > T_array_16;
typedef _T_Set<0, 6> T_typset;
typedef _T_Range<0, 100, signed __int8> T_range_19;
struct T_record_18
{
    T_alfa Name;
    T_index Link;
    T_object Obj;
    T_types Typ;
    T_index Ref;
    T_boolean Normal;
    T_range_19 Lev;
    T_integer Adr;
};
typedef _T_Array< 0, 1000, T_record_18 > T_array_17;

// forward declarations
void P_errormsg(void* _slink);
void P_nextch(void* _slink);
void P_error(void* _slink, T_integer n);
void P_fatal(void* _slink, T_integer n);
void P_insymbol(void* _slink);
void P_enter(void* _slink, T_alfa X0, T_object X1, T_types X2, T_integer X3);
void P_enterarray(void* _slink, T_types Tp, T_integer l, T_integer h);
void P_enterblock(void* _slink);
void P_enterreal(void* _slink, T_real x);
void P_emit(void* _slink, T_integer Fct);
void P_emit1(void* _slink, T_integer Fct, T_integer b);
void P_emit2(void* _slink, T_integer Fct, T_integer a, T_integer b);
void P_printtables(void* _slink);
void P_block(void* _slink, T_symset Fsys, T_boolean Isfun, T_integer Level);
void P_interpret(void* _slink);

// constants
const T_integer C_alng = 10;
const T_integer C_amax = 100;
const T_symbol C_andsy = 11;
const T_types C_arrays = 5;
const T_symbol C_arraysy = 33;
const T_symbol C_becomes = 27;
const T_symbol C_beginsy = 37;
const T_integer C_bmax = 100;
const T_integer C_bolfld = 10;
const T_types C_bools = 3;
const T_integer C_c2max = 100;
const T_symbol C_casesy = 39;
const T_symbol C_charcon = 2;
const T_types C_chars = 4;
const T_integer C_chrfld = 1;
const T_integer C_cmax = 10000;
const T_symbol C_colon = 26;
const T_symbol C_comma = 23;
const T_symbol C_constsy = 28;
const T_integer C_csmax = 100;
const T_symbol C_dosy = 47;
const T_symbol C_downtosy = 49;
const T_symbol C_egl = 13;
const T_symbol C_elsesy = 44;
const T_integer C_emax = 308;
const T_integer C_emin = -308;
const T_symbol C_endsy = 43;
const T_integer C_ermax = 58;
const T_symbol C_forsy = 42;
const T_symbol C_functionsy = 31;
const T_object C_funktion = 4;
const T_symbol C_geg = 16;
const T_symbol C_gtr = 15;
const T_symbol C_ident = 36;
const T_symbol C_idiv = 8;
const T_symbol C_ifsy = 38;
const T_symbol C_imod = 10;
const T_symbol C_intcon = 0;
const T_integer C_intfld = 10;
const T_types C_ints = 1;
const T_integer C_inxmax = 127;
const T_integer C_kmax = 15;
const T_object C_konstant = 0;
const T_symbol C_lbrack = 21;
const T_symbol C_leg = 18;
const T_integer C_lineleng = 250;
const T_integer C_linelimit = 10000;
const T_integer C_llng = 250;
const T_integer C_lmax = 100;
const T_symbol C_lparent = 19;
const T_symbol C_lss = 17;
const T_symbol C_minus = 6;
const T_symbol C_neg = 14;
const T_integer C_nkw = 27;
const T_integer C_nmax = 2147483647;
const T_symbol C_notsy = 4;
const T_types C_notyp = 0;
const T_symbol C_ofsy = 46;
const T_integer C_omax = 63;
const T_symbol C_orsy = 12;
const T_symbol C_period = 25;
const T_symbol C_plus = 5;
const T_symbol C_proceduresy = 32;
const T_symbol C_programsy = 35;
const T_object C_prozedure = 3;
const T_symbol C_rbrack = 22;
const T_symbol C_rdiv = 9;
const T_symbol C_realcon = 1;
const T_types C_reals = 2;
const T_types C_records = 6;
const T_symbol C_recordsy = 34;
const T_integer C_relfld = 22;
const T_symbol C_repeatsy = 40;
const T_symbol C_rparent = 20;
const T_symbol C_semicolon = 24;
const T_integer C_smax = 10000;
const T_integer C_stacksize = 10000;
const T_symbol C_stringt = 3;
const T_symbol C_thensy = 50;
const T_symbol C_times = 7;
const T_integer C_tmax = 1000;
const T_symbol C_tosy = 48;
const T_object C_typel = 2;
const T_symbol C_typesy = 29;
const T_symbol C_untilsy = 45;
const T_object C_variable = 1;
const T_symbol C_varsy = 30;
const T_symbol C_whilesy = 41;
const T_integer C_xmax = 131071;

// non-local goto targets
const int NL_99 = 1;

// program variables
T_integer a;
T_array_1 Atab;
T_integer b;
T_symset Blockbegsys;
T_array_3 Btab;
T_integer C1;
T_integer C2;
T_integer Cc;
T_char Ch;
T_array_5 Code;
T_symset Constbegsys;
T_array_9 Display;
T_integer Errpos;
T_set_10 Errs;
T_symset Facbegsys;
T_alfa Id;
T_boolean Iflag;
T_text Input;
T_integer Inum;
T_array_11 Key;
T_array_12 Ksy;
T_integer Lc;
T_array_13 Line;
T_integer Ll;
T_boolean Oflag;
T_text Output;
T_alfa Progname;
T_array_14 Rconst;
T_real Rnum;
T_integer Sleng;
T_array_15 Sps;
T_text Srcfil;
T_array_16 Stab;
T_typset Stantyps;
T_symset Statbegsys;
T_integer Sx;
T_symbol Sy;
T_integer t;
T_array_17 Tab;
T_symset Typebegsys;

// function body
void P_()
{
    
    // initializers
    Input.init(0);
    Output.init(1);
    Srcfil.init(2);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_plus);
    _setLiteral1.set(C_minus);
    _setLiteral1.set(C_intcon);
    _setLiteral1.set(C_realcon);
    _setLiteral1.set(C_charcon);
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ident);
    _setLiteral2.set(C_arraysy);
    _setLiteral2.set(C_recordsy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_constsy);
    _setLiteral3.set(C_typesy);
    _setLiteral3.set(C_varsy);
    _setLiteral3.set(C_proceduresy);
    _setLiteral3.set(C_functionsy);
    _setLiteral3.set(C_beginsy);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_intcon);
    _setLiteral4.set(C_realcon);
    _setLiteral4.set(C_charcon);
    _setLiteral4.set(C_ident);
    _setLiteral4.set(C_lparent);
    _setLiteral4.set(C_notsy);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_beginsy);
    _setLiteral5.set(C_ifsy);
    _setLiteral5.set(C_whilesy);
    _setLiteral5.set(C_repeatsy);
    _setLiteral5.set(C_forsy);
    _setLiteral5.set(C_casesy);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_notyp);
    _setLiteral6.set(C_ints);
    _setLiteral6.set(C_reals);
    _setLiteral6.set(C_bools);
    _setLiteral6.set(C_chars);
    
    _T_GenericSet _setLiteral7;
    
    _T_GenericSet _setLiteral8;
    
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
        #line 1838
        Output << _WRITELN;
        
        #line 1839
        Output << "Pascal-S compiler/interpreter" << _WRITELN;
        
        #line 1843
        _reset(Srcfil);
        
        #line 1845
        Key[1] = "and       ";
        
        #line 1845
        Key[2] = "array     ";
        
        #line 1846
        Key[3] = "begin     ";
        
        #line 1846
        Key[4] = "case      ";
        
        #line 1847
        Key[5] = "const     ";
        
        #line 1847
        Key[6] = "div       ";
        
        #line 1848
        Key[7] = "do        ";
        
        #line 1848
        Key[8] = "downto    ";
        
        #line 1849
        Key[9] = "else      ";
        
        #line 1849
        Key[10] = "end       ";
        
        #line 1850
        Key[11] = "for       ";
        
        #line 1850
        Key[12] = "function  ";
        
        #line 1851
        Key[13] = "if        ";
        
        #line 1851
        Key[14] = "mod       ";
        
        #line 1852
        Key[15] = "not       ";
        
        #line 1852
        Key[16] = "of        ";
        
        #line 1853
        Key[17] = "or        ";
        
        #line 1853
        Key[18] = "procedure ";
        
        #line 1854
        Key[19] = "program   ";
        
        #line 1854
        Key[20] = "record    ";
        
        #line 1855
        Key[21] = "repeat    ";
        
        #line 1855
        Key[22] = "then      ";
        
        #line 1856
        Key[23] = "to        ";
        
        #line 1856
        Key[24] = "type      ";
        
        #line 1857
        Key[25] = "until     ";
        
        #line 1857
        Key[26] = "var       ";
        
        #line 1858
        Key[27] = "while     ";
        
        #line 1859
        Ksy[1] = C_andsy;
        
        #line 1859
        Ksy[2] = C_arraysy;
        
        #line 1860
        Ksy[3] = C_beginsy;
        
        #line 1860
        Ksy[4] = C_casesy;
        
        #line 1861
        Ksy[5] = C_constsy;
        
        #line 1861
        Ksy[6] = C_idiv;
        
        #line 1862
        Ksy[7] = C_dosy;
        
        #line 1862
        Ksy[8] = C_downtosy;
        
        #line 1863
        Ksy[9] = C_elsesy;
        
        #line 1863
        Ksy[10] = C_endsy;
        
        #line 1864
        Ksy[11] = C_forsy;
        
        #line 1864
        Ksy[12] = C_functionsy;
        
        #line 1865
        Ksy[13] = C_ifsy;
        
        #line 1865
        Ksy[14] = C_imod;
        
        #line 1866
        Ksy[15] = C_notsy;
        
        #line 1866
        Ksy[16] = C_ofsy;
        
        #line 1867
        Ksy[17] = C_orsy;
        
        #line 1867
        Ksy[18] = C_proceduresy;
        
        #line 1868
        Ksy[19] = C_programsy;
        
        #line 1868
        Ksy[20] = C_recordsy;
        
        #line 1869
        Ksy[21] = C_repeatsy;
        
        #line 1869
        Ksy[22] = C_thensy;
        
        #line 1870
        Ksy[23] = C_tosy;
        
        #line 1870
        Ksy[24] = C_typesy;
        
        #line 1871
        Ksy[25] = C_untilsy;
        
        #line 1871
        Ksy[26] = C_varsy;
        
        #line 1872
        Ksy[27] = C_whilesy;
        
        #line 1873
        Sps['+'] = C_plus;
        
        #line 1873
        Sps['-'] = C_minus;
        
        #line 1874
        Sps['*'] = C_times;
        
        #line 1874
        Sps['/'] = C_rdiv;
        
        #line 1875
        Sps['('] = C_lparent;
        
        #line 1875
        Sps[')'] = C_rparent;
        
        #line 1876
        Sps['='] = C_egl;
        
        #line 1876
        Sps[','] = C_comma;
        
        #line 1877
        Sps['['] = C_lbrack;
        
        #line 1877
        Sps[']'] = C_rbrack;
        
        #line 1878
        Sps['#'] = C_neg;
        
        #line 1878
        Sps['&'] = C_andsy;
        
        #line 1879
        Sps[';'] = C_semicolon;
        
        #line 1880
        Constbegsys = _setLiteral1;
        
        #line 1881
        Typebegsys = _setLiteral2;
        
        #line 1882
        Blockbegsys = _setLiteral3;
        
        #line 1884
        Facbegsys = _setLiteral4;
        
        #line 1885
        Statbegsys = _setLiteral5;
        
        #line 1886
        Stantyps = _setLiteral6;
        
        #line 1887
        Lc = 0;
        
        #line 1887
        Ll = 0;
        
        #line 1887
        Cc = 0;
        
        #line 1887
        Ch = ' ';
        
        #line 1888
        Errpos = 0;
        
        #line 1888
        Errs = _setLiteral7;
        
        #line 1888
        P_insymbol(nullptr);
        
        #line 1889
        t = (-1);
        
        #line 1889
        a = 0;
        
        #line 1889
        b = 1;
        
        #line 1889
        Sx = 0;
        
        #line 1889
        C2 = 0;
        
        #line 1890
        Display[0] = 1;
        
        #line 1891
        Iflag = C_false;
        
        #line 1891
        Oflag = C_false;
        
        #line 1892
        if((Sy != C_programsy))
        {
            #line 1892
            P_error(nullptr, 3);
        }
        else
        {
            #line 1893
            P_insymbol(nullptr);
            
            #line 1894
            if((Sy != C_ident))
            {
                #line 1894
                P_error(nullptr, 2);
            }
            else
            {
                #line 1895
                Progname = Id;
                
                #line 1895
                P_insymbol(nullptr);
                
                #line 1896
                if((Sy != C_lparent))
                {
                    #line 1896
                    P_error(nullptr, 9);
                }
                else
                {
                    #line 1897
                    do
                    {
                        #line 1897
                        P_insymbol(nullptr);
                        
                        #line 1898
                        if((Sy != C_ident))
                        {
                            #line 1898
                            P_error(nullptr, 2);
                        }
                        else
                        {
                            #line 1899
                            if(_strcmpEQ<10>(Id, "input     "))
                            {
                                #line 1899
                                Iflag = C_true;
                            }
                            else
                            {
                                #line 1900
                                if(_strcmpEQ<10>(Id, "output    "))
                                {
                                    #line 1900
                                    Oflag = C_true;
                                }
                                else
                                {
                                    #line 1900
                                    P_error(nullptr, 0);
                                }
                            }
                            
                            #line 1901
                            P_insymbol(nullptr);
                        }
                    }
                    while(!(Sy != C_comma));
                }
                
                #line 1904
                if((Sy == C_rparent))
                {
                    #line 1904
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1904
                    P_error(nullptr, 4);
                }
                
                #line 1905
                if((!Oflag))
                {
                    #line 1905
                    P_error(nullptr, 20);
                }
            }
        }
        
        #line 1908
        P_enter(nullptr, T_alfa::C("          "), C_variable, C_notyp, 0);
        
        #line 1909
        P_enter(nullptr, T_alfa::C("false     "), C_konstant, C_bools, 0);
        
        #line 1910
        P_enter(nullptr, T_alfa::C("true      "), C_konstant, C_bools, 1);
        
        #line 1911
        P_enter(nullptr, T_alfa::C("real      "), C_typel, C_reals, 1);
        
        #line 1912
        P_enter(nullptr, T_alfa::C("char      "), C_typel, C_chars, 1);
        
        #line 1913
        P_enter(nullptr, T_alfa::C("boolean   "), C_typel, C_bools, 1);
        
        #line 1914
        P_enter(nullptr, T_alfa::C("integer   "), C_typel, C_ints, 1);
        
        #line 1915
        P_enter(nullptr, T_alfa::C("abs       "), C_funktion, C_reals, 0);
        
        #line 1916
        P_enter(nullptr, T_alfa::C("sqr       "), C_funktion, C_reals, 2);
        
        #line 1917
        P_enter(nullptr, T_alfa::C("odd       "), C_funktion, C_bools, 4);
        
        #line 1918
        P_enter(nullptr, T_alfa::C("chr       "), C_funktion, C_chars, 5);
        
        #line 1919
        P_enter(nullptr, T_alfa::C("ord       "), C_funktion, C_ints, 6);
        
        #line 1920
        P_enter(nullptr, T_alfa::C("succ      "), C_funktion, C_chars, 7);
        
        #line 1921
        P_enter(nullptr, T_alfa::C("pred      "), C_funktion, C_chars, 8);
        
        #line 1922
        P_enter(nullptr, T_alfa::C("round     "), C_funktion, C_ints, 9);
        
        #line 1923
        P_enter(nullptr, T_alfa::C("trunc     "), C_funktion, C_ints, 10);
        
        #line 1924
        P_enter(nullptr, T_alfa::C("sin       "), C_funktion, C_reals, 11);
        
        #line 1925
        P_enter(nullptr, T_alfa::C("cos       "), C_funktion, C_reals, 12);
        
        #line 1926
        P_enter(nullptr, T_alfa::C("exp       "), C_funktion, C_reals, 13);
        
        #line 1927
        P_enter(nullptr, T_alfa::C("ln        "), C_funktion, C_reals, 14);
        
        #line 1928
        P_enter(nullptr, T_alfa::C("sqrt      "), C_funktion, C_reals, 15);
        
        #line 1929
        P_enter(nullptr, T_alfa::C("arctan    "), C_funktion, C_reals, 16);
        
        #line 1930
        P_enter(nullptr, T_alfa::C("eof       "), C_funktion, C_bools, 17);
        
        #line 1931
        P_enter(nullptr, T_alfa::C("eoln      "), C_funktion, C_bools, 18);
        
        #line 1932
        P_enter(nullptr, T_alfa::C("read      "), C_prozedure, C_notyp, 1);
        
        #line 1933
        P_enter(nullptr, T_alfa::C("readln    "), C_prozedure, C_notyp, 2);
        
        #line 1934
        P_enter(nullptr, T_alfa::C("write     "), C_prozedure, C_notyp, 3);
        
        #line 1935
        P_enter(nullptr, T_alfa::C("writeln   "), C_prozedure, C_notyp, 4);
        
        #line 1936
        P_enter(nullptr, T_alfa::C("          "), C_prozedure, C_notyp, 0);
        
        #line 1938
        Btab[1].Last = t;
        
        #line 1938
        Btab[1].Lastpar = 1;
        
        #line 1938
        Btab[1].Psize = 0;
        
        #line 1938
        Btab[1].Vsize = 0;
        
        #line 1941
        P_block(nullptr, (Blockbegsys + Statbegsys), C_false, 1);
        
        #line 1942
        if((Sy != C_period))
        {
            #line 1942
            P_error(nullptr, 22);
        }
        
        #line 1943
        P_emit(nullptr, 31);
        
        #line 1944
        if((Btab[2].Vsize > C_stacksize))
        {
            #line 1944
            P_error(nullptr, 49);
        }
        
        #line 1945
        if(_strcmpEQ<10>(Progname, "test0     "))
        {
            #line 1945
            P_printtables(nullptr);
        }
        
        #line 1947
        if((Errs == _setLiteral8))
        {
            #line 1949
            if(Iflag)
            {
                #line 1951
                if(_eof(Input))
                {
                    #line 1951
                    Output << " input data missing" << _WRITELN;
                }
                else
                {
                    #line 1952
                    Output << " (eor) " << _WRITELN;
                    
                    #line 1953
                    while((!_eof(Input)))
                    {
                        #line 1954
                        Output << ' ';
                        
                        #line 1955
                        while((!_eoln(Input)))
                        {
                            #line 1956
                            Input >> Ch;
                            
                            #line 1956
                            Output << Ch;
                        }
                        
                        #line 1958
                        Output << _WRITELN;
                        
                        #line 1958
                        Input >> Ch;
                    }
                    
                    { /* NOP */ }
                }
            }
            
            #line 1962
            Output << " (eof) " << _WRITELN;
            
            #line 1963
            P_interpret(nullptr);
        }
        else
        {
            #line 1965
            P_errormsg(nullptr);
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


#line 268
//================================================================================
// scope: errormsg (level : 2)

// types
typedef _T_Array< 0, 58, T_alfa > T_errormsg_array_20;

// activation record
struct Frame_errormsg
{
    // locals
    T_integer k;
    T_errormsg_array_20 Msg;
};

// function body
void P_errormsg(void* _slink)
{
    // prologue/frame definition
    Frame_errormsg _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral2;
    
    // subroutine body
    #line 273
    _F.Msg[0] = "undef id  ";
    
    #line 273
    _F.Msg[1] = "multi def ";
    
    #line 274
    _F.Msg[2] = "identifier";
    
    #line 274
    _F.Msg[3] = "program   ";
    
    #line 275
    _F.Msg[4] = ")         ";
    
    #line 275
    _F.Msg[5] = ":         ";
    
    #line 276
    _F.Msg[6] = "syntax    ";
    
    #line 276
    _F.Msg[7] = "ident, var";
    
    #line 277
    _F.Msg[8] = "of        ";
    
    #line 277
    _F.Msg[9] = "(         ";
    
    #line 278
    _F.Msg[10] = "id, array ";
    
    #line 278
    _F.Msg[11] = "[         ";
    
    #line 279
    _F.Msg[12] = "]         ";
    
    #line 279
    _F.Msg[13] = "..        ";
    
    #line 280
    _F.Msg[14] = ";         ";
    
    #line 280
    _F.Msg[15] = "func. type";
    
    #line 281
    _F.Msg[16] = "=         ";
    
    #line 281
    _F.Msg[17] = "boolean   ";
    
    #line 282
    _F.Msg[18] = "convar typ";
    
    #line 282
    _F.Msg[19] = "type      ";
    
    #line 283
    _F.Msg[20] = "prog.param";
    
    #line 283
    _F.Msg[21] = "too big   ";
    
    #line 284
    _F.Msg[22] = ".         ";
    
    #line 284
    _F.Msg[23] = "typ (case)";
    
    #line 285
    _F.Msg[24] = "character ";
    
    #line 285
    _F.Msg[25] = "const id  ";
    
    #line 286
    _F.Msg[26] = "index type";
    
    #line 286
    _F.Msg[27] = "indexbound";
    
    #line 287
    _F.Msg[28] = "no array  ";
    
    #line 287
    _F.Msg[29] = "type id   ";
    
    #line 288
    _F.Msg[30] = "undef type";
    
    #line 288
    _F.Msg[31] = "no record ";
    
    #line 289
    _F.Msg[32] = "boole type";
    
    #line 289
    _F.Msg[33] = "arith type";
    
    #line 290
    _F.Msg[34] = "integer   ";
    
    #line 290
    _F.Msg[35] = "types     ";
    
    #line 291
    _F.Msg[36] = "param type";
    
    #line 291
    _F.Msg[37] = "variab id ";
    
    #line 292
    _F.Msg[38] = "string    ";
    
    #line 292
    _F.Msg[39] = "no.of pars";
    
    #line 293
    _F.Msg[40] = "type      ";
    
    #line 293
    _F.Msg[41] = "type      ";
    
    #line 294
    _F.Msg[42] = "real type ";
    
    #line 294
    _F.Msg[43] = "integer   ";
    
    #line 295
    _F.Msg[44] = "var, const";
    
    #line 295
    _F.Msg[45] = "var, proc ";
    
    #line 296
    _F.Msg[46] = "types (:=)";
    
    #line 296
    _F.Msg[47] = "typ (case)";
    
    #line 297
    _F.Msg[48] = "type      ";
    
    #line 297
    _F.Msg[49] = "store ovfl";
    
    #line 298
    _F.Msg[50] = "constant  ";
    
    #line 298
    _F.Msg[51] = ":=        ";
    
    #line 299
    _F.Msg[52] = "then      ";
    
    #line 299
    _F.Msg[53] = "until     ";
    
    #line 300
    _F.Msg[54] = "do        ";
    
    #line 300
    _F.Msg[55] = "to downto ";
    
    #line 301
    _F.Msg[56] = "begin     ";
    
    #line 301
    _F.Msg[57] = "end       ";
    
    #line 302
    _F.Msg[58] = "factor    ";
    
    #line 303
    _F.k = 0;
    
    #line 303
    Output << _WRITELN;
    
    #line 303
    Output << " key words" << _WRITELN;
    
    #line 304
    while((Errs != _setLiteral2))
    {
        #line 305
        while((!(Errs & _F.k)))
        {
            #line 305
            _F.k = (_F.k + 1);
        }
        
        #line 306
        Output << _F.k << "  " << _F.Msg[_F.k] << _WRITELN;
        
        #line 306
        {
            _T_GenericSet _setLiteral1;
            _setLiteral1.set(_F.k);
            
            Errs = (Errs - _setLiteral1);
        }
    }
}


#line 310
//================================================================================
// scope: nextch (level : 2)

// activation record
struct Frame_nextch
{};

// function body
void P_nextch(void* _slink)
{
    // prologue/frame definition
    Frame_nextch _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 311
    if((Cc == Ll))
    {
        #line 312
        if(_eof(Srcfil))
        {
            #line 313
            Output << _WRITELN;
            
            #line 314
            Output << " program incomplete" << _WRITELN;
            
            #line 315
            P_errormsg(nullptr);
            
            #line 315
            throw NL_99;
        }
        
        #line 317
        if((Errpos != 0))
        {
            #line 318
            Output << _WRITELN;
            
            #line 318
            Errpos = 0;
        }
        
        #line 320
        Output << _format(Lc, 5, 0) << "  ";
        
        #line 321
        Ll = 0;
        
        #line 321
        Cc = 0;
        
        #line 322
        while((!_eoln(Srcfil)))
        {
            #line 323
            Ll = (Ll + 1);
            
            #line 323
            Srcfil >> Ch;
            
            #line 323
            Output << Ch;
            
            #line 323
            Line[Ll] = Ch;
        }
        
        #line 325
        Output << _WRITELN;
        
        #line 325
        Ll = (Ll + 1);
        
        #line 325
        Line[Ll] = ' ';
        
        #line 325
        _get(Srcfil);
        
        { /* NOP */ }
    }
    
    #line 327
    Cc = (Cc + 1);
    
    #line 327
    Ch = Line[Cc];
    
    { /* NOP */ }
}


#line 330
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
    #line 331
    if((Errpos == 0))
    {
        #line 331
        Output << " ****";
    }
    
    #line 332
    if((Cc > Errpos))
    {
        #line 333
        Output << _format(' ', (Cc - Errpos), 0) << '^' << _format(_F.n, 2, 0);
        
        #line 334
        Errpos = (Cc + 3);
        
        #line 334
        {
            _T_GenericSet _setLiteral1;
            _setLiteral1.set(_F.n);
            
            Errs = (Errs + _setLiteral1);
        }
    }
}


#line 338
//================================================================================
// scope: fatal (level : 2)

// types
typedef _T_Array< 1, 7, T_alfa > T_fatal_array_21;

// activation record
struct Frame_fatal
{
    // parameters
    T_integer n;

    // locals
    T_fatal_array_21 Msg;
};

// function body
void P_fatal(void* _slink, T_integer n)
{
    // prologue/frame definition
    Frame_fatal _F = {n };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 340
    Output << _WRITELN;
    
    #line 340
    P_errormsg(nullptr);
    
    #line 341
    _F.Msg[1] = "identifier";
    
    #line 341
    _F.Msg[2] = "procedures";
    
    #line 342
    _F.Msg[3] = "reals     ";
    
    #line 342
    _F.Msg[4] = "arrays    ";
    
    #line 343
    _F.Msg[5] = "levels    ";
    
    #line 343
    _F.Msg[6] = "code      ";
    
    #line 344
    _F.Msg[7] = "strings   ";
    
    #line 345
    Output << " compiler table for " << _F.Msg[_F.n] << " is too small" << _WRITELN;
    
    #line 346
    throw NL_99;
}


#line 349
//================================================================================
// scope: insymbol (level : 2)

// forward declarations
void P_insymbol_readscale(void* _slink);
void P_insymbol_adjustscale(void* _slink);

// activation record
struct Frame_insymbol
{
    // locals
    T_integer e;
    T_integer i;
    T_integer j;
    T_integer k;
};

// function body
void P_insymbol(void* _slink)
{
    // prologue/frame definition
    Frame_insymbol _F = { };
    
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
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set('0', '9');
    
    // subroutine body
    #line 380
    L_1:
    while((Ch == ' '))
    {
        #line 380
        P_nextch(nullptr);
    }
    
    #line 381
    if((_setLiteral1 & Ch))
    {
        #line 382
        _F.k = 0;
        
        #line 382
        Id = "          ";
        
        #line 383
        do
        {
            #line 383
            if((_F.k < C_alng))
            {
                #line 384
                _F.k = (_F.k + 1);
                
                #line 384
                Id[_F.k] = Ch;
            }
            
            #line 386
            P_nextch(nullptr);
        }
        while(!(!(_setLiteral2 & Ch)));
        
        #line 388
        _F.i = 1;
        
        #line 388
        _F.j = C_nkw;
        
        #line 389
        do
        {
            #line 389
            _F.k = ((_F.i + _F.j) / 2);
            
            #line 390
            if(_strcmpLE<10>(Id, Key[_F.k]))
            {
                #line 390
                _F.j = (_F.k - 1);
            }
            
            #line 391
            if(_strcmpGE<10>(Id, Key[_F.k]))
            {
                #line 391
                _F.i = (_F.k + 1);
            }
        }
        while(!(_F.i > _F.j));
        
        #line 393
        if(((_F.i - 1) > _F.j))
        {
            #line 393
            Sy = Ksy[_F.k];
        }
        else
        {
            #line 393
            Sy = C_ident;
        }
    }
    else
    {
        #line 395
        if((_setLiteral3 & Ch))
        {
            #line 396
            _F.k = 0;
            
            #line 396
            Inum = 0;
            
            #line 396
            Sy = C_intcon;
            
            #line 397
            do
            {
                #line 397
                Inum = (((Inum * 10) + _ord(Ch)) - _ord('0'));
                
                #line 398
                _F.k = (_F.k + 1);
                
                #line 398
                P_nextch(nullptr);
            }
            while(!(!(_setLiteral4 & Ch)));
            
            #line 400
            if(((_F.k > C_kmax) || (Inum > C_nmax)))
            {
                #line 401
                P_error(nullptr, 21);
                
                #line 401
                Inum = 0;
                
                #line 401
                _F.k = 0;
            }
            
            #line 403
            if((Ch == '.'))
            {
                #line 404
                P_nextch(nullptr);
                
                #line 405
                if((Ch == '.'))
                {
                    #line 405
                    Ch = ':';
                }
                else
                {
                    #line 406
                    Sy = C_realcon;
                    
                    #line 406
                    Rnum = Inum;
                    
                    #line 406
                    _F.e = 0;
                    
                    #line 407
                    while((_setLiteral5 & Ch))
                    {
                        #line 408
                        _F.e = (_F.e - 1);
                        
                        #line 409
                        Rnum = ((10.0000 * Rnum) + (_ord(Ch) - _ord('0')));
                        
                        #line 409
                        P_nextch(nullptr);
                    }
                    
                    #line 411
                    if((Ch == 'e'))
                    {
                        #line 411
                        P_insymbol_readscale(&_F);
                    }
                    
                    #line 412
                    if((_F.e != 0))
                    {
                        #line 412
                        P_insymbol_adjustscale(&_F);
                    }
                }
            }
            else
            {
                #line 415
                if((Ch == 'e'))
                {
                    #line 416
                    Sy = C_realcon;
                    
                    #line 416
                    Rnum = Inum;
                    
                    #line 416
                    _F.e = 0;
                    
                    #line 417
                    P_insymbol_readscale(&_F);
                    
                    #line 417
                    if((_F.e != 0))
                    {
                        #line 417
                        P_insymbol_adjustscale(&_F);
                    }
                }
            }
            
            { /* NOP */ }
        }
        else
        {
            #line 420
            switch(Ch)
            {
            case ':':
                #line 421
                P_nextch(nullptr);
                
                #line 422
                if((Ch == '='))
                {
                    #line 423
                    Sy = C_becomes;
                    
                    #line 423
                    P_nextch(nullptr);
                }
                else
                {
                    #line 424
                    Sy = C_colon;
                }
                break;
            
            case '<':
                #line 426
                P_nextch(nullptr);
                
                #line 427
                if((Ch == '='))
                {
                    #line 427
                    Sy = C_leg;
                    
                    #line 427
                    P_nextch(nullptr);
                }
                else
                {
                    #line 428
                    if((Ch == '>'))
                    {
                        #line 428
                        Sy = C_neg;
                        
                        #line 428
                        P_nextch(nullptr);
                    }
                    else
                    {
                        #line 428
                        Sy = C_lss;
                    }
                }
                break;
            
            case '>':
                #line 430
                P_nextch(nullptr);
                
                #line 431
                if((Ch == '='))
                {
                    #line 431
                    Sy = C_geg;
                    
                    #line 431
                    P_nextch(nullptr);
                }
                else
                {
                    #line 431
                    Sy = C_gtr;
                }
                break;
            
            case '.':
                #line 433
                P_nextch(nullptr);
                
                #line 434
                if((Ch == '.'))
                {
                    #line 435
                    Sy = C_colon;
                    
                    #line 435
                    P_nextch(nullptr);
                }
                else
                {
                    #line 436
                    Sy = C_period;
                }
                break;
            
            case '\'':
                #line 438
                _F.k = 0;
                
                #line 439
                L_2:
                P_nextch(nullptr);
                
                #line 440
                if((Ch == '\''))
                {
                    #line 441
                    P_nextch(nullptr);
                    
                    #line 441
                    if((Ch != '\''))
                    {
                        #line 441
                        goto L_3;
                    }
                }
                
                #line 443
                if(((Sx + _F.k) == C_smax))
                {
                    #line 443
                    P_fatal(nullptr, 7);
                }
                
                #line 444
                Stab[(Sx + _F.k)] = Ch;
                
                #line 444
                _F.k = (_F.k + 1);
                
                #line 445
                if((Cc == 1))
                {
                    #line 446
                    _F.k = 0;
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 448
                    goto L_2;
                }
                
                #line 449
                L_3:
                if((_F.k == 1))
                {
                    #line 450
                    Sy = C_charcon;
                    
                    #line 450
                    Inum = _ord(Stab[Sx]);
                }
                else
                {
                    #line 452
                    if((_F.k == 0))
                    {
                        #line 453
                        P_error(nullptr, 38);
                        
                        #line 453
                        Sy = C_charcon;
                        
                        #line 453
                        Inum = 0;
                    }
                    else
                    {
                        #line 455
                        Sy = C_stringt;
                        
                        #line 455
                        Inum = Sx;
                        
                        #line 455
                        Sleng = _F.k;
                        
                        #line 455
                        Sx = (Sx + _F.k);
                    }
                }
                break;
            
            case '(':
                #line 458
                P_nextch(nullptr);
                
                #line 459
                if((Ch != '*'))
                {
                    #line 459
                    Sy = C_lparent;
                }
                else
                {
                    #line 460
                    P_nextch(nullptr);
                    
                    #line 461
                    do
                    {
                        #line 462
                        while((Ch != '*'))
                        {
                            #line 462
                            P_nextch(nullptr);
                        }
                        
                        #line 463
                        P_nextch(nullptr);
                    }
                    while(!(Ch == ')'));
                    
                    #line 465
                    P_nextch(nullptr);
                    
                    #line 465
                    goto L_1;
                }
                break;
            
            case '+':
            case '-':
            case '*':
            case '/':
            case ')':
            case '=':
            case ',':
            case '[':
            case ']':
            case '#':
            case '&':
            case ';':
                #line 469
                Sy = Sps[Ch];
                
                #line 469
                P_nextch(nullptr);
                break;
            
            case '$':
            case '%':
            case '@':
            case '\\':
            case '~':
            case '{':
            case '}':
            case '^':
                #line 472
                P_error(nullptr, 24);
                
                #line 472
                P_nextch(nullptr);
                
                #line 472
                goto L_1;
                break;
            }
        }
    }
}


#line 353
//================================================================================
// scope: insymbol_readscale (level : 3)

// activation record
struct Frame_insymbol_readscale
{
   Frame_insymbol* _slink;

    // locals
    T_integer s;
    T_integer Sign;
};

// function body
void P_insymbol_readscale(void* _slink)
{
    // prologue/frame definition
    Frame_insymbol_readscale _F = { (Frame_insymbol*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('0', '9');
    
    // subroutine body
    #line 355
    P_nextch(nullptr);
    
    #line 355
    _F.Sign = 1;
    
    #line 355
    _F.s = 0;
    
    #line 356
    if((Ch == '+'))
    {
        #line 356
        P_nextch(nullptr);
    }
    else
    {
        #line 357
        if((Ch == '-'))
        {
            #line 357
            P_nextch(nullptr);
            
            #line 357
            _F.Sign = (-1);
        }
    }
    
    #line 358
    while((_setLiteral1 & Ch))
    {
        #line 359
        _F.s = (((10 * _F.s) + _ord(Ch)) - _ord('0'));
        
        #line 359
        P_nextch(nullptr);
    }
    
    #line 361
    _F._slink->e = ((_F.s * _F.Sign) + _F._slink->e);
}


#line 364
//================================================================================
// scope: insymbol_adjustscale (level : 3)

// activation record
struct Frame_insymbol_adjustscale
{
   Frame_insymbol* _slink;

    // locals
    T_real d;
    T_integer s;
    T_real t;
};

// function body
void P_insymbol_adjustscale(void* _slink)
{
    // prologue/frame definition
    Frame_insymbol_adjustscale _F = { (Frame_insymbol*)_slink };
    
    // subroutine body
    #line 366
    if(((_F._slink->k + _F._slink->e) > C_emax))
    {
        #line 366
        P_error(nullptr, 21);
    }
    else
    {
        #line 367
        if(((_F._slink->k + _F._slink->e) < C_emin))
        {
            #line 367
            Rnum = 0;
        }
        else
        {
            #line 368
            _F.s = _abs(_F._slink->e);
            
            #line 368
            _F.t = 1.00000;
            
            #line 368
            _F.d = 10.0000;
            
            #line 369
            do
            {
                #line 370
                while((!_odd(_F.s)))
                {
                    #line 371
                    _F.s = (_F.s / 2);
                    
                    #line 371
                    _F.d = _sqr(_F.d);
                }
                
                #line 373
                _F.s = (_F.s - 1);
                
                #line 373
                _F.t = (_F.d * _F.t);
            }
            while(!(_F.s == 0));
            
            #line 375
            if((_F._slink->e >= 0))
            {
                #line 375
                Rnum = (Rnum * _F.t);
            }
            else
            {
                #line 375
                Rnum = ((double)Rnum / _F.t);
            }
        }
    }
}


#line 477
//================================================================================
// scope: enter (level : 2)

// activation record
struct Frame_enter
{
    // parameters
    T_alfa X0;
    T_object X1;
    T_types X2;
    T_integer X3;
};

// function body
void P_enter(void* _slink, T_alfa X0, T_object X1, T_types X2, T_integer X3)
{
    // prologue/frame definition
    Frame_enter _F = {X0, X1, X2, X3 };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 479
    t = (t + 1);
    
    #line 481
    Tab[t].Name = _F.X0;
    
    #line 481
    Tab[t].Link = (t - 1);
    
    #line 481
    Tab[t].Obj = _F.X1;
    
    #line 482
    Tab[t].Typ = _F.X2;
    
    #line 482
    Tab[t].Ref = 0;
    
    #line 482
    Tab[t].Normal = C_true;
    
    #line 483
    Tab[t].Lev = 0;
    
    #line 483
    Tab[t].Adr = _F.X3;
}


#line 487
//================================================================================
// scope: enterarray (level : 2)

// activation record
struct Frame_enterarray
{
    // parameters
    T_types Tp;
    T_integer l;
    T_integer h;
};

// function body
void P_enterarray(void* _slink, T_types Tp, T_integer l, T_integer h)
{
    // prologue/frame definition
    Frame_enterarray _F = {Tp, l, h };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 488
    if((_F.l > _F.h))
    {
        #line 488
        P_error(nullptr, 27);
    }
    
    #line 489
    if(((_abs(_F.l) > C_xmax) || (_abs(_F.h) > C_xmax)))
    {
        #line 490
        P_error(nullptr, 27);
        
        #line 490
        _F.l = 0;
        
        #line 490
        _F.h = 0;
        
        { /* NOP */ }
    }
    
    #line 492
    if((a == C_amax))
    {
        #line 492
        P_fatal(nullptr, 4);
    }
    else
    {
        #line 493
        a = (a + 1);
        
        #line 495
        Atab[a].Inxtyp = _F.Tp;
        
        #line 495
        Atab[a].Low = _F.l;
        
        #line 495
        Atab[a].High = _F.h;
    }
}


#line 500
//================================================================================
// scope: enterblock (level : 2)

// activation record
struct Frame_enterblock
{};

// function body
void P_enterblock(void* _slink)
{
    // prologue/frame definition
    Frame_enterblock _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 501
    if((b == C_bmax))
    {
        #line 501
        P_fatal(nullptr, 2);
    }
    else
    {
        #line 502
        b = (b + 1);
        
        #line 502
        Btab[b].Last = 0;
        
        #line 502
        Btab[b].Lastpar = 0;
    }
}


#line 506
//================================================================================
// scope: enterreal (level : 2)

// activation record
struct Frame_enterreal
{
    // parameters
    T_real x;
};

// function body
void P_enterreal(void* _slink, T_real x)
{
    // prologue/frame definition
    Frame_enterreal _F = {x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 507
    if((C2 == (C_c2max - 1)))
    {
        #line 507
        P_fatal(nullptr, 3);
    }
    else
    {
        #line 508
        Rconst[(C2 + 1)] = _F.x;
        
        #line 508
        C1 = 1;
        
        #line 509
        while((Rconst[C1] != _F.x))
        {
            #line 509
            C1 = (C1 + 1);
        }
        
        #line 510
        if((C1 > C2))
        {
            #line 510
            C2 = C1;
        }
    }
}


#line 514
//================================================================================
// scope: emit (level : 2)

// activation record
struct Frame_emit
{
    // parameters
    T_integer Fct;
};

// function body
void P_emit(void* _slink, T_integer Fct)
{
    // prologue/frame definition
    Frame_emit _F = {Fct };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 515
    if((Lc == C_cmax))
    {
        #line 515
        P_fatal(nullptr, 6);
    }
    
    #line 516
    Code[Lc].f = _F.Fct;
    
    #line 516
    Lc = (Lc + 1);
}


#line 519
//================================================================================
// scope: emit1 (level : 2)

// activation record
struct Frame_emit1
{
    // parameters
    T_integer Fct;
    T_integer b;
};

// function body
void P_emit1(void* _slink, T_integer Fct, T_integer b)
{
    // prologue/frame definition
    Frame_emit1 _F = {Fct, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 520
    if((Lc == C_cmax))
    {
        #line 520
        P_fatal(nullptr, 6);
    }
    
    #line 522
    Code[Lc].f = _F.Fct;
    
    #line 522
    Code[Lc].y = _F.b;
    
    #line 523
    Lc = (Lc + 1);
}


#line 526
//================================================================================
// scope: emit2 (level : 2)

// activation record
struct Frame_emit2
{
    // parameters
    T_integer Fct;
    T_integer a;
    T_integer b;
};

// function body
void P_emit2(void* _slink, T_integer Fct, T_integer a, T_integer b)
{
    // prologue/frame definition
    Frame_emit2 _F = {Fct, a, b };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 527
    if((Lc == C_cmax))
    {
        #line 527
        P_fatal(nullptr, 6);
    }
    
    #line 529
    Code[Lc].f = _F.Fct;
    
    #line 529
    Code[Lc].x = _F.a;
    
    #line 529
    Code[Lc].y = _F.b;
    
    #line 530
    Lc = (Lc + 1);
}


#line 533
//================================================================================
// scope: printtables (level : 2)

// activation record
struct Frame_printtables
{
    // locals
    T_integer i;
    T_order o;
};

// function body
void P_printtables(void* _slink)
{
    // prologue/frame definition
    Frame_printtables _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 537
    Output << "identifiers     link  obj  typ  ref  nrm  lev  adr" << _WRITELN;
    
    #line 538
    Output << _WRITELN;
    
    #line 539
    _FOR_TO(_F.i, (Btab[1].Last + 1), t)
    {
        #line 541
        Output << _F.i << ' ' << Tab[_F.i].Name << _format(Tab[_F.i].Link, 5, 0) << _format(_ord(Tab[_F.i].Obj), 5, 0) << _format(_ord(Tab[_F.i].Typ), 5, 0) << _format(Tab[_F.i].Ref, 5, 0) << _format(_ord(Tab[_F.i].Normal), 5, 0) << _format(Tab[_F.i].Lev, 5, 0) << _format(Tab[_F.i].Adr, 5, 0) << _WRITELN;
    }
    _FOR_END(_F.i)
    
    #line 544
    Output << "blocks    last lpar psze vsze" << _WRITELN;
    
    #line 545
    Output << _WRITELN;
    
    #line 546
    _FOR_TO(_F.i, 1, b)
    {
        #line 548
        Output << _F.i << _format(Btab[_F.i].Last, 5, 0) << _format(Btab[_F.i].Lastpar, 5, 0) << _format(Btab[_F.i].Psize, 5, 0) << _format(Btab[_F.i].Vsize, 5, 0) << _WRITELN;
    }
    _FOR_END(_F.i)
    
    #line 550
    Output << "arrays    xtyp etyp eref  low high elsz size" << _WRITELN;
    
    #line 551
    Output << _WRITELN;
    
    #line 552
    _FOR_TO(_F.i, 1, a)
    {
        #line 554
        Output << _F.i << _format(_ord(Atab[_F.i].Inxtyp), 5, 0) << _format(_ord(Atab[_F.i].Eltyp), 5, 0) << _format(Atab[_F.i].Elref, 5, 0) << _format(Atab[_F.i].Low, 5, 0) << _format(Atab[_F.i].High, 5, 0) << _format(Atab[_F.i].Elsize, 5, 0) << _format(Atab[_F.i].Size, 5, 0) << _WRITELN;
    }
    _FOR_END(_F.i)
    
    #line 557
    Output << "code:" << _WRITELN;
    
    #line 558
    Output << _WRITELN;
    
    #line 559
    _FOR_TO(_F.i, 0, (Lc - 1))
    {
        #line 560
        if((_mod(_F.i , 5) == 0))
        {
            #line 561
            Output << _WRITELN;
            
            #line 561
            Output << _format(_F.i, 5, 0);
        }
        
        #line 563
        _F.o = Code[_F.i];
        
        #line 563
        Output << _format(_F.o.f, 5, 0);
        
        #line 565
        if(((_F.o.f < 31) || (_F.o.f == 36)))
        {
            #line 566
            if((_F.o.f < 4))
            {
                #line 566
                Output << _format(_F.o.x, 2, 0) << _format(_F.o.y, 5, 0);
            }
            else
            {
                #line 567
                Output << _format(_F.o.y, 7, 0);
            }
        }
        else
        {
            #line 568
            Output << "       ";
        }
        
        #line 569
        Output << ',';
    }
    _FOR_END(_F.i)
    
    #line 571
    Output << _WRITELN;
}


#line 574
//================================================================================
// scope: block (level : 2)

// types
struct T_block_conrec
{
    // variable fields selector
    T_types Tp;
    // variable fields
    union
    {
        T_integer i;
        T_real r;
    };
};

// forward declarations
void P_block_skip(void* _slink, T_symset Fsys, T_integer n);
void P_block_test(void* _slink, T_symset S1, T_symset S2, T_integer n);
void P_block_testsemicolon(void* _slink);
void P_block_enter(void* _slink, T_alfa Id, T_object k);
T_integer F_block_loc(void* _slink, T_alfa Id);
void P_block_entervariable(void* _slink);
void P_block_constant(void* _slink, T_symset Fsys, T_block_conrec& c);
void P_block_typ(void* _slink, T_symset Fsys, T_types& Tp, T_integer& Rf, T_integer& Sz);
void P_block_parameterlist(void* _slink);
void P_block_constantdeclaration(void* _slink);
void P_block_typedeclaration(void* _slink);
void P_block_variabledeclaration(void* _slink);
void P_block_procdeclaration(void* _slink);
void P_block_statement(void* _slink, T_symset Fsys);

// activation record
struct Frame_block
{
    // parameters
    T_symset Fsys;
    T_boolean Isfun;
    T_integer Level;

    // locals
    T_integer Dx;
    T_integer Prb;
    T_integer Prt;
    T_integer x;
};

// function body
void P_block(void* _slink, T_symset Fsys, T_boolean Isfun, T_integer Level)
{
    // prologue/frame definition
    Frame_block _F = {Fsys, Isfun, Level };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_lparent);
    _setLiteral1.set(C_colon);
    _setLiteral1.set(C_semicolon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_proceduresy);
    _setLiteral3.set(C_functionsy);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_beginsy);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_semicolon);
    _setLiteral5.set(C_endsy);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_semicolon);
    _setLiteral6.set(C_endsy);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_semicolon);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_period);
    
    _T_GenericSet _setLiteral9;
    
    // subroutine body
    #line 1477
    _F.Dx = 5;
    
    #line 1477
    _F.Prt = t;
    
    #line 1478
    if((_F.Level > C_lmax))
    {
        #line 1478
        P_fatal(nullptr, 5);
    }
    
    #line 1479
    P_block_test(&_F, T_symset::C(_setLiteral1), _F.Fsys, 7);
    
    #line 1480
    P_enterblock(nullptr);
    
    #line 1480
    Display[_F.Level] = b;
    
    #line 1480
    _F.Prb = b;
    
    #line 1481
    Tab[_F.Prt].Typ = C_notyp;
    
    #line 1481
    Tab[_F.Prt].Ref = _F.Prb;
    
    #line 1482
    if((Sy == C_lparent))
    {
        #line 1482
        P_block_parameterlist(&_F);
    }
    
    #line 1483
    Btab[_F.Prb].Lastpar = t;
    
    #line 1483
    Btab[_F.Prb].Psize = _F.Dx;
    
    #line 1484
    if(_F.Isfun)
    {
        #line 1485
        if((Sy == C_colon))
        {
            #line 1486
            P_insymbol(nullptr);
            
            #line 1487
            if((Sy == C_ident))
            {
                #line 1488
                _F.x = F_block_loc(&_F, Id);
                
                #line 1488
                P_insymbol(nullptr);
                
                #line 1489
                if((_F.x != 0))
                {
                    #line 1490
                    if((Tab[_F.x].Obj != C_typel))
                    {
                        #line 1490
                        P_error(nullptr, 29);
                    }
                    else
                    {
                        #line 1491
                        if((Stantyps & Tab[_F.x].Typ))
                        {
                            #line 1492
                            Tab[_F.Prt].Typ = Tab[_F.x].Typ;
                        }
                        else
                        {
                            #line 1493
                            P_error(nullptr, 15);
                        }
                    }
                }
            }
            else
            {
                #line 1494
                P_block_skip(&_F, T_symset::C((_setLiteral2 + _F.Fsys)), 2);
            }
        }
        else
        {
            #line 1495
            P_error(nullptr, 5);
        }
    }
    
    #line 1496
    if((Sy == C_semicolon))
    {
        #line 1496
        P_insymbol(nullptr);
    }
    else
    {
        #line 1496
        P_error(nullptr, 14);
    }
    
    #line 1497
    do
    {
        #line 1498
        if((Sy == C_constsy))
        {
            #line 1498
            P_block_constantdeclaration(&_F);
        }
        
        #line 1499
        if((Sy == C_typesy))
        {
            #line 1499
            P_block_typedeclaration(&_F);
        }
        
        #line 1500
        if((Sy == C_varsy))
        {
            #line 1500
            P_block_variabledeclaration(&_F);
        }
        
        #line 1501
        Btab[_F.Prb].Vsize = _F.Dx;
        
        #line 1502
        while((_setLiteral3 & Sy))
        {
            #line 1502
            P_block_procdeclaration(&_F);
        }
        
        #line 1503
        P_block_test(&_F, T_symset::C(_setLiteral4), (Blockbegsys + Statbegsys), 56);
    }
    while(!(Statbegsys & Sy));
    
    #line 1505
    Tab[_F.Prt].Adr = Lc;
    
    #line 1506
    P_insymbol(nullptr);
    
    #line 1506
    P_block_statement(&_F, T_symset::C((_setLiteral5 + _F.Fsys)));
    
    #line 1507
    while(((_setLiteral7 + Statbegsys) & Sy))
    {
        #line 1508
        if((Sy == C_semicolon))
        {
            #line 1508
            P_insymbol(nullptr);
        }
        else
        {
            #line 1508
            P_error(nullptr, 14);
        }
        
        #line 1509
        P_block_statement(&_F, T_symset::C((_setLiteral6 + _F.Fsys)));
    }
    
    #line 1511
    if((Sy == C_endsy))
    {
        #line 1511
        P_insymbol(nullptr);
    }
    else
    {
        #line 1511
        P_error(nullptr, 57);
    }
    
    #line 1512
    P_block_test(&_F, T_symset::C((_F.Fsys + _setLiteral8)), T_symset::C(_setLiteral9), 6);
}


#line 587
//================================================================================
// scope: block_skip (level : 3)

// activation record
struct Frame_block_skip
{
   Frame_block* _slink;

    // parameters
    T_symset Fsys;
    T_integer n;
};

// function body
void P_block_skip(void* _slink, T_symset Fsys, T_integer n)
{
    // prologue/frame definition
    Frame_block_skip _F = { (Frame_block*)_slink, Fsys, n };
    
    // subroutine body
    #line 588
    P_error(nullptr, _F.n);
    
    #line 589
    while((!(_F.Fsys & Sy)))
    {
        #line 589
        P_insymbol(nullptr);
    }
}


#line 592
//================================================================================
// scope: block_test (level : 3)

// activation record
struct Frame_block_test
{
   Frame_block* _slink;

    // parameters
    T_symset S1;
    T_symset S2;
    T_integer n;
};

// function body
void P_block_test(void* _slink, T_symset S1, T_symset S2, T_integer n)
{
    // prologue/frame definition
    Frame_block_test _F = { (Frame_block*)_slink, S1, S2, n };
    
    // subroutine body
    #line 593
    if((!(_F.S1 & Sy)))
    {
        #line 594
        P_block_skip(_F._slink, (_F.S1 + _F.S2), _F.n);
    }
}


#line 597
//================================================================================
// scope: block_testsemicolon (level : 3)

// activation record
struct Frame_block_testsemicolon
{
   Frame_block* _slink;
};

// function body
void P_block_testsemicolon(void* _slink)
{
    // prologue/frame definition
    Frame_block_testsemicolon _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ident);
    
    // subroutine body
    #line 599
    if((Sy == C_semicolon))
    {
        #line 599
        P_insymbol(nullptr);
    }
    else
    {
        #line 600
        P_error(nullptr, 14);
        
        #line 601
        if((_setLiteral1 & Sy))
        {
            #line 601
            P_insymbol(nullptr);
        }
    }
    
    #line 603
    P_block_test(_F._slink, T_symset::C((_setLiteral2 + Blockbegsys)), _F._slink->Fsys, 6);
}


#line 606
//================================================================================
// scope: block_enter (level : 3)

// activation record
struct Frame_block_enter
{
   Frame_block* _slink;

    // parameters
    T_alfa Id;
    T_object k;

    // locals
    T_integer j;
    T_integer l;
};

// function body
void P_block_enter(void* _slink, T_alfa Id, T_object k)
{
    // prologue/frame definition
    Frame_block_enter _F = { (Frame_block*)_slink, Id, k };
    
    // subroutine body
    #line 608
    if((t == C_tmax))
    {
        #line 608
        P_fatal(nullptr, 1);
    }
    else
    {
        #line 609
        Tab[0].Name = _F.Id;
        
        #line 610
        _F.j = Btab[Display[_F._slink->Level]].Last;
        
        #line 610
        _F.l = _F.j;
        
        #line 611
        while(_strcmpNE<10>(Tab[_F.j].Name, _F.Id))
        {
            #line 611
            _F.j = Tab[_F.j].Link;
        }
        
        #line 612
        if((_F.j != 0))
        {
            #line 612
            P_error(nullptr, 1);
        }
        else
        {
            #line 613
            t = (t + 1);
            
            #line 615
            Tab[t].Name = _F.Id;
            
            #line 615
            Tab[t].Link = _F.l;
            
            #line 616
            Tab[t].Obj = _F.k;
            
            #line 616
            Tab[t].Typ = C_notyp;
            
            #line 616
            Tab[t].Ref = 0;
            
            #line 616
            Tab[t].Lev = _F._slink->Level;
            
            #line 617
            Tab[t].Adr = 0;
            
            #line 619
            Btab[Display[_F._slink->Level]].Last = t;
        }
    }
}


#line 624
//================================================================================
// scope: block_loc (level : 3)

// activation record
struct Frame_block_loc
{
   Frame_block* _slink;

    // parameters
    T_alfa Id;

    // locals
    T_integer _fnvalue;
    T_integer i;
    T_integer j;
};

// function body
T_integer F_block_loc(void* _slink, T_alfa Id)
{
    // prologue/frame definition
    Frame_block_loc _F = { (Frame_block*)_slink, Id };
    
    // subroutine body
    #line 626
    _F.i = _F._slink->Level;
    
    #line 626
    Tab[0].Name = _F.Id;
    
    #line 627
    do
    {
        #line 627
        _F.j = Btab[Display[_F.i]].Last;
        
        #line 628
        while(_strcmpNE<10>(Tab[_F.j].Name, _F.Id))
        {
            #line 628
            _F.j = Tab[_F.j].Link;
        }
        
        #line 629
        _F.i = (_F.i - 1);
        
        { /* NOP */ }
    }
    while(!((_F.i < 0) || (_F.j != 0)));
    
    #line 631
    if((_F.j == 0))
    {
        #line 631
        P_error(nullptr, 0);
    }
    
    #line 631
    _F._fnvalue = _F.j;
    
    // epilogue
    return _F._fnvalue;
}


#line 634
//================================================================================
// scope: block_entervariable (level : 3)

// activation record
struct Frame_block_entervariable
{
   Frame_block* _slink;
};

// function body
void P_block_entervariable(void* _slink)
{
    // prologue/frame definition
    Frame_block_entervariable _F = { (Frame_block*)_slink };
    
    // subroutine body
    #line 635
    if((Sy == C_ident))
    {
        #line 636
        P_block_enter(_F._slink, Id, C_variable);
        
        #line 636
        P_insymbol(nullptr);
    }
    else
    {
        #line 638
        P_error(nullptr, 2);
    }
}


#line 641
//================================================================================
// scope: block_constant (level : 3)

// activation record
struct Frame_block_constant
{
   Frame_block* _slink;

    // parameters
    T_symset Fsys;
    T_block_conrec& c;

    // locals
    T_integer Sign;
    T_integer x;
};

// function body
void P_block_constant(void* _slink, T_symset Fsys, T_block_conrec& c)
{
    // prologue/frame definition
    Frame_block_constant _F = { (Frame_block*)_slink, Fsys, c };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_plus);
    _setLiteral1.set(C_minus);
    
    _T_GenericSet _setLiteral2;
    
    // subroutine body
    #line 643
    _F.c.Tp = C_notyp;
    
    #line 643
    _F.c.i = 0;
    
    #line 644
    P_block_test(_F._slink, Constbegsys, _F.Fsys, 50);
    
    #line 645
    if((Constbegsys & Sy))
    {
        #line 647
        if((Sy == C_charcon))
        {
            #line 648
            _F.c.Tp = C_chars;
            
            #line 648
            _F.c.i = Inum;
            
            #line 648
            P_insymbol(nullptr);
        }
        else
        {
            #line 651
            _F.Sign = 1;
            
            #line 652
            if((_setLiteral1 & Sy))
            {
                #line 653
                if((Sy == C_minus))
                {
                    #line 653
                    _F.Sign = (-1);
                }
                
                #line 654
                P_insymbol(nullptr);
            }
            
            #line 656
            if((Sy == C_ident))
            {
                #line 657
                _F.x = F_block_loc(_F._slink, Id);
                
                #line 658
                if((_F.x != 0))
                {
                    #line 659
                    if((Tab[_F.x].Obj != C_konstant))
                    {
                        #line 659
                        P_error(nullptr, 25);
                    }
                    else
                    {
                        #line 660
                        _F.c.Tp = Tab[_F.x].Typ;
                        
                        #line 661
                        if((_F.c.Tp == C_reals))
                        {
                            #line 662
                            _F.c.r = (_F.Sign * Rconst[Tab[_F.x].Adr]);
                        }
                        else
                        {
                            #line 663
                            _F.c.i = (_F.Sign * Tab[_F.x].Adr);
                        }
                    }
                }
                
                #line 665
                P_insymbol(nullptr);
            }
            else
            {
                #line 668
                if((Sy == C_intcon))
                {
                    #line 669
                    _F.c.Tp = C_ints;
                    
                    #line 669
                    _F.c.i = (_F.Sign * Inum);
                    
                    #line 669
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 671
                    if((Sy == C_realcon))
                    {
                        #line 672
                        _F.c.Tp = C_reals;
                        
                        #line 672
                        _F.c.r = (_F.Sign * Rnum);
                        
                        #line 672
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 673
                        P_block_skip(_F._slink, _F.Fsys, 50);
                    }
                }
            }
        }
        
        #line 675
        P_block_test(_F._slink, _F.Fsys, T_symset::C(_setLiteral2), 6);
    }
}


#line 679
//================================================================================
// scope: block_typ (level : 3)

// forward declarations
void P_block_typ_arraytyp(void* _slink, T_integer& Aref, T_integer& Arsz);

// activation record
struct Frame_block_typ
{
   Frame_block* _slink;

    // parameters
    T_symset Fsys;
    T_types& Tp;
    T_integer& Rf;
    T_integer& Sz;

    // locals
    T_integer Elrf;
    T_integer Elsz;
    T_types Eltp;
    T_integer Offset;
    T_integer T0;
    T_integer T1;
    T_integer x;
};

// function body
void P_block_typ(void* _slink, T_symset Fsys, T_types& Tp, T_integer& Rf, T_integer& Sz)
{
    // prologue/frame definition
    Frame_block_typ _F = { (Frame_block*)_slink, Fsys, Tp, Rf, Sz };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_endsy);
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ident);
    _setLiteral2.set(C_endsy);
    _setLiteral2.set(C_semicolon);
    
    _T_GenericSet _setLiteral3;
    
    // subroutine body
    #line 715
    _F.Tp = C_notyp;
    
    #line 715
    _F.Rf = 0;
    
    #line 715
    _F.Sz = 0;
    
    #line 716
    P_block_test(_F._slink, Typebegsys, _F.Fsys, 10);
    
    #line 717
    if((Typebegsys & Sy))
    {
        #line 719
        if((Sy == C_ident))
        {
            #line 720
            _F.x = F_block_loc(_F._slink, Id);
            
            #line 721
            if((_F.x != 0))
            {
                #line 723
                if((Tab[_F.x].Obj != C_typel))
                {
                    #line 723
                    P_error(nullptr, 29);
                }
                else
                {
                    #line 724
                    _F.Tp = Tab[_F.x].Typ;
                    
                    #line 724
                    _F.Rf = Tab[_F.x].Ref;
                    
                    #line 724
                    _F.Sz = Tab[_F.x].Adr;
                    
                    #line 725
                    if((_F.Tp == C_notyp))
                    {
                        #line 725
                        P_error(nullptr, 30);
                    }
                }
            }
            
            #line 727
            P_insymbol(nullptr);
        }
        else
        {
            #line 729
            if((Sy == C_arraysy))
            {
                #line 730
                P_insymbol(nullptr);
                
                #line 731
                if((Sy == C_lbrack))
                {
                    #line 731
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 732
                    P_error(nullptr, 11);
                    
                    #line 733
                    if((Sy == C_lparent))
                    {
                        #line 733
                        P_insymbol(nullptr);
                    }
                }
                
                #line 735
                _F.Tp = C_arrays;
                
                #line 735
                P_block_typ_arraytyp(&_F, _F.Rf, _F.Sz);
            }
            else
            {
                #line 737
                P_insymbol(nullptr);
                
                #line 738
                P_enterblock(nullptr);
                
                #line 738
                _F.Tp = C_records;
                
                #line 738
                _F.Rf = b;
                
                #line 739
                if((_F._slink->Level == C_lmax))
                {
                    #line 739
                    P_fatal(nullptr, 5);
                }
                
                #line 740
                _F._slink->Level = (_F._slink->Level + 1);
                
                #line 740
                Display[_F._slink->Level] = b;
                
                #line 740
                _F.Offset = 0;
                
                #line 741
                while((Sy != C_endsy))
                {
                    #line 743
                    if((Sy == C_ident))
                    {
                        #line 744
                        _F.T0 = t;
                        
                        #line 744
                        P_block_entervariable(_F._slink);
                        
                        #line 745
                        while((Sy == C_comma))
                        {
                            #line 746
                            P_insymbol(nullptr);
                            
                            #line 746
                            P_block_entervariable(_F._slink);
                        }
                        
                        #line 748
                        if((Sy == C_colon))
                        {
                            #line 748
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 748
                            P_error(nullptr, 5);
                        }
                        
                        #line 749
                        _F.T1 = t;
                        
                        #line 750
                        P_block_typ(_F._slink, T_symset::C((_F.Fsys + _setLiteral1)), _F.Eltp, _F.Elrf, _F.Elsz);
                        
                        #line 752
                        while((_F.T0 < _F.T1))
                        {
                            #line 753
                            _F.T0 = (_F.T0 + 1);
                            
                            #line 755
                            Tab[_F.T0].Typ = _F.Eltp;
                            
                            #line 755
                            Tab[_F.T0].Ref = _F.Elrf;
                            
                            #line 755
                            Tab[_F.T0].Normal = C_true;
                            
                            #line 756
                            Tab[_F.T0].Adr = _F.Offset;
                            
                            #line 756
                            _F.Offset = (_F.Offset + _F.Elsz);
                        }
                    }
                    
                    #line 760
                    if((Sy != C_endsy))
                    {
                        #line 761
                        if((Sy == C_semicolon))
                        {
                            #line 761
                            P_insymbol(nullptr);
                        }
                        else
                        {
                            #line 762
                            P_error(nullptr, 14);
                            
                            #line 763
                            if((Sy == C_comma))
                            {
                                #line 763
                                P_insymbol(nullptr);
                            }
                        }
                        
                        #line 765
                        P_block_test(_F._slink, T_symset::C(_setLiteral2), _F.Fsys, 6);
                    }
                }
                
                #line 768
                Btab[_F.Rf].Vsize = _F.Offset;
                
                #line 768
                _F.Sz = _F.Offset;
                
                #line 769
                Btab[_F.Rf].Psize = 0;
                
                #line 769
                P_insymbol(nullptr);
                
                #line 769
                _F._slink->Level = (_F._slink->Level - 1);
            }
        }
        
        #line 771
        P_block_test(_F._slink, _F.Fsys, T_symset::C(_setLiteral3), 6);
    }
}


#line 684
//================================================================================
// scope: block_typ_arraytyp (level : 4)

// activation record
struct Frame_block_typ_arraytyp
{
   Frame_block_typ* _slink;

    // parameters
    T_integer& Aref;
    T_integer& Arsz;

    // locals
    T_integer Elrf;
    T_integer Elsz;
    T_types Eltp;
    T_block_conrec High;
    T_block_conrec Low;
};

// function body
void P_block_typ_arraytyp(void* _slink, T_integer& Aref, T_integer& Arsz)
{
    // prologue/frame definition
    Frame_block_typ_arraytyp _F = { (Frame_block_typ*)_slink, Aref, Arsz };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_colon);
    _setLiteral1.set(C_rbrack);
    _setLiteral1.set(C_rparent);
    _setLiteral1.set(C_ofsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_rbrack);
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    _setLiteral2.set(C_ofsy);
    
    // subroutine body
    #line 688
    P_block_constant(_F._slink->_slink, T_symset::C((_setLiteral1 + _F._slink->Fsys)), _F.Low);
    
    #line 689
    if((_F.Low.Tp == C_reals))
    {
        #line 690
        P_error(nullptr, 27);
        
        #line 690
        _F.Low.Tp = C_ints;
        
        #line 690
        _F.Low.i = 0;
    }
    
    #line 692
    if((Sy == C_colon))
    {
        #line 692
        P_insymbol(nullptr);
    }
    else
    {
        #line 692
        P_error(nullptr, 13);
    }
    
    #line 693
    P_block_constant(_F._slink->_slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)), _F.High);
    
    #line 694
    if((_F.High.Tp != _F.Low.Tp))
    {
        #line 695
        P_error(nullptr, 27);
        
        #line 695
        _F.High.i = _F.Low.i;
    }
    
    #line 697
    P_enterarray(nullptr, _F.Low.Tp, _F.Low.i, _F.High.i);
    
    #line 697
    _F.Aref = a;
    
    #line 698
    if((Sy == C_comma))
    {
        #line 699
        P_insymbol(nullptr);
        
        #line 699
        _F.Eltp = C_arrays;
        
        #line 699
        P_block_typ_arraytyp(_F._slink, _F.Elrf, _F.Elsz);
    }
    else
    {
        #line 702
        if((Sy == C_rbrack))
        {
            #line 702
            P_insymbol(nullptr);
        }
        else
        {
            #line 703
            P_error(nullptr, 12);
            
            #line 704
            if((Sy == C_rparent))
            {
                #line 704
                P_insymbol(nullptr);
            }
        }
        
        #line 706
        if((Sy == C_ofsy))
        {
            #line 706
            P_insymbol(nullptr);
        }
        else
        {
            #line 706
            P_error(nullptr, 8);
        }
        
        #line 707
        P_block_typ(_F._slink->_slink, _F._slink->Fsys, _F.Eltp, _F.Elrf, _F.Elsz);
    }
    
    #line 710
    _F.Arsz = (((Atab[_F.Aref].High - Atab[_F.Aref].Low) + 1) * _F.Elsz);
    
    #line 710
    Atab[_F.Aref].Size = _F.Arsz;
    
    #line 711
    Atab[_F.Aref].Eltyp = _F.Eltp;
    
    #line 711
    Atab[_F.Aref].Elref = _F.Elrf;
    
    #line 711
    Atab[_F.Aref].Elsize = _F.Elsz;
    
    { /* NOP */ }
}


#line 775
//================================================================================
// scope: block_parameterlist (level : 3)

// activation record
struct Frame_block_parameterlist
{
   Frame_block* _slink;

    // locals
    T_integer Rf;
    T_integer Sz;
    T_integer T0;
    T_types Tp;
    T_boolean Valpar;
    T_integer x;
};

// function body
void P_block_parameterlist(void* _slink)
{
    // prologue/frame definition
    Frame_block_parameterlist _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    _setLiteral1.set(C_varsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_semicolon);
    _setLiteral3.set(C_rparent);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_ident);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_ident);
    _setLiteral5.set(C_varsy);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_rparent);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_ident);
    _setLiteral7.set(C_varsy);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(C_semicolon);
    _setLiteral8.set(C_colon);
    
    // subroutine body
    #line 779
    P_insymbol(nullptr);
    
    #line 779
    _F.Tp = C_notyp;
    
    #line 779
    _F.Rf = 0;
    
    #line 779
    _F.Sz = 0;
    
    #line 780
    P_block_test(_F._slink, T_symset::C(_setLiteral1), T_symset::C((_F._slink->Fsys + _setLiteral2)), 7);
    
    #line 781
    while((_setLiteral7 & Sy))
    {
        #line 782
        if((Sy != C_varsy))
        {
            #line 782
            _F.Valpar = C_true;
        }
        else
        {
            #line 783
            P_insymbol(nullptr);
            
            #line 783
            _F.Valpar = C_false;
        }
        
        #line 785
        _F.T0 = t;
        
        #line 785
        P_block_entervariable(_F._slink);
        
        #line 786
        while((Sy == C_comma))
        {
            #line 787
            P_insymbol(nullptr);
            
            #line 787
            P_block_entervariable(_F._slink);
            
            { /* NOP */ }
        }
        
        #line 789
        if((Sy == C_colon))
        {
            #line 790
            P_insymbol(nullptr);
            
            #line 791
            if((Sy != C_ident))
            {
                #line 791
                P_error(nullptr, 2);
            }
            else
            {
                #line 792
                _F.x = F_block_loc(_F._slink, Id);
                
                #line 792
                P_insymbol(nullptr);
                
                #line 793
                if((_F.x != 0))
                {
                    #line 795
                    if((Tab[_F.x].Obj != C_typel))
                    {
                        #line 795
                        P_error(nullptr, 29);
                    }
                    else
                    {
                        #line 796
                        _F.Tp = Tab[_F.x].Typ;
                        
                        #line 796
                        _F.Rf = Tab[_F.x].Ref;
                        
                        #line 797
                        if(_F.Valpar)
                        {
                            #line 797
                            _F.Sz = Tab[_F.x].Adr;
                        }
                        else
                        {
                            #line 797
                            _F.Sz = 1;
                        }
                    }
                }
                
                { /* NOP */ }
            }
            
            #line 800
            P_block_test(_F._slink, T_symset::C(_setLiteral3), T_symset::C((_setLiteral4 + _F._slink->Fsys)), 14);
        }
        else
        {
            #line 802
            P_error(nullptr, 5);
        }
        
        #line 803
        while((_F.T0 < t))
        {
            #line 804
            _F.T0 = (_F.T0 + 1);
            
            #line 806
            Tab[_F.T0].Typ = _F.Tp;
            
            #line 806
            Tab[_F.T0].Ref = _F.Rf;
            
            #line 807
            Tab[_F.T0].Normal = _F.Valpar;
            
            #line 807
            Tab[_F.T0].Adr = _F._slink->Dx;
            
            #line 807
            Tab[_F.T0].Lev = _F._slink->Level;
            
            #line 808
            _F._slink->Dx = (_F._slink->Dx + _F.Sz);
        }
        
        #line 811
        if((Sy != C_rparent))
        {
            #line 812
            if((Sy == C_semicolon))
            {
                #line 812
                P_insymbol(nullptr);
            }
            else
            {
                #line 813
                P_error(nullptr, 14);
                
                #line 814
                if((Sy == C_comma))
                {
                    #line 814
                    P_insymbol(nullptr);
                }
            }
            
            #line 816
            P_block_test(_F._slink, T_symset::C(_setLiteral5), T_symset::C((_setLiteral6 + _F._slink->Fsys)), 6);
        }
    }
    
    #line 819
    if((Sy == C_rparent))
    {
        #line 820
        P_insymbol(nullptr);
        
        #line 821
        P_block_test(_F._slink, T_symset::C(_setLiteral8), _F._slink->Fsys, 6);
    }
    else
    {
        #line 823
        P_error(nullptr, 4);
    }
}


#line 826
//================================================================================
// scope: block_constantdeclaration (level : 3)

// activation record
struct Frame_block_constantdeclaration
{
   Frame_block* _slink;

    // locals
    T_block_conrec c;
};

// function body
void P_block_constantdeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_constantdeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_ident);
    
    // subroutine body
    #line 828
    P_insymbol(nullptr);
    
    #line 829
    P_block_test(_F._slink, T_symset::C(_setLiteral1), Blockbegsys, 2);
    
    #line 830
    while((Sy == C_ident))
    {
        #line 831
        P_block_enter(_F._slink, Id, C_konstant);
        
        #line 831
        P_insymbol(nullptr);
        
        #line 832
        if((Sy == C_egl))
        {
            #line 832
            P_insymbol(nullptr);
        }
        else
        {
            #line 833
            P_error(nullptr, 16);
            
            #line 834
            if((Sy == C_becomes))
            {
                #line 834
                P_insymbol(nullptr);
            }
        }
        
        #line 836
        P_block_constant(_F._slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)), _F.c);
        
        #line 837
        Tab[t].Typ = _F.c.Tp;
        
        #line 837
        Tab[t].Ref = 0;
        
        #line 838
        if((_F.c.Tp == C_reals))
        {
            #line 839
            P_enterreal(nullptr, _F.c.r);
            
            #line 839
            Tab[t].Adr = C1;
        }
        else
        {
            #line 840
            Tab[t].Adr = _F.c.i;
        }
        
        #line 841
        P_block_testsemicolon(_F._slink);
    }
}


#line 845
//================================================================================
// scope: block_typedeclaration (level : 3)

// activation record
struct Frame_block_typedeclaration
{
   Frame_block* _slink;

    // locals
    T_integer Rf;
    T_integer Sz;
    T_integer T1;
    T_types Tp;
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
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_ident);
    
    // subroutine body
    #line 847
    P_insymbol(nullptr);
    
    #line 848
    P_block_test(_F._slink, T_symset::C(_setLiteral1), Blockbegsys, 2);
    
    #line 849
    while((Sy == C_ident))
    {
        #line 850
        P_block_enter(_F._slink, Id, C_typel);
        
        #line 850
        _F.T1 = t;
        
        #line 850
        P_insymbol(nullptr);
        
        #line 851
        if((Sy == C_egl))
        {
            #line 851
            P_insymbol(nullptr);
        }
        else
        {
            #line 852
            P_error(nullptr, 16);
            
            #line 853
            if((Sy == C_becomes))
            {
                #line 853
                P_insymbol(nullptr);
            }
        }
        
        #line 855
        P_block_typ(_F._slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)), _F.Tp, _F.Rf, _F.Sz);
        
        #line 857
        Tab[_F.T1].Typ = _F.Tp;
        
        #line 857
        Tab[_F.T1].Ref = _F.Rf;
        
        #line 857
        Tab[_F.T1].Adr = _F.Sz;
        
        #line 859
        P_block_testsemicolon(_F._slink);
    }
}


#line 863
//================================================================================
// scope: block_variabledeclaration (level : 3)

// activation record
struct Frame_block_variabledeclaration
{
   Frame_block* _slink;

    // locals
    T_integer Rf;
    T_integer Sz;
    T_integer T0;
    T_integer T1;
    T_types Tp;
};

// function body
void P_block_variabledeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_variabledeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_ident);
    
    // subroutine body
    #line 866
    P_insymbol(nullptr);
    
    #line 867
    while((Sy == C_ident))
    {
        #line 868
        _F.T0 = t;
        
        #line 868
        P_block_entervariable(_F._slink);
        
        #line 869
        while((Sy == C_comma))
        {
            #line 870
            P_insymbol(nullptr);
            
            #line 870
            P_block_entervariable(_F._slink);
            
            { /* NOP */ }
        }
        
        #line 872
        if((Sy == C_colon))
        {
            #line 872
            P_insymbol(nullptr);
        }
        else
        {
            #line 872
            P_error(nullptr, 5);
        }
        
        #line 873
        _F.T1 = t;
        
        #line 874
        P_block_typ(_F._slink, T_symset::C((_setLiteral1 + _F._slink->Fsys)), _F.Tp, _F.Rf, _F.Sz);
        
        #line 875
        while((_F.T0 < _F.T1))
        {
            #line 876
            _F.T0 = (_F.T0 + 1);
            
            #line 878
            Tab[_F.T0].Typ = _F.Tp;
            
            #line 878
            Tab[_F.T0].Ref = _F.Rf;
            
            #line 879
            Tab[_F.T0].Lev = _F._slink->Level;
            
            #line 879
            Tab[_F.T0].Adr = _F._slink->Dx;
            
            #line 879
            Tab[_F.T0].Normal = C_true;
            
            #line 880
            _F._slink->Dx = (_F._slink->Dx + _F.Sz);
        }
        
        #line 883
        P_block_testsemicolon(_F._slink);
    }
}


#line 887
//================================================================================
// scope: block_procdeclaration (level : 3)

// activation record
struct Frame_block_procdeclaration
{
   Frame_block* _slink;

    // locals
    T_boolean Isfun;
};

// function body
void P_block_procdeclaration(void* _slink)
{
    // prologue/frame definition
    Frame_block_procdeclaration _F = { (Frame_block*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    
    // subroutine body
    #line 889
    _F.Isfun = (Sy == C_functionsy);
    
    #line 889
    P_insymbol(nullptr);
    
    #line 890
    if((Sy != C_ident))
    {
        #line 891
        P_error(nullptr, 2);
        
        #line 891
        Id = "          ";
        
        { /* NOP */ }
    }
    
    #line 893
    if(_F.Isfun)
    {
        #line 893
        P_block_enter(_F._slink, Id, C_funktion);
    }
    else
    {
        #line 893
        P_block_enter(_F._slink, Id, C_prozedure);
    }
    
    #line 894
    Tab[t].Normal = C_true;
    
    #line 895
    P_insymbol(nullptr);
    
    #line 895
    P_block(nullptr, T_symset::C((_setLiteral1 + _F._slink->Fsys)), _F.Isfun, (_F._slink->Level + 1));
    
    #line 896
    if((Sy == C_semicolon))
    {
        #line 896
        P_insymbol(nullptr);
    }
    else
    {
        #line 896
        P_error(nullptr, 14);
    }
    
    #line 897
    P_emit(nullptr, (32 + _ord(_F.Isfun)));
}


#line 900
//================================================================================
// scope: block_statement (level : 3)

// forward declarations
void P_block_statement_selector(void* _slink, T_symset Fsys, T_item& v);
void P_block_statement_call(void* _slink, T_symset Fsys, T_integer i);
T_types F_block_statement_resulttype(void* _slink, T_types a, T_types b);
void P_block_statement_expression(void* _slink, T_symset Fsys, T_item& x);
void P_block_statement_assignment(void* _slink, T_integer Lv, T_integer Ad);
void P_block_statement_compoundstatement(void* _slink);
void P_block_statement_ifstatement(void* _slink);
void P_block_statement_casestatement(void* _slink);
void P_block_statement_repeatstatement(void* _slink);
void P_block_statement_whilestatement(void* _slink);
void P_block_statement_forstatement(void* _slink);
void P_block_statement_standproc(void* _slink, T_integer n);

// activation record
struct Frame_block_statement
{
   Frame_block* _slink;

    // parameters
    T_symset Fsys;

    // locals
    T_integer i;
};

// function body
void P_block_statement(void* _slink, T_symset Fsys)
{
    // prologue/frame definition
    Frame_block_statement _F = { (Frame_block*)_slink, Fsys };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ident);
    
    _T_GenericSet _setLiteral2;
    
    // subroutine body
    #line 1450
    if(((Statbegsys + _setLiteral1) & Sy))
    {
        #line 1451
        switch(Sy)
        {
        case C_ident:
            #line 1452
            _F.i = F_block_loc(_F._slink, Id);
            
            #line 1452
            P_insymbol(nullptr);
            
            #line 1453
            if((_F.i != 0))
            {
                #line 1454
                switch(Tab[_F.i].Obj)
                {
                case C_konstant:
                case C_typel:
                    #line 1455
                    P_error(nullptr, 45);
                    break;
                
                case C_variable:
                    #line 1457
                    P_block_statement_assignment(&_F, Tab[_F.i].Lev, Tab[_F.i].Adr);
                    break;
                
                case C_prozedure:
                    #line 1459
                    if((Tab[_F.i].Lev != 0))
                    {
                        #line 1459
                        P_block_statement_call(&_F, _F.Fsys, _F.i);
                    }
                    else
                    {
                        #line 1460
                        P_block_statement_standproc(&_F, Tab[_F.i].Adr);
                    }
                    break;
                
                case C_funktion:
                    #line 1462
                    if((Tab[_F.i].Ref == Display[_F._slink->Level]))
                    {
                        #line 1463
                        P_block_statement_assignment(&_F, (Tab[_F.i].Lev + 1), 0);
                    }
                    else
                    {
                        #line 1464
                        P_error(nullptr, 45);
                    }
                    break;
                }
            }
            break;
        
        case C_beginsy:
            #line 1467
            P_block_statement_compoundstatement(&_F);
            break;
        
        case C_ifsy:
            #line 1468
            P_block_statement_ifstatement(&_F);
            break;
        
        case C_casesy:
            #line 1469
            P_block_statement_casestatement(&_F);
            break;
        
        case C_whilesy:
            #line 1470
            P_block_statement_whilestatement(&_F);
            break;
        
        case C_repeatsy:
            #line 1471
            P_block_statement_repeatstatement(&_F);
            break;
        
        case C_forsy:
            #line 1472
            P_block_statement_forstatement(&_F);
            break;
        }
    }
    
    #line 1474
    P_block_test(_F._slink, _F.Fsys, T_symset::C(_setLiteral2), 14);
}


#line 904
//================================================================================
// scope: block_statement_selector (level : 4)

// activation record
struct Frame_block_statement_selector
{
   Frame_block_statement* _slink;

    // parameters
    T_symset Fsys;
    T_item& v;

    // locals
    T_integer a;
    T_integer j;
    T_item x;
};

// function body
void P_block_statement_selector(void* _slink, T_symset Fsys, T_item& v)
{
    // prologue/frame definition
    Frame_block_statement_selector _F = { (Frame_block_statement*)_slink, Fsys, v };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_rbrack);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_lbrack);
    _setLiteral2.set(C_lparent);
    _setLiteral2.set(C_period);
    
    _T_GenericSet _setLiteral3;
    
    // subroutine body
    #line 907
    do
    {
        #line 907
        if((Sy == C_period))
        {
            #line 908
            P_insymbol(nullptr);
            
            #line 909
            if((Sy != C_ident))
            {
                #line 909
                P_error(nullptr, 2);
            }
            else
            {
                #line 911
                if((_F.v.Typ != C_records))
                {
                    #line 911
                    P_error(nullptr, 31);
                }
                else
                {
                    #line 913
                    _F.j = Btab[_F.v.Ref].Last;
                    
                    #line 913
                    Tab[0].Name = Id;
                    
                    #line 914
                    while(_strcmpNE<10>(Tab[_F.j].Name, Id))
                    {
                        #line 914
                        _F.j = Tab[_F.j].Link;
                    }
                    
                    #line 915
                    if((_F.j == 0))
                    {
                        #line 915
                        P_error(nullptr, 0);
                    }
                    
                    #line 916
                    _F.v.Typ = Tab[_F.j].Typ;
                    
                    #line 916
                    _F.v.Ref = Tab[_F.j].Ref;
                    
                    #line 917
                    _F.a = Tab[_F.j].Adr;
                    
                    #line 917
                    if((_F.a != 0))
                    {
                        #line 917
                        P_emit1(nullptr, 9, _F.a);
                    }
                }
                
                #line 919
                P_insymbol(nullptr);
            }
        }
        else
        {
            #line 923
            if((Sy != C_lbrack))
            {
                #line 923
                P_error(nullptr, 11);
            }
            
            #line 924
            do
            {
                #line 924
                P_insymbol(nullptr);
                
                #line 925
                P_block_statement_expression(_F._slink, T_symset::C((_F.Fsys + _setLiteral1)), _F.x);
                
                #line 926
                if((_F.v.Typ != C_arrays))
                {
                    #line 926
                    P_error(nullptr, 28);
                }
                else
                {
                    #line 927
                    _F.a = _F.v.Ref;
                    
                    #line 928
                    if((Atab[_F.a].Inxtyp != _F.x.Typ))
                    {
                        #line 928
                        P_error(nullptr, 26);
                    }
                    else
                    {
                        #line 929
                        if((Atab[_F.a].Elsize == 1))
                        {
                            #line 929
                            P_emit1(nullptr, 20, _F.a);
                        }
                        else
                        {
                            #line 930
                            P_emit1(nullptr, 21, _F.a);
                        }
                    }
                    
                    #line 931
                    _F.v.Typ = Atab[_F.a].Eltyp;
                    
                    #line 931
                    _F.v.Ref = Atab[_F.a].Elref;
                }
            }
            while(!(Sy != C_comma));
            
            #line 934
            if((Sy == C_rbrack))
            {
                #line 934
                P_insymbol(nullptr);
            }
            else
            {
                #line 935
                P_error(nullptr, 12);
                
                #line 935
                if((Sy == C_rparent))
                {
                    #line 935
                    P_insymbol(nullptr);
                }
            }
        }
    }
    while(!(!(_setLiteral2 & Sy)));
    
    #line 939
    P_block_test(_F._slink->_slink, _F.Fsys, T_symset::C(_setLiteral3), 6);
}


#line 942
//================================================================================
// scope: block_statement_call (level : 4)

// activation record
struct Frame_block_statement_call
{
   Frame_block_statement* _slink;

    // parameters
    T_symset Fsys;
    T_integer i;

    // locals
    T_integer Cp;
    T_integer k;
    T_integer Lastp;
    T_item x;
};

// function body
void P_block_statement_call(void* _slink, T_symset Fsys, T_integer i)
{
    // prologue/frame definition
    Frame_block_statement_call _F = { (Frame_block_statement*)_slink, Fsys, i };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_lbrack);
    _setLiteral2.set(C_lparent);
    _setLiteral2.set(C_period);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_comma);
    _setLiteral3.set(C_colon);
    _setLiteral3.set(C_rparent);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_rparent);
    
    // subroutine body
    #line 945
    P_emit1(nullptr, 18, _F.i);
    
    #line 946
    _F.Lastp = Btab[Tab[_F.i].Ref].Lastpar;
    
    #line 946
    _F.Cp = _F.i;
    
    #line 947
    if((Sy == C_lparent))
    {
        #line 949
        do
        {
            #line 949
            P_insymbol(nullptr);
            
            #line 950
            if((_F.Cp >= _F.Lastp))
            {
                #line 950
                P_error(nullptr, 39);
            }
            else
            {
                #line 951
                _F.Cp = (_F.Cp + 1);
                
                #line 952
                if(Tab[_F.Cp].Normal)
                {
                    #line 954
                    P_block_statement_expression(_F._slink, T_symset::C((_F.Fsys + _setLiteral1)), _F.x);
                    
                    #line 955
                    if((_F.x.Typ == Tab[_F.Cp].Typ))
                    {
                        #line 957
                        if((_F.x.Ref != Tab[_F.Cp].Ref))
                        {
                            #line 957
                            P_error(nullptr, 36);
                        }
                        else
                        {
                            #line 958
                            if((_F.x.Typ == C_arrays))
                            {
                                #line 958
                                P_emit1(nullptr, 22, Atab[_F.x.Ref].Size);
                            }
                            else
                            {
                                #line 959
                                if((_F.x.Typ == C_records))
                                {
                                    #line 959
                                    P_emit1(nullptr, 22, Btab[_F.x.Ref].Vsize);
                                }
                            }
                        }
                    }
                    else
                    {
                        #line 962
                        if(((_F.x.Typ == C_ints) && (Tab[_F.Cp].Typ == C_reals)))
                        {
                            #line 963
                            P_emit1(nullptr, 26, 0);
                        }
                        else
                        {
                            #line 964
                            if((_F.x.Typ != C_notyp))
                            {
                                #line 964
                                P_error(nullptr, 36);
                            }
                        }
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 967
                    if((Sy != C_ident))
                    {
                        #line 967
                        P_error(nullptr, 2);
                    }
                    else
                    {
                        #line 968
                        _F.k = F_block_loc(_F._slink->_slink, Id);
                        
                        #line 968
                        P_insymbol(nullptr);
                        
                        #line 969
                        if((_F.k != 0))
                        {
                            #line 970
                            if((Tab[_F.k].Obj != C_variable))
                            {
                                #line 970
                                P_error(nullptr, 37);
                            }
                            
                            #line 971
                            _F.x.Typ = Tab[_F.k].Typ;
                            
                            #line 971
                            _F.x.Ref = Tab[_F.k].Ref;
                            
                            #line 972
                            if(Tab[_F.k].Normal)
                            {
                                #line 973
                                P_emit2(nullptr, 0, Tab[_F.k].Lev, Tab[_F.k].Adr);
                            }
                            else
                            {
                                #line 974
                                P_emit2(nullptr, 1, Tab[_F.k].Lev, Tab[_F.k].Adr);
                            }
                            
                            #line 975
                            if((_setLiteral2 & Sy))
                            {
                                #line 976
                                P_block_statement_selector(_F._slink, T_symset::C((_F.Fsys + _setLiteral3)), _F.x);
                            }
                            
                            #line 977
                            if(((_F.x.Typ != Tab[_F.Cp].Typ) || (_F.x.Ref != Tab[_F.Cp].Ref)))
                            {
                                #line 978
                                P_error(nullptr, 36);
                            }
                        }
                    }
                }
            }
            
            #line 983
            P_block_test(_F._slink->_slink, T_symset::C(_setLiteral4), _F.Fsys, 6);
        }
        while(!(Sy != C_comma));
        
        #line 985
        if((Sy == C_rparent))
        {
            #line 985
            P_insymbol(nullptr);
        }
        else
        {
            #line 985
            P_error(nullptr, 4);
        }
    }
    
    #line 987
    if((_F.Cp < _F.Lastp))
    {
        #line 987
        P_error(nullptr, 39);
    }
    
    #line 988
    P_emit1(nullptr, 19, (Btab[Tab[_F.i].Ref].Psize - 1));
    
    #line 989
    if((Tab[_F.i].Lev < _F._slink->_slink->Level))
    {
        #line 989
        P_emit2(nullptr, 3, Tab[_F.i].Lev, _F._slink->_slink->Level);
    }
}


#line 992
//================================================================================
// scope: block_statement_resulttype (level : 4)

// activation record
struct Frame_block_statement_resulttype
{
   Frame_block_statement* _slink;

    // parameters
    T_types a;
    T_types b;

    // locals
    T_types _fnvalue;
};

// function body
T_types F_block_statement_resulttype(void* _slink, T_types a, T_types b)
{
    // prologue/frame definition
    Frame_block_statement_resulttype _F = { (Frame_block_statement*)_slink, a, b };
    
    // subroutine body
    #line 994
    if(((_F.a > C_reals) || (_F.b > C_reals)))
    {
        #line 995
        P_error(nullptr, 33);
        
        #line 995
        _F._fnvalue = C_notyp;
    }
    else
    {
        #line 997
        if(((_F.a == C_notyp) || (_F.b == C_notyp)))
        {
            #line 997
            _F._fnvalue = C_notyp;
        }
        else
        {
            #line 998
            if((_F.a == C_ints))
            {
                #line 999
                if((_F.b == C_ints))
                {
                    #line 999
                    _F._fnvalue = C_ints;
                }
                else
                {
                    #line 1000
                    _F._fnvalue = C_reals;
                    
                    #line 1000
                    P_emit1(nullptr, 26, 1);
                }
            }
            else
            {
                #line 1003
                _F._fnvalue = C_reals;
                
                #line 1004
                if((_F.b == C_ints))
                {
                    #line 1004
                    P_emit1(nullptr, 26, 0);
                }
            }
        }
    }
    
    // epilogue
    return _F._fnvalue;
}


#line 1008
//================================================================================
// scope: block_statement_expression (level : 4)

// forward declarations
void P_block_statement_expression_simpleexpression(void* _slink, T_symset Fsys, T_item& x);

// activation record
struct Frame_block_statement_expression
{
   Frame_block_statement* _slink;

    // parameters
    T_symset Fsys;
    T_item& x;

    // locals
    T_symbol Op;
    T_item y;
};

// function body
void P_block_statement_expression(void* _slink, T_symset Fsys, T_item& x)
{
    // prologue/frame definition
    Frame_block_statement_expression _F = { (Frame_block_statement*)_slink, Fsys, x };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_egl);
    _setLiteral1.set(C_neg);
    _setLiteral1.set(C_lss);
    _setLiteral1.set(C_leg);
    _setLiteral1.set(C_gtr);
    _setLiteral1.set(C_geg);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_egl);
    _setLiteral2.set(C_neg);
    _setLiteral2.set(C_lss);
    _setLiteral2.set(C_leg);
    _setLiteral2.set(C_gtr);
    _setLiteral2.set(C_geg);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_notyp);
    _setLiteral3.set(C_ints);
    _setLiteral3.set(C_bools);
    _setLiteral3.set(C_chars);
    
    // subroutine body
    #line 1194
    P_block_statement_expression_simpleexpression(&_F, T_symset::C((_F.Fsys + _setLiteral1)), _F.x);
    
    #line 1195
    if((_setLiteral2 & Sy))
    {
        #line 1196
        _F.Op = Sy;
        
        #line 1196
        P_insymbol(nullptr);
        
        #line 1197
        P_block_statement_expression_simpleexpression(&_F, _F.Fsys, _F.y);
        
        #line 1198
        if(((_setLiteral3 & _F.x.Typ) && (_F.x.Typ == _F.y.Typ)))
        {
            #line 1200
            switch(_F.Op)
            {
            case C_egl:
                #line 1201
                P_emit(nullptr, 45);
                break;
            
            case C_neg:
                #line 1202
                P_emit(nullptr, 46);
                break;
            
            case C_lss:
                #line 1203
                P_emit(nullptr, 47);
                break;
            
            case C_leg:
                #line 1204
                P_emit(nullptr, 48);
                break;
            
            case C_gtr:
                #line 1205
                P_emit(nullptr, 49);
                break;
            
            case C_geg:
                #line 1206
                P_emit(nullptr, 50);
                break;
            }
        }
        else
        {
            #line 1208
            if((_F.x.Typ == C_ints))
            {
                #line 1209
                _F.x.Typ = C_reals;
                
                #line 1209
                P_emit1(nullptr, 26, 1);
            }
            else
            {
                #line 1211
                if((_F.y.Typ == C_ints))
                {
                    #line 1212
                    _F.y.Typ = C_reals;
                    
                    #line 1212
                    P_emit1(nullptr, 26, 0);
                }
            }
            
            #line 1214
            if(((_F.x.Typ == C_reals) && (_F.y.Typ == C_reals)))
            {
                #line 1215
                switch(_F.Op)
                {
                case C_egl:
                    #line 1216
                    P_emit(nullptr, 39);
                    break;
                
                case C_neg:
                    #line 1217
                    P_emit(nullptr, 40);
                    break;
                
                case C_lss:
                    #line 1218
                    P_emit(nullptr, 41);
                    break;
                
                case C_leg:
                    #line 1219
                    P_emit(nullptr, 42);
                    break;
                
                case C_gtr:
                    #line 1220
                    P_emit(nullptr, 43);
                    break;
                
                case C_geg:
                    #line 1221
                    P_emit(nullptr, 44);
                    break;
                }
            }
            else
            {
                #line 1223
                P_error(nullptr, 35);
            }
        }
        
        #line 1225
        _F.x.Typ = C_bools;
    }
}


#line 1011
//================================================================================
// scope: block_statement_expression_simpleexpression (level : 5)

// forward declarations
void P_block_statement_expression_simpleexpression_term(void* _slink, T_symset Fsys, T_item& x);

// activation record
struct Frame_block_statement_expression_simpleexpression
{
   Frame_block_statement_expression* _slink;

    // parameters
    T_symset Fsys;
    T_item& x;

    // locals
    T_symbol Op;
    T_item y;
};

// function body
void P_block_statement_expression_simpleexpression(void* _slink, T_symset Fsys, T_item& x)
{
    // prologue/frame definition
    Frame_block_statement_expression_simpleexpression _F = { (Frame_block_statement_expression*)_slink, Fsys, x };
    
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
    _setLiteral3.set(C_orsy);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_plus);
    _setLiteral4.set(C_minus);
    _setLiteral4.set(C_orsy);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_plus);
    _setLiteral5.set(C_minus);
    _setLiteral5.set(C_orsy);
    
    // subroutine body
    #line 1161
    if((_setLiteral1 & Sy))
    {
        #line 1162
        _F.Op = Sy;
        
        #line 1162
        P_insymbol(nullptr);
        
        #line 1163
        P_block_statement_expression_simpleexpression_term(&_F, T_symset::C((_F.Fsys + _setLiteral2)), _F.x);
        
        #line 1164
        if((_F.x.Typ > C_reals))
        {
            #line 1164
            P_error(nullptr, 33);
        }
        else
        {
            #line 1167
            if((_F.Op == C_minus))
            {
                #line 1167
                P_emit1(nullptr, 36, _ord(_F.x.Typ));
            }
        }
    }
    else
    {
        #line 1169
        P_block_statement_expression_simpleexpression_term(&_F, T_symset::C((_F.Fsys + _setLiteral3)), _F.x);
    }
    
    #line 1170
    while((_setLiteral5 & Sy))
    {
        #line 1171
        _F.Op = Sy;
        
        #line 1171
        P_insymbol(nullptr);
        
        #line 1172
        P_block_statement_expression_simpleexpression_term(&_F, T_symset::C((_F.Fsys + _setLiteral4)), _F.y);
        
        #line 1173
        if((_F.Op == C_orsy))
        {
            #line 1175
            if(((_F.x.Typ == C_bools) && (_F.y.Typ == C_bools)))
            {
                #line 1175
                P_emit(nullptr, 51);
            }
            else
            {
                #line 1176
                if(((_F.x.Typ != C_notyp) && (_F.y.Typ != C_notyp)))
                {
                    #line 1177
                    P_error(nullptr, 32);
                }
                
                #line 1178
                _F.x.Typ = C_notyp;
            }
        }
        else
        {
            #line 1181
            _F.x.Typ = F_block_statement_resulttype(_F._slink->_slink, _F.x.Typ, _F.y.Typ);
            
            #line 1182
            switch(_F.x.Typ)
            {
            case C_notyp:
                { /* NOP */ }
                break;
            
            case C_ints:
                #line 1184
                if((_F.Op == C_plus))
                {
                    #line 1184
                    P_emit(nullptr, 52);
                }
                else
                {
                    #line 1185
                    P_emit(nullptr, 53);
                }
                break;
            
            case C_reals:
                #line 1186
                if((_F.Op == C_plus))
                {
                    #line 1186
                    P_emit(nullptr, 54);
                }
                else
                {
                    #line 1187
                    P_emit(nullptr, 55);
                }
                break;
            }
        }
    }
}


#line 1014
//================================================================================
// scope: block_statement_expression_simpleexpression_term (level : 6)

// forward declarations
void P_block_statement_expression_simpleexpression_term_factor(void* _slink, T_symset Fsys, T_item& x);

// activation record
struct Frame_block_statement_expression_simpleexpression_term
{
   Frame_block_statement_expression_simpleexpression* _slink;

    // parameters
    T_symset Fsys;
    T_item& x;

    // locals
    T_symbol Op;
    T_item y;
};

// function body
void P_block_statement_expression_simpleexpression_term(void* _slink, T_symset Fsys, T_item& x)
{
    // prologue/frame definition
    Frame_block_statement_expression_simpleexpression_term _F = { (Frame_block_statement_expression_simpleexpression*)_slink, Fsys, x };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_times);
    _setLiteral1.set(C_rdiv);
    _setLiteral1.set(C_idiv);
    _setLiteral1.set(C_imod);
    _setLiteral1.set(C_andsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_times);
    _setLiteral2.set(C_rdiv);
    _setLiteral2.set(C_idiv);
    _setLiteral2.set(C_imod);
    _setLiteral2.set(C_andsy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_times);
    _setLiteral3.set(C_rdiv);
    _setLiteral3.set(C_idiv);
    _setLiteral3.set(C_imod);
    _setLiteral3.set(C_andsy);
    
    // subroutine body
    #line 1113
    P_block_statement_expression_simpleexpression_term_factor(&_F, T_symset::C((_F.Fsys + _setLiteral1)), _F.x);
    
    #line 1114
    while((_setLiteral3 & Sy))
    {
        #line 1115
        _F.Op = Sy;
        
        #line 1115
        P_insymbol(nullptr);
        
        #line 1116
        P_block_statement_expression_simpleexpression_term_factor(&_F, T_symset::C((_F.Fsys + _setLiteral2)), _F.y);
        
        #line 1117
        if((_F.Op == C_times))
        {
            #line 1118
            _F.x.Typ = F_block_statement_resulttype(_F._slink->_slink->_slink, _F.x.Typ, _F.y.Typ);
            
            #line 1119
            switch(_F.x.Typ)
            {
            case C_notyp:
                { /* NOP */ }
                break;
            
            case C_ints:
                #line 1121
                P_emit(nullptr, 57);
                break;
            
            case C_reals:
                #line 1122
                P_emit(nullptr, 60);
                break;
            }
        }
        else
        {
            #line 1125
            if((_F.Op == C_rdiv))
            {
                #line 1127
                if((_F.x.Typ == C_ints))
                {
                    #line 1128
                    P_emit1(nullptr, 26, 1);
                    
                    #line 1128
                    _F.x.Typ = C_reals;
                }
                
                #line 1130
                if((_F.y.Typ == C_ints))
                {
                    #line 1131
                    P_emit1(nullptr, 26, 0);
                    
                    #line 1131
                    _F.y.Typ = C_reals;
                }
                
                #line 1133
                if(((_F.x.Typ == C_reals) && (_F.y.Typ == C_reals)))
                {
                    #line 1134
                    P_emit(nullptr, 61);
                }
                else
                {
                    #line 1135
                    if(((_F.x.Typ != C_notyp) && (_F.y.Typ != C_notyp)))
                    {
                        #line 1136
                        P_error(nullptr, 32);
                    }
                    
                    #line 1137
                    _F.x.Typ = C_notyp;
                }
            }
            else
            {
                #line 1140
                if((_F.Op == C_andsy))
                {
                    #line 1141
                    if(((_F.x.Typ == C_bools) && (_F.y.Typ == C_bools)))
                    {
                        #line 1142
                        P_emit(nullptr, 56);
                    }
                    else
                    {
                        #line 1143
                        if(((_F.x.Typ != C_notyp) && (_F.y.Typ != C_notyp)))
                        {
                            #line 1144
                            P_error(nullptr, 32);
                        }
                        
                        #line 1145
                        _F.x.Typ = C_notyp;
                    }
                }
                else
                {
                    #line 1149
                    if(((_F.x.Typ == C_ints) && (_F.y.Typ == C_ints)))
                    {
                        #line 1150
                        if((_F.Op == C_idiv))
                        {
                            #line 1150
                            P_emit(nullptr, 58);
                        }
                        else
                        {
                            #line 1151
                            P_emit(nullptr, 59);
                        }
                    }
                    else
                    {
                        #line 1152
                        if(((_F.x.Typ != C_notyp) && (_F.y.Typ != C_notyp)))
                        {
                            #line 1153
                            P_error(nullptr, 34);
                        }
                        
                        #line 1154
                        _F.x.Typ = C_notyp;
                    }
                }
            }
        }
    }
}


#line 1017
//================================================================================
// scope: block_statement_expression_simpleexpression_term_factor (level : 7)

// forward declarations
void P_block_statement_expression_simpleexpression_term_factor_standfct(void* _slink, T_integer n);

// activation record
struct Frame_block_statement_expression_simpleexpression_term_factor
{
   Frame_block_statement_expression_simpleexpression_term* _slink;

    // parameters
    T_symset Fsys;
    T_item& x;

    // locals
    T_integer f;
    T_integer i;
};

// function body
void P_block_statement_expression_simpleexpression_term_factor(void* _slink, T_symset Fsys, T_item& x)
{
    // prologue/frame definition
    Frame_block_statement_expression_simpleexpression_term_factor _F = { (Frame_block_statement_expression_simpleexpression_term*)_slink, Fsys, x };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_lbrack);
    _setLiteral1.set(C_lparent);
    _setLiteral1.set(C_period);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_charcon);
    _setLiteral2.set(C_intcon);
    _setLiteral2.set(C_realcon);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_rparent);
    
    // subroutine body
    #line 1051
    _F.x.Typ = C_notyp;
    
    #line 1051
    _F.x.Ref = 0;
    
    #line 1052
    P_block_test(_F._slink->_slink->_slink->_slink->_slink, Facbegsys, _F.Fsys, 58);
    
    #line 1053
    while((Facbegsys & Sy))
    {
        #line 1055
        if((Sy == C_ident))
        {
            #line 1056
            _F.i = F_block_loc(_F._slink->_slink->_slink->_slink->_slink, Id);
            
            #line 1056
            P_insymbol(nullptr);
            
            #line 1058
            switch(Tab[_F.i].Obj)
            {
            case C_konstant:
                #line 1059
                _F.x.Typ = Tab[_F.i].Typ;
                
                #line 1059
                _F.x.Ref = 0;
                
                #line 1060
                if((_F.x.Typ == C_reals))
                {
                    #line 1061
                    P_emit1(nullptr, 25, Tab[_F.i].Adr);
                }
                else
                {
                    #line 1062
                    P_emit1(nullptr, 24, Tab[_F.i].Adr);
                }
                break;
            
            case C_variable:
                #line 1065
                _F.x.Typ = Tab[_F.i].Typ;
                
                #line 1065
                _F.x.Ref = Tab[_F.i].Ref;
                
                #line 1066
                if((_setLiteral1 & Sy))
                {
                    #line 1067
                    if(Tab[_F.i].Normal)
                    {
                        #line 1067
                        _F.f = 0;
                    }
                    else
                    {
                        #line 1067
                        _F.f = 1;
                    }
                    
                    #line 1068
                    P_emit2(nullptr, _F.f, Tab[_F.i].Lev, Tab[_F.i].Adr);
                    
                    #line 1069
                    P_block_statement_selector(_F._slink->_slink->_slink->_slink, _F.Fsys, _F.x);
                    
                    #line 1070
                    if((Stantyps & _F.x.Typ))
                    {
                        #line 1070
                        P_emit(nullptr, 34);
                    }
                }
                else
                {
                    #line 1073
                    if((Stantyps & _F.x.Typ))
                    {
                        #line 1074
                        if(Tab[_F.i].Normal)
                        {
                            #line 1074
                            _F.f = 1;
                        }
                        else
                        {
                            #line 1074
                            _F.f = 2;
                        }
                    }
                    else
                    {
                        #line 1076
                        if(Tab[_F.i].Normal)
                        {
                            #line 1076
                            _F.f = 0;
                        }
                        else
                        {
                            #line 1076
                            _F.f = 1;
                        }
                    }
                    
                    #line 1077
                    P_emit2(nullptr, _F.f, Tab[_F.i].Lev, Tab[_F.i].Adr);
                }
                break;
            
            case C_typel:
            case C_prozedure:
                #line 1080
                P_error(nullptr, 44);
                break;
            
            case C_funktion:
                #line 1081
                _F.x.Typ = Tab[_F.i].Typ;
                
                #line 1082
                if((Tab[_F.i].Lev != 0))
                {
                    #line 1082
                    P_block_statement_call(_F._slink->_slink->_slink->_slink, _F.Fsys, _F.i);
                }
                else
                {
                    #line 1083
                    P_block_statement_expression_simpleexpression_term_factor_standfct(&_F, Tab[_F.i].Adr);
                }
                break;
            }
        }
        else
        {
            #line 1087
            if((_setLiteral2 & Sy))
            {
                #line 1089
                if((Sy == C_realcon))
                {
                    #line 1090
                    _F.x.Typ = C_reals;
                    
                    #line 1090
                    P_enterreal(nullptr, Rnum);
                    
                    #line 1091
                    P_emit1(nullptr, 25, C1);
                }
                else
                {
                    #line 1093
                    if((Sy == C_charcon))
                    {
                        #line 1093
                        _F.x.Typ = C_chars;
                    }
                    else
                    {
                        #line 1094
                        _F.x.Typ = C_ints;
                    }
                    
                    #line 1095
                    P_emit1(nullptr, 24, Inum);
                }
                
                #line 1097
                _F.x.Ref = 0;
                
                #line 1097
                P_insymbol(nullptr);
            }
            else
            {
                #line 1099
                if((Sy == C_lparent))
                {
                    #line 1100
                    P_insymbol(nullptr);
                    
                    #line 1100
                    P_block_statement_expression(_F._slink->_slink->_slink->_slink, T_symset::C((_F.Fsys + _setLiteral3)), _F.x);
                    
                    #line 1101
                    if((Sy == C_rparent))
                    {
                        #line 1101
                        P_insymbol(nullptr);
                    }
                    else
                    {
                        #line 1101
                        P_error(nullptr, 4);
                    }
                }
                else
                {
                    #line 1103
                    if((Sy == C_notsy))
                    {
                        #line 1104
                        P_insymbol(nullptr);
                        
                        #line 1104
                        P_block_statement_expression_simpleexpression_term_factor(_F._slink, _F.Fsys, _F.x);
                        
                        #line 1105
                        if((_F.x.Typ == C_bools))
                        {
                            #line 1105
                            P_emit(nullptr, 35);
                        }
                        else
                        {
                            #line 1106
                            if((_F.x.Typ != C_notyp))
                            {
                                #line 1106
                                P_error(nullptr, 32);
                            }
                        }
                    }
                }
            }
        }
        
        #line 1108
        P_block_test(_F._slink->_slink->_slink->_slink->_slink, _F.Fsys, Facbegsys, 6);
    }
}


#line 1020
//================================================================================
// scope: block_statement_expression_simpleexpression_term_factor_standfct (level : 8)

// activation record
struct Frame_block_statement_expression_simpleexpression_term_factor_standfct
{
   Frame_block_statement_expression_simpleexpression_term_factor* _slink;

    // parameters
    T_integer n;

    // locals
    T_typset Ts;
};

// function body
void P_block_statement_expression_simpleexpression_term_factor_standfct(void* _slink, T_integer n)
{
    // prologue/frame definition
    Frame_block_statement_expression_simpleexpression_term_factor_standfct _F = { (Frame_block_statement_expression_simpleexpression_term_factor*)_slink, n };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_rparent);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ints);
    _setLiteral2.set(C_reals);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ints);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_ints);
    _setLiteral4.set(C_bools);
    _setLiteral4.set(C_chars);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_chars);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_ints);
    _setLiteral6.set(C_reals);
    
    // subroutine body
    #line 1023
    if((Sy == C_lparent))
    {
        #line 1023
        P_insymbol(nullptr);
    }
    else
    {
        #line 1023
        P_error(nullptr, 9);
    }
    
    #line 1024
    if((_F.n < 17))
    {
        #line 1025
        P_block_statement_expression(_F._slink->_slink->_slink->_slink->_slink, T_symset::C((_F._slink->Fsys + _setLiteral1)), _F._slink->x);
        
        #line 1026
        switch(_F.n)
        {
        case 0:
        case 2:
            #line 1027
            _F.Ts = _setLiteral2;
            
            #line 1028
            Tab[_F._slink->i].Typ = _F._slink->x.Typ;
            
            #line 1029
            if((_F._slink->x.Typ == C_reals))
            {
                #line 1029
                _F.n = (_F.n + 1);
            }
            break;
        
        case 4:
        case 5:
            #line 1031
            _F.Ts = _setLiteral3;
            break;
        
        case 6:
            #line 1032
            _F.Ts = _setLiteral4;
            break;
        
        case 7:
        case 8:
            #line 1033
            _F.Ts = _setLiteral5;
            break;
        
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
            #line 1035
            _F.Ts = _setLiteral6;
            
            #line 1036
            if((_F._slink->x.Typ == C_ints))
            {
                #line 1036
                P_emit1(nullptr, 26, 0);
            }
            break;
        }
        
        #line 1039
        if((_F.Ts & _F._slink->x.Typ))
        {
            #line 1039
            P_emit1(nullptr, 8, _F.n);
        }
        else
        {
            #line 1040
            if((_F._slink->x.Typ != C_notyp))
            {
                #line 1040
                P_error(nullptr, 48);
            }
        }
    }
    else
    {
        #line 1043
        if((Sy != C_ident))
        {
            #line 1043
            P_error(nullptr, 2);
        }
        else
        {
            #line 1044
            if(_strcmpNE<10>(Id, "input     "))
            {
                #line 1044
                P_error(nullptr, 0);
            }
            else
            {
                #line 1044
                P_insymbol(nullptr);
            }
        }
        
        #line 1045
        P_emit1(nullptr, 8, _F.n);
        
        { /* NOP */ }
    }
    
    #line 1047
    _F._slink->x.Typ = Tab[_F._slink->i].Typ;
    
    #line 1048
    if((Sy == C_rparent))
    {
        #line 1048
        P_insymbol(nullptr);
    }
    else
    {
        #line 1048
        P_error(nullptr, 4);
    }
}


#line 1229
//================================================================================
// scope: block_statement_assignment (level : 4)

// activation record
struct Frame_block_statement_assignment
{
   Frame_block_statement* _slink;

    // parameters
    T_integer Lv;
    T_integer Ad;

    // locals
    T_integer f;
    T_item x;
    T_item y;
};

// function body
void P_block_statement_assignment(void* _slink, T_integer Lv, T_integer Ad)
{
    // prologue/frame definition
    Frame_block_statement_assignment _F = { (Frame_block_statement*)_slink, Lv, Ad };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_lbrack);
    _setLiteral1.set(C_lparent);
    _setLiteral1.set(C_period);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_becomes);
    _setLiteral2.set(C_egl);
    
    // subroutine body
    #line 1232
    _F.x.Typ = Tab[_F._slink->i].Typ;
    
    #line 1232
    _F.x.Ref = Tab[_F._slink->i].Ref;
    
    #line 1233
    if(Tab[_F._slink->i].Normal)
    {
        #line 1233
        _F.f = 0;
    }
    else
    {
        #line 1233
        _F.f = 1;
    }
    
    #line 1234
    P_emit2(nullptr, _F.f, _F.Lv, _F.Ad);
    
    #line 1235
    if((_setLiteral1 & Sy))
    {
        #line 1236
        P_block_statement_selector(_F._slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)), _F.x);
    }
    
    #line 1237
    if((Sy == C_becomes))
    {
        #line 1237
        P_insymbol(nullptr);
    }
    else
    {
        #line 1238
        P_error(nullptr, 51);
        
        #line 1238
        if((Sy == C_egl))
        {
            #line 1238
            P_insymbol(nullptr);
        }
    }
    
    #line 1240
    P_block_statement_expression(_F._slink, _F._slink->Fsys, _F.y);
    
    #line 1241
    if((_F.x.Typ == _F.y.Typ))
    {
        #line 1242
        if((Stantyps & _F.x.Typ))
        {
            #line 1242
            P_emit(nullptr, 38);
        }
        else
        {
            #line 1243
            if((_F.x.Ref != _F.y.Ref))
            {
                #line 1243
                P_error(nullptr, 46);
            }
            else
            {
                #line 1244
                if((_F.x.Typ == C_arrays))
                {
                    #line 1244
                    P_emit1(nullptr, 23, Atab[_F.x.Ref].Size);
                }
                else
                {
                    #line 1245
                    P_emit1(nullptr, 23, Btab[_F.x.Ref].Vsize);
                }
            }
        }
    }
    else
    {
        #line 1247
        if(((_F.x.Typ == C_reals) && (_F.y.Typ == C_ints)))
        {
            #line 1248
            P_emit1(nullptr, 26, 0);
            
            #line 1248
            P_emit(nullptr, 38);
        }
        else
        {
            #line 1250
            if(((_F.x.Typ != C_notyp) && (_F.y.Typ != C_notyp)))
            {
                #line 1250
                P_error(nullptr, 46);
            }
        }
    }
}


#line 1253
//================================================================================
// scope: block_statement_compoundstatement (level : 4)

// activation record
struct Frame_block_statement_compoundstatement
{
   Frame_block_statement* _slink;
};

// function body
void P_block_statement_compoundstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_compoundstatement _F = { (Frame_block_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_endsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_endsy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_semicolon);
    
    // subroutine body
    #line 1254
    P_insymbol(nullptr);
    
    #line 1255
    P_block_statement(_F._slink->_slink, T_symset::C((_setLiteral1 + _F._slink->Fsys)));
    
    #line 1256
    while(((_setLiteral3 + Statbegsys) & Sy))
    {
        #line 1257
        if((Sy == C_semicolon))
        {
            #line 1257
            P_insymbol(nullptr);
        }
        else
        {
            #line 1257
            P_error(nullptr, 14);
        }
        
        #line 1258
        P_block_statement(_F._slink->_slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)));
    }
    
    #line 1260
    if((Sy == C_endsy))
    {
        #line 1260
        P_insymbol(nullptr);
    }
    else
    {
        #line 1260
        P_error(nullptr, 57);
    }
}


#line 1263
//================================================================================
// scope: block_statement_ifstatement (level : 4)

// activation record
struct Frame_block_statement_ifstatement
{
   Frame_block_statement* _slink;

    // locals
    T_integer Lc1;
    T_integer Lc2;
    T_item x;
};

// function body
void P_block_statement_ifstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_ifstatement _F = { (Frame_block_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_thensy);
    _setLiteral1.set(C_dosy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_bools);
    _setLiteral2.set(C_notyp);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_elsesy);
    
    // subroutine body
    #line 1265
    P_insymbol(nullptr);
    
    #line 1266
    P_block_statement_expression(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral1)), _F.x);
    
    #line 1267
    if((!(_setLiteral2 & _F.x.Typ)))
    {
        #line 1267
        P_error(nullptr, 17);
    }
    
    #line 1268
    _F.Lc1 = Lc;
    
    #line 1268
    P_emit(nullptr, 11);
    
    #line 1269
    if((Sy == C_thensy))
    {
        #line 1269
        P_insymbol(nullptr);
    }
    else
    {
        #line 1270
        P_error(nullptr, 52);
        
        #line 1270
        if((Sy == C_dosy))
        {
            #line 1270
            P_insymbol(nullptr);
        }
    }
    
    #line 1272
    P_block_statement(_F._slink->_slink, T_symset::C((_F._slink->Fsys + _setLiteral3)));
    
    #line 1273
    if((Sy == C_elsesy))
    {
        #line 1274
        P_insymbol(nullptr);
        
        #line 1274
        _F.Lc2 = Lc;
        
        #line 1274
        P_emit(nullptr, 10);
        
        #line 1275
        Code[_F.Lc1].y = Lc;
        
        #line 1275
        P_block_statement(_F._slink->_slink, _F._slink->Fsys);
        
        #line 1275
        Code[_F.Lc2].y = Lc;
    }
    else
    {
        #line 1277
        Code[_F.Lc1].y = Lc;
    }
}


#line 1280
//================================================================================
// scope: block_statement_casestatement (level : 4)

// types
struct T_block_statement_casestatement_record_23
{
    T_index Val;
    T_index Lc;
};
typedef _T_Array< 1, 100, T_block_statement_casestatement_record_23 > T_block_statement_casestatement_array_22;
typedef _T_Array< 1, 100, T_integer > T_block_statement_casestatement_array_24;

// forward declarations
void P_block_statement_casestatement_caselabel(void* _slink);
void P_block_statement_casestatement_onecase(void* _slink);

// activation record
struct Frame_block_statement_casestatement
{
   Frame_block_statement* _slink;

    // locals
    T_block_statement_casestatement_array_22 Casetab;
    T_block_statement_casestatement_array_24 Exittab;
    T_integer i;
    T_integer j;
    T_integer k;
    T_integer Lc1;
    T_item x;
};

// function body
void P_block_statement_casestatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_casestatement _F = { (Frame_block_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_ofsy);
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_ints);
    _setLiteral2.set(C_bools);
    _setLiteral2.set(C_chars);
    _setLiteral2.set(C_notyp);
    
    // subroutine body
    #line 1311
    P_insymbol(nullptr);
    
    #line 1311
    _F.i = 0;
    
    #line 1311
    _F.j = 0;
    
    #line 1312
    P_block_statement_expression(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral1)), _F.x);
    
    #line 1313
    if((!(_setLiteral2 & _F.x.Typ)))
    {
        #line 1313
        P_error(nullptr, 23);
    }
    
    #line 1314
    _F.Lc1 = Lc;
    
    #line 1314
    P_emit(nullptr, 12);
    
    #line 1315
    if((Sy == C_ofsy))
    {
        #line 1315
        P_insymbol(nullptr);
    }
    else
    {
        #line 1315
        P_error(nullptr, 8);
    }
    
    #line 1316
    P_block_statement_casestatement_onecase(&_F);
    
    #line 1317
    while((Sy == C_semicolon))
    {
        #line 1318
        P_insymbol(nullptr);
        
        #line 1318
        P_block_statement_casestatement_onecase(&_F);
    }
    
    #line 1320
    Code[_F.Lc1].y = Lc;
    
    #line 1321
    _FOR_TO(_F.k, 1, _F.i)
    {
        #line 1322
        P_emit1(nullptr, 13, _F.Casetab[_F.k].Val);
        
        #line 1322
        P_emit1(nullptr, 13, _F.Casetab[_F.k].Lc);
    }
    _FOR_END(_F.k)
    
    #line 1324
    P_emit1(nullptr, 10, 0);
    
    #line 1325
    _FOR_TO(_F.k, 1, _F.j)
    {
        #line 1325
        Code[_F.Exittab[_F.k]].y = Lc;
    }
    _FOR_END(_F.k)
    
    #line 1326
    if((Sy == C_endsy))
    {
        #line 1326
        P_insymbol(nullptr);
    }
    else
    {
        #line 1326
        P_error(nullptr, 57);
    }
}


#line 1287
//================================================================================
// scope: block_statement_casestatement_caselabel (level : 5)

// activation record
struct Frame_block_statement_casestatement_caselabel
{
   Frame_block_statement_casestatement* _slink;

    // locals
    T_integer k;
    T_block_conrec Lab;
};

// function body
void P_block_statement_casestatement_caselabel(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_casestatement_caselabel _F = { (Frame_block_statement_casestatement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_comma);
    _setLiteral1.set(C_colon);
    
    // subroutine body
    #line 1289
    P_block_constant(_F._slink->_slink->_slink, T_symset::C((_F._slink->_slink->Fsys + _setLiteral1)), _F.Lab);
    
    #line 1290
    if((_F.Lab.Tp != _F._slink->x.Typ))
    {
        #line 1290
        P_error(nullptr, 47);
    }
    else
    {
        #line 1291
        if((_F._slink->i == C_csmax))
        {
            #line 1291
            P_fatal(nullptr, 6);
        }
        else
        {
            #line 1292
            _F._slink->i = (_F._slink->i + 1);
            
            #line 1292
            _F.k = 0;
            
            #line 1293
            _F._slink->Casetab[_F._slink->i].Val = _F.Lab.i;
            
            #line 1293
            _F._slink->Casetab[_F._slink->i].Lc = Lc;
            
            #line 1294
            do
            {
                #line 1294
                _F.k = (_F.k + 1);
            }
            while(!(_F._slink->Casetab[_F.k].Val == _F.Lab.i));
            
            #line 1295
            if((_F.k < _F._slink->i))
            {
                #line 1295
                P_error(nullptr, 1);
            }
            
            { /* NOP */ }
        }
    }
}


#line 1299
//================================================================================
// scope: block_statement_casestatement_onecase (level : 5)

// activation record
struct Frame_block_statement_casestatement_onecase
{
   Frame_block_statement_casestatement* _slink;
};

// function body
void P_block_statement_casestatement_onecase(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_casestatement_onecase _F = { (Frame_block_statement_casestatement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_endsy);
    
    // subroutine body
    #line 1300
    if((Constbegsys & Sy))
    {
        #line 1301
        P_block_statement_casestatement_caselabel(_F._slink);
        
        #line 1302
        while((Sy == C_comma))
        {
            #line 1303
            P_insymbol(nullptr);
            
            #line 1303
            P_block_statement_casestatement_caselabel(_F._slink);
        }
        
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
        P_block_statement(_F._slink->_slink->_slink, T_symset::C((_setLiteral1 + _F._slink->_slink->Fsys)));
        
        #line 1307
        _F._slink->j = (_F._slink->j + 1);
        
        #line 1307
        _F._slink->Exittab[_F._slink->j] = Lc;
        
        #line 1307
        P_emit(nullptr, 10);
    }
}


#line 1329
//================================================================================
// scope: block_statement_repeatstatement (level : 4)

// activation record
struct Frame_block_statement_repeatstatement
{
   Frame_block_statement* _slink;

    // locals
    T_integer Lc1;
    T_item x;
};

// function body
void P_block_statement_repeatstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_repeatstatement _F = { (Frame_block_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_semicolon);
    _setLiteral1.set(C_untilsy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_semicolon);
    _setLiteral2.set(C_untilsy);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_semicolon);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_bools);
    _setLiteral4.set(C_notyp);
    
    // subroutine body
    #line 1331
    _F.Lc1 = Lc;
    
    #line 1332
    P_insymbol(nullptr);
    
    #line 1332
    P_block_statement(_F._slink->_slink, T_symset::C((_setLiteral1 + _F._slink->Fsys)));
    
    #line 1333
    while(((_setLiteral3 + Statbegsys) & Sy))
    {
        #line 1334
        if((Sy == C_semicolon))
        {
            #line 1334
            P_insymbol(nullptr);
        }
        else
        {
            #line 1334
            P_error(nullptr, 14);
        }
        
        #line 1335
        P_block_statement(_F._slink->_slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)));
    }
    
    #line 1337
    if((Sy == C_untilsy))
    {
        #line 1338
        P_insymbol(nullptr);
        
        #line 1338
        P_block_statement_expression(_F._slink, _F._slink->Fsys, _F.x);
        
        #line 1339
        if((!(_setLiteral4 & _F.x.Typ)))
        {
            #line 1339
            P_error(nullptr, 17);
        }
        
        #line 1340
        P_emit1(nullptr, 11, _F.Lc1);
    }
    else
    {
        #line 1342
        P_error(nullptr, 53);
    }
}


#line 1345
//================================================================================
// scope: block_statement_whilestatement (level : 4)

// activation record
struct Frame_block_statement_whilestatement
{
   Frame_block_statement* _slink;

    // locals
    T_integer Lc1;
    T_integer Lc2;
    T_item x;
};

// function body
void P_block_statement_whilestatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_whilestatement _F = { (Frame_block_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_dosy);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_bools);
    _setLiteral2.set(C_notyp);
    
    // subroutine body
    #line 1347
    P_insymbol(nullptr);
    
    #line 1347
    _F.Lc1 = Lc;
    
    #line 1348
    P_block_statement_expression(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral1)), _F.x);
    
    #line 1349
    if((!(_setLiteral2 & _F.x.Typ)))
    {
        #line 1349
        P_error(nullptr, 17);
    }
    
    #line 1350
    _F.Lc2 = Lc;
    
    #line 1350
    P_emit(nullptr, 11);
    
    #line 1351
    if((Sy == C_dosy))
    {
        #line 1351
        P_insymbol(nullptr);
    }
    else
    {
        #line 1351
        P_error(nullptr, 54);
    }
    
    #line 1352
    P_block_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 1352
    P_emit1(nullptr, 10, _F.Lc1);
    
    #line 1352
    Code[_F.Lc2].y = Lc;
}


#line 1355
//================================================================================
// scope: block_statement_forstatement (level : 4)

// activation record
struct Frame_block_statement_forstatement
{
   Frame_block_statement* _slink;

    // locals
    T_types Cvt;
    T_integer f;
    T_integer i;
    T_integer Lc1;
    T_integer Lc2;
    T_item x;
};

// function body
void P_block_statement_forstatement(void* _slink)
{
    // prologue/frame definition
    Frame_block_statement_forstatement _F = { (Frame_block_statement*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_notyp);
    _setLiteral1.set(C_ints);
    _setLiteral1.set(C_bools);
    _setLiteral1.set(C_chars);
    
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
    #line 1358
    P_insymbol(nullptr);
    
    #line 1359
    if((Sy == C_ident))
    {
        #line 1360
        _F.i = F_block_loc(_F._slink->_slink, Id);
        
        #line 1360
        P_insymbol(nullptr);
        
        #line 1361
        if((_F.i == 0))
        {
            #line 1361
            _F.Cvt = C_ints;
        }
        else
        {
            #line 1362
            if((Tab[_F.i].Obj == C_variable))
            {
                #line 1363
                _F.Cvt = Tab[_F.i].Typ;
                
                #line 1364
                P_emit2(nullptr, 0, Tab[_F.i].Lev, Tab[_F.i].Adr);
                
                #line 1365
                if((!(_setLiteral1 & _F.Cvt)))
                {
                    #line 1366
                    P_error(nullptr, 18);
                }
            }
            else
            {
                #line 1368
                P_error(nullptr, 37);
                
                #line 1368
                _F.Cvt = C_ints;
            }
        }
    }
    else
    {
        #line 1370
        P_block_skip(_F._slink->_slink, T_symset::C((_setLiteral2 + _F._slink->Fsys)), 2);
    }
    
    #line 1371
    if((Sy == C_becomes))
    {
        #line 1372
        P_insymbol(nullptr);
        
        #line 1372
        P_block_statement_expression(_F._slink, T_symset::C((_setLiteral3 + _F._slink->Fsys)), _F.x);
        
        #line 1373
        if((_F.x.Typ != _F.Cvt))
        {
            #line 1373
            P_error(nullptr, 19);
        }
        
        { /* NOP */ }
    }
    else
    {
        #line 1374
        P_block_skip(_F._slink->_slink, T_symset::C((_setLiteral4 + _F._slink->Fsys)), 51);
    }
    
    #line 1375
    _F.f = 14;
    
    #line 1376
    if((_setLiteral5 & Sy))
    {
        #line 1377
        if((Sy == C_downtosy))
        {
            #line 1377
            _F.f = 16;
        }
        
        #line 1378
        P_insymbol(nullptr);
        
        #line 1378
        P_block_statement_expression(_F._slink, T_symset::C((_setLiteral6 + _F._slink->Fsys)), _F.x);
        
        #line 1379
        if((_F.x.Typ != _F.Cvt))
        {
            #line 1379
            P_error(nullptr, 19);
        }
    }
    else
    {
        #line 1380
        P_block_skip(_F._slink->_slink, T_symset::C((_setLiteral7 + _F._slink->Fsys)), 55);
    }
    
    #line 1381
    _F.Lc1 = Lc;
    
    #line 1381
    P_emit(nullptr, _F.f);
    
    #line 1382
    if((Sy == C_dosy))
    {
        #line 1382
        P_insymbol(nullptr);
    }
    else
    {
        #line 1382
        P_error(nullptr, 54);
    }
    
    #line 1383
    _F.Lc2 = Lc;
    
    #line 1383
    P_block_statement(_F._slink->_slink, _F._slink->Fsys);
    
    #line 1384
    P_emit1(nullptr, (_F.f + 1), _F.Lc2);
    
    #line 1384
    Code[_F.Lc1].y = Lc;
}


#line 1387
//================================================================================
// scope: block_statement_standproc (level : 4)

// activation record
struct Frame_block_statement_standproc
{
   Frame_block_statement* _slink;

    // parameters
    T_integer n;

    // locals
    T_integer f;
    T_integer i;
    T_item x;
    T_item y;
};

// function body
void P_block_statement_standproc(void* _slink, T_integer n)
{
    // prologue/frame definition
    Frame_block_statement_standproc _F = { (Frame_block_statement*)_slink, n };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_lbrack);
    _setLiteral1.set(C_lparent);
    _setLiteral1.set(C_period);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(C_comma);
    _setLiteral2.set(C_rparent);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(C_ints);
    _setLiteral3.set(C_reals);
    _setLiteral3.set(C_chars);
    _setLiteral3.set(C_notyp);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(C_comma);
    _setLiteral4.set(C_rparent);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_comma);
    _setLiteral5.set(C_colon);
    _setLiteral5.set(C_rparent);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(C_comma);
    _setLiteral6.set(C_colon);
    _setLiteral6.set(C_rparent);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(C_comma);
    _setLiteral7.set(C_rparent);
    
    // subroutine body
    #line 1391
    switch(_F.n)
    {
    case 1:
    case 2:
        #line 1393
        if((!Iflag))
        {
            #line 1394
            P_error(nullptr, 20);
            
            #line 1394
            Iflag = C_true;
        }
        
        #line 1396
        if((Sy == C_lparent))
        {
            #line 1398
            do
            {
                #line 1398
                P_insymbol(nullptr);
                
                #line 1399
                if((Sy != C_ident))
                {
                    #line 1399
                    P_error(nullptr, 2);
                }
                else
                {
                    #line 1400
                    _F.i = F_block_loc(_F._slink->_slink, Id);
                    
                    #line 1400
                    P_insymbol(nullptr);
                    
                    #line 1401
                    if((_F.i != 0))
                    {
                        #line 1402
                        if((Tab[_F.i].Obj != C_variable))
                        {
                            #line 1402
                            P_error(nullptr, 37);
                        }
                        else
                        {
                            #line 1403
                            _F.x.Typ = Tab[_F.i].Typ;
                            
                            #line 1403
                            _F.x.Ref = Tab[_F.i].Ref;
                            
                            #line 1404
                            if(Tab[_F.i].Normal)
                            {
                                #line 1404
                                _F.f = 0;
                            }
                            else
                            {
                                #line 1404
                                _F.f = 1;
                            }
                            
                            #line 1405
                            P_emit2(nullptr, _F.f, Tab[_F.i].Lev, Tab[_F.i].Adr);
                            
                            #line 1406
                            if((_setLiteral1 & Sy))
                            {
                                #line 1407
                                P_block_statement_selector(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral2)), _F.x);
                            }
                            
                            #line 1408
                            if((_setLiteral3 & _F.x.Typ))
                            {
                                #line 1409
                                P_emit1(nullptr, 27, _ord(_F.x.Typ));
                            }
                            else
                            {
                                #line 1409
                                P_error(nullptr, 40);
                            }
                        }
                    }
                }
                
                #line 1412
                P_block_test(_F._slink->_slink, T_symset::C(_setLiteral4), _F._slink->Fsys, 6);
                
                { /* NOP */ }
            }
            while(!(Sy != C_comma));
            
            #line 1414
            if((Sy == C_rparent))
            {
                #line 1414
                P_insymbol(nullptr);
            }
            else
            {
                #line 1414
                P_error(nullptr, 4);
            }
        }
        
        #line 1416
        if((_F.n == 2))
        {
            #line 1416
            P_emit(nullptr, 62);
        }
        break;
    
    case 3:
    case 4:
        #line 1419
        if((Sy == C_lparent))
        {
            #line 1421
            do
            {
                #line 1421
                P_insymbol(nullptr);
                
                #line 1422
                if((Sy == C_stringt))
                {
                    #line 1423
                    P_emit1(nullptr, 24, Sleng);
                    
                    #line 1423
                    P_emit1(nullptr, 28, Inum);
                    
                    #line 1423
                    P_insymbol(nullptr);
                }
                else
                {
                    #line 1425
                    P_block_statement_expression(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral5)), _F.x);
                    
                    #line 1426
                    if((!(Stantyps & _F.x.Typ)))
                    {
                        #line 1426
                        P_error(nullptr, 41);
                    }
                    
                    #line 1427
                    if((Sy == C_colon))
                    {
                        #line 1428
                        P_insymbol(nullptr);
                        
                        #line 1429
                        P_block_statement_expression(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral6)), _F.y);
                        
                        #line 1430
                        if((_F.y.Typ != C_ints))
                        {
                            #line 1430
                            P_error(nullptr, 43);
                        }
                        
                        #line 1431
                        if((Sy == C_colon))
                        {
                            #line 1432
                            if((_F.x.Typ != C_reals))
                            {
                                #line 1432
                                P_error(nullptr, 42);
                            }
                            
                            #line 1433
                            P_insymbol(nullptr);
                            
                            #line 1433
                            P_block_statement_expression(_F._slink, T_symset::C((_F._slink->Fsys + _setLiteral7)), _F.y);
                            
                            #line 1434
                            if((_F.y.Typ != C_ints))
                            {
                                #line 1434
                                P_error(nullptr, 43);
                            }
                            
                            #line 1435
                            P_emit(nullptr, 37);
                        }
                        else
                        {
                            #line 1437
                            P_emit1(nullptr, 30, _ord(_F.x.Typ));
                        }
                    }
                    else
                    {
                        #line 1439
                        P_emit1(nullptr, 29, _ord(_F.x.Typ));
                    }
                }
            }
            while(!(Sy != C_comma));
            
            #line 1442
            if((Sy == C_rparent))
            {
                #line 1442
                P_insymbol(nullptr);
            }
            else
            {
                #line 1442
                P_error(nullptr, 4);
            }
        }
        
        #line 1444
        if((_F.n == 4))
        {
            #line 1444
            P_emit(nullptr, 63);
        }
        break;
    }
}


#line 1515
//================================================================================
// scope: interpret (level : 2)

// types
typedef int T_interpret_enum_25;
typedef _T_Array< 1, 100, T_integer > T_interpret_array_26;
typedef _T_Array< 1, 4, T_integer > T_interpret_array_27;
struct T_interpret_record_29
{
    // variable fields
    union
    {
        T_integer i;
        T_real r;
        T_boolean b;
        T_char c;
    };
};
typedef _T_Array< 1, 10000, T_interpret_record_29 > T_interpret_array_28;

// constants
const T_interpret_enum_25 C_interpret_caschk = 2;
const T_interpret_enum_25 C_interpret_divchk = 3;
const T_interpret_enum_25 C_interpret_fin = 1;
const T_interpret_enum_25 C_interpret_inxchk = 4;
const T_interpret_enum_25 C_interpret_linchk = 6;
const T_interpret_enum_25 C_interpret_lngchk = 7;
const T_interpret_enum_25 C_interpret_redchk = 8;
const T_interpret_enum_25 C_interpret_run = 0;
const T_interpret_enum_25 C_interpret_stkchk = 5;

// activation record
struct Frame_interpret
{
    // locals
    T_integer b;
    T_integer Blkcnt;
    T_integer Chrcnt;
    T_interpret_array_26 Display;
    T_interpret_array_27 Fld;
    T_integer H1;
    T_integer H2;
    T_integer H3;
    T_integer H4;
    T_order Ir;
    T_integer Lncnt;
    T_integer Ocnt;
    T_integer Pc;
    T_interpret_enum_25 Ps;
    T_interpret_array_28 s;
    T_integer t;
};

// function body
void P_interpret(void* _slink)
{
    // prologue/frame definition
    Frame_interpret _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 1538
    _F.s[1].i = 0;
    
    #line 1538
    _F.s[2].i = 0;
    
    #line 1538
    _F.s[3].i = (-1);
    
    #line 1538
    _F.s[4].i = Btab[1].Last;
    
    #line 1539
    _F.b = 0;
    
    #line 1539
    _F.Display[1] = 0;
    
    #line 1540
    _F.t = (Btab[2].Vsize - 1);
    
    #line 1540
    _F.Pc = Tab[_F.s[4].i].Adr;
    
    #line 1541
    _F.Ps = C_interpret_run;
    
    #line 1542
    _F.Lncnt = 0;
    
    #line 1542
    _F.Ocnt = 0;
    
    #line 1542
    _F.Chrcnt = 0;
    
    #line 1543
    _F.Fld[1] = C_intfld;
    
    #line 1543
    _F.Fld[2] = C_relfld;
    
    #line 1543
    _F.Fld[3] = C_bolfld;
    
    #line 1543
    _F.Fld[4] = C_chrfld;
    
    #line 1544
    do
    {
        #line 1544
        _F.Ir = Code[_F.Pc];
        
        #line 1544
        _F.Pc = (_F.Pc + 1);
        
        #line 1544
        _F.Ocnt = (_F.Ocnt + 1);
        
        #line 1545
        switch(_F.Ir.f)
        {
        case 0:
            #line 1546
            _F.t = (_F.t + 1);
            
            #line 1547
            if((_F.t > C_stacksize))
            {
                #line 1547
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1548
                _F.s[_F.t].i = (_F.Display[_F.Ir.x] + _F.Ir.y);
            }
            break;
        
        case 1:
            #line 1550
            _F.t = (_F.t + 1);
            
            #line 1551
            if((_F.t > C_stacksize))
            {
                #line 1551
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1552
                _F.s[_F.t] = _F.s[(_F.Display[_F.Ir.x] + _F.Ir.y)];
            }
            break;
        
        case 2:
            #line 1554
            _F.t = (_F.t + 1);
            
            #line 1555
            if((_F.t > C_stacksize))
            {
                #line 1555
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1556
                _F.s[_F.t] = _F.s[_F.s[(_F.Display[_F.Ir.x] + _F.Ir.y)].i];
            }
            break;
        
        case 3:
            #line 1559
            _F.H1 = _F.Ir.y;
            
            #line 1559
            _F.H2 = _F.Ir.x;
            
            #line 1559
            _F.H3 = _F.b;
            
            #line 1560
            do
            {
                #line 1560
                _F.Display[_F.H1] = _F.H3;
                
                #line 1560
                _F.H1 = (_F.H1 - 1);
                
                #line 1560
                _F.H3 = _F.s[(_F.H3 + 2)].i;
            }
            while(!(_F.H1 == _F.H2));
            break;
        
        case 8:
            #line 1563
            switch(_F.Ir.y)
            {
            case 0:
                #line 1564
                _F.s[_F.t].i = _abs(_F.s[_F.t].i);
                break;
            
            case 1:
                #line 1565
                _F.s[_F.t].r = _abs(_F.s[_F.t].r);
                break;
            
            case 2:
                #line 1566
                _F.s[_F.t].i = _sqr(_F.s[_F.t].i);
                break;
            
            case 3:
                #line 1567
                _F.s[_F.t].r = _sqr(_F.s[_F.t].r);
                break;
            
            case 4:
                #line 1568
                _F.s[_F.t].b = _odd(_F.s[_F.t].i);
                break;
            
            case 5:
                #line 1569
                _F.s[_F.t].c = _chr(_F.s[_F.t].i);
                
                #line 1570
                if(((_F.s[_F.t].i < 0) || (_F.s[_F.t].i > C_inxmax)))
                {
                    #line 1570
                    _F.Ps = C_interpret_inxchk;
                }
                break;
            
            case 6:
                #line 1572
                _F.s[_F.t].i = _ord(_F.s[_F.t].c);
                break;
            
            case 7:
                #line 1573
                _F.s[_F.t].c = _succ(_F.s[_F.t].c);
                break;
            
            case 8:
                #line 1574
                _F.s[_F.t].c = _pred(_F.s[_F.t].c);
                break;
            
            case 9:
                #line 1575
                _F.s[_F.t].i = _round(_F.s[_F.t].r);
                break;
            
            case 10:
                #line 1576
                _F.s[_F.t].i = _trunc(_F.s[_F.t].r);
                break;
            
            case 11:
                #line 1577
                _F.s[_F.t].r = _sin(_F.s[_F.t].r);
                break;
            
            case 12:
                #line 1578
                _F.s[_F.t].r = _cos(_F.s[_F.t].r);
                break;
            
            case 13:
                #line 1579
                _F.s[_F.t].r = _exp(_F.s[_F.t].r);
                break;
            
            case 14:
                #line 1580
                _F.s[_F.t].r = _ln(_F.s[_F.t].r);
                break;
            
            case 15:
                #line 1581
                _F.s[_F.t].r = _sqrt(_F.s[_F.t].r);
                break;
            
            case 16:
                #line 1582
                _F.s[_F.t].r = _arctan(_F.s[_F.t].r);
                break;
            
            case 17:
                #line 1583
                _F.t = (_F.t + 1);
                
                #line 1584
                if((_F.t > C_stacksize))
                {
                    #line 1584
                    _F.Ps = C_interpret_stkchk;
                }
                else
                {
                    #line 1585
                    _F.s[_F.t].b = _eof(Input);
                }
                break;
            
            case 18:
                #line 1587
                _F.t = (_F.t + 1);
                
                #line 1588
                if((_F.t > C_stacksize))
                {
                    #line 1588
                    _F.Ps = C_interpret_stkchk;
                }
                else
                {
                    #line 1589
                    _F.s[_F.t].b = _eoln(Input);
                }
                break;
            }
            break;
        
        case 9:
            #line 1592
            _F.s[_F.t].i = (_F.s[_F.t].i + _F.Ir.y);
            break;
        
        case 10:
            #line 1593
            _F.Pc = _F.Ir.y;
            break;
        
        case 11:
            #line 1595
            if((!_F.s[_F.t].b))
            {
                #line 1595
                _F.Pc = _F.Ir.y;
            }
            
            #line 1595
            _F.t = (_F.t - 1);
            break;
        
        case 12:
            #line 1597
            _F.H1 = _F.s[_F.t].i;
            
            #line 1597
            _F.t = (_F.t - 1);
            
            #line 1598
            _F.H2 = _F.Ir.y;
            
            #line 1598
            _F.H3 = 0;
            
            #line 1599
            do
            {
                #line 1599
                if((Code[_F.H2].f != 13))
                {
                    #line 1600
                    _F.H3 = 1;
                    
                    #line 1600
                    _F.Ps = C_interpret_caschk;
                }
                else
                {
                    #line 1602
                    if((Code[_F.H2].y == _F.H1))
                    {
                        #line 1603
                        _F.H3 = 1;
                        
                        #line 1603
                        _F.Pc = Code[(_F.H2 + 1)].y;
                    }
                    else
                    {
                        #line 1605
                        _F.H2 = (_F.H2 + 2);
                    }
                }
            }
            while(!(_F.H3 != 0));
            break;
        
        case 14:
            #line 1608
            _F.H1 = _F.s[(_F.t - 1)].i;
            
            #line 1609
            if((_F.H1 <= _F.s[_F.t].i))
            {
                #line 1609
                _F.s[_F.s[(_F.t - 2)].i].i = _F.H1;
            }
            else
            {
                #line 1610
                _F.t = (_F.t - 3);
                
                #line 1610
                _F.Pc = _F.Ir.y;
            }
            break;
        
        case 15:
            #line 1613
            _F.H2 = _F.s[(_F.t - 2)].i;
            
            #line 1613
            _F.H1 = (_F.s[_F.H2].i + 1);
            
            #line 1614
            if((_F.H1 <= _F.s[_F.t].i))
            {
                #line 1615
                _F.s[_F.H2].i = _F.H1;
                
                #line 1615
                _F.Pc = _F.Ir.y;
            }
            else
            {
                #line 1616
                _F.t = (_F.t - 3);
            }
            
            { /* NOP */ }
            break;
        
        case 16:
            #line 1618
            _F.H1 = _F.s[(_F.t - 1)].i;
            
            #line 1619
            if((_F.H1 >= _F.s[_F.t].i))
            {
                #line 1619
                _F.s[_F.s[(_F.t - 2)].i].i = _F.H1;
            }
            else
            {
                #line 1620
                _F.Pc = _F.Ir.y;
                
                #line 1620
                _F.t = (_F.t - 3);
            }
            break;
        
        case 17:
            #line 1623
            _F.H2 = _F.s[(_F.t - 2)].i;
            
            #line 1623
            _F.H1 = (_F.s[_F.H2].i - 1);
            
            #line 1624
            if((_F.H1 >= _F.s[_F.t].i))
            {
                #line 1625
                _F.s[_F.H2].i = _F.H1;
                
                #line 1625
                _F.Pc = _F.Ir.y;
            }
            else
            {
                #line 1626
                _F.t = (_F.t - 3);
            }
            
            { /* NOP */ }
            break;
        
        case 18:
            #line 1628
            _F.H1 = Btab[Tab[_F.Ir.y].Ref].Vsize;
            
            #line 1629
            if(((_F.t + _F.H1) > C_stacksize))
            {
                #line 1629
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1630
                _F.t = (_F.t + 5);
                
                #line 1630
                _F.s[(_F.t - 1)].i = (_F.H1 - 1);
                
                #line 1630
                _F.s[_F.t].i = _F.Ir.y;
            }
            break;
        
        case 19:
            #line 1633
            _F.H1 = (_F.t - _F.Ir.y);
            
            #line 1634
            _F.H2 = _F.s[(_F.H1 + 4)].i;
            
            #line 1635
            _F.H3 = Tab[_F.H2].Lev;
            
            #line 1635
            _F.Display[(_F.H3 + 1)] = _F.H1;
            
            #line 1636
            _F.H4 = (_F.s[(_F.H1 + 3)].i + _F.H1);
            
            #line 1637
            _F.s[(_F.H1 + 1)].i = _F.Pc;
            
            #line 1637
            _F.s[(_F.H1 + 2)].i = _F.Display[_F.H3];
            
            #line 1637
            _F.s[(_F.H1 + 3)].i = _F.b;
            
            #line 1638
            _FOR_TO(_F.H3, (_F.t + 1), _F.H4)
            {
                #line 1638
                _F.s[_F.H3].i = 0;
            }
            _FOR_END(_F.H3)
            
            #line 1639
            _F.b = _F.H1;
            
            #line 1639
            _F.t = _F.H4;
            
            #line 1639
            _F.Pc = Tab[_F.H2].Adr;
            break;
        
        case 20:
            #line 1641
            _F.H1 = _F.Ir.y;
            
            #line 1642
            _F.H2 = Atab[_F.H1].Low;
            
            #line 1642
            _F.H3 = _F.s[_F.t].i;
            
            #line 1643
            if((_F.H3 < _F.H2))
            {
                #line 1643
                _F.Ps = C_interpret_inxchk;
            }
            else
            {
                #line 1644
                if((_F.H3 > Atab[_F.H1].High))
                {
                    #line 1644
                    _F.Ps = C_interpret_inxchk;
                }
                else
                {
                    #line 1645
                    _F.t = (_F.t - 1);
                    
                    #line 1645
                    _F.s[_F.t].i = (_F.s[_F.t].i + (_F.H3 - _F.H2));
                }
            }
            break;
        
        case 21:
            #line 1648
            _F.H1 = _F.Ir.y;
            
            #line 1649
            _F.H2 = Atab[_F.H1].Low;
            
            #line 1649
            _F.H3 = _F.s[_F.t].i;
            
            #line 1650
            if((_F.H3 < _F.H2))
            {
                #line 1650
                _F.Ps = C_interpret_inxchk;
            }
            else
            {
                #line 1651
                if((_F.H3 > Atab[_F.H1].High))
                {
                    #line 1651
                    _F.Ps = C_interpret_inxchk;
                }
                else
                {
                    #line 1652
                    _F.t = (_F.t - 1);
                    
                    #line 1652
                    _F.s[_F.t].i = (_F.s[_F.t].i + ((_F.H3 - _F.H2) * Atab[_F.H1].Elsize));
                }
            }
            break;
        
        case 22:
            #line 1655
            _F.H1 = _F.s[_F.t].i;
            
            #line 1655
            _F.t = (_F.t - 1);
            
            #line 1656
            _F.H2 = (_F.Ir.y + _F.t);
            
            #line 1656
            if((_F.H2 > C_stacksize))
            {
                #line 1656
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1657
                while((_F.t < _F.H2))
                {
                    #line 1658
                    _F.t = (_F.t + 1);
                    
                    #line 1658
                    _F.s[_F.t] = _F.s[_F.H1];
                    
                    #line 1658
                    _F.H1 = (_F.H1 + 1);
                }
            }
            break;
        
        case 23:
            #line 1661
            _F.H1 = _F.s[(_F.t - 1)].i;
            
            #line 1662
            _F.H2 = _F.s[_F.t].i;
            
            #line 1662
            _F.H3 = (_F.H1 + _F.Ir.y);
            
            #line 1663
            while((_F.H1 < _F.H3))
            {
                #line 1664
                _F.s[_F.H1] = _F.s[_F.H2];
                
                #line 1664
                _F.H1 = (_F.H1 + 1);
                
                #line 1664
                _F.H2 = (_F.H2 + 1);
            }
            
            #line 1666
            _F.t = (_F.t - 2);
            break;
        
        case 24:
            #line 1668
            _F.t = (_F.t + 1);
            
            #line 1669
            if((_F.t > C_stacksize))
            {
                #line 1669
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1669
                _F.s[_F.t].i = _F.Ir.y;
            }
            break;
        
        case 25:
            #line 1671
            _F.t = (_F.t + 1);
            
            #line 1672
            if((_F.t > C_stacksize))
            {
                #line 1672
                _F.Ps = C_interpret_stkchk;
            }
            else
            {
                #line 1672
                _F.s[_F.t].r = Rconst[_F.Ir.y];
            }
            break;
        
        case 26:
            #line 1674
            _F.H1 = (_F.t - _F.Ir.y);
            
            #line 1674
            _F.s[_F.H1].r = _F.s[_F.H1].i;
            break;
        
        case 27:
            #line 1677
            if(_eof(Input))
            {
                #line 1677
                _F.Ps = C_interpret_redchk;
            }
            else
            {
                #line 1678
                switch(_F.Ir.y)
                {
                case 1:
                    #line 1679
                    Input >> _F.s[_F.s[_F.t].i].i;
                    break;
                
                case 2:
                    #line 1680
                    Input >> _F.s[_F.s[_F.t].i].r;
                    break;
                
                case 4:
                    #line 1681
                    Input >> _F.s[_F.s[_F.t].i].c;
                    break;
                }
            }
            
            #line 1683
            _F.t = (_F.t - 1);
            break;
        
        case 28:
            #line 1686
            _F.H1 = _F.s[_F.t].i;
            
            #line 1686
            _F.H2 = _F.Ir.y;
            
            #line 1686
            _F.t = (_F.t - 1);
            
            #line 1687
            _F.Chrcnt = (_F.Chrcnt + _F.H1);
            
            #line 1687
            if((_F.Chrcnt > C_lineleng))
            {
                #line 1687
                _F.Ps = C_interpret_lngchk;
            }
            
            #line 1688
            do
            {
                #line 1688
                Output << Stab[_F.H2];
                
                #line 1688
                _F.H1 = (_F.H1 - 1);
                
                #line 1688
                _F.H2 = (_F.H2 + 1);
            }
            while(!(_F.H1 == 0));
            break;
        
        case 29:
            #line 1692
            _F.Chrcnt = (_F.Chrcnt + _F.Fld[_F.Ir.y]);
            
            #line 1693
            if((_F.Chrcnt > C_lineleng))
            {
                #line 1693
                _F.Ps = C_interpret_lngchk;
            }
            else
            {
                #line 1694
                switch(_F.Ir.y)
                {
                case 1:
                    #line 1695
                    Output << _format(_F.s[_F.t].i, _F.Fld[1], 0);
                    break;
                
                case 2:
                    #line 1696
                    Output << _format(_F.s[_F.t].r, _F.Fld[2], 0);
                    break;
                
                case 3:
                    #line 1697
                    Output << _format(_str(_F.s[_F.t].b), _F.Fld[3], 0);
                    break;
                
                case 4:
                    #line 1698
                    Output << _F.s[_F.t].c;
                    break;
                }
            }
            
            #line 1700
            _F.t = (_F.t - 1);
            break;
        
        case 30:
            #line 1703
            _F.Chrcnt = (_F.Chrcnt + _F.s[_F.t].i);
            
            #line 1704
            if((_F.Chrcnt > C_lineleng))
            {
                #line 1704
                _F.Ps = C_interpret_lngchk;
            }
            else
            {
                #line 1705
                switch(_F.Ir.y)
                {
                case 1:
                    #line 1706
                    Output << _format(_F.s[(_F.t - 1)].i, _F.s[_F.t].i, 0);
                    break;
                
                case 2:
                    #line 1707
                    Output << _format(_F.s[(_F.t - 1)].r, _F.s[_F.t].i, 0);
                    break;
                
                case 3:
                    #line 1708
                    Output << _format(_str(_F.s[(_F.t - 1)].b), _F.s[_F.t].i, 0);
                    break;
                
                case 4:
                    #line 1709
                    Output << _format(_F.s[(_F.t - 1)].c, _F.s[_F.t].i, 0);
                    break;
                }
            }
            
            #line 1711
            _F.t = (_F.t - 2);
            break;
        
        case 31:
            #line 1713
            _F.Ps = C_interpret_fin;
            break;
        
        case 32:
            #line 1715
            _F.t = (_F.b - 1);
            
            #line 1715
            _F.Pc = _F.s[(_F.b + 1)].i;
            
            #line 1715
            _F.b = _F.s[(_F.b + 3)].i;
            break;
        
        case 33:
            #line 1718
            _F.t = _F.b;
            
            #line 1718
            _F.Pc = _F.s[(_F.b + 1)].i;
            
            #line 1718
            _F.b = _F.s[(_F.b + 3)].i;
            break;
        
        case 34:
            #line 1720
            _F.s[_F.t] = _F.s[_F.s[_F.t].i];
            break;
        
        case 35:
            #line 1721
            _F.s[_F.t].b = (!_F.s[_F.t].b);
            break;
        
        case 36:
            #line 1725
            switch(_F.Ir.y)
            {
            case 1:
                #line 1726
                _F.s[_F.t].i = (-_F.s[_F.t].i);
                break;
            
            case 2:
                #line 1727
                _F.s[_F.t].r = (-_F.s[_F.t].r);
                break;
            }
            break;
        
        case 37:
            #line 1730
            _F.Chrcnt = (_F.Chrcnt + _F.s[(_F.t - 1)].i);
            
            #line 1731
            if((_F.Chrcnt > C_lineleng))
            {
                #line 1731
                _F.Ps = C_interpret_lngchk;
            }
            else
            {
                #line 1732
                Output << _format(_F.s[(_F.t - 2)].r, _F.s[(_F.t - 1)].i, _F.s[_F.t].i);
            }
            
            #line 1733
            _F.t = (_F.t - 3);
            break;
        
        case 38:
            #line 1735
            _F.s[_F.s[(_F.t - 1)].i] = _F.s[_F.t];
            
            #line 1735
            _F.t = (_F.t - 2);
            
            { /* NOP */ }
            break;
        
        case 39:
            #line 1737
            _F.t = (_F.t - 1);
            
            #line 1737
            _F.s[_F.t].b = (_F.s[_F.t].r == _F.s[(_F.t + 1)].r);
            break;
        
        case 40:
            #line 1739
            _F.t = (_F.t - 1);
            
            #line 1739
            _F.s[_F.t].b = (_F.s[_F.t].r != _F.s[(_F.t + 1)].r);
            break;
        
        case 41:
            #line 1741
            _F.t = (_F.t - 1);
            
            #line 1741
            _F.s[_F.t].b = (_F.s[_F.t].r < _F.s[(_F.t + 1)].r);
            break;
        
        case 42:
            #line 1743
            _F.t = (_F.t - 1);
            
            #line 1743
            _F.s[_F.t].b = (_F.s[_F.t].r <= _F.s[(_F.t + 1)].r);
            break;
        
        case 43:
            #line 1745
            _F.t = (_F.t - 1);
            
            #line 1745
            _F.s[_F.t].b = (_F.s[_F.t].r > _F.s[(_F.t + 1)].r);
            break;
        
        case 44:
            #line 1747
            _F.t = (_F.t - 1);
            
            #line 1747
            _F.s[_F.t].b = (_F.s[_F.t].r >= _F.s[(_F.t + 1)].r);
            break;
        
        case 45:
            #line 1749
            _F.t = (_F.t - 1);
            
            #line 1749
            _F.s[_F.t].b = (_F.s[_F.t].i == _F.s[(_F.t + 1)].i);
            break;
        
        case 46:
            #line 1751
            _F.t = (_F.t - 1);
            
            #line 1751
            _F.s[_F.t].b = (_F.s[_F.t].i != _F.s[(_F.t + 1)].i);
            break;
        
        case 47:
            #line 1753
            _F.t = (_F.t - 1);
            
            #line 1753
            _F.s[_F.t].b = (_F.s[_F.t].i < _F.s[(_F.t + 1)].i);
            break;
        
        case 48:
            #line 1755
            _F.t = (_F.t - 1);
            
            #line 1755
            _F.s[_F.t].b = (_F.s[_F.t].i <= _F.s[(_F.t + 1)].i);
            break;
        
        case 49:
            #line 1757
            _F.t = (_F.t - 1);
            
            #line 1757
            _F.s[_F.t].b = (_F.s[_F.t].i > _F.s[(_F.t + 1)].i);
            break;
        
        case 50:
            #line 1759
            _F.t = (_F.t - 1);
            
            #line 1759
            _F.s[_F.t].b = (_F.s[_F.t].i >= _F.s[(_F.t + 1)].i);
            break;
        
        case 51:
            #line 1761
            _F.t = (_F.t - 1);
            
            #line 1761
            _F.s[_F.t].b = (_F.s[_F.t].b || _F.s[(_F.t + 1)].b);
            break;
        
        case 52:
            #line 1763
            _F.t = (_F.t - 1);
            
            #line 1763
            _F.s[_F.t].i = (_F.s[_F.t].i + _F.s[(_F.t + 1)].i);
            break;
        
        case 53:
            #line 1765
            _F.t = (_F.t - 1);
            
            #line 1765
            _F.s[_F.t].i = (_F.s[_F.t].i - _F.s[(_F.t + 1)].i);
            break;
        
        case 54:
            #line 1767
            _F.t = (_F.t - 1);
            
            #line 1767
            _F.s[_F.t].r = (_F.s[_F.t].r + _F.s[(_F.t + 1)].r);
            
            { /* NOP */ }
            break;
        
        case 55:
            #line 1769
            _F.t = (_F.t - 1);
            
            #line 1769
            _F.s[_F.t].r = (_F.s[_F.t].r - _F.s[(_F.t + 1)].r);
            
            { /* NOP */ }
            break;
        
        case 56:
            #line 1771
            _F.t = (_F.t - 1);
            
            #line 1771
            _F.s[_F.t].b = (_F.s[_F.t].b && _F.s[(_F.t + 1)].b);
            
            { /* NOP */ }
            break;
        
        case 57:
            #line 1773
            _F.t = (_F.t - 1);
            
            #line 1773
            _F.s[_F.t].i = (_F.s[_F.t].i * _F.s[(_F.t + 1)].i);
            break;
        
        case 58:
            #line 1775
            _F.t = (_F.t - 1);
            
            #line 1776
            if((_F.s[(_F.t + 1)].i == 0))
            {
                #line 1776
                _F.Ps = C_interpret_divchk;
            }
            else
            {
                #line 1777
                _F.s[_F.t].i = (_F.s[_F.t].i / _F.s[(_F.t + 1)].i);
            }
            break;
        
        case 59:
            #line 1779
            _F.t = (_F.t - 1);
            
            #line 1780
            if((_F.s[(_F.t + 1)].i == 0))
            {
                #line 1780
                _F.Ps = C_interpret_divchk;
            }
            else
            {
                #line 1781
                _F.s[_F.t].i = _mod(_F.s[_F.t].i , _F.s[(_F.t + 1)].i);
            }
            break;
        
        case 60:
            #line 1783
            _F.t = (_F.t - 1);
            
            #line 1783
            _F.s[_F.t].r = (_F.s[_F.t].r * _F.s[(_F.t + 1)].r);
            
            { /* NOP */ }
            break;
        
        case 61:
            #line 1785
            _F.t = (_F.t - 1);
            
            #line 1785
            _F.s[_F.t].r = ((double)_F.s[_F.t].r / _F.s[(_F.t + 1)].r);
            
            { /* NOP */ }
            break;
        
        case 62:
            #line 1787
            if(_eof(Input))
            {
                #line 1787
                _F.Ps = C_interpret_redchk;
            }
            else
            {
                #line 1787
                Input >> _READLN;
            }
            break;
        
        case 63:
            #line 1788
            Output << _WRITELN;
            
            #line 1788
            _F.Lncnt = (_F.Lncnt + 1);
            
            #line 1788
            _F.Chrcnt = 0;
            
            #line 1789
            if((_F.Lncnt > C_linelimit))
            {
                #line 1789
                _F.Ps = C_interpret_linchk;
            }
            break;
        }
        
        { /* NOP */ }
    }
    while(!(_F.Ps != C_interpret_run));
    
    #line 1794
    if((_F.Ps != C_interpret_fin))
    {
        #line 1795
        Output << _WRITELN;
        
        #line 1797
        Output << "halt at" << _format(_F.Pc, 5, 0) << " because of ";
        
        #line 1798
        Output << _WRITELN;
        
        #line 1799
        switch(_F.Ps)
        {
        case C_interpret_caschk:
            #line 1800
            Output << "undefined case" << _WRITELN;
            break;
        
        case C_interpret_divchk:
            #line 1801
            Output << "division by 0" << _WRITELN;
            break;
        
        case C_interpret_inxchk:
            #line 1802
            Output << "invalid index" << _WRITELN;
            break;
        
        case C_interpret_stkchk:
            #line 1803
            Output << "storage overflow" << _WRITELN;
            break;
        
        case C_interpret_linchk:
            #line 1804
            Output << "too much output" << _WRITELN;
            break;
        
        case C_interpret_lngchk:
            #line 1805
            Output << "line too long" << _WRITELN;
            break;
        
        case C_interpret_redchk:
            #line 1806
            Output << "reading past end of file" << _WRITELN;
            break;
        }
        
        #line 1808
        _F.H1 = _F.b;
        
        #line 1808
        _F.Blkcnt = 10;
        
        #line 1809
        do
        {
            #line 1809
            Output << _WRITELN;
            
            #line 1809
            _F.Blkcnt = (_F.Blkcnt - 1);
            
            #line 1810
            if((_F.Blkcnt == 0))
            {
                #line 1810
                _F.H1 = 0;
            }
            
            #line 1810
            _F.H2 = _F.s[(_F.H1 + 4)].i;
            
            #line 1811
            if((_F.H1 != 0))
            {
                #line 1812
                Output << ' ' << Tab[_F.H2].Name << " called at" << _format(_F.s[(_F.H1 + 1)].i, 5, 0) << _WRITELN;
            }
            
            #line 1813
            _F.H2 = Btab[Tab[_F.H2].Ref].Last;
            
            #line 1814
            while((_F.H2 != 0))
            {
                #line 1816
                if((Tab[_F.H2].Obj == C_variable))
                {
                    #line 1817
                    if((Stantyps & Tab[_F.H2].Typ))
                    {
                        #line 1818
                        Output << "    " << Tab[_F.H2].Name << " = ";
                        
                        #line 1819
                        if(Tab[_F.H2].Normal)
                        {
                            #line 1819
                            _F.H3 = (_F.H1 + Tab[_F.H2].Adr);
                        }
                        else
                        {
                            #line 1819
                            _F.H3 = _F.s[(_F.H1 + Tab[_F.H2].Adr)].i;
                        }
                        
                        #line 1820
                        switch(Tab[_F.H2].Typ)
                        {
                        case C_ints:
                            #line 1821
                            Output << _F.s[_F.H3].i << _WRITELN;
                            break;
                        
                        case C_reals:
                            #line 1822
                            Output << _F.s[_F.H3].r << _WRITELN;
                            break;
                        
                        case C_bools:
                            #line 1823
                            Output << _str(_F.s[_F.H3].b) << _WRITELN;
                            break;
                        
                        case C_chars:
                            #line 1824
                            Output << _F.s[_F.H3].c << _WRITELN;
                            break;
                        }
                    }
                }
                
                #line 1827
                _F.H2 = Tab[_F.H2].Link;
            }
            
            #line 1829
            _F.H1 = _F.s[(_F.H1 + 3)].i;
        }
        while(!(_F.H1 < 0));
        
        { /* NOP */ }
    }
    
    #line 1832
    Output << _WRITELN;
    
    #line 1832
    Output << _F.Ocnt << " steps" << _WRITELN;
}

