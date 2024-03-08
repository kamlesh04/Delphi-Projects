//
// Created by the DataSnap proxy generator.
// 11-05-2022 12:31:45
//

unit MainLogic;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FFetchCustomerCommand: TDBXCommand;
    FMaxSalaryCommand: TDBXCommand;
    FDBConnectCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function FetchCustomer(ID: string): string;
    function MaxSalary: string;
    function DBConnect: Boolean;
  end;

implementation

procedure TServerMethods1Client.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TServerMethods1.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
  end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

function TServerMethods1Client.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.FetchCustomer(ID: string): string;
begin
  if FFetchCustomerCommand = nil then
  begin
    FFetchCustomerCommand := FDBXConnection.CreateCommand;
    FFetchCustomerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFetchCustomerCommand.Text := 'TServerMethods1.FetchCustomer';
    FFetchCustomerCommand.Prepare;
  end;
  FFetchCustomerCommand.Parameters[0].Value.SetWideString(ID);
  FFetchCustomerCommand.ExecuteUpdate;
  Result := FFetchCustomerCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.MaxSalary: string;
begin
  if FMaxSalaryCommand = nil then
  begin
    FMaxSalaryCommand := FDBXConnection.CreateCommand;
    FMaxSalaryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMaxSalaryCommand.Text := 'TServerMethods1.MaxSalary';
    FMaxSalaryCommand.Prepare;
  end;
  FMaxSalaryCommand.ExecuteUpdate;
  Result := FMaxSalaryCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.DBConnect: Boolean;
begin
  if FDBConnectCommand = nil then
  begin
    FDBConnectCommand := FDBXConnection.CreateCommand;
    FDBConnectCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDBConnectCommand.Text := 'TServerMethods1.DBConnect';
    FDBConnectCommand.Prepare;
  end;
  FDBConnectCommand.ExecuteUpdate;
  Result := FDBConnectCommand.Parameters[0].Value.GetBoolean;
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FFetchCustomerCommand.DisposeOf;
  FMaxSalaryCommand.DisposeOf;
  FDBConnectCommand.DisposeOf;
  inherited;
end;

end.

