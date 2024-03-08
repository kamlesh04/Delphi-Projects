object CsvFM: TCsvFM
  Left = 0
  Top = 0
  Caption = 'Load CSV'
  ClientHeight = 312
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grdCities: TStringGrid
    Left = 8
    Top = 8
    Width = 558
    Height = 217
    TabOrder = 0
    OnClick = grdCitiesClick
  end
  object btnLoad: TButton
    Left = 48
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Load Data'
    TabOrder = 1
    OnClick = btnLoadClick
  end
  object btnClear: TButton
    Left = 400
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 2
    OnClick = btnClearClick
  end
  object btnSave: TButton
    Left = 224
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Export'
    TabOrder = 3
    OnClick = btnSaveClick
  end
end
