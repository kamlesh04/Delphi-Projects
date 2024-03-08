object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 226
  Width = 270
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Extended Properties="DRIVER={PostgreSQL ODBC Driver(UNICODE)};DA' +
      'TABASE=TestDB;SERVER=127.0.0.1;PORT=5432;UID=postgres;SSLmode=di' +
      'sable;ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;Row' +
      'Versioning=0;ShowSystemTables=0;Fetch=100;UnknownSizes=0;MaxVarc' +
      'harSize=255;MaxLongVarcharSize=8190;Debug=0;CommLog=0;UseDeclare' +
      'Fetch=0;TextAsLongVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=' +
      '1;Parse=0;ExtraSysTablePrefixes=;LFConversion=1;UpdatableCursors' +
      '=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;UseServerSidePrepa' +
      're=1;LowerCaseIdentifier=0;D6=-101;OptionalErrors=0;FetchRefcurs' +
      'ors=0;XaOpt=1";Initial Catalog=TestDB'
    LoginPrompt = False
    Provider = 'MSDASQL'
    Left = 16
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT UserID, Name, Email  FROM users;')
    Left = 72
    Top = 72
    object ADOQuery1userid: TAutoIncField
      FieldName = 'userid'
      ReadOnly = True
    end
    object ADOQuery1name: TWideStringField
      FieldName = 'name'
      Size = 255
    end
    object ADOQuery1email: TWideStringField
      FieldName = 'email'
      Size = 225
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Left = 144
    Top = 72
  end
end
