program RestDemo;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmRESTAPI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRESTAPI, frmRESTAPI);
  Application.Run;
end.
