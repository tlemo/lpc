
#include <lpcRuntime.h>

#line 0 "iso7185pat.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
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

#line 71
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 1, 10, T_integer > T_array_1;
typedef _T_Array< 1, 10, T_integer > T_arri;
struct T_recs
{
    T_integer a;
    T_char b;
};
typedef _T_Array< 1, 10, T_recs > T_arrr;
typedef int T_enum;
typedef _T_Range<2, 5, signed __int8> T_esub;
typedef _T_Range<10, 20, signed __int8> T_subr;
typedef _T_Array< 1, 10, T_char > T_string10;
typedef _T_Set<0, 255> T_cset;
_PTR_TYPE(T_iptr, T_integer)
struct T_rec
{
    T_integer i;
    T_boolean b;
    T_char c;
    T_enum e;
    T_esub Es;
    T_subr s;
    T_real r;
    T_string10 St;
    T_arri a;
    T_recs Rc;
    T_cset Stc;
    T_iptr p;
};
typedef _T_Array< 1, 2, T_integer > T_array_6;
typedef _T_Array< 1, 2, T_array_6 > T_array_5;
typedef _T_Array< 1, 2, T_array_5 > T_array_4;
typedef _T_Array< 1, 2, T_array_4 > T_array_3;
typedef _T_Array< 1, 2, T_array_3 > T_array_2;
typedef _T_Array< 1, 2, T_array_2 > T_arrim;
typedef _T_Array< 1, 10, T_boolean > T_array_7;
typedef _T_Array< 1, 10, T_char > T_array_8;
typedef _T_Range<103, 112, char> T_range_10;
typedef _T_Array< 1, 10, T_range_10 > T_array_9;
typedef _T_Array< 1, 10, T_enum > T_array_11;
typedef _T_Array< 1, 10, T_esub > T_array_12;
typedef _T_Array< 1, 10, T_text > T_array_13;
typedef _T_Range<10, 20, signed __int8> T_range_15;
typedef _T_Array< 1, 10, T_range_15 > T_array_14;
typedef _T_Array< 1, 10, T_iptr > T_array_16;
typedef _T_Array< 1, 10, T_real > T_array_17;
typedef _T_Array< 1, 10, T_recs > T_array_18;
typedef _T_Array< 1, 10, T_cset > T_array_19;
typedef _T_Array< 0, 1, T_integer > T_array_20;
typedef _T_Array< 97, 122, T_integer > T_array_21;
typedef _T_Array< 0, 255, T_integer > T_array_22;
typedef _T_Array< 97, 122, T_integer > T_array_23;
typedef _T_Set<0, 255> T_set_24;
typedef _T_Set<97, 122> T_set_25;
typedef _T_Set<97, 102> T_set_26;
typedef _T_Set<0, 255> T_set_27;
typedef _T_Array< 1, 10, T_integer > T_array_29;
typedef _T_Array< 1, 10, T_array_29 > T_array_28;
typedef _T_Array< 0, 9, T_integer > T_array_30;
typedef _T_Array< 1, 5, T_integer > T_array_31;
typedef _T_Text T_file_32;
typedef _T_Text T_file_33;
typedef _T_Text T_text_34;
typedef _T_Text T_file_35;
typedef _T_Text T_file_36;
typedef _T_Text T_file_37;
typedef _T_Text T_file_38;
typedef _T_Text T_file_39;
typedef _T_Text T_file_40;
typedef int T_enum_41;
typedef _T_Text T_file_42;
typedef _T_Text T_file_43;
typedef _T_Text T_file_44;
_PTR_TYPE(T_pointer_46, T_integer)
typedef _T_Array< 1, 100, T_pointer_46 > T_array_45;
_PTR_TYPE(T_pointer_47, T_integer)
struct T_record_57
{
    T_integer i;
};
struct T_record_56
{
    T_integer i;
    T_record_57 r;
};
struct T_record_55
{
    T_integer i;
    T_record_56 r;
};
struct T_record_54
{
    T_integer i;
    T_record_55 r;
};
struct T_record_53
{
    T_integer i;
    T_record_54 r;
};
struct T_record_52
{
    T_integer i;
    T_record_53 r;
};
struct T_record_51
{
    T_integer i;
    T_record_52 r;
};
struct T_record_50
{
    T_integer i;
    T_record_51 r;
};
struct T_record_49
{
    T_integer i;
    T_record_50 r;
};
struct T_record_48
{
    T_integer i;
    T_record_49 r;
};
struct T_prec
{
    T_integer i;
    T_boolean b;
    T_char c;
    T_enum e;
    T_esub Es;
    T_subr s;
    T_real r;
    T_string10 St;
    T_arri a;
    T_recs Rc;
    T_cset Stc;
    T_iptr p;
};
typedef _T_Array< 1, 10, T_boolean > T_array_58;
typedef _T_Array< 1, 10, T_char > T_array_59;
typedef _T_Range<103, 112, char> T_range_61;
typedef _T_Array< 1, 10, T_range_61 > T_array_60;
typedef _T_Array< 1, 10, T_enum > T_array_62;
typedef _T_Array< 1, 10, T_esub > T_array_63;
typedef _T_Array< 1, 10, T_text > T_array_64;
typedef _T_Array< 1, 10, T_integer > T_array_65;
typedef _T_Range<10, 20, signed __int8> T_range_67;
typedef _T_Array< 1, 10, T_range_67 > T_array_66;
typedef _T_Array< 1, 10, T_iptr > T_array_68;
typedef _T_Array< 1, 10, T_real > T_array_69;
typedef _T_Array< 1, 10, T_recs > T_array_70;
typedef _T_Array< 1, 10, T_cset > T_array_71;
typedef _T_Array< 0, 1, T_integer > T_array_72;
typedef _T_Array< 0, 255, T_integer > T_array_73;
typedef _T_Array< 97, 122, T_integer > T_array_74;
typedef _T_Array< 0, 9, T_integer > T_array_75;
typedef _T_Array< 1, 5, T_integer > T_array_76;
typedef _T_Text T_file_77;
typedef _T_Text T_file_78;
typedef _T_Text T_text_79;
typedef _T_Text T_file_80;
typedef _T_Text T_file_81;
typedef _T_Text T_file_82;
typedef _T_Text T_file_83;
typedef _T_Text T_file_84;
typedef _T_Text T_file_85;
typedef _T_Text T_file_86;
typedef _T_Text T_file_87;
typedef _T_Text T_file_88;
_PTR_TYPE(T_pointer_89, T_integer)
_PTR_TYPE(T_pointer_90, T_arri)
_PTR_TYPE(T_pointer_91, T_boolean)
_PTR_TYPE(T_pointer_92, T_char)
_PTR_TYPE(T_pointer_93, T_enum)
_PTR_TYPE(T_pointer_94, T_esub)
_PTR_TYPE(T_pointer_95, T_integer)
_PTR_TYPE(T_pointer_96, T_iptr)
_PTR_TYPE(T_pointer_97, T_real)
_PTR_TYPE(T_pointer_98, T_recs)
_PTR_TYPE(T_pointer_99, T_subr)
_PTR_TYPE(T_pointer_100, T_string10)
_PTR_TYPE(T_pointer_101, T_cset)
typedef _T_Array< 1, 10, T_char > T_array_103;
struct T_record_102
{
    T_integer Rx;
    T_char Rc;
    T_integer Ry;
    T_boolean Rb;
    T_array_103 Rs;
};
struct T_record_104
{
    // variable fields selector
    T_boolean Rcastt;
    // variable fields
    union
    {
    };
};
struct T_recv
{
    T_integer a;
    T_char b;
    // variable fields selector
    T_boolean c;
    // variable fields
    union
    {
        T_string10 d;
        T_enum e;
    };
};
_PTR_TYPE(T_pointer_105, T_rec)
typedef _T_Array< 1, 10, T_char > T_array_106;
typedef _T_Array< 1, 10, T_char > T_array_108;
typedef _T_Array< 1, 10, T_array_108 > T_array_107;
typedef _T_Set<0, 1> T_set_109;
typedef _T_Set<0, 1> T_set_110;
typedef _T_Set<0, 1> T_set_111;
typedef _T_Set<0, 1> T_set_112;
typedef _T_Array< 1, 16, T_char > T_array_113;
typedef _T_Set<0, 9> T_set_114;
typedef _T_Set<0, 4> T_set_115;
typedef _T_Set<0, 9> T_set_116;
typedef _T_Set<0, 6> T_set_117;
typedef _T_Range<-100, 100, signed __int8> T_range_118;
typedef _T_Range<0, 100, signed __int8> T_range_119;
typedef _T_Set<1, 100> T_set_120;
typedef _T_Set<1, 10> T_set_121;
typedef _T_Set<1, 10> T_set_122;
typedef _T_Set<1, 20> T_set_123;
typedef int T_vart;
typedef _T_Range<-2147483647, 2147483647, signed __int32> T_range_124;
struct T_record_125
{
    T_integer i;
    // variable fields selector
    T_vart Vt;
    // variable fields
    union
    {
        struct
        {
            T_integer Vdi;
            T_integer a;
        };
        struct
        {
            T_boolean Vdb;
            T_integer b;
        };
        struct
        {
            T_char Vdc;
            T_integer c;
        };
        struct
        {
            T_enum Vde;
            T_integer d;
        };
        struct
        {
            T_esub Vdes;
            T_integer e;
        };
        struct
        {
            T_subr Vds;
            T_integer f;
        };
        struct
        {
            T_real Vdr;
            T_integer g;
        };
        struct
        {
            T_string10 Vdst;
            T_integer h;
        };
        struct
        {
            T_arri Vda;
            T_integer j;
        };
        struct
        {
            T_recs Vdrc;
            T_integer k;
        };
        struct
        {
            T_cset Vdstc;
            T_integer l;
        };
        struct
        {
            T_iptr Vdp;
            T_integer m;
        };
    };
};
struct T_record_126
{
    // variable fields selector
    T_boolean Vt;
    // variable fields
    union
    {
        T_integer Vi;
        T_boolean Vb;
    };
};
struct T_record_127
{
    // variable fields selector
    T_enum Vt;
    // variable fields
    union
    {
        T_integer Vi;
        T_boolean Vb;
    };
};
struct T_record_128
{
    // variable fields selector
    T_esub Vt;
    // variable fields
    union
    {
        T_integer Vi;
        T_boolean Vb;
    };
};
struct T_record_129
{
    // variable fields selector
    T_subr Vt;
    // variable fields
    union
    {
        T_integer Vi;
        T_boolean Vb;
    };
};
typedef _T_Pfn<void (*)(void*, T_integer, T_integer, T_char)> T_subroutine_130;
typedef _T_Pfn<T_integer (*)(void*, T_integer)> T_subroutine_131;
typedef _T_Pfn<T_integer (*)(void*, T_integer)> T_subroutine_133;
typedef _T_Pfn<void (*)(void*, T_subroutine_133)> T_subroutine_132;
typedef _T_Pfn<T_integer (*)(void*, T_integer)> T_subroutine_134;
typedef _T_Pfn<T_integer (*)(void*, T_integer)> T_subroutine_135;
typedef _T_Pfn<void (*)(void*)> T_subroutine_136;

// forward declarations
void P_junk1(void* _slink, T_integer z, T_integer q);
void P_junk2(void* _slink, T_integer& z);
void P_junk3(void* _slink, T_string10& p);
void P_junk4(void* _slink, T_string10 p);
T_integer F_junk5(void* _slink, T_integer x);
void P_junk6(void* _slink);
T_integer F_junk7(void* _slink, T_integer a, T_integer b, T_integer c);
void P_junk8(void* _slink, T_integer a, T_boolean b, T_char c, T_enum e, T_esub Es, T_subr s, T_real r, T_string10 St, T_arri Ar, T_rec Rc, T_recv Rv, T_cset Stc, T_iptr p);
void P_junk9(void* _slink, T_subroutine_130 Junk9, T_subroutine_131 y);
void P_junk10(void* _slink, T_integer x, T_integer y, T_char Junk10);
T_integer F_junk11(void* _slink, T_integer x);
void P_junk12(void* _slink, T_subroutine_132 Xq, T_subroutine_134 q);
void P_junk13(void* _slink, T_subroutine_135 Xz);
void P_junk14(void* _slink);
void P_junk16(void* _slink);
void P_junk17(void* _slink, T_subroutine_136 x, T_integer i);
void P_junk19(void* _slink);
T_integer F_junk20(void* _slink);
T_integer F_random(void* _slink, T_integer Low, T_integer Hi);

// constants
const T_char C_ccst = 'v';
const T_enum C_eight = 7;
const T_enum C_five = 4;
const T_enum C_four = 3;
const T_enum_41 C_fri = 4;
const T_integer C_mmaxint = -2147483647;
const T_enum_41 C_mon = 0;
const T_enum C_nine = 8;
const T_enum C_one = 0;
const T_real C_rcnst = 43.3300;
const T_integer C_rscst = -2061584302;
const T_real C_rscst2 = -43.3300;
const T_integer C_rscst3 = 2061584302;
const T_enum_41 C_sat = 5;
const auto C_scst = "this is a string";
const T_enum C_seven = 6;
const T_enum C_six = 5;
const T_enum_41 C_sun = 6;
const T_integer C_tcnst = 768;
const T_enum C_ten = 9;
const T_boolean C_testfile = 0;
const T_enum C_three = 2;
const T_enum_41 C_thur = 3;
const T_integer C_tsncst = -52;
const T_integer C_tsncst2 = -768;
const T_integer C_tsncst3 = 52;
const T_enum_41 C_tue = 1;
const T_enum C_two = 1;
const T_vart C_vta = 8;
const T_vart C_vtb = 1;
const T_vart C_vtc = 2;
const T_vart C_vte = 3;
const T_vart C_vtes = 4;
const T_vart C_vti = 0;
const T_vart C_vtp = 11;
const T_vart C_vtr = 6;
const T_vart C_vtrc = 9;
const T_vart C_vts = 5;
const T_vart C_vtst = 7;
const T_vart C_vtstc = 10;
const T_enum_41 C_wed = 2;

// non-local goto targets
const int NL_2 = 1;

