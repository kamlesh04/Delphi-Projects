object dmMain: TdmMain
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object XDataWebConnection: TXDataWebConnection
    URL = 'http://192.168.1.24:2001/tms/xdata'
    Connected = True
    Left = 456
    Top = 64
  end
  object XDataWebDataSet: TXDataWebDataSet
    Connection = XDataWebConnection
    Left = 464
    Top = 152
  end
  object XDataWebClient: TXDataWebClient
    Connection = XDataWebConnection
    Left = 472
    Top = 248
  end
end
