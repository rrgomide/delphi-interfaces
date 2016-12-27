object frmSuperObject: TfrmSuperObject
  Left = 0
  Top = 0
  Caption = 'Testes com SuperObject'
  ClientHeight = 302
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
  object lblDependentes: TLabel
    Left = 16
    Top = 107
    Width = 68
    Height = 13
    Caption = 'Dependentes:'
  end
  object lblJSON: TLabel
    Left = 232
    Top = 16
    Width = 67
    Height = 13
    Caption = 'JSON gerado:'
  end
  object edtNome: TLabeledEdit
    Left = 16
    Top = 32
    Width = 200
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 0
    Text = 'JOS'#201' DA SILVA'
  end
  object edtEndereco: TLabeledEdit
    Left = 16
    Top = 80
    Width = 200
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'Endere'#231'o:'
    TabOrder = 2
    Text = 'RUA X, N'#218'MERO Y, APARTAMENTO Z'
  end
  object mmoDependentes: TMemo
    Left = 16
    Top = 123
    Width = 201
    Height = 127
    Lines.Strings = (
      'MARIA DA SILVA'
      'JO'#195'O DA SILVA'
      'MARIANA DA SILVA')
    TabOrder = 3
  end
  object btnGerarJSON: TButton
    Left = 16
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Gerar JSON'
    TabOrder = 4
    OnClick = btnGerarJSONClick
  end
  object mmoJSON: TMemo
    Left = 234
    Top = 32
    Width = 393
    Height = 217
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
end
