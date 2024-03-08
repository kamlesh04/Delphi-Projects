program Advance;

uses
  Vcl.Forms,
  AdvanceFM in 'AdvanceFM.pas' {CaloriesFM},
  calories in 'calories.pas',
  person in 'person.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TCaloriesFM, CaloriesFM);
  Application.Run;
end.
