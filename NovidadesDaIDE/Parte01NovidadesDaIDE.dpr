program Parte01NovidadesDaIDE;

uses
  Vcl.Forms,
  UPrincipal in 'forms\UPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
