program ex07_pointer;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  P: ^Integer;
  X: Integer;

begin
  // writeln(P^); // TODO: uncomment this line, why it's error?
  { **
    * you can use this statement to prevent the 'nil' error
    * but better use try..exception block
    * if Assigned(P) then
    *   writeln(P^);
  }
  try
    X := 35;
    writeln('X:', X);
    New(P);
    P := @X;             // assign address of X to P (which is a pointer)
    writeln('P:', P^);   // value must be the same as X, since P^ point to @X
    P^ := 53;            // assign value 53 to P (that point to X address)
    writeln('P:', P^);
    writeln('X:', X);    // since P point to address that keep value of X
                         // So, X value will be 53
    Dispose(P);

    readln;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
