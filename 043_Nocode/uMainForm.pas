unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,
  Vcl.Bind.ControlList, Data.Bind.Grid, Vcl.ControlList, Vcl.ExtCtrls,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList, Vcl.DBActns, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    Edit1: TEdit;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    DBNavigator1: TDBNavigator;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    Button1: TButton;
    Action1: TAction;
    Action2: TAction;
    TabControl1: TTabControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
