
{ demonstrate the access to free variables }

program test;

var v : integer;

procedure foo;
    var fooV : integer;
    
    procedure bar1(i : integer);
        var bar1V : integer;
    begin
        bar1V := i;
        if i < 3 then bar1(i + 1);
        writeln(bar1V, ' ', fooV, ' ', v);
    end;

    procedure bar2(i : integer);
        var bar2V : integer;
        
        procedure moo;
            var mooV : integer;
        begin
            mooV := 100;
            bar1(2);
            writeln(mooV, ' ', bar2V, ' ', i, ' ', fooV, ' ', v);
        end;

    begin
        bar2V := i;
        bar1(1);
        moo;
        writeln(bar2V, ' ', fooV, ' ', v);
    end;
    
begin
    bar1(0);
    bar2(1000);
    writeln(fooV, ' ', v);
end;

begin 
    foo;
    writeln(v);
end.