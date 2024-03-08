unit CustomerFm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Outline,
  Vcl.ExtCtrls, Data.DB, Vcl.DBGrids,BankingDM, Vcl.ComCtrls, Vcl.Tabs,
  Vcl.DockTabSet, Data.Win.ADODB;

type
  TBnkdetailsFM = class(TForm)
    pgcBank: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlCustDtls: TPanel;
    pnlAccInfo: TPanel;
    lblAccInfo: TLabel;
    lblCrBal: TLabel;
    lblCrDr: TLabel;
    txtCurBal: TEdit;
    txtCrDr: TEdit;
    btnDebit: TButton;
    btnCredit: TButton;
    pnlLogout: TPanel;
    btnLogout: TButton;
    lblAccNo: TLabel;
    txtFname: TEdit;
    lblFname: TLabel;
    txtMobile: TEdit;
    txtCity: TEdit;
    txtLname: TEdit;
    txtPincode: TEdit;
    lblEmail: TLabel;
    lblLname: TLabel;
    lblPin: TLabel;
    lblMob: TLabel;
    lblCity: TLabel;
    lblTaluka: TLabel;
    btnSave: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    txtEmail: TEdit;
    txtAcNo: TEdit;
    txtTaluka: TEdit;
    lblCustDtls: TLabel;
    lblBnkName: TLabel;
    pnlGrid: TPanel;
    DBGrid2: TDBGrid;
    btnShowBal: TButton;
    btnClear: TButton;
    procedure btnLogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnShowBalClick(Sender: TObject);
    procedure btnDebitClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BnkdetailsFM: TBnkdetailsFM;
  gcustid : Integer;
  gbalance : Integer;
  gcrdr : Integer;
  gAccNo : String;

implementation

{$R *.dfm}

uses BankloginFM;

procedure TBnkdetailsFM.btnClearClick(Sender: TObject);
begin
  BnkdetailsFM.txtFname.Clear;
  BnkdetailsFM.txtLname.Clear;
  BnkdetailsFM.txtMobile.Clear;
  BnkdetailsFM.txtEmail.Clear;
  BnkdetailsFM.txtCity.Clear;
  BnkdetailsFM.txtPincode.Clear;
  BnkdetailsFM.txtTaluka.Clear;
  BnkdetailsFM.txtAcNo.Clear;
  BnkdetailsFM.txtCurBal.Clear;
  BnkdetailsFM.txtCrDr.Clear;
  gcustid:=0;
  DataModule4.ADOQueryinsert.Active:=False;
  DataModule4.ADOQueryinsert.Active:=True;
DBGrid2.DataSource:=DataModule4.DataSource2;
end;

procedure TBnkdetailsFM.btnDebitClick(Sender: TObject);
begin
  if txtCrDr.Text<>'' then
  begin
    if TButton(Sender).Caption='Debit' then
    begin
      gcrdr:=StrToInt(txtCrDr.Text) - gbalance;
    end
    else
      gcrdr:=StrToInt(txtCrDr.Text) + gbalance;
    if gcustid <>0 then
    begin
      with DataModule4.ADOQueryupdate do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='update account_details set current_balance=:bal'+
        ' where Account_no=:ID';//);
        Parameters.ParamByName('bal').Value:=abs(gcrdr);
        Parameters.ParamByName('ID').Value:=gAccNo;
        ExecSQL;
        Close;
        ShowMessage('Balance '+TButton(Sender).Caption+'ed '+ 'Successfully');
        BnkdetailsFM.txtFname.Clear;
        BnkdetailsFM.txtLname.Clear;
        BnkdetailsFM.txtMobile.Clear;
        BnkdetailsFM.txtEmail.Clear;
        BnkdetailsFM.txtCity.Clear;
        BnkdetailsFM.txtPincode.Clear;
        BnkdetailsFM.txtTaluka.Clear;
        BnkdetailsFM.txtAcNo.Clear;
        BnkdetailsFM.txtCrDr.Clear;
        BnkdetailsFM.txtCurBal.Clear;
        gcustid:=0;
      end;
      DataModule4.ADOQueryinsert.Active:=False;
      DataModule4.ADOQueryinsert.Active:=True;
      DBGrid2.DataSource:=DataModule4.DataSource2;

    end
    else
    ShowMessage('Select customer to update');
  end
  else
  ShowMessage('Credit/Debit field cannot be blank');
