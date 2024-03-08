unit Datamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, FireDAC.Comp.UI;

type
  TdmMain = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction: TIBTransaction;
    IBQuery: TIBQuery;
    DataSource: TDataSource;
    DataSource2: TDataSource;
    FDConnection: TFDConnection;
    FDTable: TFDTable;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
