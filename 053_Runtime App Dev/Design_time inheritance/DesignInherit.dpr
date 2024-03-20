program DesignInherit;

uses
  Vcl.Forms,
  uBaseForm in 'uBaseForm.pas' {frmBaseForm},
  uRuntimeForm in 'uRuntimeForm.pas',
  uMainForm in 'uMainForm.pas' {frmMainForm},
  uRuntimeSecondForm in 'uRuntimeSecondForm.pas';

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TfrmBaseForm, frmBaseForm);
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.Run;
end.
