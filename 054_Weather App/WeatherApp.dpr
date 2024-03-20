program WeatherApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'uMain.pas' {HeaderFooterForm},
  dmMain in 'dmMain.pas' {dmMainf: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THeaderFooterForm, HeaderFooterForm);
  Application.CreateForm(TdmMainf, dmMainf);
  Application.Run;
end.
