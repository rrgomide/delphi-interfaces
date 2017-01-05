program Aula03NovosRecursos;

uses
  Vcl.Forms,
  UPrincipal in 'forms\UPrincipal.pas' {frmPrincipal},
  UFrmPadrao in '..\WizardsComponentes\forms\UFrmPadrao.pas' {frmPadrao},
  UStringsHelper in 'classes\UStringsHelper.pas',
  UClassHelpers in 'forms\UClassHelpers.pas' {frmClassHelpers},
  URecords in 'forms\URecords.pas' {frmRecords},
  URVotacao in 'classes\URVotacao.pas',
  UUnicode in 'forms\UUnicode.pas' {frmUnicode},
  UFrmGenerics in 'forms\UFrmGenerics.pas' {frmGenerics},
  UAnonymousMethods in 'forms\UAnonymousMethods.pas' {frmAnonymousMethods};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
