
{**************************************************************************************************************************}
{                                                                                                                          }
{                                                     XML Data Binding                                                     }
{                                                                                                                          }
{         Generated on: 14/12/2016 16:42:29                                                                                }
{       Generated from: C:\Users\m24107\Dropbox\computacao\git\delphi-interfaces\WizardsComponentes\assets\deputados.xml   }
{                                                                                                                          }
{**************************************************************************************************************************}

unit UDeputados;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLListaDeputadoType = interface;
  IXMLDeputadoType = interface;

{ IXMLListaDeputadoType }

  IXMLListaDeputadoType = interface(IXMLNodeCollection)
    ['{B784D76A-E991-473F-91A2-3CC74FDBDA96}']
    { Property Accessors }
    function GetDeputado(Index: Integer): IXMLDeputadoType;
    { Methods & Properties }
    function Add: IXMLDeputadoType;
    function Insert(const Index: Integer): IXMLDeputadoType;
    property Deputado[Index: Integer]: IXMLDeputadoType read GetDeputado; default;
  end;

{ IXMLDeputadoType }

  IXMLDeputadoType = interface(IXMLNode)
    ['{626E0B77-1C89-4D70-B824-F679C68BB31D}']
    { Property Accessors }
    function GetId: Integer;
    function GetNome: String;
    function GetPartido: String;
    function GetTagLocalizacao: Integer;
    procedure SetId(Value: Integer);
    procedure SetNome(Value: String);
    procedure SetPartido(Value: String);
    procedure SetTagLocalizacao(Value: Integer);
    { Methods & Properties }
    property Id: Integer read GetId write SetId;
    property Nome: String read GetNome write SetNome;
    property Partido: String read GetPartido write SetPartido;
    property TagLocalizacao: Integer read GetTagLocalizacao write SetTagLocalizacao;
  end;

{ Forward Decls }

  TXMLListaDeputadoType = class;
  TXMLDeputadoType = class;

{ TXMLListaDeputadoType }

  TXMLListaDeputadoType = class(TXMLNodeCollection, IXMLListaDeputadoType)
  protected
    { IXMLListaDeputadoType }
    function GetDeputado(Index: Integer): IXMLDeputadoType;
    function Add: IXMLDeputadoType;
    function Insert(const Index: Integer): IXMLDeputadoType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDeputadoType }

  TXMLDeputadoType = class(TXMLNode, IXMLDeputadoType)
  protected
    { IXMLDeputadoType }
    function GetId: Integer;
    function GetNome: String;
    function GetPartido: String;
    function GetTagLocalizacao: Integer;
    procedure SetId(Value: Integer);
    procedure SetNome(Value: String);
    procedure SetPartido(Value: String);
    procedure SetTagLocalizacao(Value: Integer);
  end;

{ Global Functions }

function GetlistaDeputado(Doc: IXMLDocument): IXMLListaDeputadoType;
function LoadlistaDeputado(const FileName: string): IXMLListaDeputadoType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetlistaDeputado(Doc: IXMLDocument): IXMLListaDeputadoType;
begin
  Result := Doc.GetDocBinding('listaDeputado', TXMLListaDeputadoType, TargetNamespace) as IXMLListaDeputadoType;
end;

function LoadlistaDeputado(const FileName: string): IXMLListaDeputadoType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('listaDeputado', TXMLListaDeputadoType, TargetNamespace) as IXMLListaDeputadoType;
end;

function NewlistaDeputado: IXMLListaDeputadoType;
begin
  Result := NewXMLDocument.GetDocBinding('listaDeputado', TXMLListaDeputadoType, TargetNamespace) as IXMLListaDeputadoType;
end;


{ TXMLListaDeputadoType }

procedure TXMLListaDeputadoType.AfterConstruction;
begin
  RegisterChildNode('deputado', TXMLDeputadoType);
  ItemTag := 'deputado';
  ItemInterface := IXMLDeputadoType;
  inherited;
end;

function TXMLListaDeputadoType.GetDeputado(Index: Integer): IXMLDeputadoType;
begin
  Result := List[Index] as IXMLDeputadoType;
end;

function TXMLListaDeputadoType.Add: IXMLDeputadoType;
begin
  Result := AddItem(-1) as IXMLDeputadoType;
end;

function TXMLListaDeputadoType.Insert(const Index: Integer): IXMLDeputadoType;
begin
  Result := AddItem(Index) as IXMLDeputadoType;
end;

{ TXMLDeputadoType }

function TXMLDeputadoType.GetId: Integer;
begin
  Result := ChildNodes['id'].NodeValue;
end;

procedure TXMLDeputadoType.SetId(Value: Integer);
begin
  ChildNodes['id'].NodeValue := Value;
end;

function TXMLDeputadoType.GetNome: String;
begin
  Result := ChildNodes['nome'].NodeValue;
end;

procedure TXMLDeputadoType.SetNome(Value: String);
begin
  ChildNodes['nome'].NodeValue := Value;
end;

function TXMLDeputadoType.GetPartido: String;
begin
  Result := ChildNodes['partido'].NodeValue;
end;

procedure TXMLDeputadoType.SetPartido(Value: String);
begin
  ChildNodes['partido'].NodeValue := Value;
end;

function TXMLDeputadoType.GetTagLocalizacao: Integer;
begin
  Result := ChildNodes['tagLocalizacao'].NodeValue;
end;

procedure TXMLDeputadoType.SetTagLocalizacao(Value: Integer);
begin
  ChildNodes['tagLocalizacao'].NodeValue := Value;
end;

end.