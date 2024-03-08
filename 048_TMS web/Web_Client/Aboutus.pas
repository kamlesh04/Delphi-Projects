unit Aboutus;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,ContactUs,OurServices;

type
  TfrmAboutUs = class(TWebForm)
    btnHome: TWebButton;
    btnLogout: TWebButton;
    btnServices: TWebButton;
    btnContactUs: TWebButton;
    procedure btnLogoutClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnContactUsClick(Sender: TObject);
    procedure btnServicesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAboutUs: TfrmAboutUs;

implementation
  uses
    LoginMain,Home;

{$R *.dfm}

procedure TfrmAboutUs.btnContactUsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmContactUs,frmContactUs);
end;

procedure TfrmAboutUs.btnHomeClick(Sender: TObject);
begin
  Application.CreateForm(TfrmHome,frmHome);
end;

procedure TfrmAboutUs.btnLogoutClick(Sender: TObject);
begin
  frmLoginMain.OnLogout;
  Application.CreateForm(TfrmLoginMain,frmLoginMain);
end;

procedure TfrmAboutUs.btnServicesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOurServices,frmOurServices);
end;

end.