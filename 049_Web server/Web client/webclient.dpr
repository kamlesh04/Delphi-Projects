program webclient;

uses
  Vcl.Forms,
  unit1 in 'unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmclient, frmclient);
  Application.Run;
end.
