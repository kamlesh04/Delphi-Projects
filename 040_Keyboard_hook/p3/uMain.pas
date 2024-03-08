unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    imgMain: TImage;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  ghook : HHOOK;
  x,y,i,j : integer;


  function test(a:integer;atest:word;aa:LongInt):LongInt;stdcall;

implementation

function test(a:integer;atest:word;aa:LongInt):LongInt;
var
  rec : TRect;
  curr, target,k: integer;
begin
 case atest of
  VK_UP :begin
            y:= y-2;
//            with form2.imgMain.Canvas do
//            begin
//               pen.Color:= clRed;
//              //Rectangle(x-5,y-5,x+5,y+5);
//                Brush.Color := clWhite;
//                Brush.Style := bsSolid;
//                Fillrect(Form2.imgMain.ClientRect) ;
//                //Rectangle(10,10,20,20);
//                for k := 0 to 5 do
//                 begin
//                   i:= i+11;
//                   if j= 0 then
//                     j:= 21
//                  else
//                     j:= j+ 11;
//                  Rectangle(x+ i,y,x+ j,y+10);
//                 end;
//            end;
  end;
  VK_DOWN : y:= y+2;
  VK_LEFT : begin
            x:= x-2;
            with frmMain.imgMain.Canvas do
            begin
               pen.Color:= clRed;
              //Rectangle(x-5,y-5,x+5,y+5);
                Brush.Color := clWhite;
                Brush.Style := bsSolid;
                Fillrect(frmMain.imgMain.ClientRect) ;
                //Rectangle(10,10,20,20);
                for k := 0 to 5 do
                 begin
                   i:= x+11;
                   if j= 0 then
                     j:= 21
                  else
                     j:= x+ 11;
                  Rectangle(x- i,y,x- j,y+10);
                 end;
            end;
            end;
  VK_RIGHT : x:= x+2;
  end;

  if x < 2 then x:= frmMain.imgMain.ClientWidth- 2;
  if x > frmMain.imgMain.ClientWidth then x:= 2;
  if y < 2 then y:= frmMain.imgMain.ClientHeight- 2;
  if y > frmMain.imgMain.ClientHeight  then y:= 2;
  with frmMain.imgMain.Canvas do
  begin
    pen.Color:= clRed;
    //Rectangle(x-5,y-5,x+5,y+5);
    Brush.Color := clWhite;
    Brush.Style := bsSolid;
    Fillrect(frmMain.imgMain.ClientRect) ;
    //Rectangle(x,y,x+10,y+10);
    //if x =10 then
    //begin
    for k := 0 to 1 do
    begin
      i:= i+11;
      if j= 0 then
        j:= 21
      else
        j:= j+ 11;
      Rectangle(x+ i,y,x+ j,y+10);
      //Rectangle(x+22,y,x+32,y+10);
    //end;
    end;
//   Rectangle(x+22,y,x+32,y+10);
    Rectangle(x+ 11,y,x+ 21 ,y+10);
   Rectangle(10,10,20,20);
    curr:= x+y;
    target:= 39;
      if curr = target then
      Brush.Color := clRed;
  end;

end;

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ghook:= SetWindowsHookEx(WH_KEYBOARD,@test,HInstance,GetCurrentThreadId());
  x:= imgMain.ClientWidth div 2;
  y:= imgMain.ClientHeight div 2;
  imgMain.Canvas.PenPos:=Point(x,y);
  i:=0;
  j:=0;

end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  UnhookWindowsHookEx(ghook);
end;

end.
