object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 232
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Left = 120
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM customer_details c')
    Left = 32
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM account_details a;')
    Left = 32
    Top = 152
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = ADOQuery2
    Left = 112
    Top = 152
  end
end
