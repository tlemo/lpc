
#include <lpcRuntime.h>

#line 0 "pint.pas"

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

#line 6
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Range<-1, 18001, signed __int16> T_address;
typedef int T_datatype;
typedef _T_Array< 1, 10, T_char > T_alfa;
typedef _T_Array< 1, 25, T_char > T_beta;
typedef _T_Range<-26143, 26143, signed __int16> T_bit20;
typedef _T_Range<0, 15, signed __int8> T_bit4;
typedef _T_Range<0, 127, signed __int8> T_bit6;
struct T_record_2
{
    T_bit6 Op1;
    T_bit4 P1;
    T_bit20 Q1;
    T_bit6 Op2;
    T_bit4 P2;
    T_bit20 Q2;
};
typedef _T_Array< 0, 8650, T_record_2 > T_array_1;
typedef _T_Array< 0, 127, T_integer > T_array_3;
typedef _T_Array< 0, 127, T_alfa > T_array_4;
typedef _T_Range<0, 17500, signed __int16> T_range_5;
typedef _T_Set<0, 58> T_settype;
typedef _T_Array< 0, 20, T_alfa > T_array_6;
struct T_record_8
{
    // variable fields
    union
    {
        T_integer Vi;
        T_real Vr;
        T_boolean Vb;
        T_settype Vs;
        T_char Vc;
        T_address Va;
        T_integer Vm;
    };
};
typedef _T_Array< 0, 18000, T_record_8 > T_array_7;

// forward declarations
void P_load(void* _slink);
void P_pmd(void* _slink);
void P_errori(void* _slink, T_beta String);
T_address F_base(void* _slink, T_integer Ld);
void P_compare(void* _slink);
void P_callsp(void* _slink);

// constants
const T_datatype C_adr = 5;
const T_integer C_begincode = 3;
const T_datatype C_bool = 3;
const T_datatype C_car = 7;
const T_integer C_codemax = 8650;
const T_integer C_duminst = 62;
const T_integer C_inputadr = 5;
const T_datatype C_int = 1;
const T_integer C_largeint = 26144;
const T_datatype C_mark = 6;
const T_integer C_maxstk = 13650;
const T_integer C_maxstr = 18001;
const T_integer C_outputadr = 6;
const T_integer C_overb = 13820;
const T_integer C_overi = 13655;
const T_integer C_overm = 18000;
const T_integer C_overr = 13660;
const T_integer C_overs = 13730;
const T_integer C_pcmax = 17500;
const T_integer C_prdadr = 7;
const T_integer C_prradr = 8;
const T_datatype C_reel = 2;
const T_datatype C_sett = 4;
const T_datatype C_undef = 0;

// non-local goto targets
const int NL_1 = 1;

