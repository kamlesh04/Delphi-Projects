unit udmMain;

interface

uses
  System.SysUtils, System.Classes,Data.DB, Data.Win.ADODB;

type
  TdmMain = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FDataSource : TDataSource;
    FQuery : TADOQuery;
    FConn : TADOConnection;
  public
    { Public declarations }
    procedure TestARC(Ads :TDataSource);
    property  DtSource:TDataSource read FDataSource write FDataSource;
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  //Create Connection
  FConn := TADOConnection.Create(nil);
  FConn.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;'
      +' Persist Security Info=False;Initial Catalog=VehiclePoolingSystem;Data Source=HP;'
      +' Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=HP;'
      +' Use Encryption for Data=False;Tag with column collation when possible=False;';
  FConn.LoginPrompt := false;
  FConn.Connected := true;

  //Create Query
  FQuery := TADOQuery.Create(nil);
  FQuery.Connection := FConn;
  FQuery.SQL.Add('select * from ride;');
  FQuery.Open;

  //Create Datasource
  FDataSource := TDataSource.Create(nil);
  FDataSource.DataSet := FQuery;

end;

procedure TdmMain.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FConn);
  FreeAndNil(FQuery);
  TestARC(FDataSource);
  //FreeAndNil(FDataSource);
end;

procedure TdmMain.TestARC(Ads: TDataSource);
var
  lds1, lds2 : TDataSource;
begin
  lds1 := Ads;
  lds2 := lds1;
  FreeAndNil(lds2);
end;

end.
