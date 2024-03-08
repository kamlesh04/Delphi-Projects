object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 226
  Width = 270
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Test_DB;Data Source=DESKTOP-5F8IOC9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM customer_details c'
      'inner join account_details a on a.Account_no=c.Account_no')
    Left = 72
    Top = 72
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Left = 144
    Top = 72
  end
end
