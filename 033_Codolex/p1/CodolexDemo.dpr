program CodolexDemo;

uses
  Vcl.Forms,
  Codolex.Database.Query.Interfaces,
  Codolex.Database.Connection.FireDAC,
  Codolex.Database.Query.FireDAC,
  Codolex.Framework,
  Firedac.Comp.Client,
  System.SysUtils,
  Main in 'Main.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  var Connection: TFunc<IDatabaseQuery>;

  Connection := function: IDatabaseQuery
              begin
                var FDConnection := TFDConnection.Create(nil);

                FDConnection.Params.Clear;
                FDConnection.Params.Add('Database=D:\KamleshGaonkar\kamlesh\Practice\LowCode\Res\db\Employee.fdb');
                FDConnection.Params.Add('Server=127.0.0.1');
                FDConnection.Params.Add('User_Name=sysdba');
                FDConnection.Params.Add('Password=admin');
                FDConnection.Params.Add('DriverID=FB');
                FDConnection.LoginPrompt := False;

                var DbConnection := TDatabaseConnectionFireDAC.Create(FDConnection);

                Result := TDatabaseQueryFireDAC.Create(DbConnection);
              end;

  CodolexFramework.DatabaseQueryProvider['TestDataModule'] := Connection;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
