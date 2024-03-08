object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ImgDraw: TImage
    Left = 24
    Top = 24
    Width = 265
    Height = 177
    OnMouseDown = ImgDrawMouseDown
    OnMouseMove = ImgDrawMouseMove
    OnMouseUp = ImgDrawMouseUp
  end
  object ImgDisplay: TImage
    Left = 24
    Top = 224
    Width = 265
    Height = 210
  end
  object lblHead: TLabel
    Left = 16
    Top = 4
    Width = 53
    Height = 15
    Caption = 'Draw here'
  end
  object btnSave: TButton
    Left = 336
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object btnShow: TButton
    Left = 320
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 1
    OnClick = btnShowClick
  end
  object btnclr: TButton
    Left = 416
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 2
    OnClick = btnclrClick
  end
  object btnClear: TButton
    Left = 432
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 3
    OnClick = btnClearClick
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=root;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="Driver=MySQL ODBC 5.2 ANSI Driver;' +
      'SERVER=127.0.0.1;UID=root;PWD=root;DATABASE=vehiclepoolingsystem' +
      ';PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=vehiclepoolingsyst' +
      'em'
    LoginPrompt = False
    Left = 576
    Top = 16
  end
  object ADOTable: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'img'
    Left = 496
    Top = 16
  end
  object ADOQuery: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select img from img order by id desc limit 1;')
    Left = 440
    Top = 16
  end
end
