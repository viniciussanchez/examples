object ServiceBairro: TServiceBairro
  OldCreateOrder = False
  Height = 150
  Width = 215
  object mtBairros: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 88
    Top = 56
    object mtBairrosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object mtBairrosNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
end
