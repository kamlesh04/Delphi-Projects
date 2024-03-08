program WebPage;



{$R *.dres}

uses
  WEBLib.Forms,
  Sphinx.WebLogin,
  Login in 'Login.pas' {frmLogin: TWebForm} {*.html},
  Signup in 'Signup.pas' {frmSignup: TWebForm} {*.html},
  Home in 'Home.pas' {frmHome: TWebForm} {*.html},
  Aboutus in 'Aboutus.pas' {frmAboutUs: TWebForm} {*.html},
  ContactUs in 'ContactUs.pas' {frmContactUs: TWebForm} {*.html},
  OurServices in 'OurServices.pas' {frmOurServices: TWebForm} {*.html},
  LoginMain in 'LoginMain.pas' {frmLoginMain: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoginMain, frmLoginMain);
  //Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmSignup, frmSignup);
  Application.CreateForm(TfrmAboutUs, frmAboutUs);
  Application.CreateForm(TfrmContactUs, frmContactUs);
  Application.CreateForm(TfrmOurServices, frmOurServices);

  // Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmHome, frmHome);

  Application.Run;
end.
