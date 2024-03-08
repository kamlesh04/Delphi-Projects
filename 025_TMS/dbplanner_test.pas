unit dbplanner_test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Planner,
  DBPlanner, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, PlannerCal,
  Vcl.StdCtrls, Lucombo, dblucomb, PlannerMonthView, DBPlannerMonthView,
  DBPlannerCal, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AdvGlowButton,
  System.ImageList, Vcl.ImgList, AdvCustomControl, AdvWebBrowser, mswheel,
  AdvShaper, System.Sensors, System.Sensors.Components, AdvMetroTaskDialog,
  W7Buttons, W7Classes, W7Bars, AdvMetroScrollBox, W7ProgressBars, AdvMetroTile,
  AdvNavBar, DBAdvNavigator, DBAdvGlowNavigator, AdvMemo, AdvmWS,
  GDIPButtonItem, GDIPImageTextButtonItem, GDIPDropDownItem, GDIPTextItem,
  GDIPImageTextItem, GDIPGraphicItem, GDIPCheckItem, GDIPRadioItem,
  GDIPCustomItem, GDIPButtonBarItem, CustomItemsContainer, AdvPolyList,
  GDIPSectionItem, GDIPImageSectionItem, GDIPGroupItem, Vcl.Menus, AdvMenus,
  cxImageList, cxGraphics,NewForm, Vcl.ToolWin, AdvToolBar, AdvCombo,
  Vcl.DBCtrls, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, AdvDBComboBox, AdvStickyPopupMenu;

type
  TPlannerFm = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBPlanner1: TDBPlanner;
    DBGrid1: TDBGrid;
    DBDaySource1: TDBDaySource;
    Panel2: TPanel;
    lblSel: TLabel;
    lblEnt: TLabel;
    lblEvnt: TLabel;
    txtSel: TEdit;
    DBMonthView: TTabSheet;
    DBPlannerMonthView1: TDBPlannerMonthView;
    DBPlannerCalendar1: TDBPlannerCalendar;
    AdvGrid: TTabSheet;
    pnlCal: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    lblFrom: TLabel;
    lblTo: TLabel;
    btnCreate: TAdvGlowButton;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBAdvGrid1: TDBAdvGrid;
    TabSheet3: TTabSheet;
    AdvWebBrowser1: TAdvWebBrowser;
    TabSheet4: TTabSheet;
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvNavBarPanel2: TAdvNavBarPanel;
    AdvPolyMenu1: TAdvPolyMenu;
    //ButtonBarItem2: TButtonBarItem;
    //ButtonBarItem3: TButtonBarItem;
    RadioItem1: TRadioItem;
    CheckItem1: TCheckItem;
    DropDownItem1: TDropDownItem;
    ButtonItem1: TButtonItem;
   ButtonBarItem4: TButtonBarItem;
