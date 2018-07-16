
{ testing aggregate assignments }

program foo;

type 
    A = array[1..10] of char;

    R = record
        vector : A;
        x, y : integer;
    end;

var
    v1, v2 : A;
    v3, v4 : R;
    
begin

    v1 := v2; { array assignment }
    v3 := v4; { record assignment }
    
    { case sensitivity tests }
    
    v3.VECTOR := v4.VectoR;
    
    with v3 do
        with v4 do
            v3.VECTOR := vEcTor;
    
end.

