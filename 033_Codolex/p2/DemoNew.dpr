program DemoNew;

uses
  Vcl.Forms,
  Codolex.Database.Query.Interfaces,
  Codolex.Database.Connection.FireDAC,
  Codolex.Database.Query.FireDAC,
  Codolex.Framework,
  Firedac.Comp.Client,
  System.SysUtils,
  Dashboard in 'D:\Vehicle_pooling\latest\Admin v4.0.0\Admin v4.0.0\Dashboard.pas' {frmDashboard},
  ConnectionDM in 'D:\Vehicle_pooling\latest\Admin v4.0.0\Admin v4.0.0\ConnectionDM.pas' {frmConnectionDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;


  var Connection: TFunc<IDatabaseQuery>;

  Connection := function: IDatabaseQuery
                begin
                  var FDConnection := TFDConnection.Create(nil);

                  FDConnection.Params.Clear;
                  FDConnection.Params.Add('Database=vehiclepoolingsystem');
                  FDConnection.Params.Add('Server=127.0.0.1');
                  FDConnection.Params.Add('User_Name=root');
                  FDConnection.Params.Add('Password=root');
                  FDConnection.Params.Add('DriverID=MySQL');
                  FDConnection.LoginPrompt := False;

                  var DbConnection := TDatabaseConnectionFireDAC.Create(FDConnection);

                  Result := TDatabaseQueryFireDAC.Create(DbConnection);

                end;

  CodolexFramework.DatabaseQueryProvider['VSP'] := Connection;
  Application.CreateForm(TfrmConnectionDM, frmConnectionDM);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.Run;
end.
