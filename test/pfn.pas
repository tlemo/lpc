
{ demonstrate function pointers }

program test;

var v : integer;

procedure foo;
    var fooV : integer;
    
    function testPfn(i : integer) : integer;
    begin
        testPfn := i * 1000 + fooV;
        writeln('foo.testPfn(', i, ')');
    end;

    procedure bar1(i : integer; function pfn(i: integer) : integer);
        var bar1V : integer;
            tmp : integer;
    begin
        bar1V := i;
        writeln('foo.bar1');
        tmp := pfn(i);
        writeln('pfn = ', tmp);
        if i < 3 then bar1(i + 1, pfn);
        writeln(bar1V, ' ', fooV, ' ', v);
    end;

    procedure bar2(procedure pfn(i : integer));
        var bar2V : integer;
        
        procedure moo(function pfn(i : integer) : integer);
            var mooV : integer;
                tmp : integer;
        begin
            mooV := pfn(100);
            writeln('foo.bar2.moo');
            tmp := pfn(fooV);
            writeln('pfn = ', tmp);
            bar1(2, pfn);
            writeln(mooV, ' ', bar2V, ' ', fooV, ' ', v);
        end;
        
        function testPfn(i : integer) : integer;
        begin
            testPfn := i * 100 + fooV;
            writeln('foo.bar2.testPfn(', i, ')');
        end;

    begin
        bar2V := 1000;
        writeln('foo.bar2');
        pfn(fooV);
        bar1(1, testPfn);
        moo(testPfn);
        writeln(bar2V, ' ', fooV, ' ', v);
    end;
    
    procedure procPfn(i : integer);
    begin
        writeln('foo.procPfn(', i, ')');
    end;
    
begin
    fooV := 123;
    writeln('foo');
    bar1(0, testPfn);
    bar2(procPfn);
    writeln(fooV, ' ', v);
end;

begin 
    writeln('main');
    foo;
    writeln(v);
end.