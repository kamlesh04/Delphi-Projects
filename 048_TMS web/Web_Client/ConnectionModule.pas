unit ConnectionModule;

interface

uses
  Aurelius.Drivers.Interfaces,
  Aurelius.Drivers.FireDac,  
  FireDAC.Dapt,
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Aurelius.Sql.PostgreSQL,
  Aurelius.Schema.PostgreSQL, Aurelius.Comp.Connection, Data.DB,
  FireDAC.Comp.Client;

type
  TFireDacPostgreSQLConnection = class(TDataModule)
    Connection: TFDConnection;
    AureliusConnection1: TAureliusConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
    class function CreateConnection: IDBConnection;
    class function CreateFactory: IDBConnectionFactory;
     
    class function CreatePool(APoolSize: Integer): IDBConnectionPool;
  end;

var
  FireDacPostgreSQLConnection: TFireDacPostgreSQLConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  
  XData.Aurelius.ConnectionPool,
  Aurelius.Drivers.Base;

{$R *.dfm}

{ TMyConnectionModule }

class function TFireDacPostgreSQLConnection.CreateConnection: IDBConnection;
begin 
  Result := FireDacPostgreSQLConnection.AureliusConnection1.CreateConnection; 
end;

class function TFireDacPostgreSQLConnection.CreateFactory: IDBConnectionFactory;
begin
  Result := TDBConnectionFactory.Create(
    function: IDBConnection
    begin
      Result := CreateConnection;
    end
  );
end;

class function TFireDacPostgreSQLConnection.CreatePool(APoolSize: Integer): IDBConnectionPool;
begin
  Result := TDBConnectionPool.Create(APoolSize, CreateFactory);
end;

procedure TFireDacPostgreSQLConnection.DataModuleCreate(Sender: TObject);
begin
  Connection.Connected := true;
end;

end.
