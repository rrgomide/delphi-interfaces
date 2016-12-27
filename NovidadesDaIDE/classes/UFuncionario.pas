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
  //Implementando o construtor com o aux�lio de macros com a seguinte sequ�ncia:
  //Etapa 01 - Gravar macro (Ctrl + Shift + R)
  //Etapa 02 - Ctrl + Shift + Seta direita (Seleciona a primeira palavra)
  //Etapa 03 - Ctrl + C (Copia o texto selecionado para a �rea de transfer�ncia)
  //Etapa 04 - Seta esquerda
  //Etapa 05 - Inser��o de = (formando o operador de atribui��o)
  //Etapa 06 - Seta direita (identa��o)
  //Etapa 07 - Shift + End (Seleciona todo o restante da linha)
  //Etapa 08 - Ctrl + V (Cola o identificador do atributo do objeto correspondente)
  //Etapa 09 - Backspace (3 vezes)
  //Etapa 10 - Inser��o de ;
  //Etapa 11 - Ctrl + seta esquerda (volta para a palavra anterior)
  //Etapa 12 - Delete (exclui a letra F do atributo)
  //Etapa 13 - Inser��o de p (formando o nome do par�metro do construtor)p  /=/ ;
  //Etapa 15 - Seta para baixo (movendo para a pr�xima linha)
  //Etapa 16 - Parar grava��o (Ctrl + Shift + R)
  //Etapa 17 - Rodar grava��o para cada linha restante (Ctrl + Shift + P)
  FNome := pNome;
  FEndereco := pEndereco;
  FTelefone := pTelefone;
  FDataNascimento := pDataNascimento;
  FSexo := pSexo;
  FSalario := pSalario;

end;

//Exemplo de utiliza��o da funcionalidade SyncEdit
//Ctrl + Shift + J => ativa o SyncEdit na sele��o
//Tab ou Shift + Tab => navega pelas vari�veis
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
