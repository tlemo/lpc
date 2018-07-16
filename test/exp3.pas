
// test array definitions

program experiment;

type
    t1 = array [1..3] of array [char] of integer;
    t2 = 1..5;

var
   x : array [1..10, (a, b, c), char, t2] of char;
   
   // this is an error
   y : array [t1] of char;
   
   z : t1;

begin
     writeln('hello, world');
     z[2]['x'] := 123;
     x[3, c, 'a', 4] = '!';
     readln;
end.