//    ButtonBarItem5: TButtonBarItem;
//    ButtonBarItem6: TButtonBarItem;
//    ButtonBarItem7: TButtonBarItem;
//    ButtonBarItem8: TButtonBarItem;
//    ButtonBarItem9: TButtonBarItem;
    GroupItem1: TGroupItem;
    AdvMainMenu1: TAdvMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    Help1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Print1: TMenuItem;
    Exit1: TMenuItem;
    Undo1: TMenuItem;
    Redu1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    help2: TMenuItem;
    About1: TMenuItem;
    MoreDetails1: TMenuItem;
    N1: TMenuItem;
    cxImageList1: TcxImageList;
    AdvMenuStyler1: TAdvMenuStyler;
    OpenDialog1: TOpenDialog;
    AdvToolBar1: TAdvToolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    AdvComboBox1: TAdvComboBox;
    ToolButton3: TToolButton;
    Edit2: TEdit;
    ToolButton6: TToolButton;
    AdvGlowButton1: TAdvGlowButton;
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlanner1ItemRightClick(Sender: TObject; Item: TPlannerItem);
    procedure FormCreate(Sender: TObject);
    procedure DBPlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure DBPlannerCalendar1AllDaySelect(Sender: TObject);
    procedure DBPlanner1ItemText(Sender: TObject; PlannerItem: TPlannerItem;
      var Text: string);
    procedure btnCreateClick(Sender: TObject);
    procedure DBPlannerMonthView1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlannerMonthView1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlannerMonthView1ItemRightClick(Sender: TObject;
      Item: TPlannerItem);
    procedure Open1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvComboBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ComboBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure DBPlanner2ItemRightClick(Sender: TObject; Item: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlannerFm: TPlannerFm;

implementation

{$R *.dfm}


procedure TPlannerFm.AdvComboBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  with AdvComboBox1.Canvas do begin
    if AdvComboBox1.Items[Index] = 'run' then
    begin
    Font.Color := clRed;
    end
    else
    Font.Color := clGreen;
    Brush.Color := clWindow;

    TextOut(Rect.Left, Rect.Top, AdvComboBox1.Items[Index]);

  end;


end;

procedure TPlannerFm.AdvGlowButton1Click(Sender: TObject);
begin
 AdvComboBox1.Items.Add(Edit2.Text);
end;

procedure TPlannerFm.btnCreateClick(Sender: TObject);
begin
  with DBPlannerMonthView1.CreateItem do
  begin
    ItemStartTime := DateTimePicker1.Date;
    ItemEndTime := DateTimePicker2.Date;
    CaptionText:='New Item';
    CaptionBkg:=clWebOrangeRed;
    Color:=clGreen;
    ColorTo:=clYellow;
    Update;
    ADOTable2.Active:=false;
    ADOTable2.Active:=True;
  end;
end;



procedure TPlannerFm.ComboBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  Canvas.FillRect(Rect);
  if AdvComboBox1.Items[Index] = 'Run' then
  begin
    Canvas.Brush.Color:=clRed;
    Canvas.Font.Color := clRed;
    Canvas.Font.Size:=10;
    Edit2.Font.Color := clRed;
  end
  else
  begin
    Canvas.Font.Color := clWindowText;
    Edit2.Font.Color := clWindowText;
  end;
  Canvas.TextOut(1,1, AdvComboBox1.Items[Index]);
  //Canvas.TextOut(Rect.Left, Rect.Top, AdvComboBox1.Items[Index]);
  //Canvas.TextOut((width div 2 -Canvas.TextWidth(AdvComboBox1.Items[Index]) div 2),(height div 2 -Canvas.Textheight(AdvComboBox1.Items[Index]) div 2),AdvComboBox1.Items[Index]);
  Edit2.Text:=AdvComboBox1.Items[Index];
end;

procedure TPlannerFm.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  (Sender as TDBPlanner).FreeItem(Item);
end;

procedure TPlannerFm.DBPlanner1ItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with  (Sender as TDBPlanner).CreateItemAtSelection do
  begin
     CaptionText:='New Item';
     CaptionType:=TCaptionType.ctText;
     Update;
  end;
end;

procedure TPlannerFm.DBPlanner1ItemRightClick(Sender: TObject; Item: TPlannerItem);
var
  s :string;
begin
s:= Item.CaptionText;
if InputQuery('Title','New Title',s) then
begin
  Item.CaptionText:=s;
  Item.Update;
end;

end;

procedure TPlannerFm.DBPlanner1ItemText(Sender: TObject;
  PlannerItem: TPlannerItem; var Text: string);
begin
update;
end;

procedure TPlannerFm.DBPlanner2ItemRightClick(Sender: TObject;
  Item: TPlannerItem);
begin
 // DBPlanner2.ItemPopup:=PopupMenu1;
end;

procedure TPlannerFm.DBPlannerCalendar1AllDaySelect(Sender: TObject);
begin
  with  (Sender as TDBPlanner).CreateItemAtSelection do
  begin
     CaptionText:='New Item';
     CaptionType:=TCaptionType.ctText;
     DayOfWeek(now);
     Update;
  end;
end;

procedure TPlannerFm.DBPlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
var
  i : integer;
  ldate:TArray<String>;
  ldatestr:String;
  levent : Boolean;
begin
  levent:=false;
  txtSel.Text:=DateTimeToStr(SelDate);
  for i := 0 to DBPlannerCalendar1.Events.Count-1 do
  begin
    ldatestr := DateTimeToStr(DBPlannerCalendar1.Events.Items[i].Date);
    ldate:= ldatestr.Split([' ']);
    if ldate[0]=DateTimeToStr(SelDate) then
    begin
      lblEvnt.Caption:= DBPlannerCalendar1.Events.Items[i].Hint;
      levent:=true;
    end;
  end;
  if levent=false then
     lblEvnt.Caption:='-';
  //lblEvnt.Caption:=DBPlanner1.Items.Items[0].CaptionText;
end;

procedure TPlannerFm.DBPlannerMonthView1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);
end;

procedure TPlannerFm.DBPlannerMonthView1ItemRightClick(Sender: TObject;
  Item: TPlannerItem);
var
  s: string;
begin
  s:=item.CaptionText;
  if InputQuery('Title','New Item',s) then
    Item.CaptionText:=s;
    item.Update;

end;

procedure TPlannerFm.DBPlannerMonthView1ItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  FIelds.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  FIelds.FieldByName('Flag').AsInteger := Integer(1);
end;

procedure TPlannerFm.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TPlannerFm.FormCreate(Sender: TObject);
begin
  ADOTable1.Active:=True;
  ADOTable2.Active:=True;
  with DBPlannerCalendar1.Events.Add do
  begin
    Date := now-5;
    Hint := 'Meeting';
    FontColor := ClBlue;
    Color := clRed;
    Shape := PlannerCal.TEventShape.evsCircle;

  end;

  with DBPlannerCalendar1.Events.Add do
  begin
    Date := now-1;
    Hint := 'Birthday';
    Color := clGreen;
    Shape := PlannerCal.TEventShape.evsRectangle;
  end;

end;
procedure TPlannerFm.Open1Click(Sender: TObject);
var
  FileName : string;
begin
  OpenDialog1.Filter:='Photos Only |*.png*;*.jpg*;*.jpeg';
  if OpenDialog1.Execute then
  FileName:= OpenDialog1.FileName;
  MainFm:=TMainFm.Create(Application);
  if FileExists(FileName) then
  begin
    MainFm.Show;
    MainFm.Image1.Picture.LoadFromFile(FileName);
  end;
end;

procedure TPlannerFm.ToolButton5Click(Sender: TObject);
begin
   Application.Terminate;
end;
end.
