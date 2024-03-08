object ClientModule1: TClientModule1
  OldCreateOrder = False
  Height = 271
  Width = 415
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/')
    Connected = True
    Left = 24
    Top = 8
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 64
    Top = 64
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = DSProviderConnection1
    Left = 184
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 264
    Top = 120
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Customer_id'
    MasterFields = 'Customer_Id'
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProvider2'
    RemoteServer = DSProviderConnection1
    Left = 184
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 272
    Top = 192
  end
end
