
program udtParameters;

type
    A = array[0..9] of integer;
    
    S = set of 1..10;
    
    R = record
        a, b : integer;
        c, d : real;
    end;
    
var
    vA : A;
    vR : R;
    i : integer;
    
procedure fooA(arg : A);
var i : integer;
begin
    for i := 0 to 9 do
        writeln('a[', i, '] = ', arg[i]);
    writeln;
end;

procedure fooS(arg : S);
var i : integer;
begin
    write('s = [ ');
    for i := 1 to 10 do
        if i in arg * [2..10] then
            write(i, ' ');
    writeln(']');
    writeln;
end;

procedure fooR(arg : R);
begin
    writeln('r.a = ', arg.a);
    writeln('r.b = ', arg.b);
    writeln('r.c = ', arg.c);
    writeln('r.d = ', arg.d);
end;

begin
    for i := 0 to 9 do vA[i] := i;
    fooA(vA);
    
    fooS([1, 2, 3, 5, 7]);

    vR.a := 11;
    vR.b := 22;
    vR.c := 1.1;
    vR.d := 2.2;
    fooR(vR);
end.

