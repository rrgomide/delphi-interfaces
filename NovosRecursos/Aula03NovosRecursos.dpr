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
  UGenerics in 'forms\UGenerics.pas' {frmGenerics},
  UAnonymousMethods in 'forms\UAnonymousMethods.pas' {frmAnonymousMethods},
  UAttributes in 'forms\UAttributes.pas' {frmAttributes},
  UFonteDadosCSV in 'classes\UFonteDadosCSV.pas',
  UMunicipio in 'classes\UMunicipio.pas',
  UDescricaoAttribute in 'attributes\UDescricaoAttribute.pas',
  UInfoAttribute in 'attributes\UInfoAttribute.pas',
  UTipoOrdenacao in 'enums\UTipoOrdenacao.pas',
  URttiHelper in 'helpers\URttiHelper.pas',
  UMunicipios in 'classes\UMunicipios.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAttributes, frmAttributes);
  Application.Run;
end.
