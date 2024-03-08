unit MathsFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  CurvyControls, W7Labels;

type
  TForm3 = class(TForm)
    pnlMain: TCurvyPanel;
    btnCal: TButton;
    txtVal1: TDBAdvEdit;
    txtVal2: TDBAdvEdit;
    lblResults: TW7ActiveLabel;
    procedure btnCalClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function calculate_sum(a,b:double):double;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnCalClick(Sender: TObject);
begin
  calculate_sum(txtVal1.Text.ToDouble,txtVal2.Text.ToDouble);
end;

function TForm3.calculate_sum(a, b: double): double;
begin
  result:=a + b ;
  lblResults.Caption:=FloatToStr(result);
end;

end.
