unit blowfishFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DCPcrypt2,
  DCPblockciphers, DCPblowfish, DCPsha512, Vcl.ExtCtrls, DCPrijndael, DCPice;

type
  TForm3 = class(TForm)
    DCP_sha5121: TDCP_sha512;
    pnlMain: TPanel;
    txtInput: TEdit;
    btnEncrypt: TButton;
    memEncrypt: TMemo;
    btnDecrypt: TButton;
    btnClear: TButton;
    DCP_sha3841: TDCP_sha384;
    procedure btnEncryptClick(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
    Fblowfish : TDCP_blowfish;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnClearClick(Sender: TObject);
begin
  memEncrypt.Clear;
  txtInput.Clear;

end;

procedure TForm3.btnDecryptClick(Sender: TObject);
var
  lDecrypt : String;
begin
  Fblowfish:= TDCP_blowfish.Create(nil);
  try
    Fblowfish.InitStr('Key', TDCP_sha384);
    lDecrypt := Fblowfish.DecryptString(memEncrypt.Text);
    ShowMessage('Decrypted data: '+lDecrypt);
  finally
     Fblowfish.Free;
  end;
end;

procedure TForm3.btnEncryptClick(Sender: TObject);
var
  lencrypt: String;
begin
  Fblowfish:= TDCP_blowfish.Create(nil);
  try
    Fblowfish.InitStr('Key', TDCP_sha384);
    lencrypt := Fblowfish.EncryptString(txtInput.Text);
    memEncrypt.Text:=lencrypt;
    Fblowfish.Reset;
  finally
    Fblowfish.Free;
  end;
end;

end.
