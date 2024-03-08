object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'dbplannermonth_tbl'
    Left = 56
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 136
    Top = 72
  end
end
