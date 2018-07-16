
#include <lpcRuntime.h>

// "enums.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "_output" },
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

// line 2
//================================================================================
// scope: program scope (level : 1)

// types
typedef int T_TimeOfDay;
typedef int T_Days;

// constants
const T_TimeOfDay C_Afternoon = 1;
const T_TimeOfDay C_Evening = 2;
const T_Days C_Fri = 4;
const T_Days C_Mon = 0;
const T_TimeOfDay C_Morning = 0;
const T_TimeOfDay C_Night = 3;
const T_Days C_Sat = 5;
const T_Days C_Sun = 6;
const T_Days C_Thu = 3;
const T_Days C_Tue = 1;
const T_Days C_Wed = 2;

// program variables
T_text _input;
T_text _output;
T_Days Day;
T_real EveningPremium;
T_real NightPremium;
T_real RegularRate;
T_TimeOfDay Time;
T_real TotalPay;
T_real WeekendPremium;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 16
    _output << _format("Pay rate table", 33, 0) << _WRITELN;
    
    // line 17
    _output << _WRITELN;
    
    // line 18
    _output << "  DAY        Morning  Afternoon";
    
    // line 19
    _output << "  Evening    Night" << _WRITELN;
    
    // line 20
    _output << _WRITELN;
    
    // line 22
    RegularRate = 12.0000;
    
    // line 23
    EveningPremium = 1.10000;
    
    // line 24
    NightPremium = 1.33000;
    
    // line 25
    WeekendPremium = 1.25000;
    
    // line 27
    _FOR_TO(Day, C_Mon, C_Sun)
    {
        // line 28
        switch(Day)
        {
        case C_Mon:
            // line 29
            _output << "Monday   ";
            break;
        
        case C_Tue:
            // line 30
            _output << "Tuesday  ";
            break;
        
        case C_Wed:
            // line 31
            _output << "Wednesday";
            break;
        
        case C_Thu:
            // line 32
            _output << "Thursday ";
            break;
        
        case C_Fri:
            // line 33
            _output << "Friday   ";
            break;
        
        case C_Sat:
            // line 34
            _output << "Saturday ";
            break;
        
        case C_Sun:
            // line 35
            _output << "Sunday   ";
            break;
        }
        
        // line 38
        _FOR_TO(Time, C_Morning, C_Night)
        {
            // line 39
            switch(Time)
            {
            case C_Morning:
                // line 40
                TotalPay = RegularRate;
                break;
            
            case C_Afternoon:
                // line 41
                TotalPay = RegularRate;
                break;
            
            case C_Evening:
                // line 42
                TotalPay = (RegularRate * EveningPremium);
                break;
            
            case C_Night:
                // line 43
                TotalPay = (RegularRate * NightPremium);
                break;
            }
            
            // line 46
            switch(Day)
            {
            case C_Sat:
                // line 47
                TotalPay = (TotalPay * WeekendPremium);
                break;
            
            case C_Sun:
                // line 48
                TotalPay = (TotalPay * WeekendPremium);
                break;
            }
            
            // line 51
            _output << _format(TotalPay, 10, 2);
            
            { /* NOP */ }
        }
        _FOR_END(Time)
        
        // line 53
        _output << _WRITELN;
        
        { /* NOP */ }
    }
    _FOR_END(Day)
    
    { /* NOP */ }
}

