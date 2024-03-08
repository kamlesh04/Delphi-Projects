program Project_dbplanner;

uses
  Vcl.Forms,
  dbplanner_test in 'dbplanner_test.pas' {Form3},
  NewForm in 'NewForm.pas' {MainFm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPlannerFm, PlannerFm);
  Application.CreateForm(TMainFm, MainFm);
  Application.Run;
end.
