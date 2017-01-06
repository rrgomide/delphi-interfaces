object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Novidades da IDE do Delphi XE5'
  ClientHeight = 263
  ClientWidth = 647
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
  object btnMacros1: TButton
    Left = 24
    Top = 16
    Width = 150
    Height = 73
    Caption = 'Macros (01)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = btnMacros1Click
  end
  object btnMacros2: TButton
    Left = 175
    Top = 16
    Width = 150
    Height = 73
    Caption = 'Macros (02)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = btnMacros2Click
  end
  object btnRegioes: TButton
    Left = 326
    Top = 16
    Width = 150
    Height = 73
    Caption = 'Regi'#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = btnRegioesClick
  end
  object btnSyncEdit: TButton
    Left = 477
    Top = 16
    Width = 150
    Height = 73
    Caption = 'SyncEdit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    WordWrap = True
    OnClick = btnSyncEditClick
  end
  object btnRefactorDeclararVariavel: TButton
    Left = 24
    Top = 95
    Width = 301
    Height = 73
    Caption = 'Refactor (declarar vari'#225'vel)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = btnRefactorDeclararVariavelClick
  end
  object btnRefactorFindUnit: TButton
    Left = 326
    Top = 95
    Width = 301
    Height = 73
    Caption = 'Refactor (find unit)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = btnRefactorFindUnitClick
  end
  object btnRefactoringExtractMethod: TButton
    Left = 24
    Top = 174
    Width = 301
    Height = 73
    Caption = 'Refactor (extract method)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    WordWrap = True
    OnClick = btnRefactoringExtractMethodClick
  end
end
