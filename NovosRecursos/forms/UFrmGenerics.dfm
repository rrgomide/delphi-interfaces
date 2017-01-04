object frmGenerics: TfrmGenerics
  Left = 0
  Top = 0
  Caption = 'Generics'
  ClientHeight = 302
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblOrdenandoLista: TLabel
    Left = 339
    Top = 22
    Width = 278
    Height = 23
    Caption = 'Ordenando a lista. Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object btnPesquisar: TButton
    Left = 135
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    Enabled = False
    TabOrder = 0
    OnClick = btnPesquisarClick
  end
  object mmoResultado: TMemo
    Left = 8
    Top = 56
    Width = 609
    Height = 238
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtTermo: TLabeledEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Termo:'
    TabOrder = 2
    Text = '121541'
  end
  object btnOrdenarLista: TButton
    Left = 216
    Top = 25
    Width = 97
    Height = 25
    Caption = 'Ordenar lista'
    TabOrder = 1
    OnClick = btnOrdenarListaClick
  end
end
