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
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function FetchCustomer(ID: String): string;
    function MaxSalary: string;
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

function TServerMethods1.FetchCustomer(ID: String): string;
begin
  if ID<>'' then
  begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT Customer_id,First_name,Last_Name,current_balance '+
      'FROM customer_details c '+
      'inner join account_details a on a.Account_no=c.Account_no '+
      'where Customer_id=:IDD';
      Parameters.ParamByName('IDD').Value:=StrToInt(ID);
      Open;
      Close;
    end;
    ADOQuery1.Active:=False;
    Result :=ID;
  end
  else
  begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT Customer_id,First_name,Last_Name,current_balance '+
      'FROM customer_details c '+
      'inner join account_details a on a.Account_no=c.Account_no';
      Open;
      Close;
    end;
    ADOQuery1.Active:=False;
    Result :=ID;
  end;
end;

function TServerMethods1.MaxSalary: string;
begin
  with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT Customer_id,First_name,Last_Name,current_balance '+
      'FROM customer_details c '+
      'inner join account_details a on a.Account_no=c.Account_no '+
      'where current_balance=(select max(current_balance) from account_details)';
      Open;
      Close;
    end;
    ADOQuery1.Active:=False;
end;

function TServerMethods1.DBConnect:boolean;
var
 conStr : string;
begin
  ServerMethods:=TServerMethods1.Create(ServerMethods);
  ServerMethods.ADOConnection1.close;
  conStr:='Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBANKINGDB;';
  ServerMethods.ADOConnection1.ConnectionString:= conStr;
  ServerMethods.ADOConnection1.LoginPrompt:= False;
  ServerMethods.ADOConnection1.Connected:=True;
  //ServerMethods1.ADOConnection1.Open;
  ServerMethods.ADOQuery1.Active:=True;
end;

end.

