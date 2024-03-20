unit uSecondForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseForm, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSecondForm = class(TfrmBaseForm)
    pnlMain: TPanel;
    btnClickMe: TButton;
    procedure btnClickMeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSecondForm: TfrmSecondForm;

implementation

{$R *.dfm}

procedure TfrmSecondForm.btnClickMeClick(Sender: TObject);
begin
  inherited;
  SetMessage('Hello from runtime second form');
  ShowMessage(GetMessage);
end;

end.
