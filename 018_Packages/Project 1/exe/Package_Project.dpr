program Package_Project;

uses
  Vcl.Forms,
  Pacakges_test in 'Pacakges_test.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
