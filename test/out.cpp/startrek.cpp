
#include <lpcRuntime.h>

// "startrek.pas"

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
typedef int T_condtypes;
typedef _T_Array< 1, 10, T_char > T_array_2;
typedef _T_Array< 0, 4, T_array_2 > T_array_1;
typedef _T_Range<0, 7, signed __int8> T_quadrange;
struct T_quadxy
{
    T_quadrange x;
    T_quadrange y;
};
typedef _T_Range<0, 7, signed __int8> T_sectrange;
struct T_sectxy
{
    T_sectrange x;
    T_sectrange y;
};
typedef _T_Array< 1, 20, T_char > T_array_4;
struct T_devicerec
{
    T_array_4 Name;
    T_integer Downtime;
};
typedef _T_Array< 48, 55, T_devicerec > T_array_3;
typedef _T_Range<0, 9, signed __int8> T_digits;
struct T_quadrec
{
    T_boolean Ishistory;
    T_digits Klingbasenum;
    T_digits Klingnum;
    T_digits Fedbasenum;
    T_digits Starnum;
};
typedef _T_Array< 0, 7, T_quadrec > T_array_6;
typedef _T_Array< 0, 7, T_array_6 > T_array_5;
struct T_klingonrec
{
    T_sectxy Position;
    T_integer Energyleft;
};
typedef _T_Array< 0, 11, T_klingonrec > T_array_7;
typedef int T_objects;
typedef _T_Array< 0, 7, T_objects > T_array_9;
typedef _T_Array< 0, 7, T_array_9 > T_array_8;
typedef _T_Array< 0, 6, T_char > T_array_10;

// forward declarations
T_real F_expp(void* _slink, T_real r);
T_integer F_random(void* _slink, T_integer Low, T_integer Hi);
T_integer F_distance(void* _slink, T_sectrange Pos1x, T_sectrange Pos1y, T_sectxy Pos2);
T_real F_radians(void* _slink, T_integer Degrees);
T_integer F_interval(void* _slink, T_integer Number, T_integer Minvalue, T_integer Maxvalue);
void P_reinitialize(void* _slink);
void P_initialize(void* _slink);
void P_setcondition(void* _slink);
void P_klingonattack(void* _slink);
void P_printdigit(void* _slink, T_integer Number, T_boolean& Mustprint);
void P_setupquad(void* _slink, T_quadxy Quad, T_sectxy& Entsect);
void P_printquadrant(void* _slink);
void P_printgalaxy(void* _slink, T_integer Topx, T_integer Lefty, T_integer Size, T_boolean Markhistory);
void P_printdamage(void* _slink);
void P_moveenterprise(void* _slink);
void P_firephasers(void* _slink);
void P_firetorpedoes(void* _slink);
void P_selfdestruct(void* _slink);
void P_command(void* _slink);
void P_instructions(void* _slink);
void P_finishgame(void* _slink);

// constants
const T_integer C_alarm = 7;
const T_condtypes C_cblack = 3;
const T_condtypes C_cdocked = 4;
const T_condtypes C_cgreen = 0;
const T_condtypes C_cred = 1;
const T_condtypes C_cyellow = 2;
const T_integer C_entenergy = 5000;
const T_char C_entsym = 'E';
const T_char C_fbasesym = 'B';
const T_integer C_galaxysize = 7;
const T_char C_kbasesym = '@';
const T_integer C_klingenergy = 300;
const T_char C_klingsym = 'K';
const T_char C_maxdevice = '7';
const T_integer C_maxdigit = 9;
const T_integer C_maxklingons = 11;
const T_char C_mindevice = '0';
const T_char C_nosym = '.';
const T_char C_novasym = '+';
const T_integer C_quadsize = 7;
const T_objects C_senterprise = 2;
const T_objects C_sfedbase = 5;
const T_objects C_sklingbase = 6;
const T_objects C_sklingon = 4;
const T_objects C_snothing = 0;
const T_objects C_snova = 3;
const T_objects C_sstar = 1;
const T_char C_starsym = '*';
const T_integer C_starttorps = 10;

// non-local goto targets
const int NL_99 = 1;

// program variables
T_integer Badpoints;
T_char Bell;
T_condtypes Condition;
T_array_1 Condnames;
T_integer Curenergy;
T_quadxy Curquad;
T_sectxy Cursect;
T_integer Curtorps;
T_integer Curyear;
T_array_3 Device;
T_integer Endyear;
T_array_5 Galaxy;
T_text Input;
T_array_7 Klingons;
T_text Output;
T_array_8 Quadrant;
T_integer Rndseq;
T_integer Startklingons;
T_integer Startyear;
T_array_10 Symbols;
T_integer Totalkbases;
T_integer Totalklingons;

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
        case NL_99: goto L_99;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 946
        Rndseq = 1;
        
        // line 947
        P_initialize(nullptr);
        
        // line 948
        P_setupquad(nullptr, Curquad, Cursect);
        
        // line 949
        P_setcondition(nullptr);
        
        // line 950
        P_instructions(nullptr);
        
        // line 951
        P_klingonattack(nullptr);
        
        // line 952
        P_printquadrant(nullptr);
        
        // line 953
        while(((((Curenergy > 0) && (Totalklingons > 0)) && (Totalkbases > 0)) && (Curyear != Endyear)))
        {
            // line 955
            P_command(nullptr);
        }
        
        // line 956
        P_finishgame(nullptr);
        
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


// line 65
//================================================================================
// scope: expp (level : 2)

// activation record
struct Frame_expp
{
    // parameters
    T_real r;

    // locals
    T_real _fnvalue;
    T_integer i;
    T_real m;
    T_real t;
};

// function body
T_real F_expp(void* _slink, T_real r)
{
    // prologue/frame definition
    Frame_expp _F = {r };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 72
    _F.t = 0.000000;
    
    // line 73
    _F.m = 1.00000;
    
    // line 74
    _FOR_TO(_F.i, 1, 55)
    {
        // line 76
        _F.t = (_F.t + _F.m);
        
        // line 77
        _F.m = (_F.m * ((double)_F.r / _F.i));
    }
    _FOR_END(_F.i)
    
    // line 80
    _F._fnvalue = _F.t;
    
    // epilogue
    return _F._fnvalue;
}


// line 84
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
    // line 90
    _F.Gamma = ((C_random_a * _mod(Rndseq , (C_random_m / C_random_a))) - (_mod(C_random_m , C_random_a) * (Rndseq / (C_random_m / C_random_a))));
    
    // line 91
    if((_F.Gamma > 0))
    {
        // line 91
        Rndseq = _F.Gamma;
    }
    else
    {
        // line 91
        Rndseq = (_F.Gamma + C_random_m);
    }
    
    // line 92
    _F._fnvalue = ((Rndseq / (C_maxint / ((_F.Hi - _F.Low) + 1))) + _F.Low);
    
    // epilogue
    return _F._fnvalue;
}


// line 95
//================================================================================
// scope: distance (level : 2)

