
program experiment;

// hiding predefined type with a const
const real = 1;

type
    // hiding type with a enum
    e = (a, b, integer);
    
    // redefining a predefined type
    boolean = (x, y);
    
    // hiding a predefined constant
    e2 = (v1, v2, true, false);
    
    // type hiding predefined const
    true = integer;
    
var
    // vars hiding predefined identifiers
    false : integer;
    real : char;
    
begin    
     writeln('hello, world');
end.

