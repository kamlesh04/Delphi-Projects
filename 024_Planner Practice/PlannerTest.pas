unit PlannerTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Planner, DBPlanner, Vcl.ExtCtrls,
  PlannerCal, Data.DB, Data.Win.ADODB, DBPlannerCal, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, AdvDBLookupComboBox;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    PlannerCalendar1: TPlannerCalendar;
    DBPlanner1: TDBPlanner;
    DBPlanner2: TDBPlanner;
    Panel2: TPanel;
    DBPlannerCalendar1: TDBPlannerCalendar;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBDaySource1: TDBDaySource;
    ADOQuery1: TADOQuery;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    procedure PlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemMove(Sender: TObject; Item: TPlannerItem; FromBegin,
      FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
    procedure DBPlanner1DragDropItem(Sender, Source: TObject; X, Y: Integer;
      PlannerItem: TPlannerItem);
    procedure DBPlanner1ItemEnter(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemSizing(Sender: TObject; Item: TPlannerItem;
      DeltaBegin, DeltaEnd: Integer; var Allow: Boolean);
    procedure DBPlanner1ItemText(Sender: TObject; PlannerItem: TPlannerItem;
      var Text: string);
    procedure DBPlanner2ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner2ItemRightClick(Sender: TObject; Item: TPlannerItem);
    procedure DBPlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure FormCreate(Sender: TObject);
    procedure DBPlanner2DragDropItem(Sender, Source: TObject; X, Y: Integer;
      PlannerItem: TPlannerItem);
    procedure DBPlanner2Enter(Sender: TObject);
    procedure DBPlanner2ItemMove(Sender: TObject; Item: TPlannerItem; FromBegin,
      FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
  private
    { Private declarations }
    FSelDate :TDateTime;
    FDate :TDateTime;
    procedure SavePlanner;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.DBPlanner1DragDropItem(Sender, Source: TObject; X, Y: Integer;
  PlannerItem: TPlannerItem);
begin
  SavePlanner;
end;

procedure TForm3.DBPlanner1ItemEnter(Sender: TObject; Item: TPlannerItem);
begin
  SavePlanner;
end;

procedure TForm3.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with  (Sender as TDBPlanner).CreateItemAtSelection do
  begin
     CaptionText:='New Item';
     CaptionType:=TCaptionType.ctText;
     Update;
  end;
  SavePlanner;
end;

procedure TForm3.DBPlanner1ItemMove(Sender: TObject; Item: TPlannerItem;
  FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
begin
  SavePlanner;
end;

procedure TForm3.DBPlanner1ItemSizing(Sender: TObject; Item: TPlannerItem;
  DeltaBegin, DeltaEnd: Integer; var Allow: Boolean);
begin
  //SavePlanner;
end;

procedure TForm3.DBPlanner1ItemText(Sender: TObject; PlannerItem: TPlannerItem;
  var Text: string);
begin
  SavePlanner;
end;

procedure TForm3.DBPlanner2DragDropItem(Sender, Source: TObject; X, Y: Integer;
  PlannerItem: TPlannerItem);
begin
   DBPlanner2.Update;
end;

procedure TForm3.DBPlanner2Enter(Sender: TObject);
begin
   DBPlanner2.Update;
end;

procedure TForm3.DBPlanner2ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
var
  lid: integer;
begin
  with (sender as TDBPlanner).CreateItemAtSelection  do
  begin
    CaptionText:='New Item';
    update;
   // DBPlanner2.Items.hea
  with ADOQuery1 do
  begin
    //fetch record
    Close;
    SQL.Clear;
    SQL.Add('SELECT ID,NOTES,SUBJECT,PLANNERKEY,STARTTIME,ENDTIME FROM dbplanner_tbl a order by ID desc limit 1');
    Open;
    lid := fieldbyname ('ID').AsInteger;
    //inset into
    Close;
    SQL.Clear;
    SQL.Text:='update dbplanner_tbl set Schedule_Date ='+
    ':date where ID=:ID';
    Parameters.ParamByName('date').Value:=FormatDateTime('yyyymmdd',FDate);
    Parameters.ParamByName('ID').Value:=ID;
    ExecSQL;
    Close;
  end;
  end;
end;

procedure TForm3.DBPlanner2ItemMove(Sender: TObject; Item: TPlannerItem;
  FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
begin
   DBPlanner2.Update;
end;

procedure TForm3.DBPlanner2ItemRightClick(Sender: TObject; Item: TPlannerItem);
var
  lst: String;
begin
  lst:=Item.CaptionText;
  if InputQuery('Title','New Item',lst) then
  begin
    Item.CaptionText:=lst;
    Item.Update;
  end;

end;

procedure TForm3.DBPlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  FDate:=SelDate;
  with ADOQuery1 do
  begin
    //fetch record
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM dbplanner_tbl where Schedule_Date=:date');
    Parameters.ParamByName('date').Value:=FormatDateTime('yyyymmdd',FDate);
    Open;
  end;
  //ShowMessage(FormatDateTime('yyyymmdd',seldate));
  DBDaySource1.DataSource:=DataSource2;
  ADOQuery1.Active:=false;
  ADOQuery1.Active:=true;
  DBPlanner2.Refresh;
  DBPlanner2.Update;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  FDate:=now;
end;

procedure TForm3.PlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
var
  filename : String;
begin
  FSelDate:=SelDate;
  filename:=FormatDateTime('yyyymmdd',SelDate)+'.PLA';
  if FileExists(filename) then
    DBPlanner1.LoadFromFile(filename);
end;

procedure TForm3.SavePlanner;
var
  filename : String;
begin
  filename:=FormatDateTime('yyyymmdd',FSelDate)+'.PLA';
  DBPlanner1.saveToFile(filename);
end;

end.
