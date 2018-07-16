program vectorcaract;
label 1;
type vec=array[1..50] of integer;
var i,ig,n,k:integer;
    a,v:vec;

procedure gen(var v:vec);
label 10;
var i,j:0..255;
begin
if ig=0 then begin
             for i:=1 to n do v[i]:=i;
             ig:=1;goto 10;
             end;
for i:=k downto 1 do
      if v[i]<n+i-k then begin v[i]:=v[i]+1;
                           for j:=i+1 to k do  v[j]:=v[j-1]+1;
                              goto 10;
                        end;
ig:=0;
10:end;

procedure prel(v:vec);
var i : integer;
begin
 for i:=1 to k do if v[i]<>0 then write(v[i],'  ');
 writeln;
end;

begin
 writeln('generarea combinarilor de n luate cåte k');
 write('n=');readln(n);writeln(n);
 write('k=');readln(k);writeln(k);
  ig:=0;
 repeat
  gen(v);
  if ig=0 then goto 1;
  prel(v);
 until ig=0;
1:end.
