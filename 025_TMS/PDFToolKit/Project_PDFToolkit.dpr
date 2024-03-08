program Project_PDFToolkit;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {MainFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFM, MainFM);
  Application.Run;
end.
