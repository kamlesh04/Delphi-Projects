unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB,udmMain, NewForm, Vcl.ExtCtrls, Planner;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Planner1: TPlanner;
    procedure Button1Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button11Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TForm5.Button12Click(Sender: TObject);
begin
  FreeAndNil(Panel1);
end;

procedure TForm5.Button13Click(Sender: TObject);
begin
  frmNewForm.ShowModal;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
  ShowMessage('Clicked');
end;

end.
