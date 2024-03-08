unit Button2;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls,Vcl.ExtCtrls,
  vcl.Graphics,Winapi.Windows;

type
  TButton2 = class(TButton)
  procedure NewButton(Color: String);
  private
    { Private declarations }
    FMainPanel,FPanel :TPanel;
    FMainLabel: TLabel;
    FMainShape : TShape;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

  var
  Button21:TButton2;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('My_Palette', [TButton2]);
end;

procedure TButton2.NewButton(Color: String);
begin
  FMainPanel := TPanel.Create(Self);
  FMainShape := TShape.Create(self);
  FPanel := TPanel.Create(self);
  FMainLabel := TLabel.Create(self);
  with FMainPanel do
  begin
    Parent := Self;
    ParentColor := false;
    ParentBackground := false;
    BevelOuter := bvNone;
    Color := clWhite;
    Width := 57;
    Height := 25;
    Top := 50;
    Left := 20;
    Visible := true;
  end;
   with FMainShape do
  begin
    Parent := FMainPanel;
    Align := alClient;
    Brush.Style := bsClear;
    Brush.Color := RGB(122,136,201);
    Pen.Color := clWhite;
    Pen.Style := psSolid;
    Pen.Width := 3;
  end;
  with FPanel do
  begin
    Parent := FMainPanel;
    ParentBackground := false;
    ParentColor := false;
    BevelOuter := bvNone;
    Color := clWhite;
    Cursor := crHandPoint;
    Width := 23;
    Height := 13;
    Top := 6;
    Left := 28;
   // LevaPulsante.OnClick := SwitchState;
  end;
end;
end.
