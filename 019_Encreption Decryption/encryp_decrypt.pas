unit encryp_decrypt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,math, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    pnlForm: TPanel;
    btnEncrypt: TButton;
    txtInput: TEdit;
    txtDecrypt: TEdit;
    btnDecrypt: TButton;
    btnClear: TButton;
    lblHead: TLabel;
    mmEncrypt: TMemo;
    procedure btnEncryptClick(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
    Fdectyptstr: String;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnEncryptClick(Sender: TObject);
var
  i :integer;
  lTemp,loutput,lsalt: String;
  lvalue,ldecrypt: double;
begin
  if txtInput.Text<>'' then
  begin
    lTemp:=txtInput.Text;
    txtDecrypt.Clear;
    loutput:='';
    mmEncrypt.Clear;
    Fdectyptstr:='';
    for  i:= 1 to Length(txtInput.Text) do
    begin
      lvalue:=power(ord(lTemp[i]),2);
      lsalt:= '#01'+FloatToStr(lvalue)+'#01';
      loutput:=loutput +lsalt;
      if loutput<>'#01' then
        begin
          ldecrypt:=sqrt(lvalue);
          Fdectyptstr:=Fdectyptstr + char(StrToInt(ldecrypt.ToString));
        end;
    end;
    mmEncrypt.Text:=loutput;
    //ShowMessage('Encrypted data: '+loutput);
  end
  else
    ShowMessage('Enter Data to Encrypt');

end;

procedure TForm3.btnClearClick(Sender: TObject);
begin
  txtInput.Clear;
  txtDecrypt.Clear;
  Fdectyptstr:='';
  mmEncrypt.Clear;
end;

procedure TForm3.btnDecryptClick(Sender: TObject);
var
  i :integer;
begin
  if txtInput.Text<>'' then
  begin
    txtDecrypt.Text:= Fdectyptstr;
    //ShowMessage('Decrypted data: '+Fdectyptstr);
  end
  else
    ShowMessage('Encrypt data to decrypt');
end;

end.
