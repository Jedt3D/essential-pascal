program ex06_type_casting;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

begin
  try
    { ** 
      * TODO: Type Casting
      * }

    writeln('ASCII #65:', Chr(65));
    writeln('Ko Kai:', ord('ก'));
    writeln('Round:', round(234.92342)); // 235
    writeln('Truncate:', trunc(234.92342)); // 234
    writeln('Int part:', int(234.92342));
    writeln('Int to String:', IntToStr(256));
    writeln('Int to Hex:', IntToHex(256));
    writeln('String to Int', StrToInt('256'));
    writeln('String <--> Number with Val() and Str() is for Turbo Pascal backward compatible');
    { they are number of conversions like:
      FloatToDecimal, FloatToStr, StrToFloat, TextToFloat }

    readln;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
