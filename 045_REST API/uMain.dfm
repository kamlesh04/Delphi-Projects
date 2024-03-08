object frmRESTAPI: TfrmRESTAPI
  Left = 0
  Top = 0
  Caption = 'RESTAPI Demo'
  ClientHeight = 327
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object lblCName: TLabel
    Left = 480
    Top = 21
    Width = 74
    Height = 13
    Caption = 'Country Names'
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 40
    Width = 457
    Height = 273
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnFetchData: TButton
    Left = 8
    Top = 9
    Width = 75
    Height = 25
    Caption = 'Fetch Data'
    TabOrder = 1
    OnClick = btnFetchDataClick
  end
  object Memo: TMemo
    Left = 480
    Top = 40
    Width = 185
    Height = 273
    TabOrder = 2
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://restcountries.com/v3.1/all'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 296
    Top = 80
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 104
    Top = 192
  end
  object RESTResponse: TRESTResponse
    Left = 176
    Top = 144
  end
  object RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter
    Dataset = FDMemTable
    FieldDefs = <>
    Response = RESTResponse
    Left = 224
    Top = 200
  end
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 232
    Top = 144
  end
  object DataSource: TDataSource
    DataSet = FDMemTable
    Left = 56
    Top = 88
  end
end
