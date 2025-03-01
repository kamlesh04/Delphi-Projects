unit Panel1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls,System.Types, Windows;

type
  TPanel1 = class(TPanel)
  private
    { Private declarations }
    FEdgeRadius: Integer;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property EdgeRadius: Integer read FEdgeRadius write FEdgeRadius;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TPanel1]);
end;

{ TPanel1 }

constructor TPanel1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEdgeRadius := 5;

end;

procedure TPanel1.Paint;
var
  R: TRect;
  Region: HRGN;
begin
  inherited Paint;
  R := ClientRect;
  Canvas.Brush.Color := Color;
  with Canvas do
  begin
  RoundRect(10, 10, 100, 100, 20, 20);
  end;

  //Region := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, FEdgeRadius, FEdgeRadius);
//  try
//  SetWindowRgn(Handle, Region, True);
//  finally
//  DeleteObject(Region);
//  end;

end;




end.
