object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'SQL Injection'
  ClientHeight = 256
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 144
    Top = 112
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object lblResultado: TLabel
    Left = 235
    Top = 173
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtUsuario: TEdit
    Left = 144
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 144
    Top = 131
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 144
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object qryUsuarios: TFDQuery
    Connection = FDConnection
    Left = 344
    Top = 128
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=SQLite_Demo')
    LoginPrompt = False
    Left = 344
    Top = 80
  end
end