// program variables
T_address Ad;
T_address Ad1;
T_boolean b;
T_char c;
T_array_1 Code;
T_array_3 Cop;
T_address Ep;
T_integer i;
T_integer I1;
T_integer I2;
T_integer I3;
T_text Input;
T_array_4 Instr;
T_boolean Interpreting;
T_integer j;
T_address Mp;
T_address Np;
T_bit6 Op;
T_text Output;
T_bit4 p;
T_range_5 Pc;
T_text Prd;
T_text Prr;
T_bit20 q;
T_address Sp;
T_array_6 Sptable;
T_array_7 Store;

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
        #line 704
        _rewrite(Prr);
        
        #line 705
        P_load(nullptr);
        
        #line 707
        Pc = 0;
        
        #line 707
        Sp = (-1);
        
        #line 707
        Mp = 0;
        
        #line 707
        Np = (C_maxstk + 1);
        
        #line 707
        Ep = 5;
        
        #line 708
        Store[C_inputadr].Vc = Input.bufferVar();
        
        #line 710
        Interpreting = C_true;
        
        #line 712
        while(Interpreting)
        {
            #line 716
            if(_odd(Pc))
            {
                #line 717
                Op = Code[(Pc / 2)].Op2;
                
                #line 717
                p = Code[(Pc / 2)].P2;
                
                #line 717
                q = Code[(Pc / 2)].Q2;
            }
            else
            {
                #line 719
                Op = Code[(Pc / 2)].Op1;
                
                #line 719
                p = Code[(Pc / 2)].P1;
                
                #line 719
                q = Code[(Pc / 2)].Q1;
            }
            
            #line 721
            Pc = (Pc + 1);
            
            #line 724
            switch(Op)
            {
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 0:
                #line 727
                Ad = (F_base(nullptr, p) + q);
                
                #line 728
                Sp = (Sp + 1);
                
                #line 729
                Store[Sp] = Store[Ad];
                break;
            
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 1:
                #line 734
                Sp = (Sp + 1);
                
                #line 735
                Store[Sp] = Store[q];
                break;
            
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 2:
                #line 739
                Store[(F_base(nullptr, p) + q)] = Store[Sp];
                
                #line 740
                Sp = (Sp - 1);
                break;
            
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 3:
                #line 744
                Store[q] = Store[Sp];
                
                #line 745
                Sp = (Sp - 1);
                break;
            
            case 4:
                #line 748
                Sp = (Sp + 1);
                
                #line 749
                Store[Sp].Va = (F_base(nullptr, p) + q);
                break;
            
            case 5:
                #line 752
                Sp = (Sp + 1);
                
                #line 753
                Store[Sp].Va = q;
                break;
            
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 6:
                #line 758
                Store[Store[(Sp - 1)].Va] = Store[Sp];
                
                #line 759
                Sp = (Sp - 2);
                
                { /* NOP */ }
                break;
            
            case 7:
                #line 762
                Sp = (Sp + 1);
                
                #line 763
                if((p == 1))
                {
                    #line 764
                    Store[Sp].Vi = q;
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 766
                    if((p == 6))
                    {
                        #line 766
                        Store[Sp].Vc = _chr(q);
                    }
                    else
                    {
                        #line 768
                        if((p == 3))
                        {
                            #line 768
                            Store[Sp].Vb = (q == 1);
                        }
                        else
                        {
                            #line 769
                            Store[Sp].Va = C_maxstr;
                        }
                    }
                }
                break;
            
            case 8:
                #line 772
                Sp = (Sp + 1);
                
                #line 773
                Store[Sp] = Store[q];
                break;
            
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 9:
                #line 777
                Ad = (Store[Sp].Va + q);
                
                #line 779
                Store[Sp] = Store[Ad];
                break;
            
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 10:
                #line 783
                Store[Sp].Vi = (Store[Sp].Vi + q);
                break;
            
            case 11:
                #line 789
                Store[(Sp + 2)].Vm = F_base(nullptr, p);
                
                #line 791
                Store[(Sp + 3)].Vm = Mp;
                
                #line 793
                Store[(Sp + 4)].Vm = Ep;
                
                #line 795
                Sp = (Sp + 5);
                break;
            
            case 12:
                #line 799
                Mp = (Sp - (p + 4));
                
                #line 800
                Store[(Mp + 4)].Vm = Pc;
                
                #line 801
                Pc = q;
                break;
            
            case 13:
                #line 804
                if((p == 1))
                {
                    #line 805
                    Sp = (Mp + q);
                    
                    #line 806
                    if((Sp > Np))
                    {
                        #line 806
                        P_errori(nullptr, T_beta::C(" store overflow          "));
                    }
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 809
                    Ep = (Sp + q);
                    
                    #line 810
                    if((Ep > Np))
                    {
                        #line 810
                        P_errori(nullptr, T_beta::C(" store overflow          "));
                    }
                    
                    { /* NOP */ }
                }
                break;
            
            case 14:
                #line 814
                switch(p)
                {
                case 0:
                    #line 815
                    Sp = (Mp - 1);
                    break;
                
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    #line 816
                    Sp = Mp;
                    break;
                }
                
                #line 818
                Pc = Store[(Mp + 4)].Vm;
                
                #line 819
                Ep = Store[(Mp + 3)].Vm;
                
                #line 820
                Mp = Store[(Mp + 2)].Vm;
                
                { /* NOP */ }
                break;
            
            case 15:
                #line 823
                P_callsp(nullptr);
                break;
            
            case 16:
                #line 826
                i = Store[Sp].Vi;
                
                #line 827
                Sp = (Sp - 1);
                
                #line 828
                Store[Sp].Va = ((q * i) + Store[Sp].Va);
                
                { /* NOP */ }
                break;
            
            case 17:
                #line 831
                Sp = (Sp - 1);
                
                #line 832
                switch(p)
                {
                case 1:
                    #line 833
                    Store[Sp].Vb = (Store[Sp].Vi == Store[(Sp + 1)].Vi);
                    break;
                
                case 0:
                    #line 834
                    Store[Sp].Vb = (Store[Sp].Va == Store[(Sp + 1)].Va);
                    break;
                
                case 6:
                    #line 835
                    Store[Sp].Vb = (Store[Sp].Vc == Store[(Sp + 1)].Vc);
                    break;
                
                case 2:
                    #line 836
                    Store[Sp].Vb = (Store[Sp].Vr == Store[(Sp + 1)].Vr);
                    break;
                
                case 3:
                    #line 837
                    Store[Sp].Vb = (Store[Sp].Vb == Store[(Sp + 1)].Vb);
                    break;
                
                case 4:
                    #line 838
                    Store[Sp].Vb = (Store[Sp].Vs == Store[(Sp + 1)].Vs);
                    break;
                
                case 5:
                    #line 839
                    P_compare(nullptr);
                    
                    #line 840
                    Store[Sp].Vb = b;
                    
                    { /* NOP */ }
                    break;
                }
                
                { /* NOP */ }
                break;
            
            case 18:
                #line 845
                Sp = (Sp - 1);
                
                #line 846
                switch(p)
                {
                case 0:
                    #line 847
                    Store[Sp].Vb = (Store[Sp].Va != Store[(Sp + 1)].Va);
                    break;
                
                case 1:
                    #line 848
                    Store[Sp].Vb = (Store[Sp].Vi != Store[(Sp + 1)].Vi);
                    break;
                
                case 6:
                    #line 849
                    Store[Sp].Vb = (Store[Sp].Vc != Store[(Sp + 1)].Vc);
                    break;
                
                case 2:
                    #line 850
                    Store[Sp].Vb = (Store[Sp].Vr != Store[(Sp + 1)].Vr);
                    break;
                
                case 3:
                    #line 851
                    Store[Sp].Vb = (Store[Sp].Vb != Store[(Sp + 1)].Vb);
                    break;
                
                case 4:
                    #line 852
                    Store[Sp].Vb = (Store[Sp].Vs != Store[(Sp + 1)].Vs);
                    break;
                
                case 5:
                    #line 853
                    P_compare(nullptr);
                    
                    #line 854
                    Store[Sp].Vb = (!b);
                    
                    { /* NOP */ }
                    break;
                }
                
                { /* NOP */ }
                break;
            
            case 19:
                #line 859
                Sp = (Sp - 1);
                
                #line 860
                switch(p)
                {
                case 0:
                    #line 861
                    P_errori(nullptr, T_beta::C(" <,<=,>,>= for address   "));
                    break;
                
                case 1:
                    #line 862
                    Store[Sp].Vb = (Store[Sp].Vi >= Store[(Sp + 1)].Vi);
                    break;
                
                case 6:
                    #line 863
                    Store[Sp].Vb = (Store[Sp].Vc >= Store[(Sp + 1)].Vc);
                    break;
                
                case 2:
                    #line 864
                    Store[Sp].Vb = (Store[Sp].Vr >= Store[(Sp + 1)].Vr);
                    break;
                
                case 3:
                    #line 865
                    Store[Sp].Vb = (Store[Sp].Vb >= Store[(Sp + 1)].Vb);
                    break;
                
                case 4:
                    #line 866
                    Store[Sp].Vb = (Store[Sp].Vs >= Store[(Sp + 1)].Vs);
                    break;
                
                case 5:
                    #line 867
                    P_compare(nullptr);
                    
                    #line 868
                    Store[Sp].Vb = (b || (Store[(I1 + i)].Vi >= Store[(I2 + i)].Vi));
                    break;
                }
                
                { /* NOP */ }
                break;
            
            case 20:
                #line 874
                Sp = (Sp - 1);
                
                #line 875
                switch(p)
                {
                case 0:
                    #line 876
                    P_errori(nullptr, T_beta::C(" <,<=,>,>= for address   "));
                    break;
                
                case 1:
                    #line 877
                    Store[Sp].Vb = (Store[Sp].Vi > Store[(Sp + 1)].Vi);
                    break;
                
                case 6:
                    #line 878
                    Store[Sp].Vb = (Store[Sp].Vc > Store[(Sp + 1)].Vc);
                    break;
                
                case 2:
                    #line 879
                    Store[Sp].Vb = (Store[Sp].Vr > Store[(Sp + 1)].Vr);
                    break;
                
                case 3:
                    #line 880
                    Store[Sp].Vb = (Store[Sp].Vb > Store[(Sp + 1)].Vb);
                    break;
                
                case 4:
                    #line 881
                    P_errori(nullptr, T_beta::C(" set inclusion           "));
                    break;
                
                case 5:
                    #line 882
                    P_compare(nullptr);
                    
                    #line 883
                    Store[Sp].Vb = ((!b) && (Store[(I1 + i)].Vi > Store[(I2 + i)].Vi));
                    break;
                }
                
                { /* NOP */ }
                break;
            
            case 21:
                #line 889
                Sp = (Sp - 1);
                
                #line 890
                switch(p)
                {
                case 0:
                    #line 891
                    P_errori(nullptr, T_beta::C(" <,<=,>,>= for address   "));
                    break;
                
                case 1:
                    #line 892
                    Store[Sp].Vb = (Store[Sp].Vi <= Store[(Sp + 1)].Vi);
                    break;
                
                case 6:
                    #line 893
                    Store[Sp].Vb = (Store[Sp].Vc <= Store[(Sp + 1)].Vc);
                    break;
                
                case 2:
                    #line 894
                    Store[Sp].Vb = (Store[Sp].Vr <= Store[(Sp + 1)].Vr);
                    break;
                
                case 3:
                    #line 895
                    Store[Sp].Vb = (Store[Sp].Vb <= Store[(Sp + 1)].Vb);
                    break;
                
                case 4:
                    #line 896
                    Store[Sp].Vb = (Store[Sp].Vs <= Store[(Sp + 1)].Vs);
                    break;
                
                case 5:
                    #line 897
                    P_compare(nullptr);
                    
                    #line 898
                    Store[Sp].Vb = (b || (Store[(I1 + i)].Vi <= Store[(I2 + i)].Vi));
                    break;
                }
                
                { /* NOP */ }
                break;
            
            case 22:
                #line 904
                Sp = (Sp - 1);
                
                #line 905
                switch(p)
                {
                case 0:
                    #line 906
                    P_errori(nullptr, T_beta::C(" <,<=,>,>= for address   "));
                    break;
                
                case 1:
                    #line 907
                    Store[Sp].Vb = (Store[Sp].Vi < Store[(Sp + 1)].Vi);
                    break;
                
                case 6:
                    #line 908
                    Store[Sp].Vb = (Store[Sp].Vc < Store[(Sp + 1)].Vc);
                    break;
                
                case 2:
                    #line 909
                    Store[Sp].Vb = (Store[Sp].Vr < Store[(Sp + 1)].Vr);
                    break;
                
                case 3:
                    #line 910
                    Store[Sp].Vb = (Store[Sp].Vb < Store[(Sp + 1)].Vb);
                    break;
                
                case 5:
                    #line 911
                    P_compare(nullptr);
                    
                    #line 912
                    Store[Sp].Vb = ((!b) && (Store[(I1 + i)].Vi < Store[(I2 + i)].Vi));
                    break;
                }
                
                { /* NOP */ }
                break;
            
            case 23:
                #line 918
                Pc = q;
                break;
            
            case 24:
                #line 920
                if((!Store[Sp].Vb))
                {
                    #line 920
                    Pc = q;
                }
                
                #line 921
                Sp = (Sp - 1);
                break;
            
            case 25:
                #line 925
                Pc = (Store[Sp].Vi + q);
                
                #line 926
                Sp = (Sp - 1);
                break;
            
            case 95:
                #line 929
                if(((Store[Sp].Va < Np) || (Store[Sp].Va > (C_maxstr - q))))
                {
                    #line 931
                    P_errori(nullptr, T_beta::C(" bad pointer value       "));
                }
                break;
            
            case 96:
            case 97:
            case 98:
            case 99:
            case 26:
                #line 934
                if(((Store[Sp].Vi < Store[(q - 1)].Vi) || (Store[Sp].Vi > Store[q].Vi)))
                {
                    #line 936
                    P_errori(nullptr, T_beta::C(" value out of range      "));
                }
                break;
            
            case 27:
                #line 938
                i = Store[Sp].Vi;
                
                #line 939
                if((i == C_inputadr))
                {
                    #line 940
                    Store[Sp].Vb = _eof(Input);
                    
                    { /* NOP */ }
                }
                else
                {
                    #line 941
                    P_errori(nullptr, T_beta::C(" code in error           "));
                }
                break;
            
            case 28:
                #line 944
                Sp = (Sp - 1);
                
                #line 945
                Store[Sp].Vi = (Store[Sp].Vi + Store[(Sp + 1)].Vi);
                break;
            
            case 29:
                #line 948
                Sp = (Sp - 1);
                
                #line 949
                Store[Sp].Vr = (Store[Sp].Vr + Store[(Sp + 1)].Vr);
                break;
            
            case 30:
                #line 952
                Sp = (Sp - 1);
                
                #line 953
                Store[Sp].Vi = (Store[Sp].Vi - Store[(Sp + 1)].Vi);
                break;
            
            case 31:
                #line 956
                Sp = (Sp - 1);
                
                #line 957
                Store[Sp].Vr = (Store[Sp].Vr - Store[(Sp + 1)].Vr);
                break;
            
            case 32:
                #line 960
                {
                    _T_GenericSet _setLiteral1;
                    _setLiteral1.set(Store[Sp].Vi);
                    
                    Store[Sp].Vs = _setLiteral1;
                }
                break;
            
            case 33:
                #line 962
                Store[Sp].Vr = Store[Sp].Vi;
                break;
            
            case 34:
                #line 964
                Store[(Sp - 1)].Vr = Store[(Sp - 1)].Vi;
                break;
            
            case 35:
                #line 966
                Store[Sp].Vi = _trunc(Store[Sp].Vr);
                break;
            
            case 36:
                #line 968
                Store[Sp].Vi = (-Store[Sp].Vi);
                break;
            
            case 37:
                #line 970
                Store[Sp].Vr = (-Store[Sp].Vr);
                break;
            
            case 38:
                #line 972
                Store[Sp].Vi = _sqr(Store[Sp].Vi);
                break;
            
            case 39:
                #line 974
                Store[Sp].Vr = _sqr(Store[Sp].Vr);
                break;
            
            case 40:
                #line 976
                Store[Sp].Vi = _abs(Store[Sp].Vi);
                break;
            
            case 41:
                #line 978
                Store[Sp].Vr = _abs(Store[Sp].Vr);
                break;
            
            case 42:
                #line 980
                Store[Sp].Vb = (!Store[Sp].Vb);
                break;
            
            case 43:
                #line 982
                Sp = (Sp - 1);
                
                #line 983
                Store[Sp].Vb = (Store[Sp].Vb && Store[(Sp + 1)].Vb);
                break;
            
            case 44:
                #line 986
                Sp = (Sp - 1);
                
                #line 987
                Store[Sp].Vb = (Store[Sp].Vb || Store[(Sp + 1)].Vb);
                break;
            
            case 45:
                #line 990
                Sp = (Sp - 1);
                
                #line 991
                Store[Sp].Vs = (Store[Sp].Vs - Store[(Sp + 1)].Vs);
                break;
            
            case 46:
                #line 994
                Sp = (Sp - 1);
                
                #line 995
                Store[Sp].Vs = (Store[Sp].Vs * Store[(Sp + 1)].Vs);
                break;
            
            case 47:
                #line 998
                Sp = (Sp - 1);
                
                #line 999
                Store[Sp].Vs = (Store[Sp].Vs + Store[(Sp + 1)].Vs);
                break;
            
            case 48:
                #line 1003
                Sp = (Sp - 1);
                
                #line 1003
                i = Store[Sp].Vi;
                
                #line 1004
                Store[Sp].Vb = (Store[(Sp + 1)].Vs & i);
                
                { /* NOP */ }
                break;
            
            case 49:
                #line 1007
                Sp = (Sp - 1);
                
                #line 1008
                Store[Sp].Vi = _mod(Store[Sp].Vi , Store[(Sp + 1)].Vi);
                break;
            
            case 50:
                #line 1011
                Store[Sp].Vb = _odd(Store[Sp].Vi);
                break;
            
            case 51:
                #line 1013
                Sp = (Sp - 1);
                
                #line 1014
                Store[Sp].Vi = (Store[Sp].Vi * Store[(Sp + 1)].Vi);
                break;
            
            case 52:
                #line 1017
                Sp = (Sp - 1);
                
                #line 1018
                Store[Sp].Vr = (Store[Sp].Vr * Store[(Sp + 1)].Vr);
                break;
            
            case 53:
                #line 1021
                Sp = (Sp - 1);
                
                #line 1022
                Store[Sp].Vi = (Store[Sp].Vi / Store[(Sp + 1)].Vi);
                break;
            
            case 54:
                #line 1025
                Sp = (Sp - 1);
                
                #line 1026
                Store[Sp].Vr = ((double)Store[Sp].Vr / Store[(Sp + 1)].Vr);
                break;
            
            case 55:
                #line 1029
                I1 = Store[(Sp - 1)].Va;
                
                #line 1030
                I2 = Store[Sp].Va;
                
                #line 1030
                Sp = (Sp - 2);
                
                #line 1031
                _FOR_TO(I3, 0, (q - 1))
                {
                    #line 1031
                    Store[(I1 + I3)] = Store[(I2 + I3)];
                }
                _FOR_END(I3)
                break;
            
            case 56:
                #line 1035
                Sp = (Sp + 1);
                
                #line 1036
                Store[Sp].Va = q;
                
                { /* NOP */ }
                break;
            
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 57:
                #line 1040
                Store[Sp].Vi = (Store[Sp].Vi - q);
                break;
            
            case 58:
                #line 1042
                Interpreting = C_false;
                break;
            
            case 59:
                { /* NOP */ }
                break;
            
            case 60:
                { /* NOP */ }
                break;
            
            case 61:
                #line 1051
                P_errori(nullptr, T_beta::C(" case - error            "));
                break;
            }
        }
        
        L_1:
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


