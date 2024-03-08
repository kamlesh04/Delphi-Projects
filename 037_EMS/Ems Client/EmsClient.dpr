program EmsClient;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {Form6},
  uDataModuleMain in 'uDataModuleMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
