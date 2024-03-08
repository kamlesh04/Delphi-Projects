object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnGetTypes: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Get Types'
    TabOrder = 0
    OnClick = btnGetTypesClick
  end
  object Memo: TMemo
    Left = 0
    Top = 64
    Width = 625
    Height = 385
    Lines.Strings = (
      'Memo')
    TabOrder = 1
  end
end
