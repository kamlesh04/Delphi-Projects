unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure MoveControl(AControl: TControl; const X, Y: Integer);
  end;

var
  Form2: TForm2;

  KBHook: HHook; {this intercepts keyboard input}
   cx, cy,count : integer; {track battle ship's position}
   flag : boolean;
     {callback's declaration}
   function KeyboardHookProc(Code: Integer; WordParam: Word; LongParam: LongInt): LongInt; stdcall;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
    {Set the keyboard hook so we  can intercept keyboard input}
  KBHook:=SetWindowsHookEx(WH_KEYBOARD,
            {callback >} @KeyboardHookProc,
                           HInstance,
                           GetCurrentThreadId()) ;

  {place the battle ship in  the middle of the screen}
  cx := Image1.ClientWidth div 2;
  cy := Image1.ClientHeight div 2;

  Image1.Canvas.PenPos := Point(cx,cy) ;
  count := 20;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
     {unhook the keyboard interception}
   UnHookWindowsHookEx(KBHook) ;
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    if ssLeft in Shift then // only move it when Left-click is down
      MoveControl(Sender as TControl, X, Y);
end;

function KeyboardHookProc(Code: Integer; WordParam: Word; LongParam: LongInt) : LongInt;
 begin
  case WordParam of
   vk_Space: {erase battle ship's path}
    begin
     with Form2.Image1.Canvas do
     begin
      Brush.Color := clWhite;
      Brush.Style := bsSolid;
      Fillrect(Form2.Image1.ClientRect) ;
     end;
    end;
   vk_Right: cx := cx+1;
   vk_Left: cx := cx-1;
   vk_Up: cy := cy-1;
   vk_Down: cy := cy+1;
  end; {case}

  If cx < 2 then cx := Form2.Image1.ClientWidth-2;
  If cx > Form2.Image1.ClientWidth -2 then cx := 2;
  If cy < 2 then cy := Form2.Image1.ClientHeight -2 ;
  If cy > Form2.Image1.ClientHeight-2 then cy := 2;

  with Form2.Image1.Canvas do
  begin
   Pen.Color := clRed;
   Brush.Color := clYellow;
   //TextOut(0,0,Format('%d, %d',[cx,cy])) ;
   Rectangle(cx-2, cy-2, cx+20,cy+20) ;
      for var I := 0 to 5 do
   Rectangle(cx+count, cy-2, cx+count+count,cy+20);
   count := count+20;
  end;

  Result:=0;
 {To prevent Windows from passing the keystrokes  to the target window, the Result value must  be a nonzero value.}
 end ;

 procedure TForm2.MoveControl(AControl: TControl; const X, Y: Integer);
var
  lPoint: TPoint;
begin

  lPoint := AControl.Parent.ScreenToClient(AControl.ClientToScreen(Point(X, Y)));
  cx := X ;//- AControl.Width div 2;
  cy := Y ;//- AControl.Height div 2;
  cx := cx+1;
  If cx < 2 then cx := Form2.Image1.ClientWidth-2;
  If cx > Form2.Image1.ClientWidth -2 then cx := 2;
  If cy < 2 then cy := Form2.Image1.ClientHeight -2 ;
  If cy > Form2.Image1.ClientHeight-2 then cy := 2;

  with Form2.Image1.Canvas do
  begin
  if not Flag then begin
   Pen.Color := clRed;
   Brush.Color := clYellow;
   end
  else begin
    Pen.Color := clWhite;
   Brush.Color := clWhite;
  end;
   //TextOut(0,0,Format('%d, %d',[cx,cy])) ;
   Rectangle(cx-2, cy-2, cx+20,cy+20) ;
   //Rectangle(cx+20, cy-2, cx+40,cy+20);
   for var I := 0 to 3 do
   Rectangle(cx+count, cy-2, cx+count+20,cy+20);
   count := count+20;
  end;
  count := 20;
end;


procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  flag := true;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
    flag := false;
end;

end.
