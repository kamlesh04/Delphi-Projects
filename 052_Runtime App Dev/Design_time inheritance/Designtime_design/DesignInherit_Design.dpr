program DesignInherit_Design;

uses
  Vcl.Forms,
  uBaseForm in 'uBaseForm.pas' {frmBaseForm},
  uSecondForm in 'uSecondForm.pas' {frmSecondForm},
  uMainForm in 'uMainForm.pas' {frmMainForm},
  uFirstForm in 'uFirstForm.pas' {frmFirstForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.CreateForm(TfrmBaseForm, frmBaseForm);
  Application.CreateForm(TfrmFirstForm, frmFirstForm);
  Application.CreateForm(TfrmSecondForm, frmSecondForm);
  Application.Run;
end.
