program Project_UnitTest;

uses
  Vcl.Forms,
  MathsFM in 'MathsFM.pas' {Form3},
  UnitTestFM in 'Unit\UnitTestFM.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
