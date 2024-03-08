unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.ListView,
  FMX.Layouts;

type
  TForm5 = class(TForm)
    Layout1: TLayout;
    tbmain: TTabControl;
    lwHead: TListView;
    lvbottom: TListView;
    TabItem1: TTabItem;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

end.
