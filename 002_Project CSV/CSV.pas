unit CSV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TCsvFM = class(TForm)
    grdCities: TStringGrid;
    btnLoad: TButton;
    btnClear: TButton;
    btnSave: TButton;
    procedure btnLoadClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure grdCitiesClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsvFM: TCsvFM;
  gselectedFile: string;

implementation

{$R *.dfm}

procedure TCsvFM.btnClearClick(Sender: TObject);
var
  i:integer;
begin
  gselectedFile := '';
  for i := 0 to grdCities.ColCount-1 do
    grdCities.Cols[i].Clear;
end;

procedure TCsvFM.btnLoadClick(Sender: TObject);
var
  lFileStrings:TStringList;
  lRowStrings:TStringList;
  i:integer;
  ldlg: TOpenDialog;
begin
  lFileStrings := TStringList.Create;
  lRowStrings := TStringList.Create;
  gselectedFile := '';
  ldlg := TOpenDialog.Create(nil);
  try
   ldlg.InitialDir := 'C:\';
   ldlg.Filter := 'CSV files (*.csv*)|*.csv*';

   if ldlg.Execute(Handle) then
    gselectedFile := ldlg.FileName;

   if gselectedFile <> '' then
   begin
    lFileStrings.LoadFromFile(gselectedFile);
    grdCities.RowCount := lFileStrings.Count;

    for i := 0 to lFileStrings.Count -1  do
    begin
      lRowStrings.Clear;
      lRowStrings.CommaText := lFileStrings[i];
      if lRowStrings.Count > grdCities.ColCount then
      begin
        grdCities.ColCount := lRowStrings.Count;
        grdCities.Rows[i].Assign(lRowStrings);
        grdCities.FixedCols:=0;
      end;
    end;
   end
   else
      for i := 0 to lFileStrings.Count -1  do
      begin
        grdCities.ColCount := lRowStrings.Count;
        grdCities.Rows[i].Assign(lRowStrings);
        grdCities.FixedCols:=0;
      end;
  finally
    lFileStrings.Free;
    lRowStrings.Free;
    ldlg.Free;
  end;
end;

procedure TCsvFM.btnSaveClick(Sender: TObject);
var
  CSV: TStrings;
  i: Integer;
  ldlg: TSaveDialog;
begin
  CSV := TStringList.Create;
  ldlg := TSaveDialog.Create(nil);
  Try
    if gselectedFile <> '' then
      begin
        For i := 0 To grdCities.RowCount - 1 Do
          CSV.Add(grdCities.Rows[i].CommaText);
          CSV.SaveToFile(gselectedFile);
          ShowMessage('Data Saved Successfully!');
       end
     else
     begin
      For i := 0 To grdCities.RowCount - 1 Do
      begin
        CSV.Add(grdCities.Rows[i].CommaText);
      end;
      ldlg.InitialDir := 'C:\';
      ldlg.Filter := 'CSV files (*.csv*)|*.csv*';
      if ldlg.Execute(Handle) then
      begin
        CSV.SaveToFile(ldlg.FileName+'.csv');
        ShowMessage('Data Exported Successfully!');
      end;
    end;

  Finally
    CSV.Free;
  end;
end;

procedure TCsvFM.grdCitiesClick(Sender: TObject);
begin
  grdCities.Options := grdCities.Options + [goEditing];
  grdCities.FixedCols:=0;
end;


end.
