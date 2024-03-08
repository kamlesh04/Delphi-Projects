object CaloriesFM: TCaloriesFM
  Left = 219
  Top = 230
  Caption = 'CaloriesFM'
  ClientHeight = 314
  ClientWidth = 521
  Color = clBtnFace
  Constraints.MaxHeight = 353
  Constraints.MaxWidth = 537
  Constraints.MinHeight = 353
  Constraints.MinWidth = 537
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDtls: TPanel
    Left = 0
    Top = 32
    Width = 322
    Height = 281
    BevelInner = bvRaised
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object lblAge: TLabel
      Left = 16
      Top = 40
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object lblHeight: TLabel
      Left = 16
      Top = 80
      Width = 31
      Height = 13
      Caption = 'Height'
    end
    object lblWeight: TLabel
      Left = 16
      Top = 120
      Width = 34
      Height = 13
      Caption = 'Weight'
    end
    object btnCal: TButton
      Left = 88
      Top = 200
      Width = 121
      Height = 25
      Caption = 'Calculate'
      TabOrder = 0
      OnClick = btnCalClick
    end
    object txtAge: TEdit
      Left = 88
      Top = 40
      Width = 153
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object txtHeight: TEdit
      Left = 88
      Top = 77
      Width = 153
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object txtWeight: TEdit
      Left = 88
      Top = 117
      Width = 153
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
    object rdlMale: TRadioButton
      Left = 16
      Top = 160
      Width = 113
      Height = 17
      Caption = 'Male'
      TabOrder = 4
      OnClick = rdlMaleClick
    end
    object rdlFemale: TRadioButton
      Left = 88
      Top = 160
      Width = 58
      Height = 17
      Caption = 'Female'
      TabOrder = 5
      OnClick = rdlFemaleClick
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 520
    Height = 41
    BevelInner = bvRaised
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object lblHead: TLabel
      Left = 176
      Top = 10
      Width = 182
      Height = 24
      Caption = 'Calories You Need'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlResults: TPanel
    Left = 320
    Top = 40
    Width = 200
    Height = 273
    BevelInner = bvRaised
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object lblResultHead: TLabel
      Left = 8
      Top = 74
      Width = 192
      Height = 21
      Caption = 'Total Calories Per Day '
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblResult: TLabel
      Left = 72
      Top = 130
      Width = 12
      Height = 33
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
