unit UAttributes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, UFrmPadrao,
  Vcl.ExtCtrls, System.Generics.Collections, UMunicipio, UMunicipios;

type

  TfrmAttributes = class(TFrmPadrao)
    pnlFiltros: TPanel;
    grpFiltros: TGroupBox;
    btnBuscar: TButton;
    rgFonteDeDados: TRadioGroup;
    rgOrdenacao: TRadioGroup;
    rgTipoOrdenacao: TRadioGroup;
    pnlDados: TPanel;
    mmoInformacoes: TMemo;
    lblInformacoesDetalhadas: TLabel;
    lvMunicipios: TListView;
    procedure btnBuscarClick(Sender: TObject);
    procedure lvMunicipiosSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);

  private

    FMunicipios : TMunicipios;
    function obterDados : TList<TMunicipio>;

  public

  end;

var
  frmAttributes: TfrmAttributes;

implementation

uses

  UFonteDadosCSV,
  UTipoOrdenacao;

{$R *.dfm}

procedure TfrmAttributes.btnBuscarClick(Sender: TObject);
var
  listaMunicipios : TList<TMunicipio>;
  item            : TListItem;
  municipioAtual  : TMunicipio;
begin
  FMunicipios     := TMunicipios.Create(TFonteDadosCSV.Create);
  listaMunicipios := obterDados;

  lvMunicipios.Clear;
  lvMunicipios.Items.BeginUpdate;

  try
    for municipioAtual in listaMunicipios do
    begin
      item := lvMunicipios.Items.Add;
      item.Caption := IntToStr(municipioAtual.CodigoTRE);
      item.SubItems.Add(municipioAtual.Nome);
    end;
  finally
    lvMunicipios.Items.EndUpdate;
  end;
end;

procedure TfrmAttributes.lvMunicipiosSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var
  municipios : TMunicipios;
begin
  municipios := FMunicipios;

  try
    mmoInformacoes.Clear;
    mmoInformacoes.Lines.Add(municipios.obterInformacaoPorId(StrToInt(Item.Caption)));
  finally
    municipios := nil;
  end;
end;

function TfrmAttributes.obterDados: TList<TMunicipio>;
var
  isOrdenacaoASC : Boolean;
begin
  isOrdenacaoASC :=
    rgTipoOrdenacao.ItemIndex = 0;

  case TTipoOrdenacao(rgOrdenacao.ItemIndex) of

    PURA       : Result := FMunicipios.obterMunicipios;
    NOME       : Result := FMunicipios.obterMunicipiosOrdenadosPorNome(isOrdenacaoASC);
    CODIGO_TRE : Result := FMunicipios.obterMunicipiosOrdenadosPorCodigo(isOrdenacaoASC);
    ELEITORADO : Result := FMunicipios.obterMunicipiosOrdenadosPorEleitorado(isOrdenacaoASC);

    else Result := FMunicipios.obterMunicipios;

  end;
end;

end.
