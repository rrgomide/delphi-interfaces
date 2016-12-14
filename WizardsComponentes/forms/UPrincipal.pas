unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmParte02 = class(TForm)
    btnCNPackGExperts: TButton;
    btnXMLDataBinding: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btnXMLDataBindingClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParte02: TfrmParte02;

implementation

uses
  UXMLDataBinding, UCNPackGExperts;

{$R *.dfm}

procedure TfrmParte02.btn1Click(Sender: TObject);
var
  form : TfrmCNPackGExperts;
begin
  form := TfrmCNPackGExperts.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmParte02.btnXMLDataBindingClick(Sender: TObject);
var
  form : TfrmXMLDataBinding;
begin
  form := TfrmXMLDataBinding.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

end.
