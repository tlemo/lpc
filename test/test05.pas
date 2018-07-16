
// test array definitions

program testArrays;

type
    t1 = array [1..3] of array [char] of integer;
    t2 = 1..5;

var
    x : array [1..10, (a, b, c), char, t2] of char;
    y : t1;

    function outter(x : integer) : integer;
        function inner(x : integer) : integer;
            procedure setOutter(x : integer);
            begin
                outter := x;
            end;
        begin
            inner := x * 2;
            outter := 7;
            setOutter(100 + x);
        end;
    begin
        outter := 1;
        if inner(x) = 7 then outter := 2;
    end;

begin
    writeln('hello, world');
    x[3, c, 'a', 4] := '!';
    y[2]['x'] := ord(x[3, c, 'a', 4]);
    writeln('outter = ', outter(7));
    readln;
end.

