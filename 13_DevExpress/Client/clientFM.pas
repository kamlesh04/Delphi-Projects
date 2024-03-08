unit clientFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid,ClientModuleUnit1,
  Vcl.StdCtrls, Vcl.ExtCtrls, dxNavBar, dxNavBarCollns, dxNavBarBase,
  System.ImageList, Vcl.ImgList, cxImageList;

type
  TCustomerFM = class(TForm)
    pnlGrid: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1First_name: TcxGridDBColumn;
    cxGrid1DBTableView1City: TcxGridDBColumn;
    cxGrid1DBTableView1Last_Name: TcxGridDBColumn;
    cxGrid1DBTableView1date_of_birth: TcxGridDBColumn;
    cxGrid1DBTableView1Nationality: TcxGridDBColumn;
    cxGrid1DBTableView1Customer_Password: TcxGridDBColumn;
    cxGrid1DBTableView1UserID: TcxGridDBColumn;
    cxGrid1DBTableView1Mobile: TcxGridDBColumn;
    cxGrid1DBTableView1Email: TcxGridDBColumn;
    cxGrid1DBTableView1pincode: TcxGridDBColumn;
    cxGrid1DBTableView1Taluka: TcxGridDBColumn;
    cxGrid1DBTableView1Account_no: TcxGridDBColumn;
    cxGrid1DBTableView1Customer_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Comment: TcxGridDBColumn;
    btnData: TButton;
    btnGroup: TButton;
    btnClear: TButton;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    cxImageList2: TcxImageList;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2Account_type: TcxGridDBColumn;
    cxGrid1DBTableView2Creation_date: TcxGridDBColumn;
    cxGrid1DBTableView2Min_balance: TcxGridDBColumn;
    cxGrid1DBTableView2current_balance: TcxGridDBColumn;
    cxGrid1DBTableView2Account_no: TcxGridDBColumn;
    procedure btnDataClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerFM: TCustomerFM;

implementation

{$R *.dfm}

procedure TCustomerFM.btnClearClick(Sender: TObject);
begin
  ClientModule1.ClientDataSet1.Active:=False;
  ClientModule1.ClientDataSet2.Active:=False;
end;

procedure TCustomerFM.btnDataClick(Sender: TObject);
begin
  ClientModule1.ClientDataSet1.Active:=true;
  ClientModule1.ClientDataSet2.Active:=true;
end;

procedure TCustomerFM.btnGroupClick(Sender: TObject);
begin
  if cxGrid1DBTableView1.OptionsView.GroupByBox=true then
  begin
    cxGrid1DBTableView1.OptionsView.GroupByBox:=false;
    cxGrid1DBTableView2.OptionsView.GroupByBox:=false;
  end
  else
  begin
    cxGrid1DBTableView1.OptionsView.GroupByBox:=true;
    cxGrid1DBTableView2.OptionsView.GroupByBox:=true;
  end;
end;

procedure TCustomerFM.dxNavBar1Item2Click(Sender: TObject);
begin
  cxGrid1Level1.Visible:=True;
  cxGrid1Level2.Visible:=False;
  ClientModule1.ClientDataSet2.Active:=false;
  cxGrid1DBTableView1.DataController.DataSource:=ClientModule1.DataSource1;
  ClientModule1.ClientDataSet1.Active:=true;
end;

procedure TCustomerFM.dxNavBar1Item3Click(Sender: TObject);
begin
  cxGrid1Level1.Visible:=False;
  cxGrid1Level2.Visible:=True;
  cxGrid1DBTableView2.DataController.DataSource:=ClientModule1.DataSource2;
  ClientModule1.ClientDataSet2.Active:=true;

end;

end.
