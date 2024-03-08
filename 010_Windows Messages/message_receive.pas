unit message_receive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TReceiveFM = class(TForm)
    pnlmessage: TPanel;
    Memo1: TMemo;
    txtsend: TEdit;
    btnSend: TButton;
    lblUser: TLabel;
	procedure WMCopyData(var Msg: TWMCopyData);message WM_COPYDATA;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  ReceiveFM: TReceiveFM;

implementation

{$R *.dfm}

procedure TReceiveFM.btnSendClick(Sender: TObject);
var
  DataStruct : CopyDataStruct;
  receiverHandle : THandle;
  res : integer;
begin
  if txtsend.Text <>'' then
  begin
    DataStruct.dwData :=0;
    DataStruct.cbData := (Length(txtsend.Text)+1)*sizeof(char);
    DataStruct.lpData := pchar(txtsend.Text) ;
    receiverHandle := FindWindow(('TSenderFM'),('Messanger') );

    if receiverHandle = 0 then
      begin
        ShowMessage(' Receiver NOT found!');
        Exit;
      end
      else
      begin
        res := SendMessage(receiverHandle, WM_COPYDATA, ReceiveFM.Handle,integer(@DataStruct));
         txtsend.Clear;
        if res = 1 then
          ShowMessage('Sent but not received');
      end;
  end
  else
    ShowMessage('Enter Message')
end;

procedure TReceiveFM.WMCopyData(var Msg: TWMCopyData);
var
  sMsg: String;
begin
  sMsg := PChar(Msg.CopyDataStruct.lpData);
  Memo1.Text := Memo1.Text  + sMsg +#13#10;
end;
end.
