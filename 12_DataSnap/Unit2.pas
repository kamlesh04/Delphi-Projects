unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ClientModuleUnit1, Data.DB, Vcl.Grids,
  Vcl.DBGrids,Unit4, Vcl.StdCtrls, Planner, DBPlanner, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, System.ImageList, Vcl.ImgList;

type
  TForm2 = class(TForm)
    BindingsList1: TBindingsList;
    Planner1: TPlanner;
    PrintDialog1: TPrintDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ImageList1: TImageList;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  if PrintDialog1.Execute() then
    Planner1.Print;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  s: string;
  img: string;
begin
  with Planner1.CreateItemAtSelection do
  begin
    s := '<img src="'+'A'+'"><br><b>';
    s := s + 'Owner : <ind x="50"><control id="1" value="" type="edit" width="60"><BR>';
    s := s + 'Year :<ind x="50"><control id="2" value="" type="combo" width="60"><BR>';
    s := s + '<control id="3" value="FALSE" type="check" width="30"> Avail. ';
    s := s + '<control id="4" value="Extra" type="check" width="40"> Ready</b>';
    Text.Text := '<b>Year:<control id="5" value="2" type="radio" width="40"></b>';
    ItemEnd := ItemBegin + 6;
  end;
end;

end.