#line 124
//================================================================================
// scope: load (level : 2)

// types
typedef int T_load_labelst;
struct T_load_labelrec
{
    T_address Val;
    T_load_labelst St;
};
typedef _T_Range<0, 1850, signed __int16> T_load_labelrg;
typedef _T_Array< 0, 1850, T_load_labelrec > T_load_array_9;
typedef _T_Array< 1, 10, T_char > T_load_array_10;

// forward declarations
void P_load_init(void* _slink);
void P_load_errorl(void* _slink, T_beta String);
void P_load_update(void* _slink, T_load_labelrg x);
void P_load_generate(void* _slink);
void P_load_assemble(void* _slink);

// constants
const T_load_labelst C_load_defined = 1;
const T_load_labelst C_load_entered = 0;
const T_integer C_load_maxlabel = 1850;

// activation record
struct Frame_load
{
    // locals
    T_address Bcp;
    T_char Ch;
    T_address Icp;
    T_load_array_9 Labeltab;
    T_address Labelvalue;
    T_address Mcp;
    T_address Rcp;
    T_address Scp;
    T_load_array_10 Word;
};

// function body
void P_load(void* _slink)
{
    // prologue/frame definition
    Frame_load _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 468
    P_load_init(&_F);
    
    #line 469
    P_load_generate(&_F);
    
    #line 470
    Pc = 0;
    
    #line 471
    P_load_generate(&_F);
    
    { /* NOP */ }
}


