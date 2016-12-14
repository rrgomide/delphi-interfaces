object frmParte02: TfrmParte02
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parte 02 - principal'
  ClientHeight = 73
  ClientWidth = 543
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
    Left = 0
    Top = 0
    Width = 265
    Height = 73
    Align = alLeft
    Caption = 'CNPack e GExperts'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnXMLDataBinding: TButton
    Left = 265
    Top = 0
    Width = 278
    Height = 73
    Align = alClient
    Caption = 'XML Data Binding'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnXMLDataBindingClick
    ExplicitLeft = 288
    ExplicitWidth = 255
  end
end
