unit UIMunicipios;

interface

uses

  Spring.Collections, UIMunicipio, UIFonteDadosMunicipio;

type

  IMunicipios = interface
    ['{FEDBDC4E-C38D-4363-B5C5-D647DA04F37E}']
    function obterMunicipios : IReadOnlyCollection<IMunicipio>;
    function obterMunicipiosOrdenadosPorNome(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;
    function obterMunicipiosOrdenadosPorCodigo(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;
    function obterMunicipiosOrdenadosPorEleitorado(ascendente : Boolean = True): IReadOnlyList<IMunicipio>;

  end;

implementation

end.
