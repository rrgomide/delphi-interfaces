object frmClassHelpers: TfrmClassHelpers
  Left = 0
  Top = 0
  Caption = 'Class Helpers'
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
  object btnNumeroAtual: TButton
    Left = 233
    Top = 8
    Width = 169
    Height = 73
    Align = alCustom
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = btnNumeroAtualClick
  end
  object mmoNumeros: TMemo
    Left = 8
    Top = 87
    Width = 619
    Height = 202
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
