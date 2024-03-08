unit SP_Practice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, AdvEdit,
  RTFLabel, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, AdvPanel, AdvGlowButton,SP_DataModule,Data.Win.ADODB,
  AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Vcl.MPlayer, Vcl.ComCtrls;

type
  TCustomerFM = class(TForm)
    pnlData: TAdvPanel;
    pnlMain: TAdvPanel;
    txtCust: TAdvEdit;
    btnSearch: TAdvGlowButton;
    lblHeader: TRTFLabel;
    grdData: TDBAdvGrid;
    procedure btnSearchClick(Sender: TObject);
    procedure grdDataClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerFM: TCustomerFM;

implementation

{$R *.dfm}

procedure TCustomerFM.btnSearchClick(Sender: TObject);
var
  CustParam1,CustParam2: TParameter;
begin
  DataModule3.ADOStoredProc1.Active:=false;
  try
   with DataModule3.ADOStoredProc1 do
    begin
      Close;
      ProcedureName := 'SearchCustomer';//Two Para 'SearchCustomer1';
      CustParam1 := Parameters.AddParameter;
      CustParam1.Name := '@Cust_Name';
      CustParam1.Value := txtCust.Text;
      //CustParam2 := Parameters.AddParameter;
      //CustParam2.Name := '@id';
      //CustParam2.Value := 'C00001';
      CustParam1.Direction:=pdInput;
      //CustParam2.Direction:=pdInput;
      Prepared:=True;
      ExecProc;
      //Open;
      //Close;
      DataModule3.ADOStoredProc1.Active:=true;
    end;
  finally
    FreeAndNil(CustParam1);
    //FreeAndNil(CustParam2);
  end;
end;

procedure TCustomerFM.grdDataClickCell(Sender: TObject; ARow, ACol: Integer);
var
  lmessage : string;
begin
  lmessage:=grdData.DataSource.DataSet.Fields.Fields[0].Value;
  try
    with DataModule3.ADOQuery1 do
    begin
    Close;
    SQL.Clear;
    SQL.Add('declare @Nm varchar(50) '+
            'exec CustomerName @Code=:Cust_code, @name =@Nm output '+
            'select @Nm as Name');
    Parameters.ParamByName('Cust_code').value:=lmessage;
    Open;
    lmessage:=fieldbyname ('Name').asstring;
    ShowMessage('Selected Customer : '+ lmessage);
    end;

  finally
  end;
end;
end.
