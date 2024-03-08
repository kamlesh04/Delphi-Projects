unit Email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.ExtCtrls,IdExplicitTLSClientServerBase, IdSSLOpenSSL,
  IdSMTP, IdMessage,IdAttachmentFile, System.Actions, Vcl.ActnList, Vcl.StdActns,
  Vcl.Buttons, Vcl.ComCtrls,Inifiles, IOUtils;

type
  TEmailFM = class(TForm)
    pnlEmailDtls: TPanel;
    pnlMessage: TPanel;
    pnlButtons: TPanel;
    btnSend: TButton;
    btnAttach: TButton;
    ImageList1: TImageList;
    memMessage: TMemo;
    pnlCc: TPanel;
    lblCc: TLabel;
    txtCc: TEdit;
    lblCloseCc: TLabel;
    pnlBcc: TPanel;
    txtBcc: TEdit;
    lblBcc: TLabel;
    pnlSub: TPanel;
    txtSub: TEdit;
    lblSub: TLabel;
    pnlFrTo: TPanel;
    lblFrom: TLabel;
    lblTo: TLabel;
    txtFrom: TEdit;
    btnCc: TButton;
    btnBcc: TButton;
    txtTo: TEdit;
    AttachDialog: TOpenDialog;
    txtAttach: TEdit;
    lblAttachCount: TLabel;
    lblHead: TLabel;
    SpeedButton1: TSpeedButton;
    lblCloseBc: TLabel;
    procedure btnBccClick(Sender: TObject);
    procedure lblCloseCcClick(Sender: TObject);
    procedure btnCcClick(Sender: TObject);
    procedure lblCloseBcClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnAttachClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FSelectedFile : TStrings;
    Fattached : Boolean;
    Fatttemp : String;
    FSMTP : TIdSMTP;
    FMsg : TIdMessage;
  public
    { Public declarations }
  end;

var
  EmailFM : TEmailFM;

implementation

{$R *.dfm}

procedure TEmailFM.btnAttachClick(Sender: TObject);
var
  lattach :String;
  lattarr :TArray<String>;
  i : integer;
begin
  AttachDialog.Filter := 'All files|*.*';
  if AttachDialog.Execute(Handle) then
  begin
    FSelectedFile :=  AttachDialog.Files;
    //FSelectedFile.AddStrings(FselectedFile1);
    Fattached := True;
    for i := 0 to FSelectedFile.Count - 1 do
    begin
     lattach := FSelectedFile.Strings[i];
     lattarr := lattach.Split(['\']);
     Fatttemp := Fatttemp +'  '+ lattarr[Length(lattarr)-1];
    end;
    txtAttach.Text := Fatttemp;
    if FSelectedFile.Count > 1 then
      lblAttachCount.Caption := FSelectedFile.Count.ToString +' attachments'
    else
    lblAttachCount.Caption := FSelectedFile.Count.ToString +' Attachment';
  end;
end;

procedure TEmailFM.btnBccClick(Sender: TObject);
begin
  pnlBcc.show;
  btnBcc.Hide;
end;

procedure TEmailFM.btnCcClick(Sender: TObject);
begin
  pnlCc.Show;
  btnCc.Hide;
end;

procedure TEmailFM.btnSendClick(Sender: TObject);
var
  i : integer;
  SSL : TIdSSLIOHandlerSocketOpenSSL;
  ini : TIniFile;
begin
  FMsg := TIdMessage.Create(nil);
  try
    FMsg.From.Address := txtFrom.Text;
    FMsg.Recipients.EMailAddresses := txtTo.Text;
    FMsg.CCList.EMailAddresses := StringReplace(Trim(txtCc.Text),sLineBreak,',',[rfReplaceAll]);
    FMsg.BccList.EMailAddresses := StringReplace(Trim(txtBcc.Text),sLineBreak,',',[rfReplaceAll]);
    FMsg.Body.Text := memMessage.Text;
    if Fattached = True then
    begin
      for i := 0 to FSelectedFile.Count - 1 do
        TIdAttachmentFile.Create(FMsg.MessageParts, FSelectedFile.Strings[i]);
    end;
    FMsg.Subject := txtSub.Text;
    FSMTP := TIdSMTP.Create(nil);
    ini := TIniFile.Create(TPath.Combine(ExpandFileName(ExtractFilePath(ParamStr(0))+'/../../'),'Conn.ini'));
    try
      SSL := TIdSSLIOHandlerSocketOpenSSL.Create(fsmtp);
      SSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
      FSMTP.IOHandler := SSL;
      FSMTP.Host := ini.ReadString('Connection','Host','');
      FSMTP.Port :=  ini.ReadString('Connection','Port','').ToInteger;
      FSMTP.AuthType := satDefault;
      FSMTP.UseTLS := utUseExplicitTLS;
      FSMTP.Username := ini.ReadString('Connection','Username','');
      FSMTP.Password := ini.ReadString('Connection','Password','');
      FSMTP.Connect;
      try
        FSMTP.Send(FMsg);
        ShowMessage('Mail Sent Successfully.');
        txtFrom.Clear;
        txtTo.Clear;
        txtCc.Clear;
        txtBcc.Clear;
        txtSub.Clear;
        memMessage.Clear;
        pnlCc.Hide;
        pnlBcc.Hide;
        txtAttach.Clear;
        Fattached:=False;
        Fatttemp:='';
      Except
      //on E : Exception do
         ShowMessage('Invalid Details!');
      end;
    finally
      FSMTP.Free;
      FSMTP.Disconnect;
      SSL.Free;
      end;
  finally
    FMsg.Free;
  end;
end;

procedure TEmailFM.FormCreate(Sender: TObject);
begin
  Fattached:=False;
end;

procedure TEmailFM.lblCloseBcClick(Sender: TObject);
begin
  pnlBcc.hide;
  btnBcc.Show;
  txtBcc.Clear;
end;

procedure TEmailFM.lblCloseCcClick(Sender: TObject);
begin
  pnlCc.hide;
  btnCc.Show;
  txtCc.Clear;
end;

end.
