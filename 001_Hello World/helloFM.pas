unit helloFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw;

type
  THelloForm = class(TForm)
    btnHello: TButton;
    chkTerms: TCheckBox;
    strName: TStaticText;
    lblName: TLabel;
    txtName: TEdit;
    rdlMale: TRadioButton;
    ba: TImage;
    strText: TStaticText;
    rdlFemale: TRadioButton;
    lblEmail: TLabel;
    txtEmail: TEdit;
    lblTerms: TLabel;
    procedure btnHelloClick(Sender: TObject);
    procedure lblTermsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HelloForm: THelloForm;

implementation

{$R *.dfm}

procedure THelloForm.btnHelloClick(Sender: TObject);
var
  a:integer;
  s:string;
begin
  s := txtName.Text;
  if (txtName.Text <> '') then
  begin
    if (chkTerms.Checked) then
    begin
      ShowMessage('Hello' + ' ' + s);
      txtName.Clear;
      txtEmail.Clear;
      rdlMale.Checked := False;
      rdlFemale.Checked := False;
      chkTerms.Checked := False;
    end
    else
    begin
      ShowMessage('Checkbox is required!');
    end;
  end
  else
  begin
    ShowMessage('Name is required!');
  end;
end;

procedure THelloForm.lblTermsClick(Sender: TObject);
begin
  ShowMessage('Welcome to our Terms and Conditions');
end;

end.
