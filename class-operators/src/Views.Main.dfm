object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Class Operators'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSomarVenda: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Somar venda'
    TabOrder = 0
    OnClick = btnSomarVendaClick
  end
  object btnImplicit: TButton
    Left = 103
    Top = 8
    Width = 122
    Height = 25
    Caption = 'Atribui'#231#227'o impl'#237'cita'
    TabOrder = 1
    OnClick = btnImplicitClick
  end
  object btnInc: TButton
    Left = 231
    Top = 8
    Width = 98
    Height = 25
    Caption = 'Incrementando'
    TabOrder = 2
    OnClick = btnIncClick
  end
  object btnEqual: TButton
    Left = 335
    Top = 8
    Width = 170
    Height = 25
    Caption = 'Verificando inst'#226'ncias iguais'
    TabOrder = 3
    OnClick = btnEqualClick
  end
end
