object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 201
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TCurvyPanel
    Left = 0
    Top = 0
    Width = 331
    Height = 201
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    object lblResults: TW7ActiveLabel
      Left = 120
      Top = 168
      Width = 3
      Height = 15
      MouseInColor = 15026695
      MouseOutColor = 5577749
      MouseInCursor = crHandPoint
      MouseOutCursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5577749
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object TW7ActiveLabel
      Left = 184
      Top = 168
      Width = 8
      Height = 15
      MouseInColor = 15026695
      MouseOutColor = 5577749
      MouseInCursor = crHandPoint
      MouseOutCursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5577749
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnCal: TButton
      Left = 120
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Calculate'
      TabOrder = 0
      OnClick = btnCalClick
    end
    object txtVal1: TDBAdvEdit
      Left = 64
      Top = 24
      Width = 185
      Height = 21
      EmptyText = 'First Value'
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = ''
      Visible = True
      Version = '4.0.3.5'
    end
    object txtVal2: TDBAdvEdit
      Left = 64
      Top = 72
      Width = 185
      Height = 21
      EmptyText = 'Second Value'
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 2
      Text = ''
      Visible = True
      Version = '4.0.3.5'
    end
  end
end
