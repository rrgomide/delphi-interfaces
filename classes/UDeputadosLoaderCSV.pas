unit UDeputadosLoaderCSV;

interface

uses

  UIDeputadosLoader, Spring.Collections;

type

  TDeputadosLoaderCSV = class(TInterfacedObject, IDeputadosLoader)

    private

      FListDeputados : IList<Integer>;
      FLoaded : Boolean;
      constructor Create;
      procedure LoadDeputados;

    protected

    public

      function getDeputados : IEnumerable<Integer>;
      class function New : IDeputadosLoader;

end;

implementation

uses
  System.Classes, System.SysUtils;

{ TDeputadosLoaderCSV }

constructor TDeputadosLoaderCSV.Create;
begin
  FListDeputados := TCollections.CreateList<Integer>;
  FLoaded        := False;
end;

function TDeputadosLoaderCSV.getDeputados:  IEnumerable<Integer>;
begin
  if not FLoaded then
    LoadDeputados;

  Result := FListDeputados;
end;

procedure TDeputadosLoaderCSV.LoadDeputados;
var
  arquivoCSV    : TStringList;
  deputadoAtual : string;
  valores       : TStringList;
begin
  valores                 := TStringList.Create;
  valores.Delimiter       := ';';
  valores.StrictDelimiter := True;

  arquivoCSV := TStringList.Create;
  arquivoCSV.LoadFromFile('./assets/ListaDeputados.csv');

  for deputadoAtual in arquivoCSV do
  begin
    valores.DelimitedText := deputadoAtual;
    FListDeputados.Add(StrToInt(valores[1]));
  end;
end;

class function TDeputadosLoaderCSV.New: IDeputadosLoader;
begin
  Result := TDeputadosLoaderCSV.Create;
end;

end.

