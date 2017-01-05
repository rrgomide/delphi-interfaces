object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Novos Recursos da Linguagem'
  ClientHeight = 251
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 251
    Align = alClient
    TabOrder = 0
    object btnClassHelpers: TButton
      Left = 0
      Top = 40
      Width = 169
      Height = 73
      Align = alCustom
      Caption = 'Class Helpers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = btnClassHelpersClick
    end
    object btnRecords: TButton
      Left = 175
      Top = 40
      Width = 169
      Height = 73
      Align = alCustom
      Caption = 'Records'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = btnRecordsClick
    end
    object btnStrict: TButton
      Left = 350
      Top = 40
      Width = 169
      Height = 73
      Align = alCustom
      Caption = 'strict'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = btnStrictClick
    end
    object pnlParte01: TPanel
      Left = 1
      Top = 1
      Width = 521
      Height = 40
      Align = alTop
      Caption = 'Parte 01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object pnl1: TPanel
      Left = -2
      Top = 136
      Width = 521
      Height = 40
      Caption = 'Parte 02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object btnGenerics: TButton
      Left = 1
      Top = 176
      Width = 169
      Height = 73
      Align = alCustom
      Caption = 'Generics'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      WordWrap = True
      OnClick = btnGenericsClick
    end
    object btnAnonymousMethods: TButton
      Left = 175
      Top = 176
      Width = 169
      Height = 73
      Align = alCustom
      Caption = 'Anonymous Methods'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      WordWrap = True
      OnClick = btnAnonymousMethodsClick
    end
  end
end
