unit Button1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Graphics,Winapi.windows,Vcl.Buttons;

type
  TButton1 = class(TSpeedButton)
  private
    { Private declarations }
    FCaption : string;
    FColor : array[0..1] of TColor;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor create(Aowner: TComponent);override;
    destructor distroy;
    procedure setCaption(val : string);
    procedure setColor(i: integer;val:Tcolor);
    function getColor(i:integer):TColor;

  published
    { Published declarations }
    property NewCaption : String read FCaption write setCaption;
    property SelCOlor : TColor index 0 read getColor write setColor;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('New_Button', [TButton1]);
end;

{ TButton1 }

constructor TButton1.create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  FCaption:= 'New Button';
  Width:= 70;
  Height := 50;
  SelCOlor := clRed;
end;

destructor TButton1.distroy;
begin
  FreeAndNil(Self);
  inherited;
end;

function TButton1.getColor(i: integer): TColor;
begin
  Result :=FColor[i];
end;

procedure TButton1.Paint;
var
  lrect: TRect;
begin
  inherited Paint;
  lrect := Rect(0,0,Width,Height);
  with Canvas do
  begin
    Brush.Color:= FColor[0];
    FillRect(lrect);
    FrameRect(lrect);
    TextOut((Width div 2 - TextWidth(FCaption) div 2), (Height div 2 - TextHeight(FCaption) div 2), FCaption);
  end;
end;

procedure TButton1.setCaption(val: string);
begin
  FCaption := val;
  Caption:= val;
end;

procedure TButton1.setColor(i: integer; val: Tcolor);
begin
if FColor[i] <> val then
begin
  FColor[i] := val;
  SelCOlor := FColor[i];
  Invalidate;
end;
end;

end.
