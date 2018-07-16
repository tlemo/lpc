                                (* Chapter 3 - Program 3 *)
program AllSimpleVariableTypes;

var  A,B         : integer;
     C,D         : 0..255;
     DogTail    : real;
     Puppy       : boolean;
     AnimalCookies : char;

begin
   A := 4;
   B := 5;
   C := 212;
   D := C + 3;
   DogTail := 345.12456;
   Puppy := B > A;  (* since B is greater than A, Puppy
                       will be assigned the value TRUE *)
   AnimalCookies := 'R';  (* this is a single character *)

   Writeln('The integers are',A:5,B:5);
   Writeln('The bytes are',   C:5,D:5); (* notice that the spaces
                                           prior to the C will be
                                           ignored on output *)
   Writeln('The real value is',DogTail:12:2,DogTail:12:4);
   Writeln;
   Writeln('The boolean value is ',Puppy,Puppy:13);
   Writeln('The char variable is an ',AnimalCookies);
end.




{ Result of execution

The integers are    4    5
The bytes are  212  215
The real value is      345.12    345.1246

The boolean value is TRUE         TRUE
The char variable is an R

}
