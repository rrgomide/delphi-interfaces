unit UFonteDadosCSV;

interface

uses
  UIFonteDadosMunicipio, System.Classes;

type
  TFonteDadosCSV = class(TInterfacedObject, IFonteDadosMunicipio)

    strict private
      FDadosMunicipio : TStringList;
      constructor Create;

    public
      function obterDados : TStringList;
      class function New : IFonteDadosMunicipio;

  end;

implementation

uses

  Spring, System.SysUtils;

{ TFonteDadosCSV }

constructor TFonteDadosCSV.Create;
var
  caminhoCSV : String;
begin
  caminhoCSV := './assets/ListaMunicipios.csv';

  Guard.CheckTrue(FileExists(caminhoCSV), 'Arquivo CSV não encontrado!');

  FDadosMunicipio := TStringList.Create;
  FDadosMunicipio.LoadFromFile(caminhoCSV);
end;

class function TFonteDadosCSV.New: IFonteDadosMunicipio;
begin
  Result := TFonteDadosCSV.Create;
end;

function TFonteDadosCSV.obterDados: TStringList;
begin
  Result := FDadosMunicipio;
end;

end.
