program ex03_operators;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  a, b, c, d: Integer;

begin
  try
    writeln(20 * 5); // 100
    writeln(30 + 222); // 352
    writeln(3 < 30); // TRUE , yes we can print True, False value
    writeln(12 = 10); // FALSE

    { TODO: Operators and Precedence
      * from highest to lowest precedence
      * ( ... ) do inside the parenthesis first
      * Unary : @ (address of var), not
      * Multiplicative : * /  div (int division) mod and shl shr
      * Additive : + - or xor
      * Relational and Compare :
      *    = <> < > <= => in is
    }
    a := 5;
    b := 7;
    c := 10;
    d := 20;
    writeln(a + b);
    // TODO: uncomment the following line and find out why it's compile error
    // writeln( a < b and c < d );
    writeln((a < b) and (c < d)); // why it's not error

    // TODO: about + operator
    writeln(5 + 5);
    writeln('five' + ' ' + 'five');
    writeln(#53 + #53);    // #53 = ascii code for '5'
    
    readln;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
