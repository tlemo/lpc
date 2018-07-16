
// testing signature checks for built-in subroutines (intrinsics)

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
    // ok
    new(p);
    new(pr, 1, 'a');
    dispose(pr, 1, 'a');
    new(pr, THREE);
    dispose(pr, THREE);
    dispose(p);
    
    pack(a1, 0, a2);
    unpack(a1, a2, i);
    
    // new/dispose errors
    new;
    new(i);
    new(p, 1);
    new(pr, i);
    new(pr, 1, 'x');
    new(pr, 1, 'a', 2);
    new(pr, 4);
    dispose(pr, 3, 'a');
    dispose(pr, 1, 97);
    
    // pack/unpack errors
    pack;
    pack(a1);
    pack(a1, p, a2);
    pack(a1, 0, a2, 2);
    pack(a1, 0, a3);
    pack(a1, 0, a4);
    
    unpack;
    unpack(a1);
    unpack(a2, a1, p);
    unpack(a2, a1, 0, 1);
    unpack(a3, a1, 0);
    unpack(a1, a4, 0);
end.

