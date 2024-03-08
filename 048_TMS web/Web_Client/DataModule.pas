unit DataModule;

interface

uses
  System.SysUtils, System.Classes, XData.Web.Client, Data.DB,
  XData.Web.JsonDataset, XData.Web.Dataset, XData.Web.Connection;

type
  TdmMain = class(TDataModule)
    XDataWebConnection: TXDataWebConnection;
    XDataWebDataSet: TXDataWebDataSet;
    XDataWebClient: TXDataWebClient;
    procedure DataModuleCreate(Sender: TObject);
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

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  XDataWebConnection.Connected := true;
end;

end.