#line 138
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
    #line 140
    Instr[0] = "lod       ";
    
    #line 140
    Instr[1] = "ldo       ";
    
    #line 141
    Instr[2] = "str       ";
    
    #line 141
    Instr[3] = "sro       ";
    
    #line 142
    Instr[4] = "lda       ";
    
    #line 142
    Instr[5] = "lao       ";
    
    #line 143
    Instr[6] = "sto       ";
    
    #line 143
    Instr[7] = "ldc       ";
    
    #line 144
    Instr[8] = "...       ";
    
    #line 144
    Instr[9] = "ind       ";
    
    #line 145
    Instr[10] = "inc       ";
    
    #line 145
    Instr[11] = "mst       ";
    
    #line 146
    Instr[12] = "cup       ";
    
    #line 146
    Instr[13] = "ent       ";
    
    #line 147
    Instr[14] = "ret       ";
    
    #line 147
    Instr[15] = "csp       ";
    
    #line 148
    Instr[16] = "ixa       ";
    
    #line 148
    Instr[17] = "equ       ";
    
    #line 149
    Instr[18] = "neq       ";
    
    #line 149
    Instr[19] = "geq       ";
    
    #line 150
    Instr[20] = "grt       ";
    
    #line 150
    Instr[21] = "leq       ";
    
    #line 151
    Instr[22] = "les       ";
    
    #line 151
    Instr[23] = "ujp       ";
    
    #line 152
    Instr[24] = "fjp       ";
    
    #line 152
    Instr[25] = "xjp       ";
    
    #line 153
    Instr[26] = "chk       ";
    
    #line 153
    Instr[27] = "eof       ";
    
    #line 154
    Instr[28] = "adi       ";
    
    #line 154
    Instr[29] = "adr       ";
    
    #line 155
    Instr[30] = "sbi       ";
    
    #line 155
    Instr[31] = "sbr       ";
    
    #line 156
    Instr[32] = "sgs       ";
    
    #line 156
    Instr[33] = "flt       ";
    
    #line 157
    Instr[34] = "flo       ";
    
    #line 157
    Instr[35] = "trc       ";
    
    #line 158
    Instr[36] = "ngi       ";
    
    #line 158
    Instr[37] = "ngr       ";
    
    #line 159
    Instr[38] = "sqi       ";
    
    #line 159
    Instr[39] = "sqr       ";
    
    #line 160
    Instr[40] = "abi       ";
    
    #line 160
    Instr[41] = "abr       ";
    
    #line 161
    Instr[42] = "not       ";
    
    #line 161
    Instr[43] = "and       ";
    
    #line 162
    Instr[44] = "ior       ";
    
    #line 162
    Instr[45] = "dif       ";
    
    #line 163
    Instr[46] = "int       ";
    
    #line 163
    Instr[47] = "uni       ";
    
    #line 164
    Instr[48] = "inn       ";
    
    #line 164
    Instr[49] = "mod       ";
    
    #line 165
    Instr[50] = "odd       ";
    
    #line 165
    Instr[51] = "mpi       ";
    
    #line 166
    Instr[52] = "mpr       ";
    
    #line 166
    Instr[53] = "dvi       ";
    
    #line 167
    Instr[54] = "dvr       ";
    
    #line 167
    Instr[55] = "mov       ";
    
    #line 168
    Instr[56] = "lca       ";
    
    #line 168
    Instr[57] = "dec       ";
    
    #line 169
    Instr[58] = "stp       ";
    
    #line 169
    Instr[59] = "ord       ";
    
    #line 170
    Instr[60] = "chr       ";
    
    #line 170
    Instr[61] = "ujc       ";
    
    #line 172
    Sptable[0] = "get       ";
    
    #line 172
    Sptable[1] = "put       ";
    
    #line 173
    Sptable[2] = "rst       ";
    
    #line 173
    Sptable[3] = "rln       ";
    
    #line 174
    Sptable[4] = "new       ";
    
    #line 174
    Sptable[5] = "wln       ";
    
    #line 175
    Sptable[6] = "wrs       ";
    
    #line 175
    Sptable[7] = "eln       ";
    
    #line 176
    Sptable[8] = "wri       ";
    
    #line 176
    Sptable[9] = "wrr       ";
    
    #line 177
    Sptable[10] = "wrc       ";
    
    #line 177
    Sptable[11] = "rdi       ";
    
    #line 178
    Sptable[12] = "rdr       ";
    
    #line 178
    Sptable[13] = "rdc       ";
    
    #line 179
    Sptable[14] = "sin       ";
    
    #line 179
    Sptable[15] = "cos       ";
    
    #line 180
    Sptable[16] = "exp       ";
    
    #line 180
    Sptable[17] = "log       ";
    
    #line 181
    Sptable[18] = "sqt       ";
    
    #line 181
    Sptable[19] = "atn       ";
    
    #line 182
    Sptable[20] = "sav       ";
    
    #line 184
    Cop[0] = 105;
    
    #line 184
    Cop[1] = 65;
    
    #line 185
    Cop[2] = 70;
    
    #line 185
    Cop[3] = 75;
    
    #line 186
    Cop[6] = 80;
    
    #line 186
    Cop[9] = 85;
    
    #line 187
    Cop[10] = 90;
    
    #line 187
    Cop[26] = 95;
    
    #line 188
    Cop[57] = 100;
    
    #line 190
    Pc = C_begincode;
    
    #line 191
    _F._slink->Icp = (C_maxstk + 1);
    
    #line 192
    _F._slink->Rcp = (C_overi + 1);
    
    #line 193
    _F._slink->Scp = (C_overr + 1);
    
    #line 194
    _F._slink->Bcp = (C_overs + 2);
    
    #line 195
    _F._slink->Mcp = (C_overb + 1);
    
    #line 196
    _FOR_TO(_F.i, 1, 10)
    {
        #line 196
        _F._slink->Word[_F.i] = ' ';
    }
    _FOR_END(_F.i)
    
    #line 197
    _FOR_TO(_F.i, 0, C_load_maxlabel)
    {
        #line 198
        _F._slink->Labeltab[_F.i].Val = (-1);
        
        #line 198
        _F._slink->Labeltab[_F.i].St = C_load_entered;
    }
    _FOR_END(_F.i)
    
    #line 199
    _reset(Prd);
    
    { /* NOP */ }
}


#line 202
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
    #line 203
    Output << _WRITELN;
    
    #line 204
    Output << _F.String;
    
    #line 205
    _halt();
}


#line 208
//================================================================================
// scope: load_update (level : 3)

// types
typedef _T_Range<-1, 17500, signed __int16> T_load_update_range_11;

// activation record
struct Frame_load_update
{
   Frame_load* _slink;

    // parameters
    T_load_labelrg x;

    // locals
    T_load_update_range_11 Curr;
    T_boolean Endlist;
    T_load_update_range_11 Succ;
};

