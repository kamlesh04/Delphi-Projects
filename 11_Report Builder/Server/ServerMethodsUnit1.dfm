object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT concat(First_name,'#39' '#39',Last_Name) as Name,City,Mobile,Emai' +
        'l,a.Account_no,Current_balance,Comment FROM customer_details c'
      'inner join account_details a  on a.Account_no=c.Account_no;')
    Left = 64
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Left = 136
    Top = 72
  end
end
