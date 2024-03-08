unit TabbedFormwithNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, FMX.Grid.Style, FMX.Edit, FMX.ScrollBox, FMX.Grid,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.FMXUI.Login,
  FireDAC.Comp.UI, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,System.IOUtils,
  FMX.Objects, Data.Win.ADODB, FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    btnNext: TSpeedButton;
    TabItem6: TTabItem;
    ToolBar2: TToolBar;
    lblTitle2: TLabel;
    btnBack: TSpeedButton;
    TabItem2: TTabItem;
    ToolBar3: TToolBar;
    lblTitle3: TLabel;
    TabItem3: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    TabItem4: TTabItem;
    ToolBar5: TToolBar;
    lblTitle5: TLabel;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    Panel1: TPanel;
    Z: TButton;
    Edit1: TEdit;
    FDQuery1: TFDQuery;
    Panel2: TPanel;
    Edit3: TEdit;
    Edit2: TEdit;
    Grid1: TGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ZClick(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TTabbedwithNavigationForm.FDConnection1AfterConnect(Sender: TObject);
begin
  FDConnection1.ExecSQL('CREATE TABLE IF NOT EXISTS Item (ShopItem  TEXT NOT NULL)');
end;

procedure TTabbedwithNavigationForm.FDConnection1BeforeConnect(Sender: TObject);
begin
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
  FDConnection1.Params.Values['Database'] :=
      TPath.Combine(TPath.GetDocumentsPath, 'testDB.db');
  {$ENDIF}
end;

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabItem1;
  //FDConnection1.Connected:= true;
  FDTable1.Active := true;
  FDQuery1.Active:= true;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControl1.ActiveTab = TabItem1) and (TabControl2.ActiveTab = TabItem6) then
    begin
      TabControl2.Previous;
      Key := 0;
    end;
  end;
end;

procedure TTabbedwithNavigationForm.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

procedure TTabbedwithNavigationForm.ZClick(Sender: TObject);
var
  id : integer;
begin

  FDQuery1.SQL.Text := 'SELECT * FROM USERS u ORDER BY USERID  desc';
  FDQuery1.Open;
  id := FDQuery1.FieldByName('USERID').AsInteger;
  FDQuery1.Close;
  FDQuery1.SQL.Text:='Insert into users(UserID,Name,Username,Password,Email) '
      + 'Values(:id,:name,:username,:pass,:email)';

  if id = 0 then
    FDQuery1.ParamByName('id').AsInteger :=  1
  else
    FDQuery1.ParamByName('id').AsInteger := id + 1;
  FDQuery1.ParamByName('name').Value := Edit1.Text;
  FDQuery1.ParamByName('username').Value := Edit2.Text;
  FDQuery1.ParamByName('pass').Value := Edit1.Text;;
  FDQuery1.ParamByName('email').Value :=  Edit3.Text;
  FDQuery1.Prepare;
  FDQuery1.ExecSQL;
  ShowMessage('Data Inserted.');
  FDTable1.RefireSQL;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

end.

