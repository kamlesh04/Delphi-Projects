inherited frmSecondForm: TfrmSecondForm
  Caption = 'Second Form'
  OnClick = nil
  TextHeight = 15
  object pnlMain: TPanel
    Left = 160
    Top = 72
    Width = 257
    Height = 73
    TabOrder = 1
    object btnClickMe: TButton
      Left = 80
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Click Me'
      TabOrder = 0
      OnClick = btnClickMeClick
    end
  end
end
