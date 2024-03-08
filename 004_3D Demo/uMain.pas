unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Objects3D, FMX.Controls3D, FMX.Viewport3D,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Types3D,system.Math;

type
  Tfrm3DMain = class(TForm)
    ToolBar: TToolBar;
    Viewport3D: TViewport3D;
    DummyX: TDummy;
    DummyY: TDummy;
    CameraMain: TCamera;
    Light: TLight;
    StrokeCube: TStrokeCube;
    procedure Viewport3DMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure Viewport3DMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    { Public declarations }
    View : TPoint3D;
  end;

var
  frm3DMain: Tfrm3DMain;

implementation

{$R *.fmx}

procedure Tfrm3DMain.Viewport3DMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if ssLeft in Shift then
    View := DummyX.RotationAngle.Point + TPoint3D.Create(Y, -X, 0.5*(y-x));
end;

procedure Tfrm3DMain.Viewport3DMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
begin
  if ssLeft in Shift then
    DummyX.RotationAngle.Point:= View - TPoint3D.Create(Y, -X, 0.5*(y-x));
end;

end.
