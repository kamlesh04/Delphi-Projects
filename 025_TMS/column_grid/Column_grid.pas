unit Column_grid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, AdvCGrid, Vcl.Menus;

type
  TColnGrid = class(TForm)
    AdvColumnGrid1: TAdvColumnGrid;
    ColorDialog1: TColorDialog;
    PopupMenu1: TPopupMenu;
    FontDialog1: TFontDialog;
    Color1: TMenuItem;
    Font1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure AdvColumnGrid1ColumnPopup(Sender: TObject; ACol, ARow: Integer;
      PopupMenu: TPopupMenu);
    procedure Font1Click(Sender: TObject);
  private
    { Private declarations }
    FEditColumn : integer;
  public
    { Public declarations }
  end;

var
  ColnGrid: TColnGrid;

implementation

{$R *.dfm}

procedure TColnGrid.AdvColumnGrid1ColumnPopup(Sender: TObject; ACol,
  ARow: Integer; PopupMenu: TPopupMenu);
begin
  FEditColumn:=ACol;
end;

procedure TColnGrid.Color1Click(Sender: TObject);
begin
  ColorDialog1.Color:=AdvColumnGrid1.Columns.Items[FEditColumn].Color;
  if ColorDialog1.execute then
  begin
    AdvColumnGrid1.Columns.Items[FEditColumn].Color:=ColorDialog1.Color;
  end;
end;

procedure TColnGrid.Font1Click(Sender: TObject);
begin
  FontDialog1.Font:=AdvColumnGrid1.Columns.Items[FEditColumn].font;
  if FontDialog1.execute then
  begin
    AdvColumnGrid1.Columns.Items[FEditColumn].font:=FontDialog1.Font;
  end;
end;

procedure TColnGrid.FormCreate(Sender: TObject);
begin
  AdvColumnGrid1.SaveFixedCells:=false;
  AdvColumnGrid1.LoadFromCSV('cars.csv');
  AdvColumnGrid1.AutoSizeColumns(false,10);
end;

end.
