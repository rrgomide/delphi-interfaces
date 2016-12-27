program NovosRecursos;

uses
  Vcl.Forms,
  UPrincipal in 'forms\UPrincipal.pas' {frmPrincipal},
  UFrmPadrao in '..\WizardsComponentes\forms\UFrmPadrao.pas' {frmPadrao},
  UStringsHelper in 'classes\UStringsHelper.pas',
  UClassHelpers in 'forms\UClassHelpers.pas' {frmClassHelpers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmClassHelpers, frmClassHelpers);
  Application.Run;
end.
