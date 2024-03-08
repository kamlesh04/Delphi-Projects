unit FastRpFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass, frxDBSet,
  Data.DB, Data.Win.ADODB,frxTableObject,frxGradient, WebView2, Winapi.ActiveX,
  Vcl.Edge;

type
  TForm3 = class(TForm)
    frxReport1: TfrxReport;
    btnPrint1: TButton;
    frxDBDataset1: TfrxDBDataset;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    btnPrint2: TButton;
    EdgeBrowser1: TEdgeBrowser;
    frxUserDataSet1: TfrxUserDataSet;
    procedure btnPrint1Click(Sender: TObject);
    function frxReport1ObjectManualBuild(
      ReportObject: TfrxReportComponent): Boolean;
    procedure btnPrint2Click(Sender: TObject);
    function frxReport2ObjectManualBuild(
      ReportObject: TfrxReportComponent): Boolean;
    procedure frxUserDataSet1First(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure frxUserDataSet1Next(Sender: TObject);
    procedure frxUserDataSet1Prior(Sender: TObject);
    procedure frxUserDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);

  private
    { Private declarations }
    RowNo: Integer;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
const
  data : Array[1..3,1..3] of ShortString=(('1','K','Ponda'),('2','K','Margao'),('3','R','Panajim'));
implementation

{$R *.dfm}

procedure TForm3.btnPrint1Click(Sender: TObject);
begin
//frxReport1.ShowPreparedReport;
frxReport1.ShowReport;
end;



procedure TForm3.btnPrint2Click(Sender: TObject);
begin
  frxReport2.ShowReport;
end;

function TForm3.frxReport1ObjectManualBuild(
  ReportObject: TfrxReportComponent): Boolean;
var
 DS: TfrxDBDataset;
 TableObject: TfrxTableObject;
begin
  TableObject := TfrxTableObject(ReportObject);
  DS := TfrxDBDataset(frxReport1.GetDataset('frxDBDataset1'));
  DS.First;
  TableObject.TableBuilder.PrintRow(0, tbHeader);
  TableObject.TableBuilder.PrintColumns;
  while not DS.Eof do
  begin
    TableObject.TableBuilder.PrintRow(1);
    TableObject.TableBuilder.PrintColumns;
    DS.Next;
  end;
end;

function TForm3.frxReport2ObjectManualBuild(
  ReportObject: TfrxReportComponent): Boolean;
var
  DS: TfrxDBDataset;
  TableObject: TfrxTableObject;
begin
//  DS := TfrxDBDataset.Create(self);
//  TableObject:=TfrxTableObject(ReportObject);
//  DS := TfrxDBDataset(frxReport2.GetDataset('frxDBDataset2'));
//  TableObject.TableBuilder.PaginationOrder := tpDownThenAcrossWrapped;
//  TableObject.TableBuilder.PrintColumn(0, tbHeader);
//  TableObject.TableBuilder.PrintRow(0, tbHeader);
//  TableObject.TableBuilder.PrintRows(1);
//  TableObject.TableBuilder.PrintColumn(1, tbHeader);
//  TableObject.TableBuilder.PrintRow(0, tbHeader);
//  TableObject.TableBuilder.PrintRows(1);
//  while not DS.Eof do
//  begin
//    DS.Next;
//    TableObject.TableBuilder.PrintColumn(0, tbHeader);
//    TableObject.TableBuilder.PrintRow(0, tbHeader);
//    TableObject.TableBuilder.PrintRows(1);
//
//    TableObject.TableBuilder.PrintColumn(1, tbHeader);
//    TableObject.TableBuilder.PrintRow(0, tbHeader);
//    TableObject.TableBuilder.PrintRows(1);

  //end;

end;

procedure TForm3.frxUserDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
begin
  Eof:=RowNo > High(data);
end;

procedure TForm3.frxUserDataSet1First(Sender: TObject);
begin
  RowNo:=1;
end;

procedure TForm3.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'id') = 0 then
  begin
    Value:=Data[RowNo][1];
  end
  else if CompareText(VarName, 'Name') = 0 then
  begin
    Value:=Data[RowNo][2];
  end
  else
    Value:=Data[RowNo][3];
end;

procedure TForm3.frxUserDataSet1Next(Sender: TObject);
begin
Inc(RowNo);
end;

procedure TForm3.frxUserDataSet1Prior(Sender: TObject);
begin
  Dec(RowNo);
end;

end.
