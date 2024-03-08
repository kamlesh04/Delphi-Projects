program HelloWorld;

uses
  Vcl.Forms,
  helloFM in 'helloFM.pas' {HelloForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THelloForm, HelloForm);
  Application.Run;
end.
