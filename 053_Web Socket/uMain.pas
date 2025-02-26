unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdCustomHTTPServer, IdHTTPServer, IdContext, Vcl.StdCtrls,
  IdHeaderList, JSON;

type
  TfrmMain = class(TForm)
    IdHTTPServer1: TIdHTTPServer;
    memMain: TMemo;
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartServer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  StartServer;
end;

procedure TfrmMain.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  lJsObj,lJsDataObj : TJSONObject;
  lJsKeysArr, lJsExempArr : TJSONArray;
  lJsVal : TJSONValue;
  lReceivedData: string;
  lStreamReader: TStreamReader;
begin
  lJsObj := TJSONObject.Create;
  lJsDataObj := TJSONObject.Create;
  try
    if (ARequestInfo.Document = '/Auth') and (ARequestInfo.PostStream <> nil) then
    begin
        lStreamReader := TStreamReader.Create(ARequestInfo.PostStream, TEncoding.UTF8);
        try
        lReceivedData := lStreamReader.ReadToEnd;
        lJsVal := TJSONObject.ParseJSONValue(lReceivedData);
        //Check if Request for auth
        if ARequestInfo.Params.Values['type'] = 'auth' then
        begin
        //Generate response for Sign request
          lJsKeysArr := TJSONArray.Create;
          lJsExempArr := TJSONArray.Create;
          try
            lJsObj.AddPair('type','ask_sign');
            lJsDataObj.AddPair('recipientName', lJsVal.GetValue<string>('data'+'.'+'user'));
            lJsKeysArr.Add('Key 1');
            lJsKeysArr.Add('Key 2');
            lJsDataObj.AddPair('Keys',lJsKeysArr);
            lJsExempArr.Add('Exemplar  1');
            lJsExempArr.Add('Exemplar  2');
            lJsDataObj.AddPair('exemplars',lJsExempArr);
            lJsObj.AddPair('data', lJsDataObj);
          finally
            lJsKeysArr:= nil;
            lJsKeysArr.Free;
            lJsExempArr:= nil;
            lJsExempArr.Free;
          end;
        end
        else if ARequestInfo.Params.Values['type'] = 'provide_sign' then
        begin
          //Generate response for Sign request
          lJsObj.AddPair('type','confirm_signature');
          lJsDataObj.AddPair('status','success');
          lJsDataObj.AddPair('message','Signature received and processed successfully.');
          lJsDataObj.AddPair('timestamp','2024-03-18T13:00:00Z');
          lJsObj.AddPair('data', lJsDataObj);
        end
        else
        begin
          lJsObj.AddPair('status', 'Not sucess');
          lJsObj.AddPair('error', '404');
        end
        finally
          FreeAndNil(lStreamReader);
        end;
    end
    else
    begin
      lJsObj.AddPair('Server status','Running');
     end;
    AResponseInfo.ContentText := lJsObj.ToString;;
  finally
    if Assigned(lJsVal) then
      lJsVal.Free;
    lJsDataObj:= nil;
    lJsDataObj.Free;
    lJsObj.Free;
  end;
end;

procedure TfrmMain.StartServer;
begin
  try
    IdHTTPServer1.Active := True;
    memMain.Lines.Add('Server is running on port '+ IdHTTPServer1.DefaultPort.ToString);
  except on E: Exception do
    memMain.Lines.Add('Error occured on port '+ IdHTTPServer1.DefaultPort.ToString);

  end;
end;

end.
