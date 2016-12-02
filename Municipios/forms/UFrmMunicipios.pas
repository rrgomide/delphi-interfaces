unit UFrmMunicipios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, UIMunicipios, UIMunicipio, Spring.Collections;

type
  IEnumerable = Spring.Collections.IEnumerable;

  TfrmMunicipios = class(TForm)
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

    FMunicipios : IMunicipios;
    function obterDados : IEnumerable<IMunicipio>;

  public

  end;

var
  frmMunicipios: TfrmMunicipios;

implementation

uses

  UMunicipios, UMunicipio, UFonteDadosCSV,
  UTipoOrdenacao, UIInformacao;

{$R *.dfm}

procedure TfrmMunicipios.btnBuscarClick(Sender: TObject);
var
  listaMunicipios : IEnumerable<IMunicipio>;
  item            : TListItem;
  municipioAtual  : IMunicipio;
begin
  FMunicipios     := TMunicipios.New(TFonteDadosCSV.New);
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

procedure TfrmMunicipios.lvMunicipiosSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
var
  obj : IInformacao;
begin
  obj := FMunicipios as IInformacao;

  try
    mmoInformacoes.Clear;
    mmoInformacoes.Lines.Add(obj.obterInformacaoPorId(StrToInt(Item.Caption)));
  finally
    obj := nil;
  end;
end;

function TfrmMunicipios.obterDados: IEnumerable<IMunicipio>;
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
