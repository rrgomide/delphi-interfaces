unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmMain = class(TForm)
    pnlConsulta: TPanel;
    pnlResultado: TPanel;
    lbl1: TLabel;
    cbbMunicipios: TComboBox;
    rgFonteDeDados: TRadioGroup;
    btnBuscar: TButton;
    lvResultado: TListView;
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  UIMunicipio, UMunicipio, UIFuncionario, UIDeputadosLoader,
  UDeputadosLoaderCSV, Spring.Collections;

{$R *.dfm}

procedure TfrmMain.btnBuscarClick(Sender: TObject);
var
 m : IMunicipio;
 f : IFuncionario;
 d : IDeputadosLoader;
 i : Integer;
 l : IEnumerable<Integer>;
begin
  d := TDeputadosLoaderCSV.New;
  l := d.getDeputados;

  for i in l do
  begin
    lvResultado.Items.Add.Caption := IntToStr(i);
  end;



end;

end.
