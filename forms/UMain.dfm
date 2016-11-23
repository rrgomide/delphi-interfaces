object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Delphi - Interfaces'
  ClientHeight = 454
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConsulta: TPanel
    Left = 0
    Top = 0
    Width = 439
    Height = 129
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Munic'#237'pio:'
    end
    object cbbMunicipios: TComboBox
      Left = 16
      Top = 32
      Width = 409
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object rgFonteDeDados: TRadioGroup
      Left = 16
      Top = 68
      Width = 121
      Height = 55
      Caption = ' Fonte de dados'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'TXT'
        'XML')
      TabOrder = 1
    end
    object btnBuscar: TButton
      Left = 350
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
    end
  end
  object pnlResultado: TPanel
    Left = 0
    Top = 129
    Width = 439
    Height = 325
    Align = alClient
    TabOrder = 1
    object lvResultado: TListView
      Left = 1
      Top = 1
      Width = 437
      Height = 323
      Align = alClient
      Columns = <
        item
          Caption = 'Candidato'
          Width = 250
        end
        item
          Caption = 'Partido'
          Width = 80
        end
        item
          Caption = 'Votos'
          Width = 80
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
end
