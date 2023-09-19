program ex05_date_time;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  StartTime: TDateTime; // Date and Time is a TDateTime class
  { **
    * TODO: TDateTime in Delphi is NOT EPOC time!!
    * It's a 'double' value count from Dec 30, 1899
    * 0      =   Dec 30, 1899, 12:00 am
    * 2.75   =   Jan 01, 1900, 06:00 pm (2 means 2 days, 0.75 means 3/4 of 24 hours)
    * -1.25  =   Dec 29, 1899, 06:00 am
    * 35065  =   Jan 01, 1996, 12:00 am }
  Year, Month, Day, Hour, Min, Sec, MSec: Word;

begin
  try
    StartTime := Now;
    writeln('Now:', StartTime);
    writeln('Now: ', DateTimeToStr(StartTime));
    writeln('Date: ', DateToStr(StartTime));
    writeln('Time: ', TimeToStr(StartTime));
    writeln('DayOfWeek: ', DayOfWeek(StartTime));

    // Decode and Encode parts of Date (or Time)
    DecodeDate(StartTime, Year, Month, Day);
    writeln('Today is day ' + IntToStr(Day) + ' of Month ' + IntToStr(Month) +
      ' of Year ' + IntToStr(Year));
    DecodeTime(StartTime, Hour, Min, Sec, MSec);
    writeln('The time is Minute ' + IntToStr(Min) + ' of Hour ' +
      IntToStr(Hour));
    // TODO: Read the doc about EncodeDate, EncodeTime and try to compose Date or Time
    
    readln;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
