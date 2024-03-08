object DataModule4: TDataModule4
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 291
  Width = 285
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'MSDASQL.1'
  end
  object ADOQueryPopulate: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Customer_id,First_name,Last_Name,City,Mobile,Email,pincod' +
        'e,Taluka,a.Account_no,Account_type,Creation_date,current_balance' +
        ',UserID FROM customer_details c'
      'inner join account_details a on a.Account_no=c.Account_no;')
    Left = 80
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryPopulate
    Left = 176
    Top = 96
  end
  object ADOQueryupdate: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource3
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Customer_id,First_name,Last_Name,City,Mobile,Email,pincod' +
        'e,Taluka,a.Account_no,Account_type,Creation_date,current_balance' +
        ',UserID FROM customer_details c'
      'inner join account_details a on a.Account_no=c.Account_no;')
    Left = 72
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryinsert
    Left = 176
    Top = 152
  end
  object ADOQueryinsert: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Customer_id,First_name,Last_Name,City,Mobile,Email,pincod' +
        'e,Taluka,a.Account_no,Account_type,Creation_date,current_balance' +
        ',UserID FROM customer_details c'
      'inner join account_details a on a.Account_no=c.Account_no;')
    Left = 72
    Top = 216
  end
  object DataSource3: TDataSource
    DataSet = ADOQueryinsert
    Left = 176
    Top = 224
  end
end
