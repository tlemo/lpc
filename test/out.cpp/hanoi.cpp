
#include <lpcRuntime.h>

#line 0 "hanoi.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "_output" },
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

#line 1
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 1, 1024, T_integer > T_array_2;
typedef _T_Array< 1, 2, T_array_2 > T_array_1;
typedef _T_Array< 1, 1024, T_integer > T_array_4;
typedef _T_Array< 1, 3, T_array_4 > T_array_3;

// forward declarations
void P_hanoi1(void* _slink);
void P_hanoi2(void* _slink);
void P_hanoi3(void* _slink, T_integer n, T_integer i, T_integer j);

// program variables
T_text _input;
T_text _output;
T_integer i;
T_integer j;
T_array_1 M;
T_integer n;
T_integer Nn;
T_array_3 S;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 47
    _output << "HANOI" << _WRITELN;
    
    #line 47
    _output << "n=";
    
    #line 47
    _input >> n >> _READLN;
    
    #line 47
    _output << n << _WRITELN;
    
    #line 48
    _output << "1.HANOI1(umplerea matricii) 2.HANOI2(construire arbore complet)" << _WRITELN;
    
    #line 49
    _output << "3.HANOI3(recursiv)  4.EXIT" << _WRITELN;
    
    #line 50
    Nn = 1;
    
    #line 50
    _FOR_TO(i, 1, n)
    {
        #line 50
        Nn = (2 * Nn);
    }
    _FOR_END(i)
    
    #line 50
    Nn = (Nn - 1);
    
    #line 51
    do
    {
        #line 52
        _output << "optiunea dvs:";
        
        #line 52
        _input >> i >> _READLN;
        
        #line 53
        switch(i)
        {
        case 1:
            #line 54
            P_hanoi1(nullptr);
            
            #line 55
            _FOR_TO(i, 1, 2)
            {
                #line 56
                _FOR_TO(j, 1, Nn)
                {
                    #line 56
                    _output << _format(M[i][j], 4, 0);
                }
                _FOR_END(j)
                
                #line 57
                _output << _WRITELN;
                
                { /* NOP */ }
            }
            _FOR_END(i)
            
            { /* NOP */ }
            break;
        
        case 2:
            #line 58
            P_hanoi2(nullptr);
            
            #line 58
            _output << _WRITELN;
            
            { /* NOP */ }
            break;
        
        case 3:
            #line 59
            P_hanoi3(nullptr, n, 1, 2);
            
            #line 59
            _output << _WRITELN;
            break;
        
        case 4:
            #line 60
            _output << "BYE-BYE!" << _WRITELN;
            break;
        }
        
        { /* NOP */ }
    }
    while(!(i == 4));
    
    { /* NOP */ }
}


#line 5
//================================================================================
// scope: hanoi1 (level : 2)

// activation record
struct Frame_hanoi1
{
    // locals
    T_integer i;
    T_integer j;
    T_integer k;
    T_integer K1;
    T_integer K2;
    T_integer K3;
    T_integer l;
    T_integer w;
};

// function body
void P_hanoi1(void* _slink)
{
    // prologue/frame definition
    Frame_hanoi1 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 8
    _F.K1 = (Nn + 1);
    
    #line 8
    _F.K2 = (_F.K1 / 2);
    
    #line 8
    _F.K3 = (_F.K2 / 2);
    
    #line 8
    M[1][_F.K2] = 1;
    
    #line 8
    M[2][_F.K2] = 2;
    
    #line 9
    _FOR_DOWNTO(_F.w, n, 2)
    {
        #line 10
        _F.l = _F.K2;
        
        #line 11
        while((_F.l <= Nn))
        {
            #line 12
            _F.i = M[1][_F.l];
            
            #line 12
            _F.j = M[2][_F.l];
            
            #line 12
            _F.k = ((6 - _F.i) - _F.j);
            
            #line 13
            M[1][(_F.l - _F.K3)] = _F.i;
            
            #line 13
            M[2][(_F.l - _F.K3)] = _F.k;
            
            #line 14
            M[1][(_F.l + _F.K3)] = _F.k;
            
            #line 14
            M[2][(_F.l + _F.K3)] = _F.j;
            
            #line 15
            _F.l = (_F.l + _F.K1);
            
            { /* NOP */ }
        }
        
        #line 16
        _F.K1 = _F.K2;
        
        #line 16
        _F.K2 = _F.K3;
        
        #line 16
        _F.K3 = (_F.K3 / 2);
        
        { /* NOP */ }
    }
    _FOR_END(_F.w)
    
    { /* NOP */ }
}


#line 19
//================================================================================
// scope: hanoi2 (level : 2)

// activation record
struct Frame_hanoi2
{
    // locals
    T_integer i;
    T_integer j;
    T_integer k;
    T_integer Niv;
    T_integer Ns;
};

// function body
void P_hanoi2(void* _slink)
{
    // prologue/frame definition
    Frame_hanoi2 _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 23
    _F.i = 1;
    
    #line 23
    _F.j = 2;
    
    #line 23
    _F.Ns = 0;
    
    #line 23
    _F.Niv = 1;
    
    #line 24
    do
    {
        #line 25
        _F.k = ((6 - _F.i) - _F.j);
        
        #line 26
        while((_F.Niv < (n - 1)))
        {
            #line 27
            _F.Ns = (_F.Ns + 1);
            
            #line 27
            S[1][_F.Ns] = _F.i;
            
            #line 27
            S[2][_F.Ns] = _F.j;
            
            #line 27
            _F.j = _F.k;
            
            #line 28
            _F.k = ((6 - _F.i) - _F.j);
            
            #line 28
            _F.Niv = (_F.Niv + 1);
            
            #line 28
            S[3][_F.Ns] = _F.Niv;
            
            { /* NOP */ }
        }
        
        #line 30
        _output << '(' << _F.i << ',' << _F.k << ')' << '(' << _F.i << ',' << _F.j << ')' << '(' << _F.k << ',' << _F.j << ')';
        
        #line 31
        if((_F.Ns == 0))
        {
            #line 31
            goto L_1;
        }
        
        #line 32
        _F.i = S[1][_F.Ns];
        
        #line 32
        _F.j = S[2][_F.Ns];
        
        #line 32
        _F.Niv = S[3][_F.Ns];
        
        #line 32
        _F.Ns = (_F.Ns - 1);
        
        #line 33
        _output << '(' << _F.i << ',' << _F.j << ')';
        
        #line 34
        _F.i = ((6 - _F.i) - _F.j);
        
        { /* NOP */ }
    }
    while(!C_false);
    
    L_1:
    { /* NOP */ }
}


#line 38
//================================================================================
// scope: hanoi3 (level : 2)

// activation record
struct Frame_hanoi3
{
    // parameters
    T_integer n;
    T_integer i;
    T_integer j;

    // locals
    T_integer k;
};

// function body
void P_hanoi3(void* _slink, T_integer n, T_integer i, T_integer j)
{
    // prologue/frame definition
    Frame_hanoi3 _F = {n, i, j };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 41
    if((_F.n == 1))
    {
        #line 41
        _output << '(' << _F.i << ',' << _F.j << ')';
    }
    else
    {
        #line 42
        _F.k = ((6 - _F.i) - _F.j);
        
        #line 43
        P_hanoi3(nullptr, (_F.n - 1), _F.i, _F.k);
        
        #line 43
        _output << '(' << _F.i << ',' << _F.j << ')';
        
        #line 43
        P_hanoi3(nullptr, (_F.n - 1), _F.k, _F.j);
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}