// function body
void P_load_update(void* _slink, T_load_labelrg x)
{
    // prologue/frame definition
    Frame_load_update _F = { (Frame_load*)_slink, x };
    
    // subroutine body
    #line 213
    if((_F._slink->Labeltab[_F.x].St == C_load_defined))
    {
        #line 213
        P_load_errorl(_F._slink, T_beta::C(" duplicated label        "));
    }
    else
    {
        #line 215
        if((_F._slink->Labeltab[_F.x].Val != (-1)))
        {
            #line 216
            _F.Curr = _F._slink->Labeltab[_F.x].Val;
            
            #line 216
            _F.Endlist = C_false;
            
            #line 217
            while((!_F.Endlist))
            {
                #line 220
                if(_odd(_F.Curr))
                {
                    #line 220
                    _F.Succ = Code[(_F.Curr / 2)].Q2;
                    
                    #line 221
                    Code[(_F.Curr / 2)].Q2 = _F._slink->Labelvalue;
                }
                else
                {
                    #line 223
                    _F.Succ = Code[(_F.Curr / 2)].Q1;
                    
                    #line 224
                    Code[(_F.Curr / 2)].Q1 = _F._slink->Labelvalue;
                }
                
                #line 226
                if((_F.Succ == (-1)))
                {
                    #line 226
                    _F.Endlist = C_true;
                }
                else
                {
                    #line 227
                    _F.Curr = _F.Succ;
                }
            }
            
            { /* NOP */ }
        }
        
        #line 230
        _F._slink->Labeltab[_F.x].St = C_load_defined;
        
        #line 231
        _F._slink->Labeltab[_F.x].Val = _F._slink->Labelvalue;
        
        { /* NOP */ }
    }
}


#line 237
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
    
    // subroutine body
    #line 241
    _F.Again = C_true;
    
    #line 242
    while(_F.Again)
    {
        #line 243
        Prd >> _F._slink->Ch;
        
        #line 244
        switch(_F._slink->Ch)
        {
        case 'i':
            #line 245
            Prd >> _READLN;
            break;
        
        case 'l':
            #line 246
            Prd >> _F.x;
            
            #line 247
            if((!_eoln(Prd)))
            {
                #line 247
                Prd >> _F._slink->Ch;
            }
            
            #line 248
            if((_F._slink->Ch == '='))
            {
                #line 248
                Prd >> _F._slink->Labelvalue;
            }
            else
            {
                #line 249
                _F._slink->Labelvalue = Pc;
            }
            
            #line 250
            P_load_update(_F._slink, T_load_labelrg::C(_F.x));
            
            #line 250
            Prd >> _READLN;
            
            { /* NOP */ }
            break;
        
        case 'q':
            #line 252
            _F.Again = C_false;
            
            #line 252
            Prd >> _READLN;
            break;
        
        case ' ':
            #line 253
            Prd >> _F._slink->Ch;
            
            #line 253
            P_load_assemble(_F._slink);
            break;
        }
        
        { /* NOP */ }
    }
}


#line 259
//================================================================================
// scope: load_assemble (level : 3)

// forward declarations
void P_load_assemble_lookup(void* _slink, T_load_labelrg x);
void P_load_assemble_labelsearch(void* _slink);
void P_load_assemble_getname(void* _slink);
void P_load_assemble_typesymbol(void* _slink);

// activation record
struct Frame_load_assemble
{
   Frame_load* _slink;

    // locals
    T_integer i;
    T_integer Lb;
    T_alfa Name;
    T_real r;
    T_settype s;
    T_integer S1;
    T_integer Ub;
};

