program ex04_var_const_data_types;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.TypInfo;

var
  // Also, you can define and assign variable at the same time.
  QueenOfFruit: string;
  IsSweet: Boolean;
  ANumber: Integer;
  IsCorrect: Boolean;
  A, B, K: Char;
  { **
    * Pascal is a strongly-typed language
    * data types must be assigned according to their types.
    * Also, we can cast the data to another types,
    * see later exercise }

const
  Pi = 3.14;
  Author = 'Worajedt Sitthidumrong';
  { **
    * Do you notice the assignment operator is '='
    * not the ':=' like a variable?
    * Also, data type is assigned automatically by compiler.
    * Constant mean you can't change the value of this defined name
    * along the runtime of application. }

begin
  QueenOfFruit := 'Durian';
  IsSweet := True;
  ANumber := 20;
  IsCorrect := True;
  A := 'A';
  // B := IsCorrect;    // TODO: Why and what error you get from the Message?
  // B := QueenOfFruit; // TODO: Even char vs string type.
  try
    // Char

    // TODO: B assign Ko Kai, its Unicode number is 0E01
    // it'll be a WideChar type (16bit)
    // Compare to A assigned A letter which Unicode number is the same as ASCII
    // It will only be a AnsiChar type (8bit)
    B := 'ก';
    K := #75; // assigned K with numeric notation for 'K' character
    writeln(K);
    writeln(Chr(75)); // Chr convert number to char
    writeln(ord('K')); // Ord convert char to number

    { **
      * Special Character like \n, \t in C
      * #8  Backspace
      * #9  Tab
      * #10 Newline \r
      * #13 Carriage Return \n
      * #27 Esc }

    // Integer
    { **
      * Signed                                  Unsigned (x2 positive value)
      * --------------------------------------------------------------------
      * ShortInt    8bits   -128 to 127         Byte      
      * Smallint    16bits  -32k to 32k         Word
      * Integer  16/32bits                      Cardinal
      * LongInt     32bits  -2,147M to 2,147M   LongWord
      * Int64       64bits  -9,223G to 9,223G   UInt64 
      * TODO: Highlight and F1 --> 'Simple Types (Delphi)' }

    write('Int64 : ');
    write(' has size of ', SizeOf(Int64), ' bytes');
    write(' from ', Low(Int64));
    write(' to ', High(Int64));

    { **
      * Routines of Delphi Pascal that may be helpful
      * Dec   Decrement, like --
      * Inc   Increment, like ++
      * Odd   Return True if the number Is Odd
      * Low   Return lowest value of the ordinal type passed by parameter
      * High  Return highest value of the ordinal type passed by parameter
      * Pred  Return Predecessor value, like Pred(9) is 8
      * Succ  Return Successor value, like Succ(9) is 10
      *
      * TODO: Highlight and F1 --> 'Delphi Intrinsic Routines'
    }

    // Real Types
    { **
      * Single      4 bytes value, smallest size
      * Double      8 bytes value
      * Extended    10 bytes value
      * 
      * Some other decimal Pascal data types for high precision 'currency'
      * Currency    64 bits signed integer 
    }

    readln;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.
