unit URecords;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type

  TfrmRecords = class(TfrmPadrao)
    edtVotosNominais: TLabeledEdit;
    edtVotosLegenda: TLabeledEdit;
    edtVotosBrancos: TLabeledEdit;
    edtVotosNulos: TLabeledEdit;
    btnProcessarVotacao: TButton;
    mmoResultado: TMemo;
    edtEleitorado: TLabeledEdit;
    procedure btnProcessarVotacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecords: TfrmRecords;

implementation

uses
  URVotacao;

{$R *.dfm}

procedure TfrmRecords.btnProcessarVotacaoClick(Sender: TObject);
var
  eleicao : RVotacao;
begin
  inherited;
  { Método antigo
  eleicao.VotosNominais := string.ToInteger(edtVotosNominais.Text);
  eleicao.VotosLegenda  := string.ToInteger(edtVotosLegenda.Text);
  eleicao.VotosBrancos  := string.ToInteger(edtVotosBrancos.Text);
  eleicao.VotosNulos    := string.ToInteger(edtVotosNulos.Text);
  eleicao.Eleitorado    := string.ToInteger(edtEleitorado.Text);
  }
  eleicao := RVotacao.Create
             (
               string.ToInteger(edtVotosNominais.Text),
               string.ToInteger(edtVotosLegenda.Text),
               string.ToInteger(edtVotosBrancos.Text),
               string.ToInteger(edtVotosNulos.Text),
               string.ToInteger(edtEleitorado.Text)
             );

  mmoResultado.Clear;
  mmoResultado.Lines.BeginUpdate;

  try
    mmoResultado.Lines.Add('Abstenção: ' + eleicao.obterAbstencao.ToString);
    mmoResultado.Lines.Add('Comparecimento: ' + eleicao.obterComparecimento.ToString);
    mmoResultado.Lines.Add('Votos válidos: ' + eleicao.obterVotosValidos.ToString);
  finally
    mmoResultado.Lines.EndUpdate;
  end;
end;

end.
