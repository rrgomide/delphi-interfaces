unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmParte02 = class(TForm)
    btnCNPackGExperts: TButton;
    btnXMLDataBinding: TButton;
    btnOXML: TButton;
    btnXSuperObject: TButton;
    procedure btnXMLDataBindingClick(Sender: TObject);
    procedure btnCNPackGExpertsClick(Sender: TObject);
    procedure btnOXMLClick(Sender: TObject);
    procedure btnXSuperObjectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParte02: TfrmParte02;

implementation

uses
  UXMLDataBinding, UCNPackGExperts, UTesteoXML, USuperObject;

{$R *.dfm}

procedure TfrmParte02.btnCNPackGExpertsClick(Sender: TObject);
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

procedure TfrmParte02.btnOXMLClick(Sender: TObject);
var
  form : TfrmOXML;
begin
  form := TfrmOXML.Create(nil);
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

procedure TfrmParte02.btnXSuperObjectClick(Sender: TObject);
var
  form : TfrmSuperObject;
begin
  form := TfrmSuperObject.Create(nil);
  try
    form.ShowModal;
  finally
    form.Free;
  end;
end;

end.
