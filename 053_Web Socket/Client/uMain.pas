unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, JSON, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, REST.JSON;

type
  TfrmMain = class(TForm)
    btnSendAuth: TButton;
    IdHTTP1: TIdHTTP;
    btnCheck: TButton;
    memResponse: TMemo;
    memRequest: TMemo;
    lblReqServer: TLabel;
    lblResServer: TLabel;
    btnSendSign: TButton;
    procedure btnSendAuthClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnSendSignClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnCheckClick(Sender: TObject);
var
  ldata: string;
begin
  ldata := IdHTTP1.Get('http://localhost:8080');
  ShowMessage(ldata);
end;

procedure TfrmMain.btnSendAuthClick(Sender: TObject);
var
 lJsVal : TJSONValue;
 lSendData: TStringStream;
 ldata : string;
 lJsObj,lJsDataObj: TJSONObject;
begin
  try
    memRequest.Lines.Clear;
    memResponse.Lines.Clear;
    //Generate Auth json request
    lJsObj := TJSONObject.Create;
    lJsDataObj := TJSONObject.Create;
    try
      lJsDataObj.AddPair('user','admin');
      lJsDataObj.AddPair('pass','admin123');
      lJsObj.AddPair('type','auth');
      lJsObj.AddPair('data',lJsDataObj);
      memRequest.Text := TJson.Format(lJsObj);
      lSendData := TStringStream.Create(lJsObj.ToString);
      try
        ldata := IdHTTP1.Post('http://localhost:8080/Auth?type=auth',lSendData);
        //Format the response of server
        lJsVal := TJSONObject.ParseJSONValue(ldata);
        memResponse.Text := TJson.Format(lJsVal);
      finally
        lSendData.Free;
      end;
    except on E: Exception do
    begin
      lJsObj.Free;
      lJsObj := TJSONObject.Create;;
      lJsObj.AddPair('status', 'Not success');
      lJsObj.AddPair('server status', 'not running');
      lJsVal := TJSONObject.ParseJSONValue(lJsObj.ToString);
      memResponse.Text := TJson.Format(lJsVal);
    end;
  end;
  finally
    lJsVal.Free;
    lJsDataObj:= nil;
    lJsDataObj.Free;
    lJsObj.Free;
  end;
end;

procedure TfrmMain.btnSendSignClick(Sender: TObject);
var
 lJsVal : TJSONValue;
 lSendData: TStringStream;
 ldata : string;
 lJsObj,lJsDataObj : TJSONObject;
 lJsKeysArr, lJsExempArr : TJSONArray;
begin
try
    memRequest.Lines.Clear;
    memResponse.Lines.Clear;
    try
      //Generate json Sign request
      lJsObj := TJSONObject.Create;
      lJsDataObj := TJSONObject.Create;
      lJsKeysArr := TJSONArray.Create;
      lJsExempArr := TJSONArray.Create;
      lJsObj.AddPair('type','provide_signature');
      lJsDataObj.AddPair('recipientName', 'admin');
      lJsKeysArr.Add('Key 1');
      lJsKeysArr.Add('Key 2');
      lJsDataObj.AddPair('Keys',lJsKeysArr);
      lJsExempArr.Add('Exemplar  1');
      lJsExempArr.Add('Exemplar  2');
      lJsDataObj.AddPair('exemplars',lJsExempArr);
      lJsDataObj.AddPair('signatureTime','2024-03-18T12:34:56Z');
      lJsDataObj.AddPair('signatureData','base64EncodedSignatureString');
      lJsObj.AddPair('data', lJsDataObj);
      memRequest.Text := TJson.Format(lJsObj);
      lSendData := TStringStream.Create(lJsObj.ToString);
      try
        ldata := IdHTTP1.Post('http://localhost:8080/Auth?type=provide_sign',lSendData);
        //Format the response of server
        lJsVal := TJSONObject.ParseJSONValue(ldata);
        memResponse.Text := TJson.Format(lJsVal);
      finally
        FreeAndNil(lSendData);
      end;
    except on E: Exception do
    begin
      lJsObj.Free;
      lJsObj := TJSONObject.Create;;
      lJsObj.AddPair('status', 'Not success');
      lJsObj.AddPair('server status', 'not running');
      lJsVal := TJSONObject.ParseJSONValue(lJsObj.ToString);
      memResponse.Text := TJson.Format(lJsVal);

    end;
  end;
finally
  lJsVal.Free;
  lJsKeysArr:= nil;
  lJsKeysArr.Free;
  lJsExempArr:= nil;
  lJsExempArr.Free;
  lJsDataObj:= nil;
  lJsDataObj.Free;
  lJsObj.Free;
end;

end;

end.
