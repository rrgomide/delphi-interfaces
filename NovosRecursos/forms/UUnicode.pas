unit UUnicode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmUnicode = class(TfrmPadrao)
    edtTexto: TLabeledEdit;
    btnProcessar: TButton;
    lvUnicode: TListView;
    procedure btnProcessarClick(Sender: TObject);
    procedure lvUnicodeCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnicode: TfrmUnicode;

implementation

{$R *.dfm}

procedure TfrmUnicode.btnProcessarClick(Sender: TObject);
var
  textoAnsistring : AnsiString;
  textoUnicode    : string;
  item            : TListItem;
begin
  textoAnsistring := edtTexto.Text;
  textoUnicode    := edtTexto.Text;

  lvUnicode.Clear;
  lvUnicode.Items.BeginUpdate;

  try
    item := lvUnicode.Items.Add;
    item.Caption := 'Texto: ' + textoAnsistring;
    item.SubItems.Add('Texto: ' + textoUnicode);

    item := lvUnicode.Items.Add;
    item.Caption := 'Length: ' + IntToStr(Length(textoAnsistring));
    item.SubItems.Add('Length: ' + IntToStr(Length(textoUnicode)));

    item := lvUnicode.Items.Add;
    item.Caption := 'StringElementSize: ' + IntToStr(StringElementSize(textoAnsistring));
    item.SubItems.Add('StringElementSize: ' + IntToStr(StringElementSize(textoUnicode)));

    item := lvUnicode.Items.Add;
    item.Caption := 'sizeof: ' + IntToStr(sizeof(textoAnsistring));
    item.SubItems.Add('sizeof: ' + IntToStr(sizeof(textoUnicode)));


  finally
    lvUnicode.Items.EndUpdate;
  end;

end;

procedure TfrmUnicode.FormShow(Sender: TObject);
begin
 edtTexto.Text := 'áéíóúãõêñüö'#$D840#$DC01'₩𠀁 '+
                  ''#$FEBE'';
end;

procedure TfrmUnicode.lvUnicodeCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if item.Caption <> item.SubItems[0] then
    lvUnicode.Canvas.Font.Color := clRed;
end;

end.
