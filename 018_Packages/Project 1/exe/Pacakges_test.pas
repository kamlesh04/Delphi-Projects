unit Pacakges_test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, SpeedButton1
   ;

type
  TForm3 = class(TForm)
    SpeedButton11: TSpeedButton1;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);

  private
    procedure MyButton;
    procedure cClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  MyButton;
end;

procedure TForm3.cClick(Sender: TObject);
begin
  ShowMessage('clicked runtime button');
end;

procedure TForm3.MyButton;
var
  C: TSpeedButton1;
begin
  C := TSpeedButton1.Create(nil);
  c.Left:=120;
  c.Top:=50;
  C.Width := 105;
  C.Height := 25;
  C.Visible := True;
  C.Parent := Self;
  c.SelectedColor:=clRed;
  c.CaptionNew:='Run Time';
  c.OnClick:=cClick;
end;

procedure TForm3.SpeedButton11Click(Sender: TObject);
begin
  ShowMessage('clicked design time button');
end;

end.
