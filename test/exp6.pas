
program iso; // snippet from ISO pascal document, mutually referencing functions

function ReadExpression(a : integer) : integer ; forward;
function ReadOperand : integer ; forward ;
procedure Test(x : integer); forward;
function Fn : integer; forward;

procedure Test(x : integer); forward; // duplicate forward declaration

function ReadExpression ; {See forward declaration of heading .}

    procedure Test; // this is NOT a reference to the outter scope forward
    begin
    end;
    
    function Fn2(x : integer) : integer; forward;
    
    procedure Test2(function Fn2 : real); // Fn2 here has no relation to the forward definition in the outter scope
    begin
    end;

begin
    if a <> 0 then ReadExpression := ReadOperand;
end;

function ReadOperand ;
begin
    Test(1);
    ReadOperand := ReadExpression(0);
end;

// duplicate implementation of a forward function
function ReadOperand ;
begin
    ReadOperand := ReadExpression(0);
end;


// forward defined as function
procedure Fn;
begin
end;

procedure TestProc; forward;
procedure TestProc; begin end;

// duplicate proc definition
procedure TestProc; begin end;

// forward declaration of a already defined subroutine
procedure TestProc; forward;

// proc Test is not implemented...

begin end.

