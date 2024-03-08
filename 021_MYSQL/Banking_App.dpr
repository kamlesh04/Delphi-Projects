program Banking_App;

uses
  Vcl.Forms,
  BankloginFM in 'BankloginFM.pas' {BnkLoginFM},
  BankingDM in 'BankingDM.pas' {DataModule4: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  CustomerFm in 'CustomerFm.pas' {BnkdetailsFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule4, DataModule4);
  //Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(TBnkLoginFM, BnkLoginFM);
  Application.CreateForm(TBnkdetailsFM, BnkdetailsFM);
  Application.Run;
end.
