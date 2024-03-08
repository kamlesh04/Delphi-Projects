unit TmsFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Planner, DBPlanner,DBConnect,
  AdvCustomControl, AdvCustomScrollControl, AdvKanbanBoard, AdvCustomComponent,
  AdvKanbanBoardDatabaseAdapter, AdvGrid, AsgLinks
  ;

type
  TForm3 = class(TForm)
    Planner1: TPlanner;
    AlarmMessage1: TAlarmMessage;
    DBPlanner1: TDBPlanner;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
procedure TForm3.FormCreate(Sender: TObject);
var
  lcaption: string;
  ltext: string;
  lID: string;
  i,lcount: integer;
begin
//Fetching db data
 with DataModule1.ADOQuery1  do begin   Close;
   SQL.Clear;
   SQL.Add('SELECT Subjects,Notes FROM planner_tbl');
   Open;
   lcaption :=fieldbyname ('Subjects').asstring;
   ltext := fieldbyname ('Notes').asstring;
 end;
 //Creating New Item
 with DBPlanner1.CreateItem do
 begin
   ItemBegin:=1;
   ItemEnd:=4;
   ItemPos:=0;
   Shape:=psHexagon;
   Shadow:=True;
   Text.Add(ltext);
   CaptionType := ctText;
   CaptionText := lcaption;
   CaptionFont.Color:=clRed;
   Font.Color:=clBlack;
 end; //Creating Header  with DBPlanner1.Header do begin
   Captions.Add('');
   Captions.Add('Monday');
 end; end;end.
