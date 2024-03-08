unit SP_DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule3 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOStoredProc1: TADOStoredProc;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TDataModule3.DataModuleCreate(Sender: TObject);
begin
  with ADOConnection1 do
  begin
    Connected:=false;
    ConnectionString:='Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";'+
                      'Initial Catalog=KAMLESHDB;Data Source=DESKTOP-2SD12NM;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;'+
                      'Workstation ID=DESKTOP-2SD12NM;Initial File Name="";Use Encryption for Data=False;Tag with column collation when possible=False;MARS Connection=False;DataTypeCompatibility=0;Trust Server Certificate=False;'+
                      'Application Intent=READWRITE;';
    Connected:=True;

  end;
end;

end.
