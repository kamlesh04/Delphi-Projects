object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DRIVER={PostgreSQL ODBC Driver(UNICODE)};DATABASE=TestDB;SER' +
      'VER=127.0.0.1;PORT=5432;UID=postgres;SSLmode=disable;ReadOnly=0;' +
      'Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;RowVersioning=0;Show' +
      'SystemTables=0;Fetch=100;UnknownSizes=0;MaxVarcharSize=255;MaxLo' +
      'ngVarcharSize=8190;Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLon' +
      'gVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSy' +
      'sTablePrefixes=;LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0' +
      ';BI=0;ByteaAsLongVarBinary=1;UseServerSidePrepare=1;LowerCaseIde' +
      'ntifier=0;D6=-101;OptionalErrors=0;FetchRefcursors=0;XaOpt=1";In' +
      'itial Catalog=TestDB'
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Left = 144
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select UserId, Name, Email from  users;')
    Left = 80
    Top = 88
  end
end
