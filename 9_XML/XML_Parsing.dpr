program XML_Parsing;

uses
  Vcl.Forms,
  xml in 'xml.pas' {xmlFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TxmlFM, xmlFM);
  Application.Run;
end.
