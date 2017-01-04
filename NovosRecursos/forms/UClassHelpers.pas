unit UClassHelpers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls;

type
  TfrmClassHelpers = class(TfrmPadrao)
    btnNumeroAtual: TButton;
    mmoNumeros: TMemo;
    procedure btnNumeroAtualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClassHelpers: TfrmClassHelpers;

implementation

uses
  UStringsHelper;

{$R *.dfm}

procedure TfrmClassHelpers.btnNumeroAtualClick(Sender: TObject);
var
  numero : Integer;
begin
  numero := StrToInt(btnNumeroAtual.Caption);
  mmoNumeros.Lines.AddInteger(numero);
  Inc(numero);
  btnNumeroAtual.Caption := IntToStr(numero);
end;

end.
