                                     (* Chapter 16 - Program 4 *)
program AmortizationTable;

var Month : 1..12;
    StartingMonth : 1..12;
    Balance : real;
    Payment : real;
    InterestRate : real;
    AnnualAccumInterest : real;
    Year : integer;
    NumberOfYears : integer;
    OriginalLoan : real;


procedure CalculatePayment; (* **************** calculate payment *)
var Temp : real;
    Index : integer;
begin
   Temp := 1.0;
   for Index := 1 TO 12*NumberOfYears do
     Temp := Temp * (1.0 + InterestRate);
   Payment := OriginalLoan*InterestRate/(1.0 - 1.0/Temp);
end;

procedure InitializeData; (* ******************** initialize data *)
begin
   Writeln('   Pascal amortization program');
   Writeln;
   Write('Enter amount borrowed                         ');
   Readln(OriginalLoan);
   Balance := OriginalLoan;
   Write('Enter interest rate as percentage (i.e. 13.5) ');
   Readln(InterestRate);
   InterestRate := InterestRate/1200.0;
   Write('Enter number of years of payoff               ');
   Readln(NumberOfYears);
   Write('Enter month of first payment (i.e. 5 for May) ');
   Readln(StartingMonth);
   Write('Enter year of first payment (i.e. 1991)       ');
   Readln(Year);
   CalculatePayment;
   AnnualAccumInterest := 0.0; (* This is to accumulate Interest *)
end;

procedure PrintAnnualHeader; (* ************ print annual header *)
begin
   Writeln;
   Writeln;
   Writeln('Original loan amount = ',OriginalLoan:10:2,
           '   Interest rate = ',1200.0*InterestRate:6:2,'%');
   Writeln;
   Writeln('Month    payment  interest    princ   balance');
   Writeln;
end;

procedure CalculateAndPrint; (* ************ calculate and print *)
var InterestPayment : real;
    PrincipalPayment : real;
begin
   if Balance > 0.0 then begin
      InterestPayment := InterestRate * Balance;
      PrincipalPayment := Payment - InterestPayment;
      if PrincipalPayment > Balance then begin  (* loan payed off *)
         PrincipalPayment := Balance;              (* this month *)
         Payment := PrincipalPayment + InterestPayment;
         Balance := 0.0;
      end
      else begin  (* regular monthly payment *)
         Balance := Balance - PrincipalPayment;
      end;
      AnnualAccumInterest := AnnualAccumInterest
                                               + InterestPayment;
      Writeln(Month:5,Payment:10:2,InterestPayment:10:2,
              PrincipalPayment:10:2,Balance:10:2);
   end; (* of if Balance > 0.0 then *)
end;

procedure PrintAnnualSummary; (* ********** print annual summary *)
begin
   Writeln;
   Writeln('Total interest for ',Year:5,' = ',
            AnnualAccumInterest:10:2);
   AnnualAccumInterest := 0.0;
   Year := Year + 1;
   Writeln;
end;

begin   (* ******************************************* main program *)
   InitializeData;
   repeat
      PrintAnnualHeader;
      for Month := StartingMonth to 12 do begin
         CalculateAndPrint;
      end;
      PrintAnnualSummary;
      StartingMonth := 1;
   until Balance <= 0.0;
end. (* of main program *)
