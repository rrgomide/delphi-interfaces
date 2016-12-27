object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Novos Recursos da Linguagem'
  ClientHeight = 146
  ClientWidth = 437
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
    Width = 437
    Height = 146
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 32
    ExplicitWidth = 353
    ExplicitHeight = 153
    object btnClassHelpers: TButton
      Left = 0
      Top = 0
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
      TabOrder = 0
      WordWrap = True
      OnClick = btnClassHelpersClick
    end
  end
end
