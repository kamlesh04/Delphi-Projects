object frmMainForm: TfrmMainForm
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnShowForm: TButton
    Left = 168
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Show First Form'
    TabOrder = 0
    OnClick = btnShowFormClick
  end
  object btnSecondForm: TButton
    Left = 320
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Show Second Form'
    TabOrder = 1
    OnClick = btnSecondFormClick
  end
end
