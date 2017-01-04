program Aula02WizardsComponentes;

uses
  Vcl.Forms,
  UPrincipal in 'forms\UPrincipal.pas' {frmParte02},
  URestDeputados in 'forms\URestDeputados.pas' {frmREST},
  UCNPackGExperts in 'forms\UCNPackGExperts.pas' {frmCNPackGExperts},
  UXMLDataBinding in 'forms\UXMLDataBinding.pas' {frmXMLDataBinding},
  UDeputados in 'classes\UDeputados.pas',
  UFrmPadrao in 'forms\UFrmPadrao.pas' {frmPadrao},
  UTesteoXML in 'forms\UTesteoXML.pas' {frmOXML},
  USuperObject in 'forms\USuperObject.pas' {frmSuperObject};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmParte02, frmParte02);
  Application.CreateForm(TfrmSuperObject, frmSuperObject);
  Application.Run;
end.
