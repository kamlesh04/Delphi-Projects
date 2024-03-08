unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, SpeedButton1;

type
  TForm1 = class(TForm)
    SpeedButton11: TSpeedButton1;
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
  ShowMessage('clicked');
   //ShowMessage(SpeedButton11.SelectedColor);
end;

end.
