object DataModule3: TDataModule3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 277
  Width = 398
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 40
    Top = 16
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'AllCustomer;1'
    Parameters = <>
    Left = 32
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 104
    Top = 104
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CUSTOMER')
    Left = 24
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 88
    Top = 184
  end
end
