object HelloForm: THelloForm
  Left = 0
  Top = 0
  Caption = 'HelloForm'
  ClientHeight = 359
  ClientWidth = 383
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenuHighlight
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lblName: TLabel
    Left = 72
    Top = 64
    Width = 33
    Height = 16
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ba: TImage
    Left = 270
    Top = 24
    Width = 105
    Height = 169
  end
  object lblEmail: TLabel
    Left = 72
    Top = 104
    Width = 31
    Height = 16
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTerms: TLabel
    Left = 96
    Top = 210
    Width = 103
    Height = 13
    Caption = 'Terms and Conditions'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = lblTermsClick
  end
  object btnHello: TButton
    Left = 147
    Top = 240
    Width = 75
    Height = 48
    Caption = 'Submit'
    TabOrder = 0
    OnClick = btnHelloClick
  end
  object chkTerms: TCheckBox
    Left = 74
    Top = 201
    Width = 16
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object strName: TStaticText
    Left = 126
    Top = 8
    Width = 96
    Height = 37
    Caption = 'Sign Up'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMoneyGreen
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object txtName: TEdit
    Left = 118
    Top = 61
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object rdlMale: TRadioButton
    Left = 72
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Male'
    TabOrder = 4
  end
  object strText: TStaticText
    Left = 275
    Top = 81
    Width = 98
    Height = 20
    Caption = 'No Image Found'
    TabOrder = 5
  end
  object rdlFemale: TRadioButton
    Left = 126
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Female'
    TabOrder = 6
  end
  object txtEmail: TEdit
    Left = 118
    Top = 101
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
