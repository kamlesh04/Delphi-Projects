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
  OnCreate = FormCreate
  TextHeight = 15
  object Memo1: TMemo
    Left = 32
    Top = 32
    Width = 497
    Height = 177
    Lines.Strings = (
      'Server running on : http://localhost:2001/tms/sphinx')
    TabOrder = 0
  end
  object SphinxServer1: TSphinxServer
    BaseUrl = 'http://+:2001/tms/sphinx'
    Dispatcher = SparkleHttpSysDispatcher1
    Pool = XDataConnectionPool1
    Config = SphinxConfig1
    Left = 96
    Top = 240
    object SphinxServer1CORS: TSparkleCorsMiddleware
    end
  end
  object SphinxConfig1: TSphinxConfig
    Clients = <>
    UserOptions.RequireUserName = True
    UserOptions.RequirePhoneNumber = True
    UserOptions.RequireUniquePhoneNumber = True
    OnConfigureToken = SphinxConfig1ConfigureToken
    OnGetSigningData = SphinxConfig1GetSigningData
    Left = 96
    Top = 312
  end
  object SparkleHttpSysDispatcher1: TSparkleHttpSysDispatcher
    Left = 88
    Top = 376
  end
  object AureliusConnection1: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection
    SQLDialect = 'MySQL'
    Params.Strings = (
      '')
    Left = 240
    Top = 232
  end
  object AureliusDBSchema1: TAureliusDBSchema
    Connection = AureliusConnection1
    ModelNames = 'Biz.Sphinx'
    Left = 248
    Top = 312
  end
  object XDataConnectionPool1: TXDataConnectionPool
    Connection = AureliusConnection1
    Left = 240
    Top = 384
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=VehiclePoolingSystem'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    ResourceOptions.AssignedValues = [rvStoreItems]
    ResourceOptions.StoreItems = [siMeta, siData]
    Connected = True
    LoginPrompt = False
    Left = 488
    Top = 320
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'D:\KamleshGaonkar\kamlesh\Practice\TMS web\Codolex_Web\WebServer' +
      '\Win32\Debug\libmySQL.dll'
    Left = 488
    Top = 240
  end
end
