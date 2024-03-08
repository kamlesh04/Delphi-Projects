object FireDacPostgreSQLConnection: TFireDacPostgreSQLConnection
  OnCreate = DataModuleCreate
  Height = 248
  Width = 353
  PixelsPerInch = 120
  object Connection: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=admin'
      'DriverID=PG')
    LoginPrompt = False
    Left = 104
    Top = 16
  end
  object AureliusConnection1: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = Connection
    SQLDialect = 'PostgreSQL'
    Left = 208
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'D:\KamleshGaonkar\kamlesh\Practice\TMS web\Codolex_Web\Win32\Deb' +
      'ug\libpq.dll'
    Left = 200
    Top = 104
  end
end
