program Client;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  MainLogic in 'MainLogic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
