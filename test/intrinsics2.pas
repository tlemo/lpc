
{ new/dispose and pack/unpack }

program test;

const THREE = 3;

type
    rec = record
        a, b : integer;
        case tag : integer of
            1 : (case char of 'a', 'b' : (c1 : integer); 'c' : (c2 : real));
            2 : (c3 : set of 1..5);
            3 : ();
    end;

var
    p : ^real;
    pr : ^rec;
    i : integer;
    
    a1 : array [0..99] of integer;
    a2 : array [10..49] of integer;
    a3 : array [0..99,1..3] of integer;
    a4 : array [0..99] of ^integer;

begin
    new(p);
    new(pr, 1, 'a');
    dispose(pr, 1, 'a');
    new(pr, THREE);
    dispose(pr, THREE);
    dispose(p);
    
    i := 5;
    pack(a1, 0, a2);
    unpack(a2, a1, i);
end.

