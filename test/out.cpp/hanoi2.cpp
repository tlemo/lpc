
#include <lpcRuntime.h>

#line 0 "hanoi2.pas"

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
struct T_nod;
_PTR_TYPE(T_point, T_nod)
struct T_nod
{
    T_integer Inf1;
    T_integer Inf2;
    T_integer Inf3;
    T_point Urm;
};

// forward declarations
void P_punere(void* _slink, T_integer& x, T_integer& y, T_integer& z);
void P_scoatere(void* _slink);

// program variables
T_text _input;
T_text _output;
T_integer i;
T_integer j;
T_integer k;
T_integer l;
T_integer n;
T_integer N1;
T_integer Niv;
T_integer Ns;
T_point Virf;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 29
    _output << "n=";
    
    #line 29
    _input >> n >> _READLN;
    
    #line 29
    _output << n << _WRITELN;
    
    #line 30
    N1 = 1;
    
    #line 31
    _FOR_TO(i, 1, n)
    {
        #line 31
        N1 = (N1 * 2);
    }
    _FOR_END(i)
    
    #line 32
    _new(Virf._ptr);
    
    #line 33
    (*Virf._ptr).Urm = nullptr;
    
    #line 34
    i = 1;
    
    #line 34
    j = 2;
    
    #line 35
    Ns = 0;
    
    #line 35
    Niv = 1;
    
    #line 36
    do
    {
        #line 37
        k = ((6 - i) - j);
        
        #line 38
        while((Niv < (n - 1)))
        {
            #line 39
            Ns = (Ns + 1);
            
            #line 40
            Niv = (Niv + 1);
            
            #line 41
            P_punere(nullptr, i, j, Niv);
            
            #line 41
            j = k;
            
            #line 41
            k = ((6 - i) - j);
            
            { /* NOP */ }
        }
        
        #line 43
        _output << i << "-->" << k << _WRITELN;
        
        #line 44
        _output << i << "-->" << j << _WRITELN;
        
        #line 45
        _output << k << "-->" << j << _WRITELN;
        
        #line 46
        if((Ns == 0))
        {
            #line 46
            goto L_1;
        }
        
        #line 47
        i = (*Virf._ptr).Inf1;
        
        #line 47
        j = (*Virf._ptr).Inf2;
        
        #line 47
        Niv = (*Virf._ptr).Inf3;
        
        #line 48
        Ns = (Ns - 1);
        
        #line 49
        _output << i << "-->" << j << _WRITELN;
        
        #line 50
        i = ((6 - i) - j);
        
        { /* NOP */ }
    }
    while(!C_false);
    
    L_1:
    { /* NOP */ }
}


#line 12
//================================================================================
// scope: punere (level : 2)

// activation record
struct Frame_punere
{
    // parameters
    T_integer& x;
    T_integer& y;
    T_integer& z;

    // locals
    T_point p;
};

// function body
void P_punere(void* _slink, T_integer& x, T_integer& y, T_integer& z)
{
    // prologue/frame definition
    Frame_punere _F = {x, y, z };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 15
    _new(_F.p._ptr);
    
    #line 16
    (*_F.p._ptr) = (*Virf._ptr);
    
    #line 17
    (*Virf._ptr).Urm = _F.p;
    
    #line 18
    (*Virf._ptr).Inf1 = _F.x;
    
    #line 19
    (*Virf._ptr).Inf2 = _F.y;
    
    #line 20
    (*Virf._ptr).Inf3 = _F.z;
    
    { /* NOP */ }
}


#line 23
//================================================================================
// scope: scoatere (level : 2)

// activation record
struct Frame_scoatere
{};

// function body
void P_scoatere(void* _slink)
{
    // prologue/frame definition
    Frame_scoatere _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 25
    Virf = (*Virf._ptr).Urm;
    
    { /* NOP */ }
}

