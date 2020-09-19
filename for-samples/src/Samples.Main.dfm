object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Samples'
  ClientHeight = 205
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'for'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 16
    Width = 75
    Height = 25
    Caption = 'for inverso'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 186
    Top = 16
    Width = 75
    Height = 25
    Caption = 'for in'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 267
    Top = 16
    Width = 75
    Height = 25
    Caption = 'enumerator'
    TabOrder = 3
    OnClick = Button4Click
  end
  object ListBox1: TListBox
    Left = 24
    Top = 56
    Width = 121
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'Notebook'
      'Smartwatch'
      'Smartphone')
    TabOrder = 4
  end
  object Button5: TButton
    Left = 24
    Top = 159
    Width = 121
    Height = 25
    Caption = 'TStringsEnumerator'
    TabOrder = 5
    OnClick = Button5Click
  end
end
