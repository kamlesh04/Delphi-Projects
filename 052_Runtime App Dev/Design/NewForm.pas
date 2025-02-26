unit NewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NewFrame, Data.DB,
  Vcl.Grids, Vcl.DBGrids, AdvUtil, AdvObj, BaseGrid, AdvGrid, NewSecondForm;

type
  TfrmNewForm = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Frame11: TFrame1;
    AdvStringGrid1: TAdvStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewForm: TfrmNewForm;

implementation

{$R *.dfm}

procedure TfrmNewForm.Button1Click(Sender: TObject);
begin
  NewSecondForm.Form1.ShowModal;
end;

end.
