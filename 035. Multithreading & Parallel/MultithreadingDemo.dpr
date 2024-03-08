program MultithreadingDemo;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMultThreading};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMultThreading, frmMultThreading);
  Application.Run;
end.
