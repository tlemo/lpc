                                (* Chapter 8 - Program 1 *)
program EnumeratedTypes;

type Days = (Mon,Tue,Wed,Thu,Fri,Sat,Sun);
     TimeOfDay = (Morning,Afternoon,Evening,Night);

var  Day              : Days;
     Time             : TimeOfDay;
     RegularRate     : real;
     EveningPremium  : real;
     NightPremium    : real;
     WeekendPremium  : real;
     TotalPay        : real;

begin  (* main program *)
   Writeln('Pay rate table':33);
   Writeln;
   Write('  DAY        Morning  Afternoon');
   Writeln('  Evening    Night');
   Writeln;

   RegularRate := 12.00;     (* This is the normal pay rate *)
   EveningPremium := 1.10;   (* 10 percent extra for working late *)
   NightPremium := 1.33;     (* 33 percent extra for graveyard *)
   WeekendPremium := 1.25;   (* 25 percent extra for weekends *)

   for Day := Mon to Sun do begin
      case Day of
        Mon : Write('Monday   ');
        Tue : Write('Tuesday  ');
        Wed : Write('Wednesday');
        Thu : Write('Thursday ');
        Fri : Write('Friday   ');
        Sat : Write('Saturday ');
        Sun : Write('Sunday   ');
      end;  (* of case statement *)

      for Time := Morning to Night do begin
         case Time of
           Morning   : TotalPay := RegularRate;
           Afternoon : TotalPay := RegularRate;
           Evening   : TotalPay := RegularRate * EveningPremium;
           Night     : TotalPay := RegularRate * NightPremium;
         end;  (* of case statement *)

         case Day of
           Sat : TotalPay := TotalPay * WeekendPremium;
           Sun : TotalPay := TotalPay * WeekendPremium;
         end;  (* of case statement *)

         Write(TotalPay:10:2);
      end;  (* of "for Time" loop *)
      Writeln;
   end; (* of "for Day" loop *)
end.  (* of main program *)




{ Result of execution

                    Pay rate table

 DAY          Morning  Afternoon   Evening     Night

 Monday        12.00     12.00      13.20      15.96
 Tuesday       12.00     12.00      13.20      15.96
 Wednesday     12.00     12.00      13.20      15.96
 Thursday      12.00     12.00      13.20      15.96
 Friday        12.00     12.00      13.20      15.96
 Saturday      15.00     15.00      16.50      19.95
 Sunday        15.00     15.00      16.50      19.95

}


