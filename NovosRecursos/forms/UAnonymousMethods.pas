unit UAnonymousMethods;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Generics.Collections, System.Generics.Defaults;

type

  TReuniaoComissao = class

  strict private

    FCodigoInterno : string;
    FTitulo : string;
    FLocal : string;
    FData : TDateTime;
    FHora : string;
    FQuantidadeMembros : Integer;

  public

    constructor Create(pCodigoInterno, pTitulo, pLocal, pHora: string;
                       pData: TDateTime; pQuantidadeMembros: Integer);

    property CodigoInterno : string read FCodigoInterno;
    property Titulo : string read FTitulo;
    property Local : string read FLocal;
    property Data : TDateTime read FData;
    property Hora : string read FHora;
    property QuantidadeMembros : Integer read FQuantidadeMembros;

  end;

  TfrmAnonymousMethods = class(TfrmPadrao)
    btnReload: TButton;
    rgOrdenacao: TRadioGroup;
    lvDados: TListView;
    chkOrdemInversa: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnReloadClick(Sender: TObject);

  private
    FListaReunioes : TList<TReuniaoComissao>;
    FXML : string;

    procedure CarregarDados;
    procedure Ordenar;

  public


  end;

var
  frmAnonymousMethods: TfrmAnonymousMethods;

implementation

uses
  oXMLPDom;

{$R *.dfm}

{ TReuniaoComissao }

constructor TReuniaoComissao.Create(pCodigoInterno, pTitulo, pLocal,
                                    pHora: string;
                                    pData: TDateTime;
                                    pQuantidadeMembros: Integer);
begin
  FCodigoInterno     := pCodigoInterno;
  FTitulo            := pTitulo;
  FLocal             := pLocal;
  FData              := pData;
  FHora              := pHora;
  FQuantidadeMembros := pQuantidadeMembros;
end;

procedure TfrmAnonymousMethods.btnReloadClick(Sender: TObject);
begin
  inherited;
  CarregarDados;
end;

procedure TfrmAnonymousMethods.CarregarDados;
var
  reuniaoAtual: TReuniaoComissao;
  item: TListItem;
begin
  lvDados.Clear;

  Ordenar;

  lvDados.Items.BeginUpdate;

  try
    for reuniaoAtual in FListaReunioes do
    begin
      item := lvDados.Items.Add;
      item.Data := reuniaoAtual;
      item.Caption := reuniaoAtual.CodigoInterno;
      item.SubItems.Add(reuniaoAtual.Titulo);
      item.SubItems.Add(reuniaoAtual.Local);
      item.SubItems.Add(FormatDateTime('DD/MM/YYYY', reuniaoAtual.Data));
      item.SubItems.Add(reuniaoAtual.Hora);
      item.SubItems.Add(reuniaoAtual.QuantidadeMembros.ToString)
    end;
  finally
    lvDados.Items.EndUpdate;
  end;
end;

procedure TfrmAnonymousMethods.FormCreate(Sender: TObject);
var
  dataReuniao : string;
  xml: IXMLDocument;
  raiz: PXMLNode;
  reuniao: PXMLNode;
  dadosReuniao: TXMLChildNodeList;
  reunioes: IXMLNodeList;
begin
  FListaReunioes := TList<TReuniaoComissao>.Create;
  xml := CreateXMLDoc;
  xml.LoadFromFile('../assets/eventos20160301.xml');

  raiz := xml.DocumentElement;
  raiz.GetElementsByTagName('reuniaoComissao', reunioes);

  Randomize;

  for reuniao in reunioes do
  begin
    dadosReuniao := reuniao.ChildNodes;
    dataReuniao  := dadosReuniao.FindNode('diaInicial').Text;

    FListaReunioes.Add
    (
      TReuniaoComissao.Create
      (
        dadosReuniao.FindNode('codigoInterno').Text,
        dadosReuniao.FindNode('titulo').Text,
        dadosReuniao.FindNode('local').Text,
        dadosReuniao.FindNode('horaInicial').Text,
        EncodeDate(dataReuniao.Substring(0, 4).ToInteger,
                   dataReuniao.Substring(5, 2).ToInteger,
                   dataReuniao.Substring(8, 2).ToInteger),
        Random(20)
      )
    );
  end;

  //Inserindo propositalmente para visualizarmos
  //a ordenação por data
  FListaReunioes.Add
  (
    TReuniaoComissao.Create
    (
      '6.00.00',
      'Inserção manual',
      'GGOV',
      '18:00',
      EncodeDate(2016, 3, 2),
      18
    )
  );

  CarregarDados;
end;

procedure TfrmAnonymousMethods.Ordenar;
var
  reverso: Boolean;
begin

  reverso := chkOrdemInversa.Checked;

  case rgOrdenacao.ItemIndex of

    {
    0: FListaReunioes
          .Sort
          (
            TComparer<TReuniaoComissao>.Construct
            (
              function(const Left, Right: TReuniaoComissao): Integer
              begin
                if reverso then
                begin
                  Result := Right.CodigoInterno.Length - Left.CodigoInterno.Length;
                end else
                begin
                  Result := Left.CodigoInterno.Length - Right.CodigoInterno.Length;
                end;
              end
            )
          );
    }

    0: FListaReunioes.Sort
       (
          TComparer<TReuniaoComissao>.Construct
          (
            function(const Left, Right: TReuniaoComissao): Integer
            begin
              if reverso then
              begin
                Result :=
                  TComparer<Integer>.Default.Compare(Right.CodigoInterno.Length, Left.CodigoInterno.Length);
              end else
              begin
                Result :=
                  TComparer<Integer>.Default.Compare(Left.CodigoInterno.Length, Right.CodigoInterno.Length);
              end;
            end
          )
       );

    1: FListaReunioes.Sort
       (
          TComparer<TReuniaoComissao>.Construct
          (
            function(const Left, Right: TReuniaoComissao): Integer
            begin
              if reverso then
              begin
                Result :=
                  TComparer<String>.Default.Compare(Right.Local, Left.Local);
              end else
              begin
                Result :=
                  TComparer<String>.Default.Compare(Left.Local, Right.Local);
              end;
            end
          )
       );

    2: FListaReunioes.Sort
       (
          TComparer<TReuniaoComissao>.Construct
          (
            function(const Left, Right: TReuniaoComissao): Integer
            begin
              if reverso then
              begin
                Result :=
                  TComparer<TDateTime>.Default.Compare(Right.Data, Left.Data);
              end else
              begin
                Result :=
                  TComparer<TDateTime>.Default.Compare(Left.Data, Right.Data);
              end;
            end
          )
       );

    3: FListaReunioes.Sort
       (
          TComparer<TReuniaoComissao>.Construct
          (
            function(const Left, Right: TReuniaoComissao): Integer
            begin
              if reverso then
              begin
                Result :=
                  TComparer<string>.Default.Compare(Right.Hora, Left.Hora);
              end else
              begin
                Result :=
                  TComparer<string>.Default.Compare(Left.Hora, Right.Hora);
              end;
            end
          )
       );

    4: FListaReunioes.Sort
       (
          TComparer<TReuniaoComissao>.Construct
          (
            function(const Left, Right: TReuniaoComissao): Integer
            begin
              if reverso then
              begin
                Result :=
                  TComparer<Integer>.Default.Compare(Right.QuantidadeMembros, Left.QuantidadeMembros);
              end else
              begin
                Result :=
                  TComparer<Integer>.Default.Compare(Left.QuantidadeMembros, Right.QuantidadeMembros);
              end;
            end
          )
       );

  end;
end;

end.
