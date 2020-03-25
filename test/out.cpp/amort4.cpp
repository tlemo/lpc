
#include <lpcRuntime.h>

#line 0 "amort4.pas"

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

#line 2
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Range<1, 12, signed __int8> T_range_1;
typedef _T_Range<1, 12, signed __int8> T_range_2;

// forward declarations
void P_CalculatePayment(void* _slink);
void P_InitializeData(void* _slink);
void P_PrintAnnualHeader(void* _slink);
void P_CalculateAndPrint(void* _slink);
void P_PrintAnnualSummary(void* _slink);

// program variables
T_text _input;
T_text _output;
T_real AnnualAccumInterest;
T_real Balance;
T_real InterestRate;
T_range_1 Month;
T_integer NumberOfYears;
T_real OriginalLoan;
T_real Payment;
T_range_2 StartingMonth;
T_integer Year;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 89
    P_InitializeData(nullptr);
    
    #line 90
    do
    {
        #line 91
        P_PrintAnnualHeader(nullptr);
        
        #line 92
        _FOR_TO(Month, StartingMonth, 12)
        {
            #line 93
            P_CalculateAndPrint(nullptr);
            
            { /* NOP */ }
        }
        _FOR_END(Month)
        
        #line 95
        P_PrintAnnualSummary(nullptr);
        
        #line 96
        StartingMonth = 1;
        
        { /* NOP */ }
    }
    while(!(Balance <= 0.000000));
    
    { /* NOP */ }
}


#line 15
//================================================================================
// scope: CalculatePayment (level : 2)

// activation record
struct Frame_CalculatePayment
{
    // locals
    T_integer Index;
    T_real Temp;
};

// function body
void P_CalculatePayment(void* _slink)
{
    // prologue/frame definition
    Frame_CalculatePayment _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 19
    _F.Temp = 1.00000;
    
    #line 20
    _FOR_TO(_F.Index, 1, (12 * NumberOfYears))
    {
        #line 21
        _F.Temp = (_F.Temp * (1.00000 + InterestRate));
    }
    _FOR_END(_F.Index)
    
    #line 22
    Payment = ((double)(OriginalLoan * InterestRate) / (1.00000 - ((double)1.00000 / _F.Temp)));
    
    { /* NOP */ }
}


#line 25
//================================================================================
// scope: InitializeData (level : 2)

// activation record
struct Frame_InitializeData
{};

// function body
void P_InitializeData(void* _slink)
{
    // prologue/frame definition
    Frame_InitializeData _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 27
    _output << "   Pascal amortization program" << _WRITELN;
    
    #line 28
    _output << _WRITELN;
    
    #line 29
    _output << "Enter amount borrowed                         ";
    
    #line 30
    _input >> OriginalLoan >> _READLN;
    
    #line 31
    Balance = OriginalLoan;
    
    #line 32
    _output << "Enter interest rate as percentage (i.e. 13.5) ";
    
    #line 33
    _input >> InterestRate >> _READLN;
    
    #line 34
    InterestRate = ((double)InterestRate / 1200.00);
    
    #line 35
    _output << "Enter number of years of payoff               ";
    
    #line 36
    _input >> NumberOfYears >> _READLN;
    
    #line 37
    _output << "Enter month of first payment (i.e. 5 for May) ";
    
    #line 38
    _input >> StartingMonth >> _READLN;
    
    #line 39
    _output << "Enter year of first payment (i.e. 1991)       ";
    
    #line 40
    _input >> Year >> _READLN;
    
    #line 41
    P_CalculatePayment(nullptr);
    
    #line 42
    AnnualAccumInterest = 0.000000;
    
    { /* NOP */ }
}


#line 45
//================================================================================
// scope: PrintAnnualHeader (level : 2)

// activation record
struct Frame_PrintAnnualHeader
{};

// function body
void P_PrintAnnualHeader(void* _slink)
{
    // prologue/frame definition
    Frame_PrintAnnualHeader _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 47
    _output << _WRITELN;
    
    #line 48
    _output << _WRITELN;
    
    #line 49
    _output << "Original loan amount = " << _format(OriginalLoan, 10, 2) << "   Interest rate = " << _format((1200.00 * InterestRate), 6, 2) << '%' << _WRITELN;
    
    #line 51
    _output << _WRITELN;
    
    #line 52
    _output << "Month    payment  interest    princ   balance" << _WRITELN;
    
    #line 53
    _output << _WRITELN;
    
    { /* NOP */ }
}


#line 56
//================================================================================
// scope: CalculateAndPrint (level : 2)

// activation record
struct Frame_CalculateAndPrint
{
    // locals
    T_real InterestPayment;
    T_real PrincipalPayment;
};

// function body
void P_CalculateAndPrint(void* _slink)
{
    // prologue/frame definition
    Frame_CalculateAndPrint _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 60
    if((Balance > 0.000000))
    {
        #line 61
        _F.InterestPayment = (InterestRate * Balance);
        
        #line 62
        _F.PrincipalPayment = (Payment - _F.InterestPayment);
        
        #line 63
        if((_F.PrincipalPayment > Balance))
        {
            #line 64
            _F.PrincipalPayment = Balance;
            
            #line 65
            Payment = (_F.PrincipalPayment + _F.InterestPayment);
            
            #line 66
            Balance = 0.000000;
            
            { /* NOP */ }
        }
        else
        {
            #line 69
            Balance = (Balance - _F.PrincipalPayment);
            
            { /* NOP */ }
        }
        
        #line 71
        AnnualAccumInterest = (AnnualAccumInterest + _F.InterestPayment);
        
        #line 73
        _output << _format(Month, 5, 0) << _format(Payment, 10, 2) << _format(_F.InterestPayment, 10, 2) << _format(_F.PrincipalPayment, 10, 2) << _format(Balance, 10, 2) << _WRITELN;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


#line 78
//================================================================================
// scope: PrintAnnualSummary (level : 2)

// activation record
struct Frame_PrintAnnualSummary
{};

// function body
void P_PrintAnnualSummary(void* _slink)
{
    // prologue/frame definition
    Frame_PrintAnnualSummary _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 80
    _output << _WRITELN;
    
    #line 81
    _output << "Total interest for " << _format(Year, 5, 0) << " = " << _format(AnnualAccumInterest, 10, 2) << _WRITELN;
    
    #line 83
    AnnualAccumInterest = 0.000000;
    
    #line 84
    Year = (Year + 1);
    
    #line 85
    _output << _WRITELN;
    
    { /* NOP */ }
}

