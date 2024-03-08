program Json_parsing;

uses
  Vcl.Forms,
  Json in 'Json.pas' {JsonFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TJsonFM, JsonFM);
  Application.Run;
end.
