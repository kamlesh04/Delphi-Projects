program Designtime;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form5},
  udmMain in 'udmMain.pas' {dmMain: TDataModule},
  NewForm in 'NewForm.pas' {frmNewForm},
  NewFrame in 'NewFrame.pas' {Frame1: TFrame},
  NewSecondForm in 'NewSecondForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmNewForm, frmNewForm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
