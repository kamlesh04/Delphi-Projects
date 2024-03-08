unit messages_sender;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSenderFM = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Send: TButton;
    txtsend: TEdit;
    lblUser: TLabel;
    procedure SendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WMCopyData(var Msg: TWMCopyData);message WM_COPYDATA;
  private
    { Private declarations }
    Fmessage : TMessage;
  public
    { Public declarations }
   // procedure MessageReceiver(var msg: TMessage); message MY_MESSAGE;
  end;

var
  SenderFM: TSenderFM;

implementation

{$R *.dfm}

procedure TSenderFM.SendClick(Sender: TObject);
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
   receiverHandle := FindWindow(('TReceiveFM'),('Messanger') );

  if receiverHandle = 0 then
    begin
      ShowMessage(' Receiver NOT found!');
      Exit;
    end
    else
    begin
      res := SendMessage(receiverHandle, WM_COPYDATA, SenderFM.Handle,integer(@DataStruct));
      txtsend.Clear;
      if res = 1 then
        ShowMessage('Sent but not received');
    end;
  end
  else
   ShowMessage('Enter Message');
end;

procedure TSenderFM.WMCopyData(var Msg: TWMCopyData);
var
  sMsg: String;
begin
  sMsg := PChar(Msg.CopyDataStruct.lpData);
  Memo1.Text := Memo1.Text + sMsg +#13#10;
end;

procedure TSenderFM.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
end;

end.
