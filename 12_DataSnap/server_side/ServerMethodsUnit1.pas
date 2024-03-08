unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DB, Data.Win.ADODB,
  Datasnap.Provider;

type
  TServerMethods1 = class(TDSServerModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    ADOQuery1userid: TAutoIncField;
    ADOQuery1name: TWideStringField;
    ADOQuery1email: TWideStringField;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function DBConnect:boolean;
  end;

  var
  ServerMethods:TServerMethods1;

implementation


{$R *.dfm}


uses System.StrUtils;

procedure TServerMethods1.DSServerModuleCreate(Sender: TObject);
begin
  //DBConnect;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.DBConnect:boolean;
var
 conStr : string;
begin
  ServerMethods:=TServerMethods1.Create(ServerMethods);
  ServerMethods.ADOConnection1.close;
  //conStr:='Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;Extended Properties="DRIVER={PostgreSQL ODBC Driver(UNICODE)};DATABASE=TestDB;SERVER=127.0.0.1;PORT=5432;UID=postgres;SSLmode=disable;ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;RowVersioning=0;ShowSystemTables=0;Fetch=100;UnknownSizes=0;MaxVarcharSize=255;MaxLongVarcharSize=8190;Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLongVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSysTablePrefixes=;LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;UseServerSidePrepare=1;LowerCaseIdentifier=0;D6=-101;OptionalErrors=0;FetchRefcursors=0;XaOpt=1";Initial Catalog=TestDB';
  //ServerMethods.ADOConnection1.ConnectionString:= conStr;
  ServerMethods.ADOConnection1.LoginPrompt:= False;
  ServerMethods.ADOConnection1.Connected:=True;
  //ServerMethods1.ADOConnection1.Open;
  ServerMethods.ADOQuery1.Active:=True;
end;

end.

