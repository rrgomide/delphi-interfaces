unit USuperObject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmSuperObject = class(TfrmPadrao)
    edtNome: TLabeledEdit;
    edtEndereco: TLabeledEdit;
    mmoDependentes: TMemo;
    lblDependentes: TLabel;
    btnGerarJSON: TButton;
    mmoJSON: TMemo;
    lblJSON: TLabel;
    procedure btnGerarJSONClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuperObject: TfrmSuperObject;

implementation

uses
  SuperObject;

{$R *.dfm}

procedure TfrmSuperObject.btnGerarJSONClick(Sender: TObject);
var
  json : ISuperObject;
  jsonDependentes : ISuperObject;
  dependenteAtual : string;
begin
  inherited;

  json := SO;
  json.S['nome'] := edtNome.Text;
  json.S['endereco'] := edtEndereco.Text;
  json.I['quantidade_dependentes'] := mmoDependentes.Lines.Count;
  json.O['dependentes'] := SA([]);

  for dependenteAtual in mmoDependentes.Lines do
    json.O['dependentes'].S['dependente'] := dependenteAtual;

  mmoJSON.Text := json.AsJSon(True, False);
end;

end.
