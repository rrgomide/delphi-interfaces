unit UIMunicipio;

interface

type

  IMunicipio = interface
    ['{71E4AF2F-5F1B-47F0-980D-A20B06D71BC3}']
    function getNome : string;
    function getCodigoTRE : Integer;

    property Nome: string read getNome;
    property CodigoTRE: Integer read getCodigoTRE;
  end;

implementation

end.
