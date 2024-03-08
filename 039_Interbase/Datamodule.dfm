object dmMain: TdmMain
  Height = 359
  Width = 563
  PixelsPerInch = 120
  object IBDatabase1: TIBDatabase
    DatabaseName = 'D:\KamleshGaonkar\kamlesh\Practice\Interbase\EMPLOYEE.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 30
    Top = 30
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 110
    Top = 30
  end
  object IBQuery: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from EMPLOYEE')
    PrecommittedReads = False
    Left = 70
    Top = 130
  end
  object DataSource: TDataSource
    DataSet = IBQuery
    Left = 80
    Top = 218
  end
  object DataSource2: TDataSource
    DataSet = FDTable
    Left = 260
    Top = 208
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=D:\KamleshGaonkar\kamlesh\Practice\Interbase\EMPLOYEE.G' +
        'DB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    LoginPrompt = False
    Left = 250
    Top = 48
  end
  object FDTable: TFDTable
    IndexFieldNames = 'DEPT_NO'
    MasterSource = DataSource
    MasterFields = 'DEPT_NO'
    Connection = FDConnection
    UpdateOptions.UpdateTableName = 'DEPARTMENT'
    TableName = 'DEPARTMENT'
    Left = 260
    Top = 118
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 370
    Top = 180
  end
end
