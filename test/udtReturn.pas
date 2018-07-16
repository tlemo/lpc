
program udtReturn;

type
    A = array[0..3] of integer;
    
    S = set of 1..10;
    
    R = record
        a, b : integer;
    end;
    
var
    vA : A;
    vS : S;
    vR : R;
    i : integer;
    
function fooA : A;
var tmp : A;
begin
    tmp[0] := 0;
    tmp[1] := 1;
    tmp[2] := 2;
    tmp[3] := 3;
    fooA := tmp;
end;

function fooS : S;
begin
    fooS := [1, 2, 3, 5, 7];
end;

function fooR : R;
var tmp : R;
begin
    tmp.a := 11;
    tmp.b := 22;
    fooR := tmp;
end;

begin
    vA := fooA;
    vS := fooS;
    vR := fooR;

    for i := 0 to 3 do
        writeln('a[', i, '] = ', vA[i]);
        
    writeln;
    
    write('s = [ ');
    for i := 1 to 10 do
        if i in vS * [2..10] then
            write(i, ' ');
    writeln(']');
    
    writeln;
    
    writeln('r.a = ', vR.a, ', r.b = ', vR.b);
end.

