unit ServerFM;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ServerMethodsUnit1;

type
  TForm3 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ServerMethods1:TServerMethods1;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
//  ServerMethods1:=ServerMethodsUnit1.TServerMethods1.Create(self);
//  ServerMethods1.ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBANKINGDB;';
//  ServerMethods1.ADOConnection1.Connected:=true;
//  ServerMethods1.ADOQuery1.Active:=true;
//  ServerMethods1.ADOQuery2.Active:=true;

end;

end.

