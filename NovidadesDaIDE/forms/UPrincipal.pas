unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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

      constructor Create(aNome, aEndereco, aTelefone : string;
                         aDataNascimento : TDate;
                         aSexo : char;
                         aSalario : Double);
  end;


  TfrmPrincipal = class(TForm)
    btnMacros1: TButton;
    btnMacros2: TButton;
    btnRegioes: TButton;
    btnSyncEdit: TButton;
    btnRefactorDeclararVariavel: TButton;
    btnRefactorFindUnit: TButton;
    btnRefactoringExtractMethod: TButton;
    procedure btnMacros1Click(Sender: TObject);
    procedure btnRegioesClick(Sender: TObject);
    procedure btnSyncEditClick(Sender: TObject);
    procedure btnMacros2Click(Sender: TObject);
    procedure btnRefactorDeclararVariavelClick(Sender: TObject);
    procedure btnRefactoringExtractMethodClick(Sender: TObject);
    procedure btnRecordClick(Sender: TObject);
    procedure btnRefactorFindUnitClick(Sender: TObject);
  private
    procedure olaMundo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

//uses
  //System.Generics.Collections;

{$R *.dfm}

procedure TfrmPrincipal.btnMacros1Click(Sender: TObject);
var
  sql : string;
begin
  {Exemplo com a seguinte consulta:

    SELECT
      P.NOME,
      E.ENDERECO
    FROM
      PESSOA P,
      ENDERECO E
    WHERE
      P.CPF = E.PESSOA
    ORDER BY
      P.NOME
  }
  sql :=

    '  SELECT                ' +
    '    P.NOME,             ' +
    '    E.ENDERECO          ' +
    '  FROM                  ' +
    '    PESSOA P,           ' +
    '    ENDERECO E          ' +
    '  WHERE                 ' +
    '    P.CPF = E.PESSOA    ' +
    '  ORDER BY              ' +
    '   P.NOME               ' ;



end;

{ TTeste }

constructor TTeste.Create(aNome, aEndereco, aTelefone : string;
                          aDataNascimento : TDate;
                          aSexo : char;
                          aSalario : Double);
begin
  //Etapa 01 - Gravar macro
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
  //Etapa 13 - Inserção de a (formando a variável)
  //Etapa 14 - Ctrl + seta esquerda (2 vezes), voltando ao início da linha
  //Etapa 15 - Seta para baixo (movendo para a próxima linha)
  //Etapa 16 - Parar gravação


  //  FNome : FNome;
  //  FEndereco : string;
  //  FTelefone : string;
  //  FDataNascimento : TDate;
  //  FSexo : Char;
  //  FSalario : Double;

  //FNome := aNome ;
  //FEndereco := aEndereco;
  //FTelefone := aTelefone;
  //FDataNascimento := aDataNascimento;
  //FSexo := aSexo;
  //FSalario := aSalario;

end;

{$ENDREGION}

///<summary>documentation comment</summary>
procedure TfrmPrincipal.btnMacros2Click(Sender: TObject);
begin
  //Vá para TTeste.Create
end;


procedure TfrmPrincipal.btnRecordClick(Sender: TObject);
var
  sql : string;
begin
  {Exemplo de macro  - Ctrl + Shift + R para gravar e parar
                       Ctrl + Shift + P para "tocar"
    SELECT
      P.NOME,
      E.ENDERECO
    FROM
      PESSOA P,
      ENDERECO E
    WHERE
      P.CPF = E.PESSOA
    ORDER BY
      P.NOME
  }
  sql :=

    '  SELECT                  ' +
    '    P.NOME,               ' +
    '    E.ENDERECO            ' +
    '  FROM                    ' +
    '    PESSOA P,             ' +
    '    ENDERECO E            ' +
    '  WHERE                   ' +
    '    P.CPF = E.PESSOA      ' +
    '  ORDER BY                ' +
    '    P.NOME                ' ;


end;


































procedure TfrmPrincipal.btnRefactorDeclararVariavelClick(Sender: TObject);
begin
  //teste := 'Gomide';
end;

procedure TfrmPrincipal.btnRefactorFindUnitClick(Sender: TObject);
begin
 //Declarar algo com TList
end;

procedure TfrmPrincipal.btnRefactoringExtractMethodClick(Sender: TObject);
var
  x: string;
begin
  x := 'Olá, mundo!';
  ShowMessage(x);
end;

procedure TfrmPrincipal.btnRegioesClick(Sender: TObject);
var
  x, y, z : Integer;
  texto : String;
begin

//  {$REGION 'Inicialização de variáveis'}
//      x := 0;
//      y := 1;
//      z := -1;
//      texto := 'Teste';
//  {$ENDREGION}

end;

procedure TfrmPrincipal.btnSyncEditClick(Sender: TObject);
var
  i, numero : Integer;
begin
  numero := 0;

  for i := 0 to 100 do
  begin
    numero := numero + i;
  end;

  ShowMessage(IntToStr(numero));

end;

end.


