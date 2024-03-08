object ModelData: TModelData
  Height = 409
  Width = 608
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    ConnectionName = 'IBLiteAppWiz'
    Params.Strings = (
      
        'Database=D:\KamleshGaonkar\kamlesh\Practice\LowCode\Res\db\emplo' +
        'yee.fdb'
      'User_Name=sysdba'
      'Password=admin'
      'DriverID=FB')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 70
    Top = 30
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 290
    Top = 30
  end
  object FDQueryGrid: TFDQuery
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    IndexesActive = False
    ConnectionName = 'IBLiteAppWiz'
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 175
    Top = 108
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDQueryListView
    ScopeMappings = <>
    Left = 170
    Top = 190
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQueryGrid
    ScopeMappings = <>
    Left = 70
    Top = 190
  end
  object FDQueryListView: TFDQuery
    IndexesActive = False
    ConnectionName = 'IBLiteAppWiz'
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 275
    Top = 108
  end
end
