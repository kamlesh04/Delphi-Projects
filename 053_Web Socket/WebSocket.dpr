program WebSocket;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
