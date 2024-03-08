unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  REST.Types, JSON;

type
  TfrmRESTAPI = class(TForm)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    FDMemTable: TFDMemTable;
    DBGrid: TDBGrid;
    DataSource: TDataSource;
    btnFetchData: TButton;
    Memo: TMemo;
    lblCName: TLabel;
    procedure btnFetchDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRESTAPI: TfrmRESTAPI;

implementation

{$R *.dfm}

procedure TfrmRESTAPI.btnFetchDataClick(Sender: TObject);
var
  jsonobj : TJSONObject;
  jsonval,elem : TJSONValue;
  jsonarr : TJSONArray;
  ele: Integer;
begin
  RESTRequest.Execute;
  jsonval:=TJSONObject.ParseJSONValue(RESTResponse.Content);
  jsonarr :=  jsonval as TJSONArray;
  for elem in jsonarr do
  begin
    Memo.Lines.Add(elem.GetValue<String>('name'+'.'+'common'));
  end;
end;

end.
