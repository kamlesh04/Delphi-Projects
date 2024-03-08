unit umain;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActiveX, AxCtrls, Project1_TLB, StdVcl, Vcl.StdCtrls;

type
  Ttest = class(TActiveForm, Itest)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FEvents: ItestEvents;
    procedure ActivateEvent(Sender: TObject);
    procedure AfterMonitorDpiChangedEvent(Sender: TObject; OldDPI, NewDPI: Integer);
    procedure BeforeMonitorDpiChangedEvent(Sender: TObject; OldDPI, NewDPI: Integer);

    procedure ClickEvent(Sender: TObject);
    procedure CreateEvent(Sender: TObject);
    procedure DblClickEvent(Sender: TObject);
    procedure DeactivateEvent(Sender: TObject);
    procedure DestroyEvent(Sender: TObject);
    procedure KeyPressEvent(Sender: TObject; var Key: Char);
    procedure MouseEnterEvent(Sender: TObject);
    procedure MouseLeaveEvent(Sender: TObject);
    procedure PaintEvent(Sender: TObject);
  protected
    { Protected declarations }
    procedure DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage); override;
    procedure EventSinkChanged(const EventSink: IUnknown); override;
    function Get_Active: WordBool; safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    function Get_AutoScroll: WordBool; safecall;
    function Get_AutoSize: WordBool; safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    function Get_BorderWidth: Integer; safecall;
    function Get_Caption: WideString; safecall;
    function Get_Color: OLE_COLOR; safecall;
    function Get_CurrentPPI: Integer; safecall;
    function Get_DockSite: WordBool; safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_Font: IFontDisp; safecall;
    function Get_HelpFile: WideString; safecall;
    function Get_IsDrawingLocked: WordBool; safecall;
    function Get_KeyPreview: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_ParentCustomHint: WordBool; safecall;
    function Get_ParentDoubleBuffered: WordBool; safecall;
    function Get_PixelsPerInch: Integer; safecall;
    function Get_PopupMode: TxPopupMode; safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    function Get_RaiseOnNonMainThreadUsage: WordBool; safecall;
    function Get_RedrawDisabled: WordBool; safecall;
    function Get_Scaled: WordBool; safecall;
    function Get_ScaleFactor: Single; safecall;
    function Get_ScreenSnap: WordBool; safecall;
    function Get_SnapBuffer: Integer; safecall;
    function Get_StyleName: WideString; safecall;
    function Get_UseDockManager: WordBool; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    procedure Set_BorderWidth(Value: Integer); safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    procedure Set_ParentCustomHint(Value: WordBool); safecall;
    procedure Set_ParentDoubleBuffered(Value: WordBool); safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    procedure Set_PopupMode(Value: TxPopupMode); safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    procedure Set_RaiseOnNonMainThreadUsage(Value: WordBool); safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    procedure Set_ScreenSnap(Value: WordBool); safecall;
    procedure Set_SnapBuffer(Value: Integer); safecall;
    procedure Set_StyleName(const Value: WideString); safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    procedure Set_Visible(Value: WordBool); safecall;
  public
    { Public declarations }
    procedure Initialize; override;
  end;

implementation

uses ComObj, ComServ;

{$R *.DFM}

{ Ttest }

procedure Ttest.DefinePropertyPages(DefinePropertyPage: TDefinePropertyPage);
begin
  { Define property pages here.  Property pages are defined by calling
    DefinePropertyPage with the class id of the page.  For example,
      DefinePropertyPage(Class_testPage); }
end;

procedure Ttest.EventSinkChanged(const EventSink: IUnknown);
begin
  FEvents := EventSink as ItestEvents;
  inherited EventSinkChanged(EventSink);
end;

procedure Ttest.Initialize;
begin
  inherited Initialize;
  OnActivate := ActivateEvent;
  OnAfterMonitorDpiChanged := AfterMonitorDpiChangedEvent;
  OnBeforeMonitorDpiChanged := BeforeMonitorDpiChangedEvent;
  OnClick := ClickEvent;
  OnCreate := CreateEvent;
  OnDblClick := DblClickEvent;
  OnDeactivate := DeactivateEvent;
  OnDestroy := DestroyEvent;
  OnKeyPress := KeyPressEvent;
  OnMouseEnter := MouseEnterEvent;
  OnMouseLeave := MouseLeaveEvent;
  OnPaint := PaintEvent;
end;

function Ttest.Get_Active: WordBool;
begin
  Result := Active;
end;

