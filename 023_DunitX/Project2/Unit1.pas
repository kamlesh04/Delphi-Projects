unit Unit1;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMyTestObject = class(TObject) 
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    //[TestCase('TestA','1,2')]
    //[TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

procedure TMyTestObject.Setup;
begin
end;

procedure TMyTestObject.TearDown;
begin
end;

procedure TMyTestObject.Test1;
begin
  Assert.AreEqual('4','4',false,'pass');
end;

procedure TMyTestObject.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
  Assert.AreEqual('4','4',false,'pass');
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);
end.
