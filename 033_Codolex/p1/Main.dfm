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
  object Button1: TButton
    Left = 216
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 24
    Width = 505
    Height = 177
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 96
    Top = 264
    Width = 75
    Height = 25
    Caption = 'FillGrid'
    TabOrder = 2
    OnClick = Button2Click
  end
  object btnRest: TButton
    Left = 96
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Rest'
    TabOrder = 3
    OnClick = btnRestClick
  end
  object Memo1: TMemo
    Left = 208
    Top = 304
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object CodolexProject1: TCodolexProject
    CodolexProject = 'TestCodolex'
    ProjectGUID = '{D55A1982-14FE-4D32-A7C7-F3502E6C9733}'
    Left = 384
    Top = 240
  end
  object CodolexDataSet1: TCodolexDataSet
    Active = True
    DataEntity = 'TestCodolex.DataSource.TestDataModule.IEMPLOYEE1'
    Project = CodolexProject1
    Left = 392
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = CodolexDataSet1
    Left = 496
    Top = 264
  end
  object FDConnection1: TFDConnection
    Left = 496
    Top = 328
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 552
    Top = 232
  end
end
