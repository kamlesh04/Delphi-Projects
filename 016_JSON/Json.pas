unit Json;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,system.JSON, Vcl.StdCtrls,
  IdAuthentication, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, Vcl.ExtCtrls,System.DateUtils, IdSSLOpenSSL;

type
  TJsonFM = class(TForm)
    pnlresults: TPanel;
    pnlbuttons: TPanel;
    memResults: TMemo;
    btnGetJson: TButton;
    IdHTTP1: TIdHTTP;
    btnclear: TButton;
    pnlheading: TPanel;
    lblheading: TLabel;
    procedure btnGetJsonClick(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
  private
    { Private declarations }
    //FJson:TJSONValue;
    data : string;

  public
    { Public declarations }
  end;

var
  JsonFM: TJsonFM;

implementation

{$R *.dfm}

procedure TJsonFM.btnclearClick(Sender: TObject);
begin
  memResults.Clear;
end;

procedure TJsonFM.btnGetJsonClick(Sender: TObject);
var
  lJsonarray :TJSONArray;
  lJson ,lArrayElement : TJSonValue;
  SSL : TIdSSLIOHandlerSocketOpenSSL;

begin
  IdHTTP1:=  TIdHTTP.Create(nil);
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(IdHTTP1);
  SSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
  try
    IdHTTP1.IOHandler :=  SSL;
    data:=IdHTTP1.Get('https://restcountries.com/v3.1/all');
    lJson := TJSONObject.ParseJSONValue(data);
    lJsonarray := lJson.GetValue<TJSONArray>;
    memResults.Text :='Name'+'        '+'official' +#13#10;
    for lArrayElement in lJsonarray do begin
      memResults.Text :=memResults.Text + lArrayElement.GetValue<string>('name'+'.'+'common')+'   '
      +':'+lArrayElement.GetValue<string>('name'+'.'+'official')+ #13#10;
    end;
  finally
    lJson.Free;
    IdHTTP1.Free;
    SSL.Free;
  end;
end;

end.
