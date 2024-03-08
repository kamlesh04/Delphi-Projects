object ClientModule1: TClientModule1
  OldCreateOrder = False
  Height = 271
  Width = 415
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=localhost'
      'port=211'
      
        'ConnectionString=DriverUnit=Data.DBXDataSnap,CommunicationProtoc' +
        'ol=tcp/ip,DatasnapContext=datasnap/,DriverAssemblyLoader=Borland' +
        '.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Versio' +
        'n=24.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b,Drive' +
        'rName=DataSnap,HostName=localhost,port=211,ConnectionString=Driv' +
        'erUnit=Data.DBXDataSnap,CommunicationProtocol=tcp/ip,DatasnapCon' +
        'text=datasnap/,DriverAssemblyLoader=Borland.Data.TDBXClientDrive' +
        'rLoader,Borland.Data.DbxClientDriver,Version=24.0.0.0,Culture=ne' +
        'utral,PublicKeyToken=91d62ebb5b0d1b1b,DriverName=DataSnap,HostNa' +
        'me=localhost,port=211')
    Connected = True
    Left = 48
    Top = 40
    UniqueId = '{1C1DD083-1D30-4535-9D09-491DF9C3F0BA}'
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 152
    Top = 48
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = DSProviderConnection1
    Left = 264
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 264
    Top = 120
  end
end
