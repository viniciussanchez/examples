object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 192
  ClientWidth = 348
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
    Left = 56
    Top = 27
    Width = 50
    Height = 13
    Caption = 'N'#250'mero 1:'
  end
  object Label2: TLabel
    Left = 56
    Top = 67
    Width = 50
    Height = 13
    Caption = 'N'#250'mero 2:'
  end
  object Label3: TLabel
    Left = 54
    Top = 147
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object edtNumero1: TEdit
    Left = 112
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnSomar: TButton
    Left = 15
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 2
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 96
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
  object btnDividir: TButton
    Left = 177
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 4
    OnClick = btnDividirClick
  end
  object btnMultiplicar: TButton
    Left = 258
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 5
    OnClick = btnMultiplicarClick
  end
  object edtResultado: TEdit
    Left = 112
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
