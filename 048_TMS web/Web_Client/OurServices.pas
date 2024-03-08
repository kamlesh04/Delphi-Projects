unit OurServices;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls,
  WEBLib.ComCtrls, DB, WEBLib.Grids, WEBLib.ExtCtrls,XData.Web.Client,WEBLib.Json,
  WEBLib.SignIn, Sphinx.WebLogin, WEBLib.Auth;

type
  TfrmOurServices = class(TWebForm)
    btnHome: TWebButton;
    btnContactUs: TWebButton;
    btnLogout: TWebButton;
    btnAboutUs: TWebButton;
    pnlMain: TWebPanel;
    wpcMain: TWebPageControl;
    wpcsRides: TWebTabSheet;
    wpcsUsers: TWebTabSheet;
    lblName: TWebLabel;
    lblEmail: TWebLabel;
    lblPhone: TWebLabel;
    lblUserType: TWebLabel;
    edtName: TWebEdit;
    edtEmail: TWebEdit;
    edtPhone: TWebEdit;
    cbUserType: TWebComboBox;
    btnAdd: TWebButton;
    wpcsVehicles: TWebTabSheet;
    lblCurrentLoc: TWebLabel;
    lblDestLoc: TWebLabel;
    lblStartTime: TWebLabel;
    lblEndTime: TWebLabel;
    edtEndTime: TWebEdit;
    edtStartTime: TWebEdit;
    lblDate: TWebLabel;
    dtpDate: TWebDateTimePicker;
    btnAddRides: TWebButton;
    cbCurrentLoc: TWebComboBox;
    cbDestLoc: TWebComboBox;
    WebAuth1: TWebAuth;
    WebTimer1: TWebTimer;
    procedure btnHomeClick(Sender: TObject);
    procedure btnAboutUsClick(Sender: TObject);
    procedure btnContactUsClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddRidesClick(Sender: TObject);
    procedure edtStartTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEndTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SphinxWebLogin1UserLoggedIn(Args: TUserLoggedInArgs);
    procedure WebTimer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function StartTimer:boolean;
  end;

var
  frmOurServices: TfrmOurServices;

implementation
uses
   LoginMain{ Login},Home,ContactUs,Aboutus;

{$R *.dfm}

procedure TfrmOurServices.btnAboutUsClick(Sender: TObject);
begin
   Application.CreateForm(TfrmAboutUs,frmAboutUs);
end;

procedure TfrmOurServices.btnAddClick(Sender: TObject);
  procedure OnResults(Res : TXDataClientResponse);
  var
    LjsObj : TJSonObject;
    LJsVal : TJSONValue;
  begin
    ShowMessage(Res.ResponseText);
    LJsVal := TJSONObject.ParseJSONValue(Res.ResponseText);
    LjsObj := LJsVal as TJSONObject;
    if LjsObj.GetValue('value').ToString = 'true' then
    begin
      ShowMessage('Data inserted..');
      edtName.Text := '';
      edtEmail.Text := '';
      cbUserType.ItemIndex := 0;;
      edtPhone.Text := '';
    end
    else
      ShowMessage('Error Occurred!');

  end;
begin
  if (edtName.Text <> '') and (edtEmail.Text <> '') and (cbUserType.Text <> '') and (edtPhone.Text <> '') then
    frmLoginMain.XDataWebClient1.RawInvoke('IFetchUsersService.AddUsers',[edtName.Text,edtEmail.Text,cbUserType.Text,edtPhone.Text],@OnResults)
  else
    ShowMessage('Fill details..');
end;

procedure TfrmOurServices.btnAddRidesClick(Sender: TObject);
  procedure OnResults(Res : TXDataClientResponse);
  var
    LjsObj : TJSonObject;
    LJsVal : TJSONValue;
  begin
    ShowMessage(Res.ResponseText);
    LJsVal := TJSONObject.ParseJSONValue(Res.ResponseText);
    LjsObj := LJsVal as TJSONObject;
    if LjsObj.GetValue('value').ToString = 'true' then
    begin
      ShowMessage('Ride Created..');
      edtName.Text := '';
      edtEmail.Text := '';
      cbUserType.ItemIndex := 0;;
      edtPhone.Text := '';
    end
    else
      ShowMessage('Error Occurred!');

  end;
begin
  if (cbCurrentLoc.Text <> '') and (cbDestLoc.Text <> '') and (edtStartTime.Text <> '') and (edtEndTime.Text <> '') and (dtpDate.Text <> '') then
    frmLoginMain.XDataWebClient1.RawInvoke('IFetchUsersService.AddRides',[cbCurrentLoc.Text,cbDestLoc.Text,edtStartTime.Text,edtEndTime.Text,dtpDate.Text],@OnResults)
  else
    ShowMessage('Fill details..');

end;

procedure TfrmOurServices.btnContactUsClick(Sender: TObject);
begin
  Application.CreateForm(TfrmContactUs,frmContactUs);
end;

procedure TfrmOurServices.btnHomeClick(Sender: TObject);
begin
  Application.CreateForm(TfrmHome,frmHome);
end;

procedure TfrmOurServices.btnLogoutClick(Sender: TObject);
begin
  frmLoginMain.OnLogout;
  Application.CreateForm(TfrmLoginMain,frmLoginMain);

end;

procedure TfrmOurServices.edtEndTimeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if  ((Key >=48) and (Key<=57) and (Length(edtEndTime.Text) < 5)) or (Key = 8) then
    begin
      if  Key <> 8 then
      begin
        if Length(edtEndTime.Text) = 2 then
          edtEndTime.Text := edtEndTime.Text + ':';
      end;
    end
  else
    Key := 0;
end;

procedure TfrmOurServices.edtStartTimeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if  ((Key >=48) and (Key<=57) and (Length(edtStartTime.Text) < 5)) or (Key = 8) then
    begin
      if  Key <> 8 then
      begin
        if Length(edtStartTime.Text) = 2 then
          edtStartTime.Text := edtStartTime.Text + ':';
      end;
    end
  else
    Key := 0;

end;

procedure TfrmOurServices.SphinxWebLogin1UserLoggedIn(Args: TUserLoggedInArgs);
begin
  ShowMessage(Args.LoginResult.Profile.Email);
end;

function TfrmOurServices.StartTimer: boolean;
begin
  if WebTimer1.Enabled then
    WebTimer1.Enabled := false
  else
    WebTimer1.Enabled := true;

end;

procedure TfrmOurServices.WebTimer1Timer(Sender: TObject);
begin
  StartTimer;
  frmLoginMain.CheckUser;
end;

end.
