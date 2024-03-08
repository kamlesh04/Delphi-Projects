unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,MainLogic, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls,ClientModuleUnit1;

type
  TfrmMain = class(TForm)
    DBGrid: TDBGrid;
    pnlSearch: TPanel;
    txtID: TEdit;
    lblID: TLabel;
    btnSearch: TButton;
    btnsalary: TButton;
    procedure btnSearchClick(Sender: TObject);
    procedure btnsalaryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Funit:TServerMethods1Client;
    Fclient:TClientModule1;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnsalaryClick(Sender: TObject);
begin
  Funit:=TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
  Funit.MaxSalary;
  ClientModule1.ClientDataSet1.Active:=false;
  DBGrid.DataSource.DataSet:=ClientModule1.DataSource1.DataSet;
  ClientModule1.ClientDataSet1.Active:=true;
end;

procedure TfrmMain.btnSearchClick(Sender: TObject);
begin
  Funit:=TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
  Funit.FetchCustomer(txtID.Text);
  ClientModule1.ClientDataSet1.Active:=false;
  DBGrid.DataSource.DataSet:=ClientModule1.DataSource1.DataSet;
  ClientModule1.ClientDataSet1.Active:=true;
end;


procedure TfrmMain.FormCreate(Sender: TObject);
begin
//Funit1:=TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
//Funit1.DBConnect;
end;

end.
