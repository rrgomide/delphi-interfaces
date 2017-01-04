object frmRecords: TfrmRecords
  Left = 0
  Top = 0
  Caption = 'Exemplo com Records'
  ClientHeight = 302
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtVotosNominais: TLabeledEdit
    Left = 16
    Top = 32
    Width = 153
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'Votos nominais:'
    TabOrder = 0
    Text = '1098777'
  end
  object edtVotosLegenda: TLabeledEdit
    Left = 16
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 13
    EditLabel.Caption = 'Votos de legenda:'
    TabOrder = 4
    Text = '95141'
  end
  object edtVotosBrancos: TLabeledEdit
    Left = 175
    Top = 32
    Width = 153
    Height = 21
    EditLabel.Width = 72
    EditLabel.Height = 13
    EditLabel.Caption = 'Votos brancos:'
    TabOrder = 1
    Text = '127828'
  end
  object edtVotosNulos: TLabeledEdit
    Left = 175
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Votos nulos:'
    TabOrder = 5
    Text = '188124'
  end
  object btnProcessarVotacao: TButton
    Left = 339
    Top = 70
    Width = 153
    Height = 25
    Caption = 'Processar vota'#231#227'o'
    TabOrder = 3
    OnClick = btnProcessarVotacaoClick
  end
  object mmoResultado: TMemo
    Left = 16
    Top = 112
    Width = 476
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edtEleitorado: TLabeledEdit
    Left = 339
    Top = 32
    Width = 153
    Height = 21
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'Eleitorado:'
    TabOrder = 2
    Text = '1927460'
  end
end
