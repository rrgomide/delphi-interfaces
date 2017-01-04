unit URVotacao;

interface

type

  RVotacao = record

    private

      FVotosNominais : Integer;
      FVotosLegenda  : Integer;
      FVotosBrancos  : Integer;
      FVotosNulos    : Integer;
      FEleitorado    : Integer;

    public

      property VotosNominais : Integer read FVotosNominais;
      property VotosLegenda  : Integer read FVotosLegenda;
      property VotosBrancos  : Integer read FVotosBrancos;
      property VotosNulos    : Integer read FVotosNulos;
      property Eleitorado    : Integer read FEleitorado;

      function obterAbstencao : Integer;
      function obterComparecimento : Integer;
      function obterVotosValidos : Integer;

      constructor Create(pVotosNominais,
                         pVotosLegenda,
                         pVotosBrancos,
                         pVotosNulos,
                         pEleitorado : Integer);

  end;

implementation

{ RVotacao }

constructor RVotacao.Create(pVotosNominais,
                            pVotosLegenda,
                            pVotosBrancos,
                            pVotosNulos,
                            pEleitorado: Integer);
begin
  FVotosNominais := pVotosNominais;
  FVotosLegenda  := pVotosLegenda;
  FVotosBrancos  := pVotosBrancos;
  FVotosNulos    := pVotosNulos;
  FEleitorado    := pEleitorado;
end;

function RVotacao.obterAbstencao: Integer;
begin
  Result := fEleitorado - obterComparecimento;
end;

function RVotacao.obterComparecimento: Integer;
begin
  Result := obterVotosValidos + FVotosBrancos + FVotosNulos;
end;

function RVotacao.obterVotosValidos: Integer;
begin
  Result := FVotosNominais + FVotosLegenda;
end;

end.
