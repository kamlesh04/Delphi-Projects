unit Except_handling;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    txtNum1: TEdit;
    txtNum2: TEdit;
    lblResult: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  results: Currency;
begin
  try
    results:=StrToInt(txtNum1.Text)/ StrToInt(txtNum2.Text);
    lblResult.Caption:=FloatToStr(results);
  except  on E: Exception do
  begin
//  //raise EMathError.Create('Invalid');
    ShowMessage('Error: '+ E.Message);
    lblResult.Caption:='0';

  end;
  end;
end;

end.
