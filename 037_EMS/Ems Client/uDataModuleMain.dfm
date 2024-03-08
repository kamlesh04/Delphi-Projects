object dmMain: TdmMain
  OldCreateOrder = False
  Height = 335
  Width = 215
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 40
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 24
  end
  object FDTableAdapter1: TFDTableAdapter
    SchemaAdapter = FDSchemaAdapter1
    DatSTableName = 'FDQuery1'
    Left = 56
    Top = 232
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Adapter = FDTableAdapter1
    Left = 32
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 120
    Top = 112
  end
end
