program Problems;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, System.Generics.Collections;

//#1
 //#1
  { Sum of Two element :
      Input : nums = [2,7,11,15], target = 9
      Output: [0,1]
      Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
  }
function SumTwo(nums : array of integer; target: integer) : string;
var
  i, j : integer;
begin
  for i := 0 to Length(nums) -1 do
  begin
    for j := i + 1 to Length(nums) do
      begin
        if nums[i] + nums[j] = target then
        begin
          Result := '[' + i.ToString +',' + j.ToString + ']';
          writeln('Output:' + Result);
          exit;
        end;
      end;
  end;
end;

//#2
//s containing just the characters '(', ')', '{', '}' ,'[' and ']',
//Input: s = "()"
//Output: true
function ValidParentheses(s:string):boolean;
var
  i : integer;
  opbrackets,clbrackets : TStack<string>;
  temp : char;
  str : string;
begin
  opbrackets := TStack<string>.Create;
  clbrackets := TStack<string>.Create;
  try
    for i:= 1 to Length(s)  do
    begin
      temp := s[i];
      if temp = #0 then
        continue;
      if temp in ['{','[','('] then
        opbrackets.Push(temp)
      else
        clbrackets.Push(temp);

      if opbrackets.Count > 0 then
      begin
        case temp of
          ')' : begin
                  str := opbrackets.Pop;
                  if (str = '{') or (str = '[') then
                    Result := false
                  else
                    clbrackets.Pop;
                end;
          ']' : begin
                  str := opbrackets.Pop;
                  if (str = '(') or (str = '{') then
                    Result := false
                  else
                    clbrackets.Pop;
                end;

         '}' :  begin
                str := opbrackets.Pop;
                if (str = '(') or (str = '[') then
                  Result := false
                else
                  clbrackets.Pop;
                end;
        end;
      end;

    end;

    if (clbrackets.Count = 0) and (opbrackets.Count = 0) then
      Result:= true;
    writeln(Result);
  finally
    opbrackets.Free;
    clbrackets.Free;
end;

end;

//#3 Merge Sorted array.
{Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]}
function MergeSortedArray(Arr1 , Arr2 : array of integer): array of integer;
var
  i,j,maxsize: integer;
begin
  if Length(Arr1) > Length(Arr2) then
    maxsize := Length(Arr1)
  else
    maxsize := Length(Arr2);
  for I := 0 to maxsize do
    begin

    end;
end;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }

     //SumTwo([2,7,11,15], 9 );
     //ValidParentheses('()[]{}[');
     Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
