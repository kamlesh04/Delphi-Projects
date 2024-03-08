unit BankloginFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,BankingDM,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg,CustomerFm,Data.Win.ADODB;

type
  TBnkLoginFM = class(TForm)
    pnlLogin: TPanel;
    lblBank: TLabel;
    lblUsename: TLabel;
    lblPass: TLabel;
    txtUsrname: TEdit;
    txtPass: TEdit;
    btnLogin: TButton;
    imgLogo: TImage;
    procedure btnLoginClick(Sender: TObject);
    procedure txtPassKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
{ Public declarations }

  end;

  var
  BnkLoginFM: TBnkLoginFM;

implementation

{$R *.dfm}



procedure TBnkLoginFM.btnLoginClick(Sender: TObject);
var
  luser : String;
  lpass : String;
begin
  DataModule4.ADOQuerypopulate.Active:=True;
  with DataModule4.ADOQuerypopulate do
  begin
    Active:=True;
    Close;
    SQL.Clear;
    SQL.Add('SELECT UserId FROM customer_details where UserId=:username and Customer_password=MD5(:password)');
    Parameters.ParamByName('username').Value:=txtUsrname.Text;
    Parameters.ParamByName('password').Value:=txtPass.Text;
    Open;
    luser := fieldbyname ('UserId').asstring;
    if luser='' then
      ShowMessage('Incorrect Userid or Password!')
    else
    begin
      DataModule4.ADOQueryinsert.Active:=True;
      BnkdetailsFM.DBGrid2.DataSource:=DataModule4.DataSource2;
      BnkdetailsFM.Show;
      BnkLoginFM.Hide;
    end;
  Close;
  end;
end;

procedure TBnkLoginFM.txtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    btnLogin.Click;
end;

end.
