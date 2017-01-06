unit UMunicipio;

interface

uses
  UDescricaoAttribute, UInfoAttribute;

type

  TMunicipio = class

    strict private

      [Descricao('Nome do município')]
      [Info]
      FNome : string;

      [Descricao('Código do município (TRE)')]
      [Info]
      FCodigoTRE : Integer;

      [Descricao('Eleitorado')]
      [Info]
      FEleitorado : Integer;

      [Descricao('Macroregião')]
      [Info]
      FMacrorregiao : string;

    public

      constructor Create(pNome, pMacrorregiao : string; pCodigoTRE, pEleitorado : Integer);

      function obterInformacao : string;

      property Nome : string read FNome;
      property CodigoTRE: Integer read FCodigoTRE;
      property Eleitorado: Integer read FEleitorado;
      property Macroregiao: string read FMacrorregiao;

  end;

implementation

uses

  Spring, System.SysUtils, System.Rtti, URttiHelper;

{ TMunicipio }


constructor TMunicipio.Create(pNome, pMacrorregiao: string;
                              pCodigoTRE, pEleitorado: Integer);
begin
  FNome := pNome;
  FCodigoTRE := pCodigoTRE;
  FEleitorado := pEleitorado;
  FMacrorregiao := pMacrorregiao;
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
