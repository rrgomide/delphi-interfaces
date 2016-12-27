object frmParte02: TfrmParte02
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parte 02 - principal'
  ClientHeight = 169
  ClientWidth = 551
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
  object btnCNPackGExperts: TButton
    Left = 8
    Top = 8
    Width = 260
    Height = 73
    Caption = 'CNPack e GExperts'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnCNPackGExpertsClick
  end
  object btnXMLDataBinding: TButton
    Left = 279
    Top = 8
    Width = 260
    Height = 73
    Caption = 'XML Data Binding'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnXMLDataBindingClick
  end
  object btnOXML: TButton
    Left = 8
    Top = 88
    Width = 260
    Height = 73
    Caption = 'oXML'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnOXMLClick
  end
  object btnXSuperObject: TButton
    Left = 280
    Top = 88
    Width = 260
    Height = 73
    Caption = 'xSuperObject (JSON)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnXSuperObjectClick
  end
end
