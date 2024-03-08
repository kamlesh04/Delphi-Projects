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
  object lblResult: TLabel
    Left = 232
    Top = 40
    Width = 11
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 80
    Top = 88
    Width = 75
    Height = 25
    Caption = 'DIVISION'
    TabOrder = 0
    OnClick = Button1Click
  end
  object txtNum1: TEdit
    Left = 64
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Enter Num 1'
  end
  object txtNum2: TEdit
    Left = 64
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Enter Num 2'
  end
end
