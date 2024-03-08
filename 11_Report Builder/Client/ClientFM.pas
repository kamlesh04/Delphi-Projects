unit ClientFM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ClientModuleUnit1, ppBands, ppCache,
  ppClass, ppDesignLayer, ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppPrnabl, ppVar, Vcl.StdCtrls, ppDBJIT, ppTableGrid,
  ppStrtch, ppRichTx, ppSubRpt, Vcl.ExtCtrls, Vcl.Imaging.pngimage, ppRegion,
  ppBarCod, myChkBox, ppBarCode2D;

type
  TForm3 = class(TForm)
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    lblHead: TppLabel;
    ppTableGrid1: TppTableGrid;
    ppTableRow1: TppTableRow;
    ppTableCell1: TppTableCell;
    lblName: TppLabel;
    ppTableCell2: TppTableCell;
    lblCity: TppLabel;
    ppTableCell3: TppTableCell;
    lblMobile: TppLabel;
    ppTableCell4: TppTableCell;
    lblEmail: TppLabel;
    ppTableCell5: TppTableCell;
    lblAccNo: TppLabel;
    ppTableCell6: TppTableCell;
    lblSalary: TppLabel;
    ppTableColumn1: TppTableColumn;
    ppTableColumn2: TppTableColumn;
    ppTableColumn3: TppTableColumn;
    ppTableColumn4: TppTableColumn;
    ppTableColumn5: TppTableColumn;
    ppTableColumn6: TppTableColumn;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppTableGrid2: TppTableGrid;
    ppTableRow2: TppTableRow;
    ppTableCell7: TppTableCell;
    rtName: TppDBRichText;
    ppTableCell8: TppTableCell;
    rtCity: TppDBRichText;
    ppTableCell9: TppTableCell;
    rtMobile: TppDBRichText;
    ppTableCell10: TppTableCell;
    rtEmail: TppDBRichText;
    ppTableCell11: TppTableCell;
    rtAccNo: TppDBRichText;
    ppTableCell12: TppTableCell;
    rtSalary: TppDBRichText;
    ppTableColumn7: TppTableColumn;
    ppTableColumn8: TppTableColumn;
    ppTableColumn9: TppTableColumn;
    ppTableColumn10: TppTableColumn;
    ppTableColumn11: TppTableColumn;
    ppTableColumn12: TppTableColumn;
    rtComment: TppDBRichText;
    lblComment: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    lblPage: TppLabel;
    lblOf: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppPageStyle1: TppPageStyle;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    pnlDetails: TPanel;
    btnPreview: TButton;
    imgHead: TppImage;
    rgStamp: TppRegion;
    lblStamp: TppLabel;
    rgComment: TppRegion;
    ppDBRichText1: TppDBRichText;
    ppShape1: TppShape;
    bcCustomer: TppBarCode;
    chkVerify: TmyCheckBox;
    lblVerify: TppLabel;
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnPreviewClick(Sender: TObject);
begin
  ppReport1.Print;
end;

end.
