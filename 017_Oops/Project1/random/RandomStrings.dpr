program RandomStrings;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, Classes;

const charec= 'abcdefghijklmnopqrstuvwxyz';
const vaw= 'aeiou';
var
  i,j : integer;
  result,strr : string;
  Matched : boolean;

 function PrintRandomNames(): string;
 begin
      for I := 0 to 100 do
    begin
      Randomize;
      for j := 0 to 6  do
      begin
        if j in[1,4,6] then
          result:= result + vaw.Chars[Random(Length(vaw))]
        else
          result:= result + charec.Chars[Random(length(charec))];
      end;
      writeln(result);
      result:='';
    end;
    readln;
 end;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
   PrintRandomNames;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
