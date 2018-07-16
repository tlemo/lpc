

program test;

type 
    A = ^integer;

    // annoying cycle
    B = ^C;
    C = ^B;

    // a more realistic case
    R1 = record
        p : ^R2;
    end;

    R2 = record
        p : ^R1;
    end;

    // and probably the most common one...
    R3 = record
        val : integer;
        next : ^R3;
    end;

procedure foo;
var p : A; { A is in main scope, no foo's scope }
begin
end;

begin end.