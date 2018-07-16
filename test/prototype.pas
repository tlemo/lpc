
{ 
1. small example that covers most language constructs. 
2. it is intended as a good sample to prototype code generation for new targets.
}

program prototype;

const
    VALUE = 100000;
    STR = 'foo';

type
    BYTE = 0..255;
    
    A = array[0..15] of BYTE;
    
    REC = record
        x, y : real;
        a : A;
    end;
    
    UNION = record
        i : integer;
        case integer of
            0: (a : A);
            1: (b: array [0..3, 0..3] of BYTE);
    end;

var 
    gv, gv2 : integer;
    gr : REC;

function foo(function pfn(x : integer; r : REC; u : UNION) : integer) : integer;
var 
    i : integer;
    u : UNION;
    p : ^BYTE;
begin
    u.i := VALUE;
    
    for i := 0 to 15 do u.a[i] := i;
    
    foo := pfn(gv, gr, u);
    
    new(p);
    if p <> nil then
    begin
        p^ := gv mod 256;
        dispose(p);
    end;
end;

procedure test(var y : integer);

    function bar(x : integer; r : REC; u : UNION) : integer;
    begin
        bar := x + r.a[0] + u.b[1][3] + u.i + y;
    end;
    
begin
    gv := 1000;
    gr.a[0] := 100;
    gv2 := 10000;
    
    writeln(STR, ' = ', foo(bar));
    
    y := y + 2345;
end;

begin
    gv2 := 1;
    test(gv2);
    writeln('done, gv2 = ', gv2);
end.

