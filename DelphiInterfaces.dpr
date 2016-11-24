program DelphiInterfaces;



uses
  Vcl.Forms,
  UMain in 'forms\UMain.pas' {frmMain},
  UMunicipio in 'classes\UMunicipio.pas',
  UIMunicipio in 'interfaces\UIMunicipio.pas',
  UFuncionario in 'classes\UFuncionario.pas',
  UIPessoa in 'interfaces\UIPessoa.pas',
  UIFuncionario in 'interfaces\UIFuncionario.pas',
  UIIdade in 'interfaces\UIIdade.pas',
  UIDeputadosLoader in 'interfaces\UIDeputadosLoader.pas',
  UDeputadosLoaderOracle in 'classes\UDeputadosLoaderOracle.pas',
  UDmDeputadosLoader in 'datamodules\UDmDeputadosLoader.pas' {DataModule1: TDataModule},
  UDeputadosLoaderCSV in 'classes\UDeputadosLoaderCSV.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