// activation record
struct Frame_distance
{
    // parameters
    T_sectrange Pos1x;
    T_sectrange Pos1y;
    T_sectxy Pos2;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_distance(void* _slink, T_sectrange Pos1x, T_sectrange Pos1y, T_sectxy Pos2)
{
    // prologue/frame definition
    Frame_distance _F = {Pos1x, Pos1y, Pos2 };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 97
    _F._fnvalue = _round(_sqrt((_sqr((_F.Pos1x - _F.Pos2.x)) + _sqr((_F.Pos1y - _F.Pos2.y)))));
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 100
//================================================================================
// scope: radians (level : 2)

// activation record
struct Frame_radians
{
    // parameters
    T_integer Degrees;

    // locals
    T_real _fnvalue;
};

// function body
T_real F_radians(void* _slink, T_integer Degrees)
{
    // prologue/frame definition
    Frame_radians _F = {Degrees };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 102
    _F._fnvalue = (_F.Degrees * 0.0174533);
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 105
//================================================================================
// scope: interval (level : 2)

// activation record
struct Frame_interval
{
    // parameters
    T_integer Number;
    T_integer Minvalue;
    T_integer Maxvalue;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_interval(void* _slink, T_integer Number, T_integer Minvalue, T_integer Maxvalue)
{
    // prologue/frame definition
    Frame_interval _F = {Number, Minvalue, Maxvalue };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 107
    if((_F.Number < _F.Minvalue))
    {
        // line 108
        _F._fnvalue = _F.Minvalue;
    }
    else
    {
        // line 110
        if((_F.Number > _F.Maxvalue))
        {
            // line 111
            _F._fnvalue = _F.Maxvalue;
        }
        else
        {
            // line 113
            _F._fnvalue = _F.Number;
        }
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 116
//================================================================================
// scope: reinitialize (level : 2)

// activation record
struct Frame_reinitialize
{
    // locals
    T_char Ch;
};

// function body
void P_reinitialize(void* _slink)
{
    // prologue/frame definition
    Frame_reinitialize _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 119
    Curenergy = C_entenergy;
    
    // line 120
    Curtorps = C_starttorps;
    
    // line 121
    _FOR_TO(_F.Ch, C_mindevice, C_maxdevice)
    {
        // line 122
        Device[_F.Ch].Downtime = 0;
    }
    _FOR_END(_F.Ch)
    
    { /* NOP */ }
}


// line 125
//================================================================================
// scope: initialize (level : 2)

// activation record
struct Frame_initialize
{
    // locals
    T_integer i;
    T_integer j;
    T_integer Rnum;
    T_integer Totalfedbase;
};

// function body
void P_initialize(void* _slink)
{
    // prologue/frame definition
    Frame_initialize _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 128
    Device['0'].Name = "Warp Engines        ";
    
    // line 129
    Device['1'].Name = "Short Range Sensors ";
    
    // line 130
    Device['2'].Name = "Long Range Sensors  ";
    
    // line 131
    Device['3'].Name = "Phaser Control      ";
    
    // line 132
    Device['4'].Name = "Photon Tubes        ";
    
    // line 133
    Device['5'].Name = "Damage Control      ";
    
    // line 134
    Device['6'].Name = "History Computers   ";
    
    // line 135
    Device['7'].Name = "Self Destruct       ";
    
    // line 136
    Symbols[C_snothing] = C_nosym;
    
    // line 137
    Symbols[C_sstar] = C_starsym;
    
    // line 138
    Symbols[C_senterprise] = C_entsym;
    
    // line 139
    Symbols[C_snova] = C_novasym;
    
    // line 140
    Symbols[C_sklingon] = C_klingsym;
    
    // line 141
    Symbols[C_sfedbase] = C_fbasesym;
    
    // line 142
    Symbols[C_sklingbase] = C_kbasesym;
    
    // line 143
    Condnames[C_cred] = "Red       ";
    
    // line 144
    Condnames[C_cgreen] = "Green     ";
    
    // line 145
    Condnames[C_cyellow] = "Yellow    ";
    
    // line 146
    Condnames[C_cblack] = "Black     ";
    
    // line 147
    Condnames[C_cdocked] = "Docked    ";
    
    // line 148
    Cursect.x = F_random(nullptr, 0, C_quadsize);
    
    // line 149
    Cursect.y = F_random(nullptr, 0, C_quadsize);
    
    // line 150
    Curquad.x = F_random(nullptr, 0, C_galaxysize);
    
    // line 151
    Curquad.y = F_random(nullptr, 0, C_galaxysize);
    
    // line 152
    Totalklingons = 0;
    
    // line 153
    Totalkbases = 0;
    
    // line 154
    _FOR_TO(_F.i, 0, C_galaxysize)
    {
        // line 155
        _FOR_TO(_F.j, 0, C_galaxysize)
        {
            // line 158
            Galaxy[_F.i][_F.j].Ishistory = C_false;
            
            // line 159
            _F.Rnum = F_random(nullptr, 0, _sqr(C_galaxysize));
            
            // line 160
            if((F_random(nullptr, 0, _sqr(C_galaxysize)) <= 6))
            {
                // line 161
                Galaxy[_F.i][_F.j].Klingbasenum = 1;
            }
            else
            {
                // line 163
                Galaxy[_F.i][_F.j].Klingbasenum = 0;
            }
            
            // line 164
            Totalkbases = (Totalkbases + Galaxy[_F.i][_F.j].Klingbasenum);
            
            // line 165
            Galaxy[_F.i][_F.j].Klingnum = (_trunc((F_expp(nullptr, (-F_random(nullptr, 0, C_galaxysize))) * C_maxdigit)) / 2);
            
            // line 166
            Totalklingons = (Totalklingons + Galaxy[_F.i][_F.j].Klingnum);
            
            // line 167
            if((F_random(nullptr, 0, _sqr(C_galaxysize)) < 3))
            {
                // line 168
                Galaxy[_F.i][_F.j].Fedbasenum = 1;
            }
            else
            {
                // line 170
                Galaxy[_F.i][_F.j].Fedbasenum = 0;
            }
            
            // line 171
            _F.Totalfedbase = (_F.Totalfedbase + Galaxy[_F.i][_F.j].Fedbasenum);
            
            // line 172
            Galaxy[_F.i][_F.j].Starnum = F_random(nullptr, 0, C_quadsize);
            
            { /* NOP */ }
        }
        _FOR_END(_F.j)
    }
    _FOR_END(_F.i)
    
    // line 174
    Startklingons = Totalklingons;
    
    // line 175
    if((_F.Totalfedbase == 0))
    {
        // line 176
        Galaxy[F_random(nullptr, 0, C_galaxysize)][F_random(nullptr, 0, C_galaxysize)].Fedbasenum = 1;
    }
    
    // line 177
    if((Totalkbases == 0))
    {
        // line 179
        Galaxy[F_random(nullptr, 0, C_galaxysize)][F_random(nullptr, 0, C_galaxysize)].Klingbasenum = 1;
        
        // line 181
        Totalkbases = 1;
        
        { /* NOP */ }
    }
    
    // line 183
    Curyear = F_random(nullptr, 3000, 4000);
    
    // line 184
    Startyear = Curyear;
    
    // line 185
    Endyear = (Startyear + F_random(nullptr, 10, 40));
    
    // line 186
    Badpoints = 0;
    
    // line 187
    Bell = _chr(C_alarm);
    
    // line 188
    P_reinitialize(nullptr);
    
    { /* NOP */ }
}


// line 191
//================================================================================
// scope: setcondition (level : 2)

// activation record
struct Frame_setcondition
{
    // locals
    T_integer i;
    T_integer j;
};

// function body
void P_setcondition(void* _slink)
{
    // prologue/frame definition
    Frame_setcondition _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 194
    if((Galaxy[Curquad.x][Curquad.y].Klingbasenum != 0))
    {
        // line 195
        Condition = C_cblack;
    }
    else
    {
        // line 197
        if((Galaxy[Curquad.x][Curquad.y].Klingnum != 0))
        {
            // line 198
            Condition = C_cred;
        }
        else
        {
            // line 200
            if((Curenergy < (C_entenergy / 10)))
            {
                // line 201
                Condition = C_cyellow;
            }
            else
            {
                // line 203
                Condition = C_cgreen;
            }
        }
    }
    
    // line 204
    _FOR_TO(_F.i, (Cursect.x - 1), (Cursect.x + 1))
    {
        // line 205
        _FOR_TO(_F.j, (Cursect.y - 1), (Cursect.y + 1))
        {
            // line 206
            if((Quadrant[F_interval(nullptr, _F.i, 0, C_quadsize)][F_interval(nullptr, _F.j, 0, C_quadsize)] == C_sfedbase))
            {
                // line 208
                Condition = C_cdocked;
            }
        }
        _FOR_END(_F.j)
    }
    _FOR_END(_F.i)
    
    { /* NOP */ }
}


// line 211
//================================================================================
// scope: klingonattack (level : 2)

// types
typedef _T_Array< 1, 8, T_char > T_klingonattack_array_11;

// activation record
struct Frame_klingonattack
{
    // locals
    T_integer Hit;
    T_integer i;
    T_klingonattack_array_11 Shiptype;
};

// function body
void P_klingonattack(void* _slink)
{
    // prologue/frame definition
    Frame_klingonattack _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 216
    if(((Galaxy[Curquad.x][Curquad.y].Klingbasenum != 0) || (Galaxy[Curquad.x][Curquad.y].Klingnum != 0)))
    {
        // line 218
        if((Condition == C_cdocked))
        {
            // line 219
            Output << "Starbase shields protect the Enterprise" << _WRITELN;
        }
        else
        {
            // line 221
            _FOR_TO(_F.i, 0, C_maxklingons)
            {
                // line 223
                if((Klingons[_F.i].Energyleft > 0))
                {
                    // line 225
                    _F.Hit = _trunc(((double)(((double)Klingons[_F.i].Energyleft / F_distance(nullptr, Klingons[_F.i].Position.x, Klingons[_F.i].Position.y, Cursect)) * (10 + F_random(nullptr, 0, 10))) / 10));
                    
                    // line 228
                    Curenergy = (Curenergy - _F.Hit);
                    
                    // line 229
                    if((Klingons[_F.i].Energyleft == C_entenergy))
                    {
                        // line 230
                        _F.Shiptype = "Starbase";
                    }
                    else
                    {
                        // line 232
                        _F.Shiptype = "        ";
                    }
                    
                    // line 233
                    Output << _format(_F.Hit, 1, 0) << " unit hit on Enterprise from Klingon ";
                    
                    // line 234
                    if((_F.Shiptype[1] != ' '))
                    {
                        // line 234
                        Output << _F.Shiptype << ' ';
                    }
                    
                    // line 235
                    Output << "at sector " << _format(Klingons[_F.i].Position.x, 1, 0) << '-' << _format(Klingons[_F.i].Position.y, 1, 0) << " (" << _format(Curenergy, 1, 0) << " left)" << _WRITELN;
                    
                    { /* NOP */ }
                }
            }
            _FOR_END(_F.i)
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 241
//================================================================================
// scope: printdigit (level : 2)

// activation record
struct Frame_printdigit
{
    // parameters
    T_integer Number;
    T_boolean& Mustprint;
};

// function body
void P_printdigit(void* _slink, T_integer Number, T_boolean& Mustprint)
{
    // prologue/frame definition
    Frame_printdigit _F = {Number, Mustprint };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 243
    _F.Mustprint = (_F.Mustprint || (_F.Number != 0));
    
    // line 244
    if(_F.Mustprint)
    {
        // line 245
        Output << _format(_F.Number, 1, 0);
    }
    else
    {
        // line 247
        Output << ' ';
    }
    
    { /* NOP */ }
}


// line 250
//================================================================================
// scope: setupquad (level : 2)

// forward declarations
void P_setupquad_setupstuff(void* _slink, T_objects Object, T_integer Count);

// activation record
struct Frame_setupquad
{
    // parameters
    T_quadxy Quad;
    T_sectxy& Entsect;

    // locals
    T_integer i;
    T_integer j;
    T_integer Klingindex;
    T_integer Novacount;
};

// function body
void P_setupquad(void* _slink, T_quadxy Quad, T_sectxy& Entsect)
{
    // prologue/frame definition
    Frame_setupquad _F = {Quad, Entsect };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_sklingon);
    _setLiteral1.set(C_sklingbase);
    
    // subroutine body
    // line 268
    _FOR_TO(_F.i, 0, C_quadsize)
    {
        // line 269
        _FOR_TO(_F.j, 0, C_quadsize)
        {
            // line 270
            Quadrant[_F.i][_F.j] = C_snothing;
        }
        _FOR_END(_F.j)
    }
    _FOR_END(_F.i)
    
    // line 271
    _F.Entsect.x = F_random(nullptr, 0, C_quadsize);
    
    // line 272
    _F.Entsect.y = F_random(nullptr, 0, C_quadsize);
    
    // line 273
    Quadrant[_F.Entsect.x][_F.Entsect.y] = C_senterprise;
    
    // line 276
    _F.Novacount = F_random(nullptr, 0, (Galaxy[_F.Quad.x][_F.Quad.y].Starnum / 2));
    
    // line 277
    P_setupquad_setupstuff(&_F, C_sstar, (Galaxy[_F.Quad.x][_F.Quad.y].Starnum - _F.Novacount));
    
    // line 278
    P_setupquad_setupstuff(&_F, C_snova, _F.Novacount);
    
    // line 279
    P_setupquad_setupstuff(&_F, C_sklingon, Galaxy[_F.Quad.x][_F.Quad.y].Klingnum);
    
    // line 280
    P_setupquad_setupstuff(&_F, C_sfedbase, Galaxy[_F.Quad.x][_F.Quad.y].Fedbasenum);
    
    // line 281
    P_setupquad_setupstuff(&_F, C_sklingbase, Galaxy[_F.Quad.x][_F.Quad.y].Klingbasenum);
    
    { /* NOP */ }
    
    // line 283
    _F.Klingindex = 0;
    
    // line 284
    _FOR_TO(_F.i, 0, C_quadsize)
    {
        // line 285
        _FOR_TO(_F.j, 0, C_quadsize)
        {
            // line 286
            if((_setLiteral1 & Quadrant[_F.i][_F.j]))
            {
                // line 289
                Klingons[_F.Klingindex].Position.x = _F.i;
                
                // line 290
                Klingons[_F.Klingindex].Position.y = _F.j;
                
                // line 291
                if((Quadrant[_F.i][_F.j] == C_sklingbase))
                {
                    // line 292
                    Klingons[_F.Klingindex].Energyleft = C_entenergy;
                }
                else
                {
                    // line 294
                    Klingons[_F.Klingindex].Energyleft = C_klingenergy;
                }
                
                // line 295
                _F.Klingindex = (_F.Klingindex + 1);
                
                { /* NOP */ }
            }
        }
        _FOR_END(_F.j)
    }
    _FOR_END(_F.i)
    
    // line 297
    _FOR_TO(_F.Klingindex, _F.Klingindex, C_maxklingons)
    {
        // line 298
        Klingons[_F.Klingindex].Energyleft = 0;
    }
    _FOR_END(_F.Klingindex)
    
    { /* NOP */ }
}


// line 253
//================================================================================
// scope: setupquad_setupstuff (level : 3)

// activation record
struct Frame_setupquad_setupstuff
{
   Frame_setupquad* _slink;

    // parameters
    T_objects Object;
    T_integer Count;

    // locals
    T_integer x;
    T_integer y;
};

// function body
void P_setupquad_setupstuff(void* _slink, T_objects Object, T_integer Count)
{
    // prologue/frame definition
    Frame_setupquad_setupstuff _F = { (Frame_setupquad*)_slink, Object, Count };
    
    // subroutine body
    // line 256
    while((_F.Count != 0))
    {
        // line 258
        do
        {
            // line 259
            _F.x = F_random(nullptr, 0, C_quadsize);
            
            // line 260
            _F.y = F_random(nullptr, 0, C_quadsize);
            
            { /* NOP */ }
        }
        while(!(Quadrant[_F.x][_F.y] == C_snothing));
        
        // line 262
        Quadrant[_F.x][_F.y] = _F.Object;
        
        // line 263
        _F.Count = (_F.Count - 1);
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 301
//================================================================================
// scope: printquadrant (level : 2)

// activation record
struct Frame_printquadrant
{
    // locals
    T_quadrange i;
    T_quadrange j;
};

// function body
void P_printquadrant(void* _slink)
{
    // prologue/frame definition
    Frame_printquadrant _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 304
    P_setcondition(nullptr);
    
    // line 305
    if((Device['1'].Downtime != 0))
    {
        // line 306
        Output << "*** Short Range Sensors Inoperable ***" << _WRITELN;
    }
    else
    {
        // line 309
        Output << "----------------------" << _WRITELN;
        
        // line 310
        _FOR_TO(_F.i, 0, C_quadsize)
        {
            // line 312
            _FOR_TO(_F.j, 0, C_quadsize)
            {
                // line 313
                Output << Symbols[Quadrant[_F.i][_F.j]] << ' ';
            }
            _FOR_END(_F.j)
            
            // line 314
            Output << "   ";
            
            // line 315
            switch(_F.i)
            {
            case 0:
                // line 316
                Output << "Stardate         " << _format(Curyear, 1, 0) << _WRITELN;
                break;
            
            case 1:
                // line 317
                Output << "Condition        " << Condnames[Condition] << _WRITELN;
                break;
            
            case 2:
                // line 318
                Output << "Quadrant         " << _format(Curquad.x, 1, 0) << '-' << _format(Curquad.y, 1, 0) << _WRITELN;
                break;
            
            case 3:
                // line 319
                Output << "Sector           " << _format(Cursect.x, 1, 0) << '-' << _format(Cursect.y, 1, 0) << _WRITELN;
                break;
            
            case 4:
                // line 320
                Output << "Energy           " << _format(Curenergy, 1, 0) << _WRITELN;
                break;
            
            case 5:
                // line 321
                Output << "Photon torpedoes " << _format(Curtorps, 1, 0) << _WRITELN;
                break;
            
            case 6:
                // line 322
                Output << "Klingons left    " << _format(Totalklingons, 1, 0) << _WRITELN;
                break;
            
            case 7:
                // line 323
                Output << _WRITELN;
                break;
            }
            
            { /* NOP */ }
        }
        _FOR_END(_F.i)
        
        // line 326
        Output << "----------------------" << _WRITELN;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 330
//================================================================================
// scope: printgalaxy (level : 2)

// forward declarations
void P_printgalaxy_printseparator(void* _slink, T_integer Entries);

// activation record
struct Frame_printgalaxy
{
    // parameters
    T_integer Topx;
    T_integer Lefty;
    T_integer Size;
    T_boolean Markhistory;

    // locals
    T_integer i;
    T_integer j;
    T_boolean Mustprint;
};

// function body
void P_printgalaxy(void* _slink, T_integer Topx, T_integer Lefty, T_integer Size, T_boolean Markhistory)
{
    // prologue/frame definition
    Frame_printgalaxy _F = {Topx, Lefty, Size, Markhistory };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(0, C_quadsize);
    
    // subroutine body
    // line 344
    if(_F.Markhistory)
    {
        // line 345
        Output << "Long Range Sensor Scan For Quadrant " << _format(Curquad.x, 1, 0) << '-' << _format(Curquad.y, 1, 0) << _WRITELN;
    }
    else
    {
        // line 349
        Output << "History Computer Report; Stardate " << _format(Curyear, 1, 0) << _WRITELN;
        
        // line 350
        if((Condition != C_cdocked))
        {
            // line 351
            Curenergy = (Curenergy - 100);
        }
        
        { /* NOP */ }
    }
    
    // line 353
    P_printgalaxy_printseparator(&_F, _F.Size);
    
    // line 354
    _FOR_TO(_F.i, _F.Topx, (_F.Topx + _F.Size))
    {
        // line 356
        _FOR_TO(_F.j, _F.Lefty, (_F.Lefty + _F.Size))
        {
            // line 357
            if(((_setLiteral1 & _F.i) && (_setLiteral2 & _F.j)))
            {
                // line 359
                if((_F.Markhistory || Galaxy[_F.i][_F.j].Ishistory))
                {
                    // line 361
                    Galaxy[_F.i][_F.j].Ishistory = (Galaxy[_F.i][_F.j].Ishistory || (Device['6'].Downtime == 0));
                    
                    // line 362
                    _F.Mustprint = C_false;
                    
                    // line 363
                    Output << '|';
                    
                    // line 364
                    P_printdigit(nullptr, Galaxy[_F.i][_F.j].Klingbasenum, _F.Mustprint);
                    
                    // line 365
                    P_printdigit(nullptr, Galaxy[_F.i][_F.j].Klingnum, _F.Mustprint);
                    
                    // line 366
                    P_printdigit(nullptr, Galaxy[_F.i][_F.j].Fedbasenum, _F.Mustprint);
                    
                    // line 367
                    _F.Mustprint = C_true;
                    
                    // line 368
                    P_printdigit(nullptr, Galaxy[_F.i][_F.j].Starnum, _F.Mustprint);
                    
                    // line 369
                    Output << ' ';
                    
                    { /* NOP */ }
                }
                else
                {
                    // line 372
                    Output << "|+++++";
                }
            }
            else
            {
                // line 374
                Output << "|xxxxx";
            }
        }
        _FOR_END(_F.j)
        
        // line 375
        Output << '|' << _WRITELN;
        
        // line 376
        P_printgalaxy_printseparator(&_F, _F.Size);
        
        { /* NOP */ }
    }
    _FOR_END(_F.i)
    
    { /* NOP */ }
}


// line 335
//================================================================================
// scope: printgalaxy_printseparator (level : 3)

// activation record
struct Frame_printgalaxy_printseparator
{
   Frame_printgalaxy* _slink;

    // parameters
    T_integer Entries;

    // locals
    T_integer Count;
};

// function body
void P_printgalaxy_printseparator(void* _slink, T_integer Entries)
{
    // prologue/frame definition
    Frame_printgalaxy_printseparator _F = { (Frame_printgalaxy*)_slink, Entries };
    
    // subroutine body
    // line 338
    _FOR_TO(_F.Count, 0, _F.Entries)
    {
        // line 339
        Output << "|-----";
    }
    _FOR_END(_F.Count)
    
    // line 340
    Output << '|' << _WRITELN;
    
    { /* NOP */ }
}


// line 380
//================================================================================
// scope: printdamage (level : 2)

// activation record
struct Frame_printdamage
{
    // locals
    T_char Ch;
};

// function body
void P_printdamage(void* _slink)
{
    // prologue/frame definition
    Frame_printdamage _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 383
    Output << "Device name:      Repair Time:" << _WRITELN;
    
    // line 384
    _FOR_TO(_F.Ch, C_mindevice, C_maxdevice)
    {
        // line 385
        Output << _format(Device[_F.Ch].Name, 20, 0) << _format(Device[_F.Ch].Downtime, 5, 0) << _WRITELN;
    }
    _FOR_END(_F.Ch)
    
    { /* NOP */ }
}


// line 388
//================================================================================
// scope: moveenterprise (level : 2)

// forward declarations
void P_moveenterprise_handledamage(void* _slink);
void P_moveenterprise_moveintra(void* _slink, T_real& Xpos, T_real& Ypos, T_real& Xinc, T_real& Yinc, T_integer Course, T_real Warp);

// activation record
struct Frame_moveenterprise
{
    // locals
    T_integer Course;
    T_real Warp;
    T_real Xinc;
    T_real Xpos;
    T_real Yinc;
    T_real Ypos;
};

// function body
void P_moveenterprise(void* _slink)
{
    // prologue/frame definition
    Frame_moveenterprise _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral3;
    _setLiteral3.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral4;
    _setLiteral4.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral5;
    _setLiteral5.set(C_sstar);
    _setLiteral5.set(C_snova);
    _setLiteral5.set(C_sklingon);
    _setLiteral5.set(C_sklingbase);
    
    // subroutine body
    // line 445
    Output << "Course: ";
    
    // line 446
    Input >> _F.Course >> _READLN;
    
    // line 447
    Output << "Warp factor (0-12): ";
    
    // line 448
    Input >> _F.Warp >> _READLN;
    
    // line 449
    if((((_F.Warp < 0.000000) || (_F.Warp > 12.0000)) || ((_F.Warp > 0.200000) && (Device[C_mindevice].Downtime != 0))))
    {
        // line 451
        Output << "Can't move that fast !!" << _WRITELN;
    }
    else
    {
        // line 454
        Curyear = (Curyear + 1);
        
        // line 455
        Curenergy = _trunc((Curenergy - (8 * _F.Warp)));
        
        // line 456
        P_moveenterprise_handledamage(&_F);
        
        // line 457
        Quadrant[Cursect.x][Cursect.y] = C_snothing;
        
        // line 458
        P_moveenterprise_moveintra(&_F, _F.Xpos, _F.Ypos, _F.Xinc, _F.Yinc, _F.Course, _F.Warp);
        
        // line 459
        if(((_setLiteral1 & _round(_F.Xpos)) && (_setLiteral2 & _round(_F.Ypos))))
        {
            // line 461
            if((Quadrant[_round(_F.Xpos)][_round(_F.Ypos)] == C_sfedbase))
            {
                // line 463
                Output << "Collision with starbase's elastic shields at sector " << _format(_round(_F.Xpos), 1, 0) << '-' << _format(_round(_F.Ypos), 1, 0) << _WRITELN;
                
                // line 465
                P_moveenterprise_moveintra(&_F, _F.Xpos, _F.Ypos, _F.Xinc, _F.Yinc, _mod((_F.Course + 180) , 360), _F.Warp);
                
                { /* NOP */ }
            }
        }
        
        // line 467
        if(((_setLiteral3 & _round(_F.Xpos)) && (_setLiteral4 & _round(_F.Ypos))))
        {
            // line 470
            if((_setLiteral5 & Quadrant[_round(_F.Xpos)][_round(_F.Ypos)]))
            {
                // line 473
                Output << "Enterprise blocked by object at sector " << _format(_round(_F.Xpos), 1, 0) << '-' << _format(_round(_F.Ypos), 1, 0) << _WRITELN;
                
                // line 475
                _F.Xpos = (_F.Xpos - _F.Xinc);
                
                // line 476
                _F.Ypos = (_F.Ypos - _F.Yinc);
                
                { /* NOP */ }
            }
            
            // line 478
            Cursect.x = F_interval(nullptr, _round(_F.Xpos), 0, C_quadsize);
            
            // line 479
            Cursect.y = F_interval(nullptr, _round(_F.Ypos), 0, C_quadsize);
            
            // line 480
            Quadrant[Cursect.x][Cursect.y] = C_senterprise;
            
            { /* NOP */ }
        }
        else
        {
            // line 484
            Curquad.x = F_interval(nullptr, _trunc(((Curquad.x + (_F.Warp * _F.Xinc)) + (Cursect.x * 0.125000))), 0, C_galaxysize);
            
            // line 486
            Curquad.y = F_interval(nullptr, _trunc(((Curquad.y + (_F.Warp * _F.Yinc)) + (Cursect.y * 0.125000))), 0, C_galaxysize);
            
            // line 488
            P_setupquad(nullptr, Curquad, Cursect);
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    // line 491
    P_setcondition(nullptr);
    
    // line 492
    if((Condition == C_cdocked))
    {
        // line 493
        P_reinitialize(nullptr);
    }
    
    { /* NOP */ }
}


// line 392
//================================================================================
// scope: moveenterprise_handledamage (level : 3)

// activation record
struct Frame_moveenterprise_handledamage
{
   Frame_moveenterprise* _slink;

    // locals
    T_char Ch;
    T_char Startch;
};

// function body
void P_moveenterprise_handledamage(void* _slink)
{
    // prologue/frame definition
    Frame_moveenterprise_handledamage _F = { (Frame_moveenterprise*)_slink };
    
    // subroutine body
    // line 395
    _FOR_TO(_F.Ch, C_mindevice, C_maxdevice)
    {
        // line 396
        if((Device[_F.Ch].Downtime != 0))
        {
            // line 397
            Device[_F.Ch].Downtime = (Device[_F.Ch].Downtime - 1);
        }
    }
    _FOR_END(_F.Ch)
    
    // line 398
    if((F_random(nullptr, 0, 100) < 6))
    {
        // line 400
        _F.Ch = _chr(F_random(nullptr, _ord(C_mindevice), _ord(C_maxdevice)));
        
        // line 401
        Output << "*** Space storm, " << Device[_F.Ch].Name << " damaged ***" << _WRITELN;
        
        // line 402
        Device[_F.Ch].Downtime = F_random(nullptr, Device[_F.Ch].Downtime, 5);
        
        { /* NOP */ }
    }
    else
    {
        // line 405
        if((F_random(nullptr, 0, 100) < 12))
        {
            // line 407
            _F.Ch = _chr(F_random(nullptr, _ord(C_mindevice), _ord(C_maxdevice)));
            
            // line 408
            _F.Startch = _F.Ch;
            
            // line 409
            do
            {
                // line 410
                if((_F.Ch == C_maxdevice))
                {
                    // line 411
                    _F.Ch = C_mindevice;
                }
                else
                {
                    // line 413
                    _F.Ch = _succ(_F.Ch);
                }
                
                { /* NOP */ }
            }
            while(!((_F.Ch == _F.Startch) || (Device[_F.Ch].Downtime != 0)));
            
            // line 416
            if((Device[_F.Ch].Downtime != 0))
            {
                // line 418
                Output << "*** Truce, " << Device[_F.Ch].Name << " state of repair improved ***" << _WRITELN;
                
                // line 420
                Device[_F.Ch].Downtime = F_random(nullptr, 0, (Device[_F.Ch].Downtime - 1));
                
                { /* NOP */ }
            }
            
            { /* NOP */ }
        }
    }
    
    { /* NOP */ }
}


// line 425
//================================================================================
// scope: moveenterprise_moveintra (level : 3)

// activation record
struct Frame_moveenterprise_moveintra
{
   Frame_moveenterprise* _slink;

    // parameters
    T_real& Xpos;
    T_real& Ypos;
    T_real& Xinc;
    T_real& Yinc;
    T_integer Course;
    T_real Warp;
};

// function body
void P_moveenterprise_moveintra(void* _slink, T_real& Xpos, T_real& Ypos, T_real& Xinc, T_real& Yinc, T_integer Course, T_real Warp)
{
    // prologue/frame definition
    Frame_moveenterprise_moveintra _F = { (Frame_moveenterprise*)_slink, Xpos, Ypos, Xinc, Yinc, Course, Warp };
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(0, C_quadsize);
    
    // subroutine body
    // line 428
    _F.Xinc = (-_cos(F_radians(nullptr, _F.Course)));
    
    // line 429
    _F.Yinc = _sin(F_radians(nullptr, _F.Course));
    
    // line 430
    _F.Xpos = Cursect.x;
    
    // line 431
    _F.Ypos = Cursect.y;
    
    // line 432
    while((((_setLiteral1 & _round(_F.Xpos)) && (_setLiteral2 & _round(_F.Ypos))) && (_F.Warp >= 0.125000)))
    {
        // line 434
        if((Quadrant[_round(_F.Xpos)][_round(_F.Ypos)] == C_snothing))
        {
            // line 436
            _F.Xpos = (_F.Xpos + _F.Xinc);
            
            // line 437
            _F.Ypos = (_F.Ypos + _F.Yinc);
            
            // line 438
            _F.Warp = (_F.Warp - 0.125000);
            
            { /* NOP */ }
        }
        else
        {
            // line 441
            _F.Warp = 0.000000;
        }
    }
    
    { /* NOP */ }
}


// line 496
//================================================================================
// scope: firephasers (level : 2)

// activation record
struct Frame_firephasers
{
    // locals
    T_integer Fireamount;
    T_integer Hit;
    T_integer i;
};

// function body
void P_firephasers(void* _slink)
{
    // prologue/frame definition
    Frame_firephasers _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 499
    Output << "Phasers locked on target.  Energy available = " << _format(Curenergy, 1, 0) << _WRITELN;
    
    // line 500
    Output << "Number of units to fire: ";
    
    // line 501
    Input >> _F.Fireamount >> _READLN;
    
    // line 502
    if((_F.Fireamount > Curenergy))
    {
        // line 503
        Output << "Unable to fire." << _WRITELN;
    }
    else
    {
        // line 505
        if((_F.Fireamount > 0))
        {
            // line 507
            if((Condition != C_cdocked))
            {
                // line 508
                Curenergy = (Curenergy - _F.Fireamount);
            }
            
            // line 509
            _FOR_TO(_F.i, 0, C_maxklingons)
            {
                // line 511
                if((Klingons[_F.i].Energyleft > 0))
                {
                    // line 513
                    _F.Hit = (_trunc((((double)_F.Fireamount / F_distance(nullptr, Klingons[_F.i].Position.x, Klingons[_F.i].Position.y, Cursect)) * (10 + F_random(nullptr, 0, 10)))) / 10);
                    
                    // line 516
                    Klingons[_F.i].Energyleft = (Klingons[_F.i].Energyleft - _F.Hit);
                    
                    // line 517
                    Output << _F.Hit << " unit hit on Klingon at sector " << _format(Klingons[_F.i].Position.x, 1, 0) << '-' << _format(Klingons[_F.i].Position.y, 1, 0);
                    
                    // line 519
                    if((Klingons[_F.i].Energyleft > 0))
                    {
                        // line 520
                        Output << " (" << _format(Klingons[_F.i].Energyleft, 1, 0) << " left)" << _WRITELN;
                    }
                    else
                    {
                        // line 523
                        Output << ".  Klingon DESTROYED" << Bell << _WRITELN;
                        
                        // line 524
                        Totalklingons = (Totalklingons - 1);
                        
                        // line 525
                        Galaxy[Curquad.x][Curquad.y].Klingnum = (Galaxy[Curquad.x][Curquad.y].Klingnum - 1);
                        
                        // line 527
                        Quadrant[Klingons[_F.i].Position.x][Klingons[_F.i].Position.y] = C_snothing;
                        
                        { /* NOP */ }
                    }
                    
                    { /* NOP */ }
                }
            }
            _FOR_END(_F.i)
        }
    }
    
    { /* NOP */ }
}


// line 533
//================================================================================
// scope: firetorpedoes (level : 2)

// forward declarations
void P_firetorpedoes_hitnova(void* _slink, T_sectrange Novax, T_sectrange Novay, T_digits& Klingnum);
void P_firetorpedoes_hitklingbase(void* _slink, T_digits& Klingbasenum);

// activation record
struct Frame_firetorpedoes
{
    // locals
    T_integer Course;
    T_boolean Hitsomething;
    T_integer i;
    T_real Xinc;
    T_real Xpos;
    T_real Yinc;
    T_real Ypos;
};

// function body
void P_firetorpedoes(void* _slink)
{
    // prologue/frame definition
    Frame_firetorpedoes _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(0, C_quadsize);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set(0, C_quadsize);
    
    // subroutine body
    // line 585
    if((Curtorps == 0))
    {
        // line 586
        Output << "All photon torpedoes expended." << _WRITELN;
    }
    else
    {
        // line 589
        Output << "Torpedo course: ";
        
        // line 590
        Input >> _F.Course >> _READLN;
        
        // line 591
        if((Condition != C_cdocked))
        {
            // line 592
            Curtorps = (Curtorps - 1);
        }
        
        // line 593
        _F.Xinc = (-_cos(F_radians(nullptr, _F.Course)));
        
        // line 594
        _F.Yinc = _sin(F_radians(nullptr, _F.Course));
        
        // line 595
        _F.Xpos = Cursect.x;
        
        // line 596
        _F.Ypos = Cursect.y;
        
        // line 597
        _F.Hitsomething = C_false;
        
        // line 598
        Output << "Torpedo track:" << _WRITELN;
        
        // line 600
        while((((!_F.Hitsomething) && (_setLiteral1 & _round(_F.Xpos))) && (_setLiteral2 & _round(_F.Ypos))))
        {
            // line 602
            switch(Quadrant[_round(_F.Xpos)][_round(_F.Ypos)])
            {
            case C_senterprise:
            case C_snothing:
                // line 605
                Output << _format(_round(_F.Xpos), 1, 0) << '-' << _format(_round(_F.Ypos), 1, 0) << _WRITELN;
                
                // line 606
                _F.Xpos = (_F.Xpos + _F.Xinc);
                
                // line 607
                _F.Ypos = (_F.Ypos + _F.Yinc);
                
                { /* NOP */ }
                break;
            
            case C_sstar:
                // line 610
                _F.Hitsomething = C_true;
                
                // line 611
                Output << "Star destroyed, you got the planets, " << "too!  Nice shot!" << _WRITELN;
                
                // line 613
                Badpoints = (Badpoints + F_random(nullptr, 0, 500));
                
                // line 614
                Galaxy[Curquad.x][Curquad.y].Starnum = (Galaxy[Curquad.x][Curquad.y].Starnum - 1);
                
                { /* NOP */ }
                break;
            
            case C_snova:
                // line 617
                _F.Hitsomething = C_true;
                
                // line 618
                Galaxy[Curquad.x][Curquad.y].Starnum = (Galaxy[Curquad.x][Curquad.y].Starnum - 1);
                
                // line 619
                P_firetorpedoes_hitnova(&_F, T_sectrange::C(_round(_F.Xpos)), T_sectrange::C(_round(_F.Ypos)), Galaxy[Curquad.x][Curquad.y].Klingnum);
                
                { /* NOP */ }
                break;
            
            case C_sklingon:
                // line 622
                _F.Hitsomething = C_true;
                
                // line 623
                Output << "*** Klingon DESTROYED ***" << Bell;
                
                // line 624
                if((F_random(nullptr, 0, 100) < 30))
                {
                    // line 625
                    Output << " (The only good Klingon is a dead" << " Klingon)";
                }
                
                // line 627
                Output << _WRITELN;
                
                // line 628
                Galaxy[Curquad.x][Curquad.y].Klingnum = (Galaxy[Curquad.x][Curquad.y].Klingnum - 1);
                
                // line 629
                Totalklingons = (Totalklingons - 1);
                
                // line 630
                _FOR_TO(_F.i, 0, C_maxklingons)
                {
                    // line 632
                    if((((Klingons[_F.i].Energyleft > 0) && (_round(_F.Xpos) == Klingons[_F.i].Position.x)) && (_round(_F.Ypos) == Klingons[_F.i].Position.y)))
                    {
                        // line 635
                        Klingons[_F.i].Energyleft = 0;
                    }
                }
                _FOR_END(_F.i)
                
                { /* NOP */ }
                break;
            
            case C_sfedbase:
                // line 638
                _F.Hitsomething = C_true;
                
                // line 639
                Output << "*** Starbase destroyed ... Not good ***" << _WRITELN;
                
                // line 640
                Badpoints = (Badpoints + F_random(nullptr, 0, 500));
                
                // line 641
                Galaxy[Curquad.x][Curquad.y].Fedbasenum = (Galaxy[Curquad.x][Curquad.y].Fedbasenum - 1);
                
                { /* NOP */ }
                break;
            
            case C_sklingbase:
                // line 644
                _F.Hitsomething = C_true;
                
                // line 645
                P_firetorpedoes_hitklingbase(&_F, Galaxy[Curquad.x][Curquad.y].Klingbasenum);
                
                // line 646
                Totalkbases = (Totalkbases - 1);
                
                { /* NOP */ }
                break;
            }
        }
        
        // line 649
        if(_F.Hitsomething)
        {
            // line 650
            Quadrant[_round(_F.Xpos)][_round(_F.Ypos)] = C_snothing;
        }
        else
        {
            // line 652
            Output << "Torpedo missed." << _WRITELN;
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 538
//================================================================================
// scope: firetorpedoes_hitnova (level : 3)

// activation record
struct Frame_firetorpedoes_hitnova
{
   Frame_firetorpedoes* _slink;

    // parameters
    T_sectrange Novax;
    T_sectrange Novay;
    T_digits& Klingnum;

    // locals
    T_integer Hit;
    T_integer i;
};

// function body
void P_firetorpedoes_hitnova(void* _slink, T_sectrange Novax, T_sectrange Novay, T_digits& Klingnum)
{
    // prologue/frame definition
    Frame_firetorpedoes_hitnova _F = { (Frame_firetorpedoes*)_slink, Novax, Novay, Klingnum };
    
    // subroutine body
    // line 541
    Output << "Torpedo causes unstable star to nova" << _WRITELN;
    
    // line 542
    if((Condition != C_cdocked))
    {
        // line 544
        _F.Hit = ((600 * F_random(nullptr, 0, 10)) / F_distance(nullptr, _F.Novax, _F.Novay, Cursect));
        
        // line 545
        if((_F.Hit > 0))
        {
            // line 546
            Output << "Enterprise loses " << _format(_F.Hit, 1, 0) << " units of energy" << _WRITELN;
        }
        
        // line 547
        Curenergy = (Curenergy - _F.Hit);
        
        { /* NOP */ }
    }
    
    // line 549
    _FOR_TO(_F.i, 0, C_maxklingons)
    {
        // line 551
        if((Klingons[_F.i].Energyleft > 0))
        {
            // line 553
            Klingons[_F.i].Energyleft = (Klingons[_F.i].Energyleft - ((120 * F_random(nullptr, 0, 10)) / F_distance(nullptr, _F.Novax, _F.Novay, Klingons[_F.i].Position)));
            
            // line 555
            if((Klingons[_F.i].Energyleft <= 0))
            {
                // line 557
                Quadrant[Klingons[_F.i].Position.x][Klingons[_F.i].Position.y] = C_snothing;
                
                // line 558
                Totalklingons = (Totalklingons - 1);
                
                // line 559
                _F.Klingnum = (_F.Klingnum - 1);
                
                { /* NOP */ }
            }
            
            { /* NOP */ }
        }
    }
    _FOR_END(_F.i)
    
    { /* NOP */ }
}


// line 564
//================================================================================
// scope: firetorpedoes_hitklingbase (level : 3)

// activation record
struct Frame_firetorpedoes_hitklingbase
{
   Frame_firetorpedoes* _slink;

    // parameters
    T_digits& Klingbasenum;

    // locals
    T_integer i;
    T_integer Kdocked;
    T_quadrange Quadx;
    T_quadrange Quady;
};

// function body
void P_firetorpedoes_hitklingbase(void* _slink, T_digits& Klingbasenum)
{
    // prologue/frame definition
    Frame_firetorpedoes_hitklingbase _F = { (Frame_firetorpedoes*)_slink, Klingbasenum };
    
    // subroutine body
    // line 568
    Output << "*** Klingon Starbase DESTROYED ***" << Bell << _WRITELN;
    
    // line 569
    _F.Klingbasenum = (_F.Klingbasenum - 1);
    
    // line 570
    _F.Kdocked = 0;
    
    // line 571
    _FOR_TO(_F.i, 1, F_random(nullptr, 0, _sqr(C_galaxysize)))
    {
        // line 573
        do
        {
            // line 574
            _F.Quadx = F_random(nullptr, 0, C_galaxysize);
            
            // line 575
            _F.Quady = F_random(nullptr, 0, C_galaxysize);
            
            { /* NOP */ }
        }
        while(!((_F.Quadx != Curquad.x) || (_F.Quady != Curquad.y)));
        
        // line 577
        _F.Kdocked = (_F.Kdocked + Galaxy[_F.Quadx][_F.Quady].Klingnum);
        
        // line 578
        Galaxy[_F.Quadx][_F.Quady].Klingnum = 0;
        
        { /* NOP */ }
    }
    _FOR_END(_F.i)
    
    // line 580
    Output << _format(_F.Kdocked, 1, 0) << " Klingons were killed while docked" << _WRITELN;
    
    // line 581
    Totalklingons = (Totalklingons - _F.Kdocked);
    
    { /* NOP */ }
}


// line 656
//================================================================================
// scope: selfdestruct (level : 2)

// activation record
struct Frame_selfdestruct
{
    // locals
    T_char Ch;
};

// function body
void P_selfdestruct(void* _slink)
{
    // prologue/frame definition
    Frame_selfdestruct _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('y');
    _setLiteral1.set('Y');
    _setLiteral1.set('n');
    _setLiteral1.set('N');
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('y');
    _setLiteral2.set('Y');
    
    // subroutine body
    // line 659
    do
    {
        // line 660
        Output << "Are you SURE ? ";
        
        // line 661
        Input >> _F.Ch >> _READLN;
        
        // line 662
        Output << _WRITELN;
        
        { /* NOP */ }
    }
    while(!(_setLiteral1 & _F.Ch));
    
    // line 664
    if((_setLiteral2 & _F.Ch))
    {
        // line 665
        throw NL_99;
    }
}


// line 668
//================================================================================
// scope: command (level : 2)

// activation record
struct Frame_command
{
    // locals
    T_char Ch;
    T_boolean Validcommand;
};

// function body
void P_command(void* _slink)
{
    // prologue/frame definition
    Frame_command _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(C_mindevice, C_maxdevice);
    
    _T_GenericSet _setLiteral2;
    _setLiteral2.set('0');
    _setLiteral2.set('3');
    _setLiteral2.set('4');
    
    // subroutine body
    // line 672
    do
    {
        // line 673
        Output << "Command: ";
        
        // line 674
        Input >> _F.Ch >> _READLN;
        
        // line 675
        Output << _WRITELN;
        
        // line 676
        _F.Validcommand = (_setLiteral1 & _F.Ch);
        
        // line 677
        if(_F.Validcommand)
        {
            // line 679
            if(((Device[_F.Ch].Downtime != 0) && (_F.Ch > _succ(C_mindevice))))
            {
                // line 680
                Output << "*** " << Device[_F.Ch].Name << " INOPERABLE ***" << _WRITELN;
            }
            else
            {
                // line 682
                switch(_F.Ch)
                {
                case '0':
                    // line 683
                    P_moveenterprise(nullptr);
                    break;
                
                case '1':
                    // line 684
                    P_printquadrant(nullptr);
                    break;
                
                case '2':
                    // line 685
                    P_printgalaxy(nullptr, (Curquad.x - 1), (Curquad.y - 1), 2, C_true);
                    break;
                
                case '3':
                    // line 686
                    P_firephasers(nullptr);
                    break;
                
                case '4':
                    // line 687
                    P_firetorpedoes(nullptr);
                    break;
                
                case '5':
                    // line 688
                    P_printdamage(nullptr);
                    break;
                
                case '6':
                    // line 689
                    P_printgalaxy(nullptr, 0, 0, C_galaxysize, C_false);
                    break;
                
                case '7':
                    // line 690
                    P_selfdestruct(nullptr);
                    break;
                }
            }
            
            { /* NOP */ }
        }
        else
        {
            // line 695
            Output << "0 = Set course" << _WRITELN;
            
            // line 696
            Output << "1 = Short range sensor scan" << _WRITELN;
            
            // line 697
            Output << "2 = Long range sensor scan" << _WRITELN;
            
            // line 698
            Output << "3 = Fire phasors" << _WRITELN;
            
            // line 699
            Output << "4 = Fire photon torpedoes" << _WRITELN;
            
            // line 700
            Output << "5 = Damage control report" << _WRITELN;
            
            // line 701
            Output << "6 = History computer report" << _WRITELN;
            
            // line 702
            Output << "7 = Self destruct" << _WRITELN;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    while(!_F.Validcommand);
    
    // line 705
    if((_setLiteral2 & _F.Ch))
    {
        // line 707
        P_klingonattack(nullptr);
        
        // line 708
        P_printquadrant(nullptr);
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 712
//================================================================================
// scope: instructions (level : 2)

// forward declarations
void P_instructions_spacewait(void* _slink);
void P_instructions_page1(void* _slink);
void P_instructions_page2(void* _slink);
void P_instructions_page3(void* _slink);
void P_instructions_page4(void* _slink);
void P_instructions_page5(void* _slink);
void P_instructions_page6(void* _slink);

// activation record
struct Frame_instructions
{
    // locals
    T_char Ch;
};

// function body
void P_instructions(void* _slink)
{
    // prologue/frame definition
    Frame_instructions _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set('Y');
    _setLiteral1.set('y');
    
    // subroutine body
    // line 885
    Output << "Orders:  Stardate " << _format(Curyear, 1, 0) << _WRITELN;
    
    // line 886
    Output << _WRITELN;
    
    // line 887
    Output << "As commander of the United Starship Enterprise," << _WRITELN;
    
    // line 888
    Output << "your mission is to rid the galaxy of the deadly" << _WRITELN;
    
    // line 889
    Output << "Klingon menace.  To do this, you must destroy the " << _WRITELN;
    
    // line 890
    Output << "Klingon invasion force of " << _format(Totalklingons, 1, 0) << " battle cruisers." << _WRITELN;
    
    // line 891
    Output << "You have " << _format(((Endyear - Curyear) + 1), 1, 0) << " solar years to complete" << _WRITELN;
    
    // line 892
    Output << "your mission (i.e. until stardate " << _format(Endyear, 1, 0) << ").  The " << _WRITELN;
    
    // line 893
    Output << "Enterprise is currently in quadrant " << _format(Curquad.x, 1, 0) << '-' << _format(Curquad.y, 1, 0) << ", sector " << _format(Cursect.x, 1, 0) << '-' << _format(Cursect.y, 1, 0) << '.' << _WRITELN;
    
    // line 895
    Output << _WRITELN;
    
    // line 896
    Output << "Do you need further instructions (y/n) ? ";
    
    // line 897
    Input >> _F.Ch;
    
    // line 898
    Output << _WRITELN;
    
    // line 899
    Output << _WRITELN;
    
    // line 900
    if((_setLiteral1 & _F.Ch))
    {
        // line 902
        P_instructions_page1(&_F);
        
        // line 903
        P_instructions_page2(&_F);
        
        // line 904
        P_instructions_page3(&_F);
        
        // line 905
        P_instructions_page4(&_F);
        
        // line 906
        P_instructions_page5(&_F);
        
        // line 907
        P_instructions_page6(&_F);
        
        // line 908
        Output << _WRITELN;
        
        // line 909
        Output << _WRITELN;
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


// line 715
//================================================================================
// scope: instructions_spacewait (level : 3)

// activation record
struct Frame_instructions_spacewait
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_spacewait(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_spacewait _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 717
    Output << _WRITELN;
    
    // line 718
    Output << "Hit <return> to continue";
    
    // line 719
    Input >> _READLN;
    
    // line 720
    Output << _WRITELN;
    
    { /* NOP */ }
}


// line 723
//================================================================================
// scope: instructions_page1 (level : 3)

// activation record
struct Frame_instructions_page1
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_page1(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_page1 _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 725
    Output << "The galaxy is divided into 64 quadrants with the" << _WRITELN;
    
    // line 726
    Output << "following coordinates:" << _WRITELN;
    
    // line 727
    Output << _WRITELN;
    
    // line 728
    Output << "  0   1   2   3   4   5   6   7" << _WRITELN;
    
    // line 729
    Output << "---------------------------------" << _WRITELN;
    
    // line 730
    Output << "|   |   |   |   |   |   |   |   |  0" << _WRITELN;
    
    // line 731
    Output << "---------------------------------" << _WRITELN;
    
    // line 732
    Output << "|   |   |   |   |   |   |   |   |  1" << _WRITELN;
    
    // line 733
    Output << "---------------------------------" << _WRITELN;
    
    // line 734
    Output << "|   |   |   |   |   |   |   |   |  2" << _WRITELN;
    
    // line 735
    Output << "---------------------------------" << _WRITELN;
    
    // line 736
    Output << "|   |   |   |   |   |   |   |   |  3" << _WRITELN;
    
    // line 737
    Output << "---------------------------------" << _WRITELN;
    
    // line 738
    Output << "|   |   |   |   |   |   |   |   |  4" << _WRITELN;
    
    // line 739
    Output << "---------------------------------" << _WRITELN;
    
    // line 740
    Output << "|   |   |   |   |   |   |   |   |  5" << _WRITELN;
    
    // line 741
    Output << "---------------------------------" << _WRITELN;
    
    // line 742
    Output << "|   |   |   |   |   |   |   |   |  6" << _WRITELN;
    
    // line 743
    Output << "---------------------------------" << _WRITELN;
    
    // line 744
    Output << "|   |   |   |   |   |   |   |   |  7" << _WRITELN;
    
    // line 745
    Output << _WRITELN;
    
    // line 746
    Output << "Each quadrant is similarly divided into 64 sectors." << _WRITELN;
    
    // line 747
    P_instructions_spacewait(_F._slink);
    
    { /* NOP */ }
}


// line 750
//================================================================================
// scope: instructions_page2 (level : 3)

// activation record
struct Frame_instructions_page2
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_page2(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_page2 _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 752
    Output << _WRITELN;
    
    // line 753
    Output << "::: DEVICES :::" << _WRITELN;
    
    // line 754
    Output << _WRITELN;
    
    // line 755
    Output << " :: Warp Engines ::" << _WRITELN;
    
    // line 756
    Output << _WRITELN;
    
    // line 757
    Output << " Course = a number in degrees." << _WRITELN;
    
    // line 758
    Output << "   Numbers indicate direction starting at the top and" << _WRITELN;
    
    // line 759
    Output << "   going counter clockwise." << _WRITELN;
    
    // line 760
    Output << _WRITELN;
    
    // line 761
    Output << "                     0" << _WRITELN;
    
    // line 762
    Output << "                 315 | 45" << _WRITELN;
    
    // line 763
    Output << "                    \\\\|/" << _WRITELN;
    
    // line 764
    Output << "               270 --*-- 90" << _WRITELN;
    
    // line 765
    Output << "                    /|\\\\" << _WRITELN;
    
    // line 766
    Output << "                 225 | 135" << _WRITELN;
    
    // line 767
    Output << "                    180" << _WRITELN;
    
    // line 768
    Output << _WRITELN;
    
    // line 769
    Output << " Warp Factor = a REAL number from 0 to 12." << _WRITELN;
    
    // line 770
    Output << "   Distance traveled = <warp factor> quadrants." << _WRITELN;
    
    // line 771
    Output << "     Warp  .2  =  The Enterprise travels 1 sector." << _WRITELN;
    
    // line 772
    Output << "           .5  =                         4 sectors." << _WRITELN;
    
    // line 773
    Output << "            1  =                         1 quadrant." << _WRITELN;
    
    // line 774
    Output << "            2  =                         2 quadrants." << _WRITELN;
    
    // line 775
    P_instructions_spacewait(_F._slink);
    
    { /* NOP */ }
}


// line 778
//================================================================================
// scope: instructions_page3 (level : 3)

// activation record
struct Frame_instructions_page3
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_page3(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_page3 _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 780
    Output << _WRITELN;
    
    // line 781
    Output << "   For example, if you travel from quadrant 1-1 in the" << _WRITELN;
    
    // line 782
    Output << "   direction of 90 degrees at warp 2, you would stop at" << _WRITELN;
    
    // line 783
    Output << "   quadrant 1-3 in the next stardate.  NOTE: every use of" << _WRITELN;
    
    // line 784
    Output << "   the warp engines takes one stardate.  If the Enterprise" << _WRITELN;
    
    // line 785
    Output << "   is blocked by something during an intra-quadrant travel," << _WRITELN;
    
    // line 786
    Output << "   it will stop in front of it (and waste a stardate)." << _WRITELN;
    
    // line 787
    Output << _WRITELN;
    
    // line 788
    Output << " :: Short Range Sensors ::" << _WRITELN;
    
    // line 789
    Output << _WRITELN;
    
    // line 790
    Output << "  The short range sensors display a detailed view of the " << _WRITELN;
    
    // line 791
    Output << "  quadrant currently occupied by the Enterprise.  The " << _WRITELN;
    
    // line 792
    Output << "  The following symbols have meanings as follows:" << _WRITELN;
    
    // line 793
    Output << _WRITELN;
    
    // line 794
    Output << "          Symbol          Meaning" << _WRITELN;
    
    // line 795
    Output << "             " << C_nosym << "            empty space" << _WRITELN;
    
    // line 796
    Output << "             " << C_starsym << "            a stable star" << _WRITELN;
    
    // line 797
    Output << "             " << C_novasym << "            an unstable star" << _WRITELN;
    
    // line 798
    Output << "             " << C_entsym << "            the Enterprise" << _WRITELN;
    
    // line 799
    Output << "             " << C_fbasesym << "            a Federation base" << _WRITELN;
    
    // line 800
    Output << "             " << C_klingsym << "            a Klingon ship" << _WRITELN;
    
    // line 801
    Output << "             " << C_kbasesym << "            a Klingon base" << _WRITELN;
    
    // line 802
    P_instructions_spacewait(_F._slink);
    
    { /* NOP */ }
}


// line 805
//================================================================================
// scope: instructions_page4 (level : 3)

// activation record
struct Frame_instructions_page4
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_page4(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_page4 _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 807
    Output << _WRITELN;
    
    // line 808
    Output << " :: Long Range Sensors ::" << _WRITELN;
    
    // line 809
    Output << _WRITELN;
    
    // line 810
    Output << "  The long range sensors display the objects in the nine" << _WRITELN;
    
    // line 811
    Output << "  closest quadrants.  Each digit in each box means " << _WRITELN;
    
    // line 812
    Output << "  means something:" << _WRITELN;
    
    // line 813
    Output << _WRITELN;
    
    // line 814
    Output << "    The ONES digit represents the number of STARS." << _WRITELN;
    
    // line 815
    Output << "        TENS                                FEDERATION BASES." << _WRITELN;
    
    // line 816
    Output << "        HUNDREDS                            KLINGON SHIPS" << _WRITELN;
    
    // line 817
    Output << "        THOUSANDS                           KLINGON BASES" << _WRITELN;
    
    // line 818
    Output << _WRITELN;
    
    // line 819
    Output << "  For example:" << _WRITELN;
    
    // line 820
    Output << "    319 means 3 Klingons, 1 Federation base, and 9 stars." << _WRITELN;
    
    // line 821
    Output << "    206 means 2 Klingons, 0 Federation bases, and 6 stars." << _WRITELN;
    
    // line 822
    Output << "   1007 means 1 Klingon base and 7 stars." << _WRITELN;
    
    // line 823
    Output << _WRITELN;
    
    // line 824
    Output << " :: Phasers ::" << _WRITELN;
    
    // line 825
    Output << _WRITELN;
    
    // line 826
    Output << "  Any portion of the energy available can be fired.  The" << _WRITELN;
    
    // line 827
    Output << "  battle computer divides this amount among the Klingon" << _WRITELN;
    
    // line 828
    Output << "  ships in the quadrant and determines the various directions" << _WRITELN;
    
    // line 829
    P_instructions_spacewait(_F._slink);
    
    { /* NOP */ }
}


// line 832
//================================================================================
// scope: instructions_page5 (level : 3)

// activation record
struct Frame_instructions_page5
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_page5(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_page5 _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 834
    Output << _WRITELN;
    
    // line 835
    Output << "  of fire.  The effectiveness of a hit depends mostly on the" << _WRITELN;
    
    // line 836
    Output << "  distance to the target.  A Klingon battle cruiser starts with" << _WRITELN;
    
    // line 837
    Output << _format(C_klingenergy, 5, 0) << " units of energy.  It can fire an amount equal to" << _WRITELN;
    
    // line 838
    Output << "  whatever energy is left.  Note that phasers are ineffective " << _WRITELN;
    
    // line 839
    Output << "  against stars, Klingon bases, and Federation bases." << _WRITELN;
    
    // line 840
    Output << _WRITELN;
    
    // line 841
    Output << " :: Photon Torpedoes ::" << _WRITELN;
    
    // line 842
    Output << _WRITELN;
    
    // line 843
    Output << "  Initially the Enterprise has " << C_starttorps << " photon torpedoes." << _WRITELN;
    
    // line 844
    Output << "  One torpedo destroys whatever it hits.  The range of the" << _WRITELN;
    
    // line 845
    Output << "  photon torpedoes (like phasers) is limited to the current" << _WRITELN;
    
    // line 846
    Output << "  quadrant.  The course of a photon torpedo is set the same" << _WRITELN;
    
    // line 847
    Output << "  way as that of the Enterprise.  Torpedoes and phasers are" << _WRITELN;
    
    // line 848
    Output << "  restocked when the Enterprise docks at a Federation base." << _WRITELN;
    
    // line 849
    Output << _WRITELN;
    
    // line 850
    Output << " :: Damage Control Report ::" << _WRITELN;
    
    // line 851
    Output << _WRITELN;
    
    // line 852
    Output << "  The damage control report lists the state of repair of each" << _WRITELN;
    
    // line 853
    Output << "  device.  A non-zero state indicates the number of stardates" << _WRITELN;
    
    // line 854
    Output << "  required to repair the device.  Devices can be damaged by" << _WRITELN;
    
    // line 855
    Output << "  space storms, and are repaired by time and truces." << _WRITELN;
    
    // line 856
    P_instructions_spacewait(_F._slink);
    
    { /* NOP */ }
}


// line 859
//================================================================================
// scope: instructions_page6 (level : 3)

// activation record
struct Frame_instructions_page6
{
   Frame_instructions* _slink;
};

// function body
void P_instructions_page6(void* _slink)
{
    // prologue/frame definition
    Frame_instructions_page6 _F = { (Frame_instructions*)_slink };
    
    // subroutine body
    // line 861
    Output << _WRITELN;
    
    // line 862
    Output << " :: History Computers ::" << _WRITELN;
    
    // line 863
    Output << _WRITELN;
    
    // line 864
    Output << "  The history computers keep a record of all the quadrants" << _WRITELN;
    
    // line 865
    Output << "  scanned with the long range scanners.  The history report" << _WRITELN;
    
    // line 866
    Output << "  uses the same display format as the long range scanners," << _WRITELN;
    
    // line 867
    Output << "  except that the entire galaxy is displayed.  A quadrant" << _WRITELN;
    
    // line 868
    Output << "  that has not been scanned is printed as \"+++++\"." << _WRITELN;
    
    // line 869
    Output << _WRITELN;
    
    // line 870
    Output << " :: Suicide Device ::" << _WRITELN;
    
    // line 871
    Output << _WRITELN;
    
    // line 872
    Output << "  It is possible to implement a self-destruct sequence merely" << _WRITELN;
    
    // line 873
    Output << "  by invoking this command.  The game is terminated." << _WRITELN;
    
    // line 874
    Output << _WRITELN;
    
    // line 875
    Output << "To get a list of all commands, type \"9\" when asked for a" << _WRITELN;
    
    // line 876
    Output << "command.  All commands are terminated by the [RETURN] key." << _WRITELN;
    
    // line 877
    Output << "You have at least on supporting starbase.  Your energy and" << _WRITELN;
    
    // line 878
    Output << "photon torpedoes are replenished when you are docked at a" << _WRITELN;
    
    // line 879
    Output << "Federation starbase.  G O O D   L U C K !" << _WRITELN;
    
    // line 880
    Output << _WRITELN;
    
    // line 881
    P_instructions_spacewait(_F._slink);
    
    { /* NOP */ }
}


// line 913
//================================================================================
// scope: finishgame (level : 2)

// activation record
struct Frame_finishgame
{
    // locals
    T_integer Rating;
};

// function body
void P_finishgame(void* _slink)
{
    // prologue/frame definition
    Frame_finishgame _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 916
    if(((Curenergy <= 0) || (Curyear >= Endyear)))
    {
        // line 918
        Output << "It is stardate " << _format(Curyear, 1, 0) << ".  The Enterprise has been" << _WRITELN;
        
        // line 919
        Output << "destroyed.  The Federation will be conquered.  There" << _WRITELN;
        
        // line 920
        Output << "are still " << _format(Totalklingons, 1, 0) << " Klingon battle cruisers." << _WRITELN;
        
        // line 921
        Output << "You are dead." << _WRITELN;
        
        { /* NOP */ }
    }
    else
    {
        // line 925
        _F.Rating = ((Startklingons / (Curyear - Startyear)) * 100);
        
        // line 926
        Output << "It is stardate " << _format(Curyear, 1, 0) << ".  The last Klingon battle" << _WRITELN;
        
        // line 927
        Output << "cruiser in the galaxy has been destroyed.  The Federation" << _WRITELN;
        
        // line 928
        Output << "has been saved.  ";
        
        // line 929
        if((Badpoints > _F.Rating))
        {
            // line 931
            Output << "However, because of your wanton " << _WRITELN;
            
            // line 932
            Output << "destruction of Federation bases and planet systems," << _WRITELN;
            
            // line 933
            Output << "you have been thrown in the brig never to see the" << _WRITELN;
            
            // line 934
            Output << "light of day again." << _WRITELN;
            
            { /* NOP */ }
        }
        else
        {
            // line 938
            Output << "You are a hero and a new admiral." << _WRITELN;
            
            // line 939
            Output << _format(Startklingons, 1, 0) << " Klingons in " << _format((Curyear - Startyear), 1, 0) << " years gives a rating of " << _format(_F.Rating, 1, 0) << _WRITELN;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}

