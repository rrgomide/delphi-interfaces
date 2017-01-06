unit UFonteDadosCSV;

interface

uses
  System.Classes;

type

  TFonteDadosCSV = class

    strict private

      FDadosMunicipio : TStringList;

    public

      function obterDados : TStringList;
      constructor Create;

  end;

implementation

uses

  Spring, System.SysUtils;

{ TFonteDadosCSV }

constructor TFonteDadosCSV.Create;
var
  caminhoCSV : String;
begin
  caminhoCSV := '../assets/ListaMunicipiosFull.csv';

  Guard.CheckTrue(FileExists(caminhoCSV), 'Arquivo CSV não encontrado!');

  FDadosMunicipio := TStringList.Create;
  FDadosMunicipio.LoadFromFile(caminhoCSV, TEncoding.UTF8);
end;

function TFonteDadosCSV.obterDados: TStringList;
begin
  Result := FDadosMunicipio;
end;

end.
