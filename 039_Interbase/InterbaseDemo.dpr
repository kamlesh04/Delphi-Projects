program InterbaseDemo;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form5},
  Datamodule in 'Datamodule.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
