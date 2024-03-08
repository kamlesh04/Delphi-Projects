program Server;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Main in 'Main.pas' {frmMain},
  ServerMethodsUnit1 in 'ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerMethods, ServerMethods);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

