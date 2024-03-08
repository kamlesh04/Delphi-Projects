unit Home;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.Lists, Vcl.StdCtrls,
  WEBLib.StdCtrls, Data.DB,
  XData.Web.Connection, WEBLib.CDS, WEBLib.Grids, XData.Web.JsonDataset,
  XData.Web.Dataset, WEBLib.DB, Vcl.Grids, WEBLib.DBCtrls, WEBLib.ExtCtrls,
  {,WEBLib.REST} Types,Signup, XData.Web.Client, WEBLib.Chatbox,
  libthreejs, WEBLib.ThreeJsControls, WEBLib.ThreeJsChart, WEBLib.GoogleChart,
  WEBLib.REST,WEBLib.JSON , WEBLib.ThreeJsMathChart,Aboutus, Vcl.Forms, ContactUs,OurServices;//, WEBLib.TMSFNCPDFLib;

type
  TfrmHome = class(TWebForm)
    lblUsers: TWebLabel;
    lblRides: TWebLabel;
    lblVehicles: TWebLabel;
    btnLogout: TWebButton;
    WebHttpRequest: TWebHttpRequest;
    WebHTMLContainer: TWebHTMLContainer;
    GererateReport: TWebButton;
    btnAboutUs: TWebButton;
    btnContactUs: TWebButton;
    btnServices: TWebButton;
    procedure WebFormShow(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure WebHttpRequestResponse(Sender: TObject; AResponse: string);
    procedure GererateReportClick(Sender: TObject);
    procedure btnAboutUsClick(Sender: TObject);
    procedure btnContactUsClick(Sender: TObject);
    procedure btnServicesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTimer : TWebTimer;
    procedure WebTimer(Sender: TObject);
    function StartTimer: boolean;
  end;

var
  frmHome: TfrmHome;

implementation
uses
  LoginMain;{Login;

{$R *.dfm}

procedure TfrmHome.btnAboutUsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAboutUs,frmAboutUs);
end;

procedure TfrmHome.btnContactUsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmContactUs,frmContactUs);
end;

procedure TfrmHome.btnLogoutClick(Sender: TObject);
begin
  frmLoginMain.OnLogout;
  Application.CreateForm(TfrmLoginMain,frmLoginMain);
end;

procedure TfrmHome.btnServicesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOurServices,frmOurServices);
end;

procedure TfrmHome.GererateReportClick(Sender: TObject);
// var
// PDF: TTMSFNCPDFLib;
begin
  WebHttpRequest.Execute;
//  PDF := TTMSFNCPDFLib.Create;
//  PDF.FontFallBackList.Insert(0, 'Roboto');
//   PDF.Header := '';
//    PDF.Footer := '';
//    PDF.NewPage;
//    PDF.Graphics.Font.Name := 'Roboto';
//    PDF.Graphics.Font.Size := 24;
//     PDF.Graphics.DrawHTMLText(txt, r);
//      PDF.EndDocument(True);
end;

procedure TfrmHome.WebFormShow(Sender: TObject);
  procedure OnGetData(Response: TXDataClientResponse);
    var
      jsobj : TJSONObject;
      jsval : TJSONValue;
      Jsarr : TJSONArray;
  begin
      jsval := TJSONObject.ParseJSONValue(Response.ResponseText);
      jsobj := jsval as TJSONObject;
      Jsarr := jsobj.GetValue('Counts') as TJSONArray;
      jsobj := Jsarr.Items[0] as  TJSONObject;
      lblUsers.Caption := jsobj.GetValue('Users').Value;
      lblRides.Caption := jsobj.GetValue('Rides').Value;
      lblVehicles.Caption := jsobj.GetValue('Vehicles').Value;
  end;

begin
  frmLoginMain.XDataWebConnection1.Connected := True;
  frmLoginMain.XDataWebClient1.RawInvoke('IFetchUsersService.GetCounts',[],@OnGetData);
  FTimer := TWebTimer.Create(self);
  FTimer.OnTimer := WebTimer;
  FTimer.Interval := 1000;
  FTimer.Enabled := true;


end;

procedure TfrmHome.WebHttpRequestResponse(Sender: TObject; AResponse: string);
begin
  ShowMessage(AResponse);
  WebHTMLContainer.HTML.Text := AResponse;
end;

//Ontimer excute
procedure TfrmHome.WebTimer(Sender: TObject);
begin
  StartTimer;
  frmLoginMain.CheckUser;
  //ShowMessage('Hit');
end;

function TfrmHome.StartTimer: boolean;
begin
  if FTimer.Enabled then
    FTimer.Enabled := false
  else
    FTimer.Enabled := true;

end;

end.
