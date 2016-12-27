unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TfrmPadrao)
    pnlPrincipal: TPanel;
    btnClassHelpers: TButton;
    procedure btnClassHelpersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UClassHelpers;

{$R *.dfm}

procedure TfrmPrincipal.btnClassHelpersClick(Sender: TObject);
var
  form : TfrmClassHelpers;
begin
  form := TfrmClassHelpers.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

end.
