
// non-local goto tests

program NonlocalGoto2;

label 1, 2;

procedure foo;
begin
    writeln('foo');
    goto 1; // non-local P_L1
    writeln('UNEXPECTED');
end; 

procedure bar;
    label 1;
    procedure moo;
    begin
        writeln('moo');
        goto 2; // non-local P_L2
        writeln('UNEXPECTED');
        goto 1; // non-local BAR_L1
    end;
begin
    writeln('bar');
    goto 1; // local BAR_L1
    writeln('UNEXPECTED');
1: // BAR_L1
    moo;
    writeln('UNEXPECTED');
end;

begin
    writeln('entry');
    foo;
    writeln('UNEXPECTED');
1: // P_L1
    writeln('P_L1');
    bar;
    writeln('UNEXPECTED');
    goto 1; // local goto P_L1
2: // P_L2
    writeln('P_L2');
    writeln('done');
end.

