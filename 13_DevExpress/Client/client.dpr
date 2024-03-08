program client;

uses
  Vcl.Forms,
  clientFM in 'clientFM.pas' {CustomerFM},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCustomerFM, CustomerFM);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
