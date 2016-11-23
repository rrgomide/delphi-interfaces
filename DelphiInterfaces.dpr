program DelphiInterfaces;



uses
  Vcl.Forms,
  UMain in 'forms\UMain.pas' {frmMain},
  UMunicipio in 'classes\UMunicipio.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
