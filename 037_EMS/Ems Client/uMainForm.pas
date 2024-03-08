unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Backend.EMSServices,
  REST.Backend.EMSFireDAC, REST.Backend.EMSProvider, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,uDataModuleMain;

type
  TForm6 = class(TForm)
    EMSProvider1: TEMSProvider;
    EMSFireDACClient1: TEMSFireDACClient;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  EMSFireDACClient1.GetData;
end;

end.
