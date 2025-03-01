program Runtime;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form5},
  udmMain in 'udmMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TForm5, Form5);

  Application.Run;
end.