end;

procedure TBnkdetailsFM.btnDeleteClick(Sender: TObject);
begin
  if gcustid <>0 then
  begin
    with DataModule4.ADOQueryupdate do
    begin
      Close;
      SQL.Clear;
      //Delete from Customer tbl
      SQL.Text:='delete  from customer_details where Customer_id=:ID';
      Parameters.ParamByName('ID').Value:=gcustid;
      ExecSQL;
      Close;
      Close;
      SQL.Clear;
      //Delete from Account tbl
      SQL.Text:='delete  from account_details where Account_no=:AccNo';
      Parameters.ParamByName('AccNo').Value:=gAccNo;
      ExecSQL;
      Close;
      ShowMessage('Entry Deleted Successfully');
      BnkdetailsFM.txtFname.Clear;
      BnkdetailsFM.txtLname.Clear;
      BnkdetailsFM.txtMobile.Clear;
      BnkdetailsFM.txtEmail.Clear;
      BnkdetailsFM.txtCity.Clear;
      BnkdetailsFM.txtPincode.Clear;
      BnkdetailsFM.txtTaluka.Clear;
      BnkdetailsFM.txtAcNo.Clear;
      gcustid:=0;
    end;
    DataModule4.ADOQueryinsert.Active:=False;
    DataModule4.ADOQueryinsert.Active:=True;
    DBGrid2.DataSource:=DataModule4.DataSource2;

  end
  else
  ShowMessage('Select customer to delete');
end;

procedure TBnkdetailsFM.btnSaveClick(Sender: TObject);
Var
  lAccNo : String;
begin
  if gcustid =0 then
  begin
    if (txtFname.Text<>'') and (txtMobile.Text<>'') then
    begin
      with DataModule4.ADOQueryPopulate do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='insert into account_details(Account_type,Min_balance,current_balance,Creation_date)'+
        'values(:AccType,:MinBAl,:MaxBal,:CreDate)';
        Parameters.ParamByName('AccType').Value:='Saving';
        Parameters.ParamByName('CreDate').Value:=FormatDateTime('YYY/MM/DD', Now);;
        Parameters.ParamByName('MinBAl').Value:='10000';
        Parameters.ParamByName('MaxBal').Value:='10000';
        ExecSQL;
        Close;
        //populate accno
        Close;
        SQL.Clear;
        SQL.Add('SELECT Account_no FROM account_details a order by Account_no desc limit 1');
        Open;
        lAccNo := fieldbyname ('Account_no').asstring;
        //inset into cutomer tbl
        Close;
        SQL.Clear;
        SQL.Text:='insert into customer_details(First_name,Last_Name,'+
        'City,Account_no,Mobile,Email,pincode,Taluka,UserID,Customer_Password)'+
        ' values(:Fname,:Lname,:City,:AccNo,:mobile,:email,:pincode,:Tal,:user,MD5(:pass))';
        Parameters.ParamByName('Fname').Value:=txtFname.Text;
        Parameters.ParamByName('Lname').Value:=txtLname.Text;
        Parameters.ParamByName('mobile').Value:=txtMobile.Text;
        Parameters.ParamByName('email').Value:=txtEmail.Text;
        Parameters.ParamByName('City').Value:=txtCity.Text;
        Parameters.ParamByName('pincode').Value:=txtPincode.Text;
        Parameters.ParamByName('Tal').Value:=txtTaluka.Text;
        Parameters.ParamByName('AccNo').Value:=lAccNo;
        Parameters.ParamByName('user').Value:=txtFname.Text+'123';
        Parameters.ParamByName('pass').Value:=txtFname.Text+'123';
        ExecSQL;
        Close;
        ShowMessage('Entry Added Successfully');
        BnkdetailsFM.txtFname.Clear;
        BnkdetailsFM.txtLname.Clear;
        BnkdetailsFM.txtMobile.Clear;
        BnkdetailsFM.txtEmail.Clear;
        BnkdetailsFM.txtCity.Clear;
        BnkdetailsFM.txtPincode.Clear;
        BnkdetailsFM.txtTaluka.Clear;
        BnkdetailsFM.txtAcNo.Clear;
        gcustid:=0;
        DataModule4.ADOQueryinsert.Active:=False;
        DataModule4.ADOQueryinsert.Active:=True;
        DBGrid2.DataSource:=DataModule4.DataSource2;
      end;
    end
    else
    ShowMessage('Name or Mobile No. cannot be blank!');

  end
  else
  ShowMessage('Click update to update data');
