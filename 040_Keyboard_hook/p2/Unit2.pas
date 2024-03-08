unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  PDW = ^DWORD;
var
  Form2: TForm2;

  pbase : PDW;
  p : PDW;
  map : TBitmap;
  x,y,tx,ty,timer,count,tempx,tempy: integer;
  gHook : HHOOK;

  function callback(i:integer; w:Word; l:LongInt): LongInt;stdcall;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  map := TBitmap.Create;
  map.PixelFormat := pf32bit;
  map.Width :=33;
  map.Height := 33;
  x:=31;
  y := 31;
  count :=0;
  tempx := 20;
  tempy :=20;
  gHook:= SetWindowsHookEx(WH_KEYBOARD,@callback,HInstance,GetCurrentThreadId());
end;


procedure TForm2.FormDestroy(Sender: TObject);
begin
  UnhookWindowsHookEx(gHook);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  map.Free;
  map:= nil;
  map := TBitmap.Create;
  map.PixelFormat := pf32bit;
  map.Width :=33;
  map.Height := 33;
//  x := x+1;
//  y := 32;
  tx := 10;
  ty := 10;
  if x = 33 then x:= 0;
  if x < 0 then x := 33;
  if y = 33 then y:= 0;
  if y < 0 then y:= 33;
  if (x=tx) and (y=ty) then
  begin
    tx := Random(33);
    ty := Random(33);
    pbase := map.ScanLine[ty];
    p := PDW(DWORD(pbase) + (tx shl 2));
    p^ := $ff00ff;
  end
  else begin
    pbase := map.ScanLine[y];
    p := PDW(DWORD(pbase) + (x shl 2));
    p^ := $0;
  end;

  canvas.StretchDraw(rect(0,0,ClientWidth, ClientHeight), map);
end;

function callback(i:integer; w:Word; l:LongInt): LongInt;stdcall;
begin
  case w of
  VK_UP : begin
         //x := x -1 ;
         y := y-1;
  end;
    VK_DOWN : begin
        y := y+1;
  end;
    VK_LEFT : begin
      x := x-1;

  end;
    VK_RIGHT : begin
      x := x+1;

  end;
  end;
    map.Free;
  map:= nil;
  map := TBitmap.Create;
  map.PixelFormat := pf32bit;
  map.Width :=33;
  map.Height := 33;
//  x := x+1;
//  y := 32;
  if x > 32 then x:= 0
  else if x < 0 then x := 32;
  if y > 32 then y:= 0
  else if y < 0 then y:= 32;

  if (x=tx) and (y=ty) then
  begin
    count := count + 1;
    for I := 0 to count do
    begin
      pbase := map.ScanLine[y];
      p := PDW(DWORD(pbase) + (x shl 2));
      p^ := $ff0000;
    end;
    tempx := Random(33);
    tempy := Random(33);
  end
  else begin
    pbase := map.ScanLine[y];
    p := PDW(DWORD(pbase) + (x shl 2));
    p^ := $0;
    for I := 0 to count do
    begin
      pbase := map.ScanLine[y+1];
      p := PDW(DWORD(pbase) + (x+1 shl 2));
      p^ := $ff0000;
    end;
  end;
  tx := tempx;
  ty := tempy;
  pbase := map.ScanLine[ty];
  p := PDW(DWORD(pbase) + (tx shl 2));
  p^ := $ff00ff;
  Form2.Canvas.StretchDraw(rect(0,0,Form2.ClientWidth, Form2.ClientHeight), map);
end;

end.
