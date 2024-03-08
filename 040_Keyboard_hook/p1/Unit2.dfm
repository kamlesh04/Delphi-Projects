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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 40
    Width = 505
    Height = 191
    OnMouseMove = Image1MouseMove
  end
  object SpeedButton1: TSpeedButton
    Left = 40
    Top = 8
    Width = 57
    Height = 22
    Caption = 'Erase'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 96
    Top = 8
    Width = 57
    Height = 22
    Caption = 'Draw'
    OnClick = SpeedButton2Click
  end
end
