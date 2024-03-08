program SphinxServer;

uses
  Vcl.Forms,
  SphinxMain in 'SphinxMain.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
