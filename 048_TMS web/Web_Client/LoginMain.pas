unit LoginMain;

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
  TfrmLoginMain = class(TWebForm)
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
    WebAuth1: TWebAuth;
   // SphinxWebLogin1: TSphinxWebLogin;
    procedure lblSignUpClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    procedure XDataWebDataSet2AfterOpen(DataSet: TDataSet);
    procedure WebAuth1GoogleSignIn(Sender: TObject; UserData: TGoogleUserData);
  private
    { Private declarations }
  public
    { Public declarations }
    FUserId, FUserEmail, FSessionId : string;
    function OnLogout:boolean;
    function CheckUser:boolean;

  end;

var
  frmLoginMain: TfrmLoginMain;

implementation

uses
  OurServices;
//  TMS.PracticeWeb.PracticeWeb, TMS.PracticeWeb.PracticeWeb.Interfaces;

{$R *.dfm}

procedure TfrmLoginMain.btnLoginClick(Sender: TObject);
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

{This will excute after OAuth login}
procedure TfrmLoginMain.WebAuth1GoogleSignIn(Sender: TObject;
  UserData: TGoogleUserData);
  procedure OnResult(res : TXDataClientResponse);
  var
    LJsVal : TJSONValue;
    LJsObj : TJSONObject;
  begin
    LJsVal := TJSONObject.ParseJSONValue(res.ResponseText);
    LJsObj := LJsVal as TJSONObject;
    //ShowMessage(res.ResponseText);
    try
      FUserEmail := UserData.EMail;
      FUserId := UserData.ID;
      FSessionId := LJsObj.GetValue('value').ToString;
      FSessionId := StringReplace(FSessionId,'"','''',[rfReplaceAll]);
      if FSessionId <> QuotedStr('E') then
      begin
        Application.CreateForm(TfrmHome,frmHome);
        //ShowMessage(FSessionId);
      end
      else
      begin
        MessageDlg('User already logged in, Do you want to log out from other system?',mtWarning,[mbYes,mbNo],
        procedure(AResult:TModalResult)
        begin
          if AResult = mrYes then
          begin
            XDataWebClient1.RawInvoke('IFetchUsersService.OAuthUsers',[UserData.ID, UserData.EMail, UserData.FirstName +' '+UserData.LastName,'', false, true],@OnResult);
            //Application.CreateForm(TfrmHome,frmHome);
            //frmHome.StartTimer;
          end;
        end
        );

      end;
    finally
      LJsVal.Free;
      LJsObj.Free;
    end;

  end;

begin
  FUserEmail := '';
  //Calls "OAuthUsers" web services from server
  XDataWebClient1.RawInvoke('IFetchUsersService.OAuthUsers',[UserData.ID, UserData.EMail, UserData.FirstName +' '+UserData.LastName,'', false, false],@OnResult);
end;

procedure TfrmLoginMain.WebFormCreate(Sender: TObject);
begin
  //XDataWebDataSet2.Load;
  XDataWebConnection1.Connected := True;
  //window.location.reload(true);
end;

procedure TfrmLoginMain.XDataWebDataSet2AfterOpen(DataSet: TDataSet);
var
  TotalRecords: Integer;
begin
  TotalRecords := XDataWebDataset1.ServerRecordCount;
  ShowMessage(TotalRecords.ToString);
end;


{This function checks the user has active session or not}
function TfrmLoginMain.CheckUser: boolean;
procedure OnResult(Response: TXDataClientResponse);
    var
      Jsobj: TJSONObject;
      jsval : TJSONValue;
      LTemp : string;
    begin
    jsval:= TJSONObject.ParseJSONValue(Response.ResponseText);
    try
      Jsobj :=  jsval as TJSONObject;
      LTemp := Jsobj.GetValue('value').ToString;
      LTemp := StringReplace(LTemp,'"','''', [rfReplaceAll]);
      //ShowMessage(LTemp);
      if Assigned(frmHome) then
        frmHome.StartTimer;
      if  LTemp = QuotedStr('E') then
      begin
        MessageDlg('User logged from other system.',mtWarning,[mbOK],
        procedure(AResult:TModalResult)
        begin
          if AResult = mrOk then
          begin
            document.location.reload(true);
            Result := true;
          end;
        end
        );
      end
    finally
      jsval.Free;
  end;

  end;
begin
  //Calls "OAuthUsers" web services from server
  XDataWebClient1.RawInvoke('IFetchUsersService.OAuthUsers',[FUserId, FUserEmail , '',FSessionId, false, false], @OnResult);

end;

procedure TfrmLoginMain.lblSignUpClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSignup,frmSignup);

end;

function TfrmLoginMain.OnLogout: boolean;
begin
  XDataWebClient1.RawInvoke('IFetchUsersService.OAuthUsers',[FUserId, FUserEmail , '','', true, false], nil);
  Result := true;
end;

end.
