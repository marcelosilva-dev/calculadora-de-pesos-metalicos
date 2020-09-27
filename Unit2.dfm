object Form_chapas: TForm_chapas
  Left = 0
  Top = 0
  Caption = 'Chapas'
  ClientHeight = 231
  ClientWidth = 583
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
    Left = 40
    Top = 32
    Width = 59
    Height = 13
    Caption = 'Parametros:'
  end
  object Label2: TLabel
    Left = 175
    Top = 32
    Width = 126
    Height = 13
    Caption = 'Escolha o tipo de Material:'
  end
  object Label3: TLabel
    Left = 344
    Top = 63
    Width = 90
    Height = 13
    Caption = 'Peso por UND (KG)'
  end
  object Label4: TLabel
    Left = 344
    Top = 142
    Width = 82
    Height = 13
    Caption = 'Peso TOTAL (KG)'
  end
  object btn_fechar: TButton
    Left = 501
    Top = 198
    Width = 75
    Height = 25
    Caption = 'fechar'
    TabOrder = 0
    OnClick = btn_fecharClick
  end
  object espessura: TLabeledEdit
    Left = 40
    Top = 60
    Width = 121
    Height = 21
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = 'espessura (mm)'
    TabOrder = 1
    OnChange = espessuraChange
  end
  object largura: TLabeledEdit
    Left = 40
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'largura (mm)'
    TabOrder = 2
    OnChange = larguraChange
  end
  object comprimento: TLabeledEdit
    Left = 40
    Top = 139
    Width = 121
    Height = 21
    EditLabel.Width = 88
    EditLabel.Height = 13
    EditLabel.Caption = 'comprimento (mm)'
    TabOrder = 3
    OnChange = comprimentoChange
  end
  object quantidade: TLabeledEdit
    Left = 40
    Top = 176
    Width = 121
    Height = 21
    EditLabel.Width = 106
    EditLabel.Height = 13
    EditLabel.Caption = 'quantidade de chapas'
    TabOrder = 4
    OnChange = quantidadeChange
  end
  object Rad_aluminio: TRadioButton
    Left = 192
    Top = 75
    Width = 105
    Height = 17
    Caption = 'Aluminio'
    TabOrder = 5
    OnClick = Rad_aluminioClick
  end
  object Rad_aco: TRadioButton
    Left = 192
    Top = 98
    Width = 97
    Height = 17
    Caption = 'A'#231'o'
    TabOrder = 6
    OnClick = Rad_acoClick
  end
  object Rad_inox1: TRadioButton
    Left = 192
    Top = 121
    Width = 89
    Height = 17
    Caption = 'Inox 304/330'
    TabOrder = 7
    OnClick = Rad_inox1Click
  end
  object Rad_inox2: TRadioButton
    Left = 192
    Top = 147
    Width = 113
    Height = 17
    Caption = 'Inox 410/430'
    TabOrder = 8
    OnClick = Rad_inox2Click
  end
  object Rad_ferro: TRadioButton
    Left = 192
    Top = 170
    Width = 113
    Height = 17
    Caption = 'Ferro'
    TabOrder = 9
    OnClick = Rad_ferroClick
  end
  object btn_calcular: TButton
    Left = 344
    Top = 32
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 10
    OnClick = btn_calcularClick
  end
  object und: TMemo
    Left = 344
    Top = 82
    Width = 153
    Height = 54
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'und')
    ParentFont = False
    TabOrder = 11
  end
  object total: TMemo
    Left = 344
    Top = 165
    Width = 153
    Height = 58
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'total')
    ParentFont = False
    TabOrder = 12
  end
  object Button1: TButton
    Left = 425
    Top = 32
    Width = 80
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 13
    OnClick = Button1Click
  end
end
