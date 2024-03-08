object SenderFM: TSenderFM
  Left = 0
  Top = 0
  Caption = 'Messanger'
  ClientHeight = 241
  ClientWidth = 324
  Color = clBtnFace
  Constraints.MaxHeight = 280
  Constraints.MaxWidth = 340
  Constraints.MinHeight = 280
  Constraints.MinWidth = 340
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 8
    Width = 323
    Height = 233
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lblUser: TLabel
      Left = 128
      Top = 11
      Width = 41
      Height = 16
      Caption = 'User 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 8
      Top = 33
      Width = 298
      Height = 136
      ReadOnly = True
      TabOrder = 0
    end
    object Send: TButton
      Left = 223
      Top = 191
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 1
      OnClick = SendClick
    end
    object txtsend: TEdit
      Left = 8
      Top = 191
      Width = 209
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Message'
    end
  end
end
