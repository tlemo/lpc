
// testing...

program exp1;

{ comment // } const //
    x = '12//3'; // C++ style comment!

type
   rec
    = record
       x, y, z : integer;
   end;
   rec2 = record
       x, y, z : integer;
   end;
   a = integer;
var
   a : rec;
   b : rec2;
   c : record
       x, y, z : integer;
   end;
   e1 : (v1, v2);

   procedure foo;
      type A = char; b = x; 
        a = b; 
        REC
         = a;
      var
         e2 : (v1, v2);
         a : char;
   begin
     // e2 := e1;
   end;

   procedure bar(b : integer);
      var
         e2 : (v1, v2);
         a : char;
   begin
        // e2 := e1;
   end;

begin
     // a := b;
     writeln('hello, world');
end.

