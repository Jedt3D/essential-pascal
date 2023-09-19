program ex08_range_enum_set;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  // Range data, you can define 'type' of the variable, and assign range of it
  TUpCase = 'A' .. 'Z'; // Notice, no data type
  TDayOfWeek = array [1 .. 7] of Integer; // Or specific data type

  TMyDate = record
    Month: Byte;
    Day: Byte;
    Year: Integer;
  end;

  Trgb = (Red, Green, Blue); // Enumerated Type
  TLetters = set of Char; // Set Type, Any char, upper and lower

var
  UCase: TUpCase;
  Letter: Char;
  L1, L2, L3: TLetters;

begin

  try
    UCase := 'D'; // what's happen if you assign 'd';
    writeln(UCase);

    // Now try something
    Letter := 'e';
    // UCase := Letter;
    // writeln(UCase); // TODO: Ctrl + . then type 'Range check' in Project Option
    { The default Range Check : True to check wrong range data }

    L1 := ['A', 'a', 'A'];
    // TODO: What are the values of L1? (Hint: what is def of set?)
    L2 := ['B'];
    L3 := [];

    writeln('Red Enum : ', ord(Red));    // = 0, Zero Based Enum
    
    readln;
    // TODO: run with F9 (Run with Debug) and notice the Watched Variables
    // To add a variable to Watch list, click at the var, then Ctrl+F5
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
