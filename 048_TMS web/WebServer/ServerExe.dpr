program ServerExe;

uses
  Vcl.Forms,
  MainModule in 'MainModule.pas' {ServerContainer: TDataModule},
  Server in 'Server.pas' {MainForm},
  FetchUsersService in 'FetchUsersService.pas',
  Entities in 'Entities.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
