unit UIMunicipio;

interface

type
  IMunicipio = interface
    ['{F870F107-2E2B-40EB-8CC8-DA79D2551298}']
    function getNome : string;
    function getCodigoTRE : Integer;
    function getEleitorado : Integer;
    function obterInformacao : string;

    property Nome : string read getNome;
    property CodigoTRE: Integer read getCodigoTRE;
    property Eleitorado: Integer read getEleitorado;
  end;

implementation

end.
