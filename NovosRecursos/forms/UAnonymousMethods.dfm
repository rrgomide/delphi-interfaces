inherited frmAnonymousMethods: TfrmAnonymousMethods
  Caption = 'Anonymous Methods'
  ClientHeight = 583
  ClientWidth = 934
  OnCreate = FormCreate
  ExplicitWidth = 940
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  object btnReload: TButton
    Left = 427
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Recarregar'
    TabOrder = 0
    OnClick = btnReloadClick
  end
  object rgOrdenacao: TRadioGroup
    Left = 24
    Top = 40
    Width = 889
    Height = 57
    Caption = ' Ordenar campos por: '
    Columns = 6
    ItemIndex = 0
    Items.Strings = (
      'Tamanho do c'#243'digo'
      'Local'
      'Data'
      'Hora'
      'Membros')
    TabOrder = 1
  end
  object lvDados: TListView
    Left = 24
    Top = 103
    Width = 889
    Height = 458
    Columns = <
      item
        Caption = 'C'#243'digo interno'
        Width = 200
      end
      item
        Caption = 'T'#237'tulo'
        Width = 200
      end
      item
        Caption = 'Local'
        Width = 200
      end
      item
        Caption = 'Data'
        Width = 120
      end
      item
        Caption = 'Hora'
      end
      item
        Caption = 'Membros'
        Width = 80
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 3
    ViewStyle = vsReport
  end
  object chkOrdemInversa: TCheckBox
    Left = 808
    Top = 66
    Width = 97
    Height = 17
    Caption = 'Ordem inversa'
    TabOrder = 2
  end
end
