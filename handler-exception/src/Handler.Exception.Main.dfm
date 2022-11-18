object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Handler Exception'
  ClientHeight = 269
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlContent: TPanel
    Left = 0
    Top = 0
    Width = 439
    Height = 269
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btnGerarException: TButton
      Left = 24
      Top = 24
      Width = 153
      Height = 25
      Caption = 'Gerando uma exception'
      TabOrder = 0
      OnClick = btnGerarExceptionClick
    end
  end
end
