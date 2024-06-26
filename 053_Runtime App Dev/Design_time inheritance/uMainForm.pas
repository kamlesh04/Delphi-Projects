unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uRuntimeForm, uRuntimeSecondForm;

type
  TfrmMainForm = class(TForm)
    btnShowForm: TButton;
    btnSecond: TButton;
    procedure btnShowFormClick(Sender: TObject);
    procedure btnSecondClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.btnShowFormClick(Sender: TObject);
begin

  frmRuntimeForm := TRuntimeForm.Create(self);
  frmRuntimeForm.Show;
end;

procedure TfrmMainForm.btnSecondClick(Sender: TObject);
begin
  frmRuntimeSecondForm := TRuntimeSecondForm.Create(self);
  frmRuntimeSecondForm.Show;
end;

end.
