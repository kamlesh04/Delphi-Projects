object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 541
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblReqServer: TLabel
    Left = 48
    Top = 144
    Width = 209
    Height = 28
    Caption = 'Request to server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResServer: TLabel
    Left = 336
    Top = 144
    Width = 206
    Height = 28
    Caption = 'Response from server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSendAuth: TButton
    Left = 192
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Send Auth'
    TabOrder = 0
    OnClick = btnSendAuthClick
  end
  object btnCheck: TButton
    Left = 72
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Check Status'
    TabOrder = 1
    OnClick = btnCheckClick
  end
  object memResponse: TMemo
    Left = 336
    Top = 184
    Width = 265
    Height = 313
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object memRequest: TMemo
    Left = 24
    Top = 184
    Width = 265
    Height = 313
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object btnSendSign: TButton
    Left = 296
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Send Sign'
    TabOrder = 4
    OnClick = btnSendSignClick
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 568
    Top = 16
  end
end
