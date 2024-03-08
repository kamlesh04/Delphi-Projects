object frmSignup: TfrmSignup
  Width = 640
  Height = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clLime
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  OnCreate = WebFormCreate
  object lblLogIn: TWebLabel
    Left = 224
    Top = 304
    Width = 119
    Height = 15
    Cursor = crHandPoint
    Caption = 'Already have account?'
    Color = clBtnFace
    ElementID = 'lg'
    ElementFont = efCSS
    ElementPosition = epIgnore
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    HeightPercent = 100.000000000000000000
    ParentFont = False
    Transparent = False
    WidthPercent = 100.000000000000000000
    OnClick = lblLogInClick
  end
  object txtName: TWebEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 22
    ChildOrder = 3
    ElementID = 'name'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    TextHint = 'Name'
    WidthPercent = 100.000000000000000000
  end
  object txtEmail: TWebEdit
    Left = 72
    Top = 124
    Width = 121
    Height = 22
    ChildOrder = 3
    ElementID = 'email'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    TextHint = 'Email'
    WidthPercent = 100.000000000000000000
  end
  object txtPassword: TWebEdit
    Left = 72
    Top = 168
    Width = 121
    Height = 22
    ChildOrder = 3
    ElementID = 'password'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    TextHint = 'Password'
    WidthPercent = 100.000000000000000000
  end
  object txtConfirmPass: TWebEdit
    Left = 72
    Top = 208
    Width = 121
    Height = 22
    ChildOrder = 3
    ElementID = 'confirmpass'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    TextHint = 'Confirm password'
    WidthPercent = 100.000000000000000000
  end
  object cbTerms: TWebCheckBox
    Left = 72
    Top = 248
    Width = 113
    Height = 22
    Caption = 'Terms'
    ChildOrder = 4
    ElementID = 'terms'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object btnSubmit: TWebButton
    Left = 97
    Top = 304
    Width = 96
    Height = 25
    ButtonType = 'Submit'
    Caption = 'Submit'
    ChildOrder = 5
    ElementID = 'submitt'
    ElementPosition = epIgnore
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnSubmitClick
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
    EntitySetName = 'admin'
    Connection = XDataWebConnection1
    Left = 352
    Top = 168
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
end
