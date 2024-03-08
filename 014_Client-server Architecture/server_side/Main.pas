unit Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,ServerMethodsUnit1, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmMain = class(TForm)
  function DBConnect:boolean;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
function TfrmMain.DBConnect:boolean;
var
 conStr : string;
begin
  ServerMethods.ADOConnection1.close;
  conStr:='Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBANKINGDB;';
  ServerMethods.ADOConnection1.ConnectionString:= conStr;
  ServerMethods.ADOConnection1.LoginPrompt:= False;
  ServerMethods.ADOConnection1.Connected:=True;
  ServerMethods.ADOQuery1.Active:=True;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    DBConnect;
end;

end.

