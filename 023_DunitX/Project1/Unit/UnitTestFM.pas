unit UnitTestFM;

interface

uses
  DUnitX.TestFramework,MathsFM,System.SysUtils;

type
  [TestFixture]
  UnitTest_MathsFM = class
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
    [TestCase('TestA','1,6,7')]
    [TestCase('TestB','3,4,7')]
    [TestCase('TestC','30,-40,-10')]
    [TestCase('TestD','-30,40,10')]
    [TestCase('TestE','0.235,4,4.235')]
    [TestCase('TestF','0.235,40.33,40.565')]
    [TestCase('TestG','0.00,0.4,0.40')]
    [TestCase('TestH','40.26,44.029,84.289')]
    [TestCase('TestJ','0,65,65')]
    [TestCase('TestK','0.6,45,45.6')]

    procedure Test2( AValue1 : double; AValue2 : double;AExpected : double);
  end;

implementation

procedure UnitTest_MathsFM.Setup;
begin
  MathsFM.Form3:=TForm3.Create(nil);
end;

procedure UnitTest_MathsFM.TearDown;
begin
  MathsFM.Form3.Free;
end;

procedure UnitTest_MathsFM.Test1;
begin
end;

procedure UnitTest_MathsFM.Test2( AValue1 : double; AValue2 : double;AExpected : double);
var
  results: double;
begin
  results:=MathsFM.Form3.calculate_sum(AValue1,AValue2);
  Assert.AreEqual(AExpected,results,'There is some error in calculation!')
end;

initialization
  TDUnitX.RegisterTestFixture(UnitTest_MathsFM);

end.
