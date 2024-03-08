object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 35
    Width = 505
    Height = 201
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 505
    Height = 29
    ButtonHeight = 29
    Caption = 'ToolBar1'
    TabOrder = 1
    ExplicitTop = -3
    DesignSize = (
      505
      29)
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 29
      Action = TabBack
      TabOrder = 0
    end
    object Button2: TButton
      Left = 75
      Top = 0
      Width = 75
      Height = 29
      Action = TabNext
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 112
    Top = 72
    object TabNext: TAction
      Category = 'Tab'
      Caption = 'TabNext'
    end
    object TabBack: TAction
      Category = 'Tab'
      Caption = 'TabBack'
    end
  end
end
