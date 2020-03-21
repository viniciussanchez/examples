object FrmSamples: TFrmSamples
  Left = 0
  Top = 0
  Caption = 'FrmSamples'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGetImpostoRenda: TButton
    Left = 32
    Top = 16
    Width = 137
    Height = 25
    Caption = 'Get imposto de renda'
    TabOrder = 0
    OnClick = btnGetImpostoRendaClick
  end
  object mtUsuario: TFDMemTable
    AfterInsert = mtUsuarioAfterInsert
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 216
    Top = 104
    object mtUsuarioID: TIntegerField
      FieldName = 'ID'
    end
    object mtUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object mtUsuarioSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
end
