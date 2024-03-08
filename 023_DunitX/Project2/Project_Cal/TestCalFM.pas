unit TestCalFM;

interface
uses
  DUnitX.TestFramework, CalFM;

type

  [TestFixture]
  TTestCal = class(TObject) 
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('AddTest1','2,2,4')]
    procedure TestAdd(AValue1 : integer; AValue2 : integer ; AExpected : integer);

    [TestCase('SubTest1','2,2,0')]
    procedure TestSub(AValue1 : integer; AValue2 : integer ; AExpected : integer);

    [TestCase('MulTest1','2,2,4')]
    procedure TestMul(AValue1 : integer; AValue2 : integer ; AExpected : integer);


    [TestCase('DivTest1','2,2,1')]
    [TestCase('DivTest2','2,20,0.1')]
    procedure TestDiv(AValue1 : integer; AValue2 : integer ; AExpected : Extended);

  end;

implementation

procedure TTestCal.Setup;
begin
end;

procedure TTestCal.TearDown;
begin
end;


procedure TTestCal.TestAdd(AValue1 : integer; AValue2 : integer ; AExpected : integer);
var
  lResults: integer;
begin
  lResults := TCalculatorFM.Add(AValue1, AValue2);
  Assert.AreEqual(AExpected, lResults);
end;

procedure TTestCal.TestDiv(AValue1 : integer; AValue2 : integer ; AExpected : Extended);
var
  lResults: Extended;
begin
  lResults := TCalculatorFM.Divide(AValue1, AValue2);
  Assert.AreEqual(AExpected, lResults);
end;

procedure TTestCal.TestMul(AValue1 : integer; AValue2 : integer ; AExpected : integer);
var
  lResults: integer;
begin
  lResults := TCalculatorFM.Mul(AValue1, AValue2);
  Assert.AreEqual(AExpected, lResults)

end;

procedure TTestCal.TestSub(AValue1 : integer; AValue2 : integer ; AExpected : integer);
var
  lResults: integer;
begin
  lResults := TCalculatorFM.Sub(AValue1, AValue2);
  Assert.AreEqual(AExpected, lResults)

end;

initialization
  TDUnitX.RegisterTestFixture(TTestCal);
end.