// function body
void P_load_assemble(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble _F = { (Frame_load*)_slink };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    
    // subroutine body
    #line 302
    p = 0;
    
    #line 302
    q = 0;
    
    #line 302
    Op = 0;
    
    #line 303
    P_load_assemble_getname(&_F);
    
    #line 304
    Instr[C_duminst] = _F.Name;
    
    #line 305
    while(_strcmpNE<10>(Instr[Op], _F.Name))
    {
        #line 305
        Op = (Op + 1);
    }
    
    #line 306
    if((Op == C_duminst))
    {
        #line 306
        P_load_errorl(_F._slink, T_beta::C(" illegal instruction     "));
    }
    
    #line 308
    switch(Op)
    {
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
        #line 312
        switch(_F._slink->Ch)
        {
        case 'a':
            { /* NOP */ }
            break;
        
        case 'i':
            #line 314
            p = 1;
            break;
        
        case 'r':
            #line 315
            p = 2;
            break;
        
        case 'b':
            #line 316
            p = 3;
            break;
        
        case 's':
            #line 317
            p = 4;
            break;
        
        case 'c':
            #line 318
            p = 6;
            break;
        
        case 'm':
            #line 319
            p = 5;
            
            #line 320
            Prd >> q;
            break;
        }
        break;
    
    case 0:
    case 2:
        #line 326
        P_load_assemble_typesymbol(&_F);
        
        #line 326
        Prd >> p >> q;
        break;
    
    case 4:
        #line 329
        Prd >> p >> q;
        break;
    
    case 12:
        #line 331
        Prd >> p;
        
        #line 331
        P_load_assemble_labelsearch(&_F);
        break;
    
    case 11:
        #line 333
        Prd >> p;
        break;
    
    case 14:
        #line 335
        switch(_F._slink->Ch)
        {
        case 'p':
            #line 336
            p = 0;
            break;
        
        case 'i':
            #line 337
            p = 1;
            break;
        
        case 'r':
            #line 338
            p = 2;
            break;
        
        case 'c':
            #line 339
            p = 3;
            break;
        
        case 'b':
            #line 340
            p = 4;
            break;
        
        case 'a':
            #line 341
            p = 5;
            break;
        }
        break;
    
    case 5:
    case 16:
    case 55:
        #line 345
        Prd >> q;
        break;
    
    case 1:
    case 3:
    case 9:
    case 10:
    case 57:
        #line 348
        P_load_assemble_typesymbol(&_F);
        
        #line 348
        Prd >> q;
        break;
    
    case 23:
    case 24:
    case 25:
        #line 352
        P_load_assemble_labelsearch(&_F);
        break;
    
    case 13:
        #line 354
        Prd >> p;
        
        #line 354
        P_load_assemble_labelsearch(&_F);
        break;
    
    case 15:
        #line 357
        _FOR_TO(_F.i, 1, 9)
        {
            #line 357
            Prd >> _F._slink->Ch;
        }
        _FOR_END(_F.i)
        
        #line 358
        P_load_assemble_getname(&_F);
        
        #line 359
        while(_strcmpNE<10>(_F.Name, Sptable[q]))
        {
            #line 359
            q = (q + 1);
        }
        
        { /* NOP */ }
        break;
    
    case 7:
        #line 362
        switch(_F._slink->Ch)
        {
        case 'i':
            #line 363
            p = 1;
            
            #line 363
            Prd >> _F.i;
            
            #line 364
            if((_abs(_F.i) >= C_largeint))
            {
                #line 365
                Op = 8;
                
                #line 366
                Store[_F._slink->Icp].Vi = _F.i;
                
                #line 366
                q = C_maxstk;
                
                #line 367
                do
                {
                    #line 367
                    q = (q + 1);
                }
                while(!(Store[q].Vi == _F.i));
                
                #line 368
                if((q == _F._slink->Icp))
                {
                    #line 369
                    _F._slink->Icp = (_F._slink->Icp + 1);
                    
                    #line 370
                    if((_F._slink->Icp == C_overi))
                    {
                        #line 371
                        P_load_errorl(_F._slink, T_beta::C(" integer table overflow  "));
                    }
                    
                    { /* NOP */ }
                }
            }
            else
            {
                #line 373
                q = _F.i;
            }
            break;
        
        case 'r':
            #line 376
            Op = 8;
            
            #line 376
            p = 2;
            
            #line 377
            Prd >> _F.r;
            
            #line 378
            Store[_F._slink->Rcp].Vr = _F.r;
            
            #line 378
            q = C_overi;
            
            #line 379
            do
            {
                #line 379
                q = (q + 1);
            }
            while(!(Store[q].Vr == _F.r));
            
            #line 380
            if((q == _F._slink->Rcp))
            {
                #line 381
                _F._slink->Rcp = (_F._slink->Rcp + 1);
                
                #line 382
                if((_F._slink->Rcp == C_overr))
                {
                    #line 383
                    P_load_errorl(_F._slink, T_beta::C(" real table overflow     "));
                }
                
                { /* NOP */ }
            }
            break;
        
        case 'n':
            { /* NOP */ }
            break;
        
        case 'b':
            #line 389
            p = 3;
            
            #line 389
            Prd >> q;
            break;
        
        case 'c':
            #line 391
            p = 6;
            
            #line 392
            do
            {
                #line 392
                Prd >> _F._slink->Ch;
                
                { /* NOP */ }
            }
            while(!(_F._slink->Ch != ' '));
            
            #line 393
            if((_F._slink->Ch != '\''))
            {
                #line 394
                P_load_errorl(_F._slink, T_beta::C(" illegal character       "));
            }
            
            #line 395
            Prd >> _F._slink->Ch;
            
            #line 395
            q = _ord(_F._slink->Ch);
            
            #line 396
            Prd >> _F._slink->Ch;
            
            #line 397
            if((_F._slink->Ch != '\''))
            {
                #line 398
                P_load_errorl(_F._slink, T_beta::C(" illegal character       "));
            }
            
            { /* NOP */ }
            break;
        
        case '(':
            #line 400
            Op = 8;
            
            #line 400
            p = 4;
            
            #line 401
            _F.s = _setLiteral1;
            
            #line 401
            Prd >> _F._slink->Ch;
            
            #line 402
            while((_F._slink->Ch != ')'))
            {
                #line 403
                Prd >> _F.S1 >> _F._slink->Ch;
                
                #line 403
                {
                    _T_GenericSet _setLiteral2;
                    _setLiteral2.set(_F.S1);
                    
                    _F.s = (_F.s + _setLiteral2);
                }
            }
            
            #line 405
            Store[_F._slink->Scp].Vs = _F.s;
            
            #line 405
            q = C_overr;
            
            #line 406
            do
            {
                #line 406
                q = (q + 1);
            }
            while(!(Store[q].Vs == _F.s));
            
            #line 407
            if((q == _F._slink->Scp))
            {
                #line 408
                _F._slink->Scp = (_F._slink->Scp + 1);
                
                #line 409
                if((_F._slink->Scp == C_overs))
                {
                    #line 410
                    P_load_errorl(_F._slink, T_beta::C(" set table overflow      "));
                }
                
                { /* NOP */ }
            }
            break;
        }
        break;
    
    case 26:
        #line 416
        P_load_assemble_typesymbol(&_F);
        
        #line 417
        Prd >> _F.Lb >> _F.Ub;
        
        #line 418
        if((Op == 95))
        {
            #line 418
            q = _F.Lb;
        }
        else
        {
            #line 421
            Store[(_F._slink->Bcp - 1)].Vi = _F.Lb;
            
            #line 421
            Store[_F._slink->Bcp].Vi = _F.Ub;
            
            #line 422
            q = C_overs;
            
            #line 423
            do
            {
                #line 423
                q = (q + 2);
            }
            while(!((Store[(q - 1)].Vi == _F.Lb) && (Store[q].Vi == _F.Ub)));
            
            #line 425
            if((q == _F._slink->Bcp))
            {
                #line 426
                _F._slink->Bcp = (_F._slink->Bcp + 2);
                
                #line 427
                if((_F._slink->Bcp == C_overb))
                {
                    #line 428
                    P_load_errorl(_F._slink, T_beta::C(" boundary table overflow "));
                }
                
                { /* NOP */ }
            }
        }
        break;
    
    case 56:
        #line 434
        if(((_F._slink->Mcp + 16) >= C_overm))
        {
            #line 435
            P_load_errorl(_F._slink, T_beta::C(" multiple table overflow "));
        }
        
        #line 436
        _F._slink->Mcp = (_F._slink->Mcp + 16);
        
        #line 437
        q = _F._slink->Mcp;
        
        #line 438
        _FOR_TO(_F.i, 0, 15)
        {
            #line 439
            Prd >> _F._slink->Ch;
            
            #line 440
            Store[(q + _F.i)].Vc = _F._slink->Ch;
        }
        _FOR_END(_F.i)
        
        { /* NOP */ }
        break;
    
    case 6:
        #line 444
        P_load_assemble_typesymbol(&_F);
        break;
    
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
        { /* NOP */ }
        break;
    
    case 59:
    case 60:
        #line 450
        goto L_1;
        break;
    
    case 61:
        { /* NOP */ }
        break;
    }
    
    #line 458
    if(_odd(Pc))
    {
        #line 459
        Code[(Pc / 2)].Op2 = Op;
        
        #line 459
        Code[(Pc / 2)].P2 = p;
        
        #line 459
        Code[(Pc / 2)].Q2 = q;
    }
    else
    {
        #line 461
        Code[(Pc / 2)].Op1 = Op;
        
        #line 461
        Code[(Pc / 2)].P1 = p;
        
        #line 461
        Code[(Pc / 2)].Q1 = q;
    }
    
    #line 463
    Pc = (Pc + 1);
    
    #line 464
    L_1:
    Prd >> _READLN;
    
    { /* NOP */ }
}


#line 264
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
    #line 265
    switch(_F._slink->_slink->Labeltab[_F.x].St)
    {
    case C_load_entered:
        #line 266
        q = _F._slink->_slink->Labeltab[_F.x].Val;
        
        #line 267
        _F._slink->_slink->Labeltab[_F.x].Val = Pc;
        break;
    
    case C_load_defined:
        #line 269
        q = _F._slink->_slink->Labeltab[_F.x].Val;
        break;
    }
}


#line 273
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
    #line 275
    while(((_F._slink->_slink->Ch != 'l') && (!_eoln(Prd))))
    {
        #line 275
        Prd >> _F._slink->_slink->Ch;
    }
    
    #line 276
    Prd >> _F.x;
    
    #line 276
    P_load_assemble_lookup(_F._slink, _F.x);
}


#line 279
//================================================================================
// scope: load_assemble_getname (level : 4)

// activation record
struct Frame_load_assemble_getname
{
   Frame_load_assemble* _slink;
};

// function body
void P_load_assemble_getname(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_getname _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    #line 280
    _F._slink->_slink->Word[1] = _F._slink->_slink->Ch;
    
    #line 281
    Prd >> _F._slink->_slink->Word[2] >> _F._slink->_slink->Word[3];
    
    #line 282
    if((!_eoln(Prd)))
    {
        #line 282
        Prd >> _F._slink->_slink->Ch;
    }
    
    #line 283
    _pack(_F._slink->_slink->Word, 1, _F._slink->Name);
}


#line 286
//================================================================================
// scope: load_assemble_typesymbol (level : 4)

// activation record
struct Frame_load_assemble_typesymbol
{
   Frame_load_assemble* _slink;

    // locals
    T_integer i;
};

