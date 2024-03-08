unit DesktopMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Sphinx.Login,
  Sphinx.WebLogin, WEBLib.Controls, WEBLib.SignIn;

type
  TfrmSphinxDemo = class(TForm)
    SphinxLogin1: TSphinxLogin;
    btnLaunch: TButton;
    Memo: TMemo;
    SphinxWebLogin1: TSphinxWebLogin;
    procedure SphinxLogin1UserLoggedIn(Args: TUserLoggedInArgs);
    procedure btnLaunchClick(Sender: TObject);
    procedure SphinxWebLogin1UserLoggedIn(Args: TUserLoggedInArgs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSphinxDemo: TfrmSphinxDemo;

implementation

{$R *.dfm}

procedure TfrmSphinxDemo.btnLaunchClick(Sender: TObject);
begin
  SphinxLogin1.Login;
end;

procedure TfrmSphinxDemo.SphinxLogin1UserLoggedIn(Args: TUserLoggedInArgs);
begin
  Memo1.Lines.Add('User ' + Args.LoginResult.Profile.Email + ' logged in.');
end;

procedure TfrmSphinxDemo.SphinxWebLogin1UserLoggedIn(Args: TUserLoggedInArgs);
begin
  Memo1.Lines.Add('User ' + Args.LoginResult.Profile.Email + ' logged in.');
end;

end.
