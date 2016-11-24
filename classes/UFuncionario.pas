unit UFuncionario;

interface

uses
  UIPessoa;

type

  TFuncionario = class(TInterfacedObject, IPessoa)

    private

      FPrimeiroNome   : string;
      FSobrenome      : string;
      FDataNascimento : TDate;

      function GetNome : string;
      function GetSobrenome : string;
      function GetNomeCompleto : string;

    protected

    public


end;

implementation

{ TFuncionario }

function TFuncionario.GetNome: string;
begin
  Result := FPrimeiroNome;
end;

function TFuncionario.GetNomeCompleto: string;
begin
  Result := FPrimeiroNome + ' ' + FSobrenome;
end;

function TFuncionario.GetSobrenome: string;
begin
  Result := FSobrenome;
end;

end.
