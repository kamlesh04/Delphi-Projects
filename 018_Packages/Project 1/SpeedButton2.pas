unit SpeedButton2;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Buttons,
  Windows, Messages, Graphics, Forms, Dialogs;

type
  TSpeedButton2 = class(TSpeedButton)

private
    FDialog:Boolean;
    FColors:array[0..1] of TColor;
    procedure SetColor(Index:Integer; Value:TColor);
    function  GetColor(Index:Integer):TColor;
  protected
    procedure Paint; override;
    procedure Click; override;
  public
    { Public declarations }
  published
    property Dialog:Boolean read FDialog write FDialog;
    property SelectedColor:TColor index 0 read GetColor write SetColor;
    property BorderColor:TColor index 1 read GetColor write SetColor;
  end;
procedure Register;
implementation
procedure TSpeedButton2.Click;
begin
 if FDialog then
 with TColorDialog.Create(Self) do
 try
  Color:=FColors[0];
  if Execute then SelectedColor:=Color;
 finally
  Free;
 end
 else
 inherited Click;
end;
procedure TSpeedButton2.Paint;
var
 ARect:TRect;
begin
 inherited Paint; // Just to maintain property "Flat"
 ARect:=Rect(0,0,Width,Height);
 InflateRect(ARect,-2,-2);
 with Canvas do
 begin
  Brush.Color:=FColors[0];
  FillRect(ARect);
  Brush.Color:=FColors[1];
  FrameRect(ARect);
 end;
end;
procedure TSpeedButton2.SetColor(Index:Integer; Value:TColor);
begin
 if FColors[Index]<>Value then
 begin
  FColors[Index]:=Value;
  Invalidate;
 end;
end;
function TSpeedButton2.GetColor(Index:Integer):TColor;
begin
 result:=FColors[Index];
end;

procedure Register;
begin
  RegisterComponents('Samples', [TSpeedButton2]);
end;
end.
