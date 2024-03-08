object ReceiveFM: TReceiveFM
  Left = 0
  Top = 0
  Caption = 'Messanger'
  ClientHeight = 241
  ClientWidth = 319
  Color = clBtnFace
  Constraints.MaxHeight = 280
  Constraints.MaxWidth = 335
  Constraints.MinHeight = 280
  Constraints.MinWidth = 335
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlmessage: TPanel
    Left = 0
    Top = 8
    Width = 329
    Height = 241
    Caption = 'pnlmessage'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lblUser: TLabel
      Left = 136
      Top = 12
      Width = 41
      Height = 16
      Caption = 'User 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 8
      Top = 34
      Width = 305
      Height = 145
      ReadOnly = True
      TabOrder = 0
    end
    object txtsend: TEdit
      Left = 8
      Top = 193
      Width = 226
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Message'
    end
    object btnSend: TButton
      Left = 240
      Top = 192
      Width = 75
      Height = 28
      Caption = 'Send'
      TabOrder = 2
      OnClick = btnSendClick
    end
  end
end
