object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBMemo1: TDBMemo
    Left = 48
    Top = 40
    Width = 425
    Height = 321
    DataField = 'DestinationLocation'
    DataSource = dmMain.DataSource1
    TabOrder = 0
  end
end
