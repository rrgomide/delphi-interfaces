program Aula01NovidadesDaIDE;

uses
  Vcl.Forms,
  UPrincipal in 'forms\UPrincipal.pas' {frmPrincipal},
  UFuncionario in 'classes\UFuncionario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
