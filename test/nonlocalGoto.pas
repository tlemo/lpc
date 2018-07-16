
// non-local goto tests

program NonlocalGoto;

label 1, 2;

var p1, p2 : integer;

procedure bar(x : integer); forward;

function foo(x : integer) : integer;
begin
    case x of
    1: bar(x);
    3: goto 1; // non-local P_L1
    2: goto 2; // non-local P_L2
    end;
    writeln('UNEXPECTED');
    foo := -1;
end; 

procedure bar;

    label 1;

    procedure moo;
    begin
        goto 1; // BAR_L1
    end;

begin
    moo;
    writeln('UNEXPECTED');
1: // BAR_L1
    p2 := foo(3);
end;

begin
    p1 := 0;
    p2 := 0;  

1: // P_L1
    writeln('P_L1');
    writeln('p1 = ', p1);
    writeln('p2 = ', p2);

    p1 := p1 + 1;

    p2 := foo(p1);
    writeln('UNEXPECTED');
    goto 1; // local goto P_L1

2: // P_L2
    writeln('P_L2');
    writeln('p1 = ', p1);
    writeln('p2 = ', p2);
end.

