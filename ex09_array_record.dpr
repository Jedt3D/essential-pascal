program ex09_array_record;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  // Array in Delphi Pascal can define its own range
  // So, not strictly zero-based or one-based. It's up to developer
  T24HrTemperatures = array [1 .. 24] of Double;

  // Record data type
  TBirthDate = record
    Year: Integer;
    Month: Byte;
    Day: Byte;
  end;

var
  HourTemp: T24HrTemperatures;
  DoB: TBirthDate;

begin
  try
    HourTemp[1] := 31.2;
    HourTemp[2] := 32.3;
    // .....
    HourTemp[24] := 28.1;
    // Try adding HourTemp[25] which is out of range, what's happen?
    writeln('Hour 1: ', FormatFloat('0.00°C', HourTemp[24]));
    // TODO: What's happend if we call [7] which is not assigned
    // and [25] which is out of range
    //
    // http://www.delphibasics.co.uk/RTL.php?Name=FormatFloat

    // Delphi 1.0 birthday
    DoB.Year := 1997;
    DoB.Month := 2;
    DoB.Day := 14;

    readln;

  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
