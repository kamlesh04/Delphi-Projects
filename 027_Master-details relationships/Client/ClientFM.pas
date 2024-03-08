unit ClientFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ClientModuleUnit1, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, ppDesignLayer, ppBands, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppDB, ppParameter, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppStrtch, ppPageBreak;

type
  TClntFM = class(TForm)
    pnlGrid1: TPanel;
    pnlGrid2: TPanel;
    dbgCustomer: TDBGrid;
    dbgDetails: TDBGrid;
    lblHeader: TLabel;
    lblDetails: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    lblAcc: TppLabel;
    ppDetailBand1: TppDetailBand;
    dbtBal: TppDBText;
    lblBalance: TppLabel;
    ppFooterBand1: TppFooterBand;
    svDateTime: TppSystemVariable;
    svPageNo: TppSystemVariable;
    ppPageStyle1: TppPageStyle;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    btnBalance: TButton;
    lblAccType: TppLabel;
    dbtAccType: TppDBText;
    lblAccountNo: TppLabel;
    dbtAccNo: TppDBText;
    pbPage1: TppPageBreak;
    pbPage2: TppPageBreak;
    svTotalPages: TppSystemVariable;
    lblPage: TppLabel;
    lblOf: TppLabel;
    pbPage3: TppPageBreak;
    procedure dbgCustomerCellClick(Column: TColumn);
    procedure btnBalanceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClntFM: TClntFM;

implementation

{$R *.dfm}

procedure TClntFM.btnBalanceClick(Sender: TObject);
begin
  ppReport1.Print;
end;

procedure TClntFM.dbgCustomerCellClick(Column: TColumn);
begin
  ClientModule1.ClientDataSet2.Active:=false;
  ClientModule1.ClientDataSet2.Active:=true;
end;

end.
