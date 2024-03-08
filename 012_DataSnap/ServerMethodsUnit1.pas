unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DB, Data.Win.ADODB,
  Datasnap.Provider;

type
{$METHODINFO ON}
  TServerMethods1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    DataSetProvider1: TDataSetProvider;
    ADOQuery1: TADOQuery;
    ADOQuery1userid: TAutoIncField;
    ADOQuery1name: TWideStringField;
    ADOQuery1email: TWideStringField;
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function AS_GetRecords(Value: string): Variant;
  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.AS_GetRecords(Value: string): Variant;
begin
  Result := StrToInt(Value);
end;

procedure TServerMethods1.DataModuleCreate(Sender: TObject);
begin
  //
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethods1.ADOQuery1BeforeOpen(DataSet: TDataSet);
var
  str:string;
begin
  str:= ADOQuery1.SQL.Text;

end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

