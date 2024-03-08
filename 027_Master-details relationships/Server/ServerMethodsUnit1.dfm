object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 250
  Width = 253
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=DSNBA' +
      'NKINGDB'
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  Customer_Id  FROM customer_details c;'
      '')
    Left = 64
    Top = 72
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADOQuery1
    Left = 144
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT First_name, Last_Name, date_of_birth, City,Mobile, Email,' +
        ' pincode, Taluka, c.Account_no,Account_type,current_balance,Cust' +
        'omer_Id'
      'FROM customer_details c'
      'inner join account_details a on a.Account_no=c.Account_no;')
    Left = 56
    Top = 144
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = ADOQuery2
    Left = 136
    Top = 144
  end
end
