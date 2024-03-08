object TestResource1: TTestResource1
  OldCreateOrder = False
  Height = 229
  Width = 369
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\KamleshGaonkar\kamlesh\Practice\LowCode\Res\db\emplo' +
        'yee.fdb'
      'User_Name=sysdba'
      'Password=admin'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'EMP_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'EMPLOYEE1'
    TableName = 'EMPLOYEE1'
    Left = 288
    Top = 24
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 136
    Top = 16
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 176
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    SQL.Strings = (
      'select * from employee1;')
    Left = 32
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 32
    Top = 144
  end
end
