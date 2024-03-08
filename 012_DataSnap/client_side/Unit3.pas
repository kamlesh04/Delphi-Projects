unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unit1, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls,ClientModuleUnit1;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
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
    Funit1:TServerMethods1Client;
    Fclient:TClientModule1;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnsalaryClick(Sender: TObject);
begin
  Funit1:=TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
  Funit1.MaxSalary;
  ClientModule1.ClientDataSet1.Active:=false;
  DBGrid1.DataSource.DataSet:=ClientModule1.DataSource1.DataSet;
  ClientModule1.ClientDataSet1.Active:=true;
end;

procedure TForm3.btnSearchClick(Sender: TObject);
begin
  Funit1:=TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
  Funit1.FetchCustomer(txtID.Text);
  //ShowMessage(Funit1.ReverseString('hi'));
  ClientModule1.ClientDataSet1.Active:=false;
  DBGrid1.DataSource.DataSet:=ClientModule1.DataSource1.DataSet;
  ClientModule1.ClientDataSet1.Active:=true;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
//Funit1:=TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
//Funit1.DBConnect;
end;

end.
