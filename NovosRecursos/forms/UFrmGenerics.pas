unit UFrmGenerics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.Generics.Collections;

type

  TAcao = reference to procedure;

  TfrmGenerics = class(TFrmPadrao)
    btnPesquisar: TButton;
    mmoResultado: TMemo;
    edtTermo: TLabeledEdit;
    lblOrdenandoLista: TLabel;
    btnOrdenarLista: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnOrdenarListaClick(Sender: TObject);

  private

    FDicionario   : TDictionary<Integer, string>;
    FListaOrdenada : TStringList;
    FListaNaoOrdenada : TStringList;

    function medirTempo(acao : TAcao) : Double;

  public

  end;

var
  frmGenerics: TfrmGenerics;

implementation

uses
  System.Diagnostics, System.TimeSpan;

{$R *.dfm}

procedure TfrmGenerics.btnPesquisarClick(Sender: TObject);
var
  cronometro : TStopWatch;
  tempo      : TTimeSpan;
  segundos   : Double;
  termo      : string;
  posicao    : Integer;
begin
  mmoResultado.Clear;
  Application.ProcessMessages;

  termo := edtTermo.Text;

  cronometro := TStopwatch.StartNew;
  posicao    := FListaOrdenada.IndexOf(termo);
  tempo      := cronometro.Elapsed;
  segundos   := tempo.TotalSeconds;

  mmoResultado.Lines.Add('TStringList ordenada: ' + FormatFloat('0.##########', segundos));
  mmoResultado.Lines.Add('');

  cronometro := TStopwatch.StartNew;
  posicao    := FListaNaoOrdenada.IndexOf(termo);
  tempo      := cronometro.Elapsed;
  segundos   := tempo.TotalSeconds;

  mmoResultado.Lines.Add('TStringList NÃO ordenada: ' + FormatFloat('0.##########', segundos));
  mmoResultado.Lines.Add('');

  cronometro := TStopwatch.StartNew;
  //posicao    := FDicionario.Items[termo.ToInteger].ToInteger;
  FDicionario.ContainsKey(termo.ToInteger);
  tempo      := cronometro.Elapsed;
  segundos   := tempo.TotalSeconds;

  mmoResultado.Lines.Add('TDictionary (key): ' + FormatFloat('0.##########', segundos));
  mmoResultado.Lines.Add('');

  {
  cronometro := TStopwatch.StartNew;
  //posicao    := FDicionario.Items[termo.ToInteger].ToInteger;
  FDicionario.ContainsValue(termo);
  tempo      := cronometro.Elapsed;
  segundos   := tempo.TotalSeconds;
  }
  segundos :=
    medirTempo
    (
     procedure
     begin
       FDicionario.ContainsValue(termo);
     end
    );

  mmoResultado.Lines.Add('TDictionary (value): ' + FormatFloat('0.##########', segundos));
  mmoResultado.Lines.Add('');
end;

procedure TfrmGenerics.btnOrdenarListaClick(Sender: TObject);
var
  i : Integer;
begin

  lblOrdenandoLista.Visible := True;
  btnPesquisar.Enabled := False;
  Application.ProcessMessages;

  try
    for i := 10000000 downto 1 do
    begin
      FListaOrdenada.Add(i.ToString);
      FListaNaoOrdenada.Add(i.ToString);
      FDicionario.Add(i, i.ToString);
    end;

    FListaOrdenada.Sort;
  finally
    lblOrdenandoLista.Visible := False;
    btnPesquisar.Enabled := True;
    btnOrdenarLista.Enabled := False;
    Application.ProcessMessages;
  end;
end;

procedure TfrmGenerics.FormCreate(Sender: TObject);
begin
  FListaOrdenada := TStringList.Create;
  FListaOrdenada.Sorted := False;
  FListaNaoOrdenada := TStringList.Create;
  FListaNaoOrdenada.Sorted := False;
  FDicionario := TDictionary<Integer, string>.Create;
end;

procedure TfrmGenerics.FormDestroy(Sender: TObject);
begin
  FListaOrdenada.Free;
  FListaNaoOrdenada.Create;
  FDicionario.Free;
end;

function TfrmGenerics.medirTempo(acao: TAcao): Double;
var
  cronometro : TStopWatch;
  tempo      : TTimeSpan;
  segundos   : Double;
  termo      : string;
  posicao    : Integer;
begin
  cronometro := TStopwatch.StartNew;
  acao;
  tempo      := cronometro.Elapsed;
  segundos   := tempo.TotalSeconds;
  Result     := segundos;
end;

end.
