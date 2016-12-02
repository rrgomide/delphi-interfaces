object frmMunicipios: TfrmMunicipios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Munic'#237'pios'
  ClientHeight = 574
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFiltros: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 81
    Align = alTop
    TabOrder = 0
    object grpFiltros: TGroupBox
      Left = 1
      Top = 1
      Width = 792
      Height = 79
      Align = alClient
      Caption = ' Par'#226'metros '
      TabOrder = 0
      ExplicitHeight = 120
      object btnBuscar: TButton
        Left = 716
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 3
        OnClick = btnBuscarClick
      end
      object rgFonteDeDados: TRadioGroup
        Left = 16
        Top = 24
        Width = 113
        Height = 48
        Caption = ' Fonte de dados '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'CSV'
          'XML')
        TabOrder = 0
      end
      object rgOrdenacao: TRadioGroup
        Left = 135
        Top = 24
        Width = 347
        Height = 48
        Caption = ' Ordena'#231#227'o '
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Pura'
          'C'#243'digo TRE'
          'Nome'
          'Eleitorado')
        TabOrder = 1
      end
      object rgTipoOrdenacao: TRadioGroup
        Left = 488
        Top = 24
        Width = 201
        Height = 48
        Caption = ' Tipo de ordena'#231#227'o '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ascendente'
          'Descendente')
        TabOrder = 2
      end
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 81
    Width = 794
    Height = 493
    Align = alClient
    TabOrder = 1
    ExplicitTop = 186
    ExplicitHeight = 388
    object lblInformacoesDetalhadas: TLabel
      Left = 1
      Top = 368
      Width = 120
      Height = 13
      Caption = 'Informa'#231#245'es detalhadas:'
    end
    object mmoInformacoes: TMemo
      Left = 1
      Top = 384
      Width = 792
      Height = 108
      Align = alBottom
      TabOrder = 1
    end
    object lvMunicipios: TListView
      Left = 1
      Top = 1
      Width = 792
      Height = 361
      Align = alTop
      Columns = <
        item
          Caption = 'C'#243'd. TRE'
          Width = 100
        end
        item
          Caption = 'Munic'#237'pio'
          Width = 600
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnSelectItem = lvMunicipiosSelectItem
    end
  end
end
