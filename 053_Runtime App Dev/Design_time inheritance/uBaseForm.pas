unit uBaseForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, threading;

type
  TfrmBaseForm = class(TForm)
    pnlButtons: TPanel;
    lblNote: TLabel;
    btnAdd: TButton;
    btnClear: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
    fMessage : string;
  public
    { Public declarations }
    procedure SetMessage(Val : String);
    procedure TestVirtual; virtual;
    procedure TestVirtualAbs; virtual; abstract;
    property GetMessage : string read fMessage write fMessage;
  end;

var
  frmBaseForm: TfrmBaseForm;

implementation

{$R *.dfm}

{ TfrmBaseForm }

procedure TfrmBaseForm.btnAddClick(Sender: TObject);
begin
   ShowMessage('Add button of base form.');
end;

procedure TfrmBaseForm.btnClearClick(Sender: TObject);
begin
   ShowMessage('Clear button of base form.');
end;

procedure TfrmBaseForm.SetMessage(Val: String);
begin
  fMessage := Val;
end;

procedure TfrmBaseForm.TestVirtual;
begin
 ShowMessage('Hello from Virtual method of base form');
end;

end.
