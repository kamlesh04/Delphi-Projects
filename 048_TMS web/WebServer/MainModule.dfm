object ServerContainer: TServerContainer
  OnCreate = DataModuleCreate
  Height = 477
  Width = 621
  PixelsPerInch = 120
  object SparkleHttpSysDispatcher: TSparkleHttpSysDispatcher
    Active = True
    Left = 90
    Top = 20
  end
  object XDataServer: TXDataServer
    BaseUrl = 'http://192.168.1.24:2001/tms/xdata'
    Dispatcher = SparkleHttpSysDispatcher
    Pool = XDataConnectionPool
    PostMode = Save
    DefaultEntitySetPermissions = [List, Get, Insert, Modify, Delete]
    EntitySetPermissions = <
      item
        EntitySetName = 'Admin'
        Permissions = [List, Get, Insert, Modify, Delete]
      end>
    SwaggerOptions.Enabled = True
    SwaggerUIOptions.Enabled = True
    Left = 270
    Top = 20
    object XDataServerCORS: TSparkleCorsMiddleware
    end
  end
  object XDataConnectionPool: TXDataConnectionPool
    Connection = AureliusConnection
    Left = 270
    Top = 90
  end
  object AureliusConnection: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection
    SQLDialect = 'MySQL'
    Left = 270
    Top = 160
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
    Left = 80
    Top = 256
  end
  object FDQuery: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from users;')
    Left = 80
    Top = 344
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveJSONWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 200
    Top = 352
  end
  object FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter
    DataDef.Fields = <>
    Left = 264
    Top = 280
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = FDQuery
    Left = 392
    Top = 264
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'D:\KamleshGaonkar\kamlesh\Practice\TMS web\Codolex_Web\WebServer' +
      '\Win32\Debug\libmySQL.dll'
    Left = 80
    Top = 176
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 408
    Top = 168
  end
  object fdGetCounts: TFDQuery
    Connection = FDConnection
    Left = 80
    Top = 424
  end
  object FDTable: TFDTable
    Active = True
    IndexFieldNames = 'AdminID'
    Connection = FDConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'VehiclePoolingSystem.admin'
    Left = 8
    Top = 352
  end
  object FDTAuthUsers: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'VehiclePoolingSystem.oauth_users'
    Left = 16
    Top = 416
  end
  object FDQAuthUsers: TFDQuery
    Connection = FDConnection
    Left = 296
    Top = 368
  end
  object FDQSession: TFDQuery
    Connection = FDConnection
    Left = 384
    Top = 376
  end
end
