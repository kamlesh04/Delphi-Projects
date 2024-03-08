object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 368
    Top = 120
    Width = 145
    Height = 23
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select  * from users'
    Parameters = <>
    Left = 344
    Top = 200
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Extended Properties="DRIVER={PostgreSQL ODBC Driver(UNICODE)};DA' +
      'TABASE=TestDB;SERVER=127.0.0.1;PORT=5432;UID=postgres;SSLmode=di' +
      'sable;ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;Row' +
      'Versioning=0;ShowSystemTables=0;Fetch=100;UnknownSizes=0;MaxVarc' +
      'harSize=255;MaxLongVarcharSize=8190;Debug=0;CommLog=0;UseDeclare' +
      'Fetch=0;TextAsLongVarchar=1;UnknownsAsLongVarchar=0;BoolsAsChar=' +
      '1;Parse=0;ExtraSysTablePrefixes=;LFConversion=1;UpdatableCursors' +
      '=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;UseServerSidePrepa' +
      're=1;LowerCaseIdentifier=0;D6=-101;OptionalErrors=0;FetchRefcurs' +
      'ors=0;XaOpt=1"'
    Left = 368
    Top = 280
  end
end
