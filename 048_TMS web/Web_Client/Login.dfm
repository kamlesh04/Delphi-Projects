object frmLogin: TfrmLogin
  Width = 872
  Height = 690
  OnCreate = WebFormCreate
  object lblSignUp: TWebLabel
    Left = 104
    Top = 217
    Width = 48
    Height = 20
    Cursor = crHandPoint
    Caption = 'SignUp'
    ElementID = 'sp'
    HeightPercent = 100.000000000000000000
    Visible = False
    WidthPercent = 100.000000000000000000
    OnClick = lblSignUpClick
  end
  object txtUserName: TWebEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 22
    ChildOrder = 3
    ElementID = 'name'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    TextHint = 'UserName'
    Visible = False
    WidthPercent = 100.000000000000000000
  end
  object txtPassword: TWebEdit
    Left = 72
    Top = 112
    Width = 121
    Height = 22
    ChildOrder = 3
    ElementID = 'password'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    TextHint = 'Password'
    Visible = False
    WidthPercent = 100.000000000000000000
  end
  object btnLogin: TWebButton
    Left = 81
    Top = 168
    Width = 96
    Height = 25
    ButtonType = 'Submit'
    Caption = 'Login'
    ChildOrder = 5
    ElementID = 's'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    Visible = False
    WidthPercent = 100.000000000000000000
    OnClick = btnLoginClick
  end
  object XDataWebConnection1: TXDataWebConnection
    URL = 'http://192.168.1.24:2001/tms/xdata'
    Left = 512
    Top = 80
  end
  object WebDataSource1: TWebDataSource
    DataSet = XDataWebDataSet2
    Left = 272
    Top = 152
  end
  object XDataWebDataSet1: TXDataWebDataSet
    EntitySetName = 'users'
    Connection = XDataWebConnection1
    Left = 368
    Top = 88
    object XDataWebDataSet1VehicleID: TXDataWebEntityField
      FieldName = 'VehicleID'
    end
    object XDataWebDataSet1UserID: TIntegerField
      FieldName = 'UserID'
      Required = True
    end
    object XDataWebDataSet1Name: TStringField
      FieldName = 'Name'
      Required = True
      Size = 255
    end
    object XDataWebDataSet1Username: TStringField
      FieldName = 'Username'
      Required = True
      Size = 255
    end
    object XDataWebDataSet1Password: TStringField
      FieldName = 'Password'
      Required = True
      Size = 255
    end
    object XDataWebDataSet1Email: TStringField
      FieldName = 'Email'
      Required = True
      Size = 225
    end
    object XDataWebDataSet1UserType: TStringField
      FieldName = 'UserType'
      Required = True
      Size = 225
    end
    object XDataWebDataSet1PhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Required = True
      Size = 15
    end
    object XDataWebDataSet1Status: TStringField
      FieldName = 'Status'
      Required = True
      Size = 255
    end
  end
  object XDataWebDataSet2: TXDataWebDataSet
    AfterOpen = XDataWebDataSet2AfterOpen
    EntitySetName = 'admin'
    Connection = XDataWebConnection1
    Left = 376
    Top = 176
    object XDataWebDataSet2AdminID: TIntegerField
      FieldName = 'AdminID'
      Required = True
    end
    object XDataWebDataSet2Name: TStringField
      FieldName = 'Name'
      Required = True
      Size = 255
    end
    object XDataWebDataSet2Username: TStringField
      FieldName = 'Username'
      Required = True
      Size = 255
    end
    object XDataWebDataSet2Password: TStringField
      FieldName = 'Password'
      Required = True
      Size = 255
    end
    object XDataWebDataSet2Email: TStringField
      FieldName = 'Email'
      Required = True
      Size = 225
    end
  end
  object XDataWebClient1: TXDataWebClient
    Connection = XDataWebConnection1
    Left = 512
    Top = 176
  end
  object SphinxWebLogin1: TSphinxWebLogin
    Authority = 'http://localhost:2001/tms/sphinx'
    ClientId = 'web'
    Scope = 'openid email'
    RedirectUri = 'http://localhost:8000/WebPage/WebPage.html'
    OnUserLoggedIn = SphinxWebLogin1UserLoggedIn
    Left = 184
    Top = 288
  end
end
