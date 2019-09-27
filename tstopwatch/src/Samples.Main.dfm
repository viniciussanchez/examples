object FrmSamples: TFrmSamples
  Left = 0
  Top = 0
  Caption = 'Samples'
  ClientHeight = 57
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 57
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 24
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Exemplo cl'#225'ssico'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 151
      Top = 16
      Width = 178
      Height = 25
      Caption = 'Exemplo com TStopWatch'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 335
      Top = 16
      Width = 178
      Height = 25
      Caption = 'TStopWatch com TTimeSpan'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
end
