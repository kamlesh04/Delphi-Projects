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
  object btnExpBitMap: TButton
    Left = 224
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Export to jpng'
    TabOrder = 0
    OnClick = btnExpBitMapClick
  end
  object pbMain: TProgressBar
    Left = 112
    Top = 79
    Width = 353
    Height = 21
    TabOrder = 1
  end
  object FPdf1: TFPdf
    Active = True
    FileName = 'C:\Users\mangi\Downloads\Low-Code and Low Code in Delphi.pdf'
    Left = 240
    Top = 136
  end
end
