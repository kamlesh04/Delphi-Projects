unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  TestCodolex.DataSource.TestDataModule, Codolex.Components.VirtualDataSet,
  Codolex.Components.DataSet, Codolex.Components.Project, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Comp.Client, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TForm5 = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    CodolexProject1: TCodolexProject;
    CodolexDataSet1: TCodolexDataSet;
    DataSource1: TDataSource;
    Button2: TButton;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    btnRest: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnRestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  TestCodolex.TestModule.TestClass, TestCodolex.TestModule.TestClass.Interfaces;

{$R *.dfm}

procedure TForm5.btnRestClick(Sender: TObject);
begin
  var TestClass: ITestClass := TTestClass.Create;
  var results := TestClass.RestApi();
  Memo1.Lines.Add(results);

end;

procedure TForm5.Button1Click(Sender: TObject);
begin
var TestClass: ITestClass := TTestClass.Create;
TestClass.GetData(Name);



end;

procedure TForm5.Button2Click(Sender: TObject);
begin
var TestClass: ITestClass := TTestClass.Create;
TestClass.FillGrid();

end;

end.
