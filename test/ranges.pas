
{ test ranges representation and I/O }

program ranges;
type
    R1 = 'a' .. 'z';        // subset of chars
    R2 = 1 .. 10;           // int8
    R3 = 100 .. 200;        // uint8
    R4 = 0 .. 300;          // int16
    R5 = 0 .. 65535;        // uint16
    R6 = -16384 .. 65536;   // int32
var	
	v1, t1 : R1;
	v2, t2 : R2;
	v3, t3 : R3;
	v4, t4 : R4;
	v5, t5 : R5;
	v6, t6 : R6;
    
    tmp : text;
begin
    v1 := 'x';
    v2 := 1;
    v3 := 200;
    v4 := 123;
    v5 := 32768;
    v6 := -1;
    
    writeln('initial   : ', v1, ' ', v2, ' ', v3, ' ', v4, ' ', v5, ' ', v6);
    
    writeln('write part  1 ...');
    rewrite(tmp);
    writeln(tmp, v1, ' ', v2, ' ', v3);
    
    writeln('read part   1 ...');
    reset(tmp);
    readln(tmp, t1, t2, t3);

    writeln('write part  2 ...');
    rewrite(tmp);
    writeln(tmp, v4, ' ', v5, ' ', v6);
    
    writeln('read part   2 ...');
    reset(tmp);
    readln(tmp, t4, t5, t6);

    writeln('final     : ', t1, ' ', t2, ' ', t3, ' ', t4, ' ', t5, ' ', t6);
end.
