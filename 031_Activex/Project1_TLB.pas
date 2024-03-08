unit Project1_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 04-12-2023 10:05:23 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\KamleshGaonkar\kamlesh\Practice\Activex\Project1 (1)
// LIBID: {0E039B08-E514-4926-8D45-1A06EC63CC64}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{0E039B08-E514-4926-8D45-1A06EC63CC64}';

  IID_Itest: TGUID = '{AE639735-349E-4779-A8C3-9A9F0870C90F}';
  DIID_ItestEvents: TGUID = '{7BD71812-FC6C-4542-ADDE-ECF43E45A718}';
  CLASS_test: TGUID = '{087914D5-96F5-40E9-9558-141069DBC775}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum TxActiveFormBorderStyle
type
  TxActiveFormBorderStyle = TOleEnum;
const
  afbNone = $00000000;
  afbSingle = $00000001;
  afbSunken = $00000002;
  afbRaised = $00000003;

// Constants for enum TxPrintScale
type
  TxPrintScale = TOleEnum;
const
  poNone = $00000000;
  poProportional = $00000001;
  poPrintToFit = $00000002;

// Constants for enum TxMouseButton
type
  TxMouseButton = TOleEnum;
const
  mbLeft = $00000000;
  mbRight = $00000001;
  mbMiddle = $00000002;

// Constants for enum TxPopupMode
type
  TxPopupMode = TOleEnum;
const
  pmNone = $00000000;
  pmAuto = $00000001;
  pmExplicit = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  Itest = interface;
  ItestDisp = dispinterface;
  ItestEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  test = Itest;


// *********************************************************************//
// Declaration of structures, unions and aliases.
// *********************************************************************//
  PPUserType1 = ^IFontDisp; {*}


// *********************************************************************//
// Interface: Itest
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AE639735-349E-4779-A8C3-9A9F0870C90F}
// *********************************************************************//
  Itest = interface(IDispatch)
    ['{AE639735-349E-4779-A8C3-9A9F0870C90F}']
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_AutoScroll: WordBool; safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    function Get_BorderWidth: Integer; safecall;
    procedure Set_BorderWidth(Value: Integer); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Color: OLE_COLOR; safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    function Get_Font: IFontDisp; safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    function Get_KeyPreview: WordBool; safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    function Get_Scaled: WordBool; safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    function Get_HelpFile: WideString; safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    function Get_PopupMode: TxPopupMode; safecall;
    procedure Set_PopupMode(Value: TxPopupMode); safecall;
    function Get_ScreenSnap: WordBool; safecall;
    procedure Set_ScreenSnap(Value: WordBool); safecall;
    function Get_SnapBuffer: Integer; safecall;
    procedure Set_SnapBuffer(Value: Integer); safecall;
    function Get_DockSite: WordBool; safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    function Get_PixelsPerInch: Integer; safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function Get_ParentDoubleBuffered: WordBool; safecall;
    procedure Set_ParentDoubleBuffered(Value: WordBool); safecall;
    function Get_IsDrawingLocked: WordBool; safecall;
    function Get_RedrawDisabled: WordBool; safecall;
    function Get_UseDockManager: WordBool; safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_CurrentPPI: Integer; safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_ScaleFactor: Single; safecall;
    function Get_StyleName: WideString; safecall;
    procedure Set_StyleName(const Value: WideString); safecall;
    function Get_RaiseOnNonMainThreadUsage: WordBool; safecall;
    procedure Set_RaiseOnNonMainThreadUsage(Value: WordBool); safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    function Get_ParentCustomHint: WordBool; safecall;
    procedure Set_ParentCustomHint(Value: WordBool); safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AutoScroll: WordBool read Get_AutoScroll write Set_AutoScroll;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property AxBorderStyle: TxActiveFormBorderStyle read Get_AxBorderStyle write Set_AxBorderStyle;
    property BorderWidth: Integer read Get_BorderWidth write Set_BorderWidth;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Color: OLE_COLOR read Get_Color write Set_Color;
    property Font: IFontDisp read Get_Font write Set_Font;
    property KeyPreview: WordBool read Get_KeyPreview write Set_KeyPreview;
    property PrintScale: TxPrintScale read Get_PrintScale write Set_PrintScale;
    property Scaled: WordBool read Get_Scaled write Set_Scaled;
    property Active: WordBool read Get_Active;
    property DropTarget: WordBool read Get_DropTarget write Set_DropTarget;
    property HelpFile: WideString read Get_HelpFile write Set_HelpFile;
    property PopupMode: TxPopupMode read Get_PopupMode write Set_PopupMode;
    property ScreenSnap: WordBool read Get_ScreenSnap write Set_ScreenSnap;
    property SnapBuffer: Integer read Get_SnapBuffer write Set_SnapBuffer;
    property DockSite: WordBool read Get_DockSite write Set_DockSite;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property PixelsPerInch: Integer read Get_PixelsPerInch write Set_PixelsPerInch;
    property AlignDisabled: WordBool read Get_AlignDisabled;
    property MouseInClient: WordBool read Get_MouseInClient;
    property VisibleDockClientCount: Integer read Get_VisibleDockClientCount;
    property ParentDoubleBuffered: WordBool read Get_ParentDoubleBuffered write Set_ParentDoubleBuffered;
    property IsDrawingLocked: WordBool read Get_IsDrawingLocked;
    property RedrawDisabled: WordBool read Get_RedrawDisabled;
    property UseDockManager: WordBool read Get_UseDockManager write Set_UseDockManager;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property CurrentPPI: Integer read Get_CurrentPPI;
    property ExplicitLeft: Integer read Get_ExplicitLeft;
    property ExplicitTop: Integer read Get_ExplicitTop;
    property ExplicitWidth: Integer read Get_ExplicitWidth;
    property ExplicitHeight: Integer read Get_ExplicitHeight;
    property ScaleFactor: Single read Get_ScaleFactor;
    property StyleName: WideString read Get_StyleName write Set_StyleName;
    property RaiseOnNonMainThreadUsage: WordBool read Get_RaiseOnNonMainThreadUsage write Set_RaiseOnNonMainThreadUsage;
    property AlignWithMargins: WordBool read Get_AlignWithMargins write Set_AlignWithMargins;
    property ParentCustomHint: WordBool read Get_ParentCustomHint write Set_ParentCustomHint;
  end;

