unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.StdActns, FMX.MultiView;

type
  TForm2 = class(TForm)
    ToolBar1: TToolBar;
    TabControl1: TTabControl;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    EditVirtualKeyboard1: TVirtualKeyboard;
    Edit1: TEdit;
    EditButton1: TEditButton;
    MultiView1: TMultiView;
    SpeedButton1: TSpeedButton;
    StyleBook1: TStyleBook;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

end.
