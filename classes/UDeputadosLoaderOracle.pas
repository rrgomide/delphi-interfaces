unit UDeputadosLoaderOracle;

interface

uses

  UIDeputadosLoader, Spring.Collections;

type

  TDeputadosLoaderOracle = class//(TInterfacedObject, IDeputadosLoader)

    private

      FListDeputados   : IList<Integer>;

    protected

    public

      procedure LoadDeputados;
      function getDeputados : IEnumerable<Integer>;

end;

implementation

{ TDeputadosLoaderOracle }

function TDeputadosLoaderOracle.getDeputados: IEnumerable<Integer>;
begin

end;

procedure TDeputadosLoaderOracle.LoadDeputados;
begin

end;

end.
