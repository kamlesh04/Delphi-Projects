unit unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls,
  Vcl.OleCtrls, SHDocVw;

type
  TfrmClient = class(TForm)
    edtUrl: TEdit;
    Memo: TMemo;
    btnGo: TButton;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    WebBrowser1: TWebBrowser;
    procedure btnGoClick(Sender: TObject);
    procedure NetHTTPClient1RequestCompleted(const Sender: TObject;
      const AResponse: IHTTPResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation

{$R *.dfm}

procedure TfrmClient.btnGoClick(Sender: TObject);
begin
  NetHTTPRequest1.MethodString := 'GET';
  NetHTTPRequest1.URL := edtUrl.Text;
  NetHTTPRequest1.Execute();
  WebBrowser1.Navigate(edtUrl.Text);
end;

procedure TfrmClient.NetHTTPClient1RequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
  Memo.Text := AResponse.ContentAsString;
end;

end.
