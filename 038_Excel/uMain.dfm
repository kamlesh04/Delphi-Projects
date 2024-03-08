object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 402
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object btnExport: TButton
    Left = 32
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Export to Excel'
    TabOrder = 0
    OnClick = btnExportClick
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 47
    Width = 417
    Height = 355
    Align = alCustom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnImport: TButton
    Left = 448
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Import'
    TabOrder = 2
    OnClick = btnImportClick
  end
  object StringGrid: TStringGrid
    Left = 416
    Top = 47
    Width = 357
    Height = 355
    TabOrder = 3
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object OpenDialog: TOpenDialog
    Left = 152
    Top = 8
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=D:\KamleshGaonkar\kamlesh\Practice\LowCode\Res\db\emplo' +
        'yee.fdb'
      'User_Name=sysdba'
      'Password=admin'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 272
    Top = 8
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'EMP_NO'
    Connection = FDConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.UpdateTableName = 'EMPLOYEE1'
    TableName = 'EMPLOYEE1'
    Left = 320
    object FDTable1EMP_NO: TSmallintField
      DisplayWidth = 12
      FieldName = 'EMP_NO'
      Origin = 'EMP_NO'
      Required = True
    end
    object FDTable1FIRST_NAME: TStringField
      DisplayWidth = 18
      FieldName = 'FIRST_NAME'
      Origin = 'FIRST_NAME'
      Required = True
      Size = 15
    end
    object FDTable1LAST_NAME: TStringField
      DisplayWidth = 15
      FieldName = 'LAST_NAME'
      Origin = 'LAST_NAME'
      Required = True
    end
    object FDTable1HIRE_DATE: TSQLTimeStampField
      DisplayWidth = 17
      FieldName = 'HIRE_DATE'
      Origin = 'HIRE_DATE'
      Required = True
    end
    object FDTable1DEPT_NO: TStringField
      DisplayWidth = 9
      FieldName = 'DEPT_NO'
      Origin = 'DEPT_NO'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 216
    Top = 8
  end
end