// program variables
T_text _input;
T_array_1 a;
T_arri Ai;
T_arrr Ara;
T_rec Arec;
T_integer As;
T_array_7 Avb;
T_array_8 Avc;
T_array_9 Avcs;
T_array_11 Ave;
T_array_12 Aves;
T_array_13 Avf;
T_arri Avi;
T_arri Avi2;
T_array_14 Avis;
T_array_16 Avp;
T_array_17 Avr;
T_array_18 Avrc;
T_array_19 Avs;
T_boolean Ba;
T_boolean Bb;
T_boolean Bc;
T_array_20 Bia;
T_integer Bs;
T_char Ca;
T_array_21 Car;
T_char Cb;
T_char Cc;
T_char Ci;
T_array_22 Cia;
T_integer Cnt;
T_integer Cnt2;
T_integer Cs;
T_array_23 Csia;
T_set_24 Csta;
T_set_24 Cstb;
T_set_24 Cstc;
T_set_24 Cstd;
T_set_25 Cste;
T_set_26 Cstf;
T_set_27 Cstg;
T_array_28 Da;
T_integer Ds;
T_enum Ea;
T_enum Ei;
T_array_30 Eia;
T_integer Es;
T_array_31 Esia;
T_file_32 Fa;
T_file_33 Fb;
T_text_34 Fc;
T_file_35 Fe;
T_file_36 Fes;
T_file_37 Fi;
T_file_38 Fp;
T_file_39 Fr;
T_file_40 Frc;
T_file_42 Fs;
T_file_43 Fst;
T_file_44 Fstc;
T_text Ft;
T_integer Gs;
T_integer Hs;
T_integer i;
T_array_45 Iap;
T_iptr Ip;
T_pointer_47 Ipa;
T_pointer_47 Ipb;
T_pointer_47 Ipc;
T_pointer_47 Ipd;
T_pointer_47 Ipe;
T_arrim Mdar;
T_arrim Mdar2;
T_integer n;
T_record_48 Nvr;
T_text Output;
T_prec Parec;
T_array_58 Pavb;
T_array_59 Pavc;
T_array_60 Pavcs;
T_array_62 Pave;
T_array_63 Paves;
T_array_64 Pavf;
T_array_65 Pavi;
T_array_66 Pavis;
T_array_68 Pavp;
T_array_69 Pavr;
T_array_70 Pavrc;
T_array_71 Pavs;
T_array_72 Pbia;
T_array_73 Pcia;
T_array_74 Pcsia;
T_array_75 Peia;
T_array_76 Pesia;
T_file_77 Pfa;
T_file_78 Pfb;
T_text_79 Pfc;
T_file_80 Pfe;
T_file_81 Pfes;
T_file_82 Pfi;
T_file_83 Pfp;
T_file_84 Pfr;
T_file_85 Pfrc;
T_file_86 Pfs;
T_file_87 Pfst;
T_file_88 Pfstc;
T_pointer_89 Pi1;
T_pointer_89 Pi2;
T_pointer_90 Pta;
T_pointer_91 Ptb;
T_pointer_92 Ptc;
T_pointer_93 Pte;
T_pointer_94 Ptes;
T_pointer_95 Pti;
T_pointer_95 Pti1;
T_pointer_96 Ptp;
T_pointer_97 Ptr;
T_pointer_98 Ptrc;
T_pointer_99 Pts;
T_pointer_100 Ptst;
T_pointer_101 Ptstc;
T_integer q;
T_record_102 r;
T_real Ra;
T_real Rb;
T_real Rc;
T_record_104 Rcast;
T_integer Rcastt;
T_real Rd;
T_real Re;
T_integer Rn;
T_integer Rndseq;
T_pointer_105 Rpa;
T_string10 s;
T_array_106 Sa;
T_array_107 Sar;
T_array_106 Sb;
T_set_109 Sba;
T_set_109 Sbb;
T_set_109 Sbc;
T_set_109 Sbd;
T_set_110 Sbe;
T_set_111 Sbf;
T_set_112 Sbg;
T_array_106 Sc;
T_set_114 Sena;
T_set_114 Senb;
T_set_114 Senc;
T_set_114 Send;
T_set_115 Sene;
T_set_116 Senf;
T_set_117 Seng;
T_range_118 Sras;
T_range_118 Srbs;
T_range_118 Srcs;
T_range_118 Srds;
T_range_118 Sres;
T_range_119 Srx;
T_range_119 Sry;
T_range_119 Srz;
T_set_120 Sta;
T_set_120 Stb;
T_set_120 Stc;
T_set_120 Std;
T_set_121 Ste;
T_set_122 Stf;
T_set_123 Stg;
T_enum_41 Sva;
T_enum_41 Svb;
T_enum_41 Svc;
T_integer t;
T_range_124 Vnum;
T_record_125 Vra;
T_recv Vrec;
T_record_126 Vvrb;
T_record_127 Vvre;
T_record_128 Vvres;
T_record_129 Vvrs;
T_integer x;
T_integer y;
T_integer z;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    Fa.init("fa");
    Fb.init("fb");
    Fc.init("fc");
    Fe.init("fe");
    Fes.init("fes");
    Fi.init("fi");
    Fp.init("fp");
    Fr.init("fr");
    Frc.init("frc");
    Fs.init("fs");
    Fst.init("fst");
    Fstc.init("fstc");
    Ft.init("ft");
    Output.init(1);
    Pfa.init("pfa");
    Pfb.init("pfb");
    Pfc.init("pfc");
    Pfe.init("pfe");
    Pfes.init("pfes");
    Pfi.init("pfi");
    Pfp.init("pfp");
    Pfr.init("pfr");
    Pfrc.init("pfrc");
    Pfs.init("pfs");
    Pfst.init("pfst");
    Pfstc.init("pfstc");
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(1);
    _setLiteral3.set(4);
    _setLiteral3.set(5);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(2);
    _setLiteral4.set(6);
    _setLiteral4.set(10);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(1);
    _setLiteral5.set(2);
    _setLiteral5.set(6);
    _setLiteral5.set(5);
    _setLiteral5.set(7);
    
    _T_GenericSet _setLiteral6;
    _setLiteral6.set(2);
    _setLiteral6.set(6);
    _setLiteral6.set(10);
    
    _T_GenericSet _setLiteral7;
    _setLiteral7.set(2);
    _setLiteral7.set(4);
    _setLiteral7.set(7);
    _setLiteral7.set(8);
    
    _T_GenericSet _setLiteral8;
    _setLiteral8.set(1);
    _setLiteral8.set(3);
    _setLiteral8.set(4);
    _setLiteral8.set(8);
    _setLiteral8.set(10);
    
    _T_GenericSet _setLiteral9;
    _setLiteral9.set(4);
    _setLiteral9.set(6);
    _setLiteral9.set(8);
    _setLiteral9.set(9);
    
    _T_GenericSet _setLiteral10;
    _setLiteral10.set(1);
    _setLiteral10.set(4);
    _setLiteral10.set(5);
    _setLiteral10.set(9);
    
    _T_GenericSet _setLiteral11;
    _setLiteral11.set(4);
    _setLiteral11.set(6);
    _setLiteral11.set(8);
    _setLiteral11.set(9);
    
    _T_GenericSet _setLiteral12;
    _setLiteral12.set(1);
    _setLiteral12.set(2);
    _setLiteral12.set(5);
    _setLiteral12.set(7);
    _setLiteral12.set(10);
    
    _T_GenericSet _setLiteral13;
    _setLiteral13.set(1);
    _setLiteral13.set(5);
    _setLiteral13.set(10);
    
    _T_GenericSet _setLiteral14;
    _setLiteral14.set(1);
    _setLiteral14.set(5);
    _setLiteral14.set(10);
    _setLiteral14.set(6);
    
    _T_GenericSet _setLiteral15;
    _setLiteral15.set(1);
    _setLiteral15.set(2);
    _setLiteral15.set(5);
    _setLiteral15.set(7);
    _setLiteral15.set(10);
    
    _T_GenericSet _setLiteral17;
    _setLiteral17.set(1);
    _setLiteral17.set(2);
    _setLiteral17.set(5);
    _setLiteral17.set(7);
    
    _T_GenericSet _setLiteral18;
    
    _T_GenericSet _setLiteral20;
    _setLiteral20.set('a');
    _setLiteral20.set('c');
    _setLiteral20.set('f');
    
    _T_GenericSet _setLiteral21;
    _setLiteral21.set('c');
    _setLiteral21.set('d');
    _setLiteral21.set('g');
    
    _T_GenericSet _setLiteral22;
    _setLiteral22.set('d');
    _setLiteral22.set('f');
    _setLiteral22.set('h');
    _setLiteral22.set('a');
    
    _T_GenericSet _setLiteral23;
    _setLiteral23.set('a');
    _setLiteral23.set('b');
    _setLiteral23.set('i');
    _setLiteral23.set('h');
    
    _T_GenericSet _setLiteral24;
    _setLiteral24.set('b');
    _setLiteral24.set('d');
    _setLiteral24.set('i');
    _setLiteral24.set('j');
    
    _T_GenericSet _setLiteral25;
    _setLiteral25.set('i');
    _setLiteral25.set('h');
    _setLiteral25.set('d');
    _setLiteral25.set('e');
    
    _T_GenericSet _setLiteral26;
    _setLiteral26.set('b');
    _setLiteral26.set('d');
    _setLiteral26.set('h');
    _setLiteral26.set('j');
    
    _T_GenericSet _setLiteral27;
    _setLiteral27.set('a');
    _setLiteral27.set('d');
    _setLiteral27.set('h');
    _setLiteral27.set('c');
    
    _T_GenericSet _setLiteral28;
    _setLiteral28.set('b');
    _setLiteral28.set('d');
    _setLiteral28.set('h');
    _setLiteral28.set('j');
    
    _T_GenericSet _setLiteral29;
    _setLiteral29.set('a');
    _setLiteral29.set('b');
    _setLiteral29.set('f');
    _setLiteral29.set('g');
    _setLiteral29.set('j');
    
    _T_GenericSet _setLiteral30;
    _setLiteral30.set('a');
    _setLiteral30.set('f');
    _setLiteral30.set('g');
    
    _T_GenericSet _setLiteral31;
    _setLiteral31.set('a');
    _setLiteral31.set('f');
    _setLiteral31.set('g');
    _setLiteral31.set('h');
    
    _T_GenericSet _setLiteral32;
    _setLiteral32.set('a');
    _setLiteral32.set('b');
    _setLiteral32.set('f');
    _setLiteral32.set('g');
    _setLiteral32.set('j');
    
    _T_GenericSet _setLiteral34;
    _setLiteral34.set('a');
    _setLiteral34.set('b');
    _setLiteral34.set('e');
    _setLiteral34.set('f');
    
    _T_GenericSet _setLiteral35;
    
    _T_GenericSet _setLiteral37;
    _setLiteral37.set(C_one);
    _setLiteral37.set(C_four);
    _setLiteral37.set(C_five);
    
    _T_GenericSet _setLiteral38;
    _setLiteral38.set(C_two);
    _setLiteral38.set(C_six);
    _setLiteral38.set(C_ten);
    
    _T_GenericSet _setLiteral39;
    _setLiteral39.set(C_one);
    _setLiteral39.set(C_two);
    _setLiteral39.set(C_six);
    _setLiteral39.set(C_five);
    _setLiteral39.set(C_seven);
    
    _T_GenericSet _setLiteral40;
    _setLiteral40.set(C_two);
    _setLiteral40.set(C_six);
    _setLiteral40.set(C_ten);
    
    _T_GenericSet _setLiteral41;
    _setLiteral41.set(C_two);
    _setLiteral41.set(C_four);
    _setLiteral41.set(C_seven);
    _setLiteral41.set(C_eight);
    
    _T_GenericSet _setLiteral42;
    _setLiteral42.set(C_one);
    _setLiteral42.set(C_three);
    _setLiteral42.set(C_four);
    _setLiteral42.set(C_eight);
    _setLiteral42.set(C_ten);
    
    _T_GenericSet _setLiteral43;
    _setLiteral43.set(C_four);
    _setLiteral43.set(C_six);
    _setLiteral43.set(C_eight);
    _setLiteral43.set(C_nine);
    
    _T_GenericSet _setLiteral44;
    _setLiteral44.set(C_one);
    _setLiteral44.set(C_four);
    _setLiteral44.set(C_five);
    _setLiteral44.set(C_nine);
    
    _T_GenericSet _setLiteral45;
    _setLiteral45.set(C_four);
    _setLiteral45.set(C_six);
    _setLiteral45.set(C_eight);
    _setLiteral45.set(C_nine);
    
    _T_GenericSet _setLiteral46;
    _setLiteral46.set(C_one);
    _setLiteral46.set(C_two);
    _setLiteral46.set(C_five);
    _setLiteral46.set(C_seven);
    _setLiteral46.set(C_ten);
    
    _T_GenericSet _setLiteral47;
    _setLiteral47.set(C_one);
    _setLiteral47.set(C_five);
    _setLiteral47.set(C_ten);
    
    _T_GenericSet _setLiteral48;
    _setLiteral48.set(C_one);
    _setLiteral48.set(C_five);
    _setLiteral48.set(C_ten);
    _setLiteral48.set(C_six);
    
    _T_GenericSet _setLiteral49;
    _setLiteral49.set(C_one);
    _setLiteral49.set(C_two);
    _setLiteral49.set(C_five);
    _setLiteral49.set(C_seven);
    _setLiteral49.set(C_ten);
    
    _T_GenericSet _setLiteral51;
    _setLiteral51.set(C_one);
    _setLiteral51.set(C_two);
    _setLiteral51.set(C_five);
    
    _T_GenericSet _setLiteral52;
    _setLiteral52.set(C_one);
    _setLiteral52.set(C_two);
    _setLiteral52.set(C_five);
    _setLiteral52.set(C_seven);
    
    _T_GenericSet _setLiteral53;
    
    _T_GenericSet _setLiteral55;
    _setLiteral55.set(C_false);
    
    _T_GenericSet _setLiteral56;
    _setLiteral56.set(C_true);
    
    _T_GenericSet _setLiteral57;
    _setLiteral57.set(C_false);
    _setLiteral57.set(C_true);
    
    _T_GenericSet _setLiteral58;
    _setLiteral58.set(C_false);
    
    _T_GenericSet _setLiteral59;
    _setLiteral59.set(C_true);
    _setLiteral59.set(C_false);
    
    _T_GenericSet _setLiteral60;
    _setLiteral60.set(C_true);
    
    _T_GenericSet _setLiteral61;
    _setLiteral61.set(C_true);
    
    _T_GenericSet _setLiteral62;
    _setLiteral62.set(C_false);
    
    _T_GenericSet _setLiteral63;
    _setLiteral63.set(C_true);
    
    _T_GenericSet _setLiteral64;
    _setLiteral64.set(C_true);
    _setLiteral64.set(C_false);
    
    _T_GenericSet _setLiteral65;
    _setLiteral65.set(C_false);
    
    _T_GenericSet _setLiteral66;
    _setLiteral66.set(C_true);
    
    _T_GenericSet _setLiteral67;
    _setLiteral67.set(C_false);
    
    _T_GenericSet _setLiteral69;
    _setLiteral69.set(C_true);
    
    _T_GenericSet _setLiteral71;
    _setLiteral71.set(3, 5);
    
    _T_GenericSet _setLiteral72;
    _setLiteral72.set('b');
    _setLiteral72.set('d');
    _setLiteral72.set('i', 'j');
    
    _T_GenericSet _setLiteral75;
    _setLiteral75.set('b', 'e');
    _setLiteral75.set('i');
    
    _T_GenericSet _setLiteral76;
    _setLiteral76.set('b', 'e');
    _setLiteral76.set('i');
    
    _T_GenericSet _setLiteral77;
    _setLiteral77.set('b', 'g');
    _setLiteral77.set('i');
    
    _T_GenericSet _setLiteral78;
    _setLiteral78.set('b', 'e');
    _setLiteral78.set('i');
    
    _T_GenericSet _setLiteral79;
    _setLiteral79.set('a', 'd');
    _setLiteral79.set('h');
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_2: goto L_2;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        #line 628
        Output << "****************************************************************";
        
        #line 629
        Output << "***************" << _WRITELN;
        
        #line 630
        Output << _WRITELN;
        
        #line 631
        Output << "                 TEST SUITE FOR ISO 7185 PASCAL" << _WRITELN;
        
        #line 632
        Output << _WRITELN;
        
        #line 633
        Output << "                 Copyright (C) 1995 S. A. Moore - All rights ";
        
        #line 634
        Output << "reserved" << _WRITELN;
        
        #line 635
        Output << _WRITELN;
        
        #line 636
        Output << "****************************************************************";
        
        #line 637
        Output << "***************" << _WRITELN;
        
        #line 638
        Output << _WRITELN;
        
        #line 646
        Output << "The following are implementation defined characteristics" << _WRITELN;
        
        #line 647
        Output << _WRITELN;
        
        #line 648
        Output << "Maxint: " << _format(C_maxint, 1, 0) << _WRITELN;
        
        #line 649
        i = C_maxint;
        
        #line 650
        x = 0;
        
        #line 651
        while((i > 0))
        {
            #line 651
            i = (i / 2);
            
            #line 651
            x = (x + 1);
        }
        
        #line 652
        Output << "Bit length of integer without sign bit appears to be: " << _format(x, 1, 0) << _WRITELN;
        
        #line 653
        Output << "Integer default output field" << _WRITELN;
        
        #line 654
        Output << "         1111111111222222222233333333334" << _WRITELN;
        
        #line 655
        Output << "1234567890123456789012345678901234567890" << _WRITELN;
        
        #line 656
        Output << 1 << _WRITELN;
        
        #line 657
        Output << "Real default output field" << _WRITELN;
        
        #line 658
        Output << "         1111111111222222222233333333334" << _WRITELN;
        
        #line 659
        Output << "1234567890123456789012345678901234567890" << _WRITELN;
        
        #line 660
        Output << 1.20000 << _WRITELN;
        
        #line 661
        Output << "Boolean default output field" << _WRITELN;
        
        #line 662
        Output << "         1111111111222222222233333333334" << _WRITELN;
        
        #line 663
        Output << "1234567890123456789012345678901234567890" << _WRITELN;
        
        #line 664
        Output << _str(C_false) << _WRITELN;
        
        #line 665
        Output << _str(C_true) << _WRITELN;
        
        #line 666
        Output << "Char default output field" << _WRITELN;
        
        #line 667
        Output << "         1111111111222222222233333333334" << _WRITELN;
        
        #line 668
        Output << "1234567890123456789012345678901234567890" << _WRITELN;
        
        #line 669
        Output << 'a' << _WRITELN;
        
        #line 670
        if((((_ord('a') == 97) && (_ord('(') == 40)) && (_ord('^') == 94)))
        {
            #line 671
            Output << "Appears to be ASCII" << _WRITELN;
        }
        else
        {
            #line 673
            Output << "Appears to not be ASCII" << _WRITELN;
        }
        
        #line 681
        Output << _WRITELN;
        
        #line 682
        Output << "******************* Control structures tests *******************" << _WRITELN;
        
        #line 683
        Output << _WRITELN;
        
        #line 684
        Output << "Control1: ";
        
        #line 685
        _FOR_TO(i, 1, 10)
        {
            #line 685
            Output << _format(i, 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 686
        Output << "s/b 1 2 3 4 5 6 7 8 9 10" << _WRITELN;
        
        #line 687
        Output << "Control2: ";
        
        #line 688
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 688
            Output << _format(i, 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 689
        Output << "s/b 10 9 8 7 6 5 4 3 2 1" << _WRITELN;
        
        #line 690
        Output << "Control3: ";
        
        #line 691
        i = 1;
        
        #line 692
        while((i <= 10))
        {
            #line 692
            Output << _format(i, 1, 0) << ' ';
            
            #line 692
            i = (i + 1);
        }
        
        #line 693
        Output << "s/b 1 2 3 4 5 6 7 8 9 10" << _WRITELN;
        
        #line 694
        Output << "Control4: ";
        
        #line 695
        i = 1;
        
        #line 695
        do
        {
            #line 695
            Output << _format(i, 1, 0) << ' ';
            
            #line 695
            i = (i + 1);
        }
        while(!(i > 10));
        
        #line 696
        Output << "s/b 1 2 3 4 5 6 7 8 9 10" << _WRITELN;
        
        #line 697
        Output << "Control5: ";
        
        #line 698
        i = 1;
        
        #line 699
        L_1:
        Output << _format(i, 1, 0) << ' ';
        
        #line 699
        i = (i + 1);
        
        #line 699
        if((i <= 10))
        {
            #line 699
            goto L_1;
        }
        
        #line 700
        Output << "s/b 1 2 3 4 5 6 7 8 9 10" << _WRITELN;
        
        #line 701
        Output << "Control6: ";
        
        #line 702
        if(C_true)
        {
            #line 702
            Output << "yes";
        }
        else
        {
            #line 702
            Output << "no";
        }
        
        #line 703
        Output << " s/b yes" << _WRITELN;
        
        #line 704
        Output << "Control7: ";
        
        #line 705
        if(C_false)
        {
            #line 705
            Output << "no";
        }
        else
        {
            #line 705
            Output << "yes";
        }
        
        #line 706
        Output << " s/b yes" << _WRITELN;
        
        #line 707
        Output << "Control8: ";
        
        #line 708
        if(C_true)
        {
            #line 708
            Output << "yes ";
        }
        
        #line 708
        Output << "stop";
        
        #line 709
        Output << " s/b yes stop" << _WRITELN;
        
        #line 710
        Output << "Control9: ";
        
        #line 711
        if(C_false)
        {
            #line 711
            Output << "no ";
        }
        
        #line 711
        Output << "stop";
        
        #line 712
        Output << " s/b stop" << _WRITELN;
        
        #line 713
        Output << "Control10: ";
        
        #line 714
        _FOR_TO(i, 1, 10)
        {
            #line 715
            switch(i)
            {
            case 1:
                #line 716
                Output << "one ";
                break;
            
            case 2:
                #line 717
                Output << "two ";
                break;
            
            case 3:
                #line 718
                Output << "three ";
                break;
            
            case 4:
                #line 719
                Output << "four ";
                break;
            
            case 5:
                #line 720
                Output << "five ";
                break;
            
            case 6:
                #line 721
                Output << "six ";
                break;
            
            case 7:
                #line 722
                Output << "seven ";
                break;
            
            case 8:
                #line 723
                Output << "eight ";
                break;
            
            case 9:
            case 10:
                #line 724
                Output << "nine-ten ";
                break;
            }
        }
        _FOR_END(i)
        
        #line 727
        Output << _WRITELN;
        
        #line 728
        Output << "Control10: s/b ";
        
        #line 729
        Output << "one two three four five ";
        
        #line 730
        Output << "six seven eight nine-ten nine-ten" << _WRITELN;
        
        #line 731
        Output << "Control11: start ";
        
        #line 732
        P_junk6(nullptr);
        
        #line 733
        Output << "!! BAD !!";
        
        #line 734
        L_2:
        Output << "stop s/b start stop" << _WRITELN;
        
        #line 735
        Output << "Control12: start ";
        
        #line 736
        goto L_3;
        
        #line 737
        Output << "!! BAD !!";
        
        #line 738
        L_3:
        Output << "stop s/b start stop" << _WRITELN;
        
        #line 739
        Output << "Control13: start ";
        
        #line 741
        i = 10;
        
        #line 742
        _FOR_TO(i, 1, i)
        {
            #line 742
            Output << _format(i, 3, 0);
        }
        _FOR_END(i)
        
        #line 743
        Output << " s/b   1  2  3  4  5  6  7  8  9 10" << _WRITELN;
        
        #line 744
        Output << "Control14: start ";
        
        #line 746
        i = 10;
        
        #line 747
        _FOR_DOWNTO(i, i, 1)
        {
            #line 747
            Output << _format(i, 3, 0);
        }
        _FOR_END(i)
        
        #line 748
        Output << " s/b  10  9  8  7  6  5  4  3  2  1" << _WRITELN;
        
        #line 749
        Output << "Control15: start ";
        
        #line 751
        _FOR_TO(i, 0, 9)
        {
            #line 751
            Output << _format(i, 2, 0);
        }
        _FOR_END(i)
        
        #line 752
        Output << " s/b 0 1 2 3 4 5 6 7 8 9" << _WRITELN;
        
        #line 753
        Output << "Control16: start ";
        
        #line 755
        _FOR_DOWNTO(i, 9, 0)
        {
            #line 755
            Output << _format(i, 2, 0);
        }
        _FOR_END(i)
        
        #line 756
        Output << " s/b 9 8 7 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 758
        Output << "Control17: start ";
        
        #line 759
        i = 10000;
        
        #line 760
        switch(i)
        {
        case 1:
            #line 761
            Output << "*** bad ***";
            break;
        
        case 10000:
            #line 762
            Output << "good";
            break;
        }
        
        #line 764
        Output << " start s/b good" << _WRITELN;
        
        #line 772
        Output << _WRITELN;
        
        #line 773
        Output << "******************* Integers *******************" << _WRITELN;
        
        #line 774
        Output << _WRITELN;
        
        #line 777
        x = 43;
        
        #line 777
        y = 78;
        
        #line 777
        z = y;
        
        #line 778
        Output << "Integer1:   " << _format((x + y), 1, 0) << " s/b 121" << _WRITELN;
        
        #line 779
        Output << "Integer2:   " << _format((y - x), 1, 0) << " s/b 35" << _WRITELN;
        
        #line 780
        Output << "Integer3:   " << _format((x * y), 1, 0) << " s/b 3354" << _WRITELN;
        
        #line 781
        Output << "Integer4:   " << _format((y / x), 1, 0) << " s/b 1" << _WRITELN;
        
        #line 782
        Output << "Integer5:   " << _format(_mod(y , x), 1, 0) << " s/b 35" << _WRITELN;
        
        #line 783
        Output << "Integer6:   " << _format(_succ(x), 1, 0) << " s/b 44" << _WRITELN;
        
        #line 784
        Output << "Integer7:   " << _format(_pred(x), 1, 0) << " s/b 42" << _WRITELN;
        
        #line 785
        Output << "Integer8:   " << _format(_sqr(x), 1, 0) << " s/b 1849" << _WRITELN;
        
        #line 786
        Output << "Integer9:   " << _chr(y) << " s/b N" << _WRITELN;
        
        #line 787
        Output << "Integer10:  " << _format(_ord(_chr(x)), 1, 0) << " s/b 43" << _WRITELN;
        
        #line 788
        Output << "Integer11:  " << _format(_str(_odd(x)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 789
        Output << "Integer12:  " << _format(_str(_odd(y)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 790
        Output << "Integer13:  " << _format(_str((z == y)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 791
        Output << "Integer14:  " << _format(_str((x == y)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 792
        Output << "Integer15:  " << _format(_str((x < y)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 793
        Output << "Integer16:  " << _format(_str((y < x)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 794
        Output << "Integer17:  " << _format(_str((y > x)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 795
        Output << "Integer18:  " << _format(_str((x > y)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 796
        Output << "Integer19:  " << _format(_str((x != y)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 797
        Output << "Integer20:  " << _format(_str((y != z)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 798
        Output << "Integer21:  " << _format(_str((x <= y)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 799
        Output << "Integer22:  " << _format(_str((z <= y)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 800
        Output << "Integer23:  " << _format(_str((y <= x)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 801
        Output << "Integer24:  " << _format(_str((y >= x)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 802
        Output << "Integer25:  " << _format(_str((y >= z)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 803
        Output << "Integer26:  " << _format(_str((x >= y)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 806
        Output << "Integer27:  ";
        
        #line 806
        i = 546;
        
        #line 806
        Output << _format(i, 1, 0) << " s/b 546" << _WRITELN;
        
        #line 807
        Output << "Integer28:  " << _format((56 + 34), 1, 0) << " s/b 90" << _WRITELN;
        
        #line 808
        Output << "Integer29:  " << _format((56 - 34), 1, 0) << " s/b 22" << _WRITELN;
        
        #line 809
        Output << "Integer30:  " << _format((56 * 34), 1, 0) << " s/b 1904" << _WRITELN;
        
        #line 810
        Output << "Integer31:  " << _format((56 / 34), 1, 0) << " s/b 1" << _WRITELN;
        
        #line 811
        Output << "Integer32:  " << _format(_mod(56 , 34), 1, 0) << " s/b 22" << _WRITELN;
        
        #line 812
        Output << "Integer33:  " << _format(_succ(5), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 813
        Output << "Integer34:  " << _format(_pred(5), 1, 0) << " s/b 4" << _WRITELN;
        
        #line 814
        Output << "Integer35:  " << _format(_sqr(7), 1, 0) << " s/b 49" << _WRITELN;
        
        #line 815
        Output << "Integer36:  " << _chr(65) << " s/b A" << _WRITELN;
        
        #line 816
        Output << "Integer37:  " << _format(_ord(_chr(65)), 1, 0) << " s/b 65" << _WRITELN;
        
        #line 817
        Output << "Integer38:  " << _format(C_tcnst, 1, 0) << " s/b 768" << _WRITELN;
        
        #line 818
        Output << "Integer39:  " << _format(_str(_odd(5)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 819
        Output << "Integer40:  " << _format(_str(_odd(8)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 820
        Output << "Integer41:  " << _format(_str((56 == 56)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 821
        Output << "Integer42:  " << _format(_str((56 == 57)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 822
        Output << "Integer43:  " << _format(_str((56 < 57)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 823
        Output << "Integer44:  " << _format(_str((57 < 56)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 824
        Output << "Integer45:  " << _format(_str((57 > 56)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 825
        Output << "Integer46:  " << _format(_str((56 > 57)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 826
        Output << "Integer47:  " << _format(_str((56 != 57)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 827
        Output << "Integer48:  " << _format(_str((56 != 56)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 828
        Output << "Integer49:  " << _format(_str((55 <= 500)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 829
        Output << "Integer50:  " << _format(_str((67 <= 67)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 830
        Output << "Integer51:  " << _format(_str((56 <= 33)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 831
        Output << "Integer52:  " << _format(_str((645 >= 4)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 832
        Output << "Integer53:  " << _format(_str((23 >= 23)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 833
        Output << "Integer54:  " << _format(_str((45 >= 123)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 836
        As = (-14);
        
        #line 837
        Bs = (-32);
        
        #line 838
        Cs = (-14);
        
        #line 839
        Ds = 20;
        
        #line 840
        Es = (-15);
        
        #line 841
        Gs = C_maxint;
        
        #line 842
        Hs = C_mmaxint;
        
        #line 843
        Vnum = (-C_maxint);
        
        #line 844
        Output << "Integer55:  " << _format((As + Ds), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 845
        Output << "Integer56:  " << _format((Ds + As), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 846
        Output << "Integer57:  " << _format((Bs + Ds), 1, 0) << " s/b -12" << _WRITELN;
        
        #line 847
        Output << "Integer58:  " << _format((As + Bs), 1, 0) << " s/b -46" << _WRITELN;
        
        #line 848
        Output << "Integer59:  " << _format((Ds - As), 1, 0) << " s/b 34" << _WRITELN;
        
        #line 849
        Output << "Integer60:  " << _format((Bs - Ds), 1, 0) << " s/b -52" << _WRITELN;
        
        #line 850
        Output << "Integer61:  " << _format((Bs - As), 1, 0) << " s/b -18" << _WRITELN;
        
        #line 851
        Output << "Integer62:  " << _format((Ds * As), 1, 0) << " s/b -280" << _WRITELN;
        
        #line 852
        Output << "Integer63:  " << _format((As * Ds), 1, 0) << " s/b -280" << _WRITELN;
        
        #line 853
        Output << "Integer64:  " << _format((As * Bs), 1, 0) << " s/b 448" << _WRITELN;
        
        #line 854
        Output << "Integer65:  " << _format((Ds / As), 1, 0) << " s/b -1" << _WRITELN;
        
        #line 855
        Output << "Integer66:  " << _format((Bs / Ds), 1, 0) << " s/b -1" << _WRITELN;
        
        #line 856
        Output << "Integer67:  " << _format((Bs / As), 1, 0) << " s/b 2" << _WRITELN;
        
        #line 857
        Output << "Integer68:  " << _format(_succ(As), 1, 0) << " s/b -13" << _WRITELN;
        
        #line 858
        Output << "Integer69:  " << _format(_pred(Bs), 1, 0) << " s/b -33" << _WRITELN;
        
        #line 859
        Output << "Integer70: " << _format(_sqr(As), 1, 0) << " s/b 196" << _WRITELN;
        
        #line 860
        Output << "Integer71:  " << _format(_str(_odd(As)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 861
        Output << "Integer72:  " << _format(_str(_odd(Es)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 862
        Output << "Integer73:  " << _format(_str((As == Cs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 863
        Output << "Integer74:  " << _format(_str((As == Bs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 864
        Output << "Integer75:  " << _format(_str((As != Bs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 865
        Output << "Integer76:  " << _format(_str((As != Cs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 866
        Output << "Integer77:  " << _format(_str((As < Ds)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 867
        Output << "Integer78:  " << _format(_str((Bs < As)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 868
        Output << "Integer79:  " << _format(_str((Ds < As)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 869
        Output << "Integer80:  " << _format(_str((As < Bs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 870
        Output << "Integer81:  " << _format(_str((Ds > As)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 871
        Output << "Integer82:  " << _format(_str((As > Bs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 872
        Output << "Integer83:  " << _format(_str((As > Ds)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 873
        Output << "Integer84:  " << _format(_str((Bs > As)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 874
        Output << "Integer85:  " << _format(_str((As <= Ds)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 875
        Output << "Integer86:  " << _format(_str((Bs <= As)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 876
        Output << "Integer87:  " << _format(_str((As <= Cs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 877
        Output << "Integer88:  " << _format(_str((Ds <= As)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 878
        Output << "Integer89:  " << _format(_str((As <= Bs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 879
        Output << "Integer90:  " << _format(_str((Ds >= As)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 880
        Output << "Integer91:  " << _format(_str((As >= Bs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 881
        Output << "Integer92:  " << _format(_str((As >= Cs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 882
        Output << "Integer93:  " << _format(_str((As >= Ds)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 883
        Output << "Integer94:  " << _format(_str((Bs >= As)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 884
        Output << "Integer95:  " << _format(_abs(As), 1, 0) << " s/b 14" << _WRITELN;
        
        #line 885
        Output << "Integer96:  " << _format((Gs + Hs), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 886
        Output << "Integer97:  " << _format((Gs - C_maxint), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 887
        Output << "Integer98:  " << _format((Gs + Vnum), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 890
        Output << "Integer99:  " << _format((45 + (-30)), 1, 0) << " s/b 15" << _WRITELN;
        
        #line 891
        Output << "Integer100:  " << _format(((-25) + 70), 1, 0) << " s/b 45" << _WRITELN;
        
        #line 892
        Output << "Integer101: " << _format(((-62) + 23), 1, 0) << " s/b -39" << _WRITELN;
        
        #line 893
        Output << "Integer102: " << _format(((-20) + (-15)), 1, 0) << " s/b -35" << _WRITELN;
        
        #line 894
        Output << "Integer103: " << _format((20 - (-14)), 1, 0) << " s/b 34" << _WRITELN;
        
        #line 895
        Output << "Integer104: " << _format(((-34) - 14), 1, 0) << " s/b -48" << _WRITELN;
        
        #line 896
        Output << "Integer105: " << _format(((-56) - (-12)), 1, 0) << " s/b -44" << _WRITELN;
        
        #line 897
        Output << "Integer106: " << _format((5 * (-4)), 1, 0) << " s/b -20" << _WRITELN;
        
        #line 898
        Output << "Integer107: " << _format(((-18) * 7), 1, 0) << " s/b -126" << _WRITELN;
        
        #line 899
        Output << "Integer108: " << _format(((-40) * (-13)), 1, 0) << " s/b 520" << _WRITELN;
        
        #line 900
        Output << "Integer109: " << _format((30 / (-5)), 1, 0) << " s/b -6" << _WRITELN;
        
        #line 901
        Output << "Integer110: " << _format(((-50) / 2), 1, 0) << " s/b -25" << _WRITELN;
        
        #line 902
        Output << "Integer111: " << _format(((-20) / (-4)), 1, 0) << " s/b 5" << _WRITELN;
        
        #line 903
        Output << "Integer112: " << _format(_succ((-10)), 1, 0) << " s/b -9" << _WRITELN;
        
        #line 904
        Output << "Integer113: " << _format(_succ((-1)), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 905
        Output << "Integer114: " << _format(_pred((-1)), 1, 0) << " s/b -2" << _WRITELN;
        
        #line 906
        Output << "Integer115: " << _format(_sqr((-8)), 1, 0) << " s/b 64" << _WRITELN;
        
        #line 907
        Output << "Integer116: " << _format(_pred((-54)), 1, 0) << " s/b -55" << _WRITELN;
        
        #line 908
        Output << "Integer117: " << _format(_str(_odd((-20))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 909
        Output << "Integer118: " << _format(_str(_odd((-15))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 910
        Output << "Integer119: " << _format(_str(((-5) == (-5))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 911
        Output << "Integer120: " << _format(_str(((-5) == 5)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 912
        Output << "Integer121: " << _format(_str(((-21) != (-40))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 913
        Output << "Integer122: " << _format(_str(((-21) != (-21))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 914
        Output << "Integer123: " << _format(_str(((-3) < 5)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 915
        Output << "Integer124: " << _format(_str(((-32) < (-20))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 916
        Output << "Integer125: " << _format(_str((20 < (-20))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 917
        Output << "Integer126: " << _format(_str(((-15) < (-40))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 918
        Output << "Integer127: " << _format(_str((70 > (-4))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 919
        Output << "Integer128: " << _format(_str(((-23) > (-34))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 920
        Output << "Integer129: " << _format(_str(((-5) > 5)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 921
        Output << "Integer130: " << _format(_str(((-60) > (-59))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 922
        Output << "Integer131: " << _format(_str(((-12) <= 4)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 923
        Output << "Integer132: " << _format(_str(((-14) <= (-5))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 924
        Output << "Integer133: " << _format(_str(((-7) <= (-7))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 925
        Output << "Integer134: " << _format(_str((5 <= (-5))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 926
        Output << "Integer135: " << _format(_str(((-10) <= (-20))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 927
        Output << "Integer136: " << _format(_str((9 >= (-3))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 928
        Output << "Integer137: " << _format(_str(((-4) >= (-10))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 929
        Output << "Integer138: " << _format(_str(((-13) >= (-13))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 930
        Output << "Integer139: " << _format(_str(((-6) >= 6)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 931
        Output << "Integer140: " << _format(_str(((-20) >= (-10))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 932
        Output << "Integer141: " << _format(_abs((-6)), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 933
        Output << "Integer142: " << _format(C_tsncst, 1, 0) << " s/b -52" << _WRITELN;
        
        #line 934
        Output << "Integer143: " << _format((-C_tsncst), 1, 0) << " s/b 52" << _WRITELN;
        
        #line 935
        Output << "Integer144: " << _format(C_tsncst2, 1, 0) << " s/b -768" << _WRITELN;
        
        #line 936
        Output << "Integer145: " << _format(C_tsncst3, 1, 0) << " s/b 52" << _WRITELN;
        
        #line 937
        Output << "Integer146: " << _format((C_maxint + C_mmaxint), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 945
        Output << _WRITELN;
        
        #line 946
        Output << "******************* Subranges *******************" << _WRITELN;
        
        #line 947
        Output << _WRITELN;
        
        #line 950
        Srx = 43;
        
        #line 950
        Sry = 78;
        
        #line 950
        Srz = Sry;
        
        #line 951
        Output << "Subrange1:   " << _format((Srx + Sry), 1, 0) << " s/b 121" << _WRITELN;
        
        #line 952
        Output << "Subrange2:   " << _format((Sry - Srx), 1, 0) << " s/b 35" << _WRITELN;
        
        #line 953
        Output << "Subrange3:   " << _format((Srx * Sry), 1, 0) << " s/b 3354" << _WRITELN;
        
        #line 954
        Output << "Subrange4:   " << _format((Sry / Srx), 1, 0) << " s/b 1" << _WRITELN;
        
        #line 955
        Output << "Subrange5:   " << _format(_mod(Sry , Srx), 1, 0) << " s/b 35" << _WRITELN;
        
        #line 956
        Output << "Subrange6:   " << _format(_succ(Srx), 1, 0) << " s/b 44" << _WRITELN;
        
        #line 957
        Output << "Subrange7:   " << _format(_pred(Srx), 1, 0) << " s/b 42" << _WRITELN;
        
        #line 958
        Output << "Subrange8:   " << _chr(Sry) << " s/b N" << _WRITELN;
        
        #line 959
        Output << "Subrange9:   " << _format(_ord(_chr(Srx)), 1, 0) << " s/b 43" << _WRITELN;
        
        #line 960
        Output << "Subrange10:  " << _format(_str(_odd(Srx)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 961
        Output << "Subrange11:  " << _format(_str(_odd(Sry)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 962
        Output << "Subrange12:  " << _format(_str((Srz == Sry)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 963
        Output << "Subrange13:  " << _format(_str((Srx == Sry)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 964
        Output << "Subrange14:  " << _format(_str((Srx < Sry)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 965
        Output << "Subrange15:  " << _format(_str((Sry < Srx)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 966
        Output << "Subrange16:  " << _format(_str((Sry > Srx)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 967
        Output << "Subrange17:  " << _format(_str((Srx > Sry)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 968
        Output << "Subrange18:  " << _format(_str((Srx != Sry)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 969
        Output << "Subrange19:  " << _format(_str((Sry != Srz)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 970
        Output << "Subrange20:  " << _format(_str((Srx <= Sry)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 971
        Output << "Subrange21:  " << _format(_str((Srz <= Sry)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 972
        Output << "Subrange22:  " << _format(_str((Sry <= Srx)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 973
        Output << "Subrange23:  " << _format(_str((Sry >= Srx)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 974
        Output << "Subrange24:  " << _format(_str((Sry >= Srz)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 975
        Output << "Subrange25:  " << _format(_str((Srx >= Sry)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 978
        Sras = (-14);
        
        #line 979
        Srbs = (-32);
        
        #line 980
        Srcs = (-14);
        
        #line 981
        Srds = 20;
        
        #line 982
        Sres = (-15);
        
        #line 983
        Output << "Subrange26:  " << _format((Sras + Srds), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 984
        Output << "Subrange27:  " << _format((Srds + Sras), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 985
        Output << "Subrange28:  " << _format((Srbs + Srds), 1, 0) << " s/b -12" << _WRITELN;
        
        #line 986
        Output << "Subrange29:  " << _format((Sras + Srbs), 1, 0) << " s/b -46" << _WRITELN;
        
        #line 987
        Output << "Subrange30:  " << _format((Srds - Sras), 1, 0) << " s/b 34" << _WRITELN;
        
        #line 988
        Output << "Subrange31:  " << _format((Srbs - Srds), 1, 0) << " s/b -52" << _WRITELN;
        
        #line 989
        Output << "Subrange32:  " << _format((Srbs - Sras), 1, 0) << " s/b -18" << _WRITELN;
        
        #line 990
        Output << "Subrange33:  " << _format((Srds * Sras), 1, 0) << " s/b -280" << _WRITELN;
        
        #line 991
        Output << "Subrange34:  " << _format((Sras * Srds), 1, 0) << " s/b -280" << _WRITELN;
        
        #line 992
        Output << "Subrange35:  " << _format((Sras * Srbs), 1, 0) << " s/b 448" << _WRITELN;
        
        #line 993
        Output << "Subrange36:  " << _format((Srds / Sras), 1, 0) << " s/b -1" << _WRITELN;
        
        #line 994
        Output << "Subrange37:  " << _format((Srbs / Srds), 1, 0) << " s/b -1" << _WRITELN;
        
        #line 995
        Output << "Subrange38:  " << _format((Srbs / Sras), 1, 0) << " s/b 2" << _WRITELN;
        
        #line 996
        Output << "Subrange39:  " << _format(_succ(Sras), 1, 0) << " s/b -13" << _WRITELN;
        
        #line 997
        Output << "Subrange40:  " << _format(_pred(Srbs), 1, 0) << " s/b -33" << _WRITELN;
        
        #line 998
        Output << "Subrange41:  " << _format(_str(_odd(Sras)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 999
        Output << "Subrange42:  " << _format(_str(_odd(Sres)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1000
        Output << "Subrange43:  " << _format(_str((Sras == Srcs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1001
        Output << "Subrange44:  " << _format(_str((Sras == Srbs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1002
        Output << "Subrange45:  " << _format(_str((Sras != Srbs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1003
        Output << "Subrange46:  " << _format(_str((Sras != Srcs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1004
        Output << "Subrange47:  " << _format(_str((Sras < Srds)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1005
        Output << "Subrange48:  " << _format(_str((Srbs < Sras)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1006
        Output << "Subrange49:  " << _format(_str((Srds < Sras)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1007
        Output << "Subrange50:  " << _format(_str((Sras < Srbs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1008
        Output << "Subrange51:  " << _format(_str((Srds > Sras)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1009
        Output << "Subrange52:  " << _format(_str((Sras > Srbs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1010
        Output << "Subrange53:  " << _format(_str((Sras > Srds)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1011
        Output << "Subrange54:  " << _format(_str((Srbs > Sras)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1012
        Output << "Subrange55:  " << _format(_str((Sras <= Srds)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1013
        Output << "Subrange56:  " << _format(_str((Srbs <= Sras)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1014
        Output << "Subrange57:  " << _format(_str((Sras <= Srcs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1015
        Output << "Subrange58:  " << _format(_str((Srds <= Sras)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1016
        Output << "Subrange59:  " << _format(_str((Sras <= Srbs)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1017
        Output << "Subrange60:  " << _format(_str((Srds >= Sras)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1018
        Output << "Subrange61:  " << _format(_str((Sras >= Srbs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1019
        Output << "Subrange62:  " << _format(_str((Sras >= Srcs)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1020
        Output << "Subrange63:  " << _format(_str((Sras >= Srds)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1021
        Output << "Subrange64:  " << _format(_str((Srbs >= Sras)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1022
        Output << "Subrange65:  " << _format(_abs(Sras), 1, 0) << " s/b 14" << _WRITELN;
        
        #line 1030
        Output << _WRITELN;
        
        #line 1031
        Output << "******************* Characters*******************" << _WRITELN;
        
        #line 1032
        Output << _WRITELN;
        
        #line 1035
        Ca = 'g';
        
        #line 1035
        Cb = 'g';
        
        #line 1035
        Cc = 'u';
        
        #line 1036
        Output << "Character1:   " << Ca << ' ' << Cb << ' ' << Cc << " s/b g g u" << _WRITELN;
        
        #line 1037
        Output << "Character2:   " << _succ(Ca) << " s/b h" << _WRITELN;
        
        #line 1038
        Output << "Character3:   " << _pred(Cb) << " s/b f" << _WRITELN;
        
        #line 1039
        Output << "Character4:   " << _format(_ord(Ca), 1, 0) << " s/b 103" << _WRITELN;
        
        #line 1040
        Output << "Character5:   " << _chr(_ord(Cc)) << " s/b u" << _WRITELN;
        
        #line 1041
        Output << "Character6:   " << _format(_str((Ca == Cb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1042
        Output << "Character7:   " << _format(_str((Ca == Cc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1043
        Output << "Character8:   " << _format(_str((Ca < Cc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1044
        Output << "Character9:   " << _format(_str((Cc < Ca)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1045
        Output << "Character10:  " << _format(_str((Cc > Ca)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1046
        Output << "Character11:  " << _format(_str((Ca > Cc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1047
        Output << "Character12:  " << _format(_str((Ca != Cc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1048
        Output << "Character13:  " << _format(_str((Ca != Cb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1049
        Output << "Character14:  " << _format(_str((Ca <= Cc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1050
        Output << "Character15:  " << _format(_str((Ca <= Cb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1051
        Output << "Character16:  " << _format(_str((Cc <= Ca)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1052
        Output << "Character17:  " << _format(_str((Cc >= Cb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1053
        Output << "Character18:  " << _format(_str((Cb >= Ca)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1054
        Output << "Character19:  " << _format(_str((Cb >= Cc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1055
        Sa = "porker    ";
        
        #line 1055
        Sb = "porker    ";
        
        #line 1055
        Sc = "parker    ";
        
        #line 1056
        Output << "Character20:  " << Sa << Sb << Sc << " s/b porker    porker    parker" << _WRITELN;
        
        #line 1058
        Output << "Character21:  " << _format(_str(_strcmpEQ<10>(Sa, Sb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1059
        Output << "Character22:  " << _format(_str(_strcmpEQ<10>(Sa, Sc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1060
        Output << "Character23:  " << _format(_str(_strcmpLT<10>(Sc, Sa)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1061
        Output << "Character24:  " << _format(_str(_strcmpLT<10>(Sa, Sc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1062
        Output << "Character25:  " << _format(_str(_strcmpGT<10>(Sa, Sc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1063
        Output << "Character26:  " << _format(_str(_strcmpGT<10>(Sc, Sa)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1064
        Output << "Character27:  " << _format(_str(_strcmpNE<10>(Sa, Sc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1065
        Output << "Character28:  " << _format(_str(_strcmpNE<10>(Sa, Sb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1066
        Output << "Character29:  " << _format(_str(_strcmpLE<10>(Sc, Sa)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1067
        Output << "Character30:  " << _format(_str(_strcmpLE<10>(Sa, Sb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1068
        Output << "Character40:  " << _format(_str(_strcmpLE<10>(Sa, Sc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1069
        Output << "Character41:  " << _format(_str(_strcmpGE<10>(Sa, Sc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1070
        Output << "Character42:  " << _format(_str(_strcmpGE<10>(Sa, Sb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1071
        Output << "Character43:  " << _format(_str(_strcmpGE<10>(Sc, Sa)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1072
        Output << "Character44:  ";
        
        #line 1073
        _FOR_TO(Ca, 'a', 'z')
        {
            #line 1073
            Output << Ca;
        }
        _FOR_END(Ca)
        
        #line 1074
        Output << " s/b abcdefghijklmnopqrstuvwxyz" << _WRITELN;
        
        #line 1075
        Output << "Character45:  ";
        
        #line 1076
        _FOR_DOWNTO(Ca, 'z', 'a')
        {
            #line 1076
            Output << Ca;
        }
        _FOR_END(Ca)
        
        #line 1077
        Output << " s/b zyxwvutsrqponmlkjihgfedcba" << _WRITELN;
        
        #line 1078
        Output << "Character46:  ";
        
        #line 1079
        x = 0;
        
        #line 1080
        _FOR_TO(Ca, 'a', 'z')
        {
            #line 1080
            Car[Ca] = x;
            
            #line 1080
            x = (x + 1);
        }
        _FOR_END(Ca)
        
        #line 1081
        _FOR_DOWNTO(Ca, 'z', 'a')
        {
            #line 1081
            Output << _format(Car[Ca], 1, 0) << ' ';
        }
        _FOR_END(Ca)
        
        #line 1082
        Output << _WRITELN;
        
        #line 1083
        Output << "Character46: s/b 25 24 23 22 21 20 19 18 17 16 15" << " 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 1085
        r.Rc = 'n';
        
        #line 1085
        Output << "Character47: " << r.Rc << " s/b n" << _WRITELN;
        
        #line 1086
        r.Rs = "junky01234";
        
        #line 1086
        Output << "Character48: " << r.Rs << " s/b junky01234" << _WRITELN;
        
        #line 1088
        _FOR_TO(i, 1, 10)
        {
            #line 1088
            Sar[i] = "0123456789";
        }
        _FOR_END(i)
        
        #line 1089
        Sar[1] = "trash     ";
        
        #line 1090
        Sar[2] = "finnork   ";
        
        #line 1091
        Sar[10] = "crapola   ";
        
        #line 1092
        Output << "Character49:  " << _WRITELN;
        
        #line 1093
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 1093
            Output << Sar[i] << _WRITELN;
        }
        _FOR_END(i)
        
        #line 1094
        Output << "Character49: s/b" << _WRITELN;
        
        #line 1095
        Output << "crapola" << _WRITELN;
        
        #line 1096
        Output << "0123456789" << _WRITELN;
        
        #line 1097
        Output << "0123456789" << _WRITELN;
        
        #line 1098
        Output << "0123456789" << _WRITELN;
        
        #line 1099
        Output << "0123456789" << _WRITELN;
        
        #line 1100
        Output << "0123456789" << _WRITELN;
        
        #line 1101
        Output << "0123456789" << _WRITELN;
        
        #line 1102
        Output << "0123456789" << _WRITELN;
        
        #line 1103
        Output << "finnork" << _WRITELN;
        
        #line 1104
        Output << "trash" << _WRITELN;
        
        #line 1105
        Output << "Character50:  " << _WRITELN;
        
        #line 1106
        _FOR_TO(Ca, '0', '9')
        {
            #line 1108
            switch(Ca)
            {
            case '5':
                #line 1109
                Output << "five ";
                break;
            
            case '3':
                #line 1110
                Output << "three ";
                break;
            
            case '6':
                #line 1111
                Output << "six ";
                break;
            
            case '8':
                #line 1112
                Output << "eight ";
                break;
            
            case '0':
                #line 1113
                Output << "zero ";
                break;
            
            case '9':
                #line 1114
                Output << "nine ";
                break;
            
            case '7':
                #line 1115
                Output << "seven ";
                break;
            
            case '4':
                #line 1116
                Output << "four ";
                break;
            
            case '1':
                #line 1117
                Output << "one ";
                break;
            
            case '2':
                #line 1118
                Output << "two ";
                break;
            }
        }
        _FOR_END(Ca)
        
        #line 1121
        Output << _WRITELN;
        
        #line 1122
        Output << " s/b zero one two three four five six " << "seven eight nine" << _WRITELN;
        
        #line 1126
        Output << "Character51:  " << 'a' << " s/b a" << _WRITELN;
        
        #line 1127
        Output << "Character52:  " << _succ('a') << " s/b b" << _WRITELN;
        
        #line 1128
        Output << "Character53:  " << _pred('z') << " s/b y" << _WRITELN;
        
        #line 1129
        Output << "Character54:  " << _format(_ord('c'), 1, 0) << " s/b 99" << _WRITELN;
        
        #line 1130
        Output << "Character55:  " << _chr(_ord('g')) << " s/b g" << _WRITELN;
        
        #line 1131
        Output << "Character56:  " << _format(_str(('q' == 'q')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1132
        Output << "Character57:  " << _format(_str(('r' == 'q')), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1133
        Output << "Character58:  " << _format(_str(('b' < 't')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1134
        Output << "Character59:  " << _format(_str(('g' < 'c')), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1135
        Output << "Character50:  " << _format(_str(('f' > 'e')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1136
        Output << "Character61:  " << _format(_str(('f' > 'g')), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1137
        Output << "Character62:  " << _format(_str(('h' != 'l')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1138
        Output << "Character63:  " << _format(_str(('i' != 'i')), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1139
        Output << "Character64:  " << _format(_str(('v' <= 'y')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1140
        Output << "Character65:  " << _format(_str(('y' <= 'y')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1141
        Output << "Character66:  " << _format(_str(('z' <= 'y')), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1142
        Output << "Character67:  " << _format(_str(('l' >= 'b')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1143
        Output << "Character68:  " << _format(_str(('l' >= 'l')), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1144
        Output << "Character69:  " << _format(_str(('l' >= 'm')), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1145
        Output << "Character70:  " << _format(_str(_strcmpEQ<7>("finnork", "finnork")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1146
        Output << "Character71:  " << _format(_str(_strcmpEQ<7>("finoork", "finnork")), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1148
        Output << "Character72:  " << _format(_str(_strcmpLT<5>("oliab", "olibb")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1149
        Output << "Character73:  " << _format(_str(_strcmpLT<5>("olibb", "oliab")), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1150
        Output << "Character74:  " << _format(_str(_strcmpGT<5>("olibb", "oliab")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1151
        Output << "Character75:  " << _format(_str(_strcmpGT<5>("oliab", "olibb")), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1152
        Output << "Character76:  " << _format(_str(_strcmpNE<5>("fark ", "farks")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1153
        Output << "Character77:  " << _format(_str(_strcmpNE<5>("farks", "farks")), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1154
        Output << "Character78:  " << _format(_str(_strcmpLE<5>("farka", "farkz")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1155
        Output << "Character79:  " << _format(_str(_strcmpLE<5>("farks", "farks")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1156
        Output << "Character80:  " << _format(_str(_strcmpLE<5>("farkz", "farks")), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1157
        Output << "Character81:  " << _format(_str(_strcmpGE<6>("topnat", "topcat")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1158
        Output << "Character82:  " << _format(_str(_strcmpGE<6>("topcat", "topcat")), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1159
        Output << "Character83:  " << _format(_str(_strcmpGE<6>("topcat", "topzat")), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1160
        Output << "Character84:  " << C_scst << " s/b this is a string" << _WRITELN;
        
        #line 1161
        Output << "Character85:  " << C_ccst << " s/b v" << _WRITELN;
        
        #line 1162
        Output << "Character86:  " << _WRITELN;
        
        #line 1163
        _FOR_DOWNTO(i, 15, 1)
        {
            #line 1163
            Output << _format("hello, world", i, 0) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 1164
        Output << "Character86:  s/b:" << _WRITELN;
        
        #line 1165
        Output << "   hello, world" << _WRITELN;
        
        #line 1166
        Output << "  hello, world" << _WRITELN;
        
        #line 1167
        Output << " hello, world " << _WRITELN;
        
        #line 1168
        Output << "hello, world" << _WRITELN;
        
        #line 1169
        Output << "hello, worl" << _WRITELN;
        
        #line 1170
        Output << "hello, wor" << _WRITELN;
        
        #line 1171
        Output << "hello, wo" << _WRITELN;
        
        #line 1172
        Output << "hello, w" << _WRITELN;
        
        #line 1173
        Output << "hello, " << _WRITELN;
        
        #line 1174
        Output << "hello," << _WRITELN;
        
        #line 1175
        Output << "hello" << _WRITELN;
        
        #line 1176
        Output << "hell" << _WRITELN;
        
        #line 1177
        Output << "hel" << _WRITELN;
        
        #line 1178
        Output << "he" << _WRITELN;
        
        #line 1179
        Output << 'h' << _WRITELN;
        
        #line 1187
        Output << _WRITELN;
        
        #line 1188
        Output << "******************* Booleans *******************" << _WRITELN;
        
        #line 1189
        Output << _WRITELN;
        
        #line 1192
        Ba = C_true;
        
        #line 1192
        Bb = C_false;
        
        #line 1192
        Bc = C_true;
        
        #line 1193
        Output << "Boolean1:   " << _format(_str(Ba), 5, 0) << ' ' << _format(_str(Bb), 5, 0) << " s/b true false" << _WRITELN;
        
        #line 1194
        Output << "Boolean2:   " << _format(_str(_succ(Bb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1195
        Output << "Boolean3:   " << _format(_str(_pred(Ba)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1196
        Output << "Boolean4:   " << _format(_ord(Bb), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 1197
        Output << "Boolean5:   " << _format(_ord(Ba), 1, 0) << " s/b 1" << _WRITELN;
        
        #line 1198
        Output << "Boolean6:   " << _format(_str((Ba == Bc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1199
        Output << "Boolean7:   " << _format(_str((Bb == Bb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1200
        Output << "Boolean8:   " << _format(_str((Ba == Bb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1201
        Output << "Boolean9:   " << _format(_str((Bb < Ba)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1202
        Output << "Boolean10:  " << _format(_str((Ba < Bb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1203
        Output << "Boolean11:  " << _format(_str((Ba > Bb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1204
        Output << "Boolean12:  " << _format(_str((Bb > Ba)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1205
        Output << "Boolean13:  " << _format(_str((Ba != Bb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1206
        Output << "Boolean14:  " << _format(_str((Ba != Bc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1207
        Output << "Boolean15:  " << _format(_str((Bb <= Ba)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1208
        Output << "Boolean16:  " << _format(_str((Ba <= Bc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1209
        Output << "Boolean17:  " << _format(_str((Ba <= Bb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1210
        Output << "Boolean18:  " << _format(_str((Ba >= Bb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1211
        Output << "Boolean19:  " << _format(_str((Bb >= Bb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1212
        Output << "Boolean20:  " << _format(_str((Bb >= Ba)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1213
        Output << "Boolean21:  ";
        
        #line 1214
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1214
            Output << _format(_str(Ba), 5, 0) << ' ';
        }
        _FOR_END(Ba)
        
        #line 1215
        Output << "s/b false true" << _WRITELN;
        
        #line 1216
        Output << "Boolean22:  ";
        
        #line 1217
        _FOR_DOWNTO(Bb, C_true, C_false)
        {
            #line 1217
            Output << _format(_str(Bb), 5, 0) << ' ';
        }
        _FOR_END(Bb)
        
        #line 1218
        Output << "s/b true false" << _WRITELN;
        
        #line 1219
        Output << "Boolean23:  ";
        
        #line 1220
        Ba = (1 > 0);
        
        #line 1220
        Output << _format(_str(Ba), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1221
        Output << "Boolean24:  ";
        
        #line 1222
        Ba = (1 < 0);
        
        #line 1222
        Output << _format(_str(Ba), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1225
        Output << "Boolean25:  " << _format(_str(C_true), 5, 0) << ' ' << _format(_str(C_false), 5, 0) << " s/b true false" << _WRITELN;
        
        #line 1226
        Output << "Boolean26:  " << _format(_str(_succ(C_false)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1227
        Output << "Boolean27:  " << _format(_str(_pred(C_true)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1228
        Output << "Boolean28:  " << _format(_ord(C_false), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 1229
        Output << "Boolean29:  " << _format(_ord(C_true), 1, 0) << " s/b 1" << _WRITELN;
        
        #line 1230
        Output << "Boolean30:  " << _format(_str((C_true == C_true)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1231
        Output << "Boolean31:  " << _format(_str((C_false == C_false)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1232
        Output << "Boolean32:  " << _format(_str((C_true == C_false)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1233
        Output << "Boolean33:  " << _format(_str((C_false < C_true)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1234
        Output << "Boolean34:  " << _format(_str((C_true < C_false)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1235
        Output << "Boolean35:  " << _format(_str((C_true > C_false)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1236
        Output << "Boolean36:  " << _format(_str((C_false > C_true)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1237
        Output << "Boolean37:  " << _format(_str((C_true != C_false)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1238
        Output << "Boolean38:  " << _format(_str((C_true != C_true)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1239
        Output << "Boolean39:  " << _format(_str((C_false <= C_true)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1240
        Output << "Boolean40:  " << _format(_str((C_true <= C_true)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1241
        Output << "Boolean41:  " << _format(_str((C_true <= C_false)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1242
        Output << "Boolean42:  " << _format(_str((C_true >= C_false)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1243
        Output << "Boolean43:  " << _format(_str((C_false >= C_false)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1244
        Output << "Boolean44:  " << _format(_str((C_false >= C_true)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1245
        Output << "Boolean45:" << _WRITELN;
        
        #line 1246
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 1246
            Output << _format(_str(C_false), i, 0) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 1247
        Output << "Boolean45: s/b:" << _WRITELN;
        
        #line 1248
        Output << "     false" << _WRITELN;
        
        #line 1249
        Output << "    false" << _WRITELN;
        
        #line 1250
        Output << "   false" << _WRITELN;
        
        #line 1251
        Output << "  false" << _WRITELN;
        
        #line 1252
        Output << " false" << _WRITELN;
        
        #line 1253
        Output << "false" << _WRITELN;
        
        #line 1254
        Output << "fals" << _WRITELN;
        
        #line 1255
        Output << "fal" << _WRITELN;
        
        #line 1256
        Output << "fa" << _WRITELN;
        
        #line 1257
        Output << 'f' << _WRITELN;
        
        #line 1258
        Output << "Boolean46:" << _WRITELN;
        
        #line 1259
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 1259
            Output << _format(_str(C_true), i, 0) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 1260
        Output << "Boolean46: s/b:" << _WRITELN;
        
        #line 1261
        Output << "      true" << _WRITELN;
        
        #line 1262
        Output << "     true" << _WRITELN;
        
        #line 1263
        Output << "    true" << _WRITELN;
        
        #line 1264
        Output << "   true" << _WRITELN;
        
        #line 1265
        Output << "  true" << _WRITELN;
        
        #line 1266
        Output << " true" << _WRITELN;
        
        #line 1267
        Output << "true" << _WRITELN;
        
        #line 1268
        Output << "tru" << _WRITELN;
        
        #line 1269
        Output << "tr" << _WRITELN;
        
        #line 1270
        Output << 't' << _WRITELN;
        
        #line 1279
        Output << _WRITELN;
        
        #line 1280
        Output << "******************* Scalar *******************" << _WRITELN;
        
        #line 1281
        Output << _WRITELN;
        
        #line 1284
        Sva = C_wed;
        
        #line 1284
        Svb = C_mon;
        
        #line 1284
        Svc = C_wed;
        
        #line 1285
        Output << "Scalar1:   " << _format(_str((_succ(Svb) == C_tue)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1286
        Output << "Scalar2:   " << _format(_str((_pred(Sva) == C_tue)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1287
        Output << "Scalar3:   " << _format(_ord(Svb), 1, 0) << " s/b 0" << _WRITELN;
        
        #line 1288
        Output << "Scalar4:   " << _format(_ord(Sva), 1, 0) << " s/b 2" << _WRITELN;
        
        #line 1289
        Output << "Scalar5:   " << _format(_str((Sva == Svc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1290
        Output << "Scalar6:   " << _format(_str((Svb == Svb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1291
        Output << "Scalar7:   " << _format(_str((Sva == Svb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1292
        Output << "Scalar8:   " << _format(_str((Svb < Sva)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1293
        Output << "Scalar9:   " << _format(_str((Sva < Svb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1294
        Output << "Scalar10:  " << _format(_str((Sva > Svb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1295
        Output << "Scalar11:  " << _format(_str((Svb > Sva)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1296
        Output << "Scalar12:  " << _format(_str((Sva != Svb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1297
        Output << "Scalar13:  " << _format(_str((Sva != Svc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1298
        Output << "Scalar14:  " << _format(_str((Svb <= Sva)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1299
        Output << "Scalar15:  " << _format(_str((Sva <= Svc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1300
        Output << "Scalar16:  " << _format(_str((Sva <= Svb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1301
        Output << "Scalar17:  " << _format(_str((Sva >= Svb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1302
        Output << "Scalar18:  " << _format(_str((Svb >= Svb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1303
        Output << "Scalar19:  " << _format(_str((Svb >= Sva)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1304
        Output << "Scalar20:  ";
        
        #line 1305
        _FOR_TO(Sva, C_mon, C_sun)
        {
            #line 1305
            Output << _format(_ord(Sva), 1, 0) << ' ';
        }
        _FOR_END(Sva)
        
        #line 1306
        Output << "s/b 0 1 2 3 4 5 6" << _WRITELN;
        
        #line 1307
        Output << "Scalar21:  ";
        
        #line 1308
        _FOR_DOWNTO(Svb, C_sun, C_mon)
        {
            #line 1308
            Output << _format(_ord(Svb), 1, 0) << ' ';
        }
        _FOR_END(Svb)
        
        #line 1309
        Output << "s/b 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 1312
        Output << "Scalar1:   " << _format(_str((_succ(C_mon) == C_tue)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1313
        Output << "Scalar2:   " << _format(_str((_pred(C_fri) == C_thur)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1314
        Output << "Scalar3:   " << _format(_ord(C_wed), 1, 0) << " s/b 2" << _WRITELN;
        
        #line 1315
        Output << "Scalar4:   " << _format(_ord(C_sun), 1, 0) << " s/b 6" << _WRITELN;
        
        #line 1316
        Output << "Scalar5:   " << _format(_str((C_thur == C_thur)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1317
        Output << "Scalar6:   " << _format(_str((C_fri == C_fri)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1318
        Output << "Scalar7:   " << _format(_str((C_tue == C_wed)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1319
        Output << "Scalar8:   " << _format(_str((C_mon < C_wed)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1320
        Output << "Scalar9:   " << _format(_str((C_fri < C_fri)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1321
        Output << "Scalar10:  " << _format(_str((C_sun > C_sat)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1322
        Output << "Scalar11:  " << _format(_str((C_fri > C_sun)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1323
        Output << "Scalar12:  " << _format(_str((C_thur != C_tue)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1324
        Output << "Scalar13:  " << _format(_str((C_wed != C_wed)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1325
        Output << "Scalar14:  " << _format(_str((C_mon <= C_fri)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1326
        Output << "Scalar15:  " << _format(_str((C_fri <= C_fri)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1327
        Output << "Scalar16:  " << _format(_str((C_sat <= C_fri)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1328
        Output << "Scalar17:  " << _format(_str((C_fri >= C_tue)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1329
        Output << "Scalar18:  " << _format(_str((C_tue >= C_tue)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1330
        Output << "Scalar19:  " << _format(_str((C_tue >= C_sat)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1338
        Output << _WRITELN;
        
        #line 1339
        Output << "******************* Reals ******************************" << _WRITELN;
        
        #line 1340
        Output << _WRITELN;
        
        #line 1343
        Output << "Real1:   " << _format(1.55400, 15, 0) << " s/b  1.554000e+00" << _WRITELN;
        
        #line 1344
        Output << "Real2:   " << _format(0.00334000, 15, 0) << " s/b  3.340000e-03" << _WRITELN;
        
        #line 1345
        Output << "Real3:   " << _format(3.34000e-24, 15, 0) << " s/b  3.34000e-24" << _WRITELN;
        
        #line 1346
        Output << "Real4:   " << _format(4.00000e-45, 15, 0) << " s/b  4.000000e-45" << _WRITELN;
        
        #line 1347
        Output << "Real5:   " << _format((-5.56500), 15, 0) << " s/b -5.565000e+03" << _WRITELN;
        
        #line 1348
        Output << "Real6:   " << _format((-0.00944000), 15, 0) << " s/b -9.440000e-03" << _WRITELN;
        
        #line 1349
        Output << "Real7:   " << _format((-6.36400e+29), 15, 0) << " s/b -6.364000e+29" << _WRITELN;
        
        #line 1350
        Output << "Real8:   " << _format((-2.00000e-14), 15, 0) << " s/b -2.000000e-14" << _WRITELN;
        
        #line 1351
        Output << "Real9:" << _WRITELN;
        
        #line 1352
        Output << "         11111111112222222222333333333344444444445" << _WRITELN;
        
        #line 1353
        Output << "12345678901234567890123456789012345678901234567890" << _WRITELN;
        
        #line 1354
        _FOR_TO(i, 1, 20)
        {
            #line 1354
            Output << _format(1.23457, i, 0) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 1355
        Output << "s/b (note precision dropoff at right):" << _WRITELN;
        
        #line 1356
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1357
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1358
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1359
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1360
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1361
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1362
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1363
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1364
        Output << " 1.2e+000" << _WRITELN;
        
        #line 1365
        Output << " 1.23e+000" << _WRITELN;
        
        #line 1366
        Output << " 1.234e+000" << _WRITELN;
        
        #line 1367
        Output << " 1.2345e+000" << _WRITELN;
        
        #line 1368
        Output << " 1.23456e+000" << _WRITELN;
        
        #line 1369
        Output << " 1.234567e+000" << _WRITELN;
        
        #line 1370
        Output << " 1.2345678e+000" << _WRITELN;
        
        #line 1371
        Output << " 1.23456789e+000" << _WRITELN;
        
        #line 1372
        Output << " 1.234567890e+000" << _WRITELN;
        
        #line 1373
        Output << " 1.2345678901e+000" << _WRITELN;
        
        #line 1374
        Output << " 1.23456789012e+000" << _WRITELN;
        
        #line 1375
        Output << " 1.234567890123e+000" << _WRITELN;
        
        #line 1376
        Output << "Real10:" << _WRITELN;
        
        #line 1377
        Output << "         11111111112222222222333333333344444444445" << _WRITELN;
        
        #line 1378
        Output << "12345678901234567890123456789012345678901234567890" << _WRITELN;
        
        #line 1379
        _FOR_TO(i, 1, 20)
        {
            #line 1379
            Output << _format((i + 0.234568), 1, i) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 1380
        Output << "s/b (note precision dropoff at right):" << _WRITELN;
        
        #line 1381
        Output << "1.2" << _WRITELN;
        
        #line 1382
        Output << "2.23" << _WRITELN;
        
        #line 1383
        Output << "3.234" << _WRITELN;
        
        #line 1384
        Output << "4.2345" << _WRITELN;
        
        #line 1385
        Output << "5.23456" << _WRITELN;
        
        #line 1386
        Output << "6.234567" << _WRITELN;
        
        #line 1387
        Output << "7.2345678" << _WRITELN;
        
        #line 1388
        Output << "8.23456789" << _WRITELN;
        
        #line 1389
        Output << "9.234567890" << _WRITELN;
        
        #line 1390
        Output << "10.2345678901" << _WRITELN;
        
        #line 1391
        Output << "11.23456789012" << _WRITELN;
        
        #line 1392
        Output << "12.234567890123" << _WRITELN;
        
        #line 1393
        Output << "13.2345678901234" << _WRITELN;
        
        #line 1394
        Output << "14.23456789012345" << _WRITELN;
        
        #line 1395
        Output << "15.234567890123456" << _WRITELN;
        
        #line 1396
        Output << "16.2345678901234567" << _WRITELN;
        
        #line 1397
        Output << "17.23456789012345678" << _WRITELN;
        
        #line 1398
        Output << "18.234567890123456789" << _WRITELN;
        
        #line 1399
        Output << "19.2345678901234567890" << _WRITELN;
        
        #line 1400
        Output << "20.23456789012345678901" << _WRITELN;
        
        #line 1403
        Ra = 435.230;
        
        #line 1404
        Rb = 983.670;
        
        #line 1405
        Rc = Rb;
        
        #line 1406
        Rd = 0.344300;
        
        #line 1407
        Output << "Real11:  " << _format((Ra + Rb), 15, 0) << " s/b  1.418900e+03" << _WRITELN;
        
        #line 1408
        Output << "Rea112:  " << _format((Rb - Ra), 15, 0) << " s/b  5.484399e+02" << _WRITELN;
        
        #line 1409
        Output << "Real13:  " << _format((Ra * Rb), 15, 0) << " s/b  4.281227e+05" << _WRITELN;
        
        #line 1410
        Output << "Real14:  " << _format(((double)Rb / Ra), 15, 0) << " s/b  2.260115e+00" << _WRITELN;
        
        #line 1411
        Output << "Real15:  " << _format(_str((Rc == Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1412
        Output << "Real16:  " << _format(_str((Ra == Rb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1413
        Output << "Real17:  " << _format(_str((Ra < Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1414
        Output << "Real18:  " << _format(_str((Rb < Ra)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1415
        Output << "Real19:  " << _format(_str((Rb > Ra)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1416
        Output << "Real20:  " << _format(_str((Ra > Rb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1417
        Output << "Real21:  " << _format(_str((Ra != Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1418
        Output << "Real22:  " << _format(_str((Rb != Rc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1419
        Output << "Real23:  " << _format(_str((Ra <= Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1420
        Output << "Real24:  " << _format(_str((Rc <= Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1421
        Output << "Real25:  " << _format(_str((Rb <= Ra)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1422
        Output << "Real26:  " << _format(_str((Rb >= Ra)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1423
        Output << "Real27:  " << _format(_str((Rb >= Rc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1424
        Output << "Real28:  " << _format(_str((Ra >= Rb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1425
        Output << "Real29:  " << _format(_abs(Ra), 15, 0) << " s/b  4.35230e+02" << _WRITELN;
        
        #line 1426
        Output << "Real30:  " << _format(_sqr(Ra), 15, 0) << " s/b  1.89425e+05" << _WRITELN;
        
        #line 1427
        Output << "Real31:  " << _format(_sqrt(Rb), 15, 0) << " s/b  3.13635e+01" << _WRITELN;
        
        #line 1428
        Output << "Real32:  " << _format(_sin(Rb), 15, 0) << " s/b -3.44290e-01" << _WRITELN;
        
        #line 1429
        Output << "Real33:  " << _format(_arctan(Ra), 15, 0) << " s/b  1.56850e+00" << _WRITELN;
        
        #line 1430
        Output << "Real34:  " << _format(_exp(Rd), 15, 0) << " s/b  1.41100e+00" << _WRITELN;
        
        #line 1431
        Output << "Real35:  " << _format(_ln(Ra), 15, 0) << " s/b  6.07587e+00" << _WRITELN;
        
        #line 1432
        Output << "Real36:  " << _format(_trunc(Ra), 1, 0) << " s/b 435" << _WRITELN;
        
        #line 1433
        Output << "Real37:  " << _format(_round(Rb), 1, 0) << " s/b 984" << _WRITELN;
        
        #line 1434
        Output << "Real38:  " << _format(_round(Ra), 1, 0) << " s/b 435" << _WRITELN;
        
        #line 1437
        Output << "Real39:  " << _format((344.939 + 933.113), 15, 0) << " s/b  1.278052e+03" << _WRITELN;
        
        #line 1438
        Output << "Real40:  " << _format((883.885 - 644.939), 15, 0) << " s/b  2.389460e+02" << _WRITELN;
        
        #line 1439
        Output << "Real41:  " << _format((754.740 * 138.750), 15, 0) << " s/b  1.047202e+05" << _WRITELN;
        
        #line 1440
        Output << "Real42:  " << _format(((double)634.300 / 87374.0), 15, 0) << " s/b  7.259598e-03" << _WRITELN;
        
        #line 1441
        Output << "Real43:  " << _format(_str((77.4400 == 77.4400)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1442
        Output << "Real44:  " << _format(_str((733.900 == 959.200)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1443
        Output << "Real45:  " << _format(_str((883.220 < 8383.33)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1444
        Output << "Real46:  " << _format(_str((475.322 < 234.930)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1445
        Output << "Real47:  " << _format(_str((7374.30 > 6442.34)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1446
        Output << "Real48:  " << _format(_str((985.562 > 1001.95)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1447
        Output << "Real49:  " << _format(_str((30.1100 != 938.440)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1448
        Output << "Real50:  " << _format(_str((1.23300 != 1.23300)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1449
        Output << "Real51:  " << _format(_str((8484.00 <= 9344.00)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1450
        Output << "Real52:  " << _format(_str((9.11000 <= 9.11000)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1451
        Output << "Real53:  " << _format(_str((93.3230 <= 90.3230)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1452
        Output << "Real54:  " << _format(_str((6543.44 >= 5883.33)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1453
        Output << "Real55:  " << _format(_str((3247.03 >= 3247.03)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1454
        Output << "Real56:  " << _format(_str((28343.2 >= 30044.5)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1455
        Output << "Real57:  " << _format(_abs(34.9300), 15, 0) << " s/b  3.493000e+01" << _WRITELN;
        
        #line 1456
        Output << "Real58:  " << _format(_sqr(2.34000), 15, 0) << " s/b  5.475600e+00" << _WRITELN;
        
        #line 1457
        Output << "Real59:  " << _format(_sqrt(9454.32), 15, 0) << " s/b  9.723333e+01" << _WRITELN;
        
        #line 1458
        Output << "Real60:  " << _format(_sin(34.2200), 15, 0) << " s/b  3.311461e-01" << _WRITELN;
        
        #line 1459
        Output << "Real61:  " << _format(_arctan(343.200), 15, 0) << " s/b  1.567883e+00" << _WRITELN;
        
        #line 1460
        Output << "Real62:  " << _format(_exp(0.332000), 15, 0) << " s/b  1.393753e+00" << _WRITELN;
        
        #line 1461
        Output << "Real63:  " << _format(_ln(83.2200), 15, 0) << " s/b  4.421488e+00" << _WRITELN;
        
        #line 1462
        Output << "Real64:  " << _format(_trunc(24.3440), 1, 0) << " s/b 24" << _WRITELN;
        
        #line 1463
        Output << "Real65:  " << _format(_round(74.5600), 1, 0) << " s/b 75" << _WRITELN;
        
        #line 1464
        Output << "Real66:  " << _format(_round(83.2400), 1, 0) << " s/b 83" << _WRITELN;
        
        #line 1465
        Output << "Real67:  " << _format(C_rcnst, 15, 0) << " s/b  4.333000e+01" << _WRITELN;
        
        #line 1468
        Ra = (-734.200);
        
        #line 1469
        Rb = (-7634.52);
        
        #line 1470
        Rc = Ra;
        
        #line 1471
        Rd = 1034.54;
        
        #line 1472
        Re = (-0.384830);
        
        #line 1473
        Output << "Real68:  " << _format((Ra + Rd), 15, 0) << " s/b  3.003400e+02" << _WRITELN;
        
        #line 1474
        Output << "Real69:  " << _format((Rd + Ra), 15, 0) << " s/b  3.003400e+02" << _WRITELN;
        
        #line 1475
        Output << "Real70:  " << _format((Rb + Rd), 15, 0) << " s/b -6.599980e+03" << _WRITELN;
        
        #line 1476
        Output << "Real71:  " << _format((Ra + Rb), 15, 0) << " s/b -8.368720e+03" << _WRITELN;
        
        #line 1477
        Output << "Real72:  " << _format((Rd - Ra), 15, 0) << " s/b  1.768740e+03" << _WRITELN;
        
        #line 1478
        Output << "Real73:  " << _format((Rb - Rd), 15, 0) << " s/b -8.669061e+03" << _WRITELN;
        
        #line 1479
        Output << "Real74:  " << _format((Rb - Ra), 15, 0) << " s/b -6.900320e+03" << _WRITELN;
        
        #line 1480
        Output << "Real75:  " << _format((Rd * Ra), 15, 0) << " s/b -7.595593e+05" << _WRITELN;
        
        #line 1481
        Output << "Real76:  " << _format((Ra * Rd), 15, 0) << " s/b -7.595593e+05" << _WRITELN;
        
        #line 1482
        Output << "Real77:  " << _format((Ra * Rb), 15, 0) << " s/b  5.605265e+06" << _WRITELN;
        
        #line 1483
        Output << "Real78:  " << _format(((double)Rd / Ra), 15, 0) << " s/b -1.409071e+00" << _WRITELN;
        
        #line 1484
        Output << "Real79:  " << _format(((double)Rb / Rd), 15, 0) << " s/b -7.379627e+00" << _WRITELN;
        
        #line 1485
        Output << "Real80:  " << _format(((double)Rb / Ra), 15, 0) << " s/b  1.039842e+01" << _WRITELN;
        
        #line 1486
        Output << "Real81:  " << _format(_str((Ra == Rc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1487
        Output << "Real82:  " << _format(_str((Ra == Rb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1488
        Output << "Real83:  " << _format(_str((Ra != Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1489
        Output << "Real84:  " << _format(_str((Ra != Rc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1490
        Output << "Real85:  " << _format(_str((Ra < Rd)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1491
        Output << "Real86:  " << _format(_str((Rb < Ra)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1492
        Output << "Real87:  " << _format(_str((Rd < Ra)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1493
        Output << "Real88:  " << _format(_str((Ra < Rb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1494
        Output << "Real89:  " << _format(_str((Rd > Ra)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1495
        Output << "Real90:  " << _format(_str((Ra > Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1496
        Output << "Real91:  " << _format(_str((Ra > Rd)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1497
        Output << "Real92:  " << _format(_str((Rb > Ra)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1498
        Output << "Real93:  " << _format(_str((Ra <= Rd)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1499
        Output << "Real94:  " << _format(_str((Rb <= Ra)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1500
        Output << "Real95:  " << _format(_str((Ra <= Rc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1501
        Output << "Real96:  " << _format(_str((Rd <= Ra)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1502
        Output << "Real97:  " << _format(_str((Ra <= Rb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1503
        Output << "Real98:  " << _format(_str((Rd >= Ra)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1504
        Output << "Real99:  " << _format(_str((Ra >= Rb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1505
        Output << "Real100: " << _format(_str((Ra >= Rc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1506
        Output << "Real101: " << _format(_str((Ra >= Rd)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1507
        Output << "Real102: " << _format(_str((Rb >= Ra)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1508
        Output << "Real103: " << _format(_abs(Ra), 15, 0) << " s/b  7.34200e+02" << _WRITELN;
        
        #line 1509
        Output << "Real104: " << _format(_sqr(Ra), 15, 0) << " s/b  5.39050e+05" << _WRITELN;
        
        #line 1510
        Output << "Real105: " << _format(_sin(Rb), 15, 0) << " s/b -4.34850e-01" << _WRITELN;
        
        #line 1511
        Output << "Real106: " << _format(_arctan(Ra), 15, 0) << " s/b -1.56943e+00" << _WRITELN;
        
        #line 1512
        Output << "Real107: " << _format(_exp(Re), 15, 0) << " s/b  6.80566e-01" << _WRITELN;
        
        #line 1513
        Output << "Real108: " << _format(_trunc(Ra), 15, 0) << " s/b -734" << _WRITELN;
        
        #line 1514
        Output << "Real109: " << _format(_round(Rb), 15, 0) << " s/b -7635" << _WRITELN;
        
        #line 1515
        Output << "Real110: " << _format(_round(Ra), 15, 0) << " s/b -734" << _WRITELN;
        
        #line 1518
        Output << "Real111: " << _format((45.9340 + (-30.8340)), 15, 0) << " s/b  1.510000e+01" << _WRITELN;
        
        #line 1519
        Output << "Real112: " << _format(((-25.7370) + 70.8700), 15, 0) << " s/b  4.513300e+01" << _WRITELN;
        
        #line 1520
        Output << "Real113: " << _format(((-62.6300) + 23.9900), 15, 0) << " s/b -3.864000e+01" << _WRITELN;
        
        #line 1521
        Output << "Real114: " << _format(((-20.7330) + (-15.8480)), 15, 0) << " s/b -3.658100e+01" << _WRITELN;
        
        #line 1522
        Output << "Real115: " << _format((20.7740 - (-14.7740)), 15, 0) << " s/b  3.554800e+01" << _WRITELN;
        
        #line 1523
        Output << "Real116: " << _format(((-34.5230) - 14.8754), 15, 0) << " s/b -4.939840e+01" << _WRITELN;
        
        #line 1524
        Output << "Real117: " << _format(((-56.6640) - (-12.6630)), 15, 0) << " s/b -4.400100e+01" << _WRITELN;
        
        #line 1525
        Output << "Real118: " << _format((5.66300 * (-4.66400)), 15, 0) << " s/b -2.641223e+01" << _WRITELN;
        
        #line 1526
        Output << "Real119: " << _format(((-18.6200) * 7.99700), 15, 0) << " s/b -1.489041e+02" << _WRITELN;
        
        #line 1527
        Output << "Real120: " << _format(((-40.5520) * (-13.7740)), 15, 0) << " s/b  5.585632e+02" << _WRITELN;
        
        #line 1528
        Output << "Real121: " << _format(((double)30.6632 / (-5.87400)), 15, 0) << " s/b -5.220157e+00" << _WRITELN;
        
        #line 1529
        Output << "Real122: " << _format(((double)(-50.6360) / 2.85730), 15, 0) << " s/b -1.772163e+01" << _WRITELN;
        
        #line 1530
        Output << "Real123: " << _format(((double)(-20.7631) / (-4.85734)), 15, 0) << " s/b  4.274582e+00" << _WRITELN;
        
        #line 1531
        Output << "Real124: " << _format(_str(((-5.77500) == (-5.77500))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1532
        Output << "Real125: " << _format(_str(((-5.63640) == 5.85750)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1533
        Output << "Real126: " << _format(_str(((-21.6385) != (-40.7640))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1534
        Output << "Real127: " << _format(_str(((-21.7720) != (-21.7720))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1535
        Output << "Real128: " << _format(_str(((-3.51200) < 5.84670)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1536
        Output << "Real129: " << _format(_str(((-32.6440) < (-20.9074))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1537
        Output << "Real130: " << _format(_str((20.7630 < (-20.7430))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1538
        Output << "Real131: " << _format(_str(((-15.6630) < (-40.7840))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1539
        Output << "Real132: " << _format(_str((70.7660 > (-4.97400))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1540
        Output << "Real133: " << _format(_str(((-23.6532) > (-34.7740))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1541
        Output << "Real134: " << _format(_str(((-5.77300) > 5.98740)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1542
        Output << "Real135: " << _format(_str(((-60.6630) > (-59.7800))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1543
        Output << "Real136: " << _format(_str(((-12.5420) <= 4.08480)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1544
        Output << "Real137: " << _format(_str(((-14.8763) <= (-5.08470))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1545
        Output << "Real138: " << _format(_str(((-7.83730) <= (-7.83730))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1546
        Output << "Real139: " << _format(_str((5.45640 <= (-5.45640))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1547
        Output << "Real140: " << _format(_str(((-10.7263) <= (-20.9840))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1548
        Output << "Real141: " << _format(_str((9.83400 >= (-3.93830))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1549
        Output << "Real142: " << _format(_str(((-4.56200) >= (-10.7400))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1550
        Output << "Real143: " << _format(_str(((-13.6300) >= (-13.6300))), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1551
        Output << "Real144: " << _format(_str(((-6.74000) >= 6.74000)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1552
        Output << "Real145: " << _format(_str(((-20.7623) >= (-10.5740))), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1553
        Output << "Real146: " << _format(_abs((-6.82300)), 15, 0) << " s/b  6.823000e+00" << _WRITELN;
        
        #line 1554
        Output << "Real147  " << _format(_sqr((-348.220)), 15, 0) << " s/b  1.212572e+05" << _WRITELN;
        
        #line 1555
        Output << "Real148: " << _format(_sin((-733.220)), 15, 0) << " s/b  9.421146e-01" << _WRITELN;
        
        #line 1556
        Output << "Real149: " << _format(_arctan((-8387.22)), 15, 0) << " s/b -1.570677e+00" << _WRITELN;
        
        #line 1557
        Output << "Real150: " << _format(_exp((-0.874300)), 15, 0) << " s/b  4.171539e-01" << _WRITELN;
        
        #line 1558
        Output << "Real151: " << _format(_trunc((-33.4220)), 1, 0) << " s/b -33" << _WRITELN;
        
        #line 1559
        Output << "Real152: " << _format(_round((-843.220)), 1, 0) << " s/b -843" << _WRITELN;
        
        #line 1560
        Output << "Real153: " << _format(_round((-6243.76)), 1, 0) << " s/b -6244" << _WRITELN;
        
        #line 1561
        Output << "Real154: " << _format(C_rscst, 15, 0) << " s/b -8.422000e+01" << _WRITELN;
        
        #line 1562
        Output << "Real155: " << _format((-C_rscst), 15, 0) << " s/b  8.422000e+01" << _WRITELN;
        
        #line 1563
        Output << "Real156:  " << _format(C_rscst2, 15, 0) << " s/b -4.333000e+01" << _WRITELN;
        
        #line 1564
        Output << "Real157: " << _format(C_rscst3, 15, 0) << " s/b  8.422000e+01" << _WRITELN;
        
        #line 1572
        Output << _WRITELN;
        
        #line 1573
        Output << "******************* sets ******************************" << _WRITELN;
        
        #line 1574
        Output << _WRITELN;
        
        #line 1577
        Output << "Set1:  ";
        
        #line 1578
        Sta = _setLiteral1;
        
        #line 1579
        _FOR_TO(i, 1, 10)
        {
            #line 1579
            if(_odd(i))
            {
                #line 1579
                {
                    _T_GenericSet _setLiteral2;
                    _setLiteral2.set(i);
                    _setLiteral2.set((i + 10));
                    
                    Sta = (Sta + _setLiteral2);
                }
            }
        }
        _FOR_END(i)
        
        #line 1580
        _FOR_TO(i, 1, 20)
        {
            #line 1580
            if((Sta & i))
            {
                #line 1580
                Output << '1';
            }
            else
            {
                #line 1580
                Output << '0';
            }
        }
        _FOR_END(i)
        
        #line 1581
        Output << " s/b ";
        
        #line 1582
        Output << "10101010101010101010" << _WRITELN;
        
        #line 1583
        Output << "Set2:  ";
        
        #line 1584
        Sta = _setLiteral3;
        
        #line 1585
        Stb = _setLiteral4;
        
        #line 1586
        _FOR_TO(i, 1, 10)
        {
            #line 1586
            if(((Sta + Stb) & i))
            {
                #line 1586
                Output << '1';
            }
            else
            {
                #line 1586
                Output << '0';
            }
        }
        _FOR_END(i)
        
        #line 1587
        Output << " s/b ";
        
        #line 1588
        Output << "1101110001" << _WRITELN;
        
        #line 1589
        Output << "Set3:  ";
        
        #line 1590
        Sta = _setLiteral5;
        
        #line 1591
        Stb = _setLiteral6;
        
        #line 1592
        _FOR_TO(i, 1, 10)
        {
            #line 1592
            if(((Sta * Stb) & i))
            {
                #line 1592
                Output << '1';
            }
            else
            {
                #line 1592
                Output << '0';
            }
        }
        _FOR_END(i)
        
        #line 1593
        Output << " s/b ";
        
        #line 1594
        Output << "0100010000" << _WRITELN;
        
        #line 1595
        Output << "Set4:  ";
        
        #line 1596
        Sta = _setLiteral7;
        
        #line 1597
        Stb = _setLiteral8;
        
        #line 1598
        _FOR_TO(i, 1, 10)
        {
            #line 1598
            if(((Sta - Stb) & i))
            {
                #line 1598
                Output << '1';
            }
            else
            {
                #line 1598
                Output << '0';
            }
        }
        _FOR_END(i)
        
        #line 1599
        Output << " s/b ";
        
        #line 1600
        Output << "0100001000" << _WRITELN;
        
        #line 1601
        Sta = _setLiteral9;
        
        #line 1602
        Stb = _setLiteral10;
        
        #line 1603
        Stc = _setLiteral11;
        
        #line 1604
        Output << "Set5:  " << _format(_str((Sta == Stb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1605
        Output << "Set6:  " << _format(_str((Sta == Stc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1606
        Output << "Set7:  " << _format(_str((Sta != Stb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1607
        Output << "Set8:  " << _format(_str((Sta != Stc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1608
        Sta = _setLiteral12;
        
        #line 1609
        Stb = _setLiteral13;
        
        #line 1610
        Stc = _setLiteral14;
        
        #line 1611
        Std = _setLiteral15;
        
        #line 1612
        Output << "Set9:  " << _format(_str((Stb <= Sta)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1613
        Output << "Set10: " << _format(_str((Stb <= Std)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1614
        Output << "Set11: " << _format(_str((Stc <= Sta)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1615
        Output << "Set12: " << _format(_str((Sta >= Stb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1616
        Output << "Set13: " << _format(_str((Std >= Stb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1617
        Output << "Set14: " << _format(_str((Sta >= Stc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1618
        Output << "Set15: ";
        
        #line 1619
        i = 2;
        
        #line 1620
        x = 4;
        
        #line 1621
        {
            _T_GenericSet _setLiteral16;
            _setLiteral16.set(i);
            _setLiteral16.set(x);
            _setLiteral16.set((i + x));
            
            Sta = _setLiteral16;
        }
        
        #line 1622
        _FOR_TO(i, 1, 10)
        {
            #line 1622
            if((Sta & i))
            {
                #line 1622
                Output << '1';
            }
            else
            {
                #line 1622
                Output << '0';
            }
        }
        _FOR_END(i)
        
        #line 1623
        Output << " s/b ";
        
        #line 1624
        Output << "0101010000" << _WRITELN;
        
        #line 1626
        Ste = Std;
        
        #line 1627
        Stf = _setLiteral17;
        
        #line 1628
        Stg = Stf;
        
        #line 1631
        Output << "Set16: ";
        
        #line 1632
        Csta = _setLiteral18;
        
        #line 1633
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 1634
            if(_odd(_ord(Ci)))
            {
                #line 1634
                {
                    _T_GenericSet _setLiteral19;
                    _setLiteral19.set(Ci);
                    _setLiteral19.set(_chr((_ord(Ci) + 10)));
                    
                    Csta = (Csta + _setLiteral19);
                }
            }
        }
        _FOR_END(Ci)
        
        #line 1635
        _FOR_TO(Ci, 'a', 't')
        {
            #line 1635
            if((Csta & Ci))
            {
                #line 1635
                Output << Ci;
            }
            else
            {
                #line 1635
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 1636
        Output << " s/b ";
        
        #line 1637
        Output << "a_c_e_g_i_k_m_o_q_s_" << _WRITELN;
        
        #line 1638
        Output << "Set17: ";
        
        #line 1639
        Csta = _setLiteral20;
        
        #line 1640
        Cstb = _setLiteral21;
        
        #line 1641
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 1641
            if(((Csta + Cstb) & Ci))
            {
                #line 1641
                Output << Ci;
            }
            else
            {
                #line 1641
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 1642
        Output << " s/b ";
        
        #line 1643
        Output << "a_cd_fg___" << _WRITELN;
        
        #line 1644
        Output << "Set18: ";
        
        #line 1645
        Csta = _setLiteral22;
        
        #line 1646
        Cstb = _setLiteral23;
        
        #line 1647
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 1647
            if(((Csta * Cstb) & Ci))
            {
                #line 1647
                Output << Ci;
            }
            else
            {
                #line 1647
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 1648
        Output << " s/b ";
        
        #line 1649
        Output << "a______h__" << _WRITELN;
        
        #line 1650
        Output << "Set19: ";
        
        #line 1651
        Csta = _setLiteral24;
        
        #line 1652
        Cstb = _setLiteral25;
        
        #line 1653
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 1653
            if(((Csta - Cstb) & Ci))
            {
                #line 1653
                Output << Ci;
            }
            else
            {
                #line 1653
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 1654
        Output << " s/b ";
        
        #line 1655
        Output << "_b_______j" << _WRITELN;
        
        #line 1656
        Csta = _setLiteral26;
        
        #line 1657
        Cstb = _setLiteral27;
        
        #line 1658
        Cstc = _setLiteral28;
        
        #line 1659
        Output << "Set20: " << _format(_str((Csta == Cstb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1660
        Output << "Set21: " << _format(_str((Csta == Cstc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1661
        Output << "Set22: " << _format(_str((Csta != Cstb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1662
        Output << "Set23: " << _format(_str((Csta != Cstc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1663
        Csta = _setLiteral29;
        
        #line 1664
        Cstb = _setLiteral30;
        
        #line 1665
        Cstc = _setLiteral31;
        
        #line 1666
        Cstd = _setLiteral32;
        
        #line 1667
        Output << "Set24: " << _format(_str((Cstb <= Csta)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1668
        Output << "Set25: " << _format(_str((Cstb <= Cstd)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1669
        Output << "Set26: " << _format(_str((Cstc <= Csta)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1670
        Output << "Set27: " << _format(_str((Csta >= Cstb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1671
        Output << "Set28: " << _format(_str((Cstd >= Cstb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1672
        Output << "Set29: " << _format(_str((Csta >= Cstc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1673
        Output << "Set30: ";
        
        #line 1674
        Ci = 'a';
        
        #line 1675
        i = 4;
        
        #line 1676
        {
            _T_GenericSet _setLiteral33;
            _setLiteral33.set(Ci);
            _setLiteral33.set(_chr((_ord(Ci) + i)));
            
            Csta = _setLiteral33;
        }
        
        #line 1677
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 1677
            if((Csta & Ci))
            {
                #line 1677
                Output << Ci;
            }
            else
            {
                #line 1677
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 1678
        Output << " s/b ";
        
        #line 1679
        Output << "a___e_____" << _WRITELN;
        
        #line 1681
        Cste = Cstd;
        
        #line 1682
        Cstf = _setLiteral34;
        
        #line 1683
        Cstg = Cstf;
        
        #line 1686
        Output << "Set31: ";
        
        #line 1687
        Sena = _setLiteral35;
        
        #line 1688
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 1688
            if(_odd(_ord(Ei)))
            {
                #line 1688
                {
                    _T_GenericSet _setLiteral36;
                    _setLiteral36.set(Ei);
                    
                    Sena = (Sena + _setLiteral36);
                }
            }
        }
        _FOR_END(Ei)
        
        #line 1689
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 1689
            if((Sena & Ei))
            {
                #line 1689
                Output << '1';
            }
            else
            {
                #line 1689
                Output << '0';
            }
        }
        _FOR_END(Ei)
        
        #line 1690
        Output << " s/b ";
        
        #line 1691
        Output << "0101010101" << _WRITELN;
        
        #line 1692
        Output << "Set32: ";
        
        #line 1693
        Sena = _setLiteral37;
        
        #line 1694
        Senb = _setLiteral38;
        
        #line 1695
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 1695
            if(((Sena + Senb) & Ei))
            {
                #line 1695
                Output << '1';
            }
            else
            {
                #line 1695
                Output << '0';
            }
        }
        _FOR_END(Ei)
        
        #line 1696
        Output << " s/b ";
        
        #line 1697
        Output << "1101110001" << _WRITELN;
        
        #line 1698
        Output << "Set33: ";
        
        #line 1699
        Sena = _setLiteral39;
        
        #line 1700
        Senb = _setLiteral40;
        
        #line 1701
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 1701
            if(((Sena * Senb) & Ei))
            {
                #line 1701
                Output << '1';
            }
            else
            {
                #line 1701
                Output << '0';
            }
        }
        _FOR_END(Ei)
        
        #line 1702
        Output << " s/b ";
        
        #line 1703
        Output << "0100010000" << _WRITELN;
        
        #line 1704
        Output << "Set34: ";
        
        #line 1705
        Sena = _setLiteral41;
        
        #line 1706
        Senb = _setLiteral42;
        
        #line 1707
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 1707
            if(((Sena - Senb) & Ei))
            {
                #line 1707
                Output << '1';
            }
            else
            {
                #line 1707
                Output << '0';
            }
        }
        _FOR_END(Ei)
        
        #line 1708
        Output << " s/b ";
        
        #line 1709
        Output << "0100001000" << _WRITELN;
        
        #line 1710
        Sena = _setLiteral43;
        
        #line 1711
        Senb = _setLiteral44;
        
        #line 1712
        Senc = _setLiteral45;
        
        #line 1713
        Output << "Set35: " << _format(_str((Sena == Senb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1714
        Output << "Set36: " << _format(_str((Sena == Senc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1715
        Output << "Set37: " << _format(_str((Sena != Senb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1716
        Output << "Set38: " << _format(_str((Sena != Senc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1717
        Sena = _setLiteral46;
        
        #line 1718
        Senb = _setLiteral47;
        
        #line 1719
        Senc = _setLiteral48;
        
        #line 1720
        Send = _setLiteral49;
        
        #line 1721
        Output << "Set39: " << _format(_str((Senb <= Sena)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1722
        Output << "Set40: " << _format(_str((Senb <= Send)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1723
        Output << "Set41: " << _format(_str((Senc <= Sena)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1724
        Output << "Set42: " << _format(_str((Sena >= Senb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1725
        Output << "Set43: " << _format(_str((Send >= Senb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1726
        Output << "Set44: " << _format(_str((Sena >= Senc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1727
        Output << "Set45: ";
        
        #line 1728
        Ei = C_two;
        
        #line 1729
        {
            _T_GenericSet _setLiteral50;
            _setLiteral50.set(Ei);
            _setLiteral50.set(_succ(Ei));
            
            Sena = _setLiteral50;
        }
        
        #line 1730
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 1730
            if((Sena & Ei))
            {
                #line 1730
                Output << '1';
            }
            else
            {
                #line 1730
                Output << '0';
            }
        }
        _FOR_END(Ei)
        
        #line 1731
        Output << " s/b ";
        
        #line 1732
        Output << "0110000000" << _WRITELN;
        
        #line 1734
        Send = _setLiteral51;
        
        #line 1735
        Sene = Send;
        
        #line 1736
        Senf = _setLiteral52;
        
        #line 1737
        Seng = Senf;
        
        #line 1740
        Output << "Set46: ";
        
        #line 1741
        Sba = _setLiteral53;
        
        #line 1742
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1742
            if(_odd(_ord(Ba)))
            {
                #line 1742
                {
                    _T_GenericSet _setLiteral54;
                    _setLiteral54.set(Ba);
                    
                    Sba = (Sba + _setLiteral54);
                }
            }
        }
        _FOR_END(Ba)
        
        #line 1743
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1743
            if((Sba & Ba))
            {
                #line 1743
                Output << '1';
            }
            else
            {
                #line 1743
                Output << '0';
            }
        }
        _FOR_END(Ba)
        
        #line 1744
        Output << " s/b ";
        
        #line 1745
        Output << "01" << _WRITELN;
        
        #line 1746
        Output << "Set47: ";
        
        #line 1747
        Sba = _setLiteral55;
        
        #line 1748
        Sbb = _setLiteral56;
        
        #line 1749
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1749
            if(((Sba + Sbb) & Ba))
            {
                #line 1749
                Output << '1';
            }
            else
            {
                #line 1749
                Output << '0';
            }
        }
        _FOR_END(Ba)
        
        #line 1750
        Output << " s/b ";
        
        #line 1751
        Output << "11" << _WRITELN;
        
        #line 1752
        Output << "Set48: ";
        
        #line 1753
        Sba = _setLiteral57;
        
        #line 1754
        Sbb = _setLiteral58;
        
        #line 1755
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1755
            if(((Sba * Sbb) & Ba))
            {
                #line 1755
                Output << '1';
            }
            else
            {
                #line 1755
                Output << '0';
            }
        }
        _FOR_END(Ba)
        
        #line 1756
        Output << " s/b ";
        
        #line 1757
        Output << "10" << _WRITELN;
        
        #line 1758
        Output << "Set49: ";
        
        #line 1759
        Sba = _setLiteral59;
        
        #line 1760
        Sbb = _setLiteral60;
        
        #line 1761
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1761
            if(((Sba - Sbb) & Ba))
            {
                #line 1761
                Output << '1';
            }
            else
            {
                #line 1761
                Output << '0';
            }
        }
        _FOR_END(Ba)
        
        #line 1762
        Output << " s/b ";
        
        #line 1763
        Output << "10" << _WRITELN;
        
        #line 1764
        Sba = _setLiteral61;
        
        #line 1765
        Sbb = _setLiteral62;
        
        #line 1766
        Sbc = _setLiteral63;
        
        #line 1767
        Output << "Set50: " << _format(_str((Sba == Sbb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1768
        Output << "Set51: " << _format(_str((Sba == Sbc)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1769
        Output << "Set52: " << _format(_str((Sba != Sbb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1770
        Output << "Set53: " << _format(_str((Sba != Sbc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1771
        Sba = _setLiteral64;
        
        #line 1772
        Sbb = _setLiteral65;
        
        #line 1773
        Sbc = _setLiteral66;
        
        #line 1774
        Sbd = _setLiteral67;
        
        #line 1775
        Output << "Set54: " << _format(_str((Sbb <= Sba)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1776
        Output << "Set55: " << _format(_str((Sbb <= Sbd)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1777
        Output << "Set56: " << _format(_str((Sbc <= Sbb)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1778
        Output << "Set57: " << _format(_str((Sba >= Sbb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1779
        Output << "Set58: " << _format(_str((Sbd >= Sbb)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1780
        Output << "Set59: " << _format(_str((Sbb >= Sbc)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1781
        Output << "Set60: ";
        
        #line 1782
        Ba = C_false;
        
        #line 1783
        {
            _T_GenericSet _setLiteral68;
            _setLiteral68.set(Ba);
            _setLiteral68.set(_succ(Ba));
            
            Sba = _setLiteral68;
        }
        
        #line 1784
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 1784
            if((Sba & Ba))
            {
                #line 1784
                Output << '1';
            }
            else
            {
                #line 1784
                Output << '0';
            }
        }
        _FOR_END(Ba)
        
        #line 1785
        Output << " s/b ";
        
        #line 1786
        Output << "11" << _WRITELN;
        
        #line 1788
        Sbe = Sbd;
        
        #line 1789
        Sbf = _setLiteral69;
        
        #line 1790
        Sbg = Sbf;
        
        #line 1791
        Output << "set61: ";
        
        #line 1792
        _new(Pi1._ptr);
        
        #line 1793
        _new(Pi2._ptr);
        
        #line 1794
        (*Pi1._ptr) = 3;
        
        #line 1795
        (*Pi2._ptr) = 5;
        
        #line 1796
        {
            _T_GenericSet _setLiteral70;
            _setLiteral70.set((*Pi1._ptr), (*Pi2._ptr));
            
            Output << _format(_str((_setLiteral70 == _setLiteral71)), 5, 0);
        }
        
        #line 1797
        Output << " s/b true" << _WRITELN;
        
        #line 1805
        Output << _WRITELN;
        
        #line 1806
        Output << "******************* Pointers ******************************" << _WRITELN;
        
        #line 1807
        Output << _WRITELN;
        
        #line 1810
        Output << "Pointer1:   ";
        
        #line 1811
        _new(Pti._ptr);
        
        #line 1812
        (*Pti._ptr) = 4594;
        
        #line 1813
        Output << _format((*Pti._ptr), 1, 0) << " s/b 4594" << _WRITELN;
        
        #line 1814
        Output << "Pointer2:   ";
        
        #line 1815
        _new(Ptb._ptr);
        
        #line 1816
        (*Ptb._ptr) = C_true;
        
        #line 1817
        Output << _format(_str((*Ptb._ptr)), 5, 0) << " s/b  true" << _WRITELN;
        
        #line 1818
        Output << "Pointer3:   ";
        
        #line 1819
        _new(Ptb._ptr);
        
        #line 1820
        (*Ptb._ptr) = C_false;
        
        #line 1821
        Output << _format(_str((*Ptb._ptr)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1822
        Output << "Pointer4:   ";
        
        #line 1823
        _new(Ptc._ptr);
        
        #line 1824
        (*Ptc._ptr) = 'p';
        
        #line 1825
        Output << (*Ptc._ptr) << " s/b p" << _WRITELN;
        
        #line 1826
        Output << "Pointer5:   ";
        
        #line 1827
        _new(Pte._ptr);
        
        #line 1828
        (*Pte._ptr) = C_six;
        
        #line 1829
        Output << _format(_ord((*Pte._ptr)), 1, 0) << " s/b 5" << _WRITELN;
        
        #line 1830
        Output << "Pointer6:   ";
        
        #line 1831
        _new(Ptes._ptr);
        
        #line 1832
        (*Ptes._ptr) = C_four;
        
        #line 1833
        Output << _format(_ord((*Ptes._ptr)), 1, 0) << " s/b 3" << _WRITELN;
        
        #line 1834
        Output << "Pointer7:   ";
        
        #line 1835
        _new(Pts._ptr);
        
        #line 1836
        (*Pts._ptr) = 17;
        
        #line 1837
        Output << _format((*Pts._ptr), 1, 0) << " s/b 17" << _WRITELN;
        
        #line 1838
        Output << "Pointer8:   ";
        
        #line 1839
        _new(Ptr._ptr);
        
        #line 1840
        (*Ptr._ptr) = 1234.57;
        
        #line 1841
        Output << _format((*Ptr._ptr), 1, 4) << " s/b 1234.5678" << _WRITELN;
        
        #line 1842
        Output << "Pointer9:   ";
        
        #line 1843
        _new(Ptst._ptr);
        
        #line 1844
        (*Ptst._ptr) = "my word is";
        
        #line 1845
        Output << (*Ptst._ptr) << " s/b my word is" << _WRITELN;
        
        #line 1846
        Output << "Pointer10:  ";
        
        #line 1847
        _new(Pta._ptr);
        
        #line 1848
        _FOR_TO(i, 1, 10)
        {
            #line 1848
            (*Pta._ptr)[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 1849
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 1849
            Output << _format((*Pta._ptr)[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 1850
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 1851
        Output << "Pointer11:   ";
        
        #line 1852
        _new(Ptrc._ptr);
        
        #line 1853
        (*Ptrc._ptr).a = 7234;
        
        #line 1854
        (*Ptrc._ptr).b = 'y';
        
        #line 1855
        Output << _format((*Ptrc._ptr).a, 1, 0) << ' ' << (*Ptrc._ptr).b << " s/b 7234 y" << _WRITELN;
        
        #line 1856
        Output << "Pointer12:   ";
        
        #line 1857
        _new(Ptstc._ptr);
        
        #line 1858
        (*Ptstc._ptr) = _setLiteral72;
        
        #line 1859
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 1859
            if(((*Ptstc._ptr) & Ci))
            {
                #line 1859
                Output << Ci;
            }
            else
            {
                #line 1859
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 1860
        Output << " s/b _b_d____ij" << _WRITELN;
        
        #line 1861
        Output << "Pointer13:  ";
        
        #line 1862
        _new(Ptp._ptr);
        
        #line 1863
        _new((*Ptp._ptr)._ptr);
        
        #line 1864
        (*(*Ptp._ptr)._ptr) = 3732;
        
        #line 1865
        Output << _format((*(*Ptp._ptr)._ptr), 1, 0) << " s/b 3732" << _WRITELN;
        
        #line 1868
        Output << "Pointer14:  ";
        
        #line 1869
        Pti = nullptr;
        
        #line 1870
        Output << _format(_str((Pti == nullptr)), 5, 0) << " s/b  true" << _WRITELN;
        
        #line 1871
        Output << "Pointer15:  ";
        
        #line 1872
        _new(Pti._ptr);
        
        #line 1873
        Output << _format(_str((Pti == nullptr)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1874
        Output << "Pointer16:  ";
        
        #line 1875
        Pti1 = Pti;
        
        #line 1876
        Output << _format(_str((Pti == Pti1)), 5, 0) << " s/b true" << _WRITELN;
        
        #line 1877
        Output << "Pointer17:  ";
        
        #line 1878
        Pti1 = Pti;
        
        #line 1879
        Output << _format(_str((Pti != Pti1)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1880
        Output << "Pointer18:  ";
        
        #line 1881
        _new(Pti1._ptr);
        
        #line 1882
        Output << _format(_str((Pti == Pti1)), 5, 0) << " s/b false" << _WRITELN;
        
        #line 1883
        Output << "Pointer19:  ";
        
        #line 1884
        Output << _format(_str((Pti != Pti1)), 5, 0) << " s/b  true" << _WRITELN;
        
        #line 1889
        Output << "Pointer20:  ";
        
        #line 1890
        _new(Ipa._ptr);
        
        #line 1891
        _new(Ipb._ptr);
        
        #line 1892
        _new(Ipc._ptr);
        
        #line 1893
        _dispose(Ipa._ptr);
        
        #line 1894
        _dispose(Ipb._ptr);
        
        #line 1895
        _dispose(Ipc._ptr);
        
        #line 1896
        Output << "done s/b done" << _WRITELN;
        
        #line 1900
        Output << "Pointer21:  ";
        
        #line 1901
        _new(Ipa._ptr);
        
        #line 1902
        _new(Ipb._ptr);
        
        #line 1903
        _new(Ipc._ptr);
        
        #line 1904
        _dispose(Ipc._ptr);
        
        #line 1905
        _dispose(Ipb._ptr);
        
        #line 1906
        _dispose(Ipa._ptr);
        
        #line 1910
        Output << "Pointer22:  ";
        
        #line 1911
        _new(Ipa._ptr);
        
        #line 1912
        _new(Ipb._ptr);
        
        #line 1913
        _new(Ipc._ptr);
        
        #line 1914
        _new(Ipd._ptr);
        
        #line 1915
        _dispose(Ipb._ptr);
        
        #line 1916
        _dispose(Ipc._ptr);
        
        #line 1917
        _dispose(Ipa._ptr);
        
        #line 1918
        _dispose(Ipd._ptr);
        
        #line 1919
        Output << "done s/b done" << _WRITELN;
        
        #line 1922
        Output << "Pointer23:  ";
        
        #line 1923
        _new(Ipa._ptr);
        
        #line 1924
        _new(Ipb._ptr);
        
        #line 1925
        _new(Ipc._ptr);
        
        #line 1926
        _new(Ipd._ptr);
        
        #line 1927
        _new(Ipe._ptr);
        
        #line 1928
        _dispose(Ipb._ptr);
        
        #line 1929
        _dispose(Ipd._ptr);
        
        #line 1930
        _dispose(Ipc._ptr);
        
        #line 1931
        _dispose(Ipa._ptr);
        
        #line 1932
        _dispose(Ipe._ptr);
        
        #line 1933
        Output << "done s/b done" << _WRITELN;
        
        #line 1936
        Output << "Pointer24:  " << _WRITELN;
        
        #line 1937
        _FOR_TO(Cnt, 1, 100)
        {
            #line 1939
            Output << _format(Cnt, 3, 0) << ' ';
            
            #line 1939
            if((_mod(Cnt , 10) == 0))
            {
                #line 1939
                Output << _WRITELN;
            }
            
            #line 1940
            _FOR_TO(i, 1, 100)
            {
                #line 1940
                Iap[i] = nullptr;
            }
            _FOR_END(i)
            
            #line 1941
            _FOR_TO(i, 1, 100)
            {
                #line 1941
                _new(Iap[i]._ptr);
                
                #line 1941
                (*Iap[i]._ptr) = i;
            }
            _FOR_END(i)
            
            #line 1942
            _FOR_TO(i, 1, 100)
            {
                #line 1942
                if((Iap[i] == nullptr))
                {
                    #line 1943
                    Output << "*** bad allocation of block" << _WRITELN;
                }
            }
            _FOR_END(i)
            
            #line 1944
            _FOR_DOWNTO(i, 100, 1)
            {
                #line 1944
                if(((*Iap[i]._ptr) != i))
                {
                    #line 1945
                    Output << "*** bad block content" << _WRITELN;
                }
            }
            _FOR_END(i)
            
            #line 1946
            _FOR_TO(i, 1, 100)
            {
                #line 1948
                _dispose(Iap[i]._ptr);
                
                #line 1949
                Iap[i] = nullptr;
                
                #line 1950
                _FOR_TO(x, 1, 100)
                {
                    #line 1950
                    if((Iap[x] != nullptr))
                    {
                        #line 1951
                        if(((*Iap[x]._ptr) != x))
                        {
                            #line 1952
                            Output << "*** bad block content" << _WRITELN;
                        }
                    }
                }
                _FOR_END(x)
            }
            _FOR_END(i)
            
            #line 1956
            _FOR_TO(i, 1, 100)
            {
                #line 1956
                Iap[i] = nullptr;
            }
            _FOR_END(i)
            
            #line 1957
            _FOR_TO(i, 1, 100)
            {
                #line 1957
                _new(Iap[i]._ptr);
                
                #line 1957
                (*Iap[i]._ptr) = i;
            }
            _FOR_END(i)
            
            #line 1958
            _FOR_TO(i, 1, 100)
            {
                #line 1958
                if((Iap[i] == nullptr))
                {
                    #line 1959
                    Output << "*** bad allocation of block" << _WRITELN;
                }
            }
            _FOR_END(i)
            
            #line 1960
            _FOR_DOWNTO(i, 100, 1)
            {
                #line 1960
                if(((*Iap[i]._ptr) != i))
                {
                    #line 1961
                    Output << "*** bad block content" << _WRITELN;
                }
            }
            _FOR_END(i)
            
            #line 1962
            _FOR_DOWNTO(i, 100, 1)
            {
                #line 1964
                _dispose(Iap[i]._ptr);
                
                #line 1965
                Iap[i] = nullptr;
                
                #line 1966
                _FOR_TO(x, 1, 100)
                {
                    #line 1966
                    if((Iap[x] != nullptr))
                    {
                        #line 1967
                        if(((*Iap[x]._ptr) != x))
                        {
                            #line 1968
                            Output << "*** bad block content" << _WRITELN;
                        }
                    }
                }
                _FOR_END(x)
            }
            _FOR_END(i)
        }
        _FOR_END(Cnt)
        
        #line 1973
        Output << _WRITELN;
        
        #line 1974
        Output << "s/b" << _WRITELN;
        
        #line 1975
        Output << _WRITELN;
        
        #line 1976
        Output << "  1   2   3   4   5   6   7   8   9  10" << _WRITELN;
        
        #line 1977
        Output << " 11  12  13  14  15  16  17  18  19  20" << _WRITELN;
        
        #line 1978
        Output << " 21  22  23  24  25  26  27  28  29  30" << _WRITELN;
        
        #line 1979
        Output << " 31  32  33  34  35  36  37  38  39  40" << _WRITELN;
        
        #line 1980
        Output << " 41  42  43  44  45  46  47  48  49  50" << _WRITELN;
        
        #line 1981
        Output << " 51  52  53  54  55  56  57  58  59  60" << _WRITELN;
        
        #line 1982
        Output << " 61  62  63  64  65  66  67  68  69  70" << _WRITELN;
        
        #line 1983
        Output << " 71  72  73  74  75  76  77  78  79  80" << _WRITELN;
        
        #line 1984
        Output << " 81  82  83  84  85  86  87  88  89  90" << _WRITELN;
        
        #line 1985
        Output << " 91  92  93  94  95  96  97  98  99  100" << _WRITELN;
        
        #line 1987
        Rndseq = 1;
        
        #line 1990
        Output << "Pointer25:  " << _WRITELN;
        
        #line 1991
        _FOR_TO(i, 1, 100)
        {
            #line 1991
            Iap[i] = nullptr;
        }
        _FOR_END(i)
        
        #line 1992
        _FOR_TO(Cnt2, 1, 100)
        {
            #line 1994
            Output << _format(Cnt2, 3, 0) << ' ';
            
            #line 1994
            if((_mod(Cnt2 , 10) == 0))
            {
                #line 1994
                Output << _WRITELN;
            }
            
            #line 1995
            _FOR_TO(Cnt, 1, 100)
            {
                #line 1998
                Rn = F_random(nullptr, 1, 100);
                
                #line 1999
                _new(Iap[Rn]._ptr);
                
                #line 2000
                (*Iap[Rn]._ptr) = Rn;
                
                #line 2001
                _FOR_TO(i, 1, 100)
                {
                    #line 2001
                    if((Iap[i] != nullptr))
                    {
                        #line 2002
                        if(((*Iap[i]._ptr) != i))
                        {
                            #line 2003
                            Output << "*** bad block content" << _WRITELN;
                        }
                    }
                }
                _FOR_END(i)
                
                #line 2006
                Rn = F_random(nullptr, 1, 100);
                
                #line 2007
                if((Iap[Rn] != nullptr))
                {
                    #line 2007
                    _dispose(Iap[Rn]._ptr);
                }
                
                #line 2008
                Iap[Rn] = nullptr;
                
                #line 2009
                _FOR_TO(i, 1, 100)
                {
                    #line 2009
                    if((Iap[i] != nullptr))
                    {
                        #line 2010
                        if(((*Iap[i]._ptr) != i))
                        {
                            #line 2011
                            Output << "*** bad block content" << _WRITELN;
                        }
                    }
                }
                _FOR_END(i)
                
                { /* NOP */ }
            }
            _FOR_END(Cnt)
        }
        _FOR_END(Cnt2)
        
        #line 2016
        Output << _WRITELN;
        
        #line 2017
        Output << "s/b" << _WRITELN;
        
        #line 2018
        Output << _WRITELN;
        
        #line 2019
        Output << "  1   2   3   4   5   6   7   8   9  10" << _WRITELN;
        
        #line 2020
        Output << " 11  12  13  14  15  16  17  18  19  20" << _WRITELN;
        
        #line 2021
        Output << " 21  22  23  24  25  26  27  28  29  30" << _WRITELN;
        
        #line 2022
        Output << " 31  32  33  34  35  36  37  38  39  40" << _WRITELN;
        
        #line 2023
        Output << " 41  42  43  44  45  46  47  48  49  50" << _WRITELN;
        
        #line 2024
        Output << " 51  52  53  54  55  56  57  58  59  60" << _WRITELN;
        
        #line 2025
        Output << " 61  62  63  64  65  66  67  68  69  70" << _WRITELN;
        
        #line 2026
        Output << " 71  72  73  74  75  76  77  78  79  80" << _WRITELN;
        
        #line 2027
        Output << " 81  82  83  84  85  86  87  88  89  90" << _WRITELN;
        
        #line 2028
        Output << " 91  92  93  94  95  96  97  98  99  100" << _WRITELN;
        
        #line 2036
        Output << _WRITELN;
        
        #line 2037
        Output << "******************* arrays ******************************" << _WRITELN;
        
        #line 2038
        Output << _WRITELN;
        
        #line 2041
        Output << "Array1:   ";
        
        #line 2042
        _FOR_TO(i, 1, 10)
        {
            #line 2042
            Avi[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2043
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2043
            Output << _format(Avi[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2044
        Output << " s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2045
        Output << "Array2:   ";
        
        #line 2046
        _FOR_TO(i, 1, 10)
        {
            #line 2046
            Pavi[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2047
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2047
            Output << _format(Pavi[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2048
        Output << " s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2049
        Output << "Array3:   ";
        
        #line 2050
        _FOR_TO(i, 1, 10)
        {
            #line 2050
            Avis[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2051
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2051
            Output << _format(Avis[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2052
        Output << " s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2053
        Output << "Array4:   ";
        
        #line 2054
        _FOR_TO(i, 1, 10)
        {
            #line 2054
            Pavis[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2055
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2055
            Output << _format(Pavis[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2056
        Output << " s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2057
        Output << "Array5:   ";
        
        #line 2058
        _FOR_TO(i, 1, 10)
        {
            #line 2058
            Avb[i] = _odd(i);
        }
        _FOR_END(i)
        
        #line 2059
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2059
            Output << _format(_str(Avb[i]), 5, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2060
        Output << _WRITELN;
        
        #line 2061
        Output << "    s/b:   false  true false  true false  true false  true false" << "  true" << _WRITELN;
        
        #line 2063
        Output << "Array6:   ";
        
        #line 2064
        _FOR_TO(i, 1, 10)
        {
            #line 2064
            Pavb[i] = _odd(i);
        }
        _FOR_END(i)
        
        #line 2065
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2065
            Output << _format(_str(Pavb[i]), 5, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2066
        Output << _WRITELN;
        
        #line 2067
        Output << "    s/b:   false  true false  true false  true false  true false" << "  true" << _WRITELN;
        
        #line 2069
        Output << "Array7:   ";
        
        #line 2070
        _FOR_TO(i, 1, 10)
        {
            #line 2070
            Avr[i] = ((i + 10) + 0.120000);
        }
        _FOR_END(i)
        
        #line 2071
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2071
            Output << _format(Avr[i], 1, 2) << ' ';
        }
        _FOR_END(i)
        
        #line 2072
        Output << _WRITELN;
        
        #line 2073
        Output << "    s/b:   20.12 19.12 18.12 17.12 16.12 15.12 14.12 " << "13.12 12.12 11.12" << _WRITELN;
        
        #line 2075
        Output << "Array8:   ";
        
        #line 2076
        _FOR_TO(i, 1, 10)
        {
            #line 2076
            Pavr[i] = ((i + 10) + 0.120000);
        }
        _FOR_END(i)
        
        #line 2077
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2077
            Output << _format(Pavr[i], 1, 2) << ' ';
        }
        _FOR_END(i)
        
        #line 2078
        Output << _WRITELN;
        
        #line 2079
        Output << "    s/b:   20.12 19.12 18.12 17.12 16.12 15.12 14.12 " << "13.12 12.12 11.12" << _WRITELN;
        
        #line 2081
        Output << "Array9:   ";
        
        #line 2082
        _FOR_TO(i, 1, 10)
        {
            #line 2082
            Avc[i] = _chr((i + _ord('a')));
        }
        _FOR_END(i)
        
        #line 2083
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2083
            Output << _format(Avc[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2084
        Output << "s/b k j i h g f e d c b" << _WRITELN;
        
        #line 2085
        Output << "Array10:  ";
        
        #line 2086
        _FOR_TO(i, 1, 10)
        {
            #line 2086
            Pavc[i] = _chr((i + _ord('a')));
        }
        _FOR_END(i)
        
        #line 2087
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2087
            Output << _format(Pavc[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2088
        Output << "s/b k j i h g f e d c b" << _WRITELN;
        
        #line 2089
        Output << "Array11:  ";
        
        #line 2090
        _FOR_TO(i, 1, 10)
        {
            #line 2090
            Avcs[i] = _chr((i + _ord('f')));
        }
        _FOR_END(i)
        
        #line 2091
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2091
            Output << _format(Avcs[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2092
        Output << "s/b p o n m l k j i h g" << _WRITELN;
        
        #line 2093
        Output << "Array12:  ";
        
        #line 2094
        _FOR_TO(i, 1, 10)
        {
            #line 2094
            Pavcs[i] = _chr((i + _ord('f')));
        }
        _FOR_END(i)
        
        #line 2095
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2095
            Output << _format(Pavcs[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2096
        Output << "s/b p o n m l k j i h g" << _WRITELN;
        
        #line 2097
        Output << "Array13:  ";
        
        #line 2098
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 2098
            Ave[(_ord(Ei) + 1)] = Ei;
        }
        _FOR_END(Ei)
        
        #line 2099
        _FOR_DOWNTO(Ei, C_ten, C_one)
        {
            #line 2099
            Output << _format(_ord(Ave[(_ord(Ei) + 1)]), 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2100
        Output << "s/b 9 8 7 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 2101
        Output << "Array14:  ";
        
        #line 2102
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 2102
            Pave[(_ord(Ei) + 1)] = Ei;
        }
        _FOR_END(Ei)
        
        #line 2103
        _FOR_DOWNTO(Ei, C_ten, C_one)
        {
            #line 2103
            Output << _format(_ord(Ave[(_ord(Ei) + 1)]), 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2104
        Output << "s/b 9 8 7 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 2105
        Output << "Array15:  ";
        
        #line 2106
        _FOR_TO(Ei, C_three, C_six)
        {
            #line 2106
            Aves[(_ord(Ei) + 1)] = Ei;
        }
        _FOR_END(Ei)
        
        #line 2107
        _FOR_DOWNTO(Ei, C_six, C_three)
        {
            #line 2107
            Output << _format(_ord(Aves[(_ord(Ei) + 1)]), 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2108
        Output << "s/b 5 4 3 2" << _WRITELN;
        
        #line 2109
        Output << "Array16:  ";
        
        #line 2110
        _FOR_TO(Ei, C_three, C_six)
        {
            #line 2110
            Paves[(_ord(Ei) + 1)] = Ei;
        }
        _FOR_END(Ei)
        
        #line 2111
        _FOR_DOWNTO(Ei, C_six, C_three)
        {
            #line 2111
            Output << _format(_ord(Paves[(_ord(Ei) + 1)]), 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2112
        Output << "s/b 5 4 3 2" << _WRITELN;
        
        #line 2113
        Output << "Array17:  ";
        
        #line 2114
        _FOR_TO(i, 1, 10)
        {
            #line 2114
            {
                _T_GenericSet _setLiteral73;
                _setLiteral73.set(_chr((i + _ord('a'))));
                
                Avs[i] = _setLiteral73;
            }
        }
        _FOR_END(i)
        
        #line 2115
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2116
            _FOR_TO(Ci, 'a', 'z')
            {
                #line 2116
                if((Avs[i] & Ci))
                {
                    #line 2116
                    Output << Ci << ' ';
                }
            }
            _FOR_END(Ci)
        }
        _FOR_END(i)
        
        #line 2117
        Output << "s/b k j i h g f e d c b" << _WRITELN;
        
        #line 2118
        Output << "Array18:  ";
        
        #line 2119
        _FOR_TO(i, 1, 10)
        {
            #line 2119
            {
                _T_GenericSet _setLiteral74;
                _setLiteral74.set(_chr((i + _ord('a'))));
                
                Pavs[i] = _setLiteral74;
            }
        }
        _FOR_END(i)
        
        #line 2120
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2121
            _FOR_TO(Ci, 'a', 'z')
            {
                #line 2121
                if((Pavs[i] & Ci))
                {
                    #line 2121
                    Output << Ci << ' ';
                }
            }
            _FOR_END(Ci)
        }
        _FOR_END(i)
        
        #line 2122
        Output << "s/b k j i h g f e d c b" << _WRITELN;
        
        #line 2123
        Output << "Array19:  ";
        
        #line 2124
        _FOR_TO(i, 1, 10)
        {
            #line 2125
            Avrc[i].a = (i + 10);
            
            #line 2125
            Avrc[i].b = _chr((i + _ord('a')));
        }
        _FOR_END(i)
        
        #line 2126
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2126
            Output << _format(Avrc[i].a, 1, 0) << ' ' << Avrc[i].b << ' ';
        }
        _FOR_END(i)
        
        #line 2127
        Output << _WRITELN;
        
        #line 2128
        Output << "     s/b:  20 k 19 j 18 i 17 h 16 g 15 f 14 e 13 d 12 c 11 b" << _WRITELN;
        
        #line 2129
        Output << "Array20:  ";
        
        #line 2130
        _FOR_TO(i, 1, 10)
        {
            #line 2131
            Pavrc[i].a = (i + 10);
            
            #line 2131
            Pavrc[i].b = _chr((i + _ord('a')));
        }
        _FOR_END(i)
        
        #line 2132
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2132
            Output << _format(Pavrc[i].a, 1, 0) << ' ' << Pavrc[i].b << ' ';
        }
        _FOR_END(i)
        
        #line 2133
        Output << _WRITELN;
        
        #line 2134
        Output << "     s/b:  20 k 19 j 18 i 17 h 16 g 15 f 14 e 13 d 12 c 11 b" << _WRITELN;
        
        #line 2135
        Output << "Array21:  ";
        
        #line 2136
        _FOR_TO(i, 1, 10)
        {
            #line 2136
            _rewrite(Avf[i]);
            
            #line 2136
            Avf[i] << (i + 10) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 2137
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2138
            _reset(Avf[i]);
            
            #line 2138
            Avf[i] >> x >> _READLN;
            
            #line 2138
            Output << _format(x, 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2139
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2140
        Output << "Array22:  ";
        
        #line 2141
        _FOR_TO(i, 1, 10)
        {
            #line 2141
            _rewrite(Pavf[i]);
            
            #line 2141
            Pavf[i] << (i + 10) << _WRITELN;
        }
        _FOR_END(i)
        
        #line 2142
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2143
            _reset(Pavf[i]);
            
            #line 2143
            Pavf[i] >> x >> _READLN;
            
            #line 2143
            Output << _format(x, 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2144
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2145
        Output << "Array23:  ";
        
        #line 2146
        _FOR_TO(i, 1, 10)
        {
            #line 2146
            _new(Avp[i]._ptr);
            
            #line 2146
            (*Avp[i]._ptr) = (i + 10);
        }
        _FOR_END(i)
        
        #line 2147
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2147
            Output << _format((*Avp[i]._ptr), 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2148
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2149
        Output << "Array24:  ";
        
        #line 2150
        _FOR_TO(i, 1, 10)
        {
            #line 2150
            _new(Pavp[i]._ptr);
            
            #line 2150
            (*Pavp[i]._ptr) = (i + 10);
        }
        _FOR_END(i)
        
        #line 2151
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2151
            Output << _format((*Pavp[i]._ptr), 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2152
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2155
        Output << "Array25:  ";
        
        #line 2156
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 2156
            Bia[Ba] = (_ord(Ba) + 10);
        }
        _FOR_END(Ba)
        
        #line 2157
        _FOR_DOWNTO(Ba, C_true, C_false)
        {
            #line 2157
            Output << _format(Bia[Ba], 1, 0) << ' ';
        }
        _FOR_END(Ba)
        
        #line 2158
        Output << " s/b 11 10" << _WRITELN;
        
        #line 2159
        Output << "Array26:  ";
        
        #line 2160
        _FOR_TO(Ba, C_false, C_true)
        {
            #line 2160
            Pbia[Ba] = (_ord(Ba) + 10);
        }
        _FOR_END(Ba)
        
        #line 2161
        _FOR_DOWNTO(Ba, C_true, C_false)
        {
            #line 2161
            Output << _format(Pbia[Ba], 1, 0) << ' ';
        }
        _FOR_END(Ba)
        
        #line 2162
        Output << " s/b 11 10" << _WRITELN;
        
        #line 2163
        Output << "Array27:  ";
        
        #line 2164
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 2164
            Cia[Ci] = _ord(Ci);
        }
        _FOR_END(Ci)
        
        #line 2165
        _FOR_DOWNTO(Ci, 'j', 'a')
        {
            #line 2165
            Output << _chr(Cia[Ci]) << ' ';
        }
        _FOR_END(Ci)
        
        #line 2166
        Output << " s/b  j i h g f e d c b a" << _WRITELN;
        
        #line 2167
        Output << "Array28:  ";
        
        #line 2168
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 2168
            Pcia[Ci] = _ord(Ci);
        }
        _FOR_END(Ci)
        
        #line 2169
        _FOR_DOWNTO(Ci, 'j', 'a')
        {
            #line 2169
            Output << _chr(Pcia[Ci]) << ' ';
        }
        _FOR_END(Ci)
        
        #line 2170
        Output << " s/b  j i h g f e d c b a" << _WRITELN;
        
        #line 2171
        Output << "Array29:  ";
        
        #line 2172
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 2172
            Csia[Ci] = _ord(Ci);
        }
        _FOR_END(Ci)
        
        #line 2173
        _FOR_DOWNTO(Ci, 'j', 'a')
        {
            #line 2173
            Output << _chr(Csia[Ci]) << ' ';
        }
        _FOR_END(Ci)
        
        #line 2174
        Output << " s/b  j i h g f e d c b a" << _WRITELN;
        
        #line 2175
        Output << "Array30:  ";
        
        #line 2176
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 2176
            Pcsia[Ci] = _ord(Ci);
        }
        _FOR_END(Ci)
        
        #line 2177
        _FOR_DOWNTO(Ci, 'j', 'a')
        {
            #line 2177
            Output << _chr(Pcsia[Ci]) << ' ';
        }
        _FOR_END(Ci)
        
        #line 2178
        Output << " s/b  j i h g f e d c b a" << _WRITELN;
        
        #line 2179
        Output << "Array31:  ";
        
        #line 2180
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 2180
            Eia[Ei] = _ord(Ei);
        }
        _FOR_END(Ei)
        
        #line 2181
        _FOR_DOWNTO(Ei, C_ten, C_one)
        {
            #line 2181
            Output << _format(Eia[Ei], 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2182
        Output << " s/b  9 8 7 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 2183
        Output << "Array32:  ";
        
        #line 2184
        _FOR_TO(Ei, C_one, C_ten)
        {
            #line 2184
            Peia[Ei] = _ord(Ei);
        }
        _FOR_END(Ei)
        
        #line 2185
        _FOR_DOWNTO(Ei, C_ten, C_one)
        {
            #line 2185
            Output << _format(Peia[Ei], 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2186
        Output << " s/b  9 8 7 6 5 4 3 2 1 0" << _WRITELN;
        
        #line 2187
        Output << "Array33:  ";
        
        #line 2188
        _FOR_TO(Ei, C_two, C_six)
        {
            #line 2188
            Eia[Ei] = _ord(Ei);
        }
        _FOR_END(Ei)
        
        #line 2189
        _FOR_DOWNTO(Ei, C_six, C_two)
        {
            #line 2189
            Output << _format(Eia[Ei], 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2190
        Output << " s/b  5 4 3 2 1" << _WRITELN;
        
        #line 2191
        Output << "Array34:  ";
        
        #line 2192
        _FOR_TO(Ei, C_two, C_six)
        {
            #line 2192
            Peia[Ei] = _ord(Ei);
        }
        _FOR_END(Ei)
        
        #line 2193
        _FOR_DOWNTO(Ei, C_six, C_two)
        {
            #line 2193
            Output << _format(Peia[Ei], 1, 0) << ' ';
        }
        _FOR_END(Ei)
        
        #line 2194
        Output << " s/b  5 4 3 2 1" << _WRITELN;
        
        #line 2197
        Output << "Array35:" << _WRITELN;
        
        #line 2198
        z = 0;
        
        #line 2199
        _FOR_TO(x, 1, 10)
        {
            #line 2200
            _FOR_TO(y, 1, 10)
            {
                #line 2200
                Da[y][x] = z;
                
                #line 2200
                z = (z + 1);
            }
            _FOR_END(y)
        }
        _FOR_END(x)
        
        #line 2201
        _FOR_TO(x, 1, 10)
        {
            #line 2203
            _FOR_TO(y, 1, 10)
            {
                #line 2203
                Output << _format(Da[x][y], 2, 0) << ' ';
            }
            _FOR_END(y)
            
            #line 2204
            Output << _WRITELN;
            
            { /* NOP */ }
        }
        _FOR_END(x)
        
        #line 2206
        Output << "s/b" << _WRITELN;
        
        #line 2207
        Output << "0 10 20 30 40 50 60 70 80 90" << _WRITELN;
        
        #line 2208
        Output << "1 11 21 31 41 51 61 71 81 91" << _WRITELN;
        
        #line 2209
        Output << "2 12 22 32 42 52 62 72 82 92" << _WRITELN;
        
        #line 2210
        Output << "3 13 23 33 43 53 63 73 83 93" << _WRITELN;
        
        #line 2211
        Output << "4 14 24 34 44 54 64 74 84 94" << _WRITELN;
        
        #line 2212
        Output << "5 15 25 35 45 55 65 75 85 95" << _WRITELN;
        
        #line 2213
        Output << "6 16 26 36 46 56 66 76 86 96" << _WRITELN;
        
        #line 2214
        Output << "7 17 27 37 47 57 67 77 87 97" << _WRITELN;
        
        #line 2215
        Output << "8 18 28 38 48 58 68 78 88 98" << _WRITELN;
        
        #line 2216
        Output << "9 19 29 39 49 59 69 79 89 99" << _WRITELN;
        
        #line 2217
        Output << "Array36: " << _WRITELN;
        
        #line 2218
        t = 0;
        
        #line 2219
        _FOR_TO(i, 1, 2)
        {
            #line 2220
            _FOR_TO(x, 1, 2)
            {
                #line 2221
                _FOR_TO(y, 1, 2)
                {
                    #line 2222
                    _FOR_TO(z, 1, 2)
                    {
                        #line 2223
                        _FOR_TO(q, 1, 2)
                        {
                            #line 2224
                            _FOR_TO(n, 1, 2)
                            {
                                #line 2225
                                Mdar[i][x][y][z][q][n] = t;
                                
                                #line 2225
                                t = (t + 1);
                            }
                            _FOR_END(n)
                        }
                        _FOR_END(q)
                    }
                    _FOR_END(z)
                }
                _FOR_END(y)
            }
            _FOR_END(x)
        }
        _FOR_END(i)
        
        #line 2226
        _FOR_DOWNTO(i, 2, 1)
        {
            #line 2227
            _FOR_DOWNTO(x, 2, 1)
            {
                #line 2228
                _FOR_DOWNTO(y, 2, 1)
                {
                    #line 2230
                    _FOR_DOWNTO(z, 2, 1)
                    {
                        #line 2231
                        _FOR_DOWNTO(q, 2, 1)
                        {
                            #line 2232
                            _FOR_DOWNTO(n, 2, 1)
                            {
                                #line 2232
                                Output << _format(Mdar[i][x][y][z][q][n], 2, 0) << ' ';
                            }
                            _FOR_END(n)
                        }
                        _FOR_END(q)
                    }
                    _FOR_END(z)
                    
                    #line 2233
                    Output << _WRITELN;
                    
                    { /* NOP */ }
                }
                _FOR_END(y)
            }
            _FOR_END(x)
        }
        _FOR_END(i)
        
        #line 2236
        Output << "s/b:" << _WRITELN;
        
        #line 2237
        Output << "63 62 61 60 59 58 57 56" << _WRITELN;
        
        #line 2238
        Output << "55 54 53 52 51 50 49 48" << _WRITELN;
        
        #line 2239
        Output << "47 46 45 44 43 42 41 40" << _WRITELN;
        
        #line 2240
        Output << "39 38 37 36 35 34 33 32" << _WRITELN;
        
        #line 2241
        Output << "31 30 29 28 27 26 25 24" << _WRITELN;
        
        #line 2242
        Output << "23 22 21 20 19 18 17 16" << _WRITELN;
        
        #line 2243
        Output << "15 14 13 12 11 10  9  8" << _WRITELN;
        
        #line 2244
        Output << " 7  6  5  4  3  2  1  0" << _WRITELN;
        
        #line 2247
        Output << "Array37: " << _WRITELN;
        
        #line 2248
        Pavc = "hello, guy";
        
        #line 2249
        Output << Pavc << " s/b hello, guy" << _WRITELN;
        
        #line 2250
        Output << "Array38: " << _WRITELN;
        
        #line 2251
        _FOR_TO(i, 1, 10)
        {
            #line 2251
            Avi[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2252
        Avi2 = Avi;
        
        #line 2253
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2253
            Output << _format(Avi2[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2254
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2255
        Output << "Array39: " << _WRITELN;
        
        #line 2256
        t = 0;
        
        #line 2257
        _FOR_TO(i, 1, 2)
        {
            #line 2258
            _FOR_TO(x, 1, 2)
            {
                #line 2259
                _FOR_TO(y, 1, 2)
                {
                    #line 2260
                    _FOR_TO(z, 1, 2)
                    {
                        #line 2261
                        _FOR_TO(q, 1, 2)
                        {
                            #line 2262
                            _FOR_TO(n, 1, 2)
                            {
                                #line 2263
                                Mdar[i][x][y][z][q][n] = t;
                                
                                #line 2263
                                t = (t + 1);
                            }
                            _FOR_END(n)
                        }
                        _FOR_END(q)
                    }
                    _FOR_END(z)
                }
                _FOR_END(y)
            }
            _FOR_END(x)
        }
        _FOR_END(i)
        
        #line 2264
        Mdar2 = Mdar;
        
        #line 2265
        _FOR_DOWNTO(i, 2, 1)
        {
            #line 2266
            _FOR_DOWNTO(x, 2, 1)
            {
                #line 2267
                _FOR_DOWNTO(y, 2, 1)
                {
                    #line 2269
                    _FOR_DOWNTO(z, 2, 1)
                    {
                        #line 2270
                        _FOR_DOWNTO(q, 2, 1)
                        {
                            #line 2271
                            _FOR_DOWNTO(n, 2, 1)
                            {
                                #line 2271
                                Output << _format(Mdar2[i][x][y][z][q][n], 2, 0) << ' ';
                            }
                            _FOR_END(n)
                        }
                        _FOR_END(q)
                    }
                    _FOR_END(z)
                    
                    #line 2272
                    Output << _WRITELN;
                    
                    { /* NOP */ }
                }
                _FOR_END(y)
            }
            _FOR_END(x)
        }
        _FOR_END(i)
        
        #line 2275
        Output << "s/b:" << _WRITELN;
        
        #line 2276
        Output << "63 62 61 60 59 58 57 56" << _WRITELN;
        
        #line 2277
        Output << "55 54 53 52 51 50 49 48" << _WRITELN;
        
        #line 2278
        Output << "47 46 45 44 43 42 41 40" << _WRITELN;
        
        #line 2279
        Output << "39 38 37 36 35 34 33 32" << _WRITELN;
        
        #line 2280
        Output << "31 30 29 28 27 26 25 24" << _WRITELN;
        
        #line 2281
        Output << "23 22 21 20 19 18 17 16" << _WRITELN;
        
        #line 2282
        Output << "15 14 13 12 11 10  9  8" << _WRITELN;
        
        #line 2283
        Output << " 7  6  5  4  3  2  1  0" << _WRITELN;
        
        #line 2286
        Output << "Array40: " << _WRITELN;
        
        #line 2287
        _FOR_TO(i, 1, 10)
        {
            #line 2287
            Pavi[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2288
        _unpack(Pavi, Avi, 1);
        
        #line 2289
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2289
            Output << _format(Avi[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2290
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2291
        Output << "Array41: " << _WRITELN;
        
        #line 2292
        _FOR_TO(i, 1, 10)
        {
            #line 2292
            Avi[i] = (i + 20);
        }
        _FOR_END(i)
        
        #line 2293
        _pack(Avi, 1, Pavi);
        
        #line 2294
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2294
            Output << _format(Pavi[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2295
        Output << "s/b 30 29 28 27 26 25 24 23 22 21" << _WRITELN;
        
        #line 2296
        Output << "Array42: " << _WRITELN;
        
        #line 2297
        _FOR_TO(i, 1, 10)
        {
            #line 2297
            Pavi[i] = (i + 30);
        }
        _FOR_END(i)
        
        #line 2298
        _unpack(Pavi, Cia, 'g');
        
        #line 2299
        _FOR_DOWNTO(Ci, 'p', 'g')
        {
            #line 2299
            Output << _format(Cia[Ci], 1, 0) << ' ';
        }
        _FOR_END(Ci)
        
        #line 2300
        Output << "s/b 40 39 38 37 36 35 34 33 32 31" << _WRITELN;
        
        #line 2301
        Output << "Array43: " << _WRITELN;
        
        #line 2302
        x = 1;
        
        #line 2303
        _FOR_TO(Ci, 'a', 'z')
        {
            #line 2303
            Cia[Ci] = x;
            
            #line 2303
            x = (x + 1);
        }
        _FOR_END(Ci)
        
        #line 2304
        _pack(Cia, 'm', Pavi);
        
        #line 2305
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2305
            Output << _format(Pavi[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2306
        Output << "s/b 22 21 20 19 18 17 16 15 14 13" << _WRITELN;
        
        #line 2314
        Output << _WRITELN;
        
        #line 2315
        Output << "******************* records ******************************" << _WRITELN;
        
        #line 2316
        Output << _WRITELN;
        
        #line 2319
        Output << "Record1:   " << _WRITELN;
        
        #line 2320
        Arec.i = 64;
        
        #line 2321
        Arec.b = C_false;
        
        #line 2322
        Arec.c = 'j';
        
        #line 2323
        Arec.e = C_two;
        
        #line 2324
        Arec.Es = C_four;
        
        #line 2325
        Arec.s = 12;
        
        #line 2326
        Arec.r = 4.54512e-29;
        
        #line 2327
        Arec.St = "what ? who";
        
        #line 2328
        _FOR_TO(i, 1, 10)
        {
            #line 2328
            Arec.a[i] = (i + 20);
        }
        _FOR_END(i)
        
        #line 2329
        Arec.Rc.a = 2324;
        
        #line 2330
        Arec.Rc.b = 'y';
        
        #line 2331
        Arec.Stc = _setLiteral75;
        
        #line 2332
        _new(Arec.p._ptr);
        
        #line 2333
        (*Arec.p._ptr) = 8454;
        
        #line 2334
        Output << _format(Arec.i, 1, 0) << ' ' << _format(_str(Arec.b), 5, 0) << ' ' << _format(Arec.c, 1, 0) << ' ' << _format(_ord(Arec.e), 1, 0) << ' ' << _format(_ord(Arec.Es), 1, 0) << ' ' << _format(Arec.s, 1, 0) << ' ' << _format(Arec.r, 15, 0) << ' ' << Arec.St << _WRITELN;
        
        #line 2337
        _FOR_TO(i, 1, 10)
        {
            #line 2337
            Output << _format(Arec.a[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2337
        Output << _WRITELN;
        
        #line 2338
        Output << _format(Arec.Rc.a, 1, 0) << ' ' << _format(Arec.Rc.b, 1, 0) << _WRITELN;
        
        #line 2339
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 2339
            if((Arec.Stc & Ci))
            {
                #line 2339
                Output << Ci;
            }
            else
            {
                #line 2339
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 2340
        Output << _WRITELN;
        
        #line 2341
        Output << _format((*Arec.p._ptr), 1, 0) << _WRITELN;
        
        #line 2342
        Output << "s/b:" << _WRITELN;
        
        #line 2343
        Output << "64 false j 1 3 12  4.54512000e-29 what ? who" << _WRITELN;
        
        #line 2344
        Output << "21 22 23 24 25 26 27 28 29 30" << _WRITELN;
        
        #line 2345
        Output << "2324 y" << _WRITELN;
        
        #line 2346
        Output << "_bcde___i_" << _WRITELN;
        
        #line 2347
        Output << "8454" << _WRITELN;
        
        #line 2348
        Output << "Record2:   " << _WRITELN;
        
        #line 2349
        Parec.i = 64;
        
        #line 2350
        Parec.b = C_false;
        
        #line 2351
        Parec.c = 'j';
        
        #line 2352
        Parec.e = C_two;
        
        #line 2353
        Parec.Es = C_four;
        
        #line 2354
        Parec.s = 12;
        
        #line 2355
        Parec.r = 4.54512e-29;
        
        #line 2356
        Parec.St = "what ? who";
        
        #line 2357
        _FOR_TO(i, 1, 10)
        {
            #line 2357
            Parec.a[i] = (i + 20);
        }
        _FOR_END(i)
        
        #line 2358
        Parec.Rc.a = 2324;
        
        #line 2359
        Parec.Rc.b = 'y';
        
        #line 2360
        Parec.Stc = _setLiteral76;
        
        #line 2361
        _new(Parec.p._ptr);
        
        #line 2362
        (*Parec.p._ptr) = 8454;
        
        #line 2363
        Output << _format(Parec.i, 1, 0) << ' ' << _format(_str(Parec.b), 5, 0) << ' ' << _format(Parec.c, 1, 0) << ' ' << _format(_ord(Parec.e), 1, 0) << ' ' << _format(_ord(Parec.Es), 1, 0) << ' ' << _format(Parec.s, 1, 0) << ' ' << _format(Parec.r, 15, 0) << ' ' << Parec.St << _WRITELN;
        
        #line 2366
        _FOR_TO(i, 1, 10)
        {
            #line 2366
            Output << _format(Parec.a[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2366
        Output << _WRITELN;
        
        #line 2367
        Output << _format(Parec.Rc.a, 1, 0) << ' ' << _format(Parec.Rc.b, 1, 0) << _WRITELN;
        
        #line 2368
        _FOR_TO(Ci, 'a', 'j')
        {
            #line 2368
            if((Parec.Stc & Ci))
            {
                #line 2368
                Output << Ci;
            }
            else
            {
                #line 2368
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 2369
        Output << _WRITELN;
        
        #line 2370
        Output << _format((*Parec.p._ptr), 1, 0) << _WRITELN;
        
        #line 2371
        Output << "s/b:" << _WRITELN;
        
        #line 2372
        Output << "64 false j 1 3 12  4.54512000e-29 what ? who" << _WRITELN;
        
        #line 2373
        Output << "21 22 23 24 25 26 27 28 29 30" << _WRITELN;
        
        #line 2374
        Output << "2324 y" << _WRITELN;
        
        #line 2375
        Output << "_bcde___i_" << _WRITELN;
        
        #line 2376
        Output << "8454" << _WRITELN;
        
        #line 2379
        Output << "Record3:   ";
        
        #line 2380
        Vra.i = 873;
        
        #line 2381
        Vra.Vt = C_vti;
        
        #line 2382
        Vra.a = 427;
        
        #line 2383
        Vra.Vdi = 235;
        
        #line 2384
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(Vra.Vdi, 1, 0) << ' ' << _format(Vra.a, 1, 0);
        
        #line 2385
        Output << " s/b 873 0 235 427" << _WRITELN;
        
        #line 2386
        Output << "Record4:   ";
        
        #line 2387
        Vra.i = 873;
        
        #line 2388
        Vra.Vt = C_vtb;
        
        #line 2389
        Vra.b = 427;
        
        #line 2390
        Vra.Vdb = C_true;
        
        #line 2391
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(_str(Vra.Vdb), 5, 0) << ' ' << _format(Vra.b, 1, 0);
        
        #line 2392
        Output << " s/b 873 1  true 427" << _WRITELN;
        
        #line 2393
        Output << "Record5:   ";
        
        #line 2394
        Vra.i = 873;
        
        #line 2395
        Vra.Vt = C_vtc;
        
        #line 2396
        Vra.c = 427;
        
        #line 2397
        Vra.Vdc = 'f';
        
        #line 2398
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << Vra.Vdc << ' ' << _format(Vra.c, 1, 0);
        
        #line 2399
        Output << " s/b 873 2 f 427" << _WRITELN;
        
        #line 2400
        Output << "Record6:   ";
        
        #line 2401
        Vra.i = 873;
        
        #line 2402
        Vra.Vt = C_vte;
        
        #line 2403
        Vra.d = 427;
        
        #line 2404
        Vra.Vde = C_nine;
        
        #line 2405
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(_ord(Vra.Vde), 1, 0) << ' ' << _format(Vra.d, 1, 0);
        
        #line 2406
        Output << " s/b 873 3 8 427" << _WRITELN;
        
        #line 2407
        Output << "Record7:   ";
        
        #line 2408
        Vra.i = 873;
        
        #line 2409
        Vra.Vt = C_vtes;
        
        #line 2410
        Vra.e = 427;
        
        #line 2411
        Vra.Vdes = C_four;
        
        #line 2412
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(_ord(Vra.Vdes), 1, 0) << ' ' << _format(Vra.e, 1, 0);
        
        #line 2413
        Output << " s/b 873 4 3 427" << _WRITELN;
        
        #line 2414
        Output << "Record8:   ";
        
        #line 2415
        Vra.i = 873;
        
        #line 2416
        Vra.Vt = C_vts;
        
        #line 2417
        Vra.f = 427;
        
        #line 2418
        Vra.Vds = 12;
        
        #line 2419
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(Vra.Vds, 1, 0) << ' ' << _format(Vra.f, 1, 0);
        
        #line 2420
        Output << " s/b 873 5 12 427" << _WRITELN;
        
        #line 2421
        Output << "Record9:   ";
        
        #line 2422
        Vra.i = 873;
        
        #line 2423
        Vra.Vt = C_vtr;
        
        #line 2424
        Vra.g = 427;
        
        #line 2425
        Vra.Vdr = 8734.84;
        
        #line 2426
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(Vra.Vdr, 1, 4) << ' ' << _format(Vra.g, 1, 0);
        
        #line 2427
        Output << " s/b 873 6 8734.8389 427" << _WRITELN;
        
        #line 2428
        Output << "Record10:  ";
        
        #line 2429
        Vra.i = 873;
        
        #line 2430
        Vra.Vt = C_vtst;
        
        #line 2431
        Vra.h = 427;
        
        #line 2432
        Vra.Vdst = "this one ?";
        
        #line 2433
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << Vra.Vdst << ' ' << _format(Vra.h, 1, 0);
        
        #line 2434
        Output << " s/b 873 7 this one ? 427" << _WRITELN;
        
        #line 2435
        Output << "Record11:  ";
        
        #line 2436
        Vra.i = 873;
        
        #line 2437
        Vra.Vt = C_vta;
        
        #line 2438
        Vra.j = 427;
        
        #line 2439
        _FOR_TO(i, 1, 10)
        {
            #line 2439
            Vra.Vda[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2440
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ';
        
        #line 2441
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2441
            Output << _format(Vra.Vda[i], 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2442
        Output << _format(Vra.j, 1, 0) << _WRITELN;
        
        #line 2443
        Output << "      s/b:  873 8 20 19 18 17 16 15 14 13 12 11 427" << _WRITELN;
        
        #line 2444
        Output << "Record12:  ";
        
        #line 2445
        Vra.i = 873;
        
        #line 2446
        Vra.Vt = C_vtrc;
        
        #line 2447
        Vra.k = 427;
        
        #line 2448
        Vra.Vdrc.a = 2387;
        
        #line 2449
        Vra.Vdrc.b = 't';
        
        #line 2450
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format(Vra.Vdrc.a, 1, 0) << ' ' << Vra.Vdrc.b << ' ' << _format(Vra.k, 1, 0);
        
        #line 2452
        Output << " s/b:  873 9 2387 t 427" << _WRITELN;
        
        #line 2453
        Output << "Record13:  ";
        
        #line 2454
        Vra.i = 873;
        
        #line 2455
        Vra.Vt = C_vtstc;
        
        #line 2456
        Vra.l = 427;
        
        #line 2457
        Vra.Vdstc = _setLiteral77;
        
        #line 2458
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ';
        
        #line 2459
        _FOR_DOWNTO(Ci, 'j', 'a')
        {
            #line 2459
            if((Vra.Vdstc & Ci))
            {
                #line 2459
                Output << Ci;
            }
            else
            {
                #line 2459
                Output << '_';
            }
        }
        _FOR_END(Ci)
        
        #line 2460
        Output << ' ' << _format(Vra.l, 1, 0) << _WRITELN;
        
        #line 2461
        Output << "      s/b:  873 10 _i_gfedcb_ 427" << _WRITELN;
        
        #line 2462
        Output << "Record14:  ";
        
        #line 2463
        Vra.i = 873;
        
        #line 2464
        Vra.Vt = C_vtp;
        
        #line 2465
        Vra.m = 427;
        
        #line 2466
        _new(Vra.Vdp._ptr);
        
        #line 2467
        (*Vra.Vdp._ptr) = 2394;
        
        #line 2468
        Output << _format(Vra.i, 1, 0) << ' ' << _format(_ord(Vra.Vt), 1, 0) << ' ' << _format((*Vra.Vdp._ptr), 1, 0) << ' ' << _format(Vra.m, 1, 0);
        
        #line 2469
        Output << " s/b 873 11 2394 427" << _WRITELN;
        
        #line 2472
        Output << "Record15:  ";
        
        #line 2473
        Vvrs.Vt = 10;
        
        #line 2474
        Vvrs.Vi = 2343;
        
        #line 2475
        Output << _format(Vvrs.Vt, 1, 0) << ' ' << _format(Vvrs.Vi, 1, 0);
        
        #line 2476
        Output << " s/b 10 2343" << _WRITELN;
        
        #line 2477
        Output << "Record16:  ";
        
        #line 2478
        Vvrs.Vt = 19;
        
        #line 2479
        Vvrs.Vb = C_true;
        
        #line 2480
        Output << _format(Vvrs.Vt, 1, 0) << ' ' << _format(_str(Vvrs.Vb), 5, 0);
        
        #line 2481
        Output << " s/b 19  true" << _WRITELN;
        
        #line 2482
        Output << "Record17:  ";
        
        #line 2483
        Vvrb.Vt = C_true;
        
        #line 2484
        Vvrb.Vi = 2343;
        
        #line 2485
        Output << _format(_str(Vvrb.Vt), 5, 0) << ' ' << _format(Vvrb.Vi, 1, 0);
        
        #line 2486
        Output << " s/b  true 2343" << _WRITELN;
        
        #line 2487
        Output << "Record18:  ";
        
        #line 2488
        Vvrb.Vt = C_false;
        
        #line 2489
        Vvrb.Vb = C_true;
        
        #line 2490
        Output << _format(_str(Vvrb.Vt), 5, 0) << ' ' << _format(_str(Vvrb.Vb), 5, 0);
        
        #line 2491
        Output << " s/b false  true" << _WRITELN;
        
        #line 2492
        Output << "Record19:  ";
        
        #line 2493
        Vvre.Vt = C_three;
        
        #line 2494
        Vvre.Vi = 2343;
        
        #line 2495
        Output << _format(_ord(Vvre.Vt), 1, 0) << ' ' << _format(Vvre.Vi, 1, 0);
        
        #line 2496
        Output << " s/b 2 2343" << _WRITELN;
        
        #line 2497
        Output << "Record20:  ";
        
        #line 2498
        Vvre.Vt = C_eight;
        
        #line 2499
        Vvre.Vb = C_true;
        
        #line 2500
        Output << _format(_ord(Vvre.Vt), 1, 0) << ' ' << _format(_str(Vvre.Vb), 5, 0);
        
        #line 2501
        Output << " s/b 7  true" << _WRITELN;
        
        #line 2502
        Output << "Record21:  ";
        
        #line 2503
        Vvres.Vt = C_four;
        
        #line 2504
        Vvres.Vi = 2343;
        
        #line 2505
        Output << _format(_ord(Vvres.Vt), 1, 0) << ' ' << _format(Vvres.Vi, 1, 0);
        
        #line 2506
        Output << " s/b 3 2343" << _WRITELN;
        
        #line 2507
        Output << "Record22:  ";
        
        #line 2508
        Vvres.Vt = C_five;
        
        #line 2509
        Vvres.Vb = C_true;
        
        #line 2510
        Output << _format(_ord(Vvres.Vt), 1, 0) << ' ' << _format(_str(Vvres.Vb), 5, 0);
        
        #line 2511
        Output << " s/b 4  true" << _WRITELN;
        
        #line 2514
        Output << "Record23:  ";
        
        #line 2515
        Nvr.i = 1;
        
        #line 2516
        Nvr.r.i = 2;
        
        #line 2517
        Nvr.r.r.i = 3;
        
        #line 2518
        Nvr.r.r.r.i = 4;
        
        #line 2519
        Nvr.r.r.r.r.i = 5;
        
        #line 2520
        Nvr.r.r.r.r.r.i = 6;
        
        #line 2521
        Nvr.r.r.r.r.r.r.i = 7;
        
        #line 2522
        Nvr.r.r.r.r.r.r.r.i = 8;
        
        #line 2523
        Nvr.r.r.r.r.r.r.r.r.i = 9;
        
        #line 2524
        Nvr.r.r.r.r.r.r.r.r.r.i = 10;
        
        #line 2525
        Output << _format(Nvr.i, 1, 0) << ' ' << _format(Nvr.r.i, 1, 0) << ' ' << _format(Nvr.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.r.r.i, 1, 0) << ' ' << "s/b 1 2 3 4 5 6 7 8 9 10" << _WRITELN;
        
        #line 2538
        Output << "Record24:  ";
        
        #line 2541
        Nvr.i = 10;
        
        #line 2544
        Nvr.r.i = 9;
        
        #line 2547
        Nvr.r.r.i = 8;
        
        #line 2550
        Nvr.r.r.r.i = 7;
        
        #line 2553
        Nvr.r.r.r.r.i = 6;
        
        #line 2556
        Nvr.r.r.r.r.r.i = 5;
        
        #line 2559
        Nvr.r.r.r.r.r.r.i = 4;
        
        #line 2562
        Nvr.r.r.r.r.r.r.r.i = 3;
        
        #line 2565
        Nvr.r.r.r.r.r.r.r.r.i = 2;
        
        #line 2568
        Nvr.r.r.r.r.r.r.r.r.r.i = 2;
        
        #line 2571
        Nvr.r.r.r.r.r.r.r.r.r.i = 1;
        
        #line 2594
        Output << _format(Nvr.i, 1, 0) << ' ' << _format(Nvr.r.i, 1, 0) << ' ' << _format(Nvr.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.r.r.i, 1, 0) << ' ' << "s/b 10 9 8 7 6 5 4 3 2 1" << _WRITELN;
        
        #line 2605
        Output << "Record25:  ";
        
        #line 2606
        Nvr.r.r.r.r.r.r.r.r.r.i = 76;
        
        #line 2607
        Output << _format(Nvr.i, 1, 0) << ' ' << _format(Nvr.r.i, 1, 0) << ' ' << _format(Nvr.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.r.i, 1, 0) << ' ' << _format(Nvr.r.r.r.r.r.r.r.r.r.i, 1, 0) << ' ' << "s/b 10 9 8 7 6 5 4 3 2 76" << _WRITELN;
        
        #line 2618
        Output << "Record26:  ";
        
        #line 2619
        _new(Rpa._ptr);
        
        #line 2622
        (*Rpa._ptr).i = 1;
        
        #line 2623
        (*Rpa._ptr).Rc.b = 'g';
        
        #line 2626
        Output << _format((*Rpa._ptr).i, 1, 0) << ' ' << (*Rpa._ptr).Rc.b << " s/b 1 g" << _WRITELN;
        
        #line 2627
        Output << "Record27:  ";
        
        #line 2628
        _FOR_TO(i, 1, 10)
        {
            #line 2628
            Ara[i].a = (i + 10);
        }
        _FOR_END(i)
        
        #line 2629
        _FOR_DOWNTO(i, 10, 1)
        {
            #line 2629
            Output << _format(Ara[i].a, 1, 0) << ' ';
        }
        _FOR_END(i)
        
        #line 2630
        Output << "s/b 20 19 18 17 16 15 14 13 12 11" << _WRITELN;
        
        #line 2638
        if(C_testfile)
        {
            #line 2640
            Output << _WRITELN;
            
            #line 2641
            Output << "******************* files ******************************" << _WRITELN;
            
            #line 2642
            Output << _WRITELN;
            
            #line 2645
            Output << "File1:   ";
            
            #line 2646
            _rewrite(Fi);
            
            #line 2647
            _FOR_TO(i, 1, 10)
            {
                #line 2647
                Fi << (i + 10);
            }
            _FOR_END(i)
            
            #line 2648
            _reset(Fi);
            
            #line 2649
            _FOR_TO(i, 1, 10)
            {
                #line 2649
                Fi >> x;
                
                #line 2649
                Output << _format(x, 1, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2650
            Output << "s/b 11 12 13 14 15 16 17 18 19 20" << _WRITELN;
            
            #line 2651
            Output << "File2:   ";
            
            #line 2652
            _rewrite(Pfi);
            
            #line 2653
            _FOR_TO(i, 1, 10)
            {
                #line 2653
                Pfi << (i + 10);
            }
            _FOR_END(i)
            
            #line 2654
            _reset(Pfi);
            
            #line 2655
            _FOR_TO(i, 1, 10)
            {
                #line 2655
                Pfi >> x;
                
                #line 2655
                Output << _format(x, 1, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2656
            Output << "s/b 11 12 13 14 15 16 17 18 19 20" << _WRITELN;
            
            #line 2657
            Output << "File3:   ";
            
            #line 2658
            _rewrite(Fb);
            
            #line 2659
            _FOR_TO(i, 1, 10)
            {
                #line 2659
                Fb << _str(_odd(i));
            }
            _FOR_END(i)
            
            #line 2660
            _reset(Fb);
            
            #line 2661
            _FOR_TO(i, 1, 10)
            {
                #line 2661
                Fb >> Ba;
                
                #line 2661
                Output << _format(_str(Ba), 5, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2662
            Output << _WRITELN;
            
            #line 2663
            Output << "   s/b:    true false  true false  true false  true false  true " << "false" << _WRITELN;
            
            #line 2665
            Output << "File4:   ";
            
            #line 2666
            _rewrite(Pfb);
            
            #line 2667
            _FOR_TO(i, 1, 10)
            {
                #line 2667
                Pfb << _str(_odd(i));
            }
            _FOR_END(i)
            
            #line 2668
            _reset(Pfb);
            
            #line 2669
            _FOR_TO(i, 1, 10)
            {
                #line 2669
                Pfb >> Ba;
                
                #line 2669
                Output << _format(_str(Ba), 5, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2670
            Output << _WRITELN;
            
            #line 2671
            Output << "   s/b:    true false  true false  true false  true false  true " << "false" << _WRITELN;
            
            #line 2673
            Output << "File5:   ";
            
            #line 2674
            _rewrite(Fc);
            
            #line 2675
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2675
                Fc << Ci;
            }
            _FOR_END(Ci)
            
            #line 2676
            _reset(Fc);
            
            #line 2677
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2677
                Fc >> Ca;
                
                #line 2677
                Output << Ca << ' ';
            }
            _FOR_END(Ci)
            
            #line 2678
            Output << "s/b a b c d e f g h i j" << _WRITELN;
            
            #line 2679
            Output << "File6:   ";
            
            #line 2680
            _rewrite(Pfc);
            
            #line 2681
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2681
                Pfc << Ci;
            }
            _FOR_END(Ci)
            
            #line 2682
            _reset(Pfc);
            
            #line 2683
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2683
                Pfc >> Ca;
                
                #line 2683
                Output << Ca << ' ';
            }
            _FOR_END(Ci)
            
            #line 2684
            Output << "s/b a b c d e f g h i j" << _WRITELN;
            
            #line 2685
            Output << "File7:   ";
            
            #line 2686
            _rewrite(Fe);
            
            #line 2687
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2687
                Fe << Ei;
            }
            _FOR_END(Ei)
            
            #line 2688
            _reset(Fe);
            
            #line 2689
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2689
                Fe >> Ea;
                
                #line 2689
                Output << _format(_ord(Ea), 1, 0) << ' ';
            }
            _FOR_END(Ei)
            
            #line 2690
            Output << "s/b 0 1 2 3 4 5 6 7 8 9" << _WRITELN;
            
            #line 2691
            Output << "File8:   ";
            
            #line 2692
            _rewrite(Pfe);
            
            #line 2693
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2693
                Pfe << Ei;
            }
            _FOR_END(Ei)
            
            #line 2694
            _reset(Pfe);
            
            #line 2695
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2695
                Pfe >> Ea;
                
                #line 2695
                Output << _format(_ord(Ea), 1, 0) << ' ';
            }
            _FOR_END(Ei)
            
            #line 2696
            Output << "s/b 0 1 2 3 4 5 6 7 8 9" << _WRITELN;
            
            #line 2699
            Output << "File9:" << _WRITELN;
            
            #line 2700
            _rewrite(Ft);
            
            #line 2701
            x = 7384;
            
            #line 2702
            Ft << _format(x, 1, 0) << _WRITELN;
            
            #line 2703
            Ft << _format(8342, 1, 0) << _WRITELN;
            
            #line 2704
            Ba = C_true;
            
            #line 2705
            Ft << _format(_str(Ba), 5, 0) << _WRITELN;
            
            #line 2706
            Ft << _format(_str(C_false), 5, 0) << _WRITELN;
            
            #line 2707
            Ca = 'm';
            
            #line 2708
            Ft << Ca << _WRITELN;
            
            #line 2709
            Ft << 'q' << _WRITELN;
            
            #line 2710
            Ra = 1.23457;
            
            #line 2711
            Ft << _format(Ra, 15, 0) << _WRITELN;
            
            #line 2712
            Ft << _format(Ra, 1, 7) << _WRITELN;
            
            #line 2713
            Ft << _format(56.8943, 15, 0) << _WRITELN;
            
            #line 2714
            Ft << _format(0.938376, 1, 8) << _WRITELN;
            
            #line 2715
            s = "hi there !";
            
            #line 2716
            Ft << s << _WRITELN;
            
            #line 2717
            Ft << _format(s, 5, 0) << _WRITELN;
            
            #line 2718
            Ft << _format(s, 15, 0) << _WRITELN;
            
            #line 2719
            _reset(Ft);
            
            #line 2720
            while((!_eof(Ft)))
            {
                #line 2722
                if(_eoln(Ft))
                {
                    #line 2724
                    Ft >> _READLN;
                    
                    #line 2725
                    Output << _WRITELN;
                }
                else
                {
                    #line 2729
                    Ft >> Ci;
                    
                    #line 2730
                    Output << Ci;
                }
            }
            
            #line 2735
            Output << "s/b:" << _WRITELN;
            
            #line 2736
            Output << "7384" << _WRITELN;
            
            #line 2737
            Output << "8342" << _WRITELN;
            
            #line 2738
            Output << " true" << _WRITELN;
            
            #line 2739
            Output << "false" << _WRITELN;
            
            #line 2740
            Output << 'm' << _WRITELN;
            
            #line 2741
            Output << 'q' << _WRITELN;
            
            #line 2742
            Output << " 1.2345678000e+00" << _WRITELN;
            
            #line 2743
            Output << "1.2345678" << _WRITELN;
            
            #line 2744
            Output << " 5.6894321000e+01" << _WRITELN;
            
            #line 2745
            Output << "0.93837632" << _WRITELN;
            
            #line 2746
            Output << "hi there !" << _WRITELN;
            
            #line 2747
            Output << "hi th" << _WRITELN;
            
            #line 2748
            Output << "     hi there !" << _WRITELN;
            
            #line 2751
            Output << "file10:" << _WRITELN;
            
            #line 2752
            _reset(Ft);
            
            #line 2753
            Ft >> y >> _READLN;
            
            #line 2754
            Output << _format(y, 1, 0) << _WRITELN;
            
            #line 2755
            Ft >> y >> _READLN;
            
            #line 2756
            Output << _format(y, 1, 0) << _WRITELN;
            
            #line 2757
            Ft >> _READLN;
            
            #line 2758
            Ft >> _READLN;
            
            #line 2759
            Ft >> Ci >> _READLN;
            
            #line 2760
            Output << Ci << _WRITELN;
            
            #line 2761
            Ft >> Ci >> _READLN;
            
            #line 2762
            Output << Ci << _WRITELN;
            
            #line 2763
            Ft >> Rb >> _READLN;
            
            #line 2764
            Output << _format(Rb, 15, 0) << _WRITELN;
            
            #line 2765
            Ft >> Rb >> _READLN;
            
            #line 2766
            Output << _format(Rb, 15, 0) << _WRITELN;
            
            #line 2767
            Ft >> Rb >> _READLN;
            
            #line 2768
            Output << _format(Rb, 15, 0) << _WRITELN;
            
            #line 2769
            Ft >> Rb >> _READLN;
            
            #line 2770
            Output << _format(Rb, 15, 0) << _WRITELN;
            
            #line 2771
            Output << "s/b:" << _WRITELN;
            
            #line 2772
            Output << "7384" << _WRITELN;
            
            #line 2773
            Output << "8342" << _WRITELN;
            
            #line 2774
            Output << 'm' << _WRITELN;
            
            #line 2775
            Output << 'q' << _WRITELN;
            
            #line 2776
            Output << " 1.2345678000e+00" << _WRITELN;
            
            #line 2777
            Output << " 1.2345678000e+00" << _WRITELN;
            
            #line 2778
            Output << " 5.6894321000e+01" << _WRITELN;
            
            #line 2779
            Output << " 9.3837632000e+01" << _WRITELN;
            
            #line 2782
            Output << "file11:" << _WRITELN;
            
            #line 2783
            _rewrite(Ft);
            
            #line 2784
            Ft << "how now" << _WRITELN;
            
            #line 2785
            Ft << "brown cow" << _WRITELN;
            
            #line 2786
            _reset(Ft);
            
            #line 2787
            Output << '\'';
            
            #line 2788
            while((!_eof(Ft)))
            {
                #line 2790
                if(_eoln(Ft))
                {
                    #line 2790
                    Output << "<eoln>";
                }
                
                #line 2791
                Ft >> Ca;
                
                #line 2792
                Output << Ca;
            }
            
            #line 2795
            Output << '\'';
            
            #line 2796
            Output << " s/b 'how now<eoln> brown cow<eoln> '" << _WRITELN;
            
            #line 2797
            Output << "file12:" << _WRITELN;
            
            #line 2798
            _rewrite(Ft);
            
            #line 2799
            Ft << "too much" << _WRITELN;
            
            #line 2800
            Ft << "too soon";
            
            #line 2801
            _reset(Ft);
            
            #line 2802
            Output << '\'';
            
            #line 2803
            while((!_eof(Ft)))
            {
                #line 2805
                if(_eoln(Ft))
                {
                    #line 2805
                    Output << "<eoln>";
                }
                
                #line 2806
                Ft >> Ca;
                
                #line 2807
                Output << Ca;
            }
            
            #line 2810
            Output << '\'';
            
            #line 2811
            Output << " s/b 'too much<eoln> too soon<eoln> '" << _WRITELN;
            
            #line 2814
            Output << "File13:   ";
            
            #line 2815
            _rewrite(Fi);
            
            #line 2816
            _FOR_TO(i, 1, 10)
            {
                #line 2816
                Fi.bufferVar() = (i + 10);
                
                #line 2816
                _put(Fi);
            }
            _FOR_END(i)
            
            #line 2817
            _reset(Fi);
            
            #line 2818
            _FOR_TO(i, 1, 10)
            {
                #line 2818
                x = Fi.bufferVar();
                
                #line 2818
                _get(Fi);
                
                #line 2818
                Output << _format(x, 1, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2819
            Output << "s/b 11 12 13 14 15 16 17 18 19 20" << _WRITELN;
            
            #line 2820
            Output << "File14:   ";
            
            #line 2821
            _rewrite(Pfi);
            
            #line 2822
            _FOR_TO(i, 1, 10)
            {
                #line 2822
                Pfi.bufferVar() = (i + 10);
                
                #line 2822
                _put(Pfi);
            }
            _FOR_END(i)
            
            #line 2823
            _reset(Pfi);
            
            #line 2824
            _FOR_TO(i, 1, 10)
            {
                #line 2824
                x = Pfi.bufferVar();
                
                #line 2824
                _get(Pfi);
                
                #line 2824
                Output << _format(x, 1, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2825
            Output << "s/b 11 12 13 14 15 16 17 18 19 20" << _WRITELN;
            
            #line 2826
            Output << "File15:   ";
            
            #line 2827
            _rewrite(Fb);
            
            #line 2828
            _FOR_TO(i, 1, 10)
            {
                #line 2828
                Fb.bufferVar() = _odd(i);
                
                #line 2828
                _put(Fb);
            }
            _FOR_END(i)
            
            #line 2829
            _reset(Fb);
            
            #line 2830
            _FOR_TO(i, 1, 10)
            {
                #line 2830
                Ba = Fb.bufferVar();
                
                #line 2830
                _get(Fb);
                
                #line 2830
                Output << _format(_str(Ba), 5, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2831
            Output << _WRITELN;
            
            #line 2832
            Output << "   s/b:    true false  true false  true false  true false  true " << "false" << _WRITELN;
            
            #line 2834
            Output << "File16:   ";
            
            #line 2835
            _rewrite(Pfb);
            
            #line 2836
            _FOR_TO(i, 1, 10)
            {
                #line 2836
                Pfb.bufferVar() = _odd(i);
                
                #line 2836
                _put(Pfb);
            }
            _FOR_END(i)
            
            #line 2837
            _reset(Pfb);
            
            #line 2838
            _FOR_TO(i, 1, 10)
            {
                #line 2838
                Ba = Pfb.bufferVar();
                
                #line 2838
                _get(Pfb);
                
                #line 2838
                Output << _format(_str(Ba), 5, 0) << ' ';
            }
            _FOR_END(i)
            
            #line 2839
            Output << _WRITELN;
            
            #line 2840
            Output << "   s/b:    true false  true false  true false  true false  true " << "false" << _WRITELN;
            
            #line 2842
            Output << "File17:   ";
            
            #line 2843
            _rewrite(Fc);
            
            #line 2844
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2844
                Fc.bufferVar() = Ci;
                
                #line 2844
                _put(Fc);
            }
            _FOR_END(Ci)
            
            #line 2845
            _reset(Fc);
            
            #line 2846
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2846
                Ca = Fc.bufferVar();
                
                #line 2846
                _get(Fc);
                
                #line 2846
                Output << Ca << ' ';
            }
            _FOR_END(Ci)
            
            #line 2847
            Output << "s/b a b c d e f g h i j" << _WRITELN;
            
            #line 2848
            Output << "File18:   ";
            
            #line 2849
            _rewrite(Pfc);
            
            #line 2850
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2850
                Pfc.bufferVar() = Ci;
                
                #line 2850
                _put(Pfc);
            }
            _FOR_END(Ci)
            
            #line 2851
            _reset(Pfc);
            
            #line 2852
            _FOR_TO(Ci, 'a', 'j')
            {
                #line 2852
                Ca = Pfc.bufferVar();
                
                #line 2852
                _get(Pfc);
                
                #line 2852
                Output << Ca << ' ';
            }
            _FOR_END(Ci)
            
            #line 2853
            Output << "s/b a b c d e f g h i j" << _WRITELN;
            
            #line 2854
            Output << "File19:   ";
            
            #line 2855
            _rewrite(Fe);
            
            #line 2856
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2856
                Fe.bufferVar() = Ei;
                
                #line 2856
                _put(Fe);
            }
            _FOR_END(Ei)
            
            #line 2857
            _reset(Fe);
            
            #line 2858
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2858
                Ea = Fe.bufferVar();
                
                #line 2858
                _get(Fe);
                
                #line 2858
                Output << _format(_ord(Ea), 1, 0) << ' ';
            }
            _FOR_END(Ei)
            
            #line 2859
            Output << "s/b 0 1 2 3 4 5 6 7 8 9" << _WRITELN;
            
            #line 2860
            Output << "File20:   ";
            
            #line 2861
            _rewrite(Pfe);
            
            #line 2862
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2862
                Pfe.bufferVar() = Ei;
                
                #line 2862
                _put(Pfe);
            }
            _FOR_END(Ei)
            
            #line 2863
            _reset(Pfe);
            
            #line 2864
            _FOR_TO(Ei, C_one, C_ten)
            {
                #line 2864
                Ea = Pfe.bufferVar();
                
                #line 2864
                _get(Pfe);
                
                #line 2864
                Output << _format(_ord(Ea), 1, 0) << ' ';
            }
            _FOR_END(Ei)
            
            #line 2865
            Output << "s/b 0 1 2 3 4 5 6 7 8 9" << _WRITELN;
            
            #line 2866
            Output << "File21:   ";
            
            #line 2867
            _rewrite(Ft);
            
            #line 2868
            Ft << "50" << _WRITELN;
            
            #line 2869
            _reset(Ft);
            
            #line 2870
            Ft >> Srx;
            
            #line 2871
            Output << " s/b " << _format(50, 1, 0) << _WRITELN;
            
            #line 2872
            Output << "File22:   ";
            
            #line 2873
            _rewrite(Ft);
            
            #line 2874
            Output << _str(_eof(Ft)) << " s/b true" << _WRITELN;
            
            { /* NOP */ }
        }
        
        #line 2884
        Output << _WRITELN;
        
        #line 2885
        Output << "************ Procedures and functions ******************" << _WRITELN;
        
        #line 2886
        Output << _WRITELN;
        
        #line 2887
        Output << "ProcedureFunction1:   ";
        
        #line 2888
        x = 45;
        
        #line 2888
        y = 89;
        
        #line 2889
        P_junk1(nullptr, x, y);
        
        #line 2890
        Output << " s/b 45 89" << _WRITELN;
        
        #line 2891
        Output << "ProcedureFunction2:   ";
        
        #line 2892
        x = 45;
        
        #line 2892
        P_junk2(nullptr, x);
        
        #line 2893
        Output << _format(x, 1, 0) << " s/b 46" << _WRITELN;
        
        #line 2894
        Output << "ProcedureFunction3:   ";
        
        #line 2895
        s = "total junk";
        
        #line 2896
        P_junk3(nullptr, s);
        
        #line 2897
        Output << " s/b total junk" << _WRITELN;
        
        #line 2898
        Output << "ProcedureFunction4:   ";
        
        #line 2899
        s = "total junk";
        
        #line 2900
        P_junk4(nullptr, s);
        
        #line 2901
        Output << " s/b tota? junk" << _WRITELN;
        
        #line 2902
        Output << s << " s/b total junk" << _WRITELN;
        
        #line 2903
        Output << "ProcedureFunction5:   ";
        
        #line 2904
        Output << _format(F_junk5(nullptr, 34), 1, 0) << " s/b 35" << _WRITELN;
        
        #line 2905
        Output << "ProcedureFunction6:   ";
        
        #line 2906
        i = F_junk7(nullptr, 10, 9, 8);
        
        #line 2907
        Output << ' ' << _format(i, 1, 0) << _WRITELN;
        
        #line 2908
        Output << "s/b:   10 9 8 6 5 4 3 2 1 78" << _WRITELN;
        
        #line 2909
        Output << "ProcedureFunction7:" << _WRITELN;
        
        #line 2910
        _FOR_TO(i, 1, 10)
        {
            #line 2910
            Ai[i] = (i + 10);
        }
        _FOR_END(i)
        
        #line 2911
        Arec.i = 64;
        
        #line 2912
        Arec.b = C_false;
        
        #line 2913
        Arec.c = 'j';
        
        #line 2914
        Arec.e = C_two;
        
        #line 2915
        Arec.Es = C_four;
        
        #line 2916
        Arec.s = 12;
        
        #line 2917
        Arec.r = 4.54512e-29;
        
        #line 2918
        Arec.St = "what ? who";
        
        #line 2919
        _FOR_TO(i, 1, 10)
        {
            #line 2919
            Arec.a[i] = (i + 20);
        }
        _FOR_END(i)
        
        #line 2920
        Arec.Rc.a = 2324;
        
        #line 2921
        Arec.Rc.b = 'y';
        
        #line 2922
        Arec.Stc = _setLiteral78;
        
        #line 2923
        _new(Arec.p._ptr);
        
        #line 2924
        (*Arec.p._ptr) = 8454;
        
        #line 2925
        Vrec.a = 23487;
        
        #line 2926
        Vrec.b = 'n';
        
        #line 2927
        Vrec.c = C_false;
        
        #line 2928
        Vrec.d = "help me123";
        
        #line 2929
        _new(Ip._ptr);
        
        #line 2930
        (*Ip._ptr) = 734;
        
        #line 2931
        P_junk8(nullptr, 93, C_true, 'k', C_eight, T_esub::C(C_five), T_subr::C(10), 3.14140, T_string10::C("hello, guy"), Ai, Arec, Vrec, T_cset::C(_setLiteral79), Ip);
        
        #line 2933
        Output << "s/b:" << _WRITELN;
        
        #line 2934
        Output << "93  true k 7 4 10  3.14140000e+00 hello, guy" << _WRITELN;
        
        #line 2935
        Output << "11 12 13 14 15 16 17 18 19 20" << _WRITELN;
        
        #line 2936
        Output << "64 false j 1 3 12  4.54500000e-29 what ? who" << _WRITELN;
        
        #line 2937
        Output << "21 22 23 24 25 26 27 28 29 30" << _WRITELN;
        
        #line 2938
        Output << "2324 y" << _WRITELN;
        
        #line 2939
        Output << "_bcde___i_" << _WRITELN;
        
        #line 2940
        Output << "8454" << _WRITELN;
        
        #line 2941
        Output << "23487 n false" << _WRITELN;
        
        #line 2942
        Output << "help me123" << _WRITELN;
        
        #line 2943
        Output << "abcd___h__" << _WRITELN;
        
        #line 2944
        Output << "734" << _WRITELN;
        
        #line 2945
        Output << "ProcedureFunction8:   ";
        
        #line 2946
        P_junk9(nullptr, _makePfn(P_junk10, nullptr), _makePfn(F_junk11, nullptr));
        
        #line 2947
        Output << " s/b 9834 8383 j 744" << _WRITELN;
        
        #line 2948
        Output << "ProcedureFunction9:   ";
        
        #line 2949
        P_junk12(nullptr, _makePfn(P_junk13, nullptr), _makePfn(F_junk11, nullptr));
        
        #line 2950
        Output << " s/b 942" << _WRITELN;
        
        #line 2951
        Output << "ProcedureFunction10:   ";
        
        #line 2952
        P_junk14(nullptr);
        
        #line 2953
        Output << " s/b 62 76" << _WRITELN;
        
        #line 2954
        Output << "ProcedureFunction11:   ";
        
        #line 2955
        P_junk17(nullptr, _makePfn(P_junk16, nullptr), 52);
        
        #line 2956
        Output << " s/b 52" << _WRITELN;
        
        #line 2957
        Output << "ProcedureFunction12:   ";
        
        #line 2958
        P_junk19(nullptr);
        
        #line 2959
        Output << " s/b a" << _WRITELN;
        
        #line 2960
        Output << "ProcedureFunction13:   ";
        
        #line 2961
        Output << _format(F_junk20(nullptr), 1, 0) << " s/b 37" << _WRITELN;
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_2:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


#line 398
//================================================================================
// scope: junk1 (level : 2)

// activation record
struct Frame_junk1
{
    // parameters
    T_integer z;
    T_integer q;
};

// function body
void P_junk1(void* _slink, T_integer z, T_integer q)
{
    // prologue/frame definition
    Frame_junk1 _F = {z, q };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 402
    Output << _format(_F.z, 1, 0) << ' ' << _format(_F.q, 1, 0);
    
    { /* NOP */ }
}


#line 406
//================================================================================
// scope: junk2 (level : 2)

// activation record
struct Frame_junk2
{
    // parameters
    T_integer& z;
};

// function body
void P_junk2(void* _slink, T_integer& z)
{
    // prologue/frame definition
    Frame_junk2 _F = {z };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 410
    _F.z = (_F.z + 1);
}


#line 414
//================================================================================
// scope: junk3 (level : 2)

// activation record
struct Frame_junk3
{
    // parameters
    T_string10& p;
};

// function body
void P_junk3(void* _slink, T_string10& p)
{
    // prologue/frame definition
    Frame_junk3 _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 418
    Output << _F.p;
}


#line 422
//================================================================================
// scope: junk4 (level : 2)

// activation record
struct Frame_junk4
{
    // parameters
    T_string10 p;
};

// function body
void P_junk4(void* _slink, T_string10 p)
{
    // prologue/frame definition
    Frame_junk4 _F = {p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 426
    _F.p[5] = '?';
    
    #line 427
    Output << _F.p;
}


#line 431
//================================================================================
// scope: junk5 (level : 2)

// activation record
struct Frame_junk5
{
    // parameters
    T_integer x;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_junk5(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_junk5 _F = {x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 435
    _F._fnvalue = (_F.x + 1);
    
    // epilogue
    return _F._fnvalue;
}


#line 439
//================================================================================
// scope: junk6 (level : 2)

// activation record
struct Frame_junk6
{};

// function body
void P_junk6(void* _slink)
{
    // prologue/frame definition
    Frame_junk6 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 443
    throw NL_2;
}


#line 449
//================================================================================
// scope: junk7 (level : 2)

// activation record
struct Frame_junk7
{
    // parameters
    T_integer a;
    T_integer b;
    T_integer c;

    // locals
    T_integer _fnvalue;
    T_integer x;
    T_integer y;
    T_integer z;
};

// function body
T_integer F_junk7(void* _slink, T_integer a, T_integer b, T_integer c)
{
    // prologue/frame definition
    Frame_junk7 _F = {a, b, c };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 455
    _F.x = 1;
    
    #line 456
    _F.y = 2;
    
    #line 457
    _F.z = 3;
    
    #line 458
    Output << _format(_F.a, 1, 0) << ' ' << _format(_F.b, 1, 0) << ' ' << _format(_F.c, 1, 0) << ' ';
    
    #line 459
    _F.a = 4;
    
    #line 460
    _F.b = 5;
    
    #line 461
    _F.c = 6;
    
    #line 462
    Output << _format(_F.c, 1, 0) << ' ' << _format(_F.b, 1, 0) << ' ' << _format(_F.a, 1, 0) << ' ' << _format(_F.z, 1, 0) << ' ' << _format(_F.y, 1, 0) << ' ' << _format(_F.x, 1, 0);
    
    #line 463
    _F._fnvalue = 78;
    
    // epilogue
    return _F._fnvalue;
}


#line 467
//================================================================================
// scope: junk8 (level : 2)

// activation record
struct Frame_junk8
{
    // parameters
    T_integer a;
    T_boolean b;
    T_char c;
    T_enum e;
    T_esub Es;
    T_subr s;
    T_real r;
    T_string10 St;
    T_arri Ar;
    T_rec Rc;
    T_recv Rv;
    T_cset Stc;
    T_iptr p;

    // locals
    T_char Ci;
    T_integer i;
};

// function body
void P_junk8(void* _slink, T_integer a, T_boolean b, T_char c, T_enum e, T_esub Es, T_subr s, T_real r, T_string10 St, T_arri Ar, T_rec Rc, T_recv Rv, T_cset Stc, T_iptr p)
{
    // prologue/frame definition
    Frame_junk8 _F = {a, b, c, e, Es, s, r, St, Ar, Rc, Rv, Stc, p };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 476
    Output << _format(_F.a, 1, 0) << ' ' << _format(_str(_F.b), 5, 0) << ' ' << _format(_F.c, 1, 0) << ' ' << _format(_ord(_F.e), 1, 0) << ' ' << _format(_ord(_F.Es), 1, 0) << ' ' << _format(_F.s, 1, 0) << ' ' << _format(_F.r, 15, 0) << ' ' << _F.St << _WRITELN;
    
    #line 478
    _FOR_TO(_F.i, 1, 10)
    {
        #line 478
        Output << _format(_F.Ar[_F.i], 1, 0) << ' ';
    }
    _FOR_END(_F.i)
    
    #line 478
    Output << _WRITELN;
    
    #line 479
    Output << _format(_F.Rc.i, 1, 0) << ' ' << _format(_str(_F.Rc.b), 5, 0) << ' ' << _format(_F.Rc.c, 1, 0) << ' ' << _format(_ord(_F.Rc.e), 1, 0) << ' ' << _format(_ord(_F.Rc.Es), 1, 0) << ' ' << _format(_F.Rc.s, 1, 0) << ' ' << _format(_F.Rc.r, 15, 0) << ' ' << _F.Rc.St << _WRITELN;
    
    #line 481
    _FOR_TO(_F.i, 1, 10)
    {
        #line 481
        Output << _format(_F.Rc.a[_F.i], 1, 0) << ' ';
    }
    _FOR_END(_F.i)
    
    #line 481
    Output << _WRITELN;
    
    #line 482
    Output << _format(_F.Rc.Rc.a, 1, 0) << ' ' << _format(_F.Rc.Rc.b, 1, 0) << _WRITELN;
    
    #line 483
    _FOR_TO(_F.Ci, 'a', 'j')
    {
        #line 483
        if((_F.Rc.Stc & _F.Ci))
        {
            #line 483
            Output << _F.Ci;
        }
        else
        {
            #line 483
            Output << '_';
        }
    }
    _FOR_END(_F.Ci)
    
    #line 484
    Output << _WRITELN;
    
    #line 485
    Output << _format((*_F.Rc.p._ptr), 1, 0) << _WRITELN;
    
    #line 486
    Output << _format(_F.Rv.a, 1, 0) << ' ' << _format(_F.Rv.b, 1, 0) << ' ' << _format(_str(_F.Rv.c), 5, 0) << _WRITELN;
    
    #line 487
    if(_F.Rv.c)
    {
        #line 487
        Output << _format(_ord(_F.Rv.e), 1, 0) << _WRITELN;
    }
    else
    {
        #line 487
        Output << _F.Rv.d << _WRITELN;
    }
    
    #line 488
    _FOR_TO(_F.Ci, 'a', 'j')
    {
        #line 488
        if((_F.Stc & _F.Ci))
        {
            #line 488
            Output << _F.Ci;
        }
        else
        {
            #line 488
            Output << '_';
        }
    }
    _FOR_END(_F.Ci)
    
    #line 489
    Output << _WRITELN;
    
    #line 490
    Output << _format((*_F.p._ptr), 1, 0) << _WRITELN;
}


#line 494
//================================================================================
// scope: junk9 (level : 2)

// activation record
struct Frame_junk9
{
    // parameters
    T_subroutine_130 Junk9;
    T_subroutine_131 y;
};

// function body
void P_junk9(void* _slink, T_subroutine_130 Junk9, T_subroutine_131 y)
{
    // prologue/frame definition
    Frame_junk9 _F = {Junk9, y };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 499
    (*_F.Junk9._pfn)(_F.Junk9._slink, 9834, 8383, 'j');
    
    #line 500
    Output << ' ' << _format((*_F.y._pfn)(_F.y._slink, 743), 1, 0);
    
    { /* NOP */ }
}


#line 504
//================================================================================
// scope: junk10 (level : 2)

// activation record
struct Frame_junk10
{
    // parameters
    T_integer x;
    T_integer y;
    T_char Junk10;
};

// function body
void P_junk10(void* _slink, T_integer x, T_integer y, T_char Junk10)
{
    // prologue/frame definition
    Frame_junk10 _F = {x, y, Junk10 };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 508
    Output << _format(_F.x, 1, 0) << ' ' << _format(_F.y, 1, 0) << ' ' << _format(_F.Junk10, 1, 0);
}


#line 512
//================================================================================
// scope: junk11 (level : 2)

// activation record
struct Frame_junk11
{
    // parameters
    T_integer x;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_junk11(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_junk11 _F = {x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 516
    _F._fnvalue = _succ(_F.x);
    
    // epilogue
    return _F._fnvalue;
}


#line 520
//================================================================================
// scope: junk12 (level : 2)

// activation record
struct Frame_junk12
{
    // parameters
    T_subroutine_132 Xq;
    T_subroutine_134 q;
};

// function body
void P_junk12(void* _slink, T_subroutine_132 Xq, T_subroutine_134 q)
{
    // prologue/frame definition
    Frame_junk12 _F = {Xq, q };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 525
    (*_F.Xq._pfn)(_F.Xq._slink, _F.q);
}


#line 529
//================================================================================
// scope: junk13 (level : 2)

// activation record
struct Frame_junk13
{
    // parameters
    T_subroutine_135 Xz;
};

// function body
void P_junk13(void* _slink, T_subroutine_135 Xz)
{
    // prologue/frame definition
    Frame_junk13 _F = {Xz };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 533
    Output << _format((*_F.Xz._pfn)(_F.Xz._slink, 941), 1, 0);
}


#line 537
//================================================================================
// scope: junk14 (level : 2)

// forward declarations
void P_junk14_junk15(void* _slink);

// activation record
struct Frame_junk14
{
    // locals
    T_integer i;
    T_integer x;
};

// function body
void P_junk14(void* _slink)
{
    // prologue/frame definition
    Frame_junk14 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 551
    _F.i = 62;
    
    #line 552
    _F.x = 76;
    
    #line 553
    P_junk14_junk15(&_F);
}


#line 541
//================================================================================
// scope: junk14_junk15 (level : 3)

// activation record
struct Frame_junk14_junk15
{
   Frame_junk14* _slink;
};

// function body
void P_junk14_junk15(void* _slink)
{
    // prologue/frame definition
    Frame_junk14_junk15 _F = { (Frame_junk14*)_slink };
    
    // subroutine body
    #line 545
    Output << _format(_F._slink->i, 1, 0) << ' ' << _format(_F._slink->x, 1, 0);
}


#line 557
//================================================================================
// scope: junk16 (level : 2)

// activation record
struct Frame_junk16
{};

// function body
void P_junk16(void* _slink)
{
    // prologue/frame definition
    Frame_junk16 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    { /* NOP */ }
}


#line 559
//================================================================================
// scope: junk17 (level : 2)

// forward declarations
void P_junk17_junk18(void* _slink);

// activation record
struct Frame_junk17
{
    // parameters
    T_subroutine_136 x;
    T_integer i;
};

// function body
void P_junk17(void* _slink, T_subroutine_136 x, T_integer i)
{
    // prologue/frame definition
    Frame_junk17 _F = {x, i };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 571
    (*_F.x._pfn)(_F.x._slink);
    
    #line 572
    if((_F.i == 52))
    {
        #line 572
        P_junk17(nullptr, _makePfn(P_junk17_junk18, &_F), 83);
    }
}


#line 561
//================================================================================
// scope: junk17_junk18 (level : 3)

// activation record
struct Frame_junk17_junk18
{
   Frame_junk17* _slink;
};

// function body
void P_junk17_junk18(void* _slink)
{
    // prologue/frame definition
    Frame_junk17_junk18 _F = { (Frame_junk17*)_slink };
    
    // subroutine body
    #line 565
    Output << _format(_F._slink->i, 1, 0);
}


#line 578
//================================================================================
// scope: junk19 (level : 2)

// types
_PTR_TYPE(T_junk19_pt, T_char)

// activation record
struct Frame_junk19
{
    // locals
    T_junk19_pt p;
};

// function body
void P_junk19(void* _slink)
{
    // prologue/frame definition
    Frame_junk19 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 587
    _new(_F.p._ptr);
    
    #line 588
    (*_F.p._ptr) = 'a';
    
    #line 589
    Output << (*_F.p._ptr);
    
    #line 590
    _dispose(_F.p._ptr);
}


#line 596
//================================================================================
// scope: junk20 (level : 2)

// forward declarations
T_integer F_junk20_inner(void* _slink);

// activation record
struct Frame_junk20
{
    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_junk20(void* _slink)
{
    // prologue/frame definition
    Frame_junk20 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 609
    i = F_junk20_inner(&_F);
    
    // epilogue
    return _F._fnvalue;
}


#line 598
//================================================================================
// scope: junk20_inner (level : 3)

// activation record
struct Frame_junk20_inner
{
   Frame_junk20* _slink;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_junk20_inner(void* _slink)
{
    // prologue/frame definition
    Frame_junk20_inner _F = { (Frame_junk20*)_slink };
    
    // subroutine body
    #line 602
    _F._fnvalue = 12;
    
    #line 603
    _F._slink->_fnvalue = 37;
    
    // epilogue
    return _F._fnvalue;
}


#line 613
//================================================================================
// scope: random (level : 2)

// constants
const T_integer C_random_a = 16807;
const T_integer C_random_m = 2147483647;

// activation record
struct Frame_random
{
    // parameters
    T_integer Low;
    T_integer Hi;

    // locals
    T_integer _fnvalue;
    T_integer Gamma;
};

// function body
T_integer F_random(void* _slink, T_integer Low, T_integer Hi)
{
    // prologue/frame definition
    Frame_random _F = {Low, Hi };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 621
    _F.Gamma = ((C_random_a * _mod(Rndseq , (C_random_m / C_random_a))) - (_mod(C_random_m , C_random_a) * (Rndseq / (C_random_m / C_random_a))));
    
    #line 622
    if((_F.Gamma > 0))
    {
        #line 622
        Rndseq = _F.Gamma;
    }
    else
    {
        #line 622
        Rndseq = (_F.Gamma + C_random_m);
    }
    
    #line 623
    _F._fnvalue = ((Rndseq / (C_maxint / ((_F.Hi - _F.Low) + 1))) + _F.Low);
    
    // epilogue
    return _F._fnvalue;
}

