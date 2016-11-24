unit UMunicipio;

interface

uses
  UIMunicipio;

type

  TMunicipio = class (TInterfacedObject, IMunicipio)

  strict private

    FNomeMunicipio : string;
    FCodigoTRE     : Integer;

    constructor Create(_nomeMunicipio : string; _codigoTRE : Integer);

  protected

    function getNome : string;
    function getCodigoTRE : Integer;

  public

    class function New(_nomeMunicipio : string; _codigoTRE : Integer) : IMunicipio;

  end;

implementation

{ TMunicipio }

constructor TMunicipio.Create(_nomeMunicipio: string; _codigoTRE: Integer);
begin
  FNomeMunicipio := _nomeMunicipio;
  FCodigoTRE     := _codigoTRE;
end;

function TMunicipio.getCodigoTRE: Integer;
begin
  Result := FCodigoTRE;
end;

function TMunicipio.getNome: string;
begin
  Result := FNomeMunicipio;
end;

class function TMunicipio.New(_nomeMunicipio: string; _codigoTRE: Integer): IMunicipio;
begin
  Result := TMunicipio.Create(_nomeMunicipio, _codigoTRE);
end;

end.
