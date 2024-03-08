unit Unit3;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,ServerMethodsUnit1, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm3 = class(TForm)
  function DBConnect:boolean;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
function TForm3.DBConnect:boolean;
var
 conStr : string;
begin
  //ServerMethods:=TServerMethods1.Create(ServerMethodsUnit1.ServerMethods);
  ServerMethods.ADOConnection1.close;
  //ShowMessage(ServerMethods.ADOConnection1.Connected.ToString);
  //conStr:='Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;Extended Properties="DRIVER={PostgreSQL ODBC Driver(UNICODE)};DATABASE=TestDB;SERVER=127.0.0.1;PORT=5432;UID=postgres;SSLmode=disable;ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;RowVersioning=0;ShowSystemTables=0;Fetch=100;UnknownSizes=0;MaxVarcharSize=255;MaxLongVarcharSize=8190;Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLongVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSysTablePrefixes=;LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;UseServerSidePrepare=1;LowerCaseIdentifier=0;D6=-101;OptionalErrors=0;FetchRefcursors=0;XaOpt=1";Initial Catalog=TestDB';
  //ServerMethods.ADOConnection1.ConnectionString:= conStr;
  ServerMethods.ADOConnection1.LoginPrompt:= False;
  ServerMethods.ADOConnection1.Connected:=True;
  //ServerMethods1.ADOConnection1.Open;
  ServerMethods.ADOQuery1.Active:=True;
end;



procedure TForm3.FormCreate(Sender: TObject);
begin
    //DBConnect;
end;

end.

