object frmMainForm: TfrmMainForm
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnShowForm: TButton
    Left = 144
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Show First Form'
    TabOrder = 0
    OnClick = btnShowFormClick
  end
  object btnSecond: TButton
    Left = 312
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Show Second Form'
    TabOrder = 1
    OnClick = btnSecondClick
  end
end
