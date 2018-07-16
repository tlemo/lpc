
// testing the assignment-compatibility rules

program test;

type
    rec1 = record
        a, b : integer;
    end;

    rec2 = record
        a, b : real;
    end;

    rec1b = rec1;

    arr1 = array [1..10] of integer;
    arr2 = array [1..5] of integer;

var
    r1 : rec1;
    r1b : rec1b;
    r2 : rec2;
    r3 : record a, b : integer; end;

    a1 : arr1;
    a2 : arr2;

    a3 : array [1..10] of rec1;
    a4 : array [1..10] of rec2;
    a5 : array [1..10] of integer;

    r : real;
    i : integer;
    c : char;

    o1 : 1..10;
    o2 : 2..10;

    t1 : set of 0 .. 100;
    t2 : set of 0.. 10;

    p1 : ^char;
    p2 : ^integer;

    procedure test1( procedure pfn(a : rec1) );
    begin
    end;

    procedure test2( procedure pfn(a, b : rec2) );
    begin
    end;

    procedure test3( function pfn(a : integer) : integer );
    begin
    end;

    procedure testPfn1(a : rec2);
    begin
    end;

    function testPfn2(a : integer) : real;
    begin
    end;

begin
    // ok
    //
    r := i;
    r1b := r1;
    r1 := r1b;
    o1 := o2;
    t1 := t2;

    // invalid conversions
    //
    i := r;
    o2 := o1;
    t2 := t1;
    c := i;
    i := c;
    c := r;
    i := '@';

    // both should fail since the record types are different
    //
    r1 := r2;
    r2 := r1;

    // error, different pointer base types
    //
    p1 := p2;
    p2 := p1;

    // even though the structure is identical the types are different
    //
    r3 := r1;
    r1 := r3;

    a1 := a5;
    a5 := a1;

    // should fail since the array sizes are different
    //
    a1 := a2;
    a2 := a1;

    // should fail since the array element types are different
    //
    a3 := a4;
    a4 := a3;

    // the function pointers don't match the argument prototype
    //
    test1(testPfn1);
    test2(testPfn1);
    test3(testPfn2);
end.

