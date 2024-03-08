unit ContactUs;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,OurServices;

type
  TfrmContactUs = class(TWebForm)
    btnLogout: TWebButton;
    btnHome: TWebButton;
    btnServices: TWebButton;
    btnAboutUs: TWebButton;
    procedure btnHomeClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnAboutUsClick(Sender: TObject);
    procedure btnServicesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContactUs: TfrmContactUs;

implementation
    uses
    LoginMain,Home,Aboutus;

{$R *.dfm}

procedure TfrmContactUs.btnAboutUsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAboutUs,frmAboutUs);
end;

procedure TfrmContactUs.btnHomeClick(Sender: TObject);
begin
  Application.CreateForm(TfrmHome,frmHome);
end;

procedure TfrmContactUs.btnLogoutClick(Sender: TObject);
begin
  frmLoginMain.OnLogout;
  Application.CreateForm(TfrmLoginMain,frmLoginMain);
end;

procedure TfrmContactUs.btnServicesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOurServices,frmOurServices);
end;

end.