end;

procedure TBnkdetailsFM.btnUpdateClick(Sender: TObject);
begin
  if gcustid <>0 then
  begin
    with DataModule4.ADOQueryupdate do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='update customer_details set First_name=:Fname,'+
      'Last_Name=:Lname,Taluka=:Tal,Account_no=:AccNo,mobile=:mobi,'+
      'email=:ema,City=:Cit,pincode=:pin where Customer_id=:ID';//);
      Parameters.ParamByName('Fname').Value:=txtFname.Text;
      Parameters.ParamByName('Lname').Value:=txtLname.Text;
      Parameters.ParamByName('mobi').Value:=txtMobile.Text;
      Parameters.ParamByName('ema').Value:=txtEmail.Text;
      Parameters.ParamByName('Cit').Value:=txtCity.Text;
      Parameters.ParamByName('pin').Value:=txtPincode.Text;
      Parameters.ParamByName('Tal').Value:=txtTaluka.Text;
      Parameters.ParamByName('AccNo').Value:=txtAcNo.Text;
      Parameters.ParamByName('ID').Value:=gcustid;
      ExecSQL;
      Close;
      ShowMessage('Entry Updated Successfully');
      BnkdetailsFM.txtFname.Clear;
      BnkdetailsFM.txtLname.Clear;
      BnkdetailsFM.txtMobile.Clear;
      BnkdetailsFM.txtEmail.Clear;
      BnkdetailsFM.txtCity.Clear;
      BnkdetailsFM.txtPincode.Clear;
      BnkdetailsFM.txtTaluka.Clear;
      BnkdetailsFM.txtAcNo.Clear;
      BnkdetailsFM.txtCurBal.Clear;
      BnkdetailsFM.txtCrDr.Clear;
      gcustid:=0;
    end;
    DataModule4.ADOQueryinsert.Active:=False;
    DataModule4.ADOQueryinsert.Active:=True;
    DBGrid2.DataSource:=DataModule4.DataSource2;

  end
  else
  ShowMessage('Select customer to update');
end;

procedure TBnkdetailsFM.btnLogoutClick(Sender: TObject);
begin
  BnkdetailsFM.close;
  BnkLoginFM.Show;
  BnkLoginFM.txtUsrname.Clear;
  BnkLoginFM.txtPass.Clear;
end;

procedure TBnkdetailsFM.btnShowBalClick(Sender: TObject);
begin
  if gcustid <>0 then
  begin
    txtCurBal.Text:=IntToStr(gbalance);
  end
  else
    ShowMessage('Select customer to display balance');
end;

procedure TBnkdetailsFM.DBGrid2CellClick(Column: TColumn);
begin
  gcustid:=DBGrid2.DataSource.DataSet.Fields.Fields[0].Value;
  txtFname.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[1].Value;
  txtLname.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[3].Value;
  txtTaluka.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[7].Value;
  txtCity.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[3].Value;
  txtAcNo.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[8].Value;
  txtPincode.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[6].Value;
  txtMobile.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[4].Value;
  txtEmail.Text:=DBGrid2.DataSource.DataSet.Fields.Fields[5].Value;
  gbalance:=DBGrid2.DataSource.DataSet.Fields.Fields[11].Value;
  gAccNo:= DBGrid2.DataSource.DataSet.Fields.Fields[8].Value;
end;

procedure TBnkdetailsFM.FormCreate(Sender: TObject);
begin
  DataModule4.ADOConnection1.Connected:=True;
  DataModule4.ADOConnection1.LoginPrompt:=false;
  DataModule4.ADOQueryPopulate.Connection:= DataModule4.ADOConnection1;
  DataModule4.ADOQueryPopulate.SQL.Text:=('Select *  FROM customer_details');
  DataModule4.ADOQueryPopulate.Connection.Connected:=True;
  DataModule4.ADOQueryPopulate.Active:=True;
  DataModule4.DataSource1.DataSet:=DataModule4.ADOQueryPopulate;
  DataModule4.DataSource1.DataSet.Active:=True;
  //DBGrid2.DataSource:=DataModule4.DataSource1;
  DataModule4.ADOQueryinsert.Active:=True;
  gcustid:=0;

end;

end.
