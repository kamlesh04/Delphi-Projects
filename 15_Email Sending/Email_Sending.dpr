program Email_Sending;

uses
  Vcl.Forms,
  Email in 'Email.pas' {EmailFM},
  Vcl.Themes,
  Vcl.Styles,
  IOUtils,
  System.SysUtils,
  Connection in 'Connection.pas' {frmConnection};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  if not FileExists(TPath.Combine(ExpandFileName(ExtractFilePath(ParamStr(0))+'/../../'),'Conn.ini')) then
    Application.CreateForm(TfrmConnection, frmConnection);
  Application.CreateForm(TEmailFM, EmailFM);

  Application.Run;
end.
