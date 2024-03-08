unit Login;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.Lists, Vcl.StdCtrls,
  WEBLib.StdCtrls, Data.DB,
  XData.Web.Connection, WEBLib.CDS, WEBLib.Grids, XData.Web.JsonDataset,
  XData.Web.Dataset, WEBLib.DB, Vcl.Grids, WEBLib.DBCtrls, WEBLib.ExtCtrls,
  WEBLib.JSON {,WEBLib.REST}, Types,Signup,Home, XData.Web.Client,
  Sphinx.WebLogin, WEBLib.SignIn, WEBLib.Auth;

type
  TfrmLogin = class(TWebForm)
    txtUserName: TWebEdit;
    txtPassword: TWebEdit;
    btnLogin: TWebButton;
    XDataWebConnection1: TXDataWebConnection;
    WebDataSource1: TWebDataSource;
    XDataWebDataSet1: TXDataWebDataSet;
    XDataWebDataSet1VehicleID: TXDataWebEntityField;
    XDataWebDataSet1UserID: TIntegerField;
    XDataWebDataSet1Name: TStringField;
    XDataWebDataSet1Username: TStringField;
    XDataWebDataSet1Password: TStringField;
    XDataWebDataSet1Email: TStringField;
    XDataWebDataSet1UserType: TStringField;
    XDataWebDataSet1PhoneNumber: TStringField;
    XDataWebDataSet1Status: TStringField;
    XDataWebDataSet2: TXDataWebDataSet;
    XDataWebDataSet2AdminID: TIntegerField;
    XDataWebDataSet2Name: TStringField;
    XDataWebDataSet2Username: TStringField;
    XDataWebDataSet2Password: TStringField;
    XDataWebDataSet2Email: TStringField;
    lblSignUp: TWebLabel;
    XDataWebClient1: TXDataWebClient;
    SphinxWebLogin1: TSphinxWebLogin;
   // SphinxWebLogin1: TSphinxWebLogin;
    procedure lblSignUpClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    procedure btnSignupClick(Sender: TObject);
    procedure XDataWebDataSet2AfterOpen(DataSet: TDataSet);
    procedure SphinxWebLogin1UserLoggedIn(Args: TUserLoggedInArgs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

//uses
//  TMS.PracticeWeb.PracticeWeb, TMS.PracticeWeb.PracticeWeb.Interfaces;

{$R *.dfm}

procedure TfrmLogin.btnSignupClick(Sender: TObject);
begin
  frmSignup.Show;
  ShowMessage('clicked');
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
  procedure OnResult(Response: TXDataClientResponse);
    var
      Jsobj: TJSONObject;
      jsval : TJSONValue;
    begin
    jsval:= TJSONObject.ParseJSONValue(Response.ResponseText);
    if not Assigned(jsval) then
    raise Exception.Create('Invalid json')
    else
      //ShowMessage('Found '+ jsval.ToString);
    try
      Jsobj :=  jsval as TJSONObject;
      ShowMessage(Jsobj.GetValue('value').ToString);
      if Jsobj.GetValue('value').ToString = 'true' then
        Application.CreateForm(TfrmHome,frmHome)
      else
        ShowMessage('Invalid username or password');
    finally
      jsval.Free;
  end;

  end;
begin
  XDataWebConnection1.Connected := True;
  ShowMessage('Login clicked.');
  XDataWebClient1.RawInvoke('IFetchUsersService.CheckUser', [txtUserName.Text, txtPassword.Text],@OnResult);

end;

procedure TfrmLogin.WebFormCreate(Sender: TObject);
begin
  //XDataWebDataSet2.Load;
  SphinxWebLogin1.Login;
end;

procedure TfrmLogin.XDataWebDataSet2AfterOpen(DataSet: TDataSet);
var
  TotalRecords: Integer;
begin
  TotalRecords := XDataWebDataset1.ServerRecordCount;
  ShowMessage(TotalRecords.ToString);
end;

procedure TfrmLogin.lblSignUpClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSignup,frmSignup);

end;

procedure TfrmLogin.SphinxWebLogin1UserLoggedIn(Args: TUserLoggedInArgs);
begin
  XDataWebConnection1.Connected := True;
  Application.CreateForm(TfrmHome,frmHome);
  SphinxWebLogin1.Logout;
end;

end.
