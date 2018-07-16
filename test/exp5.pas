
// test pointer definitions

program experiment;

type
    rec = record
        a, b : integer;
    end;

    ptr1 = ^rec;

    // fine, rec2 will be later defined in the same scope
    ptr2 = ^rec2;

    rec2 = record
        self : ^rec2;
    end;

    // error: pointer to an non-existing type
    ptr3 = ^rec3;

    // typedefs
    ptr2b = ptr2;
    ptr3b = ptr3;

    // undefined pointers nested
    //
    err1 = record p : ^rec4 end;
    err2 = set of err1;
    err3 = file of ^rec6;

    // pointers inside unions
    rec7 = record
        case char of
            'a': (p1 : ^rec7);
            'b': (p2 : ^ptr3b);
            'c': (p3 : ^rec5);
    end;

var
    j : integer;
    
    p0 : ^integer;
    p1 : ptr1;
    p1b : ^rec;
    p2 : ptr2;

    // error: pointer to an non-existing type
    p3 : ^rec3;

    //-------------------------------------------------
    procedure test;

    // which "rec" type does it point to, nested or parent? ISO7185 says local (nested)
    // 
    type nestPtr1 = ^rec;

    rec = record a : char; end;

    begin
        { for using a non-local as index }
        for j := 1 to 50 do
            writeln('...');
    end;

begin
    { undefined i }
    for i := 0 to 100 do
        writeln('hello, world');
    readln;
end.

