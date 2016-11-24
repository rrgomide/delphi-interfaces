unit UIPessoa;

interface

  type IPessoa = interface
    ['{FF586A8E-9317-4718-8FD7-CBAAFC00AF85}']
    function getNome : string;
    function getSobreNome : string;
    function getNomeCompleto : string;

    property Nome: string read getNome;
    property Sobrenome: string read getSobreNome;
    property NomeCompleto: string read getNomeCompleto;
  end;

implementation

end.
