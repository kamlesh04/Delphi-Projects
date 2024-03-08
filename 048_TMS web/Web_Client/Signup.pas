unit Signup;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, WEBLib.Lists, Vcl.StdCtrls,
  WEBLib.StdCtrls, Data.DB,
  XData.Web.Connection, WEBLib.CDS, WEBLib.Grids, XData.Web.JsonDataset,
  XData.Web.Dataset, WEBLib.DB, Vcl.Grids, WEBLib.DBCtrls, WEBLib.ExtCtrls,
  WEBLib.REST, Types;

type
  TfrmSignup = class(TWebForm)
    txtName: TWebEdit;
    txtEmail: TWebEdit;
    txtPassword: TWebEdit;
    txtConfirmPass: TWebEdit;
    cbTerms: TWebCheckBox;
    btnSubmit: TWebButton;
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
    lblLogIn: TWebLabel;
    procedure btnSubmitClick(Sender: TObject);
    procedure WebFormCreate(Sender: TObject);
    procedure lblLogInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignup: TfrmSignup;

implementation

uses
  {Login}LoginMain;

{$R *.dfm}

procedure TfrmSignup.btnSubmitClick(Sender: TObject);
begin
  if txtPassword.Text <> txtConfirmPass.Text then
  begin
    ShowMessage('Both passwords are not matching.');
    Exit
  end;
  ShowMessage('Inserting....');
  XDataWebDataSet2.Active := true;
  XDataWebDataSet2.Insert;
  XDataWebDataSet2.FieldByName('Name').Value := txtName.Text;
  XDataWebDataSet2.FieldByName('UserName').Value := txtEmail.Text;
  XDataWebDataSet2.FieldByName('Password').Value := txtPassword.Text;
  XDataWebDataSet2.FieldByName('Email').Value := txtEmail.Text;
  XDataWebDataSet2.Post;
  XDataWebDataSet2.ApplyUpdates;
  ShowMessage('Inserted.');
  Application.CreateForm(TfrmLoginMain,frmLoginMain);

end;

procedure TfrmSignup.lblLogInClick(Sender: TObject);
begin
  Application.CreateForm(TfrmLoginMain,frmLoginMain);
end;

procedure TfrmSignup.WebFormCreate(Sender: TObject);
begin
  XDataWebDataSet2.Load;
end;

end.
