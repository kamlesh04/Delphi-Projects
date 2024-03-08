unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls,ComObj, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmMain = class(TForm)
    btnExport: TButton;
    DBGrid: TDBGrid;
    OpenDialog: TOpenDialog;
    FDConnection: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable1EMP_NO: TSmallintField;
    FDTable1FIRST_NAME: TStringField;
    FDTable1LAST_NAME: TStringField;
    FDTable1HIRE_DATE: TSQLTimeStampField;
    FDTable1DEPT_NO: TStringField;
    btnImport: TButton;
    StringGrid: TStringGrid;
    procedure btnExportClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnExportClick(Sender: TObject);
var
  xml,sheet,sheet1,lworkbooks : Variant;
  row : integer;
begin
  xml := Createoleobject('Excel.Application');
  xml.Caption := 'Excel export';
  xml.Visible := false;
  row := 2;
  lworkbooks:= xml.workbooks.Add;
  lworkbooks.worksheets[1].Name := 'Test';
  sheet := lworkbooks.worksheets['Test'];
  //xml.workbooks[1].worksheets[1].Name := 'Test';
  //sheet := xml.workbooks[1].worksheets['Test'];
  sheet.cells[1,1] := 'Emp No.';
  sheet.cells[1,2] := 'First Name';
  sheet.cells[1,3] := 'Last Name';
  sheet.cells[1,4] := 'Hiring Date';
  sheet.cells[1,5] := 'Dept No.';
  sheet.cells[1,1].Interior.Color := clMoneyGreen;
  sheet.cells[1,2].Interior.Color := clMoneyGreen;
  sheet.cells[1,3].Interior.Color := clMoneyGreen;
  sheet.cells[1,4].Interior.Color := clMoneyGreen;
  sheet.cells[1,5].Interior.Color := clMoneyGreen;
  while not FDTable1.Eof do
  begin
   sheet.cells[row,1]:=  FDTable1EMP_NO.Value;
   sheet.cells[row,2]:=  FDTable1FIRST_NAME.Value;
   sheet.cells[row,3]:=  FDTable1LAST_NAME.Value;
   sheet.cells[row,4]:=  FDTable1HIRE_DATE.AsString;
   sheet.cells[row,5]:=  FDTable1DEPT_NO.Value;
   FDTable1.Next;
   row:= row + 1;
  end;
 sheet.columns.Autofit;

 FDTable1.First;
 //next Sheet
  row := 2;
  sheet1 := lworkbooks.worksheets.Add;
  sheet1.Name := 'Test1';
  //sheet1 := lworkbooks.worksheets['Test1'];
  sheet1.cells[1,1] := 'Emp No.';
  sheet1.cells[1,2] := 'First Name';
  sheet1.cells[1,3] := 'Last Name';
  sheet1.cells[1,4] := 'Hiring Date';
  sheet1.cells[1,5] := 'Dept No.';
  sheet1.cells[1,1].Interior.Color := clMoneyGreen;
  sheet1.cells[1,2].Interior.Color := clMoneyGreen;
  sheet1.cells[1,3].Interior.Color := clMoneyGreen;
  sheet1.cells[1,4].Interior.Color := clMoneyGreen;
  sheet1.cells[1,5].Interior.Color := clMoneyGreen;
  while not FDTable1.Eof do
  begin
   sheet1.cells[row,1]:=  FDTable1EMP_NO.Value;
   sheet1.cells[row,2]:=  FDTable1FIRST_NAME.Value;
   sheet1.cells[row,3]:=  FDTable1LAST_NAME.Value;
   sheet1.cells[row,4]:=  FDTable1HIRE_DATE.AsString;
   sheet1.cells[row,5]:=  FDTable1DEPT_NO.Value;
   FDTable1.Next;
   row:= row + 1;
  end;
 sheet1.columns.Autofit;
 xml.Visible := true;
 xml.quit;
 xml:= Unassigned;

end;

procedure TfrmMain.btnImportClick(Sender: TObject);
var
  impxml, sheet : variant;
  rows,cols : integer;
  I,j: Integer;
  str : string;
begin
  OpenDialog.Filter := 'Excel Files|*.xls;*.xlsx;*.xlsm';
  OpenDialog.Execute();
  if OpenDialog.FileName <> '' then
  begin
    impxml := CreateOleObject('Excel.Application');
    impxml.workbooks.open(OpenDialog.FileName);
    sheet:= impxml.worksheets[1];
    StringGrid.Cursor := crHourGlass;
    cols := sheet.UsedRange.Columns.Count;
    rows := sheet.UsedRange.Rows.Count;

    for I := 1 to rows  do
    begin
        for j := 1 to cols  do
        begin
          str := sheet.cells[i,j].value;
          StringGrid.Cells[j-1,i-1]:= str;
        end;
    end;
    StringGrid.Cursor := crDefault;
    impxml.quit;
    impxml:= Unassigned;
  end;
end;

end.
