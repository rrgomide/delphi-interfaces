unit UMunicipios;

interface

uses
  UIMunicipios, UIMunicipio, UIFonteDadosMunicipio, UIInformacao, Spring.Collections;

type

  TMunicipios = class(TInterfacedObject, IMunicipios, IInformacao)

    strict private

      FMunicipios : IDictionary<Integer, IMunicipio>;
      FFonteDados : IFonteDadosMunicipio;

      constructor Create(_fonteDados : IFonteDadosMunicipio);
      procedure LoadMunicipios;

    public

      function obterMunicipios : IReadOnlyCollection<IMunicipio>;
      function obterMunicipiosOrdenadosPorNome(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;
      function obterMunicipiosOrdenadosPorCodigo(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;
      function obterMunicipiosOrdenadosPorEleitorado(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;

      function obterInformacao : string;
      function obterInformacaoPorId (id : Integer) : string;

      class function New(_fonteDados : IFonteDadosMunicipio) : IMunicipios;
  end;

implementation

uses
  System.Classes, UMunicipio, System.SysUtils, System.Generics.Defaults;

{ TMunicipios }

constructor TMunicipios.Create(_fonteDados : IFonteDadosMunicipio);
begin
  FMunicipios := TCollections.CreateDictionary<Integer, IMunicipio>;
  FFonteDados := _fonteDados;
  LoadMunicipios;
end;

procedure TMunicipios.LoadMunicipios;
var
  stringList : TStringList;
  valores    : TStringList;
  linhaAtual : string;
begin
  valores                 := TStringList.Create;
  valores.Delimiter       := ';';
  valores.StrictDelimiter := True;

  stringList := FFonteDados.obterDados;

  try
    for linhaAtual in stringList do
    begin
      valores.DelimitedText := linhaAtual;
      FMunicipios.Add
      (
        StrToInt(valores[1]),
        TMunicipio.New
        (
          valores[0],
          StrToInt(valores[1]),
          StrToInt(valores[2])
        )
      );
    end;
  finally
    valores.Free;
    stringList.Free;
  end;
end;

class function TMunicipios.New(_fonteDados : IFonteDadosMunicipio) : IMunicipios;
begin
  Result := TMunicipios.Create(_fonteDados);
end;

function TMunicipios.obterInformacao: string;
begin
  Result := 'Lista de municípios do estado de Minas Gerais';
end;

function TMunicipios.obterInformacaoPorId(id: Integer): string;
var
  objeto : IMunicipio;
begin
  objeto := FMunicipios.Items[id];

  if Assigned(objeto) then
  begin
    Result := objeto.obterInformacao;
  end else
  begin
    Result := 'Objeto com id ' + IntToStr(id) + ' não encontrado!';
  end;
end;

function TMunicipios.obterMunicipios : IReadOnlyCollection<IMunicipio>;
begin
  Result := FMunicipios.Values;
end;

function TMunicipios.obterMunicipiosOrdenadosPorCodigo(ascendente: Boolean): IReadOnlyList<IMunicipio>;
var
  listMunicipios : IList<IMunicipio>;
begin
  listMunicipios  := TCollections.CreateList<IMunicipio>(FMunicipios.Values);

  listMunicipios.Sort
  (
    TComparer<IMunicipio>.Construct
    (
      function(const L, R : IMunicipio) : Integer
      begin
        if ascendente then
        begin
          Result := L.CodigoTRE - R.CodigoTRE;
        end else
        begin
          Result := R.CodigoTRE - L.CodigoTRE;
        end;
      end
    )
  );

  Result := listMunicipios.AsReadOnlyList;
end;

function TMunicipios.obterMunicipiosOrdenadosPorEleitorado(ascendente: Boolean): IReadOnlyList<IMunicipio>;
var
  listMunicipios : IList<IMunicipio>;
begin
  listMunicipios := TCollections.CreateList<IMunicipio>(FMunicipios.Values);

  listMunicipios.Sort
  (
    TComparer<IMunicipio>.Construct
    (
      function(const L, R : IMunicipio) : Integer
      begin
        if ascendente then
        begin
          Result := L.Eleitorado - R.Eleitorado;
        end else
        begin
          Result := R.Eleitorado - L.Eleitorado;
        end;
      end
    )
  );

  Result := listMunicipios.AsReadOnlyList;
end;

function TMunicipios.obterMunicipiosOrdenadosPorNome(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;
var
  listMunicipios : IList<IMunicipio>;
begin
  listMunicipios  := TCollections.CreateList<IMunicipio>(FMunicipios.Values);

  listMunicipios.Sort
  (
    TComparer<IMunicipio>.Construct
    (
      function(const L, R : IMunicipio) : Integer
      begin
        if ascendente then
        begin
          Result := CompareText(L.Nome, R.Nome);
        end else
        begin
          Result := CompareText(R.Nome, L.Nome);
        end;
      end
    )
  );

  Result := listMunicipios.AsReadOnlyList;
end;

end.
