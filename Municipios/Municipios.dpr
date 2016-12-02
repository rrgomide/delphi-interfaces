program Municipios;

uses
  Vcl.Forms,
  UFrmMunicipios in 'forms\UFrmMunicipios.pas' {frmMunicipios},
  UMunicipios in 'classes\UMunicipios.pas',
  UIMunicipios in 'interfaces\UIMunicipios.pas',
  UIMunicipio in 'interfaces\UIMunicipio.pas',
  UIFonteDadosMunicipio in 'interfaces\UIFonteDadosMunicipio.pas',
  UFonteDadosCSV in 'classes\UFonteDadosCSV.pas',
  UMunicipio in 'classes\UMunicipio.pas',
  UTipoOrdenacao in 'enums\UTipoOrdenacao.pas',
  UIInformacao in 'interfaces\UIInformacao.pas',
  UDescricaoAttribute in 'attributes\UDescricaoAttribute.pas',
  UInfoAttribute in 'attributes\UInfoAttribute.pas',
  URttiHelper in 'classes\helpers\URttiHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMunicipios, frmMunicipios);
  Application.Run;
end.