// *********************************************************************//
// DispIntf:  ItestDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AE639735-349E-4779-A8C3-9A9F0870C90F}
// *********************************************************************//
  ItestDisp = dispinterface
    ['{AE639735-349E-4779-A8C3-9A9F0870C90F}']
    property Visible: WordBool dispid 201;
    property AutoScroll: WordBool dispid 202;
    property AutoSize: WordBool dispid 203;
    property AxBorderStyle: TxActiveFormBorderStyle dispid 204;
    property BorderWidth: Integer dispid 205;
    property Caption: WideString dispid -518;
    property Color: OLE_COLOR dispid -501;
    property Font: IFontDisp dispid -512;
    property KeyPreview: WordBool dispid 206;
    property PrintScale: TxPrintScale dispid 207;
    property Scaled: WordBool dispid 208;
    property Active: WordBool readonly dispid 209;
    property DropTarget: WordBool dispid 210;
    property HelpFile: WideString dispid 211;
    property PopupMode: TxPopupMode dispid 212;
    property ScreenSnap: WordBool dispid 213;
    property SnapBuffer: Integer dispid 214;
    property DockSite: WordBool dispid 215;
    property DoubleBuffered: WordBool dispid 216;
    property PixelsPerInch: Integer dispid 217;
    property AlignDisabled: WordBool readonly dispid 218;
    property MouseInClient: WordBool readonly dispid 219;
    property VisibleDockClientCount: Integer readonly dispid 220;
    property ParentDoubleBuffered: WordBool dispid 221;
    property IsDrawingLocked: WordBool readonly dispid 222;
    property RedrawDisabled: WordBool readonly dispid 223;
    property UseDockManager: WordBool dispid 224;
    property Enabled: WordBool dispid -514;
    property CurrentPPI: Integer readonly dispid 225;
    property ExplicitLeft: Integer readonly dispid 226;
    property ExplicitTop: Integer readonly dispid 227;
    property ExplicitWidth: Integer readonly dispid 228;
    property ExplicitHeight: Integer readonly dispid 229;
    property ScaleFactor: Single readonly dispid 230;
    property StyleName: WideString dispid 231;
    property RaiseOnNonMainThreadUsage: WordBool dispid 232;
    property AlignWithMargins: WordBool dispid 233;
    property ParentCustomHint: WordBool dispid 234;
  end;

// *********************************************************************//
// DispIntf:  ItestEvents
// Flags:     (0)
// GUID:      {7BD71812-FC6C-4542-ADDE-ECF43E45A718}
// *********************************************************************//
  ItestEvents = dispinterface
    ['{7BD71812-FC6C-4542-ADDE-ECF43E45A718}']
    procedure OnActivate; dispid 201;
    procedure OnAfterMonitorDpiChanged(OldDPI: Integer; NewDPI: Integer); dispid 202;
    procedure OnBeforeMonitorDpiChanged(OldDPI: Integer; NewDPI: Integer); dispid 203;
    procedure OnClick; dispid 204;
    procedure OnCreate; dispid 205;
    procedure OnDblClick; dispid 206;
    procedure OnDestroy; dispid 207;
    procedure OnDeactivate; dispid 208;
    procedure OnKeyPress(var Key: Smallint); dispid 209;
    procedure OnMouseEnter; dispid 210;
    procedure OnMouseLeave; dispid 211;
    procedure OnPaint; dispid 212;
  end;

implementation

uses System.Win.ComObj;

end.

