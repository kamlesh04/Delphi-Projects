unit BankingDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB,Vcl.Dialogs;

type
  TDataModule4 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQueryPopulate: TADOQuery;
    DataSource1: TDataSource;
    ADOQueryupdate: TADOQuery;
    DataSource2: TDataSource;
    ADOQueryinsert: TADOQuery;
    DataSource3: TDataSource;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function DBConnect: Boolean;
var
 conStr : string;
begin
 DataModule4.ADOConnection1.Close;
 conStr:=  'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;PassWord=root;Data Source=DSNBANKINGDB;';
 DataModule4.ADOConnection1.ConnectionString:= conStr;
 DataModule4.ADOConnection1.LoginPrompt:= False;
 DataModule4.ADOConnection1.Connected:=True;
 DataModule4.ADOConnection1.Open;
 Result:= True;
end;

procedure TDataModule4.DataModuleCreate(Sender: TObject);
begin
  if DBConnect then
    ShowMessage('Connected')
  else
    ShowMessage('Not Connected');
end;

end.
