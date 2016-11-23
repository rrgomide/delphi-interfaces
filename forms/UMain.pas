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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
