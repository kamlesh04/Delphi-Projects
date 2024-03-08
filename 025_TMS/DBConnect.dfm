object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 326
  Width = 304
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'planner_tbl'
    Left = 16
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 80
  end
  object DBDaySource1: TDBDaySource
    AutoIncKey = False
    DataSource = DataSource1
    ResourceMap = <>
    KeyField = 'Id'
    ReadOnly = False
    UpdateByQuery = False
    DateFormat = 'mm/dd/yyyy'
    Mode = dmMultiDay
    MinTimeField = 'Start_Time'
    MaxTimeField = 'End_Time'
    Left = 128
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM planner_tbl p;')
    Left = 200
    Top = 88
  end
end