function Ttest.Get_AlignDisabled: WordBool;
begin
  Result := AlignDisabled;
end;

function Ttest.Get_AlignWithMargins: WordBool;
begin
  Result := AlignWithMargins;
end;

function Ttest.Get_AutoScroll: WordBool;
begin
  Result := AutoScroll;
end;

function Ttest.Get_AutoSize: WordBool;
begin
  Result := AutoSize;
end;

function Ttest.Get_AxBorderStyle: TxActiveFormBorderStyle;
begin
  Result := Ord(AxBorderStyle);
end;

function Ttest.Get_BorderWidth: Integer;
begin
  Result := Integer(BorderWidth);
end;

function Ttest.Get_Caption: WideString;
begin
  Result := WideString(Caption);
end;

function Ttest.Get_Color: OLE_COLOR;
begin
  Result := OLE_COLOR(Color);
end;

function Ttest.Get_CurrentPPI: Integer;
begin
  Result := CurrentPPI;
end;

function Ttest.Get_DockSite: WordBool;
begin
  Result := DockSite;
end;

function Ttest.Get_DoubleBuffered: WordBool;
begin
  Result := DoubleBuffered;
end;

function Ttest.Get_DropTarget: WordBool;
begin
  Result := DropTarget;
end;

function Ttest.Get_Enabled: WordBool;
begin
  Result := Enabled;
end;

function Ttest.Get_ExplicitHeight: Integer;
begin
  Result := ExplicitHeight;
end;

function Ttest.Get_ExplicitLeft: Integer;
begin
  Result := ExplicitLeft;
end;

function Ttest.Get_ExplicitTop: Integer;
begin
  Result := ExplicitTop;
end;

function Ttest.Get_ExplicitWidth: Integer;
begin
  Result := ExplicitWidth;
end;

function Ttest.Get_Font: IFontDisp;
begin
  GetOleFont(Font, Result);
end;

function Ttest.Get_HelpFile: WideString;
begin
  Result := WideString(HelpFile);
end;

function Ttest.Get_IsDrawingLocked: WordBool;
begin
  Result := IsDrawingLocked;
end;

function Ttest.Get_KeyPreview: WordBool;
begin
  Result := KeyPreview;
end;

function Ttest.Get_MouseInClient: WordBool;
begin
  Result := MouseInClient;
end;

function Ttest.Get_ParentCustomHint: WordBool;
begin
  Result := ParentCustomHint;
end;

function Ttest.Get_ParentDoubleBuffered: WordBool;
begin
  Result := ParentDoubleBuffered;
end;

function Ttest.Get_PixelsPerInch: Integer;
begin
  Result := PixelsPerInch;
end;

function Ttest.Get_PopupMode: TxPopupMode;
begin
  Result := Ord(PopupMode);
end;

function Ttest.Get_PrintScale: TxPrintScale;
begin
  Result := Ord(PrintScale);
end;

function Ttest.Get_RaiseOnNonMainThreadUsage: WordBool;
begin
  Result := RaiseOnNonMainThreadUsage;
end;

function Ttest.Get_RedrawDisabled: WordBool;
begin
  Result := RedrawDisabled;
end;

function Ttest.Get_Scaled: WordBool;
begin
  Result := Scaled;
end;

function Ttest.Get_ScaleFactor: Single;
begin
  Result := ScaleFactor;
end;

function Ttest.Get_ScreenSnap: WordBool;
begin
  Result := ScreenSnap;
end;

function Ttest.Get_SnapBuffer: Integer;
begin
  Result := SnapBuffer;
end;

function Ttest.Get_StyleName: WideString;
begin
  Result := WideString(StyleName);
end;

function Ttest.Get_UseDockManager: WordBool;
begin
  Result := UseDockManager;
end;

function Ttest.Get_Visible: WordBool;
begin
  Result := Visible;
end;

function Ttest.Get_VisibleDockClientCount: Integer;
begin
  Result := VisibleDockClientCount;
end;

procedure Ttest._Set_Font(var Value: IFontDisp);
begin
  SetOleFont(Font, Value);
end;

procedure Ttest.ActivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnActivate;
end;

procedure Ttest.AfterMonitorDpiChangedEvent(Sender: TObject; OldDPI, NewDPI: Integer);

begin
  if FEvents <> nil then FEvents.OnAfterMonitorDpiChanged(OldDPI, NewDPI);
end;

procedure Ttest.BeforeMonitorDpiChangedEvent(Sender: TObject; OldDPI, NewDPI: Integer);

