object frmConnection: TfrmConnection
  Left = 0
  Top = 0
  Caption = 'Connection'
  ClientHeight = 319
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 319
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 32
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblHost: TLabel
      Left = 16
      Top = 27
      Width = 22
      Height = 13
      Caption = 'Host'
    end
    object lblPort: TLabel
      Left = 16
      Top = 75
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object lblUsername: TLabel
      Left = 16
      Top = 131
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object lblPassword: TLabel
      Left = 16
      Top = 187
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object txtHost: TEdit
      Left = 88
      Top = 24
      Width = 209
      Height = 33
      TabOrder = 0
      TextHint = 'Host'
    end
    object txtPort: TEdit
      Left = 88
      Top = 72
      Width = 57
      Height = 33
      NumbersOnly = True
      TabOrder = 1
      TextHint = 'port'
    end
    object txtUserName: TEdit
      Left = 88
      Top = 128
      Width = 209
      Height = 33
      TabOrder = 2
      TextHint = 'Username'
    end
    object txtPassword: TEdit
      Left = 88
      Top = 184
      Width = 209
      Height = 33
      TabOrder = 3
      TextHint = 'Password'
    end
    object btnSave: TButton
      Left = 128
      Top = 248
      Width = 105
      Height = 33
      Caption = 'Save'
      TabOrder = 4
      OnClick = btnSaveClick
    end
  end
end
