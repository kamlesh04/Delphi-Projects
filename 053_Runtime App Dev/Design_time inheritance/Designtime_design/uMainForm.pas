unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFirstForm, uSecondForm;

type
  TfrmMainForm = class(TForm)
    btnShowForm: TButton;
    btnSecondForm: TButton;
    procedure btnShowFormClick(Sender: TObject);
    procedure btnSecondFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.btnSecondFormClick(Sender: TObject);
begin
  //frmSecondForm := TfrmSecondForm.Create(self);
  frmSecondForm.Show;
end;

procedure TfrmMainForm.btnShowFormClick(Sender: TObject);
begin
  //frmFirstForm := TfrmFirstForm.Create(self);
  frmFirstForm.Show;
end;

end.
