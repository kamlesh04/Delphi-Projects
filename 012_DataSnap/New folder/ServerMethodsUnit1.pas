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
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

