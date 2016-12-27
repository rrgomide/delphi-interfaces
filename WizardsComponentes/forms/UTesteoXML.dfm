object frmOXML: TfrmOXML
  Left = 0
  Top = 0
  Caption = 'Teste com o componente oXML'
  ClientHeight = 538
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblXML: TLabel
    Left = 18
    Top = 112
    Width = 23
    Height = 13
    Caption = 'XML:'
  end
  object lblResultado: TLabel
    Left = 384
    Top = 112
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object edtCaminhoXML: TLabeledEdit
    Left = 16
    Top = 32
    Width = 561
    Height = 21
    EditLabel.Width = 198
    EditLabel.Height = 13
    EditLabel.Caption = 'Caminho completo de algum arquivo XML:'
    TabOrder = 0
    Text = './assets/deputados.xml'
  end
  object edtTag: TLabeledEdit
    Left = 16
    Top = 80
    Width = 217
    Height = 21
    EditLabel.Width = 107
    EditLabel.Height = 13
    EditLabel.Caption = 'Tag a ser processada:'
    TabOrder = 3
    Text = 'nome'
  end
  object btnProcessarTag: TButton
    Left = 240
    Top = 78
    Width = 97
    Height = 25
    Caption = 'Processar tag'
    TabOrder = 2
    OnClick = btnProcessarTagClick
  end
  object mmoXML: TMemo
    Left = 17
    Top = 128
    Width = 353
    Height = 401
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object mmoResultado: TMemo
    Left = 384
    Top = 128
    Width = 305
    Height = 401
    ScrollBars = ssBoth
    TabOrder = 5
  end
  object btnCarregarXML: TButton
    Left = 592
    Top = 32
    Width = 97
    Height = 25
    Caption = 'Carregar XML'
    TabOrder = 1
    OnClick = btnCarregarXMLClick
  end
end
