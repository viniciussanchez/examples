object FrmSamples: TFrmSamples
  Left = 0
  Top = 0
  Caption = 'Samples'
  ClientHeight = 82
  ClientWidth = 518
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
    Left = 24
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Conte'#250'do'
  end
  object edtSamples: TEdit
    Left = 24
    Top = 35
    Width = 153
    Height = 21
    TabOrder = 0
    TextHint = 'Informe um valor...'
  end
  object Button1: TButton
    Left = 183
    Top = 33
    Width = 100
    Height = 25
    Caption = 'String vazia'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 289
    Top = 33
    Width = 100
    Height = 25
    Caption = 'Data v'#225'lida'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 395
    Top = 33
    Width = 100
    Height = 25
    Caption = 'Somente n'#250'meros'
    TabOrder = 3
    OnClick = Button3Click
  end
end
