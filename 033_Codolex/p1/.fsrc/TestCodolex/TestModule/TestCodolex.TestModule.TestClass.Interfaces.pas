unit TestCodolex.TestModule.TestClass.Interfaces;

interface

uses
  Codolex.Collections,
  TestCodolex.DataSource.TestDataModule;

type
  ITestClass = interface
    ['{1C30F3DB-420C-4EBC-8238-5DF71A84A524}']
  
    function FillGrid: ICodolexList<TestCodolex.DataSource.TestDataModule.IEMPLOYEE1>;
    procedure GetData(const Name: string);
    function RestApi: string;
  end;

implementation

end.