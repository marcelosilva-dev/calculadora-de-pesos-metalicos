object Form_FChato: TForm_FChato
  Left = 0
  Top = 0
  Caption = 'Ferro Chato'
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
    Left = 32
    Top = 24
    Width = 110
    Height = 13
    Alignment = taCenter
    Caption = 'Parametros: (milinetro)'
  end
  object label_pesoUND: TLabel
    Left = 176
    Top = 82
    Width = 90
    Height = 13
    Caption = 'Peso por UND (KG)'
  end
  object Label3: TLabel
    Left = 176
    Top = 152
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
  object Largura: TLabeledEdit
    Left = 32
    Top = 53
    Width = 119
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Largura'
    TabOrder = 1
    OnChange = LarguraChange
  end
  object Espessura: TLabeledEdit
    Left = 32
    Top = 96
    Width = 121
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'Espessura'
    TabOrder = 2
    OnChange = EspessuraChange
  end
  object Comprimento: TLabeledEdit
    Left = 32
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'Comprimento'
    TabOrder = 3
    OnChange = ComprimentoChange
  end
  object Quantidade: TLabeledEdit
    Left = 32
    Top = 192
    Width = 121
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Quantidade'
    TabOrder = 4
    OnChange = QuantidadeChange
  end
  object Button1: TButton
    Left = 176
    Top = 51
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 51
    Width = 75
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 6
    OnClick = Button2Click
  end
  object und: TMemo
    Left = 176
    Top = 101
    Width = 171
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'und')
    ParentFont = False
    TabOrder = 7
  end
  object total: TMemo
    Left = 176
    Top = 171
    Width = 171
    Height = 44
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'total')
    ParentFont = False
    TabOrder = 8
  end
end
