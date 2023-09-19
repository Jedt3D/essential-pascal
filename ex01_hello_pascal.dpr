program ex01_hello_pascal;
// TODO: rename program vs rename .exe app in Projects
// TODO: Ctrl+V at the Projects' ____.exe
//       to view source of the project file (.dproj, .dpr)


{$APPTYPE CONSOLE} // TODO: what is this directive for ?

{$R *.res}

uses
  System.SysUtils;

begin
  try
    writeln('Hello, Delphi'); // TODO: different between
                              // writeln() vs WriteLn()
    readln; // TODO: why we have readln?
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;
  // TODO: Compile, Build, Run without Debug, Run with Debug
  // What's the different between all of them?

  // TODO: How to change target platform to Win64?

end.
