unit URestDeputados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  IPPeerClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfrmREST = class(TForm)
    lvDeputados: TListView;
    btnListarDeputados: TButton;
    restClient: TRESTClient;
    restRequest: TRESTRequest;
    restResponse: TRESTResponse;
    procedure btnListarDeputadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREST: TfrmREST;

implementation

uses
 oXMLPDom;

{$R *.dfm}

procedure TfrmREST.btnListarDeputadosClick(Sender: TObject);
var
  item : TListItem;
  xml : IXMLDocument;
  root, nodeDeputado, nodeNome : PXMLNode;
begin
  lvDeputados.Clear;
  xml := CreateXMLDoc;
  restRequest.Execute;
  xml.LoadFromXML(restResponse.Content);
  root := xml.DocumentElement;
  nodeDeputado := nil;
  lvDeputados.Items.BeginUpdate;

  try
    while root.GetNextChild(nodeDeputado) do
    begin
      nodeNome := nil;

      while nodeDeputado.GetNextChild(nodeNome) do
      begin
        if nodeNome.NodeName = 'nome' then
        begin
          item := lvDeputados.Items.Add;
          item.Caption := nodeNome.Text;
        end;
      end;
    end;
  finally
    lvDeputados.Items.EndUpdate;
  end;

end;

end.
