program Project_encrypdecrypt;

uses
  Vcl.Forms,
  encryp_decrypt in 'encryp_decrypt.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