// function body
void P_load_assemble_typesymbol(void* _slink)
{
    // prologue/frame definition
    Frame_load_assemble_typesymbol _F = { (Frame_load_assemble*)_slink };
    
    // subroutine body
    #line 289
    if((_F._slink->_slink->Ch != 'i'))
    {
        #line 291
        switch(_F._slink->_slink->Ch)
        {
        case 'a':
            #line 292
            _F.i = 0;
            break;
        
        case 'r':
            #line 293
            _F.i = 1;
            break;
        
        case 's':
            #line 294
            _F.i = 2;
            break;
        
        case 'b':
            #line 295
            _F.i = 3;
            break;
        
        case 'c':
            #line 296
            _F.i = 4;
            break;
        }
        
        #line 298
        Op = (Cop[Op] + _F.i);
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


#line 476
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
    #line 490
    Output << " pc =" << _format((Pc - 1), 5, 0) << " op =" << _format(Op, 3, 0) << "  sp =" << _format(Sp, 5, 0) << "  mp =" << _format(Mp, 5, 0) << "  np =" << _format(Np, 5, 0);
    
    #line 492
    Output << _WRITELN;
    
    #line 492
    Output << "--------------------------------------" << _WRITELN;
    
    #line 494
    _F.s = Sp;
    
    #line 494
    _F.i = 0;
    
    #line 495
    while((_F.s >= 0))
    {
        #line 495
        P_pmd_pt(&_F);
    }
    
    #line 496
    _F.s = C_maxstk;
    
    #line 497
    while((_F.s >= Np))
    {
        #line 497
        P_pmd_pt(&_F);
    }
    
    { /* NOP */ }
}


#line 479
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
    #line 480
    Output << _format(_F._slink->s, 6, 0);
    
    #line 481
    if((_abs(Store[_F._slink->s].Vi) < C_maxint))
    {
        #line 481
        Output << Store[_F._slink->s].Vi;
    }
    else
    {
        #line 482
        Output << "too big ";
    }
    
    #line 483
    _F._slink->s = (_F._slink->s - 1);
    
    #line 484
    _F._slink->i = (_F._slink->i + 1);
    
    #line 485
    if((_F._slink->i == 4))
    {
        #line 486
        Output << _WRITELN;
        
        #line 486
        _F._slink->i = 0;
    }
    
    { /* NOP */ }
}


#line 500
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
    #line 501
    Output << _WRITELN;
    
    #line 501
    Output << _F.String << _WRITELN;
    
    #line 502
    P_pmd(nullptr);
    
    #line 502
    throw NL_1;
}


#line 505
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
    #line 507
    _F.Ad = Mp;
    
    #line 508
    while((_F.Ld > 0))
    {
        #line 509
        _F.Ad = Store[(_F.Ad + 1)].Vm;
        
        #line 509
        _F.Ld = (_F.Ld - 1);
    }
    
    #line 511
    _F._fnvalue = _F.Ad;
    
    // epilogue
    return _F._fnvalue;
}


#line 514
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
    #line 517
    I1 = Store[Sp].Va;
    
    #line 518
    I2 = Store[(Sp + 1)].Va;
    
    #line 519
    i = 0;
    
    #line 519
    b = C_true;
    
    #line 520
    while((b && (i != q)))
    {
        #line 521
        if((Store[(I1 + i)].Vi == Store[(I2 + i)].Vi))
        {
            #line 521
            i = (i + 1);
        }
        else
        {
            #line 522
            b = C_false;
        }
    }
}


#line 526
//================================================================================
// scope: callsp (level : 2)

// forward declarations
void P_callsp_readi(void* _slink, T_text& f);
void P_callsp_readr(void* _slink, T_text& f);
void P_callsp_readc(void* _slink, T_text& f);
void P_callsp_writestr(void* _slink, T_text& f);
void P_callsp_getfile(void* _slink, T_text& f);
void P_callsp_putfile(void* _slink, T_text& f);

// activation record
struct Frame_callsp
{
    // locals
    T_boolean Line;
};

// function body
void P_callsp(void* _slink)
{
    // prologue/frame definition
    Frame_callsp _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 583
    switch(q)
    {
    case 0:
        #line 584
        switch(Store[Sp].Va)
        {
        case 5:
            #line 585
            P_callsp_getfile(&_F, Input);
            break;
        
        case 6:
            #line 586
            P_errori(nullptr, T_beta::C(" get on output file      "));
            break;
        
        case 7:
            #line 587
            P_callsp_getfile(&_F, Prd);
            break;
        
        case 8:
            #line 588
            P_errori(nullptr, T_beta::C(" get on prr file         "));
            break;
        }
        break;
    
    case 1:
        #line 590
        switch(Store[Sp].Va)
        {
        case 5:
            #line 591
            P_errori(nullptr, T_beta::C(" put on read file        "));
            break;
        
        case 6:
            #line 592
            P_callsp_putfile(&_F, Output);
            break;
        
        case 7:
            #line 593
            P_errori(nullptr, T_beta::C(" put on prd file         "));
            break;
        
        case 8:
            #line 594
            P_callsp_putfile(&_F, Prr);
            break;
        }
        break;
    
    case 2:
        #line 598
        Np = Store[Sp].Va;
        
        #line 598
        Sp = (Sp - 1);
        break;
    
    case 3:
        #line 600
        switch(Store[Sp].Va)
        {
        case 5:
            #line 601
            Input >> _READLN;
            
            #line 602
            Store[C_inputadr].Vc = Input.bufferVar();
            break;
        
        case 6:
            #line 604
            P_errori(nullptr, T_beta::C(" readln on output file   "));
            break;
        
        case 7:
            #line 605
            Input >> _READLN;
            
            #line 606
            Store[C_inputadr].Vc = Input.bufferVar();
            break;
        
        case 8:
            #line 608
            P_errori(nullptr, T_beta::C(" readln on prr file      "));
            break;
        }
        
        #line 610
        Sp = (Sp - 1);
        break;
    
    case 4:
        #line 612
        Ad = (Np - Store[Sp].Va);
        
        #line 614
        if((Ad <= Ep))
        {
            #line 615
            P_errori(nullptr, T_beta::C(" store overflow          "));
        }
        
        #line 616
        Np = Ad;
        
        #line 616
        Ad = Store[(Sp - 1)].Va;
        
        #line 617
        Store[Ad].Va = Np;
        
        #line 618
        Sp = (Sp - 2);
        break;
    
    case 5:
        #line 620
        switch(Store[Sp].Va)
        {
        case 5:
            #line 621
            P_errori(nullptr, T_beta::C(" writeln on input file   "));
            break;
        
        case 6:
            #line 622
            Output << _WRITELN;
            break;
        
        case 7:
            #line 623
            P_errori(nullptr, T_beta::C(" writeln on prd file     "));
            break;
        
        case 8:
            #line 624
            Prr << _WRITELN;
            break;
        }
        
        #line 626
        Sp = (Sp - 1);
        break;
    
    case 6:
        #line 628
        switch(Store[Sp].Va)
        {
        case 5:
            #line 629
            P_errori(nullptr, T_beta::C(" write on input file     "));
            break;
        
        case 6:
            #line 630
            P_callsp_writestr(&_F, Output);
            break;
        
        case 7:
            #line 631
            P_errori(nullptr, T_beta::C(" write on prd file       "));
            break;
        
        case 8:
            #line 632
            P_callsp_writestr(&_F, Prr);
            break;
        }
        break;
    
    case 7:
        #line 634
        switch(Store[Sp].Va)
        {
        case 5:
            #line 635
            _F.Line = _eoln(Input);
            break;
        
        case 6:
            #line 636
            P_errori(nullptr, T_beta::C(" eoln output file        "));
            break;
        
        case 7:
            #line 637
            _F.Line = _eoln(Prd);
            break;
        
        case 8:
            #line 638
            P_errori(nullptr, T_beta::C(" eoln on prr file        "));
            break;
        }
        
        #line 640
        Store[Sp].Vb = _F.Line;
        break;
    
    case 8:
        #line 642
        switch(Store[Sp].Va)
        {
        case 5:
            #line 643
            P_errori(nullptr, T_beta::C(" write on input file     "));
            break;
        
        case 6:
            #line 644
            Output << _format(Store[(Sp - 2)].Vi, Store[(Sp - 1)].Vi, 0);
            break;
        
        case 7:
            #line 646
            P_errori(nullptr, T_beta::C(" write on prd file       "));
            break;
        
        case 8:
            #line 647
            Prr << _format(Store[(Sp - 2)].Vi, Store[(Sp - 1)].Vi, 0);
            break;
        }
        
        #line 650
        Sp = (Sp - 3);
        break;
    
    case 9:
        #line 652
        switch(Store[Sp].Va)
        {
        case 5:
            #line 653
            P_errori(nullptr, T_beta::C(" write on input file     "));
            break;
        
        case 6:
            #line 654
            Output << _format(Store[(Sp - 2)].Vr, Store[(Sp - 1)].Vi, 0);
            break;
        
        case 7:
            #line 656
            P_errori(nullptr, T_beta::C(" write on prd file       "));
            break;
        
        case 8:
            #line 657
            Prr << _format(Store[(Sp - 2)].Vr, Store[(Sp - 1)].Vi, 0);
            break;
        }
        
        #line 660
        Sp = (Sp - 3);
        break;
    
    case 10:
        #line 662
        switch(Store[Sp].Va)
        {
        case 5:
            #line 663
            P_errori(nullptr, T_beta::C(" write on input file     "));
            break;
        
        case 6:
            #line 664
            Output << _format(Store[(Sp - 2)].Vc, Store[(Sp - 1)].Vi, 0);
            break;
        
        case 7:
            #line 666
            P_errori(nullptr, T_beta::C(" write on prd file       "));
            break;
        
        case 8:
            #line 667
            Prr << _format(_chr(Store[(Sp - 2)].Vi), Store[(Sp - 1)].Vi, 0);
            break;
        }
        
        #line 670
        Sp = (Sp - 3);
        break;
    
    case 11:
        #line 672
        switch(Store[Sp].Va)
        {
        case 5:
            #line 673
            P_callsp_readi(&_F, Input);
            break;
        
        case 6:
            #line 674
            P_errori(nullptr, T_beta::C(" read on output file     "));
            break;
        
        case 7:
            #line 675
            P_callsp_readi(&_F, Prd);
            break;
        
        case 8:
            #line 676
            P_errori(nullptr, T_beta::C(" read on prr file        "));
            break;
        }
        break;
    
    case 12:
        #line 678
        switch(Store[Sp].Va)
        {
        case 5:
            #line 679
            P_callsp_readr(&_F, Input);
            break;
        
        case 6:
            #line 680
            P_errori(nullptr, T_beta::C(" read on output file     "));
            break;
        
        case 7:
            #line 681
            P_callsp_readr(&_F, Prd);
            break;
        
        case 8:
            #line 682
            P_errori(nullptr, T_beta::C(" read on prr file        "));
            break;
        }
        break;
    
    case 13:
        #line 684
        switch(Store[Sp].Va)
        {
        case 5:
            #line 685
            P_callsp_readc(&_F, Input);
            break;
        
        case 6:
            #line 686
            P_errori(nullptr, T_beta::C(" read on output file     "));
            break;
        
        case 7:
            #line 687
            P_callsp_readc(&_F, Prd);
            break;
        
        case 8:
            #line 688
            P_errori(nullptr, T_beta::C(" read on prr file        "));
            break;
        }
        break;
    
    case 14:
        #line 690
        Store[Sp].Vr = _sin(Store[Sp].Vr);
        break;
    
    case 15:
        #line 691
        Store[Sp].Vr = _cos(Store[Sp].Vr);
        break;
    
    case 16:
        #line 692
        Store[Sp].Vr = _exp(Store[Sp].Vr);
        break;
    
    case 17:
        #line 693
        Store[Sp].Vr = _ln(Store[Sp].Vr);
        break;
    
    case 18:
        #line 694
        Store[Sp].Vr = _sqrt(Store[Sp].Vr);
        break;
    
    case 19:
        #line 695
        Store[Sp].Vr = _arctan(Store[Sp].Vr);
        break;
    
    case 20:
        #line 696
        Ad = Store[Sp].Va;
        
        #line 697
        Store[Ad].Va = Np;
        
        #line 698
        Sp = (Sp - 1);
        break;
    }
    
    { /* NOP */ }
}


