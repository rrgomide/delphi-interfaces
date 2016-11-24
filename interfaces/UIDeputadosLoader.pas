unit UIDeputadosLoader;

interface

uses
  Spring.Collections;


type

  IDeputadosLoader = interface
    ['{62245FC1-444D-4A1F-AD91-5C259FA4221C}']
    function getDeputados : IEnumerable<Integer>;
    //function x : Integer;
    //procedure y;
  end;

implementation

end.
