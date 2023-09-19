program ex02_coding_in_pascal;

{$APPTYPE CONSOLE}     // <-- these directives also are comments
{$R *.res}
// TODO: one line comment
(* TODO: also
  multiple line 
  comments *)
{ TODO: multiple
  lines comments
  with auto indent
}

{ TODO: uses block :
  import, include, uses any modules needed }
uses
  System.SysUtils;

{ TODO: var block :
  declare variables before assign value to them }
var
  strMsg: string; // declare str var here

begin
  { TODO: begin .. end. :
    b_e with dot (.) to scope define scope of all app code }
  strMsg := 'Hello, Delphi Pascal Edition'; // assign str value here

  // TODO: any code block such as try except, if else, for loop etc will end with "end;"
  try
    writeln(strMsg);
    { TODO: Try this, 
      write a 'writeln('hello world' then press Enter
      You'll get the + operator at the end of previous line
      and can continue the line later as a string concatenation }

    { it'd be like this     
      writeln('heal the world ' + #13#10 +   // <-- TODO: What is #13#10?
      'make it a better place ' +
      'for you and for me ' +
      'and the entire human race ');
    }
    writeln('String in Pascal uses single quote');
    writeln('We have to double it to show it like this --> '' <--');
    readln;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

  { *
    * TODO: Right click in code editor
    * - F1, Topic Search : search the selected keyword
    * - Ctrl+D : Format Source Code
    * - Ctrl+B : Bookmark
    *   Ctrl+Shift+[1-9] : Toggle Numbered Bookmark
    *   Ctrl+[1-9] : Go to the # bookmark
    *   - Ctrl+/ : Toggle Comment
    * - Editor Option
    * - Fold/UnFold
    * - Select and Find Reference
    * - Ctrl+Click : Find Reference, Go to Declaration
    *   Also mouse over the keyword can reveal some information
  }

end.
