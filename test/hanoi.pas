program hanoi;
var n,nn,i,j:integer;
   M:array[1..2,1..1024] of integer;
   S:array[1..3,1..1024] of integer;
procedure hanoi1;
var k1,k2,k3,w,l,i,j,k:integer;
begin
 k1:=nn+1; k2:=k1 div 2; k3:=k2 div 2; M[1,k2]:=1; M[2,k2]:=2;
 for w:=n downto 2 do begin
   l:=k2;
   while l<=nn do begin
     i:=M[1,l]; j:=M[2,l]; k:=6-i-j;
     M[1,l-k3]:=i; M[2,l-k3]:=k;
     M[1,l+k3]:=k; M[2,l+k3]:=j;
     l:=l+k1; end;
    k1:=k2; k2:=k3; k3:=k3 div 2;  end;
end;

procedure hanoi2;
label 1;
var i,j,ns,niv,k:integer;
begin
 i:=1; j:=2; ns:=0; niv:=1;
 repeat
  k:=6-i-j;
  while niv<n-1 do begin
   ns:=ns+1; S[1,ns]:=i; S[2,ns]:=j; j:=k;
   k:=6-i-j; niv:=niv+1; s[3,ns]:=niv;
   end;
  write('(',i,',',k,')','(',i,',',j,')','(',k,',',j,')');
  if ns=0 then goto 1;
  i:=S[1,ns]; j:=S[2,ns]; niv:=S[3,ns]; ns:=ns-1;
  write('(',i,',',j,')');
  i:=6-i-j;
 until false;
1: end;

procedure hanoi3(n,i,j:integer);
var k:integer;
begin
 if n=1 then write('(',i,',',j,')')
        else begin  k:=6-i-j;
         hanoi3(n-1,i,k); write('(',i,',',j,')'); hanoi3(n-1,k,j); end;
end;

begin 
 writeln('HANOI'); write('n=');readln(n);writeln(n);
 writeln('1.HANOI1(umplerea matricii) 2.HANOI2(construire arbore complet)');
 writeln('3.HANOI3(recursiv)  4.EXIT');
 nn:=1; for i:=1 to n do nn:=2*nn; nn:=nn-1;
repeat
 write('optiunea dvs:');readln(i);
 case i of
  1: begin hanoi1;
      for i:=1 to 2 do begin
        for j:=1 to nn do write(M[i,j]:4);
             writeln; end; end;
  2: begin hanoi2; writeln; end;
  3: begin hanoi3(n,1,2); writeln end;
  4:writeln('BYE-BYE!')
end;
until i=4;

end.


