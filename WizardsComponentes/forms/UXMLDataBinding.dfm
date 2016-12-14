object frmXMLDataBinding: TfrmXMLDataBinding
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'XML Data Binding'
  ClientHeight = 307
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnListarDeputados: TButton
    Left = 16
    Top = 16
    Width = 137
    Height = 25
    Caption = 'Listar deputados'
    TabOrder = 0
    OnClick = btnListarDeputadosClick
  end
  object mmoDeputados: TMemo
    Left = 16
    Top = 56
    Width = 337
    Height = 233
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object mmoXML: TMemo
    Left = 360
    Top = 56
    Width = 337
    Height = 233
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
