unit TestCodolex.TestModule.TestClass;

interface

uses
  Codolex.Collections,
  TestCodolex.DataSource.TestDataModule,
  TestCodolex.TestModule.TestClass.Interfaces;

type
  TTestClass = class(TInterfacedObject, TestCodolex.TestModule.TestClass.Interfaces.ITestClass)
  public
    function FillGrid: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE1>;
    procedure GetData(const Name: string);
    function RestApi: string;
  end;

implementation

uses
  Codolex.Database.Params,
  Codolex.Database.Query.Interfaces,
  Codolex.Framework,
  System.Net.HTTPClient,
  System.Net.HttpClientComponent,
  System.Net.URLClient,
  System.UITypes,
  Vcl.Dialogs;

function TTestClass.FillGrid: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE1>;
begin
  var EMPLOYEE1List: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE1>;
  try
    var SQL := 
      'SELECT EMPLOYEE1.* '+ sLineBreak +
      'FROM EMPLOYEE1 AS EMPLOYEE1 ';
    
    var Params: IDatabaseParams := TDatabaseParams.Create;
    
    EMPLOYEE1List := TestCodolex.DataSource.TestDataModule.EMPLOYEE1DataBroker.GetList(SQL, Params);
  finally
  end;
  Result := EMPLOYEE1List;
end;

procedure TTestClass.GetData(const Name: string);
begin
  var Count: Integer := 10;
  for var j := 0 to Count do
  begin
    var DialogResult := MessageDlg('Hello, Do you want to continue loop', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
    if (DialogResult = mrNo) then
    begin
      Break;
    end
    else if (DialogResult = mrYes) then
    begin
      Continue;
    end;
  end;
end;

function TTestClass.RestApi: string;
begin
  var JSONResult: string;
  var Client := TNetHTTPClient.Create(nil);
  try
    Client.ContentType := 'application/json';
    
    var HttpResponse := Client.GET('https://timeapi.io/api/TimeZone/Zone?timeZone=Europe%2FAmsterdam', nil, []);
    if (HttpResponse.StatusCode > 199) and (HttpResponse.StatusCode < 300) then
      JSONResult := HttpResponse.ContentAsString
    else
      raise ENetException.CreateFmt('%d %s', [HttpResponse.StatusCode, HttpResponse.StatusText]);
  finally
    Client.Free;
  end;
  Result := JSONResult;
end;

end.