unit UDmDeputadosLoader;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni;

type
  TDataModule1 = class(TDataModule)
    OracleConnection: TUniConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
