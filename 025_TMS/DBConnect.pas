unit DBConnect;

interface

uses
  System.SysUtils, System.Classes, DBPlanner, Data.DB, Data.Win.ADODB,
  AdvCustomFilterPanel, advgridfilterpanel;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBDaySource1: TDBDaySource;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
