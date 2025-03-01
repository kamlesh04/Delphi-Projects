unit uRuntimeSecondForm;

interface
uses
   Vcl.Forms, Vcl.Dialogs, uBaseForm, System.Classes,Vcl.Controls,Vcl.StdCtrls, Vcl.ExtCtrls,Vcl.Graphics;
 type
   TRuntimeSecondForm = Class(TfrmBaseForm)
    private
      fButton : TButton;
      fPanel : TPanel;

      procedure OnButtonClick(Sender : TObject);
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy ; override;
   End;

   var
    frmRuntimeSecondForm : TRuntimeSecondForm;

implementation

{ TRuntimeSecondForm }

constructor TRuntimeSecondForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.Caption := 'Second Form';
  //Panel
  fPanel := TPanel.Create(self);
  fPanel.Parent := self;
  fPanel.Align := TAlign.alNone;
  fPanel.Width := 400;
  fPanel.Height := 100;
  fPanel.Left := 150;
  fPanel.Top := 100;
  fPanel.Caption := '';

  //Button;
  fButton := TButton.Create(fPanel);
  fButton.Parent := fPanel;
  fButton.Width := 100;
  fButton.Height := 30;
  fButton.Left := 150;
  fButton.Top := 40;
  fButton.Caption := 'Click Me';
  fButton.OnClick := OnButtonClick;

end;

destructor TRuntimeSecondForm.Destroy;
begin

  inherited;
end;

procedure TRuntimeSecondForm.OnButtonClick(Sender: TObject);
begin
  SetMessage('Hello from runtime second form');
  ShowMessage(GetMessage);
end;

end.
