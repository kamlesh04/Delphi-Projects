unit Connection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Inifiles, IOUtils, Email;

type
  TfrmConnection = class(TForm)
    pnlMain: TPanel;
    txtHost: TEdit;
    txtPort: TEdit;
    txtUserName: TEdit;
    txtPassword: TEdit;
    lblHost: TLabel;
    lblPort: TLabel;
    lblUsername: TLabel;
    lblPassword: TLabel;
    btnSave: TButton;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConnection: TfrmConnection;

implementation

{$R *.dfm}

procedure TfrmConnection.btnSaveClick(Sender: TObject);
var
  ini : TIniFile;
begin
  ini := TIniFile.Create(TPath.Combine(ExpandFileName(ExtractFilePath(ParamStr(0))+'/../../'),'Conn.ini'));
  try
    if ini.SectionExists('Connection') then
      ini.EraseSection('Connection');
    ini.WriteString('Connection','Host',txtHost.Text);
    ini.WriteString('Connection','Port',txtPort.Text);
    ini.WriteString('Connection','Username',txtUserName.Text);
    ini.WriteString('Connection','Password',txtPassword.Text);
    ShowMessage('Conntection data saved successfully.');
    Self.Hide;
    EmailFM.Show;
  finally
    ini.Free;
  end;
end;

end.
