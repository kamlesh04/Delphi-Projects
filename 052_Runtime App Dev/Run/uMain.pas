unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBGrids,udmMain,AdvGrid,Planner,Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FButton, FAddButtons: Tbutton;
    FPanel : TPanel;
    FGrid : TDBGrid;
    FPlanner : TPlanner;
  public
    { Public declarations }

    procedure OnClickButton(Sender :TObject);
    procedure OnClickAddButtons(Sender :TObject);
    procedure OnClickClearButtons(Sender :TObject);
    procedure OnClickShowForm(Sender :TObject);
    procedure OnClickAdd(Sender :TObject);

  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
  //Button Add
  FAddButtons := Tbutton.Create(self);
  FAddButtons.Parent := self;
  FAddButtons.Name := 'btnAddButtons';
  FAddButtons.Caption := 'Add Buttons';
  FAddButtons.Left := 140;
  FAddButtons.Top := 260;
  FAddButtons.Width := 100;
  FAddButtons.Height := 40;
  FAddButtons.OnClick := OnClickAddButtons;

  //Button Clear
  FAddButtons := Tbutton.Create(self);
  FAddButtons.Parent := self;
  FAddButtons.Name := 'btnClearButtons';
  FAddButtons.Caption := 'Clear Buttons';
  FAddButtons.Left := 260;
  FAddButtons.Top := 260;
  FAddButtons.Width := 100;
  FAddButtons.Height := 40;
  FAddButtons.Enabled := false;
  FAddButtons.OnClick := OnClickClearButtons;

  //Button Show form
  FAddButtons := Tbutton.Create(self);
  FAddButtons.Parent := self;
  FAddButtons.Name := 'btnShowForm';
  FAddButtons.Caption := 'Show Form';
  FAddButtons.Left := 360;
  FAddButtons.Top := 260;
  FAddButtons.Width := 100;
  FAddButtons.Height := 40;
  FAddButtons.OnClick := OnClickShowForm;

  //Create Grid
  FGrid := TDBGrid.Create(self);
  FGrid.Top := 280;
  FGrid.Width := 480;
  FGrid.Left := 80;
  FGrid.Parent := Form5;
  FGrid.DataSource := dmMain.DtSource;

  //Create Planner
  FPlanner := TPlanner.Create(self);
  FPlanner.Parent := form5;
  FPlanner.Width := 350;
  FPlanner.Height := 300;
  FPlanner.Left := 680;

end;

procedure TForm5.OnClickAdd(Sender: TObject);
var
  lForm : TForm;
  DBMemo1: TDBMemo;
begin
  lForm := TForm.Create(nil);
  try
    lForm.Height := 480;
    lForm.Width := 640;
    //Create Memo
    DBMemo1 := TDBMemo.Create(lForm);
    DBMemo1.Parent := lForm;
    DBMemo1.Height := 321;
    DBMemo1.Width := 425;
    DBMemo1.Left := 20;
    DBMemo1.Top := 20;
    DBMemo1.DataSource := dmMain.DtSource;
    DBMemo1.DataField := 'DestinationLocation';
    lForm.ShowModal;
  finally
    FreeAndNil(lForm);
  end;

end;

procedure TForm5.OnClickAddButtons(Sender: TObject);
var
  i,lleft, ltop : integer;
begin
  //Create Panel
  FPanel := TPanel.Create(self);
  FPanel.Parent := self;
  FPanel.Height := 250;
  FPanel.Width := 628;
  FPanel.Left := 0;
  FPanel.Top := 0;
  FPanel.Caption := '';

  lleft := 0;
  ltop := 0;
  for I := 1 to 10 do
  begin
    FButton := Tbutton.Create(FPanel);
    FButton.Parent := FPanel;
    FButton.Name := 'Button'+ i.ToString;
    FButton.Caption := 'Button'+ i.ToString;
    FButton.Left := 24 + lleft;
    FButton.Top := 64 + ltop;
    FButton.Width := 75;
    FButton.Height := 25;
    FButton.OnClick := OnClickButton;
    lleft := lleft + 100;
    if i = 5 then
    begin
      lleft := 0;
      ltop := 64;
    end;
  end;
  if FindComponent('btnClearButtons') is TButton then
    (FindComponent('btnClearButtons') as TButton).Enabled := true;
end;

procedure TForm5.OnClickButton(Sender: TObject);
begin
  ShowMessage((Sender as TButton).Caption +  ' Clicked');
end;

procedure TForm5.OnClickClearButtons(Sender: TObject);
var
  lcheck: Boolean;
begin
  lcheck := false;
  while not lcheck do
  begin
    if (FPanel.ComponentCount <> 0) and (FPanel.Components[0] is TButton) then
    begin
      FreeAndNil(FPanel.Controls[0]);
      Sleep(200);
    end
    else
      lcheck := true;

  end;
  //FPanel.DestroyComponents;
  ShowMessage('Distroyed...');
  (Sender as TButton).Enabled := false;
end;

procedure TForm5.OnClickShowForm(Sender: TObject);
var
   lForm : TForm;
   lMemo : TMemo;
   lButton : TButton;
   lFrame : TFrame;
   lAdvGrid :  TAdvStringGrid;
begin
  //Form
  lForm := TForm.Create(FPanel);
  lForm.Parent := FPanel;
  lform.Caption := 'New Form';
  lForm.Width := 741;
  lForm.Height := 306;
  lForm.BorderIcons := [TBorderIcon.biSystemMenu];
  lForm.BorderStyle := bsDialog;

  //Memo
  lMemo := TMemo.Create(lForm);
  lMemo.Parent := lForm;
  lMemo.Width := 200;
  lMemo.Height := 100;
  lMemo.WordWrap := true;
  lMemo.Lines.Add('Test1');

  //Button Add
  lButton := TButton.Create(lForm);
  lButton.Parent := lForm;
  lButton.Width := 75;
  lButton.Height := 30;
  lButton.Left := 80;
  lButton.Top := 110;
  lButton.Caption := 'Add';
  lButton.OnClick := OnClickAdd;

  //Button Clear
  lButton := TButton.Create(lForm);
  lButton.Parent := lForm;
  lButton.Width := 75;
  lButton.Height := 30;
  lButton.Left := 150;
  lButton.Top := 110;
  lButton.Caption := 'Clear';


  //Frame
  lFrame := TFrame.Create(lForm);
  lFrame.Parent := lForm;
  lFrame.Left := 50;
  lFrame.Width := 40;
  lframe.Height := 40;
  lFrame.Visible := True;

  //Adv Grid
  lAdvGrid := TAdvStringGrid.Create(lForm);
  lAdvGrid.Parent := lForm;
  lAdvGrid.Width := 400;
  lAdvGrid.Height := 250;
  lAdvGrid.Left := 250;
  lForm.ShowModal;
  lForm.Free;

end;

end.
