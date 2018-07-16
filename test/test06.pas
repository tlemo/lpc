
{ test var parameters & new/dispose }

program test;
type
    ptr = ^integer;
var	
    p : ptr;
    i : integer;

procedure init(var pointer : ptr);
begin
    new(pointer);
end;    

procedure setValue(var value : integer; var pointer : ptr);
begin
    i := 12345;
    pointer^ := value;
end;    

procedure free(var pointer : ptr);
begin
    dispose(pointer);
end;    

begin
    init(p);
    
    setValue(i, p);
    
    writeln('i = ', i);
    writeln('p^ = ', p^);
    
    free(p);
    
    if p = nil then
        writeln('ok')
    else
        writeln('FAILED!');
end.

