unit Samples.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Samples.Helper;

type
  TFrmSamples = class(TForm)
    edtSamples: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  end;

var
  FrmSamples: TFrmSamples;

implementation

{$R *.dfm}

procedure TFrmSamples.Button1Click(Sender: TObject);
begin
  if edtSamples.IsEmpty then
    ShowMessage('Edit vazio')
  else
    ShowMessage('Edit preenchido');
end;

procedure TFrmSamples.Button2Click(Sender: TObject);
begin
  if edtSamples.IsDate then
    ShowMessage('Data válida')
  else
    ShowMessage('Data inválida');
end;

procedure TFrmSamples.Button3Click(Sender: TObject);
begin
  ShowMessage(edtSamples.OnlyNumbers);
end;

end.
