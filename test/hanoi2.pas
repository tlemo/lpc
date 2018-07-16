program hanoi2;
label 1;
type point=^nod;
     nod=record
         inf1,inf2,inf3:integer;
         urm:point;
         end;
var
  i,j,k,n,n1,ns,niv,l:integer;
  virf:point;

procedure punere(var x,y,z:integer);
var p:point;
begin
 new(p);
 p^:=virf^;
 virf^.urm:=p;
 virf^.inf1:=x;
 virf^.inf2:=y;
 virf^.inf3:=z;
end;

procedure scoatere;
begin
 virf:=virf^.urm;
end;

begin
 write('n=');readln(n);writeln(n);
 n1:=1;
 for i:=1 to n do n1:=n1*2;
 new(virf);
 virf^.urm:=nil;
 i:=1;j:=2;
 ns:=0;niv:=1;
 repeat
  k:=6-i-j;
  while niv<n-1 do begin
                   ns:=ns+1;
                   niv:=niv+1;
                   punere(i,j,niv);j:=k;k:=6-i-j;
                   end;
   writeln(i,'-->',k);
   writeln(i,'-->',j);
   writeln(k,'-->',j);
   if ns=0 then goto 1;
   i:=virf^.inf1;j:=virf^.inf2;niv:=virf^.inf3;
   ns:=ns-1;
   writeln(i,'-->',j);
   i:=6-i-j;
  until false;
1:
end.