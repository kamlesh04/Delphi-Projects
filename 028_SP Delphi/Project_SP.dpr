program Project_SP;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  SP_Practice in 'SP_Practice.pas' {CustomerFM},
  SP_DataModule in 'SP_DataModule.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TCustomerFM, CustomerFM);
  Application.Run;
end.
