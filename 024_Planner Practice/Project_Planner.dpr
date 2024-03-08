program Project_Planner;

uses
  Vcl.Forms,
  PlannerTest in 'PlannerTest.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
