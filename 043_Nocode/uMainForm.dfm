object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = -5
    Top = 120
    Width = 633
    Height = 273
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
        FieldName = 'EMP_NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIRST_NAME'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST_NAME'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HIRE_DATE'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPT_NO'
        Width = 102
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 0
    Text = '1'
    TextHint = 'Emp No.'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 399
    Width = 628
    Height = 43
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 6
    ExplicitTop = 390
    ExplicitWidth = 622
  end
  object Edit3: TEdit
    Left = 336
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'dsf'
    TextHint = 'Last Name'
  end
  object Edit6: TEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 23
    TabOrder = 3
    Text = '28'
    TextHint = 'Dept No'
  end
  object Edit2: TEdit
    Left = 176
    Top = 24
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'sdf'
    TextHint = 'First Name'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 80
    Width = 121
    Height = 23
    Date = -2.000000000000000000
    Time = -2.000000000000000000
    TabOrder = 4
  end
  object Button1: TButton
    Left = 352
    Top = 64
    Width = 75
    Height = 25
    Action = Action2
    TabOrder = 7
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 628
    Height = 399
    Align = alClient
    TabOrder = 8
    Tabs.Strings = (
      'Tab1'
      'Tab1'
      'Tab1'
      'Tab1')
    TabIndex = 0
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\KamleshGaonkar\kamlesh\Practice\LowCode\Res\db\emplo' +
        'yee.fdb'
      'User_Name=sysdba'
      'Password=admin'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 552
    Top = 24
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'EMP_NO'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'EMPLOYEE1'
    Left = 560
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 488
    Top = 96
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 476
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'EMP_NO'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'FIRST_NAME'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'LAST_NAME'
      Control = Edit3
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DEPT_NO'
      Control = Edit6
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'HIRE_DATE'
      Control = DateTimePicker1
      Track = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 304
    Top = 224
  end
  object ActionList1: TActionList
    Left = 576
    Top = 152
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DataSource1
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
end
