
// test record definitions

program experiment;

type
    // simple
    r1 = record
        f1, f2 : integer;
        f3 : real;
        f4 : char;
    end;
    
    // missing the last ;
    r2 = record a : char end;
    
    // empty record
    r3 = record end;
    
    // emptry record2
    r3b = record ; end;
    
    // complex record
    r4 = record
        a, b : char;
        c : array [1..10] of record f1 : r1; end;
        d : record f: record a : char; end; end;
    end;
    
    // union
    r5 = record
        case a : integer of
            0, 1: (b, c : char);
            2 : (d : real);
    end;
    
    // nested union
    r6 = record
        case char of
            'a' : (case x : integer of 0 : (z : real); 1 : (y : real));
            'b' : (u : record f1 : char; end);
    end;
    
    // both fixed and variable
    r7 = record
        f1 : integer;
        case f2: char of
            'a': (f3: real);
            'b': (f4: char; f5: integer;);
    end;
    
    // empty union
    r8 = record
        case integer of
    end;

begin
     writeln('hello, world');
     readln;
end.

