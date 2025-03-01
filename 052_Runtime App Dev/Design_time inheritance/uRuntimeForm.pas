unit uRuntimeForm;

interface
uses
   Vcl.Forms,Threading, Vcl.Dialogs, uBaseForm, System.Classes,Vcl.Controls,Vcl.StdCtrls, Vcl.ExtCtrls,Vcl.Graphics;
 type
   TRuntimeForm = Class(TfrmBaseForm)
    private
      fButton : TButton;
      fPanel : TPanel;

      procedure OnButtonClick(Sender : TObject);
    public
      procedure TestVirtualAbs; override;
      procedure TestVirtual; override;
      constructor Create(AOwner: TComponent); override;
      destructor Destroy ; override;
   End;

   var
    frmRuntimeForm : TRuntimeForm;

 implementation

{ TRuntimeForm }


constructor TRuntimeForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.Caption := 'First Form';
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

destructor TRuntimeForm.Destroy;
begin
  inherited;
end;

procedure TRuntimeForm.OnButtonClick(Sender: TObject);
begin
   TTask.Run(
    procedure begin
      SetMessage('Hello from runtime first form');
      ShowMessage(GetMessage);
      TestVirtual;
      TestVirtualAbs;
    end);
end;

procedure TRuntimeForm.TestVirtual;
begin
  inherited;
  ShowMessage('Modified base class method!');
end;

procedure TRuntimeForm.TestVirtualAbs;
begin
  inherited;
  ShowMessage('Added implementation to abstract method...');
end;

end.
