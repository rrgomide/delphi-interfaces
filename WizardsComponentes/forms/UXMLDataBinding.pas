unit UXMLDataBinding;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmXMLDataBinding = class(TForm)
    btnListarDeputados: TButton;
    mmoDeputados: TMemo;
    mmoXML: TMemo;
    procedure btnListarDeputadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmXMLDataBinding: TfrmXMLDataBinding;

implementation

uses
  UDeputados, XMLDoc;

{$R *.dfm}

procedure TfrmXMLDataBinding.btnListarDeputadosClick(Sender: TObject);
var
  xmlDeputados  : IXMLListaDeputadoType;
  deputado : IXMLDeputadoType;
  i : Integer;
begin

  mmoDeputados.Clear;
  xmlDeputados := LoadlistaDeputado('./assets/deputados.xml');
  deputado := xmlDeputados.Add;
  deputado.Id := 999;
  deputado.Nome := 'ABC XYZ';
  deputado.Partido := 'P';
  deputado.TagLocalizacao := 999;

  mmoDeputados.Lines.BeginUpdate;

  try
    for i := 0 to xmlDeputados.Count - 1 do
    begin
      mmoDeputados.Lines.Add(xmlDeputados[i].Nome + ' - ' + xmlDeputados[i].Partido);
    end;
  finally
    mmoDeputados.Lines.EndUpdate;
  end;

  mmoXML.Text := FormatXMLData(xmlDeputados.XML);
end;

end.
