program dame;
label 1;

type vec=array[1..8] of 0..255;
var x:vec;
  i,k:integer;

function f(x:vec;i:integer):boolean;
label 10;
var j:integer;
begin
f:=false;
for j:=1 to i-1 do if x[i]=x[j] then goto 10
                                 else if i-j=abs(x[i]-x[j]) then goto 10;
f:=true;
10:end;

begin
 for i:=1 to 8 do x[i]:=0;
 i:=1;
 while i>0 do begin
             k:=0;
             while x[i]<8 do begin
                           x[i]:=x[i]+1;
                           if f(x,i) then begin k:=1;goto 1;end;
                           end;
             1:if k=1 then if i=8 then begin
                                       writeln(' solutie : ');
                                       for i:=1 to 8 do write(x[i],'  ');

                                       writeln
                                       end
                                 else begin i:=i+1;x[i]:=0;end
                     else i:=i-1;
              end;
 end.