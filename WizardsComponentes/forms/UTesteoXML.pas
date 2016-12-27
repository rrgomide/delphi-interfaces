unit UTesteoXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls,
  Vcl.ExtCtrls, oXMLPDom;

type
  TfrmOXML = class(TfrmPadrao)
    edtCaminhoXML: TLabeledEdit;
    edtTag: TLabeledEdit;
    btnProcessarTag: TButton;
    mmoXML: TMemo;
    mmoResultado: TMemo;
    lblXML: TLabel;
    lblResultado: TLabel;
    btnCarregarXML: TButton;
    procedure btnCarregarXMLClick(Sender: TObject);
    procedure btnProcessarTagClick(Sender: TObject);

  private
    { Private declarations }
    FXML : IXMLDocument;

  public
    { Public declarations }
  end;

var
  frmOXML: TfrmOXML;

implementation

{$R *.dfm}

procedure TfrmOXML.btnCarregarXMLClick(Sender: TObject);
begin
  inherited;
  FXML := CreateXMLDoc;
  FXML.LoadFromFile(edtCaminhoXML.Text);
  mmoXML.Text := FXML.XML;
end;

procedure TfrmOXML.btnProcessarTagClick(Sender: TObject);
var
  raiz : PXMLNode;
  elementos : IXMLNodeList;
  nodoAtual : PXMLNode;
begin
  inherited;
  raiz := FXML.DocumentElement;
  raiz.GetElementsByTagName(edtTag.Text, elementos, True);
  mmoResultado.Clear;
  mmoResultado.Lines.BeginUpdate;

  try
    for nodoAtual in elementos do
      mmoResultado.Lines.Add(nodoAtual.Text);
  finally
    mmoResultado.Lines.EndUpdate;
  end;

end;

end.
