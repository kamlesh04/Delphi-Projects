object dmMain: TdmMain
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=VehiclePoolingSystem;Data Source=HP'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 200
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'select * from Ride')
    Left = 328
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 432
    Top = 120
  end
end
