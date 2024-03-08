program LoadCSV;

uses
  Vcl.Forms,
  CSV in 'CSV.pas' {CsvFM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCsvFM, CsvFM);
  Application.Run;
end.
