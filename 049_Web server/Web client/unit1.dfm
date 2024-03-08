object frmClient: TfrmClient
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 231
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object edtUrl: TEdit
    Left = 8
    Top = 8
    Width = 394
    Height = 21
    TabOrder = 0
    Text = 'Enter URL'
  end
  object Memo: TMemo
    Left = 8
    Top = 35
    Width = 505
    Height = 198
    TabOrder = 1
  end
  object btnGo: TButton
    Left = 408
    Top = 8
    Width = 75
    Height = 25
    Caption = 'GO'
    TabOrder = 2
    OnClick = btnGoClick
  end
  object WebBrowser1: TWebBrowser
    Left = 520
    Top = 8
    Width = 375
    Height = 281
    TabOrder = 3
    ControlData = {
      4C000000021F00003C1700000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = True
    UserAgent = 'Embarcadero URI Client/1.0'
    OnRequestCompleted = NetHTTPClient1RequestCompleted
    Left = 400
    Top = 64
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = True
    Client = NetHTTPClient1
    Left = 400
    Top = 128
  end
end
