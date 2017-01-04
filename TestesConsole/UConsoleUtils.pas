unit UConsoleUtils;

interface

uses
  System.SysUtils;

procedure Cabecalho;
procedure ForInLoop;

implementation

uses
  System.Classes;

procedure Cabecalho;
begin
  Writeln('');
  Writeln('CURSO DELPHI XE5 - DEMONSTRAÇÕES');
  Writeln('================================');
  Writeln('');
end;

procedure ForInLoop;
var
  lista      : TStringList;
  valorAtual : string;
  i          : Integer;
begin
  lista := TStringList.Create;

  //Preenchendo stringList
  for i := 0 to 100 do
    lista.Add(i.ToString);

  //Percorrendo stringlist com for in loop
  for valorAtual in lista do
    Writeln(valorAtual);
end;

end.
