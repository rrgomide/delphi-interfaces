unit UMunicipio;

interface

uses
  UIMunicipio, UDescricaoAttribute, UInfoAttribute;

type

  TMunicipio = class(TInterfacedObject, IMunicipio)

    strict private

      [Descricao('Nome do município')]
      [Info]
      FNome : string;

      [Descricao('Código do município (TRE)')]
      FCodigoTRE : Integer;

      [Descricao('Eleitorado')]
      [Info]
      FEleitorado : Integer;

      constructor Create(_nome : string; _codigo, _eleitorado : Integer);
      function getNome : string;
      function getCodigoTRE : Integer;
      function getEleitorado : Integer;
      function obterInformacao : string;

    public

      class function New (_nome : string; _codigo, _eleitorado : Integer) : IMunicipio;

  end;

implementation

uses

  Spring, System.SysUtils, System.Rtti, URttiHelper;

{ TMunicipio }

constructor TMunicipio.Create(_nome: string; _codigo, _eleitorado: Integer);
begin
  Guard.CheckTrue(_nome <> '', 'Nome de município inválido!');
  Guard.CheckTrue(_codigo > 0, 'Código de município inválido');
  Guard.CheckTrue(_eleitorado > 0, 'Eleitorado inválido');

  FNome := _nome;
  FCodigoTRE     := _codigo;
  FEleitorado    := _eleitorado;
end;

function TMunicipio.getCodigoTRE: Integer;
begin
  Result := FCodigoTRE;
end;

function TMunicipio.getEleitorado: Integer;
begin
  Result := FEleitorado;
end;

function TMunicipio.getNome: string;
begin
  Result := FNome;
end;

class function TMunicipio.New(_nome: string; _codigo, _eleitorado: Integer): IMunicipio;
begin
  Result := TMunicipio.Create(_nome, _codigo, _eleitorado);
end;

function TMunicipio.obterInformacao: string;
var
  contexto      : TRttiContext;
  Tipo          : TRttiType;
  atributoAtual : TCustomAttribute;
  campoAtual    : TRttiField;
  qtdeTarefas   : Integer;
begin
  Result := '';
  Tipo   := contexto.GetType(Self.ClassType);

  try
    for campoAtual in Tipo.GetFields do
    begin
      if not campoAtual.HasAttribute(InfoAttribute.ClassName) then
        Continue;

      for atributoAtual in campoAtual.GetAttributes do
      begin
        if (atributoAtual is DescricaoAttribute) then
        begin
          Result :=
            Result + DescricaoAttribute(atributoAtual).Descricao + ': ' +
            campoAtual.GetValue(self).ToString + sLineBreak;
        end;
      end;
    end;
  finally
    Tipo.Free;
  end;

end;

end.
