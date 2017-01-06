unit UMunicipios;

interface

uses
  System.Generics.Collections, UMunicipio, UFonteDadosCSV;

type

  TMunicipios = class

    strict private

      FMunicipios : TDictionary<Integer, TMunicipio>;
      FFonteDados : TFonteDadosCSV;

      procedure LoadMunicipios;

    public

      constructor Create(_fonteDados : TFonteDadosCSV);

      function obterMunicipios : TList<TMunicipio>;
      function obterMunicipiosOrdenadosPorNome(ascendente : Boolean = True): TList<TMunicipio>;
      function obterMunicipiosOrdenadosPorCodigo(ascendente : Boolean = True): TList<TMunicipio>;
      function obterMunicipiosOrdenadosPorEleitorado(ascendente : Boolean = True): TList<TMunicipio>;

      function obterInformacao : string;
      function obterInformacaoPorId (id : Integer) : string;

  end;

implementation

uses
  System.Classes, System.SysUtils, System.Generics.Defaults;

{ TMunicipios }

constructor TMunicipios.Create(_fonteDados : TFonteDadosCSV);
begin
  FMunicipios := TDictionary<Integer, TMunicipio>.Create;
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
        valores[0].ToInteger,
        TMunicipio.Create
        (
          valores[1],
          valores[3],
          StrToInt(valores[0]),
          StrToInt(valores[2])
        )
      );
    end;
  finally
    valores.Free;
    stringList.Free;
  end;
end;

function TMunicipios.obterInformacao: string;
begin
  Result := 'Lista de municípios do estado de Minas Gerais';
end;

function TMunicipios.obterInformacaoPorId(id: Integer): string;
var
  objeto : TMunicipio;
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

function TMunicipios.obterMunicipios : TList<TMunicipio>;
begin
  Result := TList<TMunicipio>.Create(FMunicipios.Values);
end;

function TMunicipios.obterMunicipiosOrdenadosPorCodigo(ascendente: Boolean): TList<TMunicipio>;
var
  listMunicipios : TList<TMunicipio>;
begin
  listMunicipios  := TList<TMunicipio>.Create(FMunicipios.Values);

  listMunicipios.Sort
  (
    TComparer<TMunicipio>.Construct
    (
      function(const L, R : TMunicipio) : Integer
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

  Result := listMunicipios;
end;

function TMunicipios.obterMunicipiosOrdenadosPorEleitorado(ascendente: Boolean): TList<TMunicipio>;
var
  listMunicipios : TList<TMunicipio>;
begin
  listMunicipios := TList<TMunicipio>.Create(FMunicipios.Values);

  listMunicipios.Sort
  (
    TComparer<TMunicipio>.Construct
    (
      function(const L, R : TMunicipio) : Integer
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

  Result := listMunicipios;
end;

function TMunicipios.obterMunicipiosOrdenadosPorNome(ascendente : Boolean = True): TList<TMunicipio>;
var
  listMunicipios : TList<TMunicipio>;
begin
  listMunicipios  := TList<TMunicipio>.Create(FMunicipios.Values);

  listMunicipios.Sort
  (
    TComparer<TMunicipio>.Construct
    (
      function(const L, R : TMunicipio) : Integer
      begin
        if ascendente then
        begin
          Result := CompareStr(L.Nome, R.Nome);
        end else
        begin
          Result := CompareStr(R.Nome, L.Nome);
        end;
      end
    )
  );

  Result := listMunicipios;
end;

end.
