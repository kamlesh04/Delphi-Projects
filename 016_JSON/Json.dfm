object JsonFM: TJsonFM
  Left = 329
  Top = 115
  Caption = 'JSON'
  ClientHeight = 296
  ClientWidth = 349
  Color = clBtnFace
  Constraints.MaxHeight = 335
  Constraints.MaxWidth = 365
  Constraints.MinHeight = 335
  Constraints.MinWidth = 365
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlresults: TPanel
    Left = 1
    Top = 56
    Width = 344
    Height = 188
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object memResults: TMemo
      Left = 16
      Top = 8
      Width = 307
      Height = 145
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object pnlbuttons: TPanel
    Left = 1
    Top = 239
    Width = 344
    Height = 59
    Color = clScrollBar
    ParentBackground = False
    TabOrder = 1
    object btnGetJson: TButton
      Left = 16
      Top = 11
      Width = 75
      Height = 38
      Caption = 'Get Data'
      TabOrder = 0
      OnClick = btnGetJsonClick
    end
    object btnclear: TButton
      Left = 232
      Top = 11
      Width = 75
      Height = 38
      Caption = 'Clear'
      TabOrder = 1
      OnClick = btnclearClick
    end
  end
  object pnlheading: TPanel
    Left = 8
    Top = 8
    Width = 337
    Height = 42
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    object lblheading: TLabel
      Left = 96
      Top = 5
      Width = 131
      Height = 24
      Caption = 'JSON PARSING'
      Color = clPurple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
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
    Left = 144
    Top = 248
  end
end
