
program myName;
var	
	myName: array[1..16] of char;  {User's name}
begin
	writeln('What is your name?');
	readln(myName);
	writeln('Hello,', myName, '!');
end.
