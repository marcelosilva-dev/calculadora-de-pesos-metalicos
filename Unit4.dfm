object Form_bredonda: TForm_bredonda
  Left = 0
  Top = 0
  Caption = 'Barra Redonda'
  ClientHeight = 231
  ClientWidth = 505
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
    Top = 24
    Width = 117
    Height = 13
    Caption = 'Parametros: (milimetros)'
  end
  object Label2: TLabel
    Left = 200
    Top = 72
    Width = 90
    Height = 13
    Caption = 'Peso por UND (KG)'
  end
  object Label3: TLabel
    Left = 200
    Top = 144
    Width = 82
    Height = 13
    Caption = 'Peso TOTAL (KG)'
  end
  object btn_fechar: TButton
    Left = 422
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btn_fecharClick
  end
  object Diametro: TLabeledEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = 'Diametro'
    TabOrder = 1
    OnChange = DiametroChange
  end
  object Comprimento: TLabeledEdit
    Left = 24
    Top = 99
    Width = 121
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'Comprimento'
    TabOrder = 2
    OnChange = ComprimentoChange
  end
  object Quantidade: TLabeledEdit
    Left = 24
    Top = 152
    Width = 121
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Quantidade'
    TabOrder = 3
    OnChange = QuantidadeChange
  end
  object btn_calc: TButton
    Left = 200
    Top = 32
    Width = 81
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 4
    OnClick = btn_calcClick
  end
  object btn_clear: TButton
    Left = 304
    Top = 32
    Width = 81
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 5
    OnClick = btn_clearClick
  end
  object und: TMemo
    Left = 200
    Top = 91
    Width = 185
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'und')
    ParentFont = False
    TabOrder = 6
  end
  object total: TMemo
    Left = 200
    Top = 163
    Width = 185
    Height = 39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'total')
    ParentFont = False
    TabOrder = 7
  end
end
