// 
// Created by the DataSnap proxy generator.
// 23-11-2023 13:08:54
// 

unit Unit4;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FADOQuery1BeforeOpenCommand: TDBXCommand;
    FDataModuleCreateCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

procedure TServerMethods1Client.ADOQuery1BeforeOpen(DataSet: TDataSet);
begin
  if FADOQuery1BeforeOpenCommand = nil then
  begin
    FADOQuery1BeforeOpenCommand := FDBXConnection.CreateCommand;
    FADOQuery1BeforeOpenCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FADOQuery1BeforeOpenCommand.Text := 'TServerMethods1.ADOQuery1BeforeOpen';
    FADOQuery1BeforeOpenCommand.Prepare;
  end;
  FADOQuery1BeforeOpenCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FADOQuery1BeforeOpenCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FDBXConnection.CreateCommand;
    FDataModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDataModuleCreateCommand.Text := 'TServerMethods1.DataModuleCreate';
    FDataModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.ExecuteUpdate;
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
  FADOQuery1BeforeOpenCommand.DisposeOf;
  FDataModuleCreateCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  inherited;
end;

end.