#line 530
//================================================================================
// scope: callsp_readi (level : 3)

// activation record
struct Frame_callsp_readi
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;

    // locals
    T_address Ad;
};

// function body
void P_callsp_readi(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_readi _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    #line 532
    _F.Ad = Store[(Sp - 1)].Va;
    
    #line 533
    _F.f >> Store[_F.Ad].Vi;
    
    #line 534
    Store[Store[Sp].Va].Vc = _F.f.bufferVar();
    
    #line 535
    Sp = (Sp - 2);
}


#line 538
//================================================================================
// scope: callsp_readr (level : 3)

// activation record
struct Frame_callsp_readr
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;

    // locals
    T_address Ad;
};

// function body
void P_callsp_readr(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_readr _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    #line 540
    _F.Ad = Store[(Sp - 1)].Va;
    
    #line 541
    _F.f >> Store[_F.Ad].Vr;
    
    #line 542
    Store[Store[Sp].Va].Vc = _F.f.bufferVar();
    
    #line 543
    Sp = (Sp - 2);
}


#line 546
//================================================================================
// scope: callsp_readc (level : 3)

// activation record
struct Frame_callsp_readc
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;

    // locals
    T_address Ad;
    T_char c;
};

// function body
void P_callsp_readc(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_readc _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    #line 548
    _F.f >> _F.c;
    
    #line 549
    _F.Ad = Store[(Sp - 1)].Va;
    
    #line 550
    Store[_F.Ad].Vc = _F.c;
    
    #line 551
    Store[Store[Sp].Va].Vc = _F.f.bufferVar();
    
    #line 552
    Store[Store[Sp].Va].Vi = _ord(_F.f.bufferVar());
    
    #line 553
    Sp = (Sp - 2);
}


#line 556
//================================================================================
// scope: callsp_writestr (level : 3)

// activation record
struct Frame_callsp_writestr
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;

    // locals
    T_address Ad;
    T_integer i;
    T_integer j;
    T_integer k;
};

// function body
void P_callsp_writestr(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_writestr _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    #line 559
    _F.Ad = Store[(Sp - 3)].Va;
    
    #line 560
    _F.k = Store[(Sp - 2)].Vi;
    
    #line 560
    _F.j = Store[(Sp - 1)].Vi;
    
    #line 562
    if((_F.k > _F.j))
    {
        #line 562
        _FOR_TO(_F.i, 1, (_F.k - _F.j))
        {
            #line 562
            _F.f << ' ';
        }
        _FOR_END(_F.i)
    }
    else
    {
        #line 563
        _F.j = _F.k;
    }
    
    #line 564
    _FOR_TO(_F.i, 0, (_F.j - 1))
    {
        #line 564
        _F.f << Store[(_F.Ad + _F.i)].Vc;
    }
    _FOR_END(_F.i)
    
    #line 565
    Sp = (Sp - 4);
}


#line 568
//================================================================================
// scope: callsp_getfile (level : 3)

// activation record
struct Frame_callsp_getfile
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;

    // locals
    T_address Ad;
};

// function body
void P_callsp_getfile(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_getfile _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    #line 570
    _F.Ad = Store[Sp].Va;
    
    #line 571
    _get(_F.f);
    
    #line 571
    Store[_F.Ad].Vc = _F.f.bufferVar();
    
    #line 572
    Sp = (Sp - 1);
}


#line 575
//================================================================================
// scope: callsp_putfile (level : 3)

// activation record
struct Frame_callsp_putfile
{
   Frame_callsp* _slink;

    // parameters
    T_text& f;

    // locals
    T_address Ad;
};

// function body
void P_callsp_putfile(void* _slink, T_text& f)
{
    // prologue/frame definition
    Frame_callsp_putfile _F = { (Frame_callsp*)_slink, f };
    
    // subroutine body
    #line 577
    _F.Ad = Store[Sp].Va;
    
    #line 578
    _F.f.bufferVar() = Store[_F.Ad].Vc;
    
    #line 578
    _put(_F.f);
    
    #line 579
    Sp = (Sp - 1);
    
    { /* NOP */ }
}

