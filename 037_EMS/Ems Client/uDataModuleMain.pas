unit uDataModuleMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.Stan.Error,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TdmMain = class(TDataModule)
    FDSchemaAdapter1: TFDSchemaAdapter;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTableAdapter1: TFDTableAdapter;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
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
