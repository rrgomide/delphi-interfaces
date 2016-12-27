unit UFuncionario;

interface

type

  TTeste = class

    private

      FNome : string;
      FEndereco : string;
      FTelefone : string;
      FDataNascimento : TDate;
      FSexo : Char;
      FSalario : Double;

    public

      constructor Create(pNome, pEndereco, pTelefone : string;
                         pDataNascimento : TDate;
                         pSexo : char;
                         pSalario : Double);

      procedure TesteSyncEdit;

  end;

implementation

uses
  System.Classes;

{ TTeste }

constructor TTeste.Create(pNome, pEndereco, pTelefone: string;
                          pDataNascimento: TDate; pSexo: char; pSalario: Double);
begin
  //Implementando o construtor com o auxílio de macros com a seguinte sequência:
  //Etapa 01 - Gravar macro (Ctrl + Shift + R)
  //Etapa 02 - Ctrl + Shift + Seta direita (Seleciona a primeira palavra)
  //Etapa 03 - Ctrl + C (Copia o texto selecionado para a área de transferência)
  //Etapa 04 - Seta esquerda
  //Etapa 05 - Inserção de = (formando o operador de atribuição)
  //Etapa 06 - Seta direita (identação)
  //Etapa 07 - Shift + End (Seleciona todo o restante da linha)
  //Etapa 08 - Ctrl + V (Cola o identificador do atributo do objeto correspondente)
  //Etapa 09 - Backspace (3 vezes)
  //Etapa 10 - Inserção de ;
  //Etapa 11 - Ctrl + seta esquerda (volta para a palavra anterior)
  //Etapa 12 - Delete (exclui a letra F do atributo)
  //Etapa 13 - Inserção de p (formando o nome do parâmetro do construtor)p  /=/ ;
  //Etapa 15 - Seta para baixo (movendo para a próxima linha)
  //Etapa 16 - Parar gravação (Ctrl + Shift + R)
  //Etapa 17 - Rodar gravação para cada linha restante (Ctrl + Shift + P)
  FNome := pNome;
  FEndereco := pEndereco;
  FTelefone := pTelefone;
  FDataNascimento := pDataNascimento;
  FSexo := pSexo;
  FSalario := pSalario;

end;

//Exemplo de utilização da funcionalidade SyncEdit
//Ctrl + Shift + J => ativa o SyncEdit na seleção
//Tab ou Shift + Tab => navega pelas variáveis
procedure TTeste.TesteSyncEdit;
var
 numero1, numero2 : Integer;
 media : Double;
begin
  numero1 := 10;
  numero2 := 20;
  media := (numero1 + numero2) / 2;
end;







































end.
