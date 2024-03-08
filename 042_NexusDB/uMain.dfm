object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main form'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtID: TEdit
    Left = 200
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'ID'
  end
  object edtFName: TEdit
    Left = 200
    Top = 88
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'First Name'
  end
  object edtLName: TEdit
    Left = 200
    Top = 144
    Width = 121
    Height = 23
    TabOrder = 2
    TextHint = 'Last Name'
  end
  object edtAddress: TEdit
    Left = 200
    Top = 200
    Width = 121
    Height = 23
    TabOrder = 3
    TextHint = 'Address'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 360
    Width = 628
    Height = 82
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 351
    ExplicitWidth = 622
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 248
    Width = 481
    Height = 120
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Address'
        Visible = True
      end>
  end
  object nxServerEngine1: TnxServerEngine
    ServerName = ''
    Options = []
    TableExtension = 'nx1'
    Left = 536
    Top = 16
  end
  object nxTable1: TnxTable
    ActiveRuntime = True
    Database = nxDatabase1
    TableName = 'Employee'
    Left = 552
    Top = 216
  end
  object nxDatabase1: TnxDatabase
    Session = nxSession1
    AliasPath = 'D:\KamleshGaonkar\kamlesh\Practice\NexusDB'
    Left = 552
    Top = 136
  end
  object nxSession1: TnxSession
    ServerEngine = nxServerEngine1
    Left = 536
    Top = 64
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = nxTable1
    ScopeMappings = <>
    Left = 304
    Top = 224
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ID'
      Control = edtID
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FName'
      Control = edtFName
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LName'
      Control = edtLName
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Address'
      Control = edtAddress
      Track = True
    end
  end
  object DataSource1: TDataSource
    DataSet = nxTable1
    Left = 536
    Top = 280
  end
end
