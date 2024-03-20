unit CurvyPanel1;

interface

uses
  System.SysUtils, System.Classes, Controls, CurvyControls,Winapi.Messages, Vcl.StdCtrls;

type
  TCurvyPanel1 = class(TCurvyPanel)
  private
    { Private declarations }
    FOnClick: TNotifyEvent;
  protected
    { Protected declarations }
     procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
  public
    { Public declarations }
  published
    { Published declarations }
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TCurvyPanel1]);
end;

{ TCurvyPanel1 }

procedure TCurvyPanel1.MouseUp(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if Button = mbLeft then
    if Assigned(FOnClick) then
      FOnClick(Self);
end;
end.
