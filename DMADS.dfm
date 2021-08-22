object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 752
  Top = 137
  Height = 441
  Width = 426
  object ADSDB: TDatabase
    AliasName = 'ALADS'
    Connected = True
    DatabaseName = 'ADSDB'
    SessionName = 'Default'
    Left = 24
    Top = 16
  end
  object maindataset: TDataSource
    DataSet = maintable
    Left = 200
    Top = 16
  end
  object maintable: TTable
    Active = True
    DatabaseName = 'ADSDB'
    TableName = 'table.db'
    Left = 136
    Top = 16
    object maintableA0: TIntegerField
      DisplayWidth = 8
      FieldName = 'A0'
    end
    object maintableA1: TIntegerField
      DisplayWidth = 6
      FieldName = 'A1'
    end
    object maintableA2: TFloatField
      DisplayWidth = 12
      FieldName = 'A2'
    end
    object maintableA3: TStringField
      DisplayWidth = 24
      FieldName = 'A3'
      Size = 26
    end
    object maintableA4: TStringField
      DisplayWidth = 24
      FieldName = 'A4'
      Size = 26
    end
    object maintableA5: TTimeField
      DisplayWidth = 12
      FieldName = 'A5'
    end
    object maintableA6: TDateField
      DisplayWidth = 12
      FieldName = 'A6'
    end
  end
  object resultstable: TTable
    DatabaseName = 'ADSDB'
    TableName = 'results.db'
    Left = 128
    Top = 72
    object resultstableCreate: TFloatField
      FieldName = 'Create'
    end
    object resultstableSelect: TFloatField
      FieldName = 'Select'
    end
    object resultstableUpdate: TFloatField
      FieldName = 'Update'
    end
    object resultstableDelete: TFloatField
      FieldName = 'Delete'
    end
  end
  object resultadataset: TDataSource
    DataSet = resultstable
    Left = 200
    Top = 64
  end
end
