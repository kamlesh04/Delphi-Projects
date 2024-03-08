program DesktopApp;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  DesktopMain in 'DesktopMain.pas' {frmSphinxDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSphinxDemo, frmSphinxDemo);
  Application.Run;
end.
