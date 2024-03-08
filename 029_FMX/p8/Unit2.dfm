object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 48
    Top = 40
    Width = 320
    Height = 120
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object Button1: TButton
    Left = 48
    Top = 166
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 166
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 392
    Top = 8
    Width = 75
    Height = 25
    Caption = 'send'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 5
    OnClick = Button5Click
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 64
  end
  object SaveDialog1: TSaveDialog
    Left = 392
    Top = 184
  end
  object XMLDocument1: TXMLDocument
    Left = 424
    Top = 120
  end
  object SaveDialog2: TSaveDialog
    Left = 448
    Top = 184
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 280
    Top = 8
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 200
    Top = 16
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DataSet = frxDBDataset2
    DataSetName = 'frxDBDataset2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45254.633053229170000000
    ReportOptions.LastChange = 45254.638932407400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1userid: TfrxMemoView
          Left = 34.015770000000010000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'userid'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."userid"]')
        end
        object frxDBDataset1name: TfrxMemoView
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."name"]')
        end
        object frxDBDataset1email: TfrxMemoView
          Left = 374.173470000000000000
          Top = 22.677180000000010000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'email'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."email"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'ID')
        end
        object Memo2: TfrxMemoView
          Left = 177.637910000000000000
          Top = 15.118120000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Name')
        end
        object Memo3: TfrxMemoView
          Left = 374.173470000000000000
          Top = 15.118120000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Email')
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 104
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 152
    Top = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DRIVER={PostgreSQL ODBC Driver(UNICODE)};DATABASE=TestDB;SER' +
      'VER=127.0.0.1;PORT=5432;UID=postgres;SSLmode=disable;ReadOnly=0;' +
      'Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;RowVersioning=0;Show' +
      'SystemTables=0;Fetch=100;UnknownSizes=0;MaxVarcharSize=255;MaxLo' +
      'ngVarcharSize=8190;Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLon' +
      'gVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSy' +
      'sTablePrefixes=;LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0' +
      ';BI=0;ByteaAsLongVarBinary=1;UseServerSidePrepare=1;LowerCaseIde' +
      'ntifier=0;D6=-101;OptionalErrors=0;FetchRefcursors=0;XaOpt=1";In' +
      'itial Catalog=TestDB'
    LoginPrompt = False
    Left = 56
    Top = 8
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 128
    Top = 184
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Fields.Strings = (
      'a')
    Left = 24
    Top = 184
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = ADOTable1
    BCDToCurrency = False
    Left = 8
    Top = 136
  end
end
