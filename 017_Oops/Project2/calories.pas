unit calories;

interface
uses
  Vcl.Controls,Vcl.Dialogs, Vcl.StdCtrls,person;
type
  TCalories = class(TPerson)
    Private

    public
    constructor create(Height : integer;Weight : integer;Age :integer;Gen : String);override;
    destructor destroyed;override;
    end;

var
  Calori :TCalories;

implementation

constructor TCalories.create(Height : integer;Weight : integer;Age :integer;Gen : String);
begin
  Inherited  create(Height,Weight,Age,gen);
end;

destructor TCalories.destroyed;
begin
  Calori.Free;
  inherited destroyed;
end;

end.
