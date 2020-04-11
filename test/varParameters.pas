
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
    VS : S;
    vR : R;
    i : integer;

procedure printA(arg : A);
var i : integer;
begin
    for i := 0 to 9 do
        writeln('a[', i, '] = ', arg[i]);
    writeln;
end;

procedure printS(arg : S);
var i : integer;
begin
    write('s = [ ');
    for i := 1 to 10 do
        if i in arg then
            write(i, ' ');
    writeln(']');
    writeln;
end;

procedure printR(arg : R);
begin
    writeln('r.a = ', arg.a);
    writeln('r.b = ', arg.b);
    writeln('r.c = ', arg.c);
    writeln('r.d = ', arg.d);
    writeln;
end;
    
procedure test(var a : A; var s : S; var r : R; var i : integer);
begin
    printA(a);
    printS(s);
    printR(r);
    writeln('i = ', i);
    
    a[0] := 123;
    a[9] := 321;

    s := [];

    r.a := 0;
    r.b := -1;
    r.c := 0;
    r.d := -3.14;
    
    i := 1024;
end;

begin
    for i := 0 to 9 do vA[i] := i;
    
    vS := [1, 2, 3, 5, 7];

    vR.a := 11;
    vR.b := 22;
    vR.c := 1.1;
    vR.d := 2.2;
    
    i := 1000;
    
    test(vA, vS, vR, i);
    
    writeln('------------------------------');
    
    printA(vA);
    printS(vS);
    printR(vR);
    writeln('i = ', i);
end.

