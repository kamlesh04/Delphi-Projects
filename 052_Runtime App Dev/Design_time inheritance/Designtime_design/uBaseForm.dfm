object frmBaseForm: TfrmBaseForm
  Left = 0
  Top = 0
  Caption = 'Base Form'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = btnClearClick
  TextHeight = 15
  object pnlButtons: TPanel
    Left = 0
    Top = 362
    Width = 628
    Height = 80
    Align = alBottom
    TabOrder = 0
    object lblNote: TLabel
      Left = 160
      Top = 48
      Width = 299
      Height = 20
      Caption = 'Note : These are the buttons of Base form.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3937500
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAdd: TButton
      Left = 200
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnClear: TButton
      Left = 304
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 1
      OnClick = btnClearClick
    end
  end
end
