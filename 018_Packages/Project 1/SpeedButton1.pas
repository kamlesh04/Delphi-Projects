unit SpeedButton1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Buttons,
  Windows, Messages, Graphics, Forms, Dialogs;

type
  TSpeedButton1 = class(TSpeedButton)
  private
    { Private declarations }
    FCaption :String;
    FColors:array[0..1] of TColor;
  protected
    { Protected declarations }
     procedure Paint; override;
  public
    { Public declarations }
    constructor create(Aowner : TComponent); override;
    destructor distroy;
    procedure setCaption(value: String);
    procedure SetColor(Index:Integer; Value:TColor);
    function  GetColor(Index:Integer):TColor;
  published
    { Published declarations }
    property CaptionNew :string read FCaption write setCaption;
    property SelectedColor :TColor index 0 read GetColor write SetColor;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('My_Palette', [TSpeedButton1]);
end;

constructor TSpeedButton1.create(Aowner : TComponent);
begin
  inherited  create(Aowner);
   FCaption:='My Button';
   SelectedColor:=clWhite;
   Width:=105;
   height:=25;
end;

procedure TSpeedButton1.setCaption(value: String);
begin
  FCaption:=value;
  Caption:= FCaption;
end;

procedure TSpeedButton1.SetColor(Index:Integer; Value:TColor);
begin
 if FColors[Index]<>Value then
 begin
  FColors[Index]:=Value;
  SelectedColor:= FColors[Index];
  Invalidate;
 end;
end;

destructor TSpeedButton1.distroy;
begin
  FreeAndNil(self);
  inherited;
end;

function TSpeedButton1.GetColor(Index:Integer):TColor;
begin
 result:=FColors[Index];
end;

procedure TSpeedButton1.Paint;
var
 LRect:TRect;
begin
  inherited Paint;
  LRect:=Rect(0,0,Width,Height);
  with Canvas do
  begin
  Brush.Color:=FColors[0];
  FillRect(LRect);
  FrameRect(LRect);
  TextOut((width div 2 -TextWidth(FCaption) div 2),(height div 2 -Textheight(FCaption) div 2),FCaption);
 end;
end;
end.
