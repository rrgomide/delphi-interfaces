object frmREST: TfrmREST
  Left = 0
  Top = 0
  Caption = 'Deputados via REST'
  ClientHeight = 530
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lvDeputados: TListView
    Left = 8
    Top = 40
    Width = 663
    Height = 482
    Columns = <
      item
        Caption = 'Deputado'
        Width = 300
      end>
    TabOrder = 1
    ViewStyle = vsReport
  end
  object btnListarDeputados: TButton
    Left = 256
    Top = 8
    Width = 161
    Height = 25
    Caption = 'Listar deputados'
    TabOrder = 0
    OnClick = btnListarDeputadosClick
  end
  object restClient: TRESTClient
    Accept = 'application/xml'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'http://dadosabertos.almg.gov.br/ws/deputados/em_exercicio'
    Params = <>
    HandleRedirects = True
    ProxyPort = 3128
    ProxyServer = 'hermes.almg.gov.br'
    Left = 80
    Top = 128
  end
  object restRequest: TRESTRequest
    Accept = 'application/xml'
    Client = restClient
    Params = <>
    Response = restResponse
    Left = 160
    Top = 128
  end
  object restResponse: TRESTResponse
    Left = 248
    Top = 128
  end
end