begin
  if FEvents <> nil then FEvents.OnBeforeMonitorDpiChanged(OldDPI, NewDPI);
end;

procedure Ttest.Button1Click(Sender: TObject);
begin
   ShowMessage(Edit1.Text);
end;

procedure Ttest.ClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnClick;
end;

procedure Ttest.CreateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnCreate;
end;

procedure Ttest.DblClickEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDblClick;
end;

procedure Ttest.DeactivateEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDeactivate;
end;

procedure Ttest.DestroyEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnDestroy;
end;

procedure Ttest.KeyPressEvent(Sender: TObject; var Key: Char);
var
  TempKey: Smallint;
begin
  TempKey := Smallint(Key);
  if FEvents <> nil then FEvents.OnKeyPress(TempKey);
  Key := Char(TempKey);
end;

procedure Ttest.MouseEnterEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnMouseEnter;
end;

procedure Ttest.MouseLeaveEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnMouseLeave;
end;

procedure Ttest.PaintEvent(Sender: TObject);
begin
  if FEvents <> nil then FEvents.OnPaint;
end;

procedure Ttest.Set_AlignWithMargins(Value: WordBool);
begin
  AlignWithMargins := Value;
end;

procedure Ttest.Set_AutoScroll(Value: WordBool);
begin
  AutoScroll := Value;
end;

procedure Ttest.Set_AutoSize(Value: WordBool);
begin
  AutoSize := Value;
end;

procedure Ttest.Set_AxBorderStyle(Value: TxActiveFormBorderStyle);
begin
  AxBorderStyle := TActiveFormBorderStyle(Value);
end;

procedure Ttest.Set_BorderWidth(Value: Integer);
begin
  BorderWidth := TBorderWidth(Value);
end;

procedure Ttest.Set_Caption(const Value: WideString);
begin
  Caption := TCaption(Value);
end;

procedure Ttest.Set_Color(Value: OLE_COLOR);
begin
  Color := TColor(Value);
end;

procedure Ttest.Set_DockSite(Value: WordBool);
begin
  DockSite := Value;
end;

procedure Ttest.Set_DoubleBuffered(Value: WordBool);
begin
  DoubleBuffered := Value;
end;

procedure Ttest.Set_DropTarget(Value: WordBool);
begin
  DropTarget := Value;
end;

procedure Ttest.Set_Enabled(Value: WordBool);
begin
  Enabled := Value;
end;

procedure Ttest.Set_Font(const Value: IFontDisp);
begin
  SetOleFont(Font, Value);
end;

procedure Ttest.Set_HelpFile(const Value: WideString);
begin
  HelpFile := string(Value);
end;

procedure Ttest.Set_KeyPreview(Value: WordBool);
begin
  KeyPreview := Value;
end;

procedure Ttest.Set_ParentCustomHint(Value: WordBool);
begin
  ParentCustomHint := Value;
end;

procedure Ttest.Set_ParentDoubleBuffered(Value: WordBool);
begin
  ParentDoubleBuffered := Value;
end;

procedure Ttest.Set_PixelsPerInch(Value: Integer);
begin
  PixelsPerInch := Value;
end;

procedure Ttest.Set_PopupMode(Value: TxPopupMode);
begin
  PopupMode := TPopupMode(Value);
end;

procedure Ttest.Set_PrintScale(Value: TxPrintScale);
begin
  PrintScale := TPrintScale(Value);
end;

procedure Ttest.Set_RaiseOnNonMainThreadUsage(Value: WordBool);
begin
  RaiseOnNonMainThreadUsage := Value;
end;

procedure Ttest.Set_Scaled(Value: WordBool);
begin
  Scaled := Value;
end;

procedure Ttest.Set_ScreenSnap(Value: WordBool);
begin
  ScreenSnap := Value;
end;

procedure Ttest.Set_SnapBuffer(Value: Integer);
begin
  SnapBuffer := Value;
end;

procedure Ttest.Set_StyleName(const Value: WideString);
begin
  StyleName := string(Value);
end;

procedure Ttest.Set_UseDockManager(Value: WordBool);
begin
  UseDockManager := Value;
end;

procedure Ttest.Set_Visible(Value: WordBool);
begin
  Visible := Value;
end;

initialization
  TActiveFormFactory.Create(
    ComServer,
    TActiveFormControl,
    Ttest,
    Class_test,
    0,
    '',
    OLEMISC_SIMPLEFRAME or OLEMISC_ACTSLIKELABEL,
    tmApartment);
end.
