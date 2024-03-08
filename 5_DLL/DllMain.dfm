object DLLFM: TDLLFM
  Left = 219
  Top = 115
  Caption = 'DLLFM'
  ClientHeight = 316
  ClientWidth = 534
  Color = clBtnFace
  Constraints.MaxHeight = 355
  Constraints.MaxWidth = 550
  Constraints.MinHeight = 355
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 8
    Top = 8
    Width = 521
    Height = 73
    BorderStyle = bsSingle
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object lblHeader: TLabel
      Left = 152
      Top = 19
      Width = 224
      Height = 24
      Caption = '_Currency Convertor_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlBody: TPanel
    Left = 8
    Top = 70
    Width = 521
    Height = 241
    BorderStyle = bsSingle
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object lblFrom: TLabel
      Left = 80
      Top = 34
      Width = 38
      Height = 21
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblTo: TLabel
      Left = 384
      Top = 34
      Width = 19
      Height = 21
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblConvert: TLabel
      Left = 240
      Top = 124
      Width = 32
      Height = 47
      Caption = #8652
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -40
      Font.Name = 'Cambria'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      OnClick = lblConvertClick
      OnMouseEnter = lblConvertMouseEnter
      OnMouseLeave = lblConvertMouseLeave
    end
    object txtresults: TEdit
      Left = 288
      Top = 135
      Width = 217
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object cbFrom: TComboBox
      Left = 16
      Top = 69
      Width = 209
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Select From Currency'
      OnChange = cbFromChange
      Items.Strings = (
        'INR'
        'USD'
        'CAD'
        'EUR'
        'JPY'
        'GBP')
    end
    object cbTo: TComboBox
      Left = 288
      Top = 69
      Width = 217
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Select To Currency'
      OnChange = cbToChange
      Items.Strings = (
        'INR'
        'USD'
        'CAD'
        'EUR'
        'JPY'
        'GBP')
    end
    object txtFrom: TEdit
      Left = 16
      Top = 135
      Width = 209
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
      TextHint = 'Enter Amount'
      OnChange = txtFromChange
    end
  end
end
