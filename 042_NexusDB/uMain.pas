unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, nxdb, Data.DB, nxllComponent,
  nxsdServerEngine, nxsrServerEngine, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,nxseAllEngines,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.Win.ADODB, FireDAC.Comp.Client;

type
  TfrmMain = class(TForm)
    nxServerEngine1: TnxServerEngine;
    nxTable1: TnxTable;
    nxDatabase1: TnxDatabase;
    nxSession1: TnxSession;
    edtID: TEdit;
    edtFName: TEdit;
    edtLName: TEdit;
    edtAddress: TEdit;
    DBNavigator1: TDBNavigator;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    DataSource1: TDataSource;
    DBGrid: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
