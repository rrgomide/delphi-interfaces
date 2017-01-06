unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type

  TProcedure = reference to procedure;
  TProcedureComParametro = reference to procedure(valor : Integer);
  TFuncao = reference to function(valor : Integer) : Integer;

{$REGION 'Exemplo com strict'}
  TClasseComStrict = class

    private

      FNome           : string;
      FDataNascimento : TDate;

    public

      constructor Create(pNome : string; pDataNascimento : TDateTime);
      function obterIdade : string;
  end;
{$ENDREGION}

{$REGION 'Form'}
    TfrmPrincipal = class(TfrmPadrao)
      pnlPrincipal : TPanel;
      btnClassHelpers : TButton;
      btnRecords: TButton;
      btnStrict: TButton;
      pnlParte01: TPanel;
      pnl1: TPanel;
      btnGenerics: TButton;
    btnAnonymousMethods: TButton;
    btnAttributes: TButton;
      procedure btnClassHelpersClick(Sender : TObject);
    procedure btnRecordsClick(Sender: TObject);
      procedure btnUnicodeClick(Sender: TObject);
      procedure btnStrictClick(Sender: TObject);
      procedure btnGenericsClick(Sender: TObject);
    procedure btnAnonymousMethodsClick(Sender: TObject);
    procedure btnAttributesClick(Sender: TObject);
      private
        { Private declarations }
      public
        { Public declarations }
    end;
{$ENDREGION}

{$REGION 'Pilha de inteiros'}

    TPilhaInteiros = class

      private

        FPilha : array of Integer;

      public

        procedure Empilhar(valor : Integer);
        procedure Desempilhar;

    end;


{$ENDREGION}

{$REGION 'Pilha genérica'}

    TPilha<T> = class

      private

        FPilha : array of T;

      public

        procedure Empilhar(valor : T);
        procedure Desempilhar;

    end;

{$ENDREGION}

var
  frmPrincipal : TfrmPrincipal;

implementation

uses
  UClassHelpers, URecords, UUnicode, UGenerics, UAnonymousMethods,
  UAttributes;

{$R *.dfm}

procedure TfrmPrincipal.btnAnonymousMethodsClick(Sender: TObject);
var
  funcao : TFuncao;
  form : TfrmAnonymousMethods;
begin
  funcao :=
    function(x : Integer) : Integer
    begin
      Result := x + 3;
    end;

  form := TfrmAnonymousMethods.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmPrincipal.btnAttributesClick(Sender: TObject);
var
  form : TFrmAttributes;
begin
  form := TFrmAttributes.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmPrincipal.btnClassHelpersClick(Sender : TObject);
var
  form : TfrmClassHelpers;
begin
  form := TfrmClassHelpers.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmPrincipal.btnGenericsClick(Sender: TObject);
var
  pilhaInteira  : TPilhaInteiros;
  pilhaGenerica : TPilha<string>;
  form          : TfrmGenerics;
begin
  pilhaInteira.Empilhar(12);
  pilhaGenerica.Empilhar('Raphael');

  form := TfrmGenerics.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmPrincipal.btnRecordsClick(Sender: TObject);
var
  form : TfrmRecords;
begin
  form := TfrmRecords.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmPrincipal.btnStrictClick(Sender: TObject);
var
  testeStrict : TClasseComStrict;
begin
  testeStrict := TClasseComStrict.Create('Raphael', EncodeDate(1982, 12, 22));
  ShowMessage(testeStrict.obterIdade);
end;

procedure TfrmPrincipal.btnUnicodeClick(Sender: TObject);
var
  form : TfrmUnicode;
begin
  form := TfrmUnicode.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

{ TClasseComStrict }

constructor TClasseComStrict.Create(pNome: string; pDataNascimento: TDateTime);
begin
  FNome           := pNome;
  FDataNascimento := pDataNascimento;
end;

function TClasseComStrict.obterIdade: string;
var
  idade : Integer;
begin
  idade  := Round((Now - FDataNascimento) / 365.25);
  Result := FNome + ', você tem ' + idade.ToString + ' anos!';
end;

{$REGION 'Implementações das pilhas (vazias)'}
  { TPilhaInteiros }

  procedure TPilhaInteiros.Desempilhar;
  begin

  end;

  procedure TPilhaInteiros.Empilhar(valor: Integer);
  begin

  end;

  { TPilha<T> }

  procedure TPilha<T>.Desempilhar;
  begin

  end;

  procedure TPilha<T>.Empilhar(valor: T);
  begin

  end;
{$ENDREGION}

end.
