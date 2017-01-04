object frmUnicode: TfrmUnicode
  Left = 0
  Top = 0
  Caption = 'Testes com Unicode'
  ClientHeight = 541
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtTexto: TLabeledEdit
    Left = 16
    Top = 32
    Width = 457
    Height = 32
    EditLabel.Width = 225
    EditLabel.Height = 25
    EditLabel.Caption = 'Informe o texto aqui:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -21
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnProcessar: TButton
    Left = 479
    Top = 32
    Width = 148
    Height = 32
    Caption = 'Processar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object lvUnicode: TListView
    Left = 16
    Top = 80
    Width = 611
    Height = 453
    Columns = <
      item
        Caption = 'AnsiString'
        Width = 280
      end
      item
        Caption = 'UnicodeString'
        Width = 280
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ViewStyle = vsReport
    OnCustomDrawItem = lvUnicodeCustomDrawItem
  end
end
