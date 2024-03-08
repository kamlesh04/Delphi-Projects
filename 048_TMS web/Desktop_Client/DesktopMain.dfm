object frmSphinxDemo: TfrmSphinxDemo
  Left = 0
  Top = 0
  Caption = 'Sphinx Demo'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnLaunch: TButton
    Left = 144
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Launch'
    TabOrder = 0
    OnClick = btnLaunchClick
  end
  object Memo: TMemo
    Left = 112
    Top = 176
    Width = 481
    Height = 201
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object SphinxLogin1: TSphinxLogin
    Authority = 'http://localhost:2001/tms/sphinx'
    ClientId = 'desktop'
    Scope = 'openid email'
    OnUserLoggedIn = SphinxLogin1UserLoggedIn
    Left = 176
    Top = 112
  end
  object SphinxWebLogin1: TSphinxWebLogin
    Authority = 'http://localhost:2001/tms/sphinx'
    ClientId = 'desktop'
    Scope = 'openid email'
    RedirectUri = 'http://127.0.0.1'
    OnUserLoggedIn = SphinxWebLogin1UserLoggedIn
    Left = 288
    Top = 112
  end
end
