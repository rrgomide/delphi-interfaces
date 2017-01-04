program TestesConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  URVotacao in '..\NovosRecursos\classes\URVotacao.pas',
  UConsoleUtils in 'UConsoleUtils.pas';

var
  votos : RVotacao;
  x : string;

begin
  Cabecalho;

  Writeln(votos.obterComparecimento);
  ForInLoop;

  Readln(x);
end.
