unit person;

interface
uses
    System.SysUtils,Vcl.Controls,Vcl.Dialogs,Vcl.StdCtrls;

type
  TPerson = class(TObject)
    private
      procedure setWeight(Const value : Integer);
      procedure setHeight(Const value : Integer);
      procedure setAge (Const value : Integer);
      procedure setgen(Const value : String);
      function getcalories : integer;

    protected
      FHeight : Integer;
      FWeight  : Integer;
      FAge  : Integer;
      FGen  : String;


    public
      constructor create(Height :integer;Weight :integer;Age :integer;Gen :String);virtual;
      //function getcalories : integer;virtual;
      destructor destroyed;virtual;
      //Properties
      property pcalories : integer read getcalories;
      property pheight: integer read FHeight write setHeight;
      property pweight: integer read FWeight write setWeight;
      property page: integer read FAge write setAge;
      property pgen: String read FGen write setgen;
  end;
var
  per : TPerson;

implementation

uses
AdvanceFM;

constructor TPerson.create(Height : integer;Weight : integer;Age :integer;Gen : String);
begin
  setheight(Height);
  setWeight(Weight);
  setAge(Age);
  setgen(gen);
end;

procedure TPerson.setheight(Const value : Integer);
begin
  FHeight := value;
end;

procedure TPerson.setWeight(Const value : Integer);
begin
  FWeight := value;
end;

procedure TPerson.setAge(Const value : Integer);
begin
  FAge := value;
end;

procedure TPerson.setgen(Const value : String);
begin
  FGen := value;
end;

function TPerson.getcalories : integer;
begin
  if pgen='Male'then
    Result :=Round(655.1 +(9.563 *pweight) + (1.850 * pheight)- (4.676 * page))
  else
    Result :=Round(66.47 + (13.75 *pweight) + (5.003 * pheight) -(6.755 * page));

   AdvanceFM.CaloriesFM.lblResult.Caption:=(Result*1.2).ToString;
end;

destructor TPerson.destroyed;
begin
   per.Free;
   //inherited;
end;

end.
